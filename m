Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A51F5C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jul 2024 14:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/QRjufv25kt5iD4ALpcYTQw8Hn5WnEJi4bRNaP6KmQ=; b=rBBnF65kGWmszI
	jqX489VnW5mGwgl4bidGZpnE+mIpvfCVrnZai+HDghe98mdHu4WnCpXiMGmXsJqDAysONT1/H+U38
	+6mBc/xTrV/cBA44KxHZHGOMh+J36yX4ubiB23DnfJtWdtl5NdoezAzo3J5G1HD85pKcoIb4FRCJr
	2XH5173k7o4PIOfNvIqndddb8kWO03HaMt1gbpWubG9LATP1zmJREfqaYgZDAEXPrNm6QcJ6+UKC5
	HMnDLZgxWQZhNs+oPo+U7ihNK2/1AlecwAkqEw5b+avZz/GkYewr1LqmXI0yY4kS3tlVfgA6OuwTY
	/WGtJOCssyyKHzELtT/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXLwO-0000000499p-0L7W;
	Fri, 26 Jul 2024 14:29:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXLwL-0000000499C-1Azp
	for linux-phy@lists.infradead.org;
	Fri, 26 Jul 2024 14:29:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1B14F61844;
	Fri, 26 Jul 2024 14:29:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB7DAC4AF07;
	Fri, 26 Jul 2024 14:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722004139;
	bh=WGyBAplORceeO8W0akWmItJGTTaSx6AWpNMIRWFZy24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MQwYnetrKHH9zTr9XxA9Gwqnxm+fiBQInsbv+d3oM+AIk2pZ4+2EkBY691W7ioC98
	 TSFyrtSHJokSLUSg1WdYYsl2jBGtWp1U7e1uEkMSOYh7bAeTqQoEV6RhCUnn5ZrB6/
	 0MsGDao2txUAh2LRiLHXe95EXOLG4Qn9ELM4vEgEesG/0fCxsLDoSnF8JLrlIwT+wm
	 ZonYz7+bQIq+mf+vVQkqNSr0AD9Jl1dHuVk6IzdOp4KfvpERYcZTGrfp60BPw93Fwn
	 rrfCM3sr2o0sdfFTV7/QOzfcKT4Y8t5vHfxeMiDq5rUhArXfjKcRkbkYNlOgM+4pky
	 g/J6g7IF02flQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sXLwO-000000006vU-3pTW;
	Fri, 26 Jul 2024 16:29:04 +0200
Date: Fri, 26 Jul 2024 16:29:04 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-pcie: Fix X1E80100 PCIe Gen4 PHY
 initialisation
Message-ID: <ZqOysDk0LqwxG4OF@hovoldconsulting.com>
References: <20240726-x1e80100-phy-qmp-pcie-fix-config-v1-1-b569f03c0c48@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240726-x1e80100-phy-qmp-pcie-fix-config-v1-1-b569f03c0c48@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_072901_404628_1EB13141 
X-CRM114-Status: GOOD (  12.99  )
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

On Fri, Jul 26, 2024 at 10:16:56AM +0300, Abel Vesa wrote:
> Update the PCIe Gen4 PHY init sequence with the latest based on internal
> Qualcomm documentation.

Any hints about what these updates imply?

> Fixes: 606060ce8fd0 ("phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 23 ++++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 5b36cc7ac78b..8b624afbf014 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c

>  static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_tx_tbl[] = {
> @@ -1286,12 +1287,15 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_rx_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_1, 0x01),
>  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_2, 0x01),
>  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_3, 0x45),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0b),
> +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0A, 1),
> +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0B, 2),

Please use lower-case hex consistently.

> +	QMP_PHY_INIT_CFG(QSERDES_V6_20_VGA_CAL_CNTRL1, 0x00),
>  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_GM_CAL, 0x0d),
>  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
>  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_SIGDET_ENABLES, 0x1c),
>  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_PHPRE_CTRL, 0x20),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
> +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x3A, 1),
> +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38, 2),

Ditto.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
