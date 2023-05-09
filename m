Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADE34C77B7C
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 07:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i2Zsaqf+M4TwahjuOdFJPKzgEkFzK5zZRhUWYKjsukw=; b=pMK5QWNMrqhjOAA2eiNFvo/hvw
	HbJZzac/i+5iP4fZZUz3VnS9cSrkZ9libPU/QrP+QW7PykF96He+E+/VLT6QTaeV1Ndgl13t5PbnR
	R+oH65zw9PKazGqhK3Qhuq71xxspmVpxJ5T7kr3cwrL78ixTavIh0u98YiOtfk7AeSkHTFaQ3SbV4
	AYiNVuw1D1t/1wt17pY4iKAwz+LCLQkHP5Nw20rfHrolFq/Cui6E0HI0nwrExkjANzPf68MToRK/o
	vqjRBzRJ/JBXFl3lc3ialqiYsfRDsiXqBQjQdc8iUY1hMqNqZAZLaJf01nvCwO2jFl/0W2stspjzJ
	SmqqhWGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwI1c-002XqS-10;
	Tue, 09 May 2023 07:44:44 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwI1Y-002XoQ-2O
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 07:44:43 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f315712406so196373595e9.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 00:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683618275; x=1686210275;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/tIWIjCU0WB4+s+0CLXZp3rE/hrVxQbRrR7hGm/i1t8=;
        b=FS045pxekPIy3zvybkfVPHe6eMBCAkuvJgWnUdb31Avcc4yyadf8jCoDTyTn3dQp7X
         nJeSCyxtCn23b8AEbg8AUd9eRaIq/xYZcwQAk2hEWCjBTHvAeajabpDyQNklwEMZ58DU
         Kz4J2Htyn4dGPyzXyy70is1VHwsrsSzx8ia/px/eMY4UWpcUu9piuWERmxYqNasXIL08
         N85eWBxxiQxVr0JUNGHr2szdrhhx7g8JzYJjvO4oMM9gngmxNqPElviZpictdF6A+3EF
         4wMQzw2SyPMwAPsmI78QFBgadv2JzPwaFe0uk/mPPCK7LBGv3biIhaXQmUyVRtPRVu2Y
         96eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683618275; x=1686210275;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/tIWIjCU0WB4+s+0CLXZp3rE/hrVxQbRrR7hGm/i1t8=;
        b=igkdQh7Q6At/Uwr2A2Q1JAqX6E3X4X+fehQmwdVkJqkIoR1pWJOZ/vfjTKJ9Ppu9ie
         UGNaYlvoB1tyq41lo1xSDUHJppV1dwXoWb+woXCj4bJZO2N7p3RSGCKiu302yJCk8BQ3
         ia8ifAT6GWIxrMeJGc094CuFROsFlDlytgua/FZA+nbc6QN3UzsW040ankXoAE6/9pdN
         KIpI1XSi6eI8HzQYUXlbClyLuATQSM7MfSDaucJwurWfZt8fFhlNXs+ofK2/1BTc1agD
         pl/dauzCw5tt9MVrurfWQ+vH80SDBtY7/jztkZQiyBWQesvLwWl06mGIosRXlbeWdoGn
         m7yg==
X-Gm-Message-State: AC+VfDxy8NQu8SXqXgr95pca/b/D7m6v3BMhZDZUz0PlYcJ8I7Avoqtb
	s3sKNbBWKaFYXFfC08vNOzZW1g==
X-Google-Smtp-Source: ACHHUZ5azk0AtvIKQkzwUK42XJg0J/YOW/KQyQjpBHJ5Rilppz/v+9dWNUtHMmojYs5nx4Y5u/mbwQ==
X-Received: by 2002:adf:e483:0:b0:2ff:801b:dec6 with SMTP id i3-20020adfe483000000b002ff801bdec6mr8605708wrm.20.1683618275426;
        Tue, 09 May 2023 00:44:35 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:79ab:8da0:d16d:9990? ([2a01:e0a:982:cbb0:79ab:8da0:d16d:9990])
        by smtp.gmail.com with ESMTPSA id e15-20020a5d4e8f000000b0030629536e64sm13492065wru.30.2023.05.09.00.44.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 00:44:35 -0700 (PDT)
Message-ID: <acc5eb75-c6ed-98c7-6d69-f8b0f024c744@linaro.org>
Date: Tue, 9 May 2023 09:44:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 5/5] arm64: dts: meson: a1: support USB controller in
 OTG mode
