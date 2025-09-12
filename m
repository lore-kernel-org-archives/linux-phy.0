Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95F58CA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 12:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKcRmCMcAY3o1UaiI7OZdfUFIa+rd+q4nAP5/DvLA8Q=; b=Y1C3YvrWiRUnyN
	lOq4d/MmU97tMhaCkAV+bYmcM7QzcITjhqjI3wHpo8B9iOHQxTHDq18S2b7Uce2YYsnob+Jeik4v/
	/clLN4QMNWy9LdTPTcyGjsFroG4h8gzNpxdhP4HEHsTdRYmpFMdKpyvIczYDPAYvebfz40yY2kgFe
	KfbYXwCFZBSbZ5BBu+WI3L7f8siU2iLfjzblBYZkGAC4pMWDOW1dS1WLw5DRc7kVVRN75pgX/nlfi
	yxtup0/rlb1sL7o9xPJTgc180iCUWTh5TWZv8krNuRsh/Njx+f/0SVYI6zO4ob3Pmc9FYe+pzjqIf
	8Ohz2aDQ1DsnpwgCGDfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2gY-00000009AA6-1Tjo;
	Fri, 12 Sep 2025 12:15:26 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2gV-00000009A6i-16IT
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 12:15:25 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45dd5e24d16so17488825e9.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 05:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757679321; x=1758284121; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/srPpowhb2Rd3xZftod1YxdED+npJM3nXqMeune3iHw=;
        b=c3BMBGMbbs7x/ghEAmou628lSqTkeRJdJroJyEpzkTgsrsEtqL7QOVLCgoOfzSDHzW
         SStQOhHR4xDELrTYkOCqCydEHEErxvyRW+pxK/PVkuMkm++qiJEfuC3MW7CAwhcnhyQV
         zEe2OPO9NIdV2y3RCCxThlWTAZJBQvY1dJ3M3o2knxv/iM1j6sU8rZ6OPJDuDjNPxioU
         +daywxT3O35Zm/KubalqStuguoSIqARelOwB6KFpAAcYsI+UqJgtcykJM/GjKaMS4nud
         uEoq9eNKfm/AbBQ2jM6atSqHy9TsnscFdj2cVVYInqdAT27rv4L72ZzowDdypLKUixkZ
         V6Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757679321; x=1758284121;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/srPpowhb2Rd3xZftod1YxdED+npJM3nXqMeune3iHw=;
        b=vme0CQ0Iy6r1hPl8xwjpgvrfxhqdAZ/MTC/6yJwdvsI41zj5p4oUqnUCF5CiAoMC/z
         mdjG6M1mhaXsP7vRxsmVt7dok0Qc5SyvdAEQHj43UVXKswXT6Vf5qeCY/kVC63k6/Vcy
         kNnSp/ZD6vYwZFOI/Qhwn26J4bPOLrrJEdY6r8DMXeDvegRpg6YfIutDxPBcYdhh8nRW
         ch4IdJ8gHesmISf0o4E0FnCpdd4hhGRYAJluAYhkZsvPG/hrJO7COCPbNrgF8Jc6q1St
         LBUmYcJlP41S9/tsZbPbGuAKXGLwK6pCSFeRlJy+gNN8dbayWHQN1E+BExyJ6G16lUdl
         b9xw==
X-Forwarded-Encrypted: i=1; AJvYcCUu4u5YL7VU5pp6TfxtakwqwaByEWDWKZ8lZUqsBtRYOH2W9zKUe10mIqGgzkh6ffHrL/fuUo4W2qM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0pM6xF7Qfodu7rur/McMyPh52hyqaRvelKCTcaIGqBvcZtc5A
	sSu3v3ZrUgVwKbRtlTA8lDluWbDiRe0zVMKCiWTcZtd6iV+uz8xjRoFH
