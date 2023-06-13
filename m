Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1570CEB64D0
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 16:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCoQWCXRfvsCaz88uYdPSIFYYwlMx7HRC7sBbjh95dQ=; b=lDJAXZ+61HPqKk
	hpC3CkJgSBNnAiCJZm4SWSubPmKrH629D25TlkYQDMkq0/u9KsktvWPWPFfL2WPvdpDhkBGXh81xJ
	7PTwVbxIaknT2KljcjhX1Kco1/RYWTc8EFuUPWjiWVeUcy8JfS4oswFYSsUWZQNGwqTKpEMZqayOz
	BM6bGa5H8fmZEbV4dwPDzfkqTXHHZJqqCP+rhproqpUAH0Mi0RYP1sjBQRYXK8CFTwjuO0OgFvsYl
	BEDAiVTEbR2TddMkPxCyRUArqKY/NemeQ3WeXWnsZKD9Ttvc4oce5Mlg1nxp0tbwKQuDgxpOpnxca
	YO9PjFaylv6DU4yBo2Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q97N6-008eca-2N;
	Tue, 13 Jun 2023 16:59:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q97N1-008eaQ-2W
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 16:59:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686675590;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=j04GnjVnV6VhU15tbBAUt5ncRnXCPvNX2dvFYsA/gBk=;
	b=iHw6EAIePH85NMkgoWE0GEqFT7RjDlWvkKcgh0VkANARIlCsC/L06u542yBsECCVHHKrQ1
	d56rSxi3Pv8HLM27+BnwFvs1lT66NBQxlYp+Gnk78lcR0tp82vltrCeyAh54Lh2BQHbr+T
	85hD0/7E1JfvVe3B7dBqOUcyXw6vm/8=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-553-WjvrH7pOO4Cipd_r5pk_DA-1; Tue, 13 Jun 2023 12:59:48 -0400
X-MC-Unique: WjvrH7pOO4Cipd_r5pk_DA-1
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-56ff697b86cso6231857b3.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 09:59:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686675587; x=1689267587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j04GnjVnV6VhU15tbBAUt5ncRnXCPvNX2dvFYsA/gBk=;
        b=AskBmRhmG9zC6cr0LpDyy20/KCZZwu/AHIaz+j6h5bk1XumKDpRgLtqRFRMMsFUaCF
         T9uYTbMzzcqzJhzI6XzxPACmlgvk2UcVbRQIOfoJLkCX1YV6uqfkmkI43JaGzQykN5tZ
         9RPBxhcGrPoZsfjxwe8doPLUqvrH5427lCa7Tqbcy5U+kKFakRj8HE2pqGcUA+/5X7g8
         a7cKgaELiabJdVJ6Lz9cUOC+fYEMHN5pf7nZUSjsVXsaJdlOHC9xhr/nI/8k1chYKfO/
         LNFfR0wAcu0fQbGNhaG4ym8uVxhmRK0CglwGB97g7d5oWxB6gwS8+xYUqrJK4jusqlGd
         Btsw==
X-Gm-Message-State: AC+VfDyeFWPoetwjehI1eYYlnRV+ESVmgyXx0iH/JsC+WEkrZWmccNRZ
	/O52yKxcKTaWseUk5SVaHeUlV467LJeStNnObkEalR1EVtuyddq053bi/bA5zss6FqOa8WDAVXb
	IT/6dxqJ1gQPMRWHuXk4YSlpxug==
X-Received: by 2002:a81:738b:0:b0:565:e48d:32cf with SMTP id o133-20020a81738b000000b00565e48d32cfmr2533641ywc.7.1686675587353;
        Tue, 13 Jun 2023 09:59:47 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7O9u46bkmq9uCzDtwjiCxY77/JvONfFU/2txtnkFyT64oc8V6fa+eQ8cwyObh374VppqoV4w==
