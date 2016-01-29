/**
 * Created by zcy on 2016/1/28.
 */
angular.module('resume',['ng','ngRoute'])
    .controller('education',function($scope,$http){
        $scope.education=[];
        $http.get('data/me_education.php').success(
            function(data){
                $scope.education=data;
            }
        )
    })