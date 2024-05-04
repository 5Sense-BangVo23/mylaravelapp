<?php
namespace App\Traits;

use App\Models\MstPublishStatus;
use Encore\Admin\Facades\Admin;

trait PublishStatusTrait{

    public function publishStatus()
    {
        $status = MstPublishStatus::pluck('id', 'name');

        if (\Admin::guard()->user()) {
            $r[] = $status['Expected Release'];
        }
        $r[] = $status['Release'];
        $r[] = $status['Limited Release'];

        return $r;
    }

    public function publishList($model)
    {
        if (Admin::guard()->user()) {
            return $model->whereIn('status', $this->publishStatus());
        } else {
            return $model->whereIn('status', $this->publishStatus())
                ->where(fn ($q_s) => $q_s->where('publish_started_at', '<=', date('Y-m-d H:i:s'))->orWhere('publish_started_at', null))
                ->where(fn ($q_e) => $q_e->where('publish_ended_at', '>=', date('Y-m-d H:i:s'))->orWhere('publish_ended_at', null));
        }
    }

   
}