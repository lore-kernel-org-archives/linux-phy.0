Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7955C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iw400HgYYt7Jb4AyGlFvUVHy528akZab+RnDobKSLt0=; b=0vgYV41a+A7BIx
	m/QGQ48WIeJbp6doknIwUpCAK12BO6+ae221tDNyLJyXst5JvtJMEcmzJsHBIfj8dTlgBCYnZX+VR
	PSaAP/QqWSWCjb0yT2GraMNnoCL+bTF5LjslLYQxTnGgLpRvEyLHjuI5pEEIytsuT//P/DHHL4Ca4
	eNdFO4ng65+QZYYU7VEcQ7yFgF+zXDofZDdpZoCsarbSbjHv5PoKa7EtCGxBvJU6LOvoQHMo2ywjG
	9VKOu8FIx+BEiLkQjKdZT+J+U7MO90E5DrYNi0yIzTCQSsE2iwFcN9LAtdFgN2iikJYNi7tBAq9RC
	my03/ccw6hjzkKchCKDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouY4y-000bnw-4L; Mon, 14 Nov 2022 11:56:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouY4r-000bkI-OJ
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:56:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1E49161068;
	Mon, 14 Nov 2022 11:56:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20809C433C1;
	Mon, 14 Nov 2022 11:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668426996;
	bh=iEuhISiKu9TyOYC1q42LdxS2ugKsD/1nYpC0/lFEspM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=awn9M8Ha3m+1PM+hnLVyJDH9rvb/bfA5YlwPpGee/rTCatnakvBELNt50JNC+xdhZ
	 j6Y/0o3+X6qrgMytd1xErEmvQo50hjh8r6J259u9Mcdgz9O60gmucT62xwSjb1gUU1
	 eChAnNc0X5XSCnx8dKiT0kIJi/YH5Cmd4FtzpYTFDfWJsnxTRtGRTt5LjbMJgvA5QW
	 RJLV+IOEDIMGmGCqIVUiuLeyVkr4Gk0gs9aS9jn2Y6T9WEUeuSLhyUmSBJrtGiE4ln
	 n4QPHbc0/nWSDX2Gq2WRNqviw2nFWY7Vr7y185ck/fqgpmpqg9HuXJomIgFOU632be
	 m4QfJjU7Dyg1g==
Date: Mon, 14 Nov 2022 12:56:27 +0100
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: robh@kernel.org, kw@linux.com, bhelgaas@google.com,
	thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
	vkoul@kernel.org, mani@kernel.org,
	Sergey.Semin@baikalelectronics.ru, ffclaire1224@gmail.com,
	linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V3 11/21] PCI: tegra194: Remove IRQF_ONESHOT flag during
 Endpoint interrupt registration
Message-ID: <Y3Is61WPyzLCjlKK@lpieralisi>
References: <20221013183854.21087-1-vidyas@nvidia.com>
 <20221013183854.21087-12-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221013183854.21087-12-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_035637_888730_37EC9625 
X-CRM114-Status: GOOD (  18.69  )
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

On Fri, Oct 14, 2022 at 12:08:44AM +0530, Vidya Sagar wrote:
> Tegra PCIe endpoint has a common interrupt that notifies hardware events
> like link up, LTR send, etc. DMA completion event is also notified over
> this interrupt. Remove IRQF_ONESHOT flag from interrupt registration and
> allow DMA driver to share this interrupt.

Please give a clearer explanation of why this is safe and the reasoning
behind this change.

Lorenzo

> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * This is a new patch in this series
> 
>  drivers/pci/controller/dwc/pcie-tegra194.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> index 7820bf4b9786..786e5d5f43b9 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -2354,7 +2354,7 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
>  		ret = devm_request_threaded_irq(dev, pp->irq,
>  						tegra_pcie_ep_hard_irq,
>  						tegra_pcie_ep_irq_thread,
> -						IRQF_SHARED | IRQF_ONESHOT,
> +						IRQF_SHARED,
>  						"tegra-pcie-ep-intr", pcie);
>  		if (ret) {
>  			dev_err(dev, "Failed to request IRQ %d: %d\n", pp->irq,
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
