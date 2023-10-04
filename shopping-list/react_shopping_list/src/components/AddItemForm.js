import React from 'react'

function AddItemForm({ newItem, setNewItem, onAdd }) {
    return (
        <div className="input-group mb-3">
            <input
                type="text"
                className="form-control"
                placeholder="Add item..."
                value={newItem}
                onChange={(e) => setNewItem(e.target.value)}
            />
            <div className="input-group-append">
                <button className="btn btn-primary" onClick={onAdd}>Add</button>
            </div>
        </div>
    )
}

export default AddItemForm
