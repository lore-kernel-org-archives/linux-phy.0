Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 423DCC4167D
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 16:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWeI91/NitsyQvIlJ106f6xsfhazUKFG9SRQ6br6Z2M=; b=hxtoK1xkc9Pv3y
	qbYCavJe4PuxzronJmKpw9ARKCAmL+UQIXEV4PC/OrPUhzkCXbFJAidLPL6re2hpDNZB2S1jxHlGK
	zqHiuTUY8hBiLZrpEWVXhOx4mM3VhOnGtTG/IwU48BsqVE6s6bIigdhoiQSH12v6m1RTbdNFnsUdi
	ADOewr4bIlpmE+b2vGp404IllNnXWY1MbfAt68L1TTrBvEOuKv8b+Ysqkj//zG0itZQ3LAwxUiU0h
	PyQPK4fJjwHHe/GfAI3iXjALuoJYVYByrFNDm40hCtyba+L6jE+xlluI/ZCvjiao8dx7cN32r8orf
	9HES5IYOq00k2iXRS/HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r02Dq-00H55j-2o;
	Mon, 06 Nov 2023 16:13:06 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r02Dn-00H54K-2m
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 16:13:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 52F90B80DE6;
	Mon,  6 Nov 2023 16:13:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6391DC433C7;
	Mon,  6 Nov 2023 16:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699287180;
	bh=0H1dc6HEmRBipKy8E5yk0M2LZ1eX6eHdMCL4x9+kr4s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DyNL/QwqDDRkV01QwKcgdEd2Bu5G+zzEPC9ycp0QdDGw0GJdSh97VsFF/AI7QejaL
	 0q6UEbtp1zR1QbBAy2qlRk5TKstR6bNPc2moLb9PJ/x3MBSuhGX0F8HmPpUTvrF6Qe
	 hVZkF5APmmAS5dA4jqBb5qRAnNgYXm3k0+BOpbq/Vc1xqEKDIM9brLzTsOs3DpNFLZ
	 HItclxvXMpEbZJ9rlwtHNqnsq7IrEKn/nPQ24uybJbRGxVU6x9aU+sCtf8mzYexSCP
	 0UiZTwteOPzRRJ720P4+ciJjj+Xe29LV3Kgw1Sd+wp7m7IZgHMixXIDKJgwHZtiuH+
	 n8Ak/x5PaLfow==
Date: Mon, 6 Nov 2023 08:17:01 -0800
From: Bjorn Andersson <andersson@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com, quic_vpernami@quicinc.com, 
	quic_parass@quicinc.com
Subject: Re: [PATCH 2/2] phy: qcom-qmp-pcie: Add support for keeping refclk
 always on
Message-ID: <p3ozkq2rjkl2qowkbb5oq2bk33s476ismuxhkxv3ttlvafjyis@ctmowtnwg4rp>
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
 <20231106-refclk_always_on-v1-2-17a7fd8b532b@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231106-refclk_always_on-v1-2-17a7fd8b532b@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_081304_207370_63BB33B9 
X-CRM114-Status: GOOD (  25.34  )
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

On Mon, Nov 06, 2023 at 05:22:35PM +0530, Krishna chaitanya chundru wrote:
> In PCIe low power states like L1.1 or L1.2 the phy will stop
> supplying refclk to endpoint. If endpoint asserts clkreq to bring
> back link L0, then RC needs to provide refclk to endpoint.
> 
> If there is some issues in platform with clkreq signal propagation
> to host and due to that host will not send refclk which results PCIe link
> down. For those platforms  phy needs to provide refclk even in low power

Double <space> ------------^^

> states.
> 
> Add a flag which indicates refclk is always supplied to endpoint.
> 

The patch itself look good, the problem description looks good, but if
you have an indication that the refclk "is always supplied to the
endpoint", then you don't have a problem with refclk and I don't think
you need this patch.

Something to the tune of "keep refclk always supplied to endpoint" seems
to more appropriately describe what this flag is doing.

> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index a63ca7424974..d7e377a7d96e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -43,6 +43,8 @@
>  /* QPHY_PCS_STATUS bit */
>  #define PHYSTATUS				BIT(6)
>  #define PHYSTATUS_4_20				BIT(7)
> +/* PCS_PCIE_ENDPOINT_REFCLK_CNTRL */
> +#define EPCLK_ALWAYS_ON_EN			BIT(6)
>  
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  
> @@ -77,6 +79,7 @@ enum qphy_reg_layout {
>  	QPHY_START_CTRL,
>  	QPHY_PCS_STATUS,
>  	QPHY_PCS_POWER_DOWN_CONTROL,
> +	QPHY_PCS_ENDPOINT_REFCLK_CNTRL,
>  	/* Keep last to ensure regs_layout arrays are properly initialized */
>  	QPHY_LAYOUT_SIZE
>  };
> @@ -103,10 +106,11 @@ static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  };
>  
>  static const unsigned int pciephy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
> -	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
> -	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
> -	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
> -	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
> +	[QPHY_SW_RESET]				= QPHY_V4_PCS_SW_RESET,
> +	[QPHY_START_CTRL]			= QPHY_V4_PCS_START_CONTROL,
> +	[QPHY_PCS_STATUS]			= QPHY_V4_PCS_PCS_STATUS1,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]		= QPHY_V4_PCS_POWER_DOWN_CONTROL,
> +	[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]	= QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
>  };
>  
>  static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
> @@ -2244,6 +2248,8 @@ struct qmp_pcie {
>  	struct phy *phy;
>  	int mode;
>  
> +	bool refclk_always_on;
> +
>  	struct clk_fixed_rate pipe_clk_fixed;
>  };
>  
> @@ -3159,6 +3165,10 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
>  	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
>  	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
>  
> +	if (qmp->refclk_always_on && cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL])
> +		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL],
> +			     EPCLK_ALWAYS_ON_EN);
> +
>  	if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
>  		qmp_pcie_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
>  		qmp_pcie_init_port_b(qmp, tbls);
> @@ -3681,6 +3691,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> +	qmp->refclk_always_on = of_property_read_bool(dev->of_node,
> +						      "qcom,refclk-always-on");

Leave this line unwrapped, for readability.

Regards,
Bjorn

> +
>  	ret = phy_pipe_clk_register(qmp, np);
>  	if (ret)
>  		goto err_node_put;
> 
> -- 
> 2.42.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
