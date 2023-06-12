Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1E43C88CB7
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 20:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poir5ZR3920H5DcqjJZFlJLO5RucpK/nRm4KlJarEOM=; b=ERpBMafy3Egdrs
	Esbv4zvM37kS/0iz9qz63p7JjZhvadjzNZjsdllN+OM0iRzaa3q8aTv+Y+rBEpEMjL04Gaf4jOqIo
	7CUGxPRwFzV5Ek8TjaatVeC2RZGP72F0nxRvsGihjefl6vQi038+n4tvjkGeccGj9hYTVQjauhOVK
	rLovU5Cwkb70N/FhiFdzwBzrwMCVxz4/s4eKxhyLtiNLKngH2c3DP/Vn6u8IiuTVuHc+YqLUijjBS
	KdNAoW/7p4TJE0zvB3SKvrVz/lNiSmlnDTy8stNpHWNLSYjFvW/wBpYqOc4mgmAVtANm1WpSrjamM
	vQuEQ/ZTXPRdlA2g4Egg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8oLM-005J8v-10;
	Mon, 12 Jun 2023 20:40:52 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8oLI-005J4m-1s
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 20:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686602447;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+GICplP/MT1isAH+ok2l+9fKNc3rvvMZkj74HkVOtyg=;
	b=HZb4b7DF1KJD+PD54kOwh8oUXEN1DjN5oyTSoWWcoM6dThxgpjpqgck3J0C9KGjIjAVmWZ
	mWYjyoVs4f74U5YyY4goTjMRDrA7UGAwGy9fIuZ0xQsM1Lalgp4JHNLWo7AQWNLba/niJz
	5Pz08+6aFVkjq1SjCGYDIcltIG/dGLA=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-380-myWrI5MbPmqdNy__4RNr3Q-1; Mon, 12 Jun 2023 16:40:46 -0400
X-MC-Unique: myWrI5MbPmqdNy__4RNr3Q-1
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-568a85f180dso68569907b3.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 13:40:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686602445; x=1689194445;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+GICplP/MT1isAH+ok2l+9fKNc3rvvMZkj74HkVOtyg=;
        b=WtWkyA8IVUNq7DSsK898wtLU1G5WQ5pXJRdoyMarN9vTUsiL8XFJZ5ksx6onJSGwc3
         80M2w2OfwoiAmKs838AyNufBsbHBAYzT096sUmriJadA7oyVY0cdj9vbfjhsejz0HUUo
         kHmFk3S5wWkUE0vRHQKxQ4T1VarHllEEoOrZN6DKPwKvVYiI1OvaesZu8lrp7mDKj21F
         0jrgnoSzI0K7ndG/cLM97uj3GGmfZJ3BZQiNse7fijW7w/RiAqzmYUWLNYiKX8RzlT+p
         Br91pbOL25KYGYnX7lCP8DdoGk+weH5tH2eyz8DpQlmA2yW3/8rQ3qLspGPd7Gw+zVl5
         8dOw==
X-Gm-Message-State: AC+VfDwlr/cyKnpeofGmXtPLgjSiz6QDrjsId+siq4walmIuklbk7JIF
	bLp9asg6fKyNn5O/xqB1C+p7MmyFV3kZ3ckPwanvhUSG8Nn+PD38fzyNQIgtKxmLDc65AYN/7FA
	z74wqwmOFd3z/J8tTdOrLI7Y45g==
X-Received: by 2002:a0d:d3c5:0:b0:569:770d:c9be with SMTP id v188-20020a0dd3c5000000b00569770dc9bemr12009527ywd.41.1686602445484;
        Mon, 12 Jun 2023 13:40:45 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5YAuKjyJv/dyosgPSnG9gP4AwJix4ti1YXmUnmzQLCn8a2Fe9vENV68IYdOSwyVmtTplKXgA==
X-Received: by 2002:a0d:d3c5:0:b0:569:770d:c9be with SMTP id v188-20020a0dd3c5000000b00569770dc9bemr12009500ywd.41.1686602445225;
        Mon, 12 Jun 2023 13:40:45 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id k190-20020a0dc8c7000000b0056d51c39c1fsm208496ywd.23.2023.06.12.13.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 13:40:44 -0700 (PDT)
Date: Mon, 12 Jun 2023 15:40:42 -0500
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
Subject: Re: [PATCH 13/26] net: stmmac: dwmac-qcom-ethqos: make the rgmii
 clock optional
Message-ID: <20230612204042.litbbv23zdb3u5k7@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-14-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-14-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_134048_710909_D0DF09C2 
X-CRM114-Status: GOOD (  19.39  )
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

On Mon, Jun 12, 2023 at 11:23:42AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> On sa8775p there's no RGMII clock so make it optional in the driver.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 3438b6229351..252dca400071 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -663,7 +663,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
>  	ethqos->has_emac3 = data->has_emac3;
>  
> -	ethqos->rgmii_clk = devm_clk_get(dev, "rgmii");
> +	ethqos->rgmii_clk = devm_clk_get_optional(dev, "rgmii");

This makes it optional for older platforms too, but as far as I know on
those platforms it is mandatory.

This can be enforced in dt-binding checks, but should we also enforce
that in the driver still? Honestly I feel like yes, but there's probably
some precedent maintainers follow on this front that I don't know of.


>  	if (IS_ERR(ethqos->rgmii_clk)) {
>  		ret = PTR_ERR(ethqos->rgmii_clk);
>  		goto out_config_dt;
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
