Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC2BEC77B6E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AyIE5wHWzW/GStFZAG2fwcyhe3w2GreM31bZ06+Mq7o=; b=OxW02L/bMp3bOf
	ti+3b8Gv8M36D45cvbfRr0ORl+QGSuDF0YM5Seo/UC+mQfkWyifit4IbfA9uM20Tl6wUlcvNHgB7E
	2Fvz3GxL8HJe4hAMQdwqCcmuW581LId/weQ0N9vxsc1UTFB2JKy5/HQIghqftBMhZclDazaLoiTs2
	LKAKLIrh8Proz1q+520mxD9AiyB4O0XbsOVvPwfARonjU3BbTMkmAfzDduRs+g4FE+cnsL6ImN1KV
	NvQ4TN7xOn4CvUmHoC5aiMAxga75XA8xEWCpEK18txyabP9BuzXQjIswsralX9r6ikrYBboITxECH
	Hhb1S2nAkyoiblE/kGSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmd7k-003mKV-0m;
	Wed, 12 Apr 2023 16:15:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmd7g-003mJI-1T
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 16:15:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8C672621E1;
	Wed, 12 Apr 2023 16:15:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47877C433EF;
	Wed, 12 Apr 2023 16:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681316103;
	bh=1PY7+OsGBN+uCgRUYtBU8jXFz852lXmdaStSRrPi68o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bDDdDbgMIwY2ntwzM2O1KIrFMCN78ube1lhT9aPdwSVOjJDN4h3EF3Dh0h78su7gH
	 GSjafhtiYaeEDKi43zNOEkJOTmHsSrQ0pFRHORK8UmEE3WrQztxAB4jmNEaEMKdfZz
	 3LUb8tJzkhMiUoFdSoibSSc1Puu/W7HJxZd2sa46/NO8YypOiTvzik6Ety/QV5kpDB
	 pdCmF+WZory6u5bHriS3UXxQaMfaFEwZMnpLIbjOVSKJttMczq/7af8W+A4ceBhJXW
	 hekeuiqX3w14iwLreNQ/ZlcZXL4vzPMfdYJ63ISpWHqKlhj4eoxJ2BUt9OWYZ7uXbW
	 olDwBLDUJjD1A==
Date: Wed, 12 Apr 2023 21:44:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v3 3/5] phy: qualcomm: phy-qcom-qmp-ufs: add definitions
 for sa8775p
Message-ID: <ZDbZA3AnbTTylFdb@matsya>
References: <20230411130446.401440-1-brgl@bgdev.pl>
 <20230411130446.401440-4-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230411130446.401440-4-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_091504_576162_05EE2B1D 
X-CRM114-Status: GOOD (  18.36  )
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

On 11-04-23, 15:04, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add QMP PHY config for sa8775p and add support for the new compatible.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 38 +++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index d58822049211..5612282eb378 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -853,6 +853,41 @@ static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
>  	.no_pcs_sw_reset	= true,
>  };
>  
> +

There was already an empty line, this didnt make sense. Please run
checkpatch to avoid missing these style issues

I have fixed it up and applied

> +static const struct qmp_phy_cfg sa8775p_ufsphy_cfg = {
> +	.lanes			= 2,
> +
> +	.offsets		= &qmp_ufs_offsets,
> +
> +	.tbls = {
> +		.serdes		= sm8350_ufsphy_serdes,
> +		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
> +		.tx		= sm8350_ufsphy_tx,
> +		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
> +		.rx		= sm8350_ufsphy_rx,
> +		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
> +		.pcs		= sm8350_ufsphy_pcs,
> +		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
> +	},
> +	.tbls_hs_b = {
> +		.serdes		= sm8350_ufsphy_hs_b_serdes,
> +		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
> +	},
> +	.tbls_hs_g4 = {
> +		.tx		= sm8350_ufsphy_g4_tx,
> +		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_tx),
> +		.rx		= sm8350_ufsphy_g4_rx,
> +		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_rx),
> +		.pcs		= sm8350_ufsphy_g4_pcs,
> +		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
> +	},
> +	.clk_list		= sm8450_ufs_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= ufsphy_v5_regs_layout,
> +};
> +
>  static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
>  	.lanes			= 2,
>  
> @@ -1600,6 +1635,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,msm8998-qmp-ufs-phy",
>  		.data = &sdm845_ufsphy_cfg,
> +	}, {
> +		.compatible = "qcom,sa8775p-qmp-ufs-phy",
> +		.data = &sa8775p_ufsphy_cfg,
>  	}, {
>  		.compatible = "qcom,sc8180x-qmp-ufs-phy",
>  		.data = &sm8150_ufsphy_cfg,
> -- 
> 2.37.2

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
