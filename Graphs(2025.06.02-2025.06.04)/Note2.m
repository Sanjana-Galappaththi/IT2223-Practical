%Adjecency Matrix
%An adjacency matrix is a square matrix used to represent a graph. 
%Each row and column corresponds to a vertex, and the entries indicate whether there is an edge between two vertices.
%If the graph is undirected, the matrix is symmetric. For weighted graphs,the matrix can store edge weights instead of just 1s and 0s. 
%It’s a convenient way to store and process graph data efficiently!

A= [ 0 1 0;
     1 0 1;
	 0 1 0];
	 
	G = graph(A);    %This converts the adjacency matrix A into a graph object G, representing the connections between nodes.
	plot(G);         %This plots the graph, visually showing the connections based on the adjacency matrix.
	title("Adjecency Matrix");
	


%nodeColor
	
s=[1 1 1 2 5 3 6 4 7 8 8];                             %This defines the starting nodes of directed edges in the graph.
t=[2 3 4 5 3 6 7 2 6 7 5];                             %his defines the target nodes of directed edges, meaning each s(i) connects to t(i).
weights=[100 10 10 10 10 20 10 30 50 10 70];           %Assigns weights to each edge in the graph, representing values such as distances or costs.
G =digraph(s,t,weights);                               %Creates a directed graph G using the node connections and associated edge weights.
plot(G,'EdgeLabel',G.Edges.Weight, 'NodeColor','r');   %     plot(G): Plots the directed graph.
                                                       %     'EdgeLabel', G.Edges.Weight: Labels each edge with its respective weight.
                                                       %'NodeColor', 'r': Colors the nodes red.
                                                        
											
%Shape

s=[1 1 1 2 2 6 6 7 7 3 3 9 9 4 4 11 11 8];
t=[2 3 4 5 6 7 8 5 8 9 10 5 10 11 12 10 12 12];
weights=[10 10 10 10 10 1 1 1 1 1 1 1 1 1 1 1 1 1];
G=digraph(s,t,weights);
plot=(G,'EdgeLabel',G.Edges.Weight,'Layout','force');
%arrange the nodes in a nice way using layout called force


%colorNodes

s=[1 1 2 3 4];
t=[2 3 4 4 5];
G=graph(s,t);
nodeColors=[
    1 0 0;  %node 1 -red
	0 1 0;  %node 2 -green
	0 0 1;  %node 3 -blue
	1 1 0;  %node 4 -yellow
	1 0 1;  %node 5 -magenta
	];
	
	plot(G,'NodeColor',nodeColors,'LineWidth',1.5);
	%LineWidth', 1.5: Sets the thickness of the edges to make them more visually prominent.
	
	
%Hightlight

s=1;
t=2:6;
G=graph(s,t);
h= plot(G,'Layout','force');
%'Layout', 'force': Uses a force-directed layout, which arranges the nodes based on simulated physical forces to
% create a more intuitive visualization.
highlight(h,[1,3],'NodeColor','red');
%highlight(h, [1, 3]): Highlights nodes 1 and 3 in the graph plot h.
%'NodeColor', 'red': Changes the color of the highlighted nodes to red.
highlight(h,1,3,'EdgeColor','magenta');
%highlight(h, 1, 3): Highlights the edge between nodes 1 and 3 in the graph plot h.
%'EdgeColor', 'magenta': Changes the color of the selected edge to magenta.


%adjecency

s=[1 1 2 3 4];
t=[2 3 4 4 5];
G=graph(s,t);
for node =1 : numnodes(G)
adj=neighbors(G,node);
fprintf('Node %d is connected to:', node);
fprintf('%d:', adj);
fprintf('\n');

end


%Example01:

s=10;
t=1:10;
G=graph(s,t);
h=plot(G,'Layout','force');
highlight(h,[1,3],'EdgeColor','red');