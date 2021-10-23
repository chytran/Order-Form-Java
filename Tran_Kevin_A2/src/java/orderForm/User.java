/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package orderForm;

/**
 *
 * @author kevin
 */
public class User {
    // no public instance variable
    private String product;
    private String quantity;
    private String price;
    private String name;
    private String shipping;
    private String credit;
    private String cardNumber;
    private String repeatCardNumber;
    private float fullPrice;
    
    public String getProduct() {
        return product;
    }
    
    public void setProduct(String product) {
        this.product = product;
    }
    
    // quantity
    public String getQuantity() {
        return quantity;
    }
    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
    
    // price
    public String getPrice() {
        return price;
    }
    public void setPrice(String price) {
        this.price = price;
    }
    
    //name
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
    // shipping
    public String getShipping() {
        return shipping;
    }
    public void setShipping(String shipping) {
        this.shipping = shipping;
    }
    
    //credit
    public String getCredit() {
        return credit;
    }
    public void setCredit(String credit) {
        this.credit = credit;
    }
    
    // card number
    public String getCardNumber() {
        return cardNumber;
    }
    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }
    
    // repeat card number
    public String getRepeatCardNumber() {
        return repeatCardNumber;
    }
    public void setRepeatCardNumber(String repeatCardNumber) {
        this.repeatCardNumber = repeatCardNumber;
    }
    
    public boolean validate() {
        if (cardNumber.equals(repeatCardNumber)) {
            return true;
        }
        else {
            return false;
        }
    }
    
    public float getFullPrice() {
        
        float quantity1;
        float price1;
        quantity1 = Float.parseFloat(quantity);
        price1 = Float.parseFloat(price);
        
        fullPrice = quantity1 * price1;
        
        return fullPrice;
    }
    
    
    
//    // CHECK
//    public int getFullPrice() {
//        return fullPrice;
//    }
//    //CHECK
//    public void setFullPrice(String quantity, String price) {
//        int quantity1 = Integer.parseInt(quantity);
//        int price1 = Integer.parseInt(price);
//        
//        int mainPrice = quantity1 * price1;
//    }
}
