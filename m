Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52F42C77B75
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4I9gt9+2+1lls8i4qu7McBraxDThXqxnFoEWa9e+Jug=; b=4/4mYcl+ql8a2L
	xvyLakp+HK42LKA/cWBsWSfgu0ME0TV7/SfQOWS/I+d75v++auY2Czud27iyPt+SYGxRrFEdw3HSN
	mOPg0mXPMlliPtzDIBG62NzgZXJrIziDz1/FRyssvUFsPsQfQLInIJ+TM4eswYQE2Bmb6yg0qYLk1
	XT/AY9KDl1KNUnzIhaPcEt/9pKFuS3ZqOswdKSE7jeXa0qK7joUU+N+zlNfvRn2JGfX4hFxcgNuEB
	YDNrFUwg18W1sHTUCYPrg4FyBjica5z1P4O1d8ipDJECCSOw8pkO0HfPHndEhH0dnd+xSeTMHNUgc
	Fpurs0ucVghlbRYWWxmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18tA-007HZk-38;
	Mon, 22 May 2023 17:00:04 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18t8-007HYc-1L
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 17:00:03 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f4b80bf93aso185757e87.0
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 10:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774799; x=1687366799;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V8aNDm+cq25IEEnvkBipmOmSDadWxFkNtAaZWIaFaUc=;
        b=ZtfIFXXCKoPm2qQgYLqZ/3mF0vRvc1RMiLS/Ljm+c7LS2RzmMy7OEvfRnAq8zPKk7e
         cGHxw+xyOmrdYLMsMbYMh3Hv+V9qfe8qAHxENiSxecX6CW6yItYged2prrVeDtW9L/e6
         DRtlCSOICzFCtw8VjK/dFof32T+WHvj/pPEu3YltwXCw4f7qyntAHg99/sF4S/SSqoac
         7FO7NIvawT3u1rz3EL3LYiJSsToubb88/Gm5Gl5MAe1qOReTTRXxLQXKyvVmkFaYbE09
         RgW4W0iMogduMxnDk2scAo8PgzHJ8qorIfMqddLUNhWj27R1nbKwvPxx35DU1Pv4c/ST
         AnxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774799; x=1687366799;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V8aNDm+cq25IEEnvkBipmOmSDadWxFkNtAaZWIaFaUc=;
        b=HfrG6vIwmO27h2KefH9ktU8S03jg+jE/BDkchUGKuNpApeRYZRyPMUUtlD8Ln+o7Jb
         7G3Ue3UCAhjylxmKD199FKixHytVZ+rdXJTg+ObSwtUk6h++UppuFneZkf6iPNw05yDU
         TyUxStY9iwvR3jvB3W3Bbtia0LWK9nYcI7f5exstge4lNS6i088bYFJKqQUjSOhHLacU
         Z0Qm04Tec2m4J6b5oF5rzcl6u17iLmMeSdAK5LUD76Am88IxjqB9UYdZ7d9rEY9AU/o+
         YBx0gzyCCXaeBAYVlgeHdo+7aRr4+vNE6SNbustG8CwiWDwANLiItqkNMpwOrqPvw7Za
         p4Bw==
X-Gm-Message-State: AC+VfDxDGoljsuLFkPYlpSqTDIpPEslGjPNVTKxAVkfeUc6q0JyXoVke
	KP89Jh1dbFUUQlpoyctDF37Okw==
X-Google-Smtp-Source: ACHHUZ5Ydfab2mUL/eocLrebhQ+17lOdwCLKydwVDc7Tibc5AZsbmKPr7jUD1vCqBrmrQMtJCyk8Zw==
X-Received: by 2002:ac2:4465:0:b0:4f0:ff66:b4f1 with SMTP id y5-20020ac24465000000b004f0ff66b4f1mr3088648lfl.22.1684774799483;
        Mon, 22 May 2023 09:59:59 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id q9-20020ac246e9000000b004f256fed9e8sm1040768lfo.145.2023.05.22.09.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 09:59:59 -0700 (PDT)
Message-ID: <37f97ffc-01c1-797c-f50c-1680f666d79d@linaro.org>
Date: Mon, 22 May 2023 18:59:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 04/11] arm64: dts: qcom: msm8998: switch UFS QMP PHY to
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
 <20230521203834.22566-5-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100002_460160_048CBC68 
X-CRM114-Status: GOOD (  13.49  )
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
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index b150437a8355..848fbd2cb3f8 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -980,7 +980,7 @@ ufshc: ufshc@1da4000 {
>  			compatible = "qcom,msm8998-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
>  			reg = <0x01da4000 0x2500>;
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufsphy_lanes>;
> +			phys = <&ufsphy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			power-domains = <&gcc UFS_GDSC>;
> @@ -1021,11 +1021,8 @@ ufshc: ufshc@1da4000 {
>  
>  		ufsphy: phy@1da7000 {
>  			compatible = "qcom,msm8998-qmp-ufs-phy";
> -			reg = <0x01da7000 0x18c>;
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> +			reg = <0x01da7000 0x1000>;
>  			status = "disabled";
> -			ranges;
>  
>  			clock-names =
>  				"ref",
> @@ -1037,14 +1034,7 @@ ufsphy: phy@1da7000 {
>  			reset-names = "ufsphy";
>  			resets = <&ufshc 0>;
>  
> -			ufsphy_lanes: phy@1da7400 {
> -				reg = <0x01da7400 0x128>,
> -				      <0x01da7600 0x1fc>,
> -				      <0x01da7c00 0x1dc>,
> -				      <0x01da7800 0x128>,
> -				      <0x01da7a00 0x1fc>;
> -				#phy-cells = <0>;
> -			};
> +			#phy-cells = <0>;
Looks like that will make status not-last?

Konrad
>  		};
>  
>  		tcsr_mutex: hwlock@1f40000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
