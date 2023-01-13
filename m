Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6493C54EBD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 15:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=By8Vrk9wiZXJeZ/QIxCF5H6X9r+ZtqMhx/Xpf9rmUVs=; b=tfev9yfSFCp60X
	EB5rAuB3em1CA4Y8dux9qVG5rJ2qKsri1EAfj2hfvmfBQkigI6ySmPlrDSlp50JG4IIuVUNoUNamW
	vO6A4Pmk1FoBa49+6dWRAgCMARD30VR/VeiEJ9AYAuIBw1nNJgh2cJUhMg3Lus19tR5th0IuJaZXe
	vtRf3FMYyoY7Vj2r4me3tUjcJT5eAN417aX5spP7z6qH5ScmwfbB6BYZ7wkmxvr6re7NdDiWTqVjf
	HnRYVAqRO+E5TIi1iAna+q7gAWJJ8teNmpyLo/Z1r+W3yb9OsXYeu/oJhIf/q6XyGTLPZLBhbVO8T
	NfdkhJucriYOWwErMq3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLzO-003Ccg-CK; Fri, 13 Jan 2023 15:29:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGLzL-003Cb6-5J
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 15:29:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 108CE62230;
	Fri, 13 Jan 2023 15:29:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B9E2C433EF;
	Fri, 13 Jan 2023 15:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673623741;
	bh=0F5BGpRsAhTyUDS+p9XLf5M6oCxZt8EqZJMiDBtQUDg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MekYq8puj8d38lB62dIIhfQ0htdD0Zmrry3w1pLRDZ2Rfd7J5A+r/BQYSEqimbh+e
	 ZZtiEOEDIh8YxmzV9bjttoArpqfS0BCGCE1aQQmbWRW9l6h6ykE0SrGk0R47gn0RyK
	 oI8WCuSd2toejsUsGC3VP1o1gsmh/XfxTcnB4uMjFkz/+44uqcAqgJ5F6QwxR0/uCZ
	 28bGKNMHYxF8CbWb6QAJBAJXMvNb9mr2pDUtWpkYSJRhC4IRS1dQH5Dq8gnotBCKc1
	 1dyADUNHIsJfkKPpFJ3yLsRzYpkO3nVeOlZoW/cp/9QGWD4A0PVA/63Ks679Coo1Yt
	 OaFr1y6re5UZA==
Date: Fri, 13 Jan 2023 16:28:54 +0100
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: robh@kernel.org, kw@linux.com, bhelgaas@google.com,
	thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
	vkoul@kernel.org, mani@kernel.org,
	Sergey.Semin@baikalelectronics.ru, ffclaire1224@gmail.com,
	linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V3 19/21] PCI: tegra194: Free up EP resources during
 remove()
Message-ID: <Y8F4tucf4U7wxaFp@lpieralisi>
References: <20221013183854.21087-1-vidyas@nvidia.com>
 <20221013183854.21087-20-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221013183854.21087-20-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_072903_262076_AEF3D3D3 
X-CRM114-Status: GOOD (  19.30  )
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

On Fri, Oct 14, 2022 at 12:08:52AM +0530, Vidya Sagar wrote:
> Free up the resources during remove() that were acquired by the DesignWare
> driver for the endpoint mode during proble().

s/proble/probe

> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * This is a new patch in this series
> 
>  drivers/pci/controller/dwc/pcie-tegra194.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> index 3baf1a26fe68..c88c36d85ee5 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -2383,6 +2383,7 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
>  static int tegra_pcie_dw_remove(struct platform_device *pdev)
>  {
>  	struct tegra_pcie_dw *pcie = platform_get_drvdata(pdev);
> +	struct dw_pcie_ep *ep = &pcie->pci.ep;
>  
>  	if (pcie->of_data->mode == DW_PCIE_RC_TYPE) {
>  		if (!pcie->link_state && !pcie->slot_pluggable)
> @@ -2396,6 +2397,7 @@ static int tegra_pcie_dw_remove(struct platform_device *pdev)
>  	} else {
>  		disable_irq(pcie->pex_rst_irq);
>  		pex_ep_event_pex_rst_assert(pcie);
> +		dw_pcie_ep_exit(ep);
>  	}
>  
>  	pm_runtime_disable(pcie->dev);
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
