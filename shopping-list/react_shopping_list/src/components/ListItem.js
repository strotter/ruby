import React from 'react';

function ListItem({ item, onDelete }) {
    return (
        <li className="list-group-item d-flex justify-content-between align-items-center">
            {item.name}
            <button className="btn btn-danger btn-sm" onClick={() => onDelete(item.id)}>Delete</button>
        </li>
    );
}

export default ListItem;
