<input type="hidden" name="venue_id" value="{{$venue_id}}">
@if(!empty($menus))
 	@foreach($menus as $menusitem)
   <div class="container">
        <div class="section-tittle text-center">
            <span class="categoryName" style="color:#999999;">{{$menusitem->package['package_name']}}</span>
        </div>
        
    @if(!empty($menusitem->category_items))
                @foreach($menusitem->category_items as $k => $category)
                    
                    <div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-6">
            <!-- Section Tittle -->
            <div class="section-tittle text-center mb-70">
                <h2 class="categoryName" style="color:#ff5600;font-weight: bold;">{{$category->category_name}} 
                 @if(!empty($category->cuisine->cuisine_name))
                 -{{$category->cuisine->cuisine_name}}
                 @endif</h2>
            </div>
        </div>
    </div>

    <div class="row">
            @if(!empty($category->menu))
                @foreach($category->menu as $k => $item_val)
                <div class="col-lg-6 col-md-6">
                    
                    <div class="single-blogs mb-100">
                        <div class="blog-img">
                            <div class="checkitems">
                        <input type="checkbox" class="form-control" name="allitem[]" id="allitem_{{$k}}" value="{{$item_val->id}}">
                        <!-- <input type="text" name="package_name" id="package_name_{{$k}}" value="{{$menusitem->package['package_name']}}">
                        <input type="category" name="category_{{$k}}" value="{{$category->category_name}}"> -->
                    </div>
                            <img src="{{$item_val->mediacollection}}" alt="" width="fit-content" height="600px;">
                        </div>
                       <div class="blog-cap">
                        <div class="row">
                            <div class="col-md-6">
                                <span class="color1 price">&#x20b9; {{number_format($item_val->price,2)}}</span>
                            </div>
                            <div class="col-md-6">
                                <span class="color1 price">Quantity : </span>
                            <input type="number" name="itemQty[]" class="form-control">
                            </div>
                        </div>
                            
                            
                            <h4><a href="#">{{$item_val->name}}</a></h4>
                            
                            <span class="color1"> simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</span>
                        </div>
                    </div>
                </div>
                @endforeach
            @endif
            </div>
        </div>

        @endforeach
    @endif
                


</div>

@endforeach
@endif