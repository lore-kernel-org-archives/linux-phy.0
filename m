Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD6B0C7EE26
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 17:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7GdMlGYu2QxbQYLhCIxjLBajnqp3EcVEpoX6ZYEfgE=; b=NVES3jdPSPYvwG
	swCHrNyvNtz309ZIVcVuL+ys7X8Bv8NSrAP6A9ONsJPzyuVPBv/7n0dcpV2gQwxv/IZ8JG29Y6dA+
	iAtYqdr/c+GHZ5X6uzBSt6/4Rz+sO3dhFP1jdm0iSgbfn5Wv79tKySdcPj13LK9o7tz5B/apuKE3w
	85iNbKC4Tj0G2LF9oYP7FYTUEboGffWCedE2op7aegR1s2lZlcmuUzxirMvfM92RpSqc0+bVQX1wi
	tFQJDAkUftSIirwB48otHX5U0XjCGk4BKwiYgc7eTyxxf9ehurnUN5Hs+eBxy1pBRWUNYYCpvKu2w
	WWyIV59IJonnaKqk5PWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Vtv-00AzER-1k;
	Tue, 23 May 2023 17:34:23 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Vts-00AzCt-1h
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 17:34:21 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f3baf04f0cso138147e87.1
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 10:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684863258; x=1687455258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UuEUJc5Uu7upLbzD12JucsewjV94QoElyM4QC/lmx1Y=;
        b=Ue3HAde58nl6v+SfZ833G9quyWVFnnRaUXZEeDrmxe25VwnvnC2ptwz9PRklPErADb
         buAMGVQbWQTNYCCRvfoNG92XOtroQUrt3+co3wQf57QKXCiBI3sNewN1c78rTqfOLwAW
         mxxgu2+Km1pIiYQZHeZTerakpT1w0vKU7i6IB3njaJ5UZeJCjSIzRdT5kBLc7nJQcnzo
         LvJIljdtRth8gZX6RcYbM1GUXbNhyndJl6M82XpS64V1xPNc/uQjl5+XznsD+qCvsOuo
         3nESZdXqRzdGp7JU8uMDT2TVUhLFvqc1ILGaoG8+m/K3N3tG17sL2P9xqx6odu4F9Qqp
         BoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684863258; x=1687455258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UuEUJc5Uu7upLbzD12JucsewjV94QoElyM4QC/lmx1Y=;
        b=l1LL5fSaUNywn1i5uiqKxpPW0M+7QcdaIdchOSy7FzRU0nikhH4TF+jZFa8gZ/cpck
         Pk/MP9HvAgm9g6FrSMjO5N5rimVlBg5Jv5OASwlf3GMto1PRvFX/BIxS1Z0U2Uhnz11n
         gA/uClmW/H4DIhVWD7E9m0Rz0uuuAxKvFDYfc/PTjXhl+CtzQdve8nlqJLTxzdVus5n0
         CfVI9se6bqa/aPWGIleT1c8j7jgCBJvYHPfMqbXQrOupLWfsgQyNDhFl1/YW4L+3/xR9
         I59PxXpfPp4LSfJm7ocG5GotQVoq/7dB3cGkB1hEqV+lycu9YOY1RVfRYFfwD+R8An4O
         xIPA==
X-Gm-Message-State: AC+VfDzqOgqUdjOpgWcUf755vnwvFOkiJNfrfJlwqgKNGCNVPmL0588a
	5oDvp6RX3JqoB6UoIx4wjjE6nA==
X-Google-Smtp-Source: ACHHUZ4vAOydSoBLnatOMKsxMaPzl3jKF7ccckN3hW6yuQOTGPgTJlF3W4Peg3KEbvGUfNZFQy9hyA==
X-Received: by 2002:a2e:9bca:0:b0:2a6:18c0:2b35 with SMTP id w10-20020a2e9bca000000b002a618c02b35mr5059615ljj.0.1684863257758;
        Tue, 23 May 2023 10:34:17 -0700 (PDT)
Received: from [192.168.1.101] (abyk138.neoplus.adsl.tpnet.pl. [83.9.30.138])
        by smtp.gmail.com with ESMTPSA id b9-20020a2e9889000000b002ad8fc8dda6sm1708771ljj.17.2023.05.23.10.34.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 10:34:17 -0700 (PDT)
Message-ID: <097015a7-8363-988a-b4a5-d5f5fa158d83@linaro.org>
Date: Tue, 23 May 2023 19:34:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 04/11] arm64: dts: qcom: msm8998: switch UFS QMP PHY to
 new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
 <20230523140622.265692-5-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230523140622.265692-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_103420_563301_D421C508 
X-CRM114-Status: GOOD (  13.51  )
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



On 23.05.2023 16:06, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index b150437a8355..58c7a52ea8d6 100644
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
> @@ -1021,11 +1021,7 @@ ufshc: ufshc@1da4000 {
>  
>  		ufsphy: phy@1da7000 {
>  			compatible = "qcom,msm8998-qmp-ufs-phy";
> -			reg = <0x01da7000 0x18c>;
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -			status = "disabled";
> -			ranges;
> +			reg = <0x01da7000 0x1000>;
>  
>  			clock-names =
>  				"ref",
> @@ -1037,14 +1033,8 @@ ufsphy: phy@1da7000 {
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
> +			status = "disabled";
>  		};
>  
>  		tcsr_mutex: hwlock@1f40000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
