Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C41D0C7EE25
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 18:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OCJytoA9suuSwrJi85LdSmTzPf/QaZEyVR9Wl09TXQ=; b=BnZ1Z4+IUywPUT
	xdikE5M+mPeyEg5Xc1+XF42vdGnuNc9nxBtcRuA9CcDi5pmBmo5gvsK/wqSGeRnbOrmgCJZ9w5jaD
	L8JPilBe/N4KKNVqJbwj1hyTf3zvRm8fMC2BWLHV48tmCFztKIU/tVnyaml6wBnWDOAQ6fMv0CO4s
	9m3EQJuWeYAF34B2oejfB64gqrOrgPqRSiHXanFPji6p3cEBleoM0bOC7zXwCQ7OxlFzA+0GZke9n
	6fhWpDMXQ46hiym0ziXQwqjBJlO3UMb9AvFWe69ZF2iFyRY7i3Q9Vhl7zPcQJ3T6zQIeLQ4R7g7Cg
	JNY7hnVY6NBCpsbyTyhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6y08-006rQt-1U;
	Wed, 07 Jun 2023 18:35:20 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6y05-006rOu-2i
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 18:35:19 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-97467e06511so1007179966b.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 11:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686162914; x=1688754914;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5oRVbakJKhxqzwhoXotbCqDyKWlJ4PhQpqo/n0s7L7k=;
        b=SaHwxSTHyCK6ZLqMnQ2tRMbD/FXv8Q0MPpXiMqqMCSpcpygJNIx7kzZV5OPWY07Vjy
         FNfE+d7sfzmTr7HFJ2d17pqik93wj5/uGHjMSMjx3IqY4yEYAEplaeUL6lxdldBJsmGV
         3lOPMHbN3vb2qbIqkWHxuQku2kAOioy9Oxm6gmP/Jn5i+aquF5WnSS1P/pWvX5E247mM
         UmFHLaAxaF7MoNbucuTv6if4W5N8Omu72Ktp9e9nqxwQfzic+T25VD0lr153Zc1J5rI+
         FF/pLCcrHwXUIP4J4NszE6j9SV6nRjo4dPmh7PmGqz2uW2n4ZieJ8ejyaQl76gD5FgT/
         xA8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686162914; x=1688754914;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5oRVbakJKhxqzwhoXotbCqDyKWlJ4PhQpqo/n0s7L7k=;
        b=GvsivJTORJVys83RQra2CON80pPfr4WBWAno/En61f3ftDyC1LN3ghbzQmkko5iCdt
         ieqJqNBg92IHCq6UJwWnrd6QqvYhgBDqDOWgWZ2F/GxurtAgLS7WKCDpeNMYkdC8Yxly
         OwXzfVtX6IVIUcn2u8FXoFKg26lYpqZ8fZBASdI6s3KKegIQHGFyTmcnzoPQnXqn9LcG
         c++QmJtTamYa+kIohcE8Y5lWbI/aalzZofy3RnhrdBYciHIEvlwo+UewvoZZvMD6Qrni
         dDXI5gK5ZjLEW+0JFn+JdHe8Q5tqTokTU1dcmYk7aXBnocbH1L9I07l/CUnxx25JrscO
         AcYg==
X-Gm-Message-State: AC+VfDy8J2rcSMXJhBczFadwCBFeZK2a9lOMRVCfsmv0bqe4jI5yZLOa
	hOutDgpe97ZmogAdCvyfkIPUnA==
X-Google-Smtp-Source: ACHHUZ6kwcM0h6fzmYkLv2AwJVUv2wzM4110yS6KAONK+nyu/412lkMcwBU4G+no1drK2aF7E/JuPw==
X-Received: by 2002:a17:907:9444:b0:973:d48a:bc20 with SMTP id dl4-20020a170907944400b00973d48abc20mr6138655ejc.19.1686162914007;
        Wed, 07 Jun 2023 11:35:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id bq4-20020a170906d0c400b0096f7105b3a6sm7155657ejb.189.2023.06.07.11.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 11:35:13 -0700 (PDT)
Message-ID: <49258bcf-da13-78a9-8ea6-4fc7bd9a4b1d@linaro.org>
Date: Wed, 7 Jun 2023 20:35:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 7/9] arm64: dts: qcom: ipq5332: Add USB related nodes
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <1b48e737aa14f5b5539cbf04d473182121d5b1ad.1686126439.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1b48e737aa14f5b5539cbf04d473182121d5b1ad.1686126439.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_113517_919769_05C808DB 
X-CRM114-Status: GOOD (  13.85  )
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

On 07/06/2023 12:56, Varadarajan Narayanan wrote:
> Add USB phy and controller nodes
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 55 +++++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index c2d6cc65..3183357 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -383,6 +383,61 @@
>  				status = "disabled";
>  			};
>  		};
> +
> +		usb_0_m31phy: hs_m31phy@7b000 {

Node names should be generic. See also explanation and list of examples
in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +			compatible = "qcom,ipq5332-m31-usb-hsphy";
> +			reg = <0x0007b000 0x12C>,
> +			      <0x08af8800 0x400>;

Lowercase hex only.

> +			reg-names = "m31usb_phy_base",
> +				    "qscratch_base";
> +			phy_type= "utmi";
> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +			reset-names = "usb2_phy_reset";
> +
> +			status = "okay";

It's by default. Drop.

> +		};
> +
> +		usb2: usb2@8a00000 {

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Node names should be generic. See also explanation and list of examples
in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			reg = <0x08af8800 0x100>;

reg is always after compatible. Ranges is third. Then you will spot that
address is wrong.

> +
> +			clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +				<&gcc GCC_SNOC_USB_CLK>,
> +				<&gcc GCC_USB0_SLEEP_CLK>,
> +				<&gcc GCC_USB0_MOCK_UTMI_CLK>;

Fix alignment.

> +
> +			clock-names = "core",
> +				"iface",
> +				"sleep",
> +				"mock_utmi";

Fix alignment.

> +
> +			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pwr_event";
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