X-Gm-Gg: ASbGncuXRDYLnjQjR5AcG5OrkiAa0xLFKT81JlJhLUSQBHSy+1xicuPygd8ZqI7Txep
	UwqX1KeIy7N9Pdpkn75C2fmDOj9hYZ2e7S9T7j9xxZoyF/vJ8GdBuw83zLnwB0XTbdRXgktk5KB
	y47yQSYJmL0RJd+ySq0sQYbGWiG1rzrYJQT3cu+rfjB49tvk2PUfQ3wdyPUKPPfoDsm1rpNLKrm
	Hx84BkkgJXus5thTImBC8awR8y+vP9n+s0RqgbTS1/Xu+ns9yUGmXFir/Jf0xbsMa7hx/kPK4iD
	F8PmkE78OsWvmI97HJADJqumWHDWgrC3MBoQeXmVAw+irXruY+zmB7ssNn9dw1yKr51E683D1R1
	cx3jNv7CCKg8/W9pTY8dCZ9aJGoa0xQEyEHGKKRmayw==
X-Google-Smtp-Source: AGHT+IGIxBQJvu26XPDraDpHngv5M2mh4tNdsWBgU5C0XbLsDwBWpNfV2Gw3xU49DrV3xmpQUcJgTg==
X-Received: by 2002:a05:600c:34d4:b0:453:2066:4a26 with SMTP id 5b1f17b1804b1-45f211d008dmr41374065e9.16.1757679321068;
        Fri, 12 Sep 2025 05:15:21 -0700 (PDT)
Received: from [192.168.2.177] ([91.116.220.47])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e015313aesm36545605e9.1.2025.09.12.05.15.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:15:19 -0700 (PDT)
Message-ID: <1e17b875-7eb1-440d-a349-30cbc3e4358c@gmail.com>
Date: Fri, 12 Sep 2025 14:15:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/38] arm64: dts: mediatek: mt6331: Fix pmic, regulators,
 rtc, keys node names
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
 <20250724083914.61351-17-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <20250724083914.61351-17-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_051523_336034_3D7F3E46 
X-CRM114-Status: GOOD (  13.06  )
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
> The node names for "pmic", "regulators", "rtc", and "keys" are
> dictated by the PMIC MFD binding: change those to adhere to it.
> 
> Fixes: aef783f3e0ca ("arm64: dts: mediatek: Add MT6331 PMIC devicetree")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Applied, thanks

> ---
>   arch/arm64/boot/dts/mediatek/mt6331.dtsi | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt6331.dtsi b/arch/arm64/boot/dts/mediatek/mt6331.dtsi
> index d89858c73ab1..243afbffa21f 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6331.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt6331.dtsi
> @@ -6,12 +6,12 @@
>   #include <dt-bindings/input/input.h>
>   
>   &pwrap {
> -	pmic: mt6331 {
> +	pmic: pmic {
>   		compatible = "mediatek,mt6331";
>   		interrupt-controller;
>   		#interrupt-cells = <2>;
>   
> -		mt6331regulator: mt6331regulator {
> +		mt6331regulator: regulators {
>   			compatible = "mediatek,mt6331-regulator";
>   
>   			mt6331_vdvfs11_reg: buck-vdvfs11 {
> @@ -258,7 +258,7 @@ mt6331_vrtc_reg: ldo-vrtc {
>   			};
>   
>   			mt6331_vdig18_reg: ldo-vdig18 {
> -				regulator-name = "dvdd18_dig";
> +				regulator-name = "vdig18";
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <1800000>;
>   				regulator-ramp-delay = <0>;
> @@ -266,11 +266,11 @@ mt6331_vdig18_reg: ldo-vdig18 {
>   			};
>   		};
>   
> -		mt6331rtc: mt6331rtc {
> +		mt6331rtc: rtc {
>   			compatible = "mediatek,mt6331-rtc";
>   		};
>   
> -		mt6331keys: mt6331keys {
> +		mt6331keys: keys {
>   			compatible = "mediatek,mt6331-keys";
>   			power {
>   				linux,keycodes = <KEY_POWER>;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
