Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C89DC67861
	for <linux-phy@archiver.kernel.org>; Mon,  8 Apr 2024 09:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PviRO0gScuDUAO2+i3+6ZGtuTUbpond2W/XSIrQ3+2U=; b=l+z6MedUkphlP6
	UEa66QFsByUXG/wTIwVMBuClhjQsjgKPtR0BMIC9f6JejYGyYsIkt4Zhhfh5OghwdfLuOo2iEI0+R
	3GUgEucTWpEsRo5Y8Di/rUBKvZePnwVar8ad6CfxSKSXQMCflJFHExC2iBaRUeSq9XegTvNEkI+t2
	9b853gc+bgLARWO0oJh0rNSOTq17UNXZ+GwaTt44hUBSBvO8lq+7fRQ9Ol8aBK4KCZ6v5l4P6D+qo
	X8EJIy3FZxymg9Vlfs21Ogsnv48qwUxZge++FoJyffxWwfz2/lpJiWjxhTn0fEf2EF3HfE+O0HvFo
	2z04BdWwokLoL+BPiZjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtla9-0000000F9DN-3Sij;
	Mon, 08 Apr 2024 09:46:29 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtla7-0000000F9Cf-0wqL
	for linux-phy@lists.infradead.org;
	Mon, 08 Apr 2024 09:46:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C4BB2CE0E6D;
	Mon,  8 Apr 2024 09:46:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06309C433F1;
	Mon,  8 Apr 2024 09:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712569584;
	bh=w96AR1Wv4GGEMME0DTaOez2gviiLAqcq3igwhCwqMEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Td341aObAzkaNYyl+vraZVNR5iMk4iIyJPIufLM2K7/sakH38bZ2NUcHm9FUeTCR5
	 cCDVCFDtsNGv4B5WQ4oGk6DjTxaZfB5Eb5zh5ldKIx4XFUWncCmr8WEaNLpN1Wm7pw
	 oFP61mtQoCUYUEUqHl3TgKB0JDzxY03ydK+8djGEYe2F+DTCtyFK6KzDCP3LwQRKo8
	 F6MfBVTTRB6YF6FrUI/S7e58qjrbEhhm4iTCRGk7mXhYUH2A86gv5AXwWec8esyIF0
	 V2M+8zV/tMR7s7TLu8kFHW/kxznUECsUyeDnY1bpxbmCjgA8koTp4DCghRT3UNr4mb
	 y87JWeH2mex8A==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1rtlZx-000000000Mc-2Pb1;
	Mon, 08 Apr 2024 11:46:18 +0200
Date: Mon, 8 Apr 2024 11:46:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, patches@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	freedreno@lists.freedesktop.org,
	Douglas Anderson <dianders@chromium.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-combo: Fix VCO div offset on v3
Message-ID: <ZhO86VWkrOSIGBHV@hovoldconsulting.com>
References: <20240404234345.1446300-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404234345.1446300-1-swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_024627_654255_CE35BA46 
X-CRM114-Status: GOOD (  28.34  )
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

On Thu, Apr 04, 2024 at 04:43:44PM -0700, Stephen Boyd wrote:
> Commit ec17373aebd0 ("phy: qcom: qmp-combo: extract common function to
> setup clocks") changed the offset that is used to write to
> DP_PHY_VCO_DIV from QSERDES_V3_DP_PHY_VCO_DIV to
> QSERDES_V4_DP_PHY_VCO_DIV. Unfortunately, this offset is different
> between v3 and v4 phys:
> 
>  #define QSERDES_V3_DP_PHY_VCO_DIV                 0x064
>  #define QSERDES_V4_DP_PHY_VCO_DIV                 0x070
> 
> meaning that we write the wrong register on v3 phys now. Add another
> generic register to 'regs' and use it here instead of a version specific
> define to fix this.
> 
> This was discovered after Abhinav looked over register dumps with me
> from sc7180 Trogdor devices that started failing to light up the
> external display with v6.6 based kernels. It turns out that some
> monitors are very specific about their link clk frequency and if the
> default power on reset value is still there the monitor will show a
> blank screen or a garbled display. Other monitors are perfectly happy to
> get a bad clock signal.

> Fixes: ec17373aebd0 ("phy: qcom: qmp-combo: extract common function to setup clocks")
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 7d585a4bbbba..3b19d8ebf467 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -77,6 +77,7 @@ enum qphy_reg_layout {
>  	QPHY_COM_BIAS_EN_CLKBUFLR_EN,
>  
>  	QPHY_DP_PHY_STATUS,
> +	QPHY_DP_PHY_VCO_DIV,
>  
>  	QPHY_TX_TX_POL_INV,
>  	QPHY_TX_TX_DRV_LVL,
> @@ -102,6 +103,7 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
> +	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V3_DP_PHY_VCO_DIV,

> @@ -126,6 +128,7 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
> +	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V4_DP_PHY_VCO_DIV,

I happened to skim this patch on the list and noticed that you added a
new register abstraction but only updated two tables.

A quick look at the driver reveals that there are currently four such
tables, which means that the v5_5nm (e.g. the Lenovo ThinkPad X13s) and
v6 hardware would now be broken instead as they would write to offset 0.

Clearly the hardware abstraction in this driver leaves a lot to wish
for when it's this fragile, but how can three people including the
maintainer review this change without this being noticed?

I just sent a follow-up fix here:

	https://lore.kernel.org/lkml/20240408093023.506-1-johan+linaro@kernel.org/

> @@ -2184,7 +2188,7 @@ static int qmp_combo_configure_dp_clocks(struct qmp_combo *qmp)
>  		/* Other link rates aren't supported */
>  		return -EINVAL;
>  	}
> -	writel(phy_vco_div, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_VCO_DIV);
> +	writel(phy_vco_div, qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_VCO_DIV]);

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
