Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFF7FC47DDB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 20:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cZtlmiU6aXY2it+btX0zkL28bHvaxy8F+sLxQIpUFI=; b=BVOPMckzC0V1Bf
	3Jzl9cQrNrw3IUhAvJ+1zCmyKB3Fq6YYLrQq58DCSdqRa1zlcv2Envbn1oSrHDDUA/51AhHIAOnrG
	FW/FTyN3+A22sdOk/QoEZe6v3HbgUqfJAj8M7LSvqDbjjABrlqRirYrbG0trcHPoOoFiloltJN1UU
	CajGaavtdtpUYQH2Bzvz6v89lh4Lscq5T0FAR5ue9xrdHOs793z87bl0ay5ohjfs+Xk5Iub3JWYOt
	tGILKsoRgIM0HnwVSUv76jAq7aOISBAHGBojQ58FwHFaRspBb6TiLA9EzskHLmkG/c3kTIE18oYNe
	Pyw4tCJQZ+PSYzSIFRLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSNRk-000Om6-1T;
	Tue, 23 Jan 2024 20:32:36 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSNRg-000Oiz-2Q
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 20:32:34 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a309c0a5593so182382766b.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 12:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1706041948; x=1706646748; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z20O7bYlmZHSvcuSYHlwtmasXHxMNJkIAnRQOpXMGzc=;
        b=x1Ncd/uYQj2QB6iqD8/AhRYBXmWw9hDMbnMyQJIovC5XO96jX7mE0f2d9ognHGxO2M
         c5udULrfKWLqHjigGr9cHFeccvtTBbHdjzLAEqYjJ72eTW5s1HdzQ8bz4upahytchKqg
         4wLQY3jgNz5nC5k+sl9NVlZhQzRkEzJVRwZvp9QCu5Rubx0Mt+4sAciIxv0WfO39zuiR
         Wed1Zuv9ZSlWYbgojSgwq2MJAL6ikanp8BoXR+w/Xqc/yQVDbBL9mGDvAJb99y0VXgbL
         umtzIQfIWo6syTflbex0kmH7yi7TKyrinjMbgN+MvwXlzny+F1J7Fp9btIX2+omKVRSL
         lvWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706041948; x=1706646748;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z20O7bYlmZHSvcuSYHlwtmasXHxMNJkIAnRQOpXMGzc=;
        b=mKinDvK61LYc3LiWyCEXIXQdQI7sdxIuIK0YD/kJuU2CwJvFTrc4TGXMy+FFmg4vNk
         YDiuRLzvMl6KLfUbVi+ylSshS0GNNw2fx7Cx1dchlHd2IRqJw3l4e/EI2CKhFFDRXHWB
         DbvR2Y3Bl9hmki8KUI62/NZcmf3oibAMu3v8DbdEFqZdht4jkcP5p0L9hrMN9F/Ay4c0
         KJwuhyj+iUPKwKJTarbXisWlCNraNGvIl0p5Wps3sO9qnUm+hu0u4ATcvvGanDZygVDT
         OwBEVLft49rsi0xGu3f2dgAA1nqdT5lOjBhny6tVkWhbcpIrCnHMAuRu76ep0AjxF+KY
         Y1/w==
X-Gm-Message-State: AOJu0Yz19zuMleGP80gMOlTJcZfBZHDLiGyU7Wsajq30Hl3nVH2LU3XR
	ILZgRKL6HNLh1rnPcUPfkuFhJycFptmx5kiaCo9ncdhnzQ2IHJwhtzX5eRe7KDQ=
X-Google-Smtp-Source: AGHT+IEzedYGdRBr5+Ok9jU9hdAPP97DOkgzEJWvYf4nzAHEUTVNt7U9mR2OB283SD62pYYY2QK+AQ==
X-Received: by 2002:a17:906:5a4a:b0:a2c:1789:f7a3 with SMTP id my10-20020a1709065a4a00b00a2c1789f7a3mr138437ejc.79.1706041947921;
        Tue, 23 Jan 2024 12:32:27 -0800 (PST)
Received: from localhost (dhcp-089-099-055-216.chello.nl. [89.99.55.216])
        by smtp.gmail.com with ESMTPSA id q5-20020a170906388500b00a28a297d47esm14709048ejd.73.2024.01.23.12.32.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 12:32:27 -0800 (PST)
