Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4CF3C32771
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 06:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IGhhyLgouAzsz21RmhQTjA4mWBv3Z85BR7Oo4zeIjc=; b=Udz0iIdAfh8MZf
	sa5rqYc3adLfhSAiZMF0bdETd719LXN1Ljt/mSTPodQ9tKzI54JVnHtjWwYRYYrJ5k7r6BjTeMoAJ
	eDH9EfH5lqSXIFrh4Foa6mYLewhPjGPchrtI1zEWS3hoo+7ja1mq9OIphqi5yVMR7AHnEoRoyQLJd
	b0GThm6+AuLIfEAVp2xcRk3+vzFg1ltoj9LZjTmMjAb4HMS+IY608cmGvDEmpv+bmpia3IRRVUpsd
	WaEqOfQHJpSlbD/L0QbrrDz4Te53QKbDKBCa9tK2QGt+N8Rna2mqG/aiugRRrEfVd1byn+NDpsmiO
	5nOOlCLX+j7v12uDauiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochfa-002Lsy-Bq; Mon, 26 Sep 2022 06:32:46 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochfX-002Lr4-R7
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 06:32:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BFCFEB8172A;
	Mon, 26 Sep 2022 06:32:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FDF8C433D6;
	Mon, 26 Sep 2022 06:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664173959;
	bh=lT31F5ekIodvNrPjS3UIG91uixWX4XDbQLqZYYRxJ/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GpSpRIjyWDkExpn9J8XqEW87+YelDlRYpN3D1ElL4PTr7zwhnUprfSqDLD56FAlqH
	 XjQfjaVoBeefh7HmeFQoZesv4IiNlEBewYi4hsp3teZy9u+EF1D98fvX3lGSPnljI1
	 UTLfnsdiGor8zMJ8314shzPG1wTVSbWVR7SNyno/Pkbjw430hUgFvJhNv/q/7BDF/R
	 Tc94klDxp9aZB1bETNITb8KqXtEaFTgry4gpPaT87tpJhaJIfu43sYWXevHviZtAcA
	 m8vTCCV20gXzBoeUDg9gF+2etH/Lk0OtKwR0VZ5giw3gBOg9aPI2wvRgndgf+hhg3L
	 242XEmfN6XOug==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ochfX-00028l-Qm; Mon, 26 Sep 2022 08:32:44 +0200
Date: Mon, 26 Sep 2022 08:32:43 +0200
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
Subject: Re: [PATCH v4 1/6] phy: qcom-qmp-pcie: split register tables into
 common and extra parts
Message-ID: <YzFHi3IQcBF70uCG@hovoldconsulting.com>
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
 <20220924160302.285875-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220924160302.285875-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_233244_216253_F7C6E4F4 
X-CRM114-Status: GOOD (  21.17  )
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

On Sat, Sep 24, 2022 at 07:02:57PM +0300, Dmitry Baryshkov wrote:
> SM8250 configuration tables are split into two parts: the common one and
> the PHY-specific tables. Make this split more formal. Rather than having
> a blind renamed copy of all QMP table fields, add separate struct
> qmp_phy_cfg_tables and add two instances of this structure to the struct
> qmp_phy_cfg. Later on this will be used to support different PHY modes
> (RC vs EP).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 129 ++++++++++++++---------
>  1 file changed, 77 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 7aff3f9940a5..30806816c8b0 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1300,31 +1300,30 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
>  };
>  
> -/* struct qmp_phy_cfg - per-PHY initialization config */
> -struct qmp_phy_cfg {
> -	int lanes;
> -
> -	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
> +struct qmp_phy_cfg_tables {
>  	const struct qmp_phy_init_tbl *serdes_tbl;
>  	int serdes_tbl_num;
> -	const struct qmp_phy_init_tbl *serdes_tbl_sec;
> -	int serdes_tbl_num_sec;
>  	const struct qmp_phy_init_tbl *tx_tbl;
>  	int tx_tbl_num;
> -	const struct qmp_phy_init_tbl *tx_tbl_sec;
> -	int tx_tbl_num_sec;
>  	const struct qmp_phy_init_tbl *rx_tbl;
>  	int rx_tbl_num;
> -	const struct qmp_phy_init_tbl *rx_tbl_sec;
> -	int rx_tbl_num_sec;
>  	const struct qmp_phy_init_tbl *pcs_tbl;
>  	int pcs_tbl_num;
> -	const struct qmp_phy_init_tbl *pcs_tbl_sec;
> -	int pcs_tbl_num_sec;
>  	const struct qmp_phy_init_tbl *pcs_misc_tbl;
>  	int pcs_misc_tbl_num;
> -	const struct qmp_phy_init_tbl *pcs_misc_tbl_sec;
> -	int pcs_misc_tbl_num_sec;
> +};
> +
> +/* struct qmp_phy_cfg - per-PHY initialization config */
> +struct qmp_phy_cfg {
> +	int lanes;
> +
> +	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
> +	struct qmp_phy_cfg_tables common;
> +	/*
> +	 * Additional init sequence for PHY blocks, providing additional
> +	 * register programming. Unless required it can be left omitted.
> +	 */
> +	struct qmp_phy_cfg_tables *extra;
>  
>  	/* clock ids to be requested */
>  	const char * const *clk_list;

> @@ -1949,31 +1974,31 @@ static int qmp_pcie_power_on(struct phy *phy)
>  	}
>  
>  	/* Tx, Rx, and PCS configurations */
> -	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
> -	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl_sec, cfg->tx_tbl_num_sec, 1);
> +	qmp_pcie_configure_lane(tx, cfg->regs, cfg->common.tx_tbl, cfg->common.tx_tbl_num, 1);
> +	qmp_pcie_configure_lane(tx, cfg->regs, cfg->extra->tx_tbl, cfg->extra->tx_tbl_num, 1);

Hmm. How did you test this?

With your later versions of this series, cfg->extra is generally NULL so
this would dereference a NULL pointer.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
