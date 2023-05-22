Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54F21C7EE26
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8tFTC4gtbn8pUGfF/B/WzygEpgopzECmAQotYbHUBY=; b=qUAzqWWYfmbptn
	35vsKFR0ljhqu0oiXjWRYpmrM9X3cFdUoHJ5yM2C5Yh02CGRaeG5EIrJwV2lpS+rthycRdja6VGAw
	Jt1vgbTJmqUHBzyh+a96vOIeP5C/pD9+NVBK5B1GqWAkP/maulKHQOiR+4aPg2xXVySqRF07fiBpc
	2zP1fd6x3LRbRxd7kf7zX5RhfmJSTlqI8g0eNI0w/xnazRFRzC6vwcMHrfjsSGfxG9KEO10Qk0U+A
	j1Bg7RAQ3eNJaozv7mjI7E8NkS2Xj1ioIdDtk+7NAaivKE5RIlzKyH52USDZgRY4zwX8l+2wiPGfj
	8x6QNGSAQTfkR12ei/hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18tQ-007Hcm-2x;
	Mon, 22 May 2023 17:00:20 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18tN-007HbM-1r
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 17:00:18 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2af2602848aso42167701fa.2
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 10:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774814; x=1687366814;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HkWcCUxcGrEA3uBxRc2BHzxtLgYNVEfArtn5oBlXN0g=;
        b=YQ4E2ftUZW8n5lJdtWKosAUp3xTf6mUmTvNJyiWwCJMoATucjkrGmN7YKsqxSvrVue
         ZpHXKY2lCXq/nmKMk/1qnJlbCKIuKqAHgFjf4vHVb8INDt/ao5ziSz7KZryxLys48as2
         hUkDy95+uwHpxnSu4HEuHA8z1QkFBfKIHbHxMsZTu05EHVc+xIYTeHVJLEKQ9cdb9Z32
         S5K+zUdDANMrjQxvHdtKDl1Zp2N5AIckYdjuwZSLkbtQzx/jyGu9+suC04HWrxWmbq5L
         7xWA04zTTlosievpMOhbAWaN2E7pIxp8G1shhXVAxdgDW9b2PN+67GVWfH0eRkZ74JQt
         iXXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774814; x=1687366814;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HkWcCUxcGrEA3uBxRc2BHzxtLgYNVEfArtn5oBlXN0g=;
        b=gC7pLy4xrSvWRoQQb5aLeXT8IrCsajSu4UYvZg0fRQcNBqudQMSUzFuoA4od1Hhgps
         dlEkJW7V6DLDrs8ZCQS9/Cu2d0shggHSp/lXMrTfh1QlRqsyJWlbQUiOVFdTPCdPHSQE
         VB/mLKhjazaQVb13rXaqQgkwJVNnDmr3X5SrCR69ZY6vvg7q5/amO50nXo+YgVmoaEJK
         wJeusxHeNknDihB0J2bti2X/p1TpcW/9DwfJekHRDVDl0eWxxBk+uxPPssylgarqILfT
         DUnBoV6ejetn6y/Yy9lZSj9vrsAkTk+oWqEtGFdyKq3j5isqT6r6gWuDAsuDlA0FAv8z
         pXdg==
X-Gm-Message-State: AC+VfDySUVLsck8kJ3sDBUps74ty3wRZ2cIs16YXg79WYMbc3YNDRhQ1
	U90msI6w+zJYYe3a9obUabJoAQ==
X-Google-Smtp-Source: ACHHUZ4qb59tJVbyi9jl1nrj67y8E/oqqmW8h0vygntzj4aKcdIM1RZBxPie9H98W7jT7H4Nc3t35w==
X-Received: by 2002:a2e:9050:0:b0:2af:187b:3c88 with SMTP id n16-20020a2e9050000000b002af187b3c88mr4074672ljg.43.1684774813773;
        Mon, 22 May 2023 10:00:13 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id x15-20020ac2488f000000b004edd32d0bdesm1042830lfc.288.2023.05.22.10.00.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:00:13 -0700 (PDT)
Message-ID: <c267aee2-fdbf-5f51-c86a-7016d82d3fe9@linaro.org>
Date: Mon, 22 May 2023 19:00:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 05/11] arm64: dts: qcom: sdm845: switch UFS QMP PHY to
 new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
 <20230521203834.22566-6-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100017_619976_8AE0ECA6 
X-CRM114-Status: GOOD (  13.37  )
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



On 21.05.2023 22:38, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 17 ++++-------------
>  1 file changed, 4 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 6aa2f8f3affc..559a50c44da1 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -2566,7 +2566,7 @@ ufs_mem_hc: ufshc@1d84000 {
>  			      <0 0x01d90000 0 0x8000>;
>  			reg-names = "std", "ice";
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			power-domains = <&gcc UFS_PHY_GDSC>;
> @@ -2612,10 +2612,8 @@ ufs_mem_hc: ufshc@1d84000 {
>  
>  		ufs_mem_phy: phy@1d87000 {
>  			compatible = "qcom,sdm845-qmp-ufs-phy";
> -			reg = <0 0x01d87000 0 0x18c>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x01d87000 0 0x1000>;
> +
>  			clock-names = "ref",
>  				      "ref_aux";
>  			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
> @@ -2625,14 +2623,7 @@ ufs_mem_phy: phy@1d87000 {
>  			reset-names = "ufsphy";
>  			status = "disabled";
>  
> -			ufs_mem_phy_lanes: phy@1d87400 {
> -				reg = <0 0x01d87400 0 0x108>,
> -				      <0 0x01d87600 0 0x1e0>,
> -				      <0 0x01d87c00 0 0x1dc>,
> -				      <0 0x01d87800 0 0x108>,
> -				      <0 0x01d87a00 0 0x1e0>;
> -				#phy-cells = <0>;
> -			};
> +			#phy-cells = <0>;
status last?

Konrad
>  		};
>  
>  		cryptobam: dma-controller@1dc4000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
