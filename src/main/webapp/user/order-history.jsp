<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Unimart</title>
        <link rel="stylesheet" href="./static/css/tailwind.css"/>
        <style>
            <%@include file="../static/css/tailwind.css" %>
        </style>
    </head>
    <body>
        <div class="bg-gray-50">
            <main class="py-24">
                <div class="mx-auto max-w-7xl sm:px-2 lg:px-8">
                    <div class="mx-auto max-w-2xl px-4 lg:max-w-4xl lg:px-0">
                        <h1 class="text-2xl font-bold tracking-tight text-gray-900 sm:text-3xl">Order history</h1>
                        <p class="mt-2 text-sm text-gray-500">Check the status of recent orders, manage returns, and
                            discover similar products.</p>
                    </div>
                </div>
                
                <section aria-labelledby="recent-heading" class="mt-16">
                    <h2 id="recent-heading" class="sr-only">Recent orders</h2>
                    <div class="mx-auto max-w-7xl sm:px-2 lg:px-8">
                        <div class="mx-auto max-w-2xl space-y-8 sm:px-4 lg:max-w-4xl lg:px-0">
                            <div class="border-t border-b border-gray-200 bg-white shadow-sm sm:rounded-lg sm:border">
                                <h3 class="sr-only">Order placed on
                                    <time datetime="2021-07-06">Jul 6, 2021</time>
                                </h3>
                                
                                <div class="flex items-center border-b border-gray-200 p-4 sm:grid sm:grid-cols-4 sm:gap-x-6 sm:p-6">
                                    <dl class="grid flex-1 grid-cols-2 gap-x-6 text-sm sm:col-span-3 sm:grid-cols-3 lg:col-span-2">
                                        <div>
                                            <dt class="font-medium text-gray-900">Order number</dt>
                                            <dd class="mt-1 text-gray-500">WU88191111</dd>
                                        </div>
                                        <div class="hidden sm:block">
                                            <dt class="font-medium text-gray-900">Date placed</dt>
                                            <dd class="mt-1 text-gray-500">
                                                <time datetime="2021-07-06">Jul 6, 2021</time>
                                            </dd>
                                        </div>
                                        <div>
                                            <dt class="font-medium text-gray-900">Total amount</dt>
                                            <dd class="mt-1 font-medium text-gray-900">$160.00</dd>
                                        </div>
                                    </dl>
                                    
                                    <div class="relative flex justify-end lg:hidden">
                                        <div class="flex items-center">
                                            <button type="button"
                                                    class="-m-2 flex items-center p-2 text-gray-400 hover:text-gray-500"
                                                    id="menu-0-button" aria-expanded="false" aria-haspopup="true">
                                                <span class="sr-only">Options for order WU88191111</span>
                                                <!-- Heroicon name: outline/ellipsis-vertical -->
                                                <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                     viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                     aria-hidden="true">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                          d="M12 6.75a.75.75 0 110-1.5.75.75 0 010 1.5zM12 12.75a.75.75 0 110-1.5.75.75 0 010 1.5zM12 18.75a.75.75 0 110-1.5.75.75 0 010 1.5z"></path>
                                                </svg>
                                            </button>
                                        </div>
                                        
                                        <!--
                                          Dropdown menu, show/hide based on menu state.
                        
                                          Entering: "transition ease-out duration-100"
                                            From: "transform opacity-0 scale-95"
                                            To: "transform opacity-100 scale-100"
                                          Leaving: "transition ease-in duration-75"
                                            From: "transform opacity-100 scale-100"
                                            To: "transform opacity-0 scale-95"
                                        -->
                                        <div class="absolute right-0 z-10 mt-2 w-40 origin-bottom-right rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none"
                                             role="menu" aria-orientation="vertical" aria-labelledby="menu-0-button"
                                             tabindex="-1">
                                            <div class="py-1" role="none">
                                                <!-- Active: "bg-gray-100 text-gray-900", Not Active: "text-gray-700" -->
                                                <a href="#" class="text-gray-700 block px-4 py-2 text-sm"
                                                   role="menuitem" tabindex="-1" id="menu-0-item-0">View</a>
                                                <a href="#" class="text-gray-700 block px-4 py-2 text-sm"
                                                   role="menuitem" tabindex="-1" id="menu-0-item-1">Invoice</a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="hidden lg:col-span-2 lg:flex lg:items-center lg:justify-end lg:space-x-4">
                                        <a href="#"
                                           class="flex items-center justify-center rounded-md border border-gray-300 bg-white py-2 px-2.5 text-sm font-medium text-gray-700 shadow-sm hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                                            <span>View Order</span>
                                            <span class="sr-only">WU88191111</span>
                                        </a>
                                        <a href="#"
                                           class="flex items-center justify-center rounded-md border border-gray-300 bg-white py-2 px-2.5 text-sm font-medium text-gray-700 shadow-sm hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                                            <span>View Invoice</span>
                                            <span class="sr-only">for order WU88191111</span>
                                        </a>
                                    </div>
                                </div>
                                
                                <!-- Products -->
                                <h4 class="sr-only">Items</h4>
                                <ul role="list" class="divide-y divide-gray-200">
                                    <li class="p-4 sm:p-6">
                                        <div class="flex items-center sm:items-start">
                                            <div class="h-20 w-20 flex-shrink-0 overflow-hidden rounded-lg bg-gray-200 sm:h-40 sm:w-40">
                                                <img src="https://tailwindui.com/img/ecommerce-images/order-history-page-03-product-01.jpg"
                                                     alt="Moss green canvas compact backpack with double top zipper, zipper front pouch, and matching carry handle and backpack straps."
                                                     class="h-full w-full object-cover object-center">
                                            </div>
                                            <div class="ml-6 flex-1 text-sm">
                                                <div class="font-medium text-gray-900 sm:flex sm:justify-between">
                                                    <h5>Micro Backpack</h5>
                                                    <p class="mt-2 sm:mt-0">$70.00</p>
                                                </div>
                                                <p class="hidden text-gray-500 sm:mt-2 sm:block">Are you a minimalist
                                                    looking for a compact carry option? The Micro Backpack is the
                                                    perfect size for your essential everyday carry items. Wear it like a
                                                    backpack or carry it like a satchel for all-day use.</p>
                                            </div>
                                        </div>
                                        
                                        <div class="mt-6 sm:flex sm:justify-between">
                                            <div class="flex items-center">
                                                <!-- Heroicon name: mini/check-circle -->
                                                <svg class="h-5 w-5 text-green-500" xmlns="http://www.w3.org/2000/svg"
                                                     viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                                    <path fill-rule="evenodd"
                                                          d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z"
                                                          clip-rule="evenodd"></path>
                                                </svg>
                                                <p class="ml-2 text-sm font-medium text-gray-500">Delivered on
                                                    <time datetime="2021-07-12">July 12, 2021</time>
                                                </p>
                                            </div>
                                            
                                            <div class="mt-6 flex items-center space-x-4 divide-x divide-gray-200 border-t border-gray-200 pt-4 text-sm font-medium sm:mt-0 sm:ml-4 sm:border-none sm:pt-0">
                                                <div class="flex flex-1 justify-center">
                                                    <a href="#"
                                                       class="whitespace-nowrap text-indigo-600 hover:text-indigo-500">View
                                                        product</a>
                                                </div>
                                                <div class="flex flex-1 justify-center pl-4">
                                                    <a href="#"
                                                       class="whitespace-nowrap text-indigo-600 hover:text-indigo-500">Buy
                                                        again</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <!-- More products... -->
                                </ul>
                            </div>
                            
                            <!-- More orders... -->
                        </div>
                    </div>
                </section>
            </main>
            
            <footer aria-labelledby="footer-heading" class="border-t border-gray-200 bg-white">
                <h2 id="footer-heading" class="sr-only">Footer</h2>
                <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
                    <div class="py-20">
                        <div class="grid grid-cols-1 md:grid-flow-col md:auto-rows-min md:grid-cols-12 md:gap-x-8 md:gap-y-16">
                            <!-- Image section -->
                            <div class="col-span-1 md:col-span-2 lg:col-start-1 lg:row-start-1">
                                <img src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt=""
                                     class="h-8 w-auto">
                            </div>
                            
                            <!-- Sitemap sections -->
                            <div class="col-span-6 mt-10 grid grid-cols-2 gap-8 sm:grid-cols-3 md:col-span-8 md:col-start-3 md:row-start-1 md:mt-0 lg:col-span-6 lg:col-start-2">
                                <div class="grid grid-cols-1 gap-y-12 sm:col-span-2 sm:grid-cols-2 sm:gap-x-8">
                                    <div>
                                        <h3 class="text-sm font-medium text-gray-900">Products</h3>
                                        <ul role="list" class="mt-6 space-y-6">
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Bags</a>
                                            </li>
                                            
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Tees</a>
                                            </li>
                                            
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Objects</a>
                                            </li>
                                            
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Home Goods</a>
                                            </li>
                                            
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Accessories</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div>
                                        <h3 class="text-sm font-medium text-gray-900">Company</h3>
                                        <ul role="list" class="mt-6 space-y-6">
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Who we are</a>
                                            </li>
                                            
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Sustainability</a>
                                            </li>
                                            
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Press</a>
                                            </li>
                                            
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Careers</a>
                                            </li>
                                            
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Terms &amp;
                                                    Conditions</a>
                                            </li>
                                            
                                            <li class="text-sm">
                                                <a href="#" class="text-gray-500 hover:text-gray-600">Privacy</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div>
                                    <h3 class="text-sm font-medium text-gray-900">Customer Service</h3>
                                    <ul role="list" class="mt-6 space-y-6">
                                        <li class="text-sm">
                                            <a href="#" class="text-gray-500 hover:text-gray-600">Contact</a>
                                        </li>
                                        
                                        <li class="text-sm">
                                            <a href="#" class="text-gray-500 hover:text-gray-600">Shipping</a>
                                        </li>
                                        
                                        <li class="text-sm">
                                            <a href="#" class="text-gray-500 hover:text-gray-600">Returns</a>
                                        </li>
                                        
                                        <li class="text-sm">
                                            <a href="#" class="text-gray-500 hover:text-gray-600">Warranty</a>
                                        </li>
                                        
                                        <li class="text-sm">
                                            <a href="#" class="text-gray-500 hover:text-gray-600">Secure Payments</a>
                                        </li>
                                        
                                        <li class="text-sm">
                                            <a href="#" class="text-gray-500 hover:text-gray-600">FAQ</a>
                                        </li>
                                        
                                        <li class="text-sm">
                                            <a href="#" class="text-gray-500 hover:text-gray-600">Find a store</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            
                            <!-- Newsletter section -->
                            <div class="mt-12 md:col-span-8 md:col-start-3 md:row-start-2 md:mt-0 lg:col-span-4 lg:col-start-9 lg:row-start-1">
                                <h3 class="text-sm font-medium text-gray-900">Sign up for our newsletter</h3>
                                <p class="mt-6 text-sm text-gray-500">The latest deals and savings, sent to your inbox
                                    weekly.</p>
                                <form class="mt-2 flex sm:max-w-md">
                                    <label for="email-address" class="sr-only">Email address</label>
                                    <input id="email-address" type="text" autocomplete="email" required
                                           class="w-full min-w-0 appearance-none rounded-md border border-gray-300 bg-white py-2 px-4 text-base text-gray-900 placeholder-gray-500 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-1 focus:ring-indigo-500">
                                    <div class="ml-4 flex-shrink-0">
                                        <button type="submit"
                                                class="flex w-full items-center justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-base font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                                            Sign up
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                    <div class="border-t border-gray-100 py-10 text-center">
                        <p class="text-sm text-gray-500">&copy; 2021 Your Company, Inc. All rights reserved.</p>
                    </div>
                </div>
            </footer>
        </div>
    </body>
</html>
