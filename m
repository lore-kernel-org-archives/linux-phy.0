Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC5FAC77B73
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNpIN43boItpZOZoR+Xe2xsXrJjzznPksXtiCw9jQmU=; b=JoKx6ETq2dvGHe
	cptasEKEs6c6xD9rr4wukZbFJQVNMw4d9bP+z+Ro9GsncVQtJ5ziQB2Xgo2zLwu9H5U0PuArurCZq
	EAZVtsN8f6MjtvOyv8hn9l9K6yEOZpEXupxqwZfD+Biu+GRrLmmd1Ayq0oRis1MYgvFNhrPSYVE9Z
	YjZsAvIKM9HSM3T8W38Pd3Dk6B67EaOSNZ+M+FZUVblrl0lzysH11QvpZUHa1gun0ZGcWWklZgFis
	MA4kMtWknl6ABQdMKmhKh7EVSOZJKzTyQ+iNcywGOasZVx1Lo6PpRK7c0CSF/HvLOGhSYmwfv4+5g
	RMnhsLic7UOuJhE+FMiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18u8-007Hms-1w;
	Mon, 22 May 2023 17:01:04 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18u5-007HlR-0g
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 17:01:02 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2af177f12a5so56222321fa.2
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 10:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774860; x=1687366860;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=37qgKs5gQFq2AJSflT4layunA4PdEI+aCKFOkctJJf0=;
        b=b695qJuDkuqT10SpY8k2cQMmXDmIU0RjTiRWJLG3RulCbvY6Bx4ymqsv4tPJmaH+oB
         ZpY+GKQBvb6TNYn/eFgFsXOL+rj1YwlTbX06JhcqGO403bvKlgNLCSZB7iSjVGA0yX4T
         tjUfwt3wF/NB1HTMpXWGM+sNQHfn53vfVvDmUPegWcN+ob7tORuy8T8SzV5E6UWbCPDK
         ZHWazhZd+8GWpSUTWnOrdx1YNEG/zIJAs6dlqFju7DdrjleYL5WDINelhH/iyG9p9Wf1
         wFvmBlRBnQBBn5A9DhIHwEOpEobjPdmGtBZhx6FyZSS+GdFpuW3IlpfOECSAUBtF9faV
         /Wdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774860; x=1687366860;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=37qgKs5gQFq2AJSflT4layunA4PdEI+aCKFOkctJJf0=;
        b=A5B4RFZaHIxct+pzIWP6lOAqSy/L9THT0cEBvDRoogBIxsUi4TkHIW/XBCHFRQ6/kp
         HHg+XQwBNx+9P5eAID4EBkDvntlRKz8aXgHK6/iv2AP4Zfy24b3jW7tSW4AgHkTGsISL
         xQ2oJe7Dj+cTrsnt6R4f4EbFvo4HZMCGKx+2f+GAiHyx60gvzQKSo9WVNFdV3NuHK6IR
         KFJ+j9u0TRoANTc927H0RCAUTqF9NIlNoiJ9HfOq1ub7ykt4Q0golFikkir+ASl53UeQ
         saxYVRSf3x5nyJoX7Y30sVbfe9ZVg647IrdX4dljmQ/jJcZivm4VGCsF6bPqjfQHzfv5
         dAzg==
X-Gm-Message-State: AC+VfDx3WsKdfaSjKbiGLMpkVtJBlXyw3EZukoXHamleF6Q9CAm0Gdlv
	pCRM27pU0GtyJbbrX6tXgCAJPA==
X-Google-Smtp-Source: ACHHUZ5sCATOdJ2uo5dtzDQR7nJqK6Iwp6fSdPqjS58XEgTMivTDnYgnMhKxceFX3k0gUhP2LyQaJw==
X-Received: by 2002:a2e:3c0d:0:b0:2ac:826e:c5a with SMTP id j13-20020a2e3c0d000000b002ac826e0c5amr4621285lja.1.1684774859760;
        Mon, 22 May 2023 10:00:59 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id j2-20020a19f502000000b004eff530efe7sm1046114lfb.93.2023.05.22.10.00.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:00:59 -0700 (PDT)
Message-ID: <e7403637-dfca-667a-3603-7ad9c393fa94@linaro.org>
Date: Mon, 22 May 2023 19:00:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 07/11] arm64: dts: qcom: sm6350: switch UFS QMP PHY to
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
 <20230521203834.22566-8-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-8-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100101_247212_1ACC6C2A 
X-CRM114-Status: GOOD (  12.85  )
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
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> index 18c4616848ce..a816bb212174 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -943,7 +943,7 @@ ufs_mem_hc: ufs@1d84000 {
>  			      <0 0x01d90000 0 0x8000>;
>  			reg-names = "std", "ice";
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			#reset-cells = <1>;
> @@ -988,10 +988,7 @@ ufs_mem_hc: ufs@1d84000 {
>  
>  		ufs_mem_phy: phy@1d87000 {
>  			compatible = "qcom,sm6350-qmp-ufs-phy";
> -			reg = <0 0x01d87000 0 0x18c>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x01d87000 0 0x1000>;
>  
>  			clock-names = "ref",
>  				      "ref_aux";
> @@ -1001,16 +998,9 @@ ufs_mem_phy: phy@1d87000 {
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
>  
> -			status = "disabled";
> +			#phy-cells = <0>;
>  
> -			ufs_mem_phy_lanes: phy@1d87400 {
> -				reg = <0 0x01d87400 0 0x128>,
> -				      <0 0x01d87600 0 0x1fc>,
> -				      <0 0x01d87c00 0 0x1dc>,
> -				      <0 0x01d87800 0 0x128>,
> -				      <0 0x01d87a00 0 0x1fc>;
> -				#phy-cells = <0>;
> -			};
> +			status = "disabled";
>  		};
>  
>  		ipa: ipa@1e40000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
