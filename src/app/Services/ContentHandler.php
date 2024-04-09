<?php
namespace App\Services;

use App\Models\CmnContent;
use App\Traits\PublishStatusTrait;

class ContentHandler implements ContentHandlerInterface{

    use PublishStatusTrait;
    protected string $slug = '';
    protected ?string $content_type = null;
    protected ?string $content_model = null;

    public function __construct()
    {
        $this->content_type = \ContentClassService::searchSlug($this->slug)?->id;
        $this->content_model = !is_null($this->content_type) ? \ContentClassService::fetchModel($this->content_type) : null;
    }


    public function list(int $page = 1, int $limit = null, string $order = 'desc')
    {
        $limit ??= config('app.content_per_page');

        $content =  $content = $this->publishList(new CmnContent())
        ->select('*')
        ->where('content_type', '!=', \ContentClassService::searchName('Post')->id)
        ->offset($limit * ($page - 1))
        ->limit($limit);
        $content = is_null($this->content_type)
            ? $this->eachJoin($content)
            : $this->join($content)->get();

        $content = $this->subQuery($content, $order);

        $content = $this->order($content, $order);

        $content = $this->addSubData($content);

        return $content;
    }

    public function detail($id)
    {
        return 'Detail of content with id: ' . $id;
    }


    private function join($model, $s_model = null)
    {
        $s_model ??= $this->content_model;

        return $model?->join($s_model->getTable(), 'cmn_contents.id', '=', 'common_id');
    }

    private function eachJoin($model)
    {
        $model = $model->get();
        $i = 0;
        foreach ($model as &$m) {
            $t = \ContentClassService::fetchModel($m->content_type)->where('common_id', $m->id)->first();

            if ($t) {
                $t = $t->toArray();
                foreach ($t as $k => $v) {
                    $m->$k = $v;
                }
            }
        }

        return $model;
    }

    private function addSubData($c)
    {
        foreach ($c as &$v) {
            if ($v->content_type == 1) {
                $v = \PostService::fetchClass($v);
            }
        }

        return $c;
    }

    private function subQuery($content, int $order)
    {
        return match ($order) {
            1 => $content->addSelect('created_at'),
            2 => $content->addSelect('created_at')->orderBy('created_at', 'desc'), 
            default => $content,
        };
    }

    private function order($content, int $order, ?string $sort_id = null)
    {
        $sort_id ??= 'cmn_contents.publish_started_at';
    
        if ($sort_id === 'cmn_contents.publish_started_at') {
            $sort_id = 'CASE WHEN cmn_contents.publish_started_at IS NOT NULL THEN cmn_contents.publish_started_at ELSE cmn_contents.created_at END';
        }
    
        switch ($order) {
            case 1:
                return $content->orderBy('cmn_contents.topic_order', 'desc')->orderByRaw("$sort_id desc");
            case 2:
                return $content->orderBy('cmn_contents.topic_order', 'asc')->orderByRaw("$sort_id asc"); // Fixed arrow operator
            default:
                return $content;
        }
    }
    
}