X-Received: by 2002:a81:738b:0:b0:565:e48d:32cf with SMTP id o133-20020a81738b000000b00565e48d32cfmr2533610ywc.7.1686675587072;
        Tue, 13 Jun 2023 09:59:47 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id s7-20020a0de907000000b005688f7596ccsm1699074ywe.78.2023.06.13.09.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 09:59:46 -0700 (PDT)
Date: Tue, 13 Jun 2023 11:59:43 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 16/26] net: stmmac: dwmac-qcom-ethqos: prepare the driver
 for more PHY modes
Message-ID: <20230613165943.zjr4b4p44jhl2dtx@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-17-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-17-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_095951_908300_2361D1C7 
X-CRM114-Status: GOOD (  24.62  )
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

On Mon, Jun 12, 2023 at 11:23:45AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> In preparation for supporting SGMII, let's make the code a bit more
> generic. Add a new callback for MAC configuration so that we can assign
> a different variant of it in the future.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 31 ++++++++++++++++---
>  1 file changed, 26 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 21f329d2f7eb..2f96f2c11278 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -92,12 +92,14 @@ struct ethqos_emac_driver_data {
>  struct qcom_ethqos {
>  	struct platform_device *pdev;
>  	void __iomem *rgmii_base;
> +	int (*configure_func)(struct qcom_ethqos *ethqos);
>  
>  	unsigned int rgmii_clk_rate;
>  	struct clk *rgmii_clk;
>  	struct clk *phyaux_clk;
>  	struct phy *serdes_phy;
>  	unsigned int speed;
> +	int phy_mode;
>  
>  	const struct ethqos_emac_por *por;
>  	unsigned int num_por;
> @@ -332,13 +334,11 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
>  {
>  	struct device *dev = &ethqos->pdev->dev;
>  	int phase_shift;
> -	int phy_mode;
>  	int loopback;
>  
>  	/* Determine if the PHY adds a 2 ns TX delay or the MAC handles it */
> -	phy_mode = device_get_phy_mode(dev);
> -	if (phy_mode == PHY_INTERFACE_MODE_RGMII_ID ||
> -	    phy_mode == PHY_INTERFACE_MODE_RGMII_TXID)
> +	if (ethqos->phy_mode == PHY_INTERFACE_MODE_RGMII_ID ||
> +	    ethqos->phy_mode == PHY_INTERFACE_MODE_RGMII_TXID)
>  		phase_shift = 0;
>  	else
>  		phase_shift = RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN;
> @@ -485,7 +485,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
>  	return 0;
>  }
>  
> -static int ethqos_configure(struct qcom_ethqos *ethqos)
> +static int ethqos_configure_rgmii(struct qcom_ethqos *ethqos)
>  {
>  	struct device *dev = &ethqos->pdev->dev;
>  	volatile unsigned int dll_lock;
> @@ -561,6 +561,11 @@ static int ethqos_configure(struct qcom_ethqos *ethqos)
>  	return 0;
>  }
>  
> +static int ethqos_configure(struct qcom_ethqos *ethqos)
> +{
> +	return ethqos->configure_func(ethqos);
> +}
> +
>  static void ethqos_fix_mac_speed(void *priv, unsigned int speed)
>  {
>  	struct qcom_ethqos *ethqos = priv;
> @@ -660,6 +665,22 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  		goto out_config_dt;
>  	}
>  
> +	ethqos->phy_mode = device_get_phy_mode(dev);
> +	switch (ethqos->phy_mode) {
> +	case PHY_INTERFACE_MODE_RGMII:
> +	case PHY_INTERFACE_MODE_RGMII_ID:
> +	case PHY_INTERFACE_MODE_RGMII_RXID:
> +	case PHY_INTERFACE_MODE_RGMII_TXID:
> +		ethqos->configure_func = ethqos_configure_rgmii;
> +		break;
> +	case -ENODEV:
> +		ret = -ENODEV;
> +		goto out_config_dt;
> +	default:
> +		ret = -EINVAL;
> +		goto out_config_dt;
> +	}
> +
>  	ethqos->pdev = pdev;
>  	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
>  	if (IS_ERR(ethqos->rgmii_base)) {
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
