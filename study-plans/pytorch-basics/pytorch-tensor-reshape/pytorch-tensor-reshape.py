import torch

def reshape_tensor(x: torch.Tensor, operation: str) -> torch.Tensor:
    """
    Returns the reshaped float32 tensor, including a scalar tensor after a complete squeeze.
    """
    if operation == 'flatten':
        return x.flatten()
    elif operation == 'squeeze':
        return x.squeeze()
    elif operation == 'transpose':
        return x.transpose(0,1)


    
    pass