Mime-Version: 1.0
Date: Tue, 23 Jan 2024 21:32:26 +0100
Message-Id: <CYMDEAJZ0TJK.K31XZB3E9QOG@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v2 15/15] arm64: dts: qcom: qrb4210-rb2: enable USB-C
 port handling
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Liam
 Girdwood" <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Wesley Cheng" <quic_wcheng@quicinc.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Vinod Koul" <vkoul@kernel.org>, "Kishon
 Vijay Abraham I" <kishon@kernel.org>, "Guenter Roeck" <linux@roeck-us.net>,
 "Heikki Krogerus" <heikki.krogerus@linux.intel.com>, "Philipp Zabel"
 <p.zabel@pengutronix.de>
X-Mailer: aerc 0.15.2
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-15-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-15-182d9aa0a5b3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_123232_797123_CD145B1C 
X-CRM114-Status: GOOD (  13.13  )
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

On Sat Jan 13, 2024 at 9:55 PM CET, Dmitry Baryshkov wrote:
> Plug in USB-C related bits and pieces to enable USB role switching and
> USB-C orientation handling for the Qualcomm RB2 board.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 50 ++++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm6115.dtsi     | 43 +++++++++++++++++++++++++++
>  2 files changed, 93 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index 52f31f3166c2..696d6d43c56b 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -6,8 +6,10 @@
>  /dts-v1/;
>  
>  #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/usb/pd.h>
>  #include "sm4250.dtsi"
>  #include "pm6125.dtsi"
> +#include "pmi632.dtsi"
>  
>  / {
>  	model = "Qualcomm Technologies, Inc. QRB4210 RB2";
> @@ -256,6 +258,46 @@ kypd_vol_up_n: kypd-vol-up-n-state {
>  	};
>  };
>  
> +&pmi632_typec {
> +	status = "okay";
> +
> +	connector {
> +		compatible = "usb-c-connector";
> +
> +		power-role = "dual";
> +		data-role = "dual";
> +		self-powered;
> +
> +		typec-power-opmode = "default";
> +		pd-disable;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				pmi632_hs_in: endpoint {
> +					remote-endpoint = <&usb_dwc3_hs>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +				pmi632_ss_in: endpoint {
> +					remote-endpoint = <&usb_qmpphy_out>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&pmi632_vbus {
> +	regulator-min-microamp = <500000>;
> +	regulator-max-microamp = <3000000>;

Hi Dmitry,

Are you sure vbus can supply 3000mA?

In Qualcomm's document 80-PF208-77 I see 1000mA is the maximum it can
provide, and I see the same value looking into downstream smb5 driver
in sdm632 sources.

https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-4.9/+/refs/heads/int/13/fp3/drivers/power/supply/qcom/qpnp-smb5.c#414

Regards
Luca

> +	status = "okay";
> +};
> +
>  &pon_pwrkey {
>  	status = "okay";
>  };
> @@ -607,6 +649,10 @@ &usb {
>  	status = "okay";
>  };
>  
> +&usb_dwc3_hs {
> +	remote-endpoint = <&pmi632_hs_in>;
> +};
> +
>  &usb_hsphy {
>  	vdd-supply = <&vreg_l4a_0p9>;
>  	vdda-pll-supply = <&vreg_l12a_1p8>;
> @@ -622,6 +668,10 @@ &usb_qmpphy {
>  	status = "okay";
>  };
>  
> +&usb_qmpphy_out {
> +	remote-endpoint = <&pmi632_ss_in>;
> +};
> +
>  &wifi {
>  	vdd-0.8-cx-mx-supply = <&vreg_l8a_0p664>;
>  	vdd-1.8-xo-supply = <&vreg_l16a_1p3>;
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 76c429e8ebab..01dff6641280 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -878,8 +878,29 @@ usb_qmpphy: phy@1615000 {
>  			clock-output-names = "usb3_phy_pipe_clk_src";
>  
>  			#phy-cells = <0>;
> +			orientation-switch;
>  
>  			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_qmpphy_out: endpoint {
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_qmpphy_usb_ss_in: endpoint {
> +						remote-endpoint = <&usb_dwc3_ss>;
> +					};
> +				};
> +			};
>  		};
>  
>  		system_noc: interconnect@1880000 {
> @@ -1614,6 +1635,28 @@ usb_dwc3: usb@4e00000 {
>  				snps,has-lpm-erratum;
>  				snps,hird-threshold = /bits/ 8 <0x10>;
>  				snps,usb3_lpm_capable;
> +
> +				usb-role-switch;
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						usb_dwc3_hs: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						usb_dwc3_ss: endpoint {
> +							remote-endpoint = <&usb_qmpphy_usb_ss_in>;
> +						};
> +					};
> +				};
>  			};
>  		};
>  


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
