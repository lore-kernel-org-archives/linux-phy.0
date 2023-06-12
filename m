Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09CE8C7EE2F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 18:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOn1MHpHKGdXhtHmWbXeZ5yeMwzOSyxCWgPeCY8UxLI=; b=juN+wB3tW3wyVd
	VeDndHNy4FMCW6pd5aviYBrEAAbXq7mdKeE6uwBk9NDht66FPxmxzRnYD/U9NIJ4SYJ4sQxPed6ID
	nUjHFHxzQmLuuz14Ej+vrcNJNQGYogEVWtccCGA8ukAKF8x5Vi2fiYet5Ardx1NtcXpvrJhZ/D/u/
	ARJWJ95g+/OqqvSr58UiWMj3IqbB/hTxjkls9OmgozEZWc+GyFatwTRSA1MuNOCFXvkD6GfqCrX0i
	mqXVAZYSHAxtxCKzx9/wCpnyYiLWATlmi8XVNOLgSb+RTiE9720StWWXYg4qjOh1T7TmlBflwY1HQ
	i+LOmdl3Lt7/BOSBz5Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8mC1-004vJ4-26;
	Mon, 12 Jun 2023 18:23:05 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8mBz-004vHd-1P
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 18:23:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686594182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WuZqmtvd4WjoknFOrkLRYxUsHp5/t5pNlhuMb2dd9d8=;
	b=Ptgnm/zcPxh2qyvS8qltOjVRhNbDAAvI7EAtTH2NJb1Ha/K2xYBYiyD/YrumENKo1HBem3
	gj4fMo5afQ4d4ESDS6UJutNcjBWPi3onKqQoSd+olWlMqzlkCIZNbO2NCSXCJMp5IRYPlx
	tr/Kzf+m3cz+BSKhYKzD2MtmbK/2tr8=
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com
 [209.85.160.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-108-xQn9GqzrOIi4bAFsOTmm3w-1; Mon, 12 Jun 2023 14:23:01 -0400
X-MC-Unique: xQn9GqzrOIi4bAFsOTmm3w-1
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-1a6933a1bafso1108871fac.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 11:23:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686594180; x=1689186180;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WuZqmtvd4WjoknFOrkLRYxUsHp5/t5pNlhuMb2dd9d8=;
        b=T/dClrwdtSTc50X5R+cwHITkk/kAQH0PvT26CB2dXaaDGP4BGncOEg8IXrUpIpOIx2
         UNPS0Q+HxXBkxn5ZaWp7EnWBCti1c9FzEIRTJG1pwevMOpfN5rbVyND9XQMf7zTMfr/N
         t5eS6U/2KF2EyTFKJTKwlXmIFRXE/Qr/svwj/aQqDloWxf4lxJTKIjxeGzPpN2quz7af
         a4O+zAejvsDcvHRTnDYXWITZlMnvzT5LDSPukwuHEEqVSzhAZbxk0xB2bi18OLdujRci
         t+soXIhW5xR8ID8lpoiTTs2Ztvxjwfo9zs6pnZGWoAbpvNzlBI0/W/z/aIIdtkVQne4i
         fDhQ==
X-Gm-Message-State: AC+VfDyzz6LKsZC2Y/hbUHE9cG9uLb8LmacMmeHG+d7i4AM3zcMHx3zc
	hMmLP/cq0k4sRrpcDrylFfIGmULtULL4CEuhV180XjqSQwr4MAc5uWum2eUj6DmbRK66eVjqa+g
	fDtq6eR0ogpDuJ8I3FRMLhNGASj1cic9XAA==
X-Received: by 2002:a05:6870:3403:b0:1a6:a28b:6e4 with SMTP id g3-20020a056870340300b001a6a28b06e4mr1424758oah.37.1686594180230;
        Mon, 12 Jun 2023 11:23:00 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4ojOAZsqcF6bnSAgTcknWHmKu5ibIbDyN5vE0vwVE23kVcIn47oSmy77InfhxOlx0UQ4BxKw==
X-Received: by 2002:a05:6870:3403:b0:1a6:a28b:6e4 with SMTP id g3-20020a056870340300b001a6a28b06e4mr1424739oah.37.1686594179927;
        Mon, 12 Jun 2023 11:22:59 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id r34-20020a05687108a200b001a68feb9440sm1579964oaq.9.2023.06.12.11.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 11:22:59 -0700 (PDT)
Date: Mon, 12 Jun 2023 13:22:56 -0500
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
Subject: Re: [PATCH 05/26] net: stmmac: dwmac-qcom-ethqos: shrink clock code
 with devres
Message-ID: <20230612182256.7cc3goqwid32fdn6@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-6-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-6-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_112303_546928_2964476B 
X-CRM114-Status: GOOD (  22.93  )
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

On Mon, Jun 12, 2023 at 11:23:34AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> We can use a devm action to completely drop the remove callback and use
> stmmac_pltfr_remove() directly for remove. We can also drop one of the
> goto labels.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

I think using the remove callback seems more direct to a reader, but
that's pretty opinionated. The change itself looks good so:

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 24 +++++++++----------
>  1 file changed, 11 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index c801838fae2a..2da0738eed24 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -586,6 +586,11 @@ static int ethqos_clks_config(void *priv, bool enabled)
>  	return ret;
>  }
>  
> +static void ethqos_clks_disable(void *data)
> +{
> +	ethqos_clks_config(data, false);
> +}
> +
>  static int qcom_ethqos_probe(struct platform_device *pdev)
>  {
>  	struct device_node *np = pdev->dev.of_node;
> @@ -636,6 +641,10 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_mem;
>  
> +	ret = devm_add_action_or_reset(&pdev->dev, ethqos_clks_disable, ethqos);
> +	if (ret)
> +		goto err_mem;
> +
>  	ethqos->speed = SPEED_1000;
>  	ethqos_update_rgmii_clk(ethqos, SPEED_1000);
>  	ethqos_set_func_clk_en(ethqos);
> @@ -653,27 +662,16 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  
>  	ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
>  	if (ret)
> -		goto err_clk;
> +		goto err_mem;
>  
>  	return ret;
>  
> -err_clk:
> -	ethqos_clks_config(ethqos, false);
> -
>  err_mem:
>  	stmmac_remove_config_dt(pdev, plat_dat);
>  
>  	return ret;
>  }
>  
> -static void qcom_ethqos_remove(struct platform_device *pdev)
> -{
> -	struct qcom_ethqos *ethqos = get_stmmac_bsp_priv(&pdev->dev);
> -
> -	stmmac_pltfr_remove(pdev);
> -	ethqos_clks_config(ethqos, false);
> -}
> -
>  static const struct of_device_id qcom_ethqos_match[] = {
>  	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
>  	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_v3_0_0_data},
> @@ -684,7 +682,7 @@ MODULE_DEVICE_TABLE(of, qcom_ethqos_match);
>  
>  static struct platform_driver qcom_ethqos_driver = {
>  	.probe  = qcom_ethqos_probe,
> -	.remove_new = qcom_ethqos_remove,
> +	.remove_new = stmmac_pltfr_remove,
>  	.driver = {
>  		.name           = "qcom-ethqos",
>  		.pm		= &stmmac_pltfr_pm_ops,
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
