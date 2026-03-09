Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABA7DF417F1
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 14:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQcwnxIZ0BDzS9P82hByb9qOJi2taWmVQsKiwwQP+wU=; b=01bDIL7YjwYsxt
	0mRAx7mikyeitTGkM//J4jH0/nUVZGZ4sFIOHhSfcVgrorhuLcuV1NtjNSjld4YHmBnTWYRI12xNW
	2+3c9Bv1+2Jn+cb5jjBTz9vPFYBsd3wLMY0BDZJZadUVlLcLLN7ByfytKg0UeccoHLZ0GyBRjAhnd
	z08QFuLJI7jTscYnTDl7m8De9F/oAbXQIas8svO8rYg7MnfEthwPAjfuzB6NI9htsLkpfosvDYxa4
	qVvUtsb+v0UoEa5jQBp5HZ8frruPu68NzWF+dfkjXaRwaLX0lMTEj0FpZYbVL6KTzgVPa95iGD6Wh
	ybInSbRGl45ReACt7Cow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzc0r-00000007Wgy-1BY7;
	Mon, 09 Mar 2026 14:55:17 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzc0o-00000007WgA-3Ck6
	for linux-phy@lists.infradead.org;
	Mon, 09 Mar 2026 14:55:15 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2ae82df847bso20537245ad.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Mar 2026 07:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773068113; x=1773672913; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N1i5e7Q8gFbJD5fnK2/pRPBASYfAfCYgjknfSgkScnQ=;
        b=b9sUje2EJmyZOgaw55hxyL76Ff34nFWYcpD17cFtfmWIJq6cyVNMuME+GbzCBkFoB6
         DaN19Fxlhe7vQWa0ygB9KnhNCFinXz0odpE0V4bW1pdbWkhRuBGaqOd57fEl6oPE4QjY
         H6lvqkCAq5hndvC2fm4JuWQM3G7X3fz9wBHCKyDZNZaUitZBN/KelKw2x4ba/8f5wDME
         hX3V9gSun4sRVQcPuUlLYSH0KLc9U/HmIPBcMbcNiXOUviPPYcW+DlKkUI+hjP4MreOr
         tMhF2Cj1hPGoYfji8GtXokSb0u/vpsBvdsLpEg/7KQSKCZpuuI6/IojgCAqWHOdMguZB
         pUkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773068113; x=1773672913;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1i5e7Q8gFbJD5fnK2/pRPBASYfAfCYgjknfSgkScnQ=;
        b=lCNm8WPNae4JEBTRmaru9MTIt8/jp9thyl+F5v2i67Y7pt9Kx1pX7a1Fdhz5KHGTBm
         pCfs3X4Ixr00vf3KI1ml8IFiBz3FIfrMeLLxKjbZDyE2ceTd+TyAKGaJ/MPr95SdpT2x
         tf+O0eAuVTNhJEFhVxIhCT3L3y7vyIqJ6ZE1GRpMK4E9f4aBGttiJGf+AS3k9e/vlv9Y
         ddDQzz9apTVjruHWTqg0TFFbPsz/nnvmrHo1BZfr+8u2jriLb2GcEl6B4WHnnJop812O
         h6BX3P6tSiUXc/cy/AqeI/MgloEoY/mgUkIv8wj7KZJ1pk2527GqE+/ZMo1VJM3R1R62
         Vb0w==
X-Gm-Message-State: AOJu0YzxCYa0UTZO0IlsK1aLGmOySOC3z0WtU5yOuzPYqK3IIbGxFj7K
	xv4pZDDrhj1pcaX11im3Ytv2yg7ZS/QQSQ/MY/9aHxLNerGHQNSIoMQi
