Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC36606A6B0
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 13:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KQllUYzq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=GkAYz44s
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LJuTGPowEuV072Q8QKLUJ8ft0GN5P2+tVIJFbYJ1YZo=; b=KQllUYzqeRaaRCkemtz7XWN8RD
	TQ6B5L6x4XFzM1aFHQaJLcMj8NHSHIHAJzfa7I2QraMsaJQSXjuErKltdvl1lfllfpJWpZLnvOVeI
	26p0b6BQvKt1fIhvBgzZxHO7H3t3E/0NGO7G532qkuCD7rPvxDebMFfD99IOgBqY/6HvrmMZ0K0ng
	gbanSLEmQ1u7I3IsHXrbe+1lQ2+XihCFVWEoOFRbbyTS9a1mmiRnVjYUq1/3zGZ80msEAib1O//gV
	3DijmElNB+s435qHVjCg4an1wH8Ln5AYn0ks2bP5Vg3j+HG+nZlNf/Hn8UjOsd2sYiqZdDFpGsCHM
	BrvCtFhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWCzw-00000009yow-3gXQ;
	Wed, 25 Nov 2026 13:25:21 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWCzu-00000009yoG-2Pyx
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 13:25:20 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-3ab3cb83f54so4200601fa.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 05:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795613116; x=1796217916; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=NQLOwLKmQWGXVjYzEC+v5DF5B/Ubjo80CMy8M7QDT2k=;
        b=GkAYz44sT87n+XmA2wcug59PTd01AM+vFvdB1kv5Je4tCpewLWe/mjMGYQc2G9++B/
         uVG9bD+N099LBRFWABPkU0YXTMypdI9eGmepKK9Fabev1wm6r+nyoJtsXWk/ejjwekVG
         6AHTv2jQYDafz66SvM1oXvDxXhpokdB90TQJhffUfi+qqq2Fh+OSNe1an8dj1weGdPJt
         sE69RXtWhl477rqQzeQQAuYlMHKGjRIjGSFokjD4JUJPnA9nSpZWrzuZWoVCAr/r7vW0
         Q8F4QAjVfQnfDVsZFoKAysLUAbg7tg0YGDx58FYo2BhJI7CrIfX0lqTAQSdTe587ks8u
         TCww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795613116; x=1796217916;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NQLOwLKmQWGXVjYzEC+v5DF5B/Ubjo80CMy8M7QDT2k=;
        b=eTJcvkMx6jMwG0jjph+fa1qyXwmoL9aTwOytGJhzx4JgmVeRmZiQbe+txgkf64+vQH
         leN4c+Bz23kh5EDA0OqG/ia4jfdzIokjOnciIklRzzHnj2lJQMbVr/FhnS1mSj6kUOp0
         dBA2V7JwEmOG9jlOxk4w9rXIywXyhHZJTR3k6ESswWAu3tuxZxF3d864fM+A1ntYbVH3
         JqeN1mFzE1R3W8kcIRxsVZpVeldSbc7Zwusjzd96PQpPTWzO0UF2epPnIVuLy9FAUCTq
         kvZXNsXNwQ/Z1Rbqvm5dwO82K2HhL1xu22/aMKrL97nkjQQMpnLPwB++8zIvRDVoMMrq
         kBLg==
X-Gm-Message-State: APuU4Z+cYAdIBBHkwXHWWmPNxEOpektzjSnEJcb5ycRJ/DOkSv7jcsdO
	sA6MPZDQjERWrr0/zTDLH7JcPf56NaVpmnUOTrFk5cnne7i31xjjyqEQmfrye2Bipdk=
X-Gm-Gg: AZFdTZfJMlEPV5d2Zp9NgsxlIPlGrM1AuAhSS++y43HG3R4/nbecsJjMbpfmRnP1HZf
	2N8wA5MBj1pPuRvr/mdu7Na3Jw+3jJ5eagHl0NyZRMpnc4Enr7py2X+zDQtrsdM8oKb/dUo0VuA
	fnHd9OSRVouy8DbIiU5e32qb1fB1+wb2UF0JWq66T3M2gLGN2Wr2iPBzNiOlyLu/qepdaGXiv6E
	sRQZSgZA8a8kCyg9KoES46vrQhvq0xyUDqXLwUALy9yDz8f5+RV+A1gEAWRg7aakiDWT18qq3zm
	SMVXS+pLVi1ybPuOnzdqTEaoRTuUMvksppoTFr8IMbwvIj/lDsAX0cL2O/WAjaNiYeRn3BoqseV
	RCoQ92xXJ8bUdUUIyRpVMG+4cvQtRs+Gblz+turm5SZ1MnvrJTK5lbd5DVwr3naaPXCWWHZk5eG
	pjRvPvQi5ohevwmJ+pg7ZoBVd0seLu3MquSyMP5P97pvIcfH1BgoUA9p4eAbE3fwhS3Q133fwBA
	u5xo8WcfVBzaBgneih9W8xkQceTZEv52LHbAe5K0sO30q4bURgaJAMNauf5db4CffHZzXHAPO51
	Qv9aqMiwgNGohjfYNspM/76Dn0xsZTWH2rJSVDhol7vZoEvAqi6Y2xBdvWyrSSSCYeUq8ZwMx2t
	XOujfWwg=
