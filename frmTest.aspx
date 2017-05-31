<%@ Page Title="" Language="C#" MasterPageFile="~/LavoMaster.master" AutoEventWireup="true" CodeFile="frmTest.aspx.cs" Inherits="frmTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
        <div class="col-md-12"><h2 class="text-center">Medium 12/12 space</h2></div>
    </div>

    <div class="row">
        <div class="col-sm-4"><h3>Small 4/12 space</h3></div>
        <div class="col-sm-4"><h3>Another one</h3></div>
        <div class="col-sm-4"><h3>Another one</h3></div>
    </div>

    <div class="row">
        <div class="col-lg-8" style="background-color:lavender;"><h3>Large 8/12 space</h3></div>
        <div class="col-lg-4" style="background-color:lavenderblush;"><h3>Large 4/12 space</h3></div>
    </div>

    <div class="container" style="background-color:lightgray";>
        <h2>Let's see what happens when we add a container and color the container</h2>
        <div class="col-sm-4" style="background-color:aqua;">
            <h4>Example of <mark>Highlighted</mark> text</h4>
        </div>

        <div class="col-sm-4">
            <blockquote>
                <h4>This is a test of the blockquote</h4>
                <footer>Also including this footer</footer>
            </blockquote>
        </div>

        <div class="col-sm-4" style="background-color:blueviolet;">
            <h3>Description List</h3>
            <dl>
                <dt>Sample List</dt>
                <dd>- not sure</dd>
                <dt>This is bold?</dt>
                <dd>and this is not?</dd>
                <dt>To test further</dt>
                <dd>Lets increase the length</dd>
            </dl>
        </div>
    </div>

    <div class="row" style="background-color:bisque";>
        <h1>Back to a row to test how this differs</h1>
        <div class="col-sm-6">
            <h3>lets see how a table fits</h3>
            <table class="table">
                <thead>
                    <tr>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john@example.com</td>
                    </tr>
                    <tr>
                        <td>Mary</td>
                        <td>Moe</td>
                        <td>mary@example.com</td>
                    </tr>
                    <tr>
                        <td>July</td>
                        <td>Dooley</td>
                        <td>july@example.com</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="col-sm-6">
            <h3>Now with a responsive table</h3>
            <div class="table-responsive">          
            <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Age</th>
                        <th>City</th>
                        <th>Country</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="danger">
                        <td>1</td>
                        <td>Anna</td>
                        <td>Pitt</td>
                        <td>35</td>
                        <td>New York</td>
                        <td>USA</td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="col-sm-4">
            <h3>Block Level Buttons</h3>
            <button type="button" class="btn btn-primary btn-block">Uno</button>
            <button type="button" class="btn btn-default btn-block">Dos</button>
        </div>
        <div class="col-sm-4">
            <h3>Large Block Buttons</h3>
            <button type="button" class="btn btn-primary btn-lg btn-block">Uno</button>
            <button type="button" class="btn btn-default btn-lg btn-block">Dos</button>
        </div>
        <div class="col-sm-4">
            <h3>Small Block Buttons</h3>
            <button type="button" class="btn btn-primary btn-sm btn-block">Uno</button>
            <button type="button" class="btn btn-default btn-sm btn-block">Dos</button>
        </div>
    </div>

    <div class="container">
        <div class="col-sm-4">
            <h3>Different Button Sizes</h3>
            <button type="button" class="btn btn-primary btn-lg">Large</button>
            <button type="button" class="btn btn-primary btn-md">Medium</button>
            <button type="button" class="btn btn-primary btn-sm">Small</button>
            <button type="button" class="btn btn-primary btn-xs">xSmall</button>
        </div>
        <div class="col-sm-4">
            <h3>Active / Disabled</h3>
            <button type="button" class="btn btn-primary active">Active Button</button>
            <button type="button" class="btn btn-primary disabled">Disabled Button</button>
        </div>
        <div class="col-sm-4">
            <h3>Button Group</h3>
            <div class="btn-group">
                <button type="button" class="btn btn-primary">Uno</button>
                <button type="button" class="btn btn-primary">Dos</button>
                <button type="button" class="btn btn-primary">Tres</button>
            </div>
        </div>
    </div>
    
    <div class="container" style="background-color:gainsboro">
        <h3 class="text-center">More Buttons, I centered this!</h3>
        <div class="col-sm-4">
            <h3>Dropdown Buttons</h3>
            <div class="btn-group">
                <button type="button" class="btn btn-default">Uno</button>
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Dos</a></li>
                    <li><a href="#">Tres</a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-4">
            <h3>Vertical Buttons</h3>
            <div class="btn-group-vertical">
                <button type="button" class="btn btn-primary">Uno</button>
                <button type="button" class="btn btn-default">Dos</button>
                <button type="button" class="btn btn-danger">Tres</button>
            </div>
        </div>
        <div class="col-sm-4">
            <h3>Justified Group</h3>
            <div class="btn-group btn-group-justified">
                <a href="#" class="btn btn-primary">Uno</a>
                <a href="#" class="btn btn-success">Dos</a>
                <a href="#" class="btn btn-danger">Tres</a>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="col-sm-4">
            <h3>Glyphicon Examples</h3>
            <p>Search icon: <span class="glyphicon glyphicon-search"></span></p>
            <p>Search icon button: 
                <button type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-search"></span> Search
                </button>
            </p>
            <p>Search icon stylized button:
                <button type="button" class="btn btn-danger">
                    <span class="glyphicon glyphicon-search"></span> Search
                </button>
            </p>
            <br />
            <p>Print icon: <span class="glyphicon glyphicon-print"></span></p>
            <p>Print icon styled button: 
                <a href="#" class="btn btn-success btn-lg">
                    <span class="glyphicon glyphicon-print"></span> Print
                </a>
            </p>
        </div>
        <div class="col-sm-4">
            <h3>Badges</h3>
            <a href="#">Uno <span class="badge">1</span></a><br /><br />
            <a href="#">Dos <span class="badge">2</span></a><br /><br />
            <button type="button" class="btn btn-success">Tres
                <span class="badge">3</span>
            </button>
        </div>
        <div class="col-sm-4">
            <h3>Labels</h3>
            <h1>Example <span class="label label-default">New</span></h1>
            <h2>Example <span class="label label-danger">New</span></h2>
            <h3>Example <span class="label label-success">New</span></h3>
            <h4>Example <span class="label label-primary">New</span></h4>
            <h5>Example <span class="label label-info">New</span></h5>
            <h6>Example <span class="label label-warning">New</span></h6>            
        </div>
    </div>

    <!-- Stopped at progress bars (vary grid size usage) -->
    <div class="container-fluid">
        <div class="col-sm-4">
            <h3>Pagination (Active)</h3>
            <ul class="pagination">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li class="active"><a href="#">4</a></li>
                <li><a href="#">5</a></li>
            </ul>
        </div>
        <div class="col-sm-4">
            <h3>Breadcrumbs</h3>
            <ul class="breadcrumb">
                <li><a href="#">Order</a></li>
                <li><a href="#">Options</a></li>
                <li><a href="#">Confirmation</a></li>
                <li><a href="#">Complete</a></li>
            </ul>
        </div>
        <div class="col-sm-4">
            <h3>Pager /w Previous & Next classes</h3>
            <ul class="pager">
                <li class="previous"><a href="#">Previous</a></li>
                <li class="next"><a href="#">Next</a></li>
            </ul>
        </div>
    </div>

    <div class="container-fluid">
        <div class="col-md-6">
            <h3 class="text-center">List Groups /w Coloring</h3>
            <ul class="list-group">
                <li class="list-group-item">Orders <span class="badge">8</span></li>
                <li class="list-group-item list-group-item-success">Confirmed <span class="badge">6</span></li>
                <li class="list-group-item list-group-item-danger">Cancelled <span class="badge">2</span></li>
            </ul>
        </div>
        <div class="col-md-6">
            <h3>Playin with panels</h3>
            <div class="panel panel-default">
                <div class="panel-heading">Here's the heading</div>
                <div class="panel-body">Here's the content</div>
                <div class="panel-footer">And the footer</div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="col-sm-4">
            <h3>Dropdown Menu Example</h3>
            <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown
                <span class="caret"></span></button>
                <ul class="dropdown-menu">
                    <li><a href="#">Order</a></li>
                    <li><a href="#">Status</a></li>
                    <li><a href="#">Confirm</a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-4">
            <!-- Stopped at Collapse-->
            <h3>Collapse Sample</h3>
            <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Click Me!</button>
            <div id="demo" class="collapse">
                <h1>OH GOD WHY DID YOU OPEN THIS, CLOSE IT NOW BEFORE IT'S TOO LATE.</h1>              
            </div>
        </div>
        <div class="col-sm-4">
            <h3>Collapsable List group</h3>
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" href="#collapse1">Collapsible List Group</a>
                        </h4>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse">
                        <ul class="list-group">
                            <li class="list-group-item">Uno</li>
                            <li class="list-group-item">Dos</li>
                            <li class="list-group-item">Tres</li>
                        </ul>
                        <div class="panel-footer">With A Footer</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container">
        <h3 class="text-center">Vertical Pills /w Menu Example (Centered)</h3>
        <div class="row">
            <div class="col-md-3">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div>
            <div class="col-md-3"> 
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
            <div class="col-md-3"> 
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
            <div class="col-md-3">
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">Menu 1</a></li>
                    <li><a href="#">Menu 2</a></li>
                    <li><a href="#">Menu 3</a></li>
                </ul>
            </div>
         <div class="clearfix visible-lg"></div>
         </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <h3>Basic Vertical Form</h3>
                <form action="/action_page.php">
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" />
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" />
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" name="remember" /> Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <div class="col-sm-4">
                <h3>Textarea Example</h3>
                <form>
                    <div class="form-group">
                        <label for="comment">Comment:</label>
                        <textarea class="form-control" rows="6" id="comment"></textarea>
                    </div>
                </form>
            </div>
            <div class="col-sm-4">
                <h3>Checkbox Form Control</h3>
                <p>Checkboxes, for when multiple options can be checked</p>
                <form>
                    <div class="checkbox">
                        <label><input type="checkbox" value="" />Option Uno</label>
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" value="" />Option Dos</label>
                    </div>
                    <div class="checkbox disabled">
                        <label><input type="checkbox" value="" disabled />Option Tres (Disabled)</label>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <h3>Radio Button Form Control</h3>
                <p>Radio Buttons, for when only one option is allowed</p>
                <form>
                    <div class="radio">
                        <label><input type="radio" name="optradio" />Option Uno</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="optradio" />Option Dos</label>
                    </div>
                    <div class="radio disabled">
                        <label><input type="radio" name="optradio" disabled />Option Tres (Disabled)</label>
                    </div>
                </form>
            </div>
            <div class="col-sm-4">
                <h3>Select List Form Control</h3>
                <p>For selecting options from a pull-down list</p>
                <form>
                    <div class="form-group">
                        <label for="sel1">Select List (Select an option):</label>
                        <select class="form-control" id="sel1">
                            <option>Uno</option>
                            <option>Dos</option>
                            <option>Tres</option>
                            <option>Cuatro</option>
                        </select>
                        <br />
                        <label for="sel2">Multiple Select List (Hold shift/ctrl to select more than one):</label>
                        <select multiple class="form-control" id="sel2">
                            <option>Uno</option>
                            <option>Dos</option>
                            <option>Tres</option>
                            <option>Cuatro</option>
                            <option>Cinco</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="col-sm-4">
                <h3>Inline Radio Buttons</h3>
                <p>showing the inline radio buttons</p>
                <form>
                    <label class="radio-inline">
                        <input type="radio" name="optradio" />Option Uno
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="optradio" />Option Dos
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="optradio" />Option Tres
                    </label>
                </form>
            </div>
        </div>
    </div>

    <div class="container">
        <h3>Basic Hortizontal Form Using 12/12 space <br />2/12 for labels, 10/12 for forms</h3>
            <form class="form-horizontal" action="/action_page.php">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" />

                    </div>
                 </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Password:</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox" name="remember" /> Remember me</label>
                        </div>
                    </div>
                </div>
                <div class="form-group>">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </form>
    </div>

    <div class="container">
        <div class="row">            
            <h3>Horizontal Form /w Static Control (6/12 Spacing)</h3>
            <form class="form-horizontal" action="/action_page.php">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Email:</label>
                        <div class="col-sm-4">
                            <p class="form-control-static">email@example.com</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Password:</label>
                        <div class="col-sm-4">
                            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-4">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div> 
                    </div>
            </form>
            <div class="col-sm-6">
                <h3>Input Groups (Adds the Icon)</h3>
                <form>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="email" type="text" class="form-control" name="email" placeholder="Email" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="password" type="password" class="form-control" name="password" placeholder="Password" />
                    </div>
                    <br />
                    <div class="input-group">
                        <span class="input-group-addon">Text</span>
                        <input id="msg" type="text" class="form-control" name="msg" placeholder="Additional Info Here" />
                    </div>
                    <br />
                    <h4>Inlcuding this example search bar</h4>
                    <br />
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" />
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="container">
        <h3 class="text-center">Horizontal Form Control States</h3>
        <form class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label">Focused</label>
                <div class="col-sm-10">
                    <input class="form-control" id="focusedInput" type="text" value="Click to focus..." />
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-sm-2 control-label">Disabled</label>
                <div class="col-sm-10">
                    <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled />
                </div>
            </div>
            <fieldset disabled>
                <div class="form-group">
                    <label for="disabledTextInput" class="col-sm-2 control-label">Disabled input and select list (Fieldset disabled)</label>
                    <div class="col-sm-10">
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled Input" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="disabledSelect" class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                        <select id="disabledSelect" class="form-control">
                            <option>Disabled Select</option>
                        </select>
                    </div>
                </div>
            </fieldset>
            <div class="form-group has-success has-feedback">             
                <label class="col-sm-2 control-label" for="inputSuccess">Input with success and glyphicon</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputSuccess" />
                    <span class="glyphicon glyphicon-ok form-control-feedback"></span>
                </div>
            </div>
            <div class="form-group has-warning has-feedback">
                <label class="col-sm-2 control-label" for="inputWarning">Input with warning and glyphicon</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputWarning" />
                    <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
                </div>
            </div>
            <div class="form-group has-error has-feedback">
                <label class="col-sm-2 control-label" for="inputError">Input with error and glyphicon</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputError" />
                    <span class="glyphicon glyphicon-remove form-control-feedback"></span>
                </div>
            </div>
        </form>
    </div>

    <div class="container">
        <!-- Stopped at input sizing  -->
    </div>
</asp:Content>

