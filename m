Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FFEC61D9C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 12:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XSpyhfklq8BeyCmjuoUBLuYJRXjAp5ip3jQ2SOdKw0=; b=inAS/isri8zKl8
	7lnOb2x5Jj6cm/8/yZ6bj5sgT5aYFbyx9XYl1yrWYGUVandl27rTSPgPi+3iP98wYpDHjEbEUBgAn
	m8JaZdTMQ7mBXtmCnmonssf+McQjY/bZZRtEcITG+3R6p5HlR4bgC/Q6NNVdvzGwerLypmP17a61/
	fyZe/7x1AwfYjm00qCziXzwHHwPh4c9Y1NSzcfxEG/DYdlm9025hqC4LbE4m72ofddiNofuHsIAk5
	MEfAu2gCvR+QeVZp3cJW6pgyV97jwI3h6UHufSQVQh+fgTG3Zu/9RiKAVc1L1YLbSNznRTCDFuGC6
	Bn3HYGJjr5vIb+Is5MHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mmZ-001slv-2M;
	Wed, 22 Nov 2023 12:56:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mmV-001sjh-1w
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 12:56:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id BEDABB80F9E;
	Wed, 22 Nov 2023 12:56:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D115C433C8;
	Wed, 22 Nov 2023 12:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700657797;
	bh=FU2GRBpzFMvCFhka/4yUjVC5jdbP1aO+NFWCN0EDrIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E4N6jxHCAp4tFCAJNZ7zrrZ9aW5XpMkXkuRi8Yp9MB1itrGb27EWR0AimfSKvrUe+
	 xIKBWrSUoRPshnpNl/1FbBTjcPt/Cl1VF0vhzco59odzRlZyGwoZRmdMZjOLfPFhmg
	 rhd6wCVTDYHvqEWbxWu18YI68DOmN2iKp/5KC7ZgoBSiYhZoCFqq90NkNgkLbVufOZ
	 q9/CcH0gvOYYJMS+j0JhWcnUbX18Dgj2WqBDTMO9yLEHoKizitqAl+ddoLOJORmSPa
	 IWJTygjglhV4AnSeNAennSuNsqXoua77PVtIPyT4UHBhbMo0josGMwqdZzNhJqI4bQ
	 ZRy/iwYGuHwRQ==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1r5mmh-0001kR-1j;
	Wed, 22 Nov 2023 13:56:52 +0100
Date: Wed, 22 Nov 2023 13:56:51 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom-qmp-usb: Add Qualcomm X1E80100 USB3 PHY
 support
Message-ID: <ZV36k8AZdy9Zm-rj@hovoldconsulting.com>
References: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-0-3f5bd223d5b4@linaro.org>
 <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-2-3f5bd223d5b4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-2-3f5bd223d5b4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_045639_922598_6DF31C68 
X-CRM114-Status: GOOD (  17.40  )
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

On Wed, Nov 22, 2023 at 02:05:22PM +0200, Abel Vesa wrote:
> The X1E80100 platform has two instances of the USB3 UNI phy attached
> to the multi-port USB controller, add definition for these.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 152 ++++++++++++++++++++++++++++++++
>  1 file changed, 152 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 02f156298e77..bbeba5722cf0 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -24,6 +24,7 @@
>  #include "phy-qcom-qmp-pcs-misc-v4.h"
>  #include "phy-qcom-qmp-pcs-usb-v4.h"
>  #include "phy-qcom-qmp-pcs-usb-v5.h"
> +#include "phy-qcom-qmp-pcs-usb-v7.h"
>  
>  /* QPHY_SW_RESET bit */
>  #define SW_RESET				BIT(0)
> @@ -1138,6 +1139,134 @@ static const struct qmp_phy_init_tbl sc8280xp_usb3_uniphy_pcs_usb_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
>  };
>  
> +static const struct qmp_phy_init_tbl x1e80100_usb3_uniphy_serdes_tbl[] = {

These tables and...

> @@ -1411,6 +1540,26 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
>  	.regs			= qmp_v5_usb3phy_regs_layout,
>  };
>  
> +static const struct qmp_phy_cfg x1e80100_usb3_uniphy_cfg = {
> +	.lanes			= 1,
> +
> +	.offsets		= &qmp_usb_offsets_v5,
> +
> +	.serdes_tbl		= x1e80100_usb3_uniphy_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(x1e80100_usb3_uniphy_serdes_tbl),
> +	.tx_tbl			= x1e80100_usb3_uniphy_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(x1e80100_usb3_uniphy_tx_tbl),
> +	.rx_tbl			= x1e80100_usb3_uniphy_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(x1e80100_usb3_uniphy_rx_tbl),
> +	.pcs_tbl		= x1e80100_usb3_uniphy_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(x1e80100_usb3_uniphy_pcs_tbl),
> +	.pcs_usb_tbl		= x1e80100_usb3_uniphy_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(x1e80100_usb3_uniphy_pcs_usb_tbl),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= qmp_v5_usb3phy_regs_layout,
> +};

...this struct no longer looks like they've been added at the right
places.

> +
>  static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
>  	.lanes			= 1,
>  
> @@ -2247,6 +2396,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,sc8280xp-qmp-usb3-uni-phy",
>  		.data = &sc8280xp_usb3_uniphy_cfg,
> +	}, {
> +		.compatible = "qcom,x1e80100-qmp-usb3-uni-phy",
> +		.data = &x1e80100_usb3_uniphy_cfg,

Same here, please keep the entries sorted by compatible (and please
check your other x1e80100 patches for such issues after changing the SoC
name).

>  	}, {
>  		.compatible = "qcom,sdm845-qmp-usb3-uni-phy",
>  		.data = &qmp_v3_usb3_uniphy_cfg,

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
