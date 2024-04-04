<!-- resources/views/livewire/table.blade.php -->
<style>
        /* DataTables */
        #tableWrapper {
            max-width: 1200px; 
            margin: 20px auto; 
            overflow-x: auto;
            max-height: 500px; 
        }

        #dataTable {
            border-collapse: collapse;
            width: 100%;
        }

        #dataTable th, #dataTable td {
            border: 1px solid #ddd;
            padding: 12px;
        }

        #dataTable th {
            position: sticky;
            top: 0;
            background-color: #d1cccc;
            color: #333131;
            box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
        }

        #dataTable a {
            color: #333131;
            text-decoration: none; 
            transition: color 0.3s ease; 
            cursor: pointer;
        }

        #dataTable a:hover {
            color: #7ea9d6; 
        }
        #dataTable tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        #dataTable tbody tr:hover {
            background-color: #f0f0f0;
        }
</style>
<div id="tableWrapper">
    <span>Number: {{ $count }}</span>
    <table id="dataTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Medially Type</th>
                <th>Medially ID</th>
                <th>File URL</th>
                <th>File Name</th>
                <th>File Type</th>
                <th>Size</th>
                <th>Created At</th>
                <th>Updated At</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            @if(!is_null($data))
            @foreach($data as $row)
                <tr>
                    <td>{{ $row->id }}</td>
                    <td>{{ $row->medially_type }}</td>
                    <td>{{ $row->medially_id }}</td>
                    <td><a href="{{ $row->file_url }}">{{ $row->file_url }}</a></td>
                    <td>{{ $row->file_name }}</td>
                    <td>{{ $row->file_type }}</td>
                    <td>{{ $row->size }}</td>
                    <td>{{ $row->created_at }}</td>
                    <td>{{ $row->updated_at }}</td>
                    <td>
                        <div class="button-container">
                            <button class="view" wire:click="viewItem({{ $row->id }})">View</button>
                            <button class="delete" wire:click="deleteItemConfirmation({{ $row->id }})">Delete</button>
                        </div>
                    </td>
                </tr>
            @endforeach
            @endif
        </tbody>
    </table>
</div>
