<?php
$config = array(
            'member/add' => array(
                                    array(
                                            'field' => 'username',
                                            'label' => '用户名',
                                            'rules' => 'required|alpha_dash|max_length[16]|min_length[6]'
                                         ),
                                    array(
                                            'field' => 'realname',
                                            'label' => '用户姓名',
                                            'rules' => 'required'
                                         ),
                                    array(
                                            'field' => 'email',
                                            'label' => '用户邮箱',
                                            'rules' => 'valid_email'
                                         ),
                                    array(
                                            'field' => 'permission',
                                            'label' => '用户权限',
                                            'rules' => 'required|numeric'
                                         ),
                                    array(
                                            'field' => 'phone',
                                            'label' => '用户电话',
                                            'rules' => 'exact_length[11]|numeric'
                                         ),
                                    )
               );