X-Gm-Gg: ATEYQzz9edGUpYKGvwlZxG1bKEOhTeTwF44bzL8HwALOOsAEPKxZ3NTFfz1hCdl8vNJ
	JognBN96MDTYrwFb5W4BqOaJ/u8o/bWKcXIR83goU7D3/FflyEwy+Fb9h0WLKSaoQYt5REAwUUg
	FSEbzONMNnUDzcQhQLoHIM1omhngMHpanEoZyLWN7bz1RV43W+10/phWHAezAA+2TSv+t+rebiG
	HJ/eMtpsIRGjpGcLBwwTE5h7VKjqkb10sLxTyl64vNq8sO+k0nB9o+udspbpLRPbSdDFjiC4JFR
	AgDIzaeZ4GWM+5T+wqtie3pNWexk9cikC+4rV0GtqqR40k3lpiLx0QTqQixe/kaO+2GkYqsBodF
	OJFhZsJ6QZySaKNae/uJJWIwLjhPb1Bd9995uTVIjhsbzDTguzL5XGbbMgXQ0O+nrk6sxFLGVTp
	vKa0qIPLp4EL4dJrXUXIhRZnPuJM5jFZGqc+tnJl72mirv4vPvo8eHIjg=
X-Received: by 2002:a17:902:ce83:b0:2ae:45bd:9b39 with SMTP id d9443c01a7336-2ae82416b18mr115119055ad.12.1773068113255;
        Mon, 09 Mar 2026 07:55:13 -0700 (PDT)
Received: from [192.168.1.6] ([27.7.215.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e584aesm115567155ad.3.2026.03.09.07.55.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 07:55:12 -0700 (PDT)
Message-ID: <afd2974b-fd6a-4d2c-831f-ec2e6e656a98@gmail.com>
Date: Mon, 9 Mar 2026 20:25:06 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] arm: dts: ti: omap: align node patterns with
 established convention
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
 <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_075514_868820_8031ADD8 
X-CRM114-Status: GOOD (  14.47  )
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

Hi, 
This patch from this series is still not yet picked to apply.
The dtb_check will throw errors to the YAMLs in this series if this clean up patch is not applied.

On 23-01-2026 21:09, Charan Pedumuru wrote:
> Update OMAP DTS node patterns to match established conventions.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  arch/arm/boot/dts/ti/omap/dra7-l4.dtsi  | 4 ++--
>  arch/arm/boot/dts/ti/omap/omap4-l4.dtsi | 4 ++--
>  arch/arm/boot/dts/ti/omap/omap5-l4.dtsi | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
> index c9282f57ffa5..ed206eb84d02 100644
> --- a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
> @@ -328,7 +328,7 @@ ocp2scp@0 {
>  				ranges = <0 0 0x8000>;
>  				reg = <0x0 0x20>;
>  
> -				pcie1_phy: pciephy@4000 {
> +				pcie1_phy: pcie-phy@4000 {
>  					compatible = "ti,phy-pipe3-pcie";
>  					reg = <0x4000 0x80>, /* phy_rx */
>  					      <0x4400 0x64>; /* phy_tx */
> @@ -348,7 +348,7 @@ pcie1_phy: pciephy@4000 {
>  					#phy-cells = <0>;
>  				};
>  
> -				pcie2_phy: pciephy@5000 {
> +				pcie2_phy: pcie-phy@5000 {
>  					compatible = "ti,phy-pipe3-pcie";
>  					reg = <0x5000 0x80>, /* phy_rx */
>  					      <0x5400 0x64>; /* phy_tx */
> diff --git a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
> index 4ee53dfb71b4..d8b16cbe6c35 100644
> --- a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
> @@ -72,13 +72,13 @@ scm_conf: scm_conf@0 {
>  					#size-cells = <1>;
>  				};
>  
> -				omap_control_usb2phy: control-phy@300 {
> +				omap_control_usb2phy: phy@300 {
>  					compatible = "ti,control-phy-usb2";
>  					reg = <0x300 0x4>;
>  					reg-names = "power";
>  				};
>  
> -				omap_control_usbotg: control-phy@33c {
> +				omap_control_usbotg: phy@33c {
>  					compatible = "ti,control-phy-otghs";
>  					reg = <0x33c 0x4>;
>  					reg-names = "otghs_control";
> diff --git a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
> index 9f6100c7c34d..5c94db589dd1 100644
> --- a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
> @@ -472,7 +472,7 @@ usb2_phy: usb2phy@4000 {
>  				#phy-cells = <0>;
>  			};
>  
> -			usb3_phy: usb3phy@4400 {
> +			usb3_phy: usb3-phy@4400 {
>  				compatible = "ti,omap-usb3";
>  				reg = <0x4400 0x80>,
>  				<0x4800 0x64>,
> 

-- 
Best Regards,
Charan.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
