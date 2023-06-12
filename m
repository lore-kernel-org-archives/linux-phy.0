Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0A0C7EE2F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 18:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrk3KhQ2VyYaJe5hHshjV9KOhX67U7W79D8GBHnwisQ=; b=M6aDkQWzUmVdT0
	0hg6ylGMV4ohqHKRtbfFlzZ4OpvgA3n8d/gj8K2FEhkcWY18o3b6jgT5yx27dah+8LKhvePDfnkHR
	5tRc3JR5+26Y7TJIr73jvYlcSjHNQwOqojgR19eGuIE1lZheepH0DzMdrIp6Bc9mis+J7FyZMJ4Vs
	8PCS57j/KmKflKIecwglBYSbx7J7sSAAKeFYz/nLLsHHfERxLCATWEg9LW5w+qwx3+rrJAz5QAaNA
	QDorZ28DeCY0f/0ZcqhQ0XXXuWiAQzTzCtqLZ88ndZjSpAImMwgBT5BTNTEfK1rBYrVKt4cMsF6am
	awGDnB3JYjY9IGjAm9eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8mRL-004yaP-07;
	Mon, 12 Jun 2023 18:38:55 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8mRI-004yZ5-17
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 18:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686595131;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PDNy4tlrStiRvaxnMXQiYuj7Ms4xtJijYK3hHSTiCgM=;
	b=H7qFbt2G/1zA73N8VaJp9BsN+Epzea+/mngAVCVxQtg0eLs7uU+UMfDKhxzzQEto5sEk+K
	rnpk7My/iNBFXuxbcEjgmhp8coSZhe7nPmEQULO3vkrWRtS8qXZWWGkLWGzltbpBYiI6IS
	t/SbjcM4qeUMi2jN5allx7QJWNysifw=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-435-KMlOrB1rNOasSBqF5G2Emg-1; Mon, 12 Jun 2023 14:38:50 -0400
X-MC-Unique: KMlOrB1rNOasSBqF5G2Emg-1
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-39cb2a0b57aso1968088b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 11:38:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686595129; x=1689187129;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PDNy4tlrStiRvaxnMXQiYuj7Ms4xtJijYK3hHSTiCgM=;
        b=PdCkbTlqK/kAXwWqjalXFZMOLs9GkXHs7ag+2o9XGe+V8XXquQWCWPtHjrR9U6NJsD
         GFexuOKMCeEwoXcer7cDNUtUkyoP+PXihI9f56TsWnZZKGYGdiTYxljCs3/Uj5DR6Fi7
         dODrGZzFOAFST8o+/MupgKvUJhSI0d5s8yeIBBRMUhbwVntj1n6+eEPV6ThEv2Qva+BL
         wbQ9e+2zaboA3jylKL6b6u9PGQQ6QhBmV2cVFIGfL14PNG4dALGogb9Vd6pDgNsx75AX
         dqRezCnqkHHdc0Q1R1BmulBNXB+RVMSKRwHGqxRkUT1+ErOSeFv0IRig7iLS3O46ZxGL
         08Ww==
X-Gm-Message-State: AC+VfDznfZwhFMoT88+a/unKVSSync5W6EuDYFgrqRwfiDdkM8t4Lov8
	BRBHMe0Mf5mLsL56Fvuao3MVi2sZxAv+PdFUkzGj7KYt1HPINMV9/TH3zGbV9qBRqNzEcizNFaJ
	f6y/HwRI1rwVKhE0KJuScrxHvIQ==
X-Received: by 2002:a05:6808:2090:b0:398:e4c:d5c2 with SMTP id s16-20020a056808209000b003980e4cd5c2mr6244356oiw.9.1686595129325;
        Mon, 12 Jun 2023 11:38:49 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ658SXpBYoZENXQUCSYrl2GfGIsHYqLLYyBLRDeoekAAyN1j6b2/N1aFPTIPKR17gwesdJaxg==
X-Received: by 2002:a05:6808:2090:b0:398:e4c:d5c2 with SMTP id s16-20020a056808209000b003980e4cd5c2mr6244337oiw.9.1686595129080;
        Mon, 12 Jun 2023 11:38:49 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id t7-20020a815f07000000b0054f9e7fed7asm2663490ywb.137.2023.06.12.11.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 11:38:48 -0700 (PDT)
Date: Mon, 12 Jun 2023 13:38:39 -0500
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
Subject: Re: [PATCH 08/26] net: stmmac: dwmac-qcom-ethqos: use a helper
 variable for &pdev->dev
Message-ID: <20230612183839.zcn5glnhptptmbt4@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-9-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-9-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_113852_457515_0BB1AAE6 
X-CRM114-Status: GOOD (  19.40  )
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

