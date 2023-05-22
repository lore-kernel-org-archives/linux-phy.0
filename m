Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 126A6C77B73
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WaJfG9QgevndbOY5ixqBJcCXACRxB0lXNcTQ1ZDOthw=; b=UX1SGfhcVf265n
	+vUmZWSrjwak6fw/cC/mJTUBQTjoB6A0KCDJhUanxXmacj+q7sj2LgglYPUyQ1I5feedAjNavt/Vr
	pmAqY0Nf2BnY+lbYgovosUekXM2XIlXKN3iEGmzEaNOZNoqL5hy3wNkoCEqaEH0iKqaWMn9Ec92js
	SwLg5DHnz1SAXFU/koDaHDTSMWSXr78SVz1bvvi2a65e3jDXdyC1bKC44Y3wJmhkviUmaI1bgDoI3
	/Uc06cg5AKryqBe8ZjQ8JFPN8mahsFV5W9pN3Dbf+yy8IWA4Apda2TCNswtuep+tesyihFNaxOX6j
	NUWRAD9nd+Sx4rIFTtBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18uw-007HvK-2P;
	Mon, 22 May 2023 17:01:54 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18ut-007Hu7-26
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 17:01:52 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2af2958db45so37904571fa.1
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 10:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774909; x=1687366909;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lp2zqJrWGrwDzKRcSAr68eSrJD+PHpiAXTHJYQNw4CU=;
        b=BBYN3OdEolRiW4xC3AJUFObXodKjUoig2oSCbokBJd/KfXKR2w3bJdLPsYUh1BJJy3
         0t4PjPE9nUbcJTXijUGSVKu6vOtyvg7LqAcMUsf50ncJG7glPZgN/dHv7QOyLW1PaLg5
         yDVn444WRdpkyHnPWA6OTO6QgSmWJ/CsAT/G+b+q9xlbK/Z4EoOatBTbXkeGiPCL6n2k
         DbI92Iw5U3+Gzo0thqGjSdMfsiYk5Y7ry1SpVQkW5UpD6+EUQYChq/4scX8lXDVuIihv
         pjzhTWo4S+awsZeN0IS1Gk+fqG8XIgMAW7iG/Yows64tmp2Oo/kcYOZaBhYEJpmvZAMI
         9Uxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774909; x=1687366909;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lp2zqJrWGrwDzKRcSAr68eSrJD+PHpiAXTHJYQNw4CU=;
        b=SlYxl0p+BQ00zxpEU+qL7Lx3ViNbtdYmtKmuv+vT4MH+/fLtdw1ulUK55BzwLNgSUh
         HFYA1IvKcOiKHOpMVjKTysE1Aarok8JXrqyoCw6H85GwmnYCx7wKIk+KhMb/lxxzHsMD
         tToFkJyKVvLeb6jDcL+8fQ0ckWBMLNiGkRJeCj13d78cHu6HdFNnARA+Bhx1KmpImHYv
         2mXwPT0/msNfXWVwb0Nl4F8beQz9mmHGnJBwMsIAs9Zo7k/eYKh3fd9J+Q0Zi9i3o0Cg
         UQhqMeEsM5oC8X1sGLUvK6vK4LbL9naDYH274S6XObR5/o/J3a3EhWHu4ZJE9uFQL99S
         IIeA==
X-Gm-Message-State: AC+VfDx78S2lycd/YdHcqsx7o319UJdwCJj5lZOv0G8UE5AS71GIa+dA
	V/DBT/cd1yjmoMj+6f4fhBC9iw==
X-Google-Smtp-Source: ACHHUZ78c82MrLYPLVleFSOQ7arvmErWiOIBUKBWCMJSVNWwTmk+lXwDuWhZ10mSxHg5EyglS7O3hg==
X-Received: by 2002:ac2:43cd:0:b0:4f2:6f55:2d6c with SMTP id u13-20020ac243cd000000b004f26f552d6cmr3576971lfl.5.1684774909262;
        Mon, 22 May 2023 10:01:49 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id d30-20020ac25ede000000b004f13711caedsm1044174lfq.103.2023.05.22.10.01.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:01:48 -0700 (PDT)
Message-ID: <9fca1a1d-9a2e-c048-4f01-d13e4c73f692@linaro.org>
Date: Mon, 22 May 2023 19:01:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 10/11] arm64: dts: qcom: sm8350: switch UFS QMP PHY to
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
 <20230521203834.22566-11-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-11-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100151_688842_510161F3 
X-CRM114-Status: GOOD (  13.27  )
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
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 28 ++++++++++------------------
>  1 file changed, 10 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index ebcb481571c2..6173521ff544 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -656,9 +656,9 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <&ufs_mem_phy_lanes 0>,
> -				 <&ufs_mem_phy_lanes 1>,
> -				 <&ufs_mem_phy_lanes 2>,
> +				 <&ufs_mem_phy 0>,
> +				 <&ufs_mem_phy 1>,
> +				 <&ufs_mem_phy 2>,
>  				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>  				 <0>;
>  		};
> @@ -1658,7 +1658,7 @@ ufs_mem_hc: ufshc@1d84000 {
>  				     "jedec,ufs-2.0";
>  			reg = <0 0x01d84000 0 0x3000>;
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			#reset-cells = <1>;
> @@ -1702,10 +1702,8 @@ ufs_mem_hc: ufshc@1d84000 {
>  
>  		ufs_mem_phy: phy@1d87000 {
>  			compatible = "qcom,sm8350-qmp-ufs-phy";
> -			reg = <0 0x01d87000 0 0x1c4>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x01d87000 0 0x1000>;
> +
>  			clock-names = "ref",
>  				      "ref_aux";
>  			clocks = <&rpmhcc RPMH_CXO_CLK>,
> @@ -1713,17 +1711,11 @@ ufs_mem_phy: phy@1d87000 {
>  
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
> -			status = "disabled";
>  
> -			ufs_mem_phy_lanes: phy@1d87400 {
> -				reg = <0 0x01d87400 0 0x188>,
> -				      <0 0x01d87600 0 0x200>,
> -				      <0 0x01d87c00 0 0x200>,
> -				      <0 0x01d87800 0 0x188>,
> -				      <0 0x01d87a00 0 0x200>;
> -				#clock-cells = <1>;
> -				#phy-cells = <0>;
> -			};
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
>  		};
>  
>  		ipa: ipa@1e40000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
