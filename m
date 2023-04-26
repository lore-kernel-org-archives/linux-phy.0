Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAF5CC77B7C
	for <linux-phy@archiver.kernel.org>; Wed, 26 Apr 2023 23:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6v9ffLrkP8aCufVbsZYa0dVBuUldkcr0OGfQGJ86sRA=; b=QdgUv0wRzHuE+f
	L2quSW/MLcWdfHjhVC7r9VinjI4nirhPV15WqoA2npyaKPJyZ+f3uijX+opUGrOlaBdq8NkA9knQc
	Or09sNfdfUYxXmBkCtiaY0tkTJYE1WpF0oeSzMSjgK8wt2acFvPO8dTtMliizi2DosRcwZ1FuaTd+
	vQMbb+LoyD9uNirgNzCsYGkOYftgGK4RjIaRE8pus/2AQksZwPufg/3ZZ7BZYPbpf8Mrk+BTaZSLC
	2+4JE7Ta9B6JAhD1Gkarutlc9SWLmSPwoA4rXjj8c3vASF1K4OnqdlolykhssjiuTsBYgdT3UleRm
	46bie9r2EliOhr5JpK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1proe0-0052uQ-1j;
	Wed, 26 Apr 2023 23:33:52 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prodx-0052tX-1n
	for linux-phy@lists.infradead.org;
	Wed, 26 Apr 2023 23:33:51 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-959a626b622so700874366b.0
        for <linux-phy@lists.infradead.org>; Wed, 26 Apr 2023 16:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682552024; x=1685144024;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mGxx/Wp7YoyInjx2MQFOjEqf+qzS2POXDbnN6s82MQc=;
        b=BZP42WZBirI8WBMnHioiAhe1YLztl8E9Aj3RsuOgx7KQ9ri18AeSRUp1Z937cjsuKu
         b1yUUQkTmPpdcgNBewYDBLj2LMUaZsmK+4mauPhbPUodoSjSaUyDabMcPkZI7x+2rUh1
         DAXYLd8sHghRnknDbFguWwQboB9dRK1aM47pGXKNevV9UpgF8NdA4XO3yDDi+ozTL6ub
         rKBEn3xKxPSnNtY8sFACN35R81ip7mBbrcD0vhgWBf9kkvDnFhLtTo3ZSeQyA5PXsvno
         okBjIkLcNQrYEwsx+IZxkbHB6Kav6tMo+8DiI9WvOBQa9QTPc5Qc9bQ9GQLeKgTy5C7L
         GQSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682552024; x=1685144024;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mGxx/Wp7YoyInjx2MQFOjEqf+qzS2POXDbnN6s82MQc=;
        b=Q+J+h4YeayKrgdPISQcB7pxOER1Oo+mm7a1UzRLzMXXny1fWFKAE774sGCBpYe9lY0
         MSdC+FkBPTETDXEy1lLwo3JI6y0qelXC9xyfjyMCr/dD4ftCwHdQjSvG1uclRinyCguD
         ziyUy2Dwq50ftJzq/Iw2D+nmJmhu3SOxLQytW7iN+cEbFY1TQlBlpeCULnFqtJmSGhjt
         2D2kenmJZKL3OhY4wCftPJ4817t6e8KDHu0SNdJV6OWYZjpmH14d6RFWaYwMBGvoMjTD
         RTHItqVPy0j/mwbR3VvUEpgJi+1b+8TJcLCi8eUtETOfdADUroKg11495zGJoumKqTb/
         eD2g==
X-Gm-Message-State: AAQBX9dpixLcU6IFpsDJL/j6b9MwFO7ExjqaZxytNcb9xaPlU7Gyrx+q
	3C1sqaB6IYtyeoqb1Zq8JjuVkA==
X-Google-Smtp-Source: AKy350bsUIt5HhDZ4+MiMWS21VH6MLlhA2kcVi7lcpgPxKao8PuQpH2UDaSGMtwjcGNlQUBCF4/zvg==
X-Received: by 2002:a17:907:96a1:b0:94e:d72b:d10c with SMTP id hd33-20020a17090796a100b0094ed72bd10cmr19180774ejc.40.1682552023729;
        Wed, 26 Apr 2023 16:33:43 -0700 (PDT)
