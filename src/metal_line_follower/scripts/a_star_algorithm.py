def shortestPath(graph,start,end):
    openList = {}
    closedList = {} #neighbor.name and cost
    cost_g = {}
    cost_f ={}
    cost_g[start] = 0
    cost_f[start] = 0
    path = []

    match = [x for x in graph.vertices if x.name == end]
    endNode = match[0]

    openList[start] = cost_f[start]
    while len(openList)>=1:
        currentNodeName,nodeCost = min(openList.items(), key=lambda x:x[1])
        currentNodeCost = openList.pop(currentNodeName)

        match = [x for x in graph.vertices if x.name==currentNodeName]
        currentNode = match[0]
        print('current node: ' + currentNode.name)
        closedList[currentNode.name] = currentNodeCost
        path.append(currentNode.name)

        for neighbor in currentNode.neighbors:
            print('current neighbor: ' + neighbor.name)
            if neighbor.name == end:
                print("Goal Reached")
                path.append(neighbor.name)
                print(path)
                return path
            else:
                edgeNeighbor = [x for x in graph.edges if x.vertexFrom.name == 'a' and x.vertexTo.name =='b']
                tentative_gScore = cost_g[currentNode.name]+ edgeNeighbor[0].weight
                cost_g[neighbor.name] = tentative_gScore
                heuristicCost = (abs(neighbor.posX-endNode.posX) + abs(neighbor.posY-endNode.posY))
                cost_f[neighbor.name] = cost_g[neighbor.name] + heuristicCost
                #print(heuristicCost)

                if neighbor.name in closedList:
                    if closedList[neighbor.name] >= cost_f[neighbor.name]:
                        closedList[neighbor.name] = cost_f[neighbor.name]
                        path.append(currentNode.name)
                else:
                    openList[neighbor.name] = cost_f[neighbor.name]
                print(openList)
                print(closedList)
                                    
        
        
    print(path)
                        

        
