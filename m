Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19FECCA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 14:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zcOunx3BNmSunrm1UucIRN3tdyrYYd83k7EhjW9LxY=; b=FXOnL3MUQngJnr
	c0yb+r23DP/EYLlYWo1CiENYVJMAQI9/+TZL1Wz2qknD8IdVeC6puaOy5dquzVlfIfQD0Vf4xM+0W
	Nbv2KWl2OxY+xGsM/1Jh41JLO92bE6A6VmiHn5gI8gufrIuGGHtj+VvMCy6JYwdmKj3U3KrDAFIMD
	2wLJrNnAXpUqmfLmEF7BADYus0foXI/oSVSymrx8H88kaYz5ABFPd7qNFtjL74MSUQYd0Hd4OL1Js
	YuZYRmJfVAIJCIWL3IX3Eamt81l5YhTOk+rNtQclSZATOLz4J/4uzDsnnXGY3kFYi13cJUZ50v+Tx
	+syyV7AFyPLNJuyKaG8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4dM-00000009pBM-3bJl;
	Fri, 12 Sep 2025 14:20:16 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4dL-00000009p9t-1fB4
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 14:20:16 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-45df09c7128so16337145e9.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 07:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757686813; x=1758291613; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Zo6qWVc0jZZmv8jDaeRnPGtja64w2ge7orZf47CFJn8=;
        b=Jp5s3PJmwB30RutuoMXHfbRn3Nj/73yXGJEo99bQA05dcOqR/YiUMHiRTbAc89s/NF
         +77pAwMAQkgnn6f0YH4JNitiOmYRpg2DyNck5hTP/SCbvhtD1NohwBpt/gGN556vAQKx
         SZfBEnJBqOTG90Q0ieIlyZjffnULSeldm+xRYxsvwkmyl1GjtKKPSIfv4D7jcbDLR6Q8
         eXWduJH1XyBxQO1ZPNZ/aukSpT2vqWkaTGWrHKEHLgSv+Duj/dyxeQW7pZ8M/YPKOCFC
         aNbDUHFqosgpRNPWTRcpvW89rQ82BXCK6OeGBDY9sUDmcLZzEas7epvAdafTdSDNycJx
         Bqgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757686813; x=1758291613;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zo6qWVc0jZZmv8jDaeRnPGtja64w2ge7orZf47CFJn8=;
        b=eDQzgQhmrFEB+gbXWk3ozEtby3VDw0lw/gwdh7wyc3g0agpxWfg9TCDdrJj8edFSET
         bNuxeem3qThNkZdmh8bP227LbFvY5e4fJNwCUBXXSzUUMjdaje4XWb5jod5DSNLsNPLR
         JMLkyeqaLhlN2MC7HqPCjHnaLEdsFBVV0rjOrjbYP78ZwC3GN8U4v/+JzyYjZwNS7ON+
         oegMxcpXLvY7Lryb/owIjVEUKF5j/w1IKu3NseEd+o1JArkK0Ie4Iq8VviuZHMZ1nG+G
         XDjCG75zAtFkaZelYhhBi0Fko0rDOP5ryes0P+Y3kc7t0zQDvtEPwu5Kk65ncL3SRwi1
         aRnA==
X-Forwarded-Encrypted: i=1; AJvYcCXP5np0IexMr2FvfwQcC7Pw1WNlcT/NbNmgEOd03Y0zv3KPhCKkWYXfUVk0K+cogIhbKb36mzuT4ws=@lists.infradead.org
X-Gm-Message-State: AOJu0YxafKY/zm/7J6S94YNxAESqYk+dkv4R7P1WkZ4WXWvSkWA+u5/D
	FS37UeF/6DscoAjoc2In4JS4X63+7ZqjQiWTbGPJK9GCCNoqpHEQiZnO
X-Gm-Gg: ASbGncsElC9sbIuzDH4TDrEKKZ/MtA7UzYltsL8MktFWFn8Sun9BH4kvIHxDa+qg2jB
	z5wsM82EHEYONGY1hpmNL+sZjIhgthWxyN/Qy+4dt+HEBvcbw2A8AntQlN+li3WNNrdi1PW1ssi
	/w6Et5gul/xpqKbv6a4hvYV3Z1Q/AD9i6RlsisKVCurn7+xynXegO3LSsTDrzvQf4+thBj2Vh0F
	GbkEKxmUHWG0Bjr8ZXETFIspWMohEzLOyCHe9SG9xzt1KzcV7n52uvm6ZQtrUa5xReCjGf41z1V
	socAE0tHa53uyIqi2fubzcPwjqRDJl4A/fNTMIpw2ffkI158gVzlhavu8jMzSjki40PFj6ppMnv
	7um87nb1rfCm+vUxuoyfgQBpKiwQHpFA=