Received: from [172.23.2.152] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id h13-20020a170906718d00b0095386574c81sm8858234ejk.51.2023.04.26.16.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 16:33:43 -0700 (PDT)
Message-ID: <aa94b488-cb6e-bd74-0711-b7c4c7589f7a@linaro.org>
Date: Thu, 27 Apr 2023 00:33:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed
 graph
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-7-quic_bjorande@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230425034010.3789376-7-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_163349_630908_1D685397 
X-CRM114-Status: GOOD (  17.19  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 4/25/23 04:40, Bjorn Andersson wrote:
> With support for the QMP combo phy to react to USB Type-C switch events,
> introduce it as the next hop for the SuperSpeed lanes of the two USB
> Type-C connectors, and connect the output of the DisplayPort controller
> to the QMP combo phy.
>
> This allows the TCPM to perform orientation switching of both USB and
> DisplayPort signals.
>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 28 ++++++++++++++++---
>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi    | 34 +++++++++++++++++++++++
>   2 files changed, 58 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> index 547277924ea3..33c973661fa5 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> @@ -64,7 +64,7 @@ port@1 {
>   					reg = <1>;
>   
>   					pmic_glink_con0_ss: endpoint {
> -						remote-endpoint = <&mdss0_dp0_out>;
> +						remote-endpoint = <&usb_0_qmpphy_out>;
>   					};
>   				};
>   
> @@ -99,7 +99,7 @@ port@1 {
>   					reg = <1>;
>   
>   					pmic_glink_con1_ss: endpoint {
> -						remote-endpoint = <&mdss0_dp1_out>;
> +						remote-endpoint = <&usb_1_qmpphy_out>;
>   					};
>   				};
>   
> @@ -412,7 +412,7 @@ &mdss0_dp0 {
>   
>   &mdss0_dp0_out {
>   	data-lanes = <0 1>;
> -	remote-endpoint = <&pmic_glink_con0_ss>;
> +	remote-endpoint = <&usb_0_qmpphy_dp_in>;
>   };
>   
>   &mdss0_dp1 {
> @@ -421,7 +421,7 @@ &mdss0_dp1 {
>   
>   &mdss0_dp1_out {
>   	data-lanes = <0 1>;
> -	remote-endpoint = <&pmic_glink_con1_ss>;
> +	remote-endpoint = <&usb_1_qmpphy_dp_in>;
>   };
>   
>   &mdss0_dp3 {
> @@ -670,9 +670,19 @@ &usb_0_qmpphy {
>   	vdda-phy-supply = <&vreg_l9d>;
>   	vdda-pll-supply = <&vreg_l4d>;
>   
> +	orientation-switch;

I believe this belongs in the SoC DTSI, as it's supported by
the PHY block itself


The rest seems to lgtm..


On a note, why did we end up placing pmic_glink in device
DTs? It's already assumed that we're using the full Qualcomm
stack as we use PAS for remoteprocs so I *think* we can always
assume pmic_glink would be there!

Konrad

> +
>   	status = "okay";
>   };
>   
> +&usb_0_qmpphy_dp_in {
> +	remote-endpoint = <&mdss0_dp0_out>;
> +};
> +
> +&usb_0_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_con0_ss>;
> +};
> +
>   &usb_0_role_switch {
>   	remote-endpoint = <&pmic_glink_con0_hs>;
>   };
> @@ -697,9 +707,19 @@ &usb_1_qmpphy {
>   	vdda-phy-supply = <&vreg_l4b>;
>   	vdda-pll-supply = <&vreg_l3b>;
>   
> +	orientation-switch;
> +
>   	status = "okay";
>   };
>   
> +&usb_1_qmpphy_dp_in {
> +	remote-endpoint = <&mdss0_dp1_out>;
> +};
> +
> +&usb_1_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_con1_ss>;
> +};
> +
>   &usb_1_role_switch {
>   	remote-endpoint = <&pmic_glink_con1_hs>;
>   };
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 0e691bb0120c..1eb3a295e8fa 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -3006,6 +3006,23 @@ usb_0_qmpphy: phy@88eb000 {
>   			#phy-cells = <1>;
>   
>   			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_0_qmpphy_out: endpoint {};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_0_qmpphy_dp_in: endpoint {};
> +				};
> +			};
>   		};
>   
>   		usb_1_hsphy: phy@8902000 {
> @@ -3042,6 +3059,23 @@ usb_1_qmpphy: phy@8903000 {
>   			#phy-cells = <1>;
>   
>   			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_1_qmpphy_out: endpoint {};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_1_qmpphy_dp_in: endpoint {};
> +				};
> +			};
>   		};
>   
>   		mdss1_dp0_phy: phy@8909a00 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
