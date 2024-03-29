Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24ABDC6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 16:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkpGOIfC/eRLHkF8D3h64Iy2RSjlyZ06LHlV0a3DSu8=; b=D3sS/2H04jSujj
	qW4ES6CMEv65KtZQ3093/TPcnAvVFS165P1ZiSGoA+xfwTUpPDwj1KcZZpqDyq6JuzFLMe53XSAi8
	8UBdIC3aKAUAds+cMYVjzI5jrAO7EVheffGCoD7q/GAedr23g55Uyqirq0SuO6mAxxU2Z9EDz8/9q
	ZW6UW5okNaBSgQxlSKXVFlLbx4gTlKxGL1//r+w8teYJtz7Q9d1trb1NIpbV4xtXE0WCZCP4YBcAm
	ucR9vuRgyEABUZoQ1HHEFivdKJff36mf04r2MI/6K0UaOpqgmjkNKXG5W2NQEO++uPXtY6AilNRmN
	yh7xV2Chhigyd+B70Exg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqFWY-00000001Nl9-3F16;
	Fri, 29 Mar 2024 16:56:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqFWU-00000001NjT-0aqA
	for linux-phy@lists.infradead.org;
	Fri, 29 Mar 2024 16:56:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 921AB61994;
	Fri, 29 Mar 2024 16:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6422C433C7;
	Fri, 29 Mar 2024 16:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711731369;
	bh=isBCBT3seLZHai1OgzPx3zwWr4nR668ZJ3SMftDDp6g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cJ5kh/eFxvCB7x0HP9o7GJ025aeWR+BDUKfpEeIIYigLiXrGXi/gyZYGwm1M0wIw5
	 RZ7k6YyugQtGNOCHPSI/Q4LFhlBCbcdGgTklkcpMx2V6f1IKOTHs3ZB7QZp5eTIoi3
	 u69yhID5We6VtYO8ucXLvNOvfoHL49CS+sepNyKzW/J+NZiNXTMRZZ5eCqZ31Td+68
	 NorqtgqaNH6A+ShOFysLPth9FfYCFQRw+4Ee/lBwRRpg+k7tLDNIGmNb8Tw1HHP4OY
	 JF+SGtwvPX0HWLRAzSBautwu9NJ3voJxFVUp7Q4aSyekrr0TY8y9HkKV0JlF4BXBmG
	 VMUerY5p90Fgw==
Date: Fri, 29 Mar 2024 22:26:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFT 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
Message-ID: <ZgbypXhhTGep1r8-@matsya>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-3-07e24a231840@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-3-07e24a231840@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_095610_287685_CF30B97B 
X-CRM114-Status: GOOD (  18.91  )
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

On 29-02-24, 14:07, Neil Armstrong wrote:
> Introduce an enum for the QMP Combo PHY modes, use it in the
> QMP commmon phy init function and default to COMBO mode.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++++++----
>  1 file changed, 36 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 3721bbea9eae..ac5d528fd7a1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -61,6 +61,12 @@
>  
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  
> +enum qphy_mode {
> +	QPHY_MODE_COMBO = 0,
> +	QPHY_MODE_DP_ONLY,
> +	QPHY_MODE_USB_ONLY,
> +};
> +
>  /* set of registers with offsets different per-PHY */
>  enum qphy_reg_layout {
>  	/* PCS registers */
> @@ -1491,6 +1497,7 @@ struct qmp_combo {
>  
>  	struct mutex phy_mutex;
>  	int init_count;
> +	enum qphy_mode init_mode;
>  
>  	struct phy *usb_phy;
>  	enum phy_mode mode;
> @@ -2531,12 +2538,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>  	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
>  		val |= SW_PORTSELECT_VAL;
>  	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
> -	writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>  
> -	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
> -	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> -			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
> -			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
> +	switch (qmp->init_mode) {
> +		case QPHY_MODE_COMBO:

Case should be at same indent as switch :-) coding style 101

> +			writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
> +
> +			/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
> +			qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> +					SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
> +					SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
> +			break;
> +
> +		case QPHY_MODE_DP_ONLY:
> +			writel(DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
> +
> +			/* bring QMP DP PHY PCS block out of reset */
> +			qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> +					SW_DPPHY_RESET_MUX | SW_DPPHY_RESET);
> +			break;
> +
> +		case QPHY_MODE_USB_ONLY:
> +			writel(USB3_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
> +
> +			/* bring QMP USB PHY PCS block out of reset */
> +			qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> +					SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
> +			break;
> +	}
>  
>  	qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
>  	qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
> @@ -3545,6 +3573,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> +	/* Set PHY_MODE as combo by default */
> +	qmp->init_mode = QPHY_MODE_COMBO;
> +
>  	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>  	if (IS_ERR(qmp->usb_phy)) {
>  		ret = PTR_ERR(qmp->usb_phy);
> 
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