X-Google-Smtp-Source: AGHT+IEYiPOKWB+0nvhix6TOxrJpFoMyLdNoRjDPkAz1Qots2CwSj1hz+7mDLBhL/v2fign1H2JEQQ==
X-Received: by 2002:a05:600c:6610:b0:45d:cfa4:ce10 with SMTP id 5b1f17b1804b1-45f2128d4c1mr29424165e9.10.1757686813242;
        Fri, 12 Sep 2025 07:20:13 -0700 (PDT)
Received: from [192.168.2.177] ([91.116.220.47])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0372b983sm63475385e9.9.2025.09.12.07.20.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 07:20:12 -0700 (PDT)
Message-ID: <bde30144-0c57-4d34-b6cd-2a53dc099bdf@gmail.com>
Date: Fri, 12 Sep 2025 16:12:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/38] arm64: dts: mediatek: mt6795-sony-xperia-m5: Add
 pinctrl for mmc1/mmc2
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
 <20250724083914.61351-22-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <20250724083914.61351-22-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_072015_483627_7AFA5E06 
X-CRM114-Status: GOOD (  14.10  )
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
> Add pinctrl nodes for the MicroSD slot on mmc1 and SDIO Controller
> on mmc2 and assign those to the respective controller nodes.
> This makes sure that all of the pins are muxed in the right state
> and with the right pullup/down(s) before trying to use the mmc
> controllers.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Applied, thanks

> ---
>   .../dts/mediatek/mt6795-sony-xperia-m5.dts    | 38 +++++++++++++++++++
>   1 file changed, 38 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
> index 03cc48321a3f..fccb948cfa45 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
> @@ -227,6 +227,8 @@ &mmc0 {
>   
>   &mmc1 {
>   	/* MicroSD card slot */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc1_pins_default>;
>   	vmmc-supply = <&mt6331_vmc_reg>;
>   	vqmmc-supply = <&mt6331_vmch_reg>;
>   	status = "okay";
> @@ -234,6 +236,8 @@ &mmc1 {
>   
>   &mmc2 {
>   	/* SDIO WiFi on MMC2 */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc2_pins_default>;
>   	vmmc-supply = <&mt6331_vmc_reg>;
>   	vqmmc-supply = <&mt6331_vmch_reg>;
>   	status = "okay";
> @@ -311,6 +315,40 @@ pins-ds {
>   		};
>   	};
>   
> +	mmc1_pins_default: microsd-pins {
> +		pins-cmd-dat {
> +			pinmux = <PINMUX_GPIO171__FUNC_MSDC1_DAT0>,
> +				 <PINMUX_GPIO172__FUNC_MSDC1_DAT1>,
> +				 <PINMUX_GPIO173__FUNC_MSDC1_DAT2>,
> +				 <PINMUX_GPIO174__FUNC_MSDC1_DAT3>,
> +				 <PINMUX_GPIO170__FUNC_MSDC1_CMD>;
> +			input-enable;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
> +		};
> +
> +		pins-clk {
> +			pinmux = <PINMUX_GPIO175__FUNC_MSDC1_CLK>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +	};
> +
> +	mmc2_pins_default: sdio-pins {
> +		pins-cmd-dat {
> +			pinmux = <PINMUX_GPIO100__FUNC_MSDC2_DAT0>,
> +				 <PINMUX_GPIO101__FUNC_MSDC2_DAT1>,
> +				 <PINMUX_GPIO102__FUNC_MSDC2_DAT2>,
> +				 <PINMUX_GPIO103__FUNC_MSDC2_DAT3>,
> +				 <PINMUX_GPIO105__FUNC_MSDC2_CMD>;
> +			input-enable;
> +			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
> +		};
> +
> +		pins-clk {
> +			pinmux = <PINMUX_GPIO104__FUNC_MSDC2_CLK>;
> +			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> +		};
> +	};
> +
>   	nfc_pins: nfc-pins {
>   		pins-irq {
>   			pinmux = <PINMUX_GPIO3__FUNC_GPIO3>;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
