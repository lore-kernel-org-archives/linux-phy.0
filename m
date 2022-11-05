Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BC05C43217
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 12:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjVWHkxRBdgPkLQi5iKZHyWzHZ9UnBZ4UI7g0W279A0=; b=mIVbcxU8/Ui+TL
	vHXiqSgk+0Rw0MnsQlMmUuLkDiQllRMZxVxHyv9Eern3AR+Ik/lmf7i6yVqv1gj1eL6+LOBWPpICQ
	SIPj5ZMdoKRoxboK1tfi+UiRPorm0sQUIooTEVsPFQJyhwKtXJxwOuW1yGj0i3gVBr25QjxOcfx9+
	725VZRlTxfLVgSxE/eZGS97wmEQCyi2ce88BUSP8qyf5NOuFJfxGERVKAQQHB5/JMifyx7VqIoQzK
	+z6dEkv6RTrNiRbLpPesLpdzRL2rMJKhXzMH0HisKt2MYkPJpI7xS3vuT+QzA6r3d3CS8GsSebpGb
	PxhiNQw8IZ37Y7BAgQrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orHz0-006TtB-RH; Sat, 05 Nov 2022 12:09:06 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orHyw-006Trj-GS
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 12:09:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EB5A2B82D64;
	Sat,  5 Nov 2022 12:08:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B84B8C433C1;
	Sat,  5 Nov 2022 12:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667650138;
	bh=3ClLdYEzc3FzJ9R8fD3UL9LsJ4lbmVvyKTKcEKFSuKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iHwwAE7blyh+VrvIsvR0LotCiww/7JnCW0ox5Jii4AaLirM9pLcj7xzWeBcgpqcah
	 1hlWQ4+VnW+uU8lYHjFOpisAa1V12HK2f4FTKHmXVI7CyynGfHOMsVNXR9ATQYWTh9
	 r2QILREUrtGLKcRa4xbiJvBGKrRvs2qslAtPLZUhWAAxAMUx+ZdBqAdlycwBNhUu+d
	 zxKPMk5CGD0SGJzsXwpY+hbBYwwiSHOsrdutaCwkc8SmixgO/EHJHVZnyf3xlaVi4q
	 t6OL/irOib7I5DSdlE9x3TUmDMKRPm1ExVjnhQfAcfdft3D+tAYBP6ZGCoUXHUf0EO
	 rho1LjWeCpNNA==
Date: Sat, 5 Nov 2022 17:38:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 09/16] phy: qcom-qmp-pcie: add register init helper
Message-ID: <Y2ZSVooZDBDnsKD3@matsya>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-10-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221028133603.18470-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_050902_862223_6AAF99BC 
X-CRM114-Status: GOOD (  20.01  )
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

On 28-10-22, 15:35, Johan Hovold wrote:
> Generalise the serdes initialisation helper so that it can be used to
> initialise all the PHY registers (e.g. serdes, tx, rx, pcs).
> 
> Note that this defers the ungating of the PIPE clock somewhat, which is
> fine as it isn't needed until starting the PHY.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 37 +++++-------------------
>  1 file changed, 8 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 791ed7ef0eab..f57d10f20277 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1820,27 +1820,22 @@ static void qmp_pcie_configure(void __iomem *base,
>  	qmp_pcie_configure_lane(base, tbl, num, 0xff);
>  }
>  
> -static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> -{
> -	void __iomem *serdes = qmp->serdes;
> -
> -	if (!tbls)
> -		return;
> -
> -	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
> -}
> -
> -static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> +static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	void __iomem *serdes = qmp->serdes;
>  	void __iomem *tx = qmp->tx;
>  	void __iomem *rx = qmp->rx;
>  	void __iomem *tx2 = qmp->tx2;
>  	void __iomem *rx2 = qmp->rx2;
> +	void __iomem *pcs = qmp->pcs;
> +	void __iomem *pcs_misc = qmp->pcs_misc;
>  
>  	if (!tbls)
>  		return;
>  
> +	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);

We are tbls

> +
>  	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
>  	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
>  
> @@ -1848,15 +1843,6 @@ static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_t
>  		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
>  		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
>  	}
> -}
> -
> -static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> -{
> -	void __iomem *pcs = qmp->pcs;
> -	void __iomem *pcs_misc = qmp->pcs_misc;
> -
> -	if (!tbls)
> -		return;
>  
>  	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
>  	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
> @@ -1932,8 +1918,8 @@ static int qmp_pcie_power_on(struct phy *phy)
>  	else
>  		mode_tables = cfg->tables_ep;
>  
> -	qmp_pcie_serdes_init(qmp, &cfg->tables);
> -	qmp_pcie_serdes_init(qmp, mode_tables);
> +	qmp_pcie_init_registers(qmp, &cfg->tables);
> +	qmp_pcie_init_registers(qmp, mode_tables);

but here tables :(

Lets stick with either please, or if we have differentiation lets make
it real obvious

>  
>  	ret = clk_prepare_enable(qmp->pipe_clk);
>  	if (ret) {
> @@ -1941,13 +1927,6 @@ static int qmp_pcie_power_on(struct phy *phy)
>  		return ret;
>  	}
>  
> -	/* Tx, Rx, and PCS configurations */
> -	qmp_pcie_lanes_init(qmp, &cfg->tables);
> -	qmp_pcie_lanes_init(qmp, mode_tables);
> -
> -	qmp_pcie_pcs_init(qmp, &cfg->tables);
> -	qmp_pcie_pcs_init(qmp, mode_tables);
> -
>  	/* Pull PHY out of reset state */
>  	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>  
> -- 
> 2.37.3

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
