// ######## Challenge1
#[starknet::interface]
trait IDeployTrait<TContractState> {
   fn isComplete(self: @TContractState) -> bool;
}

#[starknet::contract]
mod Deploy {
   #[storage]
   struct Storage {}
   
   #[external(v0)]
   impl DeployImpl of super::IDeployTrait<ContractState> {    
      fn isComplete(self: @ContractState) -> bool {
         return (true);
      }
   }
}
