@extends('dashboard.mainlayouts')
@section('title', 'Add Staff')
@section('content')
    <!-- Page Wrapper -->
    <div class="page-wrapper">
        <div class="content container-fluid">
            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="page-title">Add Staff</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/home">Dashboard</a></li>
                            <li class="breadcrumb-item active">Add Staff</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            @if ($message = Session::get('success'))
                                <div class="alert alert-success alert-block">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <strong>{{ $message }}</strong>
                                </div>
                            @endif
                            @if ($message = Session::get('error'))
                                <div class="alert alert-danger alert-block">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <strong>{{ $message }}</strong>
                                </div>
                            @endif
                            <form action="/save_staff" method="post" autocomplete="off" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Staff Name</label>
                                            <span class="text-danger">*</span>
                                            <input type="text" id="staff_name" name="staff_name" class="form-control"
                                                placeholder="Staff Name" required>
                                            @if ($errors->has('staff_name'))
                                                <span class="text-danger">
                                                    <strong>{{ $errors->first('staff_name') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <span class="text-danger">*</span>
                                            <input id="email" type="email"
                                                class="form-control @error('email') is-invalid @enderror" name="email"
                                                value="{{ old('email') }}" required placeholder="Email">
                                            @if ($errors->has('email'))
                                                <span class="text-danger">
                                                    <strong>{{ $errors->first('email') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Mobile</label>
                                            <span class="text-danger">*</span>
                                            <input id="mobile" type="number"
                                                class="form-control @error('mobile') is-invalid @enderror" name="mobile"
                                                value="{{ old('mobile') }}" pattern="/^-?\d+\.?\d*$/"
                                                onKeyPress="if(this.value.length==10) return false;" required
                                                placeholder="Mobile">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <span class="text-danger">*</span>
                                            <div class="input-group"><input id="password" type="password"
                                                    class="form-control @error('password') is-invalid @enderror pas"
                                                    name="password" required placeholder="Password"><span
                                                    class="input-group-append"><button type="button"
                                                        class="btn btn-success searchbtn" onclick="showpassword()"><i
                                                            class="fa fa-eye" id="togglePassword"></i></button></span></div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Confirm Password</label>
                                            <span class="text-danger">*</span>
                                            <input id="con_password" type="password" class="form-control conpas"
                                                name="con_password" required placeholder="Confirm Password">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Role</label>
                                            <span class="text-danger">*</span>
                                            <select class="form-control" name="role" required id="role">
                                                <option value="">Select Roles</option>
                                                @if (!empty($roles))
                                                    @foreach ($roles as $role)
                                                        <option value="{{ $role->id }}">{{ $role->name }}</option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Department <sup>(<span class="text-danger">Optional</span>)</sup></label>
                                            <select class="form-control" name="department" id="department">
                                                <option value="">Select Department</option>
                                                @if (!empty($departments))
                                                    @foreach ($departments as $k => $v)
                                                        <option value="{{ $k }}">{{ $v }}</option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" id="submit" class="btn btn-primary" name="submit"
                                        value="Save">
                                    <input type="reset" class="btn btn-warning" value="Reset">
                                    <a href="/staff_list" class="btn btn-secondary">Back</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('script')
    <script>
        $('.conpas').on('blur', function() {
            var pas = $('.pas').val();
            var conpas = $('.conpas').val();
            if (conpas != pas) {
                const Toast = Swal.mixin({
                    toast: true,
                    position: 'top-end',
                    showConfirmButton: false,
                    timer: 3000,
                    timerProgressBar: true,
                    didOpen: (toast) => {
                        toast.addEventListener('mouseenter', Swal.stopTimer)
                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                    }
                })
                Toast.fire({
                    icon: 'error',
                    title: 'Confirm password should same as password'
                })
                $('.pas').val('');
                $('.conpas').val('');
            }
        });

        // Password Icon Hide and Show 
        const togglePassword = document.querySelector('#togglePassword');
        const password = document.querySelector('#password');

        togglePassword.addEventListener('click', function(e) {
            // toggle the type attribute
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            // toggle the eye slash icon
            this.classList.toggle('fa-eye-slash');
        });

        //   function showpassword() {
        //       var x = document.getElementById("password");
        //       var y = document.getElementByClassName('fa');
        //       if (x.type === "text") {
        //           x.type = "password";
        //       } else {
        //           x.type = "text";

        //       }
        //   }
        // $('#role').on('change', function() {
        //     var val = $(this).val();
        //     if (val == 10) {
        //         $('#dep').css('display', 'block');
        //     } else {
        //         $('#dep').css('display', 'none');
        //     }
        // });
    </script>
@endpush
