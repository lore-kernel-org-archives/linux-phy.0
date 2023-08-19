Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5BE1EE49AA
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 08:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=de1LxyafWUf91T5Vp82nrkWVbIrnZps9jfz/ffz30dM=; b=zvLhFvqYIwRzDE
	zWXqEYXybDzaClXoOrWzZMMe6cPpeUd4i18r7icSAez9q0ooNamG/H7eNfPVqYzip3hkRo5GErzYl
	WYvgRb8tWDAA1rIRpmuk2UiKM2XOJQsaNdAXsK+yTlGiR7h1y+HcFcdgmPpp0GUhZheItI3D3Om2M
	J/yE95K7zgsgvNLPVI0+JQSOz+5OkFQnYz8hFLRStBTLaVHJhwyn1zMPbQ1OQulmgc3ZulrP0+VRJ
	AFX5ilQReyNXgvkFt6qy2BABKegUJqhrZq89ea3URgcIMaBjjj+NFwXvP0JRs25Z4ECo1OHXj12O5
	2iGygSTABFtmjjeUeh6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXHPB-00Aa6x-1T;
	Sat, 19 Aug 2023 08:33:57 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXHP8-00Aa6K-1M
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 08:33:55 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5259cf39154so2102696a12.2
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 01:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692434033; x=1693038833;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tGcYL8UJ9k+/+DJ0dBVO4Lzq0csyHEZnijoTke8Cth8=;
        b=eQweFE+zOXpiSGJCh41kc+mszGLappZm5QTuSAtCMa+Xo1ifGgHrifQnazVKiFWMFE
         6lR0OYPgjVJS9Y6RGIUmAjyRvCx/7HNVs8dUrnfrcN79aBDXsukcO4yLuMP/VfPNy0eZ
         sDgF9Ur0wcxIkcjUeVAdLiqIlgPuW/A3rr2xPy5oGB4uoP75ThdH+BR1x7RqW5HsSFqy
         Y3fXffERC5znb4G2KaWeQrOHk6Km7zh8rNVP9ICqfgZYXqsXH4ZMVRi+7qYKEVMkLPCh
         ocTplA2aIboAVAez1tCDGKnxlW4POlyBNw8cV0Ssc40uwBvEgM57sf9IITS/1CJkffqv
         Wh0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692434033; x=1693038833;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tGcYL8UJ9k+/+DJ0dBVO4Lzq0csyHEZnijoTke8Cth8=;
        b=jRDW2cX0Rv6Hnn58GlzOWIq/CiM5VLHtOwayPBTJV+BvOQri/72duayVHP4LHVGCpD
         w2aTqbtyx5BtVuVJFMahNNGUd3HiSoXYzAWQAmAuZD+bK9d1GhLB6OqKbJwcQlL+nzaZ
         Bzj7JKV61XqhE713SRbjz201DBAT2tKh1P9KFrviKh7zrz1FHE4MlF34MCKVoo43tB+w
         UuOcIPR4v9ZYRlMDt1v1etKn9Pme7VEKL730wpSCceotT6aabrXUSWD5S1BftMXV0uGm
         Z2FR7aUIKHBrsFE2PKLscdsNRXYx98KeXHq9MS9RCDlz7y7DC8j3GW38MMj/LZvO8neI
         6hdQ==
X-Gm-Message-State: AOJu0Yw0vyB/YJPRJpcJkUPBdwWDH/2/NaJAFHw3vETj7zb1JxfB6GKD
	QIPXJq/2TA/AMvPx0a+10SZwcw==
X-Google-Smtp-Source: AGHT+IH2DANJNHPRHzwPV1JrvPKiDcaHhTJsowdhXqW3c/aKX1l9pGW11yVAH/OOICuBrY2Scpu/DQ==
X-Received: by 2002:a17:906:76d9:b0:99e:12ab:f197 with SMTP id q25-20020a17090676d900b0099e12abf197mr1229566ejn.42.1692434033037;
        Sat, 19 Aug 2023 01:33:53 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id e16-20020a170906045000b0098dfec235ccsm2288004eja.47.2023.08.19.01.33.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 01:33:52 -0700 (PDT)
Message-ID: <920e4748-c0c8-940f-464a-aba8e925ee24@linaro.org>
Date: Sat, 19 Aug 2023 10:33:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 7/8] arm64: dts: exynos: Enable USB in Exynos850
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
 <20230819031731.22618-8-semen.protsenko@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-8-semen.protsenko@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_013354_465659_19CD41E8 
X-CRM114-Status: GOOD (  17.22  )
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

On 19/08/2023 05:17, Sam Protsenko wrote:
> Add USB controller and USB PHY controller nodes for Exynos850 SoC.
> 
> The USB controller has next features:
>   - Dual Role Device (DRD) controller
>   - DWC3 compatible
>   - Supports USB 2.0 host and USB 2.0 device interfaces
>   - Supports  full-speed (12 Mbps) and high-speed (480 Mbps) modes with
>     USB device 2.0 interface
>   - Supports on-chip USB PHY transceiver
>   - Supports up to 16 bi-directional endpoints (that includes control
>     endpoint 0)
>   - Complies with xHCI 1.00 specification
> 
> Only USB 2.0 is supported in Exynos850, so only UTMI+ PHY interface is
> specified in "phys" property (index 0) and PIPE3 is omitted (index 1).
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/exynos850.dtsi | 30 +++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> index aa077008b3be..198d1dfcc672 100644
> --- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
> @@ -570,6 +570,36 @@ sysreg_cmgp: syscon@11c20000 {
>  			clocks = <&cmu_cmgp CLK_GOUT_SYSREG_CMGP_PCLK>;
>  		};
>  
> +		usbdrd: usb@13600000 {
> +			compatible = "samsung,exynos850-dwusb3";
> +			clocks = <&cmu_hsi CLK_GOUT_USB_BUS_EARLY_CLK>,
> +				 <&cmu_hsi CLK_GOUT_USB_REF_CLK>;
> +			clock-names = "bus_early", "ref";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0x0 0x13600000 0x10000>;

Please put ranges after compatible. I know that existing code does not
follow this convention, though.

> +			status = "disabled";
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
