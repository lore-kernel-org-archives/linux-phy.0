Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F476C6FA86
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 07:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DdC+hQzRwZeuqF5GKzTI9aytQVUDP0RPbOWZJpEQZ0=; b=OSiqQgAowHSieY
	TJQoaKdYt4RCsM6GbxpMdYvJrdDadoLAK7L+c6ChbAMYAMl5/kKekJ7YTMp5ZmWt4kmJatTb+bAGO
	zabHjpgDPd2NXp74sGo4BZK3T2NCVw27HiLW5l9K3RG2/v0rnHHUYv3a0qjLoQMkwzrE7ZZ4hFNY3
	vUX7PvlJKo9+7WkY0PgFguai310U1AE0ljtDPY8qkjL1+nxUOcIYD/HBCxK3ROyMQ+kX2KaQ9Yyio
	Yccl5ze5Bt7Xf5YVEYlVfIVGhCBnIYT5lmjO/1bqM4aZXPue2w80x8UR7Et6jAmC3AEl08xXJnsYw
	bETn2cghQZa9hCddBewg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Md-008sfS-O0; Tue, 27 Sep 2022 07:50:47 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Ma-008sd6-Sb
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 07:50:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7653AB81A1C;
	Tue, 27 Sep 2022 07:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EBD1C433D7;
	Tue, 27 Sep 2022 07:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664265042;
	bh=zwi3Jb7SLffqJUmZqFS0iIaPJHK54nxgPcaTtLfeGmk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oqS/vdbB76YmjqnwrfbYOVMZw9EAelv34gchEkyjhcMEVFwJsYWuCDGlURXpiSxul
	 xMLMOylmwPBL/h/5ASJDDr6OWs10AjN1sLpWwTLRbwoCLhlorucM8kfhOELlZnpLq+
	 4iBTbYQ7U8ZsdnLXoZ5CQf+aVPBodckY9LBQ1Wm8zANVcdBzyx0+cOwyBLDKTmSenT
	 wYqU3qoPK3oUHbzgRP12nO85tiz+owmPjmARNGVbkZj/2WzmG/ue/B6MhiplwX+Kvg
	 VgrkSr4Q3WPKi6Vt4n0UlkWBEbeEtPrTXi+uhCDkfOk1eG0cKWWKwog7FX+3zl22i5
	 sV9tgGFfUHKtA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1od5Me-0005Kq-0O; Tue, 27 Sep 2022 09:50:48 +0200
Date: Tue, 27 Sep 2022 09:50:48 +0200
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
Subject: Re: [PATCH v5 1/5] phy: qcom-qmp-pcie: split register tables into
 common and extra parts
Message-ID: <YzKrWLjYx9Cqk0Qf@hovoldconsulting.com>
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
 <20220926173435.881688-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220926173435.881688-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_005045_261955_F9C8059D 
X-CRM114-Status: GOOD (  20.50  )
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

On Mon, Sep 26, 2022 at 08:34:31PM +0300, Dmitry Baryshkov wrote:
> SM8250 configuration tables are split into two parts: the common one and
> the PHY-specific tables. Make this split more formal. Rather than having
> a blind renamed copy of all QMP table fields, add separate struct
> qmp_phy_cfg_tables and add two instances of this structure to the struct
> qmp_phy_cfg. Later on this will be used to support different PHY modes
> (RC vs EP).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 410 +++++++++++++----------
>  1 file changed, 226 insertions(+), 184 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 5be5348fbb26..dc8f0f236212 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1300,31 +1300,30 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
>  };
>  
> +struct qmp_phy_cfg_tables {
> +	const struct qmp_phy_init_tbl *serdes;
> +	int serdes_num;
> +	const struct qmp_phy_init_tbl *tx;
> +	int tx_num;
> +	const struct qmp_phy_init_tbl *rx;
> +	int rx_num;
> +	const struct qmp_phy_init_tbl *pcs;
> +	int pcs_num;
> +	const struct qmp_phy_init_tbl *pcs_misc;
> +	int pcs_misc_num;
> +};

> @@ -1459,14 +1458,16 @@ static const char * const sdm845_pciephy_reset_l[] = {
>  static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>  	.lanes			= 1,
>  
> -	.serdes_tbl		= ipq8074_pcie_serdes_tbl,
> -	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
> -	.tx_tbl			= ipq8074_pcie_tx_tbl,
> -	.tx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_tx_tbl),
> -	.rx_tbl			= ipq8074_pcie_rx_tbl,
> -	.rx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_rx_tbl),
> -	.pcs_tbl		= ipq8074_pcie_pcs_tbl,
> -	.pcs_tbl_num		= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
> +	.tables = {
> +		.serdes		= ipq8074_pcie_serdes_tbl,
> +		.serdes_num	= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
> +		.tx		= ipq8074_pcie_tx_tbl,
> +		.tx_num		= ARRAY_SIZE(ipq8074_pcie_tx_tbl),
> +		.rx		= ipq8074_pcie_rx_tbl,
> +		.rx_num		= ARRAY_SIZE(ipq8074_pcie_rx_tbl),
> +		.pcs		= ipq8074_pcie_pcs_tbl,
> +		.pcs_num	= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
> +	},

This looks much better. Even improves readability here too.

>  	.clk_list		= ipq8074_pciephy_clk_l,
>  	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
>  	.reset_list		= ipq8074_pciephy_reset_l,
 
> +static void qmp_pcie_lanes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
> +{
> +	const struct qmp_phy_cfg *cfg = qphy->cfg;
> +	void __iomem *tx = qphy->tx;
> +	void __iomem *rx = qphy->rx;
> +
> +	if (!tables)
> +		return;
> +
> +	qmp_pcie_configure_lane(tx, cfg->regs,
> +				tables->tx, tables->tx_num, 1);

Nit: do you really need that line break?

Same comment applies throughout.

> +
> +	if (cfg->lanes >= 2)
> +		qmp_pcie_configure_lane(qphy->tx2, cfg->regs,
> +					tables->tx, tables->tx_num, 2);
> +
> +	qmp_pcie_configure_lane(rx, cfg->regs,
> +				tables->rx, tables->rx_num, 1);
> +	if (cfg->lanes >= 2)
> +		qmp_pcie_configure_lane(qphy->rx2, cfg->regs,
> +					tables->rx, tables->rx_num, 2);
> +}
 
Looks good otherwise:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
