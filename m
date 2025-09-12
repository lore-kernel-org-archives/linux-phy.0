Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4C3ECA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 14:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7urWaEFhOc30Qm52o2ezXVH/SQy4k7Hn56chkdycKtA=; b=NV2yqx45dEo1y8
	OcZeKaEKToqq+OQaDdswwUUKe0SK164ynmgIXSzedCGXss9M752sHePN7N4sU8b3kugIFlYqSASTP
	iyp2wdXQhnYHT7QXax5oQq2l2aFuz9AJ1qB4/BTaZFr6Csp2Ic7Al8ShPLyQbgY3TINQj/byml8I1
	rqJd46OJWAi/blo7p5cgr3Fp5TG4+ttv6mL6Z67c6KoDngSu8qwBp7Gf44TecCEiQ39aVo9Na9QOV
	qLehIWbytlbtOSGSqVwBiYlf8+zM7WJi55XNe+s9z0Es8ur95v61HsowEa5bZK9B+zfM2pk6rPQ9Z
	3ogovKLtI+jCT03hwfQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4Nq-00000009jMU-2sho;
	Fri, 12 Sep 2025 14:04:14 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4Nn-00000009jIc-0ekq
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 14:04:13 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-45de60d39b7so14476505e9.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 07:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757685849; x=1758290649; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=APfeXdHVZlvAUzgVrSDnbec2WkFzD9WkVF8lv6dWx7A=;
        b=HvNBanm6HrfjcOAift4+x8uRMpLzajeZTsFLKPpll52c2aCil0MJikNJ2CsXxSwmqf
         xpnkafcVrzmuOGRgsJD9y/SdEEHs4//jRl8CB9vk++gyQbg0MGYBD2ZB08YnkKjfzfAF
         tiJjiFxLtt4C3HNjk8r2SWtMlLyVO2bjf718bVbgjFYQxoSxTeUXdRl5P+3fAEo7IfPj
         OOvkhBIDOt90TZZlEo/XTLJUsep6PghgQLAKy/NieWThnoDNIwiyGQW4iJDarTCf66c1
         s+J0QP6KZEJo+uIRpERqTXSa+VHSP4c2fZANC0cHVaQZxQIr+oyLOCLTlwjBtdc7BH44
         5hIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757685849; x=1758290649;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=APfeXdHVZlvAUzgVrSDnbec2WkFzD9WkVF8lv6dWx7A=;
        b=e9IbF130I99DRg0IRGmlmDlsHIZT/jE/g9pe+Mj+1y1hx/QYwmT4u/rChawiIw72ad
         AuUR7p1zPFjEwYG6tj/tORvnzulzBfr+nksCwBPN9oLXdas/E9eIb6uguDGIlsgvS2EW
         SzQJTOJpFKHzyARRsYJhHxL69Pn4ewj3gwV3PElpXUOAYYpOvCKBlfEnceQcgeITJQM0
         K7+/+UjdeLWNtBSHoSFpY+wrNjwhyhGwCGwWJ5EFeJgiF9iQZsgVm22jTjTghabtqFtN
         0IES1Z/FV58qGxIaggRLByLxkOyUVgYpZ8GNFPVxOrW+XfRM8zus2ihuLQWL2mVTkvUf
         TA+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXB7ueNTW4Qp7MgvLKT+lOxqIhqivbRpUjVMMUC2GNV6TVof2yrzwAP7g4iFD0FLPWPqCydnSzePNU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3wFuPQmQMteHbEXdBLpeLJ0YeMFL1MImZTt8mdFsRNfJHflZj
	J5WSpy3AtazHhHhRMlAUPKmQvD5DtVzAIR7a1MFeoHARNM3wUapHxH2q
X-Gm-Gg: ASbGncv64G6+czVSeWJQK5GJetiJTR1/xYW8amFD6FdRv0ssr2/DF2yGUiZxETOv8gd
	sC3egLkdqBfO8UPd2GIcFWkEHw4Ravfz2RGzVPPkU7PUy0rTdbPUO/N0c7KTiCDKm47VxYbIcRb
	BkSPp94OZ2fviDDQuDXnm2Z0ky4yrZWBO1yPjEqlgZUb+WPSpfCu8A9o0ZhhK6krPfSvO9PYs15
	aSk0bI+lMnPOa3dM54uo69gn96ykLc8kiOEJR2yQbcxWXbZa1gl29LQjWwwKWg+oS9rnaTZJvS8
	vPN50ujWAHLKbI3aVhzygu00AwbjGbXq5xAxAD1y+VTxYZhWxAwZ1TEGDpX0F23odT2X/nOtnp0
	K0tU05Y2QQmvZvAMdc1v9xyY7tmJqWgZ1J77oc7Vl+g==
X-Google-Smtp-Source: AGHT+IGthAq77EqTSVIscxbyWVF+jFSi3b1ESxcW24z9DM4Tl2GZ2DYvuqU47ZXwpi1f2I9Iy1R0Ew==
X-Received: by 2002:a05:6000:2012:b0:3e7:441e:c9e1 with SMTP id ffacd0b85a97d-3e765793127mr2867583f8f.18.1757685848735;
        Fri, 12 Sep 2025 07:04:08 -0700 (PDT)