Content-Language: en-US
To: Dmitry Rokosov <ddrokosov@sberdevices.ru>, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
 mturquette@baylibre.com, vkoul@kernel.org, kishon@kernel.org,
 hminas@synopsys.com, Thinh.Nguyen@synopsys.com
Cc: yue.wang@amlogic.com, hanjie.lin@amlogic.com, kernel@sberdevices.ru,
 rockosov@gmail.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-phy@lists.infradead.org
References: <20230426102922.19705-1-ddrokosov@sberdevices.ru>
 <20230426102922.19705-6-ddrokosov@sberdevices.ru>
Organization: Linaro Developer Services
In-Reply-To: <20230426102922.19705-6-ddrokosov@sberdevices.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_004440_784582_09E06739 
X-CRM114-Status: GOOD (  15.35  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 26/04/2023 12:29, Dmitry Rokosov wrote:
> Amlogic A1 SoC family has USB2.0 controller based on dwc2 and dwc3
> heads. It supports otg/host/peripheral modes.
> 
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Dmitry Rokosov <ddrokosov@sberdevices.ru>
> ---
>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 59 +++++++++++++++++++++++
>   1 file changed, 59 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index ae7d39cff07a..5588ee602161 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -8,6 +8,8 @@
>   #include <dt-bindings/gpio/meson-a1-gpio.h>
>   #include <dt-bindings/clock/amlogic,a1-pll-clkc.h>
>   #include <dt-bindings/clock/amlogic,a1-clkc.h>
> +#include <dt-bindings/power/meson-a1-power.h>
> +#include <dt-bindings/reset/amlogic,meson-a1-reset.h>
>   
>   / {
>   	compatible = "amlogic,a1";
> @@ -169,6 +171,17 @@ gpio_intc: interrupt-controller@0440 {
>   				amlogic,channel-interrupts =
>   					<49 50 51 52 53 54 55 56>;
>   			};
> +
> +			usb2_phy1: phy@4000 {
> +				compatible = "amlogic,a1-usb2-phy";
> +				clocks = <&clkc CLKID_USB_PHY_IN>;
> +				clock-names = "xtal";
> +				reg = <0x0 0x4000 0x0 0x60>;
> +				resets = <&reset RESET_USBPHY>;
> +				reset-names = "phy";
> +				#phy-cells = <0>;
> +				power-domains = <&pwrc PWRC_USB_ID>;
> +			};
>   		};
>   
>   		gic: interrupt-controller@ff901000 {
> @@ -192,6 +205,52 @@ spifc: spi@fd000400 {
>   			#size-cells = <0>;
>   			status = "disabled";
>   		};
> +
> +		usb: usb@fe004400 {
> +			status = "disabled";
> +			compatible = "amlogic,meson-a1-usb-ctrl";
> +			reg = <0x0 0xfe004400 0x0 0xa0>;
> +			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&clkc CLKID_USB_CTRL>,
> +				 <&clkc CLKID_USB_BUS>,
> +				 <&clkc CLKID_USB_CTRL_IN>;
> +			clock-names = "usb_ctrl", "usb_bus", "xtal_usb_ctrl";
> +			resets = <&reset RESET_USBCTRL>;
> +			reset-name = "usb_ctrl";
> +
> +			dr_mode = "otg";
> +
> +			phys = <&usb2_phy1>;
> +			phy-names = "usb2-phy1";
> +
> +			dwc2: usb@ff500000 {
> +				compatible = "amlogic,meson-a1-usb", "snps,dwc2";
> +				reg = <0x0 0xff500000 0x0 0x40000>;
> +				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> +				phys = <&usb2_phy1>;
> +				phy-names = "usb2-phy";
> +				clocks = <&clkc CLKID_USB_PHY>;
> +				clock-names = "otg";
> +				dr_mode = "peripheral";
> +				g-rx-fifo-size = <192>;
> +				g-np-tx-fifo-size = <128>;
> +				g-tx-fifo-size = <128 128 16 16 16>;
> +			};
> +
> +			dwc3: usb@ff400000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x0 0xff400000 0x0 0x100000>;
> +				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +				dr_mode = "host";
> +				snps,dis_u2_susphy_quirk;
> +				snps,quirk-frame-length-adjustment = <0x20>;
> +				snps,parkmode-disable-ss-quirk;
> +			};
> +		};
>   	};
>   
>   	timer {

This patcj is fine, but depends on clock bindings & dt, so now Vinod took the PHY
patch, please resend this wiyhout patches 1 & 5, then resend the DT patch later when
the clock bindings is merged.

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
