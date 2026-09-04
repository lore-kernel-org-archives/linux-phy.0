Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8C7C79F89
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZzqC9XRJgPGAPb2TIRP4NSHrDBMW7v4RBVlILrmQOE=; b=MJ/0Q1O46MDWMq
	o+dZWr/mAXedI9t1Qol27LxzZ1LJZbQJm5Noq+PpDzCiV/EHJ5xypHhaT0jeqM/yBizdovV5Ogrsv
	mLg5gkRi4X+Qwi+G7XIYubcPJx+neDScKeDZGdoWJwYllqs8G9QK6ESyZk6ubJkUc5zSW/itNqaxZ
	AWmAPwVLDndv0XjkaWUf8U5oXcktgh/LDaMiiGzVX/wLSh+CckMFzJGfG5AKl7w/8UZdUjvz+mwOV
	uofAowT87xIHaNUD5iwdHsZczqEx0s8HqTmUrd/R9bBpoZONrK1QGeR95cHWpmtRdV5UX5RUdJ3Uu
	fYLTQz0EnNyXbEd5dh3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Txv-00000002BTp-0LhP;
	Fri, 04 Sep 2026 13:28:23 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tx7-00000002A6U-18CX
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:27:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1788528441; x=1789133241; i=wahrenst@gmx.net;
	bh=N86fHZWesvAS13bAxVQ1b+trCgVXKZqB2PoN19VY9f8=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=E0TpQ5mjHG1t4MtVOqyetoyuBqbNv+zSg6Dz44XL2iXLAL8fH0ySVK/OgXjBJ3/P
	 eU6m5oepCrq/8XTzi9+LegzP8rQcdMZX6Tm4uPZtC7L7/R4DQXp7B0TZnZYwhsK3j
	 Qjvb0U2x1KSsG+PCAvj6ipGxqTKYcgWvsKYOGfLL//0WGwCJ74OXFPLDbAYsravJj
	 1AHEs39ATzIvxbrSKvX5j/PHzwFNP50pEAt3eEyTCaIkAMvXgVA8xdFK056ZVJFID
	 o62lSgYCdkj4N2Hnugc0jiexBgjb9C3qW3PZuRGH0gkkilQw9WbrxMmCRc8htV8Y6
	 Xr6xDNhOjwK0OVUn0A==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M8hZJ-1wyND60i9p-0041wc; Fri, 04
 Sep 2026 15:27:21 +0200
Message-ID: <721b375c-327f-4938-95ad-4d2ba6f0f1b9@gmx.net>
Date: Fri, 4 Sep 2026 15:27:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 4/4] arm64: dts: freescale: Add chargebyte Charge
 Control Y
To: sashiko-reviews@lists.linux.dev, Frank.Li@kernel.org
Cc: robh@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev,
 Oliver Hartkopp <socketcan@hartkopp.net>,
 Vincent Mailhol <mailhol@kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, neil.armstrong@linaro.org,
 conor+dt@kernel.org, linux-can@vger.kernel.org,
 Marc Kleine-Budde <mkl@pengutronix.de>, olteanv@gmail.com,
 linux-phy@lists.infradead.org, vkoul@kernel.org
References: <20260903080427.6103-1-wahrenst@gmx.net>
 <20260903080427.6103-5-wahrenst@gmx.net>
 <20260903082122.A777C1F000E9@smtp.kernel.org>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
Autocrypt: addr=wahrenst@gmx.net; keydata=
 xjMEZ1dOJBYJKwYBBAHaRw8BAQdA7H2MMG3q8FV7kAPko5vOAeaa4UA1I0hMgga1j5iYTTvN
 IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+wo8EExYIADcWIQT3FXg+ApsOhPDN
 NNFuwvLLwiAwigUCZ1dOJAUJB4TOAAIbAwQLCQgHBRUICQoLBRYCAwEAAAoJEG7C8svCIDCK
 JQ4BAP4Y9uuHAxbAhHSQf6UZ+hl5BDznsZVBJvH8cZe2dSZ6AQCNgoc1Lxw1tvPscuC1Jd1C
 TZomrGfQI47OiiJ3vGktBc44BGdXTiQSCisGAQQBl1UBBQEBB0B5M0B2E2XxySUQhU6emMYx
 f5QR/BrEK0hs3bLT6Hb9WgMBCAfCfgQYFggAJhYhBPcVeD4Cmw6E8M000W7C8svCIDCKBQJn
 V04kBQkHhM4AAhsMAAoJEG7C8svCIDCKJxoA/i+kqD5bphZEucrJHw77ujnOQbiKY2rLb0pE
 aHMQoiECAQDVbj827W1Yai/0XEABIr8Ci6a+/qZ8Vz6MZzL5GJosAA==
In-Reply-To: <20260903082122.A777C1F000E9@smtp.kernel.org>
X-Provags-ID: V03:K1:Vi0kTF3UVe/l2fjq8HcPFBmA0bJtirqxEj+ikGYv+z12uy4+Z+c
 4OhaHskkGddpkxpLDzF9ROY7eiJkJUKORSOGByMyjj5kFpY6t1cRYQJd5FBlimcnZ3yiuYb
 XlvnBFzYeaLSsP5c0QP4yw2m1vOYKLkSdUd/zvhNOs9Y+5+EFj6yfkfhpCfQzq+NF260Pql
 j/IxRGKhIhb6Ty771desw==