Received: from [192.168.2.177] ([91.116.220.47])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e760777a0bsm6704897f8f.13.2025.09.12.07.04.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 07:04:07 -0700 (PDT)
Message-ID: <03402a44-7025-4e31-9ead-a2ecbf63f325@gmail.com>
Date: Fri, 12 Sep 2025 16:01:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/38] arm64: dts: mediatek: mt6797: Remove bogus id
 property in i2c nodes
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org, robh@kernel.org
Cc: herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org,
 conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
 airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com,
 mchehab@kernel.org, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, sean.wang@kernel.org, linus.walleij@linaro.org,
 lgirdwood@gmail.com, broonie@kernel.org, andersson@kernel.org,
 mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, tglx@linutronix.de,
 atenart@kernel.org, jitao.shi@mediatek.com, ck.hu@mediatek.com,
 houlong.wei@mediatek.com, kyrie.wu@mediatek.corp-partner.google.com,
 andy.teng@mediatek.com, tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com,
 shane.chien@mediatek.com, olivia.wen@mediatek.com, granquet@baylibre.com,
 eugen.hristev@linaro.org, arnd@arndb.de, sam.shih@mediatek.com,
 jieyy.yang@mediatek.com, frank-w@public-files.de, mwalle@kernel.org,
 fparent@baylibre.com, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-gpio@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-sound@vger.kernel.org
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-19-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <20250724083914.61351-19-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_070411_241753_01A8FE4B 
X-CRM114-Status: GOOD (  12.38  )
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



On 24/07/2025 10:38, AngeloGioacchino Del Regno wrote:
> All of the I2C nodes in this devicetree has a bogus "id" property,
> which was probably specifying the I2C bus number.
> 
> This property was never parsed and never used - and besides, it
> also gives dtbs_check warnings: remove it from all i2c nodes.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Applied, thanks

> ---
>   arch/arm64/boot/dts/mediatek/mt6797.dtsi | 10 ----------
>   1 file changed, 10 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt6797.dtsi b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
> index be401617dfd8..f2d93bf6a055 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6797.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
> @@ -285,7 +285,6 @@ uart3: serial@11005000 {
>   	i2c0: i2c@11007000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <0>;
>   		reg = <0 0x11007000 0 0x1000>,
>   		      <0 0x11000100 0 0x80>;
>   		interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_LOW>;
> @@ -301,7 +300,6 @@ i2c0: i2c@11007000 {
>   	i2c1: i2c@11008000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <1>;
>   		reg = <0 0x11008000 0 0x1000>,
>   		      <0 0x11000180 0 0x80>;
>   		interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_LOW>;
> @@ -317,7 +315,6 @@ i2c1: i2c@11008000 {
>   	i2c8: i2c@11009000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <8>;
>   		reg = <0 0x11009000 0 0x1000>,
>   		      <0 0x11000200 0 0x80>;
>   		interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_LOW>;
> @@ -334,7 +331,6 @@ i2c8: i2c@11009000 {
>   	i2c9: i2c@1100d000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <9>;
>   		reg = <0 0x1100d000 0 0x1000>,
>   		      <0 0x11000280 0 0x80>;
>   		interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_LOW>;
> @@ -351,7 +347,6 @@ i2c9: i2c@1100d000 {
>   	i2c6: i2c@1100e000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <6>;
>   		reg = <0 0x1100e000 0 0x1000>,
>   		      <0 0x11000500 0 0x80>;
>   		interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_LOW>;
> @@ -367,7 +362,6 @@ i2c6: i2c@1100e000 {
>   	i2c7: i2c@11010000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <7>;
>   		reg = <0 0x11010000 0 0x1000>,
>   		      <0 0x11000580 0 0x80>;
>   		interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_LOW>;
> @@ -383,7 +377,6 @@ i2c7: i2c@11010000 {
>   	i2c4: i2c@11011000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <4>;
>   		reg = <0 0x11011000 0 0x1000>,
>   		      <0 0x11000300 0 0x80>;
>   		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_LOW>;
> @@ -399,7 +392,6 @@ i2c4: i2c@11011000 {
>   	i2c2: i2c@11013000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <2>;
>   		reg = <0 0x11013000 0 0x1000>,
>   		      <0 0x11000400 0 0x80>;
>   		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_LOW>;
> @@ -416,7 +408,6 @@ i2c2: i2c@11013000 {
>   	i2c3: i2c@11014000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <3>;
>   		reg = <0 0x11014000 0 0x1000>,
>   		      <0 0x11000480 0 0x80>;
>   		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_LOW>;
> @@ -433,7 +424,6 @@ i2c3: i2c@11014000 {
>   	i2c5: i2c@1101c000 {
>   		compatible = "mediatek,mt6797-i2c",
>   			     "mediatek,mt6577-i2c";
> -		id = <5>;
>   		reg = <0 0x1101c000 0 0x1000>,
>   		      <0 0x11000380 0 0x80>;
>   		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_LOW>;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
