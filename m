Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B303C7EE2F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJjPosxK3C3ZRT2W4BlqPqOO91ics6rKKtHTp7OU+9c=; b=KytEXmQEFvZVBN
	MX9wi44u25i5aK7iaTn7D1/rAjf5ll2c5S/s6CvXQA+TeQ+N0h1X/bLvj2+LXM2tCbYxnPE5xKIyr
	v0oDS53jWO76OWwXL5d8w6dqd7JaqJRFaSaLL2lQPRGeBSuRCaORHbS4LRlwn71gC81dG0pgxt8EN
	CSMow+IsdMQ4cBP5WrIjON2pZU4HaxTGS4MSm0TXVRWMqw39lrSU4og8JTqrx+oFj2b1g3a8/W84S
	Sygo4jhQ6whHezIOaGtwKiWZfPlL8vVrrkIeKYZZ7vpZe1Ovpjhc4XXuZx8/g/kZlI4Ly4fFQ7kak
	lpOuLOZ7Ee0MqE/WVpGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8mLU-004xSK-2D;
	Mon, 12 Jun 2023 18:32:52 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8mLS-004xRY-2F
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 18:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686594769;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qSuO83O2GJF69D20JvszqVCusWGni7xZeOtz58f06pw=;
	b=P1Gzm0BvCPN7KWcYUorr5D3fvJVkAGDa9p/j/PG+2h5kIVuKTNofQyGirvEUugLLMBzIMD
	dKh5l5KPdtRspWNPJcuP/Lw6dP5PLsH+bj8a72EN8z6l+yTayTnkbnh7L2whfUeMxLP5Fd
	BJOSzaB7QMsxJJpg7uuyEZEfS6GH2bY=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-675-1NxWifV4NmuZYiVmcIGn3g-1; Mon, 12 Jun 2023 14:32:47 -0400
X-MC-Unique: 1NxWifV4NmuZYiVmcIGn3g-1
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-6b2a7789f31so2297236a34.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 11:32:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686594767; x=1689186767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qSuO83O2GJF69D20JvszqVCusWGni7xZeOtz58f06pw=;
        b=Wve9C1xER5Bd1hj+RRRVaCxKLy71f+7+B6/RfhYV4Se6CxmPavPjvTEoPPykveMxba
         QvuBE5U+s50Fkrf5pGKND907/D7XfttsZFA2xtytfMwZryIoGrT0J6j73IJVqPFharIL
         Ba16b6PzBEOMCEMpPmCbdgLPaUpb1j1RDU9os1gqvdj5rBRpGyfd1OZ7iWu7JcZgqUpy
         FQNQgdADLLmGXPoilVz/kTUZyB5ByoNDNuyURTho46vVVVYJ3Ijp6fYjT6WUv30nIJG2
         B/GqXQEYfNUDP7VolgAk8LMLqVdeLdNX/X2QHXB5bSxLuOrS2l25hHAO3sTyBt2h1BGj
         HePA==
X-Gm-Message-State: AC+VfDyNvAKvK9U5a+pGOhpA1NLk/6J1i4M5jRA2eKxrIvSw8G2VIfv4
	DXMdBDkMhqrwo0s33aSdWTq9po7i7OaRQJHZW8csu/wkJOCp41zUf21S7qx/IVnrdCUvO7ScCcK
	XWwfkySBtl8heAnrZd2O76HuXyA==
X-Received: by 2002:a05:6830:92:b0:6a5:dd70:38cd with SMTP id a18-20020a056830009200b006a5dd7038cdmr6651275oto.2.1686594767177;
        Mon, 12 Jun 2023 11:32:47 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5HntANaGm+HkD+UPQVxKZBUJkVk1zEqMvLrahjA8N+vIH05i26ddN13SkrcVSLU5flZVuT2A==
X-Received: by 2002:a05:6830:92:b0:6a5:dd70:38cd with SMTP id a18-20020a056830009200b006a5dd7038cdmr6651260oto.2.1686594766931;
        Mon, 12 Jun 2023 11:32:46 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id w14-20020a056830060e00b006af9d8af435sm4138880oti.50.2023.06.12.11.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 11:32:46 -0700 (PDT)
Date: Mon, 12 Jun 2023 13:32:43 -0500
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
Subject: Re: [PATCH 06/26] net: stmmac: dwmac-qcom-ethqos: rename a label in
 probe()
Message-ID: <20230612183243.5rkphsaqofi42bgc@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-7-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-7-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_113250_847503_890E272D 
X-CRM114-Status: GOOD (  17.13  )
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

On Mon, Jun 12, 2023 at 11:23:35AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> The err_mem label's name is unclear. It actually should be reached on
> any error after stmmac_probe_config_dt() succeeds. Name it after the
> cleanup action that needs to be called before exiting.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 2da0738eed24..16e856861558 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -615,14 +615,14 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  	ethqos = devm_kzalloc(&pdev->dev, sizeof(*ethqos), GFP_KERNEL);
>  	if (!ethqos) {
>  		ret = -ENOMEM;
> -		goto err_mem;
> +		goto out_config_dt;
>  	}
>  
>  	ethqos->pdev = pdev;
>  	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
>  	if (IS_ERR(ethqos->rgmii_base)) {
>  		ret = PTR_ERR(ethqos->rgmii_base);
> -		goto err_mem;
> +		goto out_config_dt;
>  	}
>  
>  	data = of_device_get_match_data(&pdev->dev);
> @@ -634,16 +634,16 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  	ethqos->rgmii_clk = devm_clk_get(&pdev->dev, "rgmii");
>  	if (IS_ERR(ethqos->rgmii_clk)) {
>  		ret = PTR_ERR(ethqos->rgmii_clk);
> -		goto err_mem;
> +		goto out_config_dt;
>  	}
>  
>  	ret = ethqos_clks_config(ethqos, true);
>  	if (ret)
> -		goto err_mem;
> +		goto out_config_dt;
>  
>  	ret = devm_add_action_or_reset(&pdev->dev, ethqos_clks_disable, ethqos);
>  	if (ret)
> -		goto err_mem;
> +		goto out_config_dt;
>  
>  	ethqos->speed = SPEED_1000;
>  	ethqos_update_rgmii_clk(ethqos, SPEED_1000);
> @@ -662,11 +662,11 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  
>  	ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
>  	if (ret)
> -		goto err_mem;
> +		goto out_config_dt;
>  
>  	return ret;
>  
> -err_mem:
> +out_config_dt:
>  	stmmac_remove_config_dt(pdev, plat_dat);
>  
>  	return ret;
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
