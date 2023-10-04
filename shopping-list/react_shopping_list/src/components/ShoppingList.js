import React from 'react';
import ListItem from './ListItem';

function ShoppingList({ items, onDelete }) {
    return (
        <ul className="list-group">
            {items.map(item => (
                <ListItem key={item.id} item={item} onDelete={onDelete} />
            ))}
        </ul>
    );
}

export default ShoppingList;
