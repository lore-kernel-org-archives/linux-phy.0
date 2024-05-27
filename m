Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7332DC25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7YquFkcXfzxXgz6OTjwdrSZ/vG2MpFOaNKl60NYt4rs=; b=z7LcHkMxZ51UKU
	Dcb69UDgt/6OsLx4IlFEVWCmzPusdV2gMtQYxWdTOfLQDv6mFORFcHWwdXrVD+ZZEGSVBryBN6sAZ
	aHfhkO9dGSTMfZpI0PwZC2ick68yrGYmNZ93kjwiYzBPOMfxs4itDWNWMuirtBdwAfxWRhB1oSvf/
	TkgDN+oJKWbb3MByZs9oV8F4Mr+z9jTqvC7Rwv592DHTcxQBqicVNZ2Zcmpr0m4U8+hdXvySEd+C/
	aV1Sz3BpVjN0CtKRFnoxtNXskTlkUBdgLuZs+H+GxDvUwXGBe/awuk4JnlSZQO7wOxmmyAW7r9TRR
	sgvBLtIm4lPsZaQdaqWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBW0A-0000000EISI-0hTQ;
	Mon, 27 May 2024 08:46:42 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBW07-0000000EIQR-2l7q
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:46:40 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2e95b03e0d6so25862411fa.1
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799591; x=1717404391; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TCW+HFtoeaierrg0K+2TVOUHq8VHzqfUi+kUPqpq30g=;
        b=Z69wHtpZlC+wEPOD+lFwDkeXh0hSNVL6jdwg15+go7IWJoyrtznhb15fDNRqndS57r
         jC38zw4Axr8jsy//Zdt2eO823nw7Qb1CmsmEYXsOY6kETX/qGsOW1XlNS8ihASYd6ude
         iaEHZ1UDGGNNjiQcXmxmfjaHNy475V7alC2TzTn797LQDtbccVKucIoLtKGfMjIDYMwb
         SoEhAQCHnLsN3vag4FkFvC69dziYHW7QJ/HCmKwnrKNCYQZ/tULDxD7cE/PJg2LE/P2F
         Mw+nhNyL39sORuKp9S4NVJdG+9ZX1vxxuDr82lwGQWDzZcVVhNsqG9uS5Gytj6U2gVng
         OMhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799591; x=1717404391;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TCW+HFtoeaierrg0K+2TVOUHq8VHzqfUi+kUPqpq30g=;
        b=QTc75bkj39vTghd7MQ86UGl5vojU3drIbdBv1/yIUQFgSIiOtjiT3lepplWbloh3Lh
         Fx/M7VlpjlPVgneHF/peHRM35IzhVbBn+2NdmV0K8dmjzDZYcaOYFW32ijAQ6VxHmRfc
         +tO0tjdIpE7Ro8zjypOEBbGae/CowE25ZyDVQ+SAon9iEIjAzmuy9BcxEYGFEDKChaKC
         ca88BHTgsOfc4HVp+kmAuJiDe1DDv28uM3IedzP/FbG7ix3b6kymPQtGXS88S81AL8WY
         mjR3LLRuvTpVBGiuLapAIWFo+lBTz+fZI/G1ptfx9gc9a62J4/ovjLKuTmQWOcItfueA
         ri3Q==
X-Forwarded-Encrypted: i=1; AJvYcCV7ScQNysZkLcD8xd06dSOVtdqIMtOwCpwp2JgBzmyeuezXZ8xrJAKob1bllyL12WWG2JGCfpP7CsogA/q8f/Uj5RfhtJdLl9egmxokmQ==
X-Gm-Message-State: AOJu0Yyps5CNMUeae6dYTLOp0edxioVTyj0fvde4TgY57JGmnuIyrpeF
	mBrPTIx0PmYchuZk01D5ymrGA0FBLp4d/u29kYfEV34VaCMDOAIDhpuYJ8ddYyk=
X-Google-Smtp-Source: AGHT+IGoIHMv7LzRXg/j0eiiJ3Hf7gEQa4vkwrOCUAOl8CxlUeLhgksZ+dNSoUDerxoQwluUxl8chQ==
X-Received: by 2002:a2e:2c19:0:b0:2e2:3761:2ef5 with SMTP id 38308e7fff4ca-2e951b82fdbmr37512241fa.14.1716799591109;
        Mon, 27 May 2024 01:46:31 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95be2126esm18474141fa.119.2024.05.27.01.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:46:30 -0700 (PDT)
Date: Mon, 27 May 2024 11:46:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
Message-ID: <v36mrliwd7rarqofbitv5mtb6kd3n3hmuwp6bgg67krnvzejd6@luityjlkb7nn>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-3-a03e68d7b8fc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-3-a03e68d7b8fc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014639_727338_57238A1C 
X-CRM114-Status: GOOD (  21.72  )
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

On Mon, May 27, 2024 at 10:42:35AM +0200, Neil Armstrong wrote:
> Introduce an enum for the QMP Combo PHY modes, use it in the
> QMP commmon phy init function and default to COMBO mode.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++++++----
>  1 file changed, 36 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 183cd9cd1884..788e4c05eaf2 100644
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
> @@ -1503,6 +1509,7 @@ struct qmp_combo {
>  
>  	struct mutex phy_mutex;
>  	int init_count;
> +	enum qphy_mode init_mode;
>  
>  	struct phy *usb_phy;
>  	enum phy_mode mode;
> @@ -2589,12 +2596,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
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
> +	case QPHY_MODE_COMBO:
> +		writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
> +
> +		/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
> +		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> +				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
> +				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
> +		break;
> +
> +	case QPHY_MODE_DP_ONLY:
> +		writel(DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
> +
> +		/* bring QMP DP PHY PCS block out of reset */
> +		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> +				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET);
> +		break;
> +
> +	case QPHY_MODE_USB_ONLY:
> +		writel(USB3_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
> +
> +		/* bring QMP USB PHY PCS block out of reset */
> +		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> +				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
> +		break;
> +	}
>  
>  	qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
>  	qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
> @@ -3603,6 +3631,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> +	/* Set PHY_MODE as combo by default */
> +	qmp->init_mode = QPHY_MODE_COMBO;
> +

I see that COMBO mode is backwards compatible with existing code. But
shouldn't the USB-only be a default mode?

>  	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>  	if (IS_ERR(qmp->usb_phy)) {
>  		ret = PTR_ERR(qmp->usb_phy);
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
