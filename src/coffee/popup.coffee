window.addEventListener('DOMContentLoaded', () ->
    chrome.tabs.query({
        active: true,
        currentWindow: true
    } , (tabs) ->
        chrome.tabs.sendMessage(
            tabs[0].id,
            { type: "getCount" } ,
            (count) ->
                if count is undefined
                    count = 0
                document.getElementById("blockedCount").innerHTML = count
        )
    )
)
