Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3638C7EE2D
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZnXtM3HDLXMyA3PbgNTkaB6oLnLe3oerE7FDwWY7Fo=; b=Q8rzERcrJTWHnM
	O06IuDsfmeq/OKHQtIk0jxd6cXy+9HRRUnQUNwnNsj5nsyex5N40ZUnIOObszS1lvSaN1j5twRhNX
	6rb64R9voMwZ2XdKJPMkN4QzzV4jMpdDxpf2/ezo6G+8S1OEAPKTJXVSXEvnkHrCfnat83s7VFXkP
	iro19R/siKjsNuctg+kyiIWpMjCnxHEBeYxDHLHcpXr8cPorIpZb3zWk/HG5lNCGo5lgNU5qiTW95
	XuUxjE79k7l//bQQsx37JNP+ZC2D+GofPuiS2yVwXn53pZfrDdDdhDuoOmJo2pdxkdUI4FLwh0bgc
	NWN8vGf8uoak+T5Me50A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18uX-007HqW-1g;
	Mon, 22 May 2023 17:01:29 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18uU-007Hpe-18
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 17:01:27 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2af30a12e84so26320261fa.0
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 10:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774882; x=1687366882;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3YdjmoGpKbkEmB2SC+vy1nNuTSfTE+qI8e9z7KNqO8g=;
        b=Lx8gKm0g26ZrJXx6eUyXp8B56GwdlZYNSPyzem3KlVnzd2N5Th3p19jZziE85OpwC3
         t8uk2gTRogMH8HKetsIktktsBm62SZfnTCr9XcSQFecoFkg0nW6mmFpasuFfoMb4RDQt
         DOosivTUEujWFDdJDhRwD5dN0B5S2bVvZlbyOeHNiRh3jrvg3WL888qojCjsRsoHv/IJ
         5ApG2K+FGQiYhLK0oOFDnDTFadcCz/eMyb+shXg3pMiQ/OrwN2UhZhRzju9bVXfKWvzM
         6sxtb54x4sO+TZEVOGN4hB0kQSVcBwp4wGoFldtMk6Ar+ThCufQK7Fyjwj2fBd8t2QQ9
         UI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774882; x=1687366882;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3YdjmoGpKbkEmB2SC+vy1nNuTSfTE+qI8e9z7KNqO8g=;
        b=bVJz4oAooKTy/YnIKhlV7dNTcrpyB1cAN0Nko0aQPONRhZZB/qSV7lGCyP09X11iKM
         2RSwRs9M1Hv7gDECDwThQbWMNz/X15s1dtE54elUjS1LLS+JBPX0UdbCXtv+lbWhYnro
         wMVFgevYVO9TRElZBwmB5tKuGi1lQTlmNPlMA5u/gKTOCyK9+tPwj3a70htro0obB/M2
         Yz7QvcHKm2Z63Wi0TP2sB34VQsi4IkngEBKe+YxN69aUfAeG0oLZtMEvutO1NCo4obu7
         kr4iaWvmpBgXrdCEMvZR7D+L/kIqbdESxAuFHfeoce+PbbYEAmxPtZUIMxb70GjQfnJP
         Qvtg==
X-Gm-Message-State: AC+VfDzfN83pYUk9bFCOdvS1JqdUfc2wTU1ZOyP7sHjROh6mwm/e4mcc
	hxYbdc4EE4jjbczCoAET99sy6Q==
X-Google-Smtp-Source: ACHHUZ4defUAbUbbazeZos4sMQGlt/Q2NOyt4urcQF5YoKKvlpSOg12v9KV3dRX4pZ6JWCrDpy3NDg==
X-Received: by 2002:a2e:2e0f:0:b0:2ac:f597:f823 with SMTP id u15-20020a2e2e0f000000b002acf597f823mr4062810lju.26.1684774882514;
        Mon, 22 May 2023 10:01:22 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id y25-20020a2e9d59000000b002a8c409f1f5sm1201645ljj.110.2023.05.22.10.01.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:01:22 -0700 (PDT)
Message-ID: <1e5f5a0f-9b4f-73e9-44ef-86ae9a712afc@linaro.org>
Date: Mon, 22 May 2023 19:01:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 08/11] arm64: dts: qcom: sm8150: switch UFS QMP PHY to
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
 <20230521203834.22566-9-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-9-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100126_389445_44CC4D55 
X-CRM114-Status: GOOD (  13.22  )
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 20 ++++++--------------
>  1 file changed, 6 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index e2e210e10475..98fd356e87e4 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -2019,7 +2019,7 @@ ufs_mem_hc: ufshc@1d84000 {
>  			      <0 0x01d90000 0 0x8000>;
>  			reg-names = "std", "ice";
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			#reset-cells = <1>;
> @@ -2064,10 +2064,8 @@ ufs_mem_hc: ufshc@1d84000 {
>  
>  		ufs_mem_phy: phy@1d87000 {
>  			compatible = "qcom,sm8150-qmp-ufs-phy";
> -			reg = <0 0x01d87000 0 0x1c0>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x01d87000 0 0x1000>;
> +
>  			clock-names = "ref",
>  				      "ref_aux";
>  			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
> @@ -2077,16 +2075,10 @@ ufs_mem_phy: phy@1d87000 {
>  
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
> -			status = "disabled";
>  
> -			ufs_mem_phy_lanes: phy@1d87400 {
> -				reg = <0 0x01d87400 0 0x16c>,
> -				      <0 0x01d87600 0 0x200>,
> -				      <0 0x01d87c00 0 0x200>,
> -				      <0 0x01d87800 0 0x16c>,
> -				      <0 0x01d87a00 0 0x200>;
> -				#phy-cells = <0>;
> -			};
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
>  		};
>  
>  		tcsr_mutex: hwlock@1f40000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
