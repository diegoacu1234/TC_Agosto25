namespace introTR
{
    class Node
    {
        public int Value { get; set; }
        public Node? Left { get; set; }
        public Node? Right { get; set; }

        public Node(Node? l, int v, Node? r)
        {
            this.Value = v;
            this.Left = l;
            this.Right = r;
        }

        public override string ToString()
        {
            string? l = Left?.ToString().Length>0 ? Left?.ToString() : "null";
            string? r = Right?.ToString().Length > 0 ? Right?.ToString() : "null";

            return "(izq: " + l + ", dato:" + this.Value + ", der: " + r+")";
        }
       public static int ContarNodosRec(Node? node)
       {
            if (node == null) return 0;
            return ContarNodosRec(node.Left) + ContarNodosRec(node.Right) + 1;
       }

       public static int contarNodosIter(Node node)
        {
            return 0;
        }

        public static int SumaNodosIter(Node node)
        {
            return 0;
        }


        public static void Main()
        {
            Node n4 = new Node(null, 4, null);
            Node n5 = new Node(null, 5,null);
            Node n2 = new Node(n4, 2,n5);
            Node n6 = new Node (null,6,null);
            Node n3 = new Node(null, 3, n6);
            Node r = new Node(n2,1,n3);

            /*         
             *         1
             *     2        3
             *   4   5    X    6         
             *  X X X X       X X
             */

            Console.WriteLine(r.ToString());
            Console.WriteLine(ContarNodosRec(r));
            Console.WriteLine(contarNodosIter(r));
            Console.WriteLine(SumaNodosIter(r));
        }


    }
}
