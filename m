Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D2AFC32771
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 07:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mf/yxL4OPUkYf/7VqX0zTh6OeIPYO8QcqnNmaXrKP7o=; b=3Wdv+i1yn2p0/Z
	zurRT6UJuBQUT6Wb5JqRdoJrS1NnodWIyGphOnBsxJlnQsK2d1bMhvANeTJRV/mDaNmPR5Y8A57RC
	L2mgFSQydxo04q4oJCvvay7W734g0rESUP4LqtYICscibWPVkEchHa3rvSOlL0z08nNaE8+Mv7x5R
	qsknyhvWbrR9nQuomjD5SkP4XKht2ACoT0J8K9fkMgwko2HcPxiWomP/D4csrknrB/o6kHrD60Mpw
	Lk3Kw6Gc/R6RaBPYjbEAhOtsX7Qxs2dRHHM2MXjlQqJ0l1fJkPcMmeexipWNgs/znboM9ScAFlGvY
	GUyIR6dYhjiYvvQE6/Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocicQ-002lYs-G4; Mon, 26 Sep 2022 07:33:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocicJ-002lXy-Vb
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 07:33:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2007B612CE;
	Mon, 26 Sep 2022 07:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A372C433D6;
	Mon, 26 Sep 2022 07:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664177606;
	bh=GiOWWB7nawly0z2Qm4RUKkrXtT0fWmsQtvVUHw0aqnM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IbJucAH2EGITulxvElZDPPARZ60G4CnYI5p5Md6xGg9IyaDPpnR+eJ5xZSeRIXD+Y
	 1LQBTISU5KpR0h08c7TMx62bKK6rr2F9OnK4E89wuiia/CSg30xws5lPcDRfhlqLb2
	 xTMvXg/bsH9S4H1sA1kdZfkn0LGCs0xUOmqVWFr9b3i72gX5tJ+5UP6k2P5OpcsbA+
	 e1SLTsm7hYTDGiMNCFVsS2poGFwA+OFuHNyhDxHCOxmIj4l3Tkc06+ORzmGp0AQGuD
	 tQyIiFi964SdnxwipMSC+q0Q0ztZmdg2u9BsGQmIjRujbUaKBXyoZvpfOcq8jEnhUK
	 3pLk8DuYc94hQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ocicN-0003jO-SH; Mon, 26 Sep 2022 09:33:31 +0200
Date: Mon, 26 Sep 2022 09:33:31 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 2/6] phy: qcom-qmp-pcie: split PHY programming to
 separate functions
Message-ID: <YzFVyxhRidGKPR0p@hovoldconsulting.com>
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
 <20220924160302.285875-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220924160302.285875-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_003328_118592_D4369307 
X-CRM114-Status: GOOD (  19.04  )
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

On Sat, Sep 24, 2022 at 07:02:58PM +0300, Dmitry Baryshkov wrote:
> Split the code using PHY programming tables into separate functions,
> which take a single struct qmp_phy_cfg_tables instance.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 80 ++++++++++++++----------
>  1 file changed, 48 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 30806816c8b0..6e8c74585670 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1877,15 +1877,53 @@ static void qmp_pcie_configure(void __iomem *base,
>  	qmp_pcie_configure_lane(base, regs, tbl, num, 0xff);
>  }
>  
> -static int qmp_pcie_serdes_init(struct qmp_phy *qphy)
> +static void qmp_pcie_serdes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
>  {
>  	const struct qmp_phy_cfg *cfg = qphy->cfg;
>  	void __iomem *serdes = qphy->serdes;
>  
> -	qmp_pcie_configure(serdes, cfg->regs, cfg->common.serdes_tbl, cfg->common.serdes_tbl_num);
> -	qmp_pcie_configure(serdes, cfg->regs, cfg->extra->serdes_tbl, cfg->extra->serdes_tbl_num);
> +	if (!tables)
> +		return;
>  
> -	return 0;
> +	qmp_pcie_configure(serdes, cfg->regs, tables->serdes_tbl, tables->serdes_tbl_num);

See what I mean about "_tbl" being redundant in "tables->serdes_tbl"?

> +}

>  static int qmp_pcie_init(struct phy *phy)
> @@ -1957,15 +1995,13 @@ static int qmp_pcie_power_on(struct phy *phy)
>  	struct qmp_phy *qphy = phy_get_drvdata(phy);
>  	struct qcom_qmp *qmp = qphy->qmp;
>  	const struct qmp_phy_cfg *cfg = qphy->cfg;
> -	void __iomem *tx = qphy->tx;
> -	void __iomem *rx = qphy->rx;
>  	void __iomem *pcs = qphy->pcs;
> -	void __iomem *pcs_misc = qphy->pcs_misc;
>  	void __iomem *status;
>  	unsigned int mask, val, ready;
>  	int ret;
>  
> -	qmp_pcie_serdes_init(qphy);
> +	qmp_pcie_serdes_init(qphy, &cfg->common);
> +	qmp_pcie_serdes_init(qphy, cfg->extra);

And "common" and "extra" doesn't really say what it is you're passing
here.

>  
>  	ret = clk_prepare_enable(qphy->pipe_clk);
>  	if (ret) {

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
