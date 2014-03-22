'use strict';

angular.module('app.ui.directives', [])

.directive('uiTime', [ ->
    return {
        restrict: 'A'
        link: (scope, ele) ->
            startTime = ->
                today = new Date()
                h = today.getHours()
                m = today.getMinutes()
                s = today.getSeconds()

                m = checkTime(m)
                s = checkTime(s)

                time = h+":"+m+":"+s
                ele.html(time)
                t = setTimeout(startTime,500)
            checkTime = (i) -> # add a zero in front of numbers<10
                if (i<10) then i = "0" + i
                return i

            startTime()
    }
])