On Mon, Jun 12, 2023 at 11:23:37AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Shrink code and avoid line breaks by using a helper variable for
> &pdev->dev.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 48 ++++++++++---------
>  1 file changed, 26 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 28d2514a8795..e19d142630d3 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -123,25 +123,26 @@ static void rgmii_updatel(struct qcom_ethqos *ethqos,
>  static void rgmii_dump(void *priv)
>  {
>  	struct qcom_ethqos *ethqos = priv;
> +	struct device *dev = &ethqos->pdev->dev;
>  
> -	dev_dbg(&ethqos->pdev->dev, "Rgmii register dump\n");
> -	dev_dbg(&ethqos->pdev->dev, "RGMII_IO_MACRO_CONFIG: %x\n",
> +	dev_dbg(dev, "Rgmii register dump\n");
> +	dev_dbg(dev, "RGMII_IO_MACRO_CONFIG: %x\n",
>  		rgmii_readl(ethqos, RGMII_IO_MACRO_CONFIG));
> -	dev_dbg(&ethqos->pdev->dev, "SDCC_HC_REG_DLL_CONFIG: %x\n",
> +	dev_dbg(dev, "SDCC_HC_REG_DLL_CONFIG: %x\n",
>  		rgmii_readl(ethqos, SDCC_HC_REG_DLL_CONFIG));
> -	dev_dbg(&ethqos->pdev->dev, "SDCC_HC_REG_DDR_CONFIG: %x\n",
> +	dev_dbg(dev, "SDCC_HC_REG_DDR_CONFIG: %x\n",
>  		rgmii_readl(ethqos, SDCC_HC_REG_DDR_CONFIG));
> -	dev_dbg(&ethqos->pdev->dev, "SDCC_HC_REG_DLL_CONFIG2: %x\n",
> +	dev_dbg(dev, "SDCC_HC_REG_DLL_CONFIG2: %x\n",
>  		rgmii_readl(ethqos, SDCC_HC_REG_DLL_CONFIG2));
> -	dev_dbg(&ethqos->pdev->dev, "SDC4_STATUS: %x\n",
> +	dev_dbg(dev, "SDC4_STATUS: %x\n",
>  		rgmii_readl(ethqos, SDC4_STATUS));
> -	dev_dbg(&ethqos->pdev->dev, "SDCC_USR_CTL: %x\n",
> +	dev_dbg(dev, "SDCC_USR_CTL: %x\n",
>  		rgmii_readl(ethqos, SDCC_USR_CTL));
> -	dev_dbg(&ethqos->pdev->dev, "RGMII_IO_MACRO_CONFIG2: %x\n",
> +	dev_dbg(dev, "RGMII_IO_MACRO_CONFIG2: %x\n",
>  		rgmii_readl(ethqos, RGMII_IO_MACRO_CONFIG2));
> -	dev_dbg(&ethqos->pdev->dev, "RGMII_IO_MACRO_DEBUG1: %x\n",
> +	dev_dbg(dev, "RGMII_IO_MACRO_DEBUG1: %x\n",
>  		rgmii_readl(ethqos, RGMII_IO_MACRO_DEBUG1));
> -	dev_dbg(&ethqos->pdev->dev, "EMAC_SYSTEM_LOW_POWER_DEBUG: %x\n",
> +	dev_dbg(dev, "EMAC_SYSTEM_LOW_POWER_DEBUG: %x\n",
>  		rgmii_readl(ethqos, EMAC_SYSTEM_LOW_POWER_DEBUG));
>  }
>  
> @@ -242,6 +243,7 @@ static const struct ethqos_emac_driver_data emac_v3_0_0_data = {
>  
>  static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
>  {
> +	struct device *dev = &ethqos->pdev->dev;
>  	unsigned int val;
>  	int retry = 1000;
>  
> @@ -279,7 +281,7 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
>  		retry--;
>  	} while (retry > 0);
>  	if (!retry)
> -		dev_err(&ethqos->pdev->dev, "Clear CK_OUT_EN timedout\n");
> +		dev_err(dev, "Clear CK_OUT_EN timedout\n");
>  
>  	/* Set CK_OUT_EN */
>  	rgmii_updatel(ethqos, SDCC_DLL_CONFIG_CK_OUT_EN,
> @@ -296,7 +298,7 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
>  		retry--;
>  	} while (retry > 0);
>  	if (!retry)
> -		dev_err(&ethqos->pdev->dev, "Set CK_OUT_EN timedout\n");
> +		dev_err(dev, "Set CK_OUT_EN timedout\n");
>  
>  	/* Set DDR_CAL_EN */
>  	rgmii_updatel(ethqos, SDCC_DLL_CONFIG2_DDR_CAL_EN,
> @@ -322,12 +324,13 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
>  
>  static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
>  {
> +	struct device *dev = &ethqos->pdev->dev;
>  	int phase_shift;
>  	int phy_mode;
>  	int loopback;
>  
>  	/* Determine if the PHY adds a 2 ns TX delay or the MAC handles it */
> -	phy_mode = device_get_phy_mode(&ethqos->pdev->dev);
> +	phy_mode = device_get_phy_mode(dev);
>  	if (phy_mode == PHY_INTERFACE_MODE_RGMII_ID ||
>  	    phy_mode == PHY_INTERFACE_MODE_RGMII_TXID)
>  		phase_shift = 0;
> @@ -468,7 +471,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
>  			      loopback, RGMII_IO_MACRO_CONFIG);
>  		break;
>  	default:
> -		dev_err(&ethqos->pdev->dev,
> +		dev_err(dev,
>  			"Invalid speed %d\n", ethqos->speed);

nit: You could put this on the prior line now

With that in place, feel free to add:

    Reviewed-by: Andrew Halaney <ahalaney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
