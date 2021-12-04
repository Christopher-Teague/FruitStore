package com.java.fruityloops.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.fruityloops.models.Item;


@Controller
public class ItemController {
 
 @RequestMapping("/")
 public String index(Model model) {
     
     ArrayList<Item> fruits = new ArrayList<Item>();
     fruits.add(new Item("Kiwi", 1.50));
     fruits.add(new Item("Mango", 2.00));
     fruits.add(new Item("Goji Berries", 4.00));
     fruits.add(new Item("Guava", .75));
     fruits.add(new Item("Banana", .25));
     fruits.add(new Item("Pineapple", 3.50));
     fruits.add(new Item("Apple", 1.25));
     fruits.add(new Item("Strawberries", 3.75));
     fruits.add(new Item("Watermelon", 4.25));
     
     // Add fruits your view model here
     
     model.addAttribute("fruitsFromController", fruits);
     
     return "index.jsp";
 }
}

