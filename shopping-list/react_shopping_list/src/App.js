import React, { useState, useEffect } from 'react'
import axios from 'axios'
import AddItemForm from './components/AddItemForm'
import ShoppingList from './components/ShoppingList'

function App() {
  const [items, setItems] = useState([])
  const [newItem, setNewItem] = useState('')

  useEffect(() => {
    const storedItems = JSON.parse(localStorage.getItem('shoppingList'))
    if (storedItems) {
      setItems(storedItems)
    }
  }, [])

  const addItem = () => {
    if (newItem.trim() === '') return

    axios.post('http://localhost:3001/items', { name: newItem })
      .then(response => {
        setItems([...items, response.data])
        localStorage.setItem('shoppingList', JSON.stringify([...items, response.data]))
        setNewItem('')
      })
  }
  const deleteItem = (id) => {
    axios.delete(`http://localhost:3001/items/${id}`)
      .then(response => {
        const updatedItems = items.filter(item => item.id !== id)
        setItems(updatedItems)
        localStorage.setItem('shoppingList', JSON.stringify(updatedItems))
      })
  }

  return (
    <div className="App container mt-4">
      <h1 className="mb-4">Shopping List</h1>
      <AddItemForm newItem={newItem} setNewItem={setNewItem} onAdd={addItem} />
      <ShoppingList items={items} onDelete={deleteItem} />
    </div>
  )
}

export default App