X-Received: by 2002:a05:651c:a110:20b0:3ac:e540:987a with SMTP id 38308e7fff4ca-3ae7f7ccbccmr42034731fa.0.1795613116510;
        Wed, 25 Nov 2026 05:25:16 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3ae8044e3c4sm47116791fa.4.2026.11.25.05.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 05:25:16 -0800 (PST)
Message-ID: <38bdcad3-2c2f-4e55-9a3e-17047b9f486f@linaro.org>
Date: Wed, 25 Nov 2026 15:25:15 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 23/23] arm64: dts: qcom: eliza-evk-imx577-camera: Add
 DT overlay
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-23-8ff2a11835f6@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-23-8ff2a11835f6@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_052518_709671_21A15B2D 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/14/26 13:29, Wenmeng Liu wrote:
> Add an overlay for optional IMX577 integration on the Eliza CQS EVK,
> shared by the eMMC and UFS variants. The sensor is on CCI0 I2C bus 0,
> uses MCLK0 with its reset on GPIO8 and connects to CSIPHY0 over CSI-2.
> The overlay enables CAMSS, CSIPHY0 and CCI0.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/Makefile                  |  4 +
>   .../boot/dts/qcom/eliza-evk-imx577-camera.dtso     | 85 ++++++++++++++++++++++
>   2 files changed, 89 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 64d2cfdb89c89f1c6eb0085e2bf5877ff980dbc4..a9374c54dd514f53b7aa97f5581c99cb6e75697d 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -16,6 +16,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= apq8096sg-db820c.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-ifc6640.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= eliza-cqs-evk-emmc.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= eliza-cqs-evk-ufs.dtb
> +eliza-cqs-evk-emmc-imx577-camera-dtbs := eliza-cqs-evk-emmc.dtb eliza-evk-imx577-camera.dtbo
> +eliza-cqs-evk-ufs-imx577-camera-dtbs := eliza-cqs-evk-ufs.dtb eliza-evk-imx577-camera.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= eliza-cqs-evk-emmc-imx577-camera.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= eliza-cqs-evk-ufs-imx577-camera.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= eliza-mtp.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= glymur-asus-zenbook-a14-ux3407na.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= glymur-asus-zenbook-a16-ux3607oa.dtb
> diff --git a/arch/arm64/boot/dts/qcom/eliza-evk-imx577-camera.dtso b/arch/arm64/boot/dts/qcom/eliza-evk-imx577-camera.dtso
> new file mode 100644
> index 0000000000000000000000000000000000000000..08f2e3c62dbdaf23a2f6ca69a5c392054cb1c225
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/eliza-evk-imx577-camera.dtso
> @@ -0,0 +1,85 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/qcom,eliza-cambistmclkcc.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/media/video-interfaces.h>
> +
> +&camss {
> +	status = "okay";
> +};
> +
> +&camss_csiphy0_in_port {
> +	camss_csiphy0_inep: endpoint {
> +		data-lanes = <1 2 3 4>;
> +		remote-endpoint = <&csiphy0_out_ep>;
> +	};
> +};
> +
> +&cci0 {
> +	status = "okay";
> +};
> +
> +&cci0_i2c0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	camera@1a {
> +		compatible = "sony,imx577";
> +		reg = <0x1a>;
> +
> +		reset-gpios = <&tlmm 8 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 = <&cam_mclk0_default &cam0_reset_default>;
> +		pinctrl-names = "default";
> +
> +		clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK0_CLK>;
> +		assigned-clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK0_CLK>;
> +		assigned-clock-rates = <24000000>;
> +
> +		dovdd-supply = <&vreg_l7b>;
> +
> +		port {
> +			imx577_out_ep: endpoint {
> +				data-lanes = <1 2 3 4>;
> +				link-frequencies = /bits/ 64 <600000000>;
> +				remote-endpoint = <&csiphy0_in_ep>;
> +			};
> +		};
> +	};
> +};
> +
> +&csiphy0 {
> +	vdda-0p9-supply = <&vreg_l2b>;
> +	vdda-1p2-supply = <&vreg_l4b>;
> +
> +	status = "okay";
> +};
> +
> +&csiphy0_in_port {
> +	csiphy0_in_ep: endpoint {
> +		bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
> +		clock-lanes = <0>;

Here 'clock-lanes' should be dropped, it shall be implied, and I belive
it is.

> +		data-lanes = <1 2 3 4>;
> +		remote-endpoint = <&imx577_out_ep>;
> +	};
> +};
> +
> +&csiphy0_out_port {
> +	csiphy0_out_ep: endpoint {
> +		remote-endpoint = <&camss_csiphy0_inep>;
> +	};
> +};
> +
> +&tlmm {
> +	cam0_reset_default: cam0-reset-default-state {
> +		pins = "gpio8";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +};
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