UI-OutboundReport: notjunk:1;M01:P0:4CcQRe7terQ=;yaBHcvy3syKAxxrkaUD64YuZ2Xc 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 KVCa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_062734_006453_28C48746 
X-CRM114-Status: GOOD (  21.57  )
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

Hi,

Am 03.09.26 um 10:21 schrieb sashiko-bot@kernel.org:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [Medium] Mismatched drive strengths on USDHC2 data lines within the same interface speed mode.
> - [Medium] The reset GPIO polarity for the Ethernet PHY (DP83825) is configured as active-high, but the PHY natively requires an active-low reset.
> - [Low] Incorrect node name used in `/delete-node/` for heartbeat LED pinctrl.
> --
>
> commit 228da9fe4e969182ceef8105169e14b5de5949a5
> Author: Stefan Wahren <wahrenst@gmx.net>
>
> arm64: dts: freescale: Add chargebyte Charge Control Y
>
> This adds device tree support for the chargebyte Charge Control Y, an
> Electrical Vehicle Supply Equipment (EVSE) based on the phyCORE-i.MX 93
> SOM.
>
>> diff --git a/arch/arm64/boot/dts/freescale/imx93-charge-control-y.dts b/arch/arm64/boot/dts/freescale/imx93-charge-control-y.dts
>> new file mode 100644
>> index 0000000000000..ba240f528f9b9
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/freescale/imx93-charge-control-y.dts
> [ ... ]
>> +/* Ethernet 2 PHY */
>> +&mdio {
>> +	ethphy2: ethernet-phy@2 {
>> +		reg = <2>;
>> +		compatible = "ethernet-phy-id2000.a140";
>> +		clocks = <&clk IMX93_CLK_ENET_REF_PHY>;
>> +		reset-gpios = <&gpio4 13 GPIO_ACTIVE_HIGH>;
> [Severity: Medium]
> Will this hold the Ethernet PHY in reset? The DP83825 PHY natively expects
> an active-low reset signal. By specifying GPIO_ACTIVE_HIGH here, the kernel
> will assert reset by driving the GPIO high, and normal operation will drive
> it low. This could potentially keep the PHY in reset permanently, preventing
> Ethernet link establishment, unless there is a physical hardware inverter
> between the GPIO and the PHY.
Ethernet-PHY and reset signal are not wired directly. There is a 
transistor, which negative the signal.
>
>> +		reset-assert-us = <30>;
>> +		reset-deassert-us = <50000>;
>> +	};
>> +};
> [ ... ]
>> +&iomuxc {
>> +
>> +	// Heartbeat LED of phyCore is not populated
>> +	/delete-node/ pinctrl_leds;
> [Severity: Low]
> Will the device tree compiler process this delete-node directive correctly?
> In imx93-phycore-som.dtsi, the node is defined with the name ledsgrp and
> the label pinctrl_leds.
>
> The delete-node syntax expects the exact node name, like:
> 	/delete-node/ ledsgrp;
>
> Or alternatively, using the phandle label at the root level:
> /delete-node/ &pinctrl_leds;
>
> Using just the label name inside &iomuxc might result in a "Node not found"
> compiler error or a silent failure that leaves unused pinmux data in the
> binary.
Nice catch. I'm surprised why make dtbs_check doesn't find it. I will 
fix it.
>
>> +
>> +	pinctrl_eqos: eqosgrp {
> [ ... ]
>> +	/* need to config the SION for data and cmd pad, refer to ERR052021 */
>> +	pinctrl_usdhc2_default: usdhc2grp {
>> +		fsl,pins = <
>> +			MX93_PAD_SD2_CLK__USDHC2_CLK		0x119e
>> +			MX93_PAD_SD2_CMD__USDHC2_CMD		0x4000139e
>> +			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x4000138e
>> +			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x4000138e
>> +			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x4000138e
>> +			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x4000139e
> [Severity: Medium]
> Are these drive strength settings intended to be different across the data
> lines?
Yes, DSE can be optimized for electromagnetic compatibility

Best regards
>
> In this default mode configuration, DATA0-2 use 0x4000138e (DSE bit 4 = 0),
> while DATA3 uses 0x4000139e (DSE bit 4 = 1). Mismatched drive strengths on
> the same SDIO bus can introduce signal skew and degrade signal integrity.
>
>> +			MX93_PAD_SD2_VSELECT__USDHC2_VSELECT	0x51e
>> +		>;
>> +	};
>> +
>> +	/* need to config the SION for data and cmd pad, refer to ERR052021 */
>> +	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
>> +		fsl,pins = <
>> +			MX93_PAD_SD2_CLK__USDHC2_CLK		0x119e
>> +			MX93_PAD_SD2_CMD__USDHC2_CMD		0x4000139e
>> +			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x4000138e
>> +			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x4000138e
>> +			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x4000139e
>> +			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x4000139e
> [Severity: Medium]
> Similarly, in the 100mhz configuration, DATA0-1 are set to 0x4000138e and
> DATA2-3 are set to 0x4000139e. Could this mismatch cause high-frequency
> enumeration or data corruption issues on the SD bus?
>
>> +			MX93_PAD_SD2_VSELECT__USDHC2_VSELECT	0x51e
>> +		>;
>> +	};


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
