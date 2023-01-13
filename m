Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 736A3C54EBE
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 15:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLLy5cXQ3/db8yCmYe1B/MlFLNiBjS9tpe3XNoN2+m8=; b=GiBnVU2AKAbIBB
	3QLWnSgLVj4kqIUoTIJgEsTOiZz9LTbQDrEhtlWOD1iFSjY+lGqXeJIGlGr1UttfGja7qI4RgxlEj
	+Crg9Z2VJUZ19iSwsOsRxWGiZfbaSRwLSxC58ef7wo1T+trZIuPbNFCKZurV9V9yYQcTvn4O62pQJ
	/G6c6Hm6D4pSmBvb1u3dItq/cozjlmt4zXmKQZhBhHxvnRLhGyL0T/V8uvyarkPmeDcMLUil5yHVm
	j6SmrfnAoF63iGgjNk4Ur1Xptsyt1OyH2rdwwknforyr1GFHIafzqMTDc+WzMhJD/aZGR5FV3SrYD
	GrAUuWgSzZlONYhcc1QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLmU-0038wk-Sy; Fri, 13 Jan 2023 15:15:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLmS-0038vY-7y
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 15:15:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BE6F862166;
	Fri, 13 Jan 2023 15:15:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13542C433D2;
	Fri, 13 Jan 2023 15:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673622943;
	bh=/i225Z+ElpatprCFkJPY3vtqP6zLi6PlpzzoTbD8vGY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A2CAlnM+iUK9asyhy0Gf5t68f1LGrghaMnoz/OAA1VMTrsqAdjN5VRrJzesZfUWGh
	 SxGRfEQsiJOrcIPn2iOu+lzaLy9UacyWY17hoPyABR//K9oSiFo7doYMOB5hRA60HY
	 YjajUD72zljgv1/R+NqcAgWFdOEGl57GpVsPW3imHpicGHJgJj0w/QeTtlj8amzW9D
	 aaD79kcbjBogov+62Ya9jxEA4xr7VOix4+XhJzzRyN3bGSWBRaRy43kJUkEv9aTJq0
	 3gTTPgy+LJ59O2CbQlp8fxujyQz6S5Z10Bn56S/xnkGEEKvnKtvfGLVeY3ZC1+9EUL
	 Tcyizu/CByvsQ==
Date: Fri, 13 Jan 2023 16:15:34 +0100
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: robh@kernel.org, kw@linux.com, bhelgaas@google.com,
	thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
	vkoul@kernel.org, mani@kernel.org,
	Sergey.Semin@baikalelectronics.ru, ffclaire1224@gmail.com,
	linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V3 04/21] PCI: tegra194: Handle errors in BPMP response
Message-ID: <Y8F1ljVyVST+aSu4@lpieralisi>
References: <20221013183854.21087-1-vidyas@nvidia.com>
 <20221013183854.21087-5-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221013183854.21087-5-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_071544_381001_002EF619 
X-CRM114-Status: GOOD (  20.44  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Oct 14, 2022 at 12:08:37AM +0530, Vidya Sagar wrote:
> The return value from tegra_bpmp_transfer indicates the success or
> failure of the IPC transaction with BPMP. If the transaction
> succeeded, we also need to check the actual command's result code.
> Add code to do this.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * None
> 
> V2:
> * None
> 
>  drivers/pci/controller/dwc/pcie-tegra194.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> index 685aee378c93..ae7e0d8f693b 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -1260,6 +1260,7 @@ static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
>  	struct mrq_uphy_response resp;
>  	struct tegra_bpmp_message msg;
>  	struct mrq_uphy_request req;
> +	int err;
>  
>  	/*
>  	 * Controller-5 doesn't need to have its state set by BPMP-FW in
> @@ -1282,7 +1283,13 @@ static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
>  	msg.rx.data = &resp;
>  	msg.rx.size = sizeof(resp);
>  
> -	return tegra_bpmp_transfer(pcie->bpmp, &msg);
> +	err = tegra_bpmp_transfer(pcie->bpmp, &msg);
> +	if (err)
> +		return err;
> +	if (msg.rx.ret)
> +		return -EINVAL;
> +
> +	return 0;
>  }
>  
>  static int tegra_pcie_bpmp_set_pll_state(struct tegra_pcie_dw *pcie,
> @@ -1291,6 +1298,7 @@ static int tegra_pcie_bpmp_set_pll_state(struct tegra_pcie_dw *pcie,
>  	struct mrq_uphy_response resp;
>  	struct tegra_bpmp_message msg;
>  	struct mrq_uphy_request req;
> +	int err;
>  
>  	memset(&req, 0, sizeof(req));
>  	memset(&resp, 0, sizeof(resp));
> @@ -1310,7 +1318,13 @@ static int tegra_pcie_bpmp_set_pll_state(struct tegra_pcie_dw *pcie,
>  	msg.rx.data = &resp;
>  	msg.rx.size = sizeof(resp);
>  
> -	return tegra_bpmp_transfer(pcie->bpmp, &msg);
> +	err = tegra_bpmp_transfer(pcie->bpmp, &msg);
> +	if (err)
> +		return err;
> +	if (msg.rx.ret)
> +		return -EINVAL;

I wonder whether you can embed the return value check within
the function itself.

Lorenzo

> +
> +	return 0;
>  }
>  
>  static void tegra_pcie_downstream_dev_to_D0(struct tegra_pcie_dw *pcie)
> -- 
> 2.17.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
