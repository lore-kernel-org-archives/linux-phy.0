Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EA07CAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 14:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYH37gn5sxL6oQMshkN+qFT6A9q4fAWcZXjGLU3fnPU=; b=2tHJt/JIWfN4DY
	NuxievpTX6M2Sm/yrPy3oFAgcW3+NFKJB1q5Sf/f8zLHlUTQWOVJ82P4a64+LAn+9CuFyGPN2afTW
	wYezXFW1pKV+fOfSxE+zZqE06lw/yhoKd5k9uku6wneTXR+NEd2mbcAqXvmVuTtqVszcGaQJ4fZLj
	ioLfMGPhobSQoTybbfu3qIMuOxhbClfBbgBR8Oix8wu3KsubEBW/WCw/zKSWjAMQWJSQTKZ/nF8I2
	SVySFrmGM1Z/wTl3Iw4VojmQV3sxF/ecR5U0N2jUZqgZrMjT9ljCkW+4W5YeCt7JBGhsLmASQqC2I
	IM7jzsDNZbSIcITPAyrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4dE-00000009p5T-3pf3;
	Fri, 12 Sep 2025 14:20:08 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4dC-00000009p3P-49F6
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 14:20:08 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45dfb6cadf3so17820365e9.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 07:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757686805; x=1758291605; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=SmChZKjhh7WfaCiO6qYrnubA4AUjkq4py7dLEKKsD0M=;
        b=GuRk6XZDMncuKUn5Lx14Jrw9rEhk253Y7HpDmVjuee6VwsvtvVgh3tJ/9aPD91Vkz5
         qYr06DkTVqzgy4maeVjay5e8ZFldNtEFiQINPSCRgp0H1730E7W6DHNbQhRwyeMWVd7y
         tFcfAdv1BqJBCEVgGEmd4x2b6WCwBH8KFwX+uAHgzLrlnWl+YPN7dC926JyXTLXW7MvC
         fSi8raCD/bio7DZ9u5dQFwoJEpQf4HbmRRZGVimjtUdsEyQ/4O3T4ZoSOUO8zVCR6X2E
         t5RkCc5DALB9JAa5greE3oLitiZgtA9u4saGwnOsTVWHAI4jArtFhIuQe5lNVSjOgati
         QbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757686805; x=1758291605;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SmChZKjhh7WfaCiO6qYrnubA4AUjkq4py7dLEKKsD0M=;
        b=K2abpgTNE/V5g1LICtnL0mYJLkYq6KIV+LGcBYat8bqfDcH6+5oJwP0jc90kMWLbN4
         AKcleQMyG14ag1jtyMMj/OqLFPm6g0KQIEV00LwyyTsORHMYJDkcXfnsPCDpU2w2Cw39
         PzkEz78ttsrrqvnHsDexr7cXDCwDVwoF3qcDYE6vBrZz6UuhpnDNvna1YLnCO5VXxDfF
         50IxLDVZKKw4N4kTtHD0zxiC5Q+kTi5dL2YSqr+2Nfz6BCR/3niQ0dWD4hwHl/9dEB8Q
         tFQZsLSjSD17K1aoaP4kJ5feBM1/U8QlxWNW9b7fRjJjBlx/Dq9SGkYwvoR75p2w+tYg
         l1GA==
X-Forwarded-Encrypted: i=1; AJvYcCWosf/c1Ijpseb1hzmqdHdhmB1wzR6BTEtZGCqVXXid+zesoHcl/RWb9GlxQwCtHYAE01f6T8v2KAE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzl0HAF6LUz0+MMKdwc6d8RtgAC7Gr110Aafpe6AHnbFwCgBcLZ
	Ai5bmKXuLwDw31eLbRWxl7khpBGHGOc5Ro9WAzJqzUBg7AYgkhndKtFg
X-Gm-Gg: ASbGncujhoIWfChPi03T7seHuqF5qlsht2foKcwdfTjYR8dWxZhMIr9vG9a1wsZsw16
	6LXnyVDmccrCTSyRzXaMs0GnAOu/U2Zf+8NWZlQeHCfhenvEjTpjv1N1fd4luG+fwBIeDZYSYzw
	aLgsXPOroH8W1/E+g/vxTFUyz2ozCJd7P3VyxMAsVA1MzKeDkoUhJreH8X6ohIGBbiKr3zcswU1
	TbiCVc2kIsmSo+ZjNy7dTPU07MEbbxo1L4UOKIdDV1Lg9kbmboK6YrZXXoTi/e1EpSnhVqzAQp/
	goNRhsJG6BmA1rQDRUIUJmNEFtV/u37qeQdyjFeqeR3bZYFzWtHGg/yKHi8eFM9D6P3sYqgo0ru
	iTnv4WZN6/ytG0qCpDHzZV9Z8yUATeEp8UeRB+58S2w==
X-Google-Smtp-Source: AGHT+IEKyinmwbN3yHvqC2TBvEPXOSoCWcr50U1b0sgHZon43u3EkY1RVzIl5661xTla3PsOT681zA==
X-Received: by 2002:a05:600c:5254:b0:45d:f55d:3478 with SMTP id 5b1f17b1804b1-45f211e610fmr36884815e9.17.1757686804707;
        Fri, 12 Sep 2025 07:20:04 -0700 (PDT)
Received: from [192.168.2.177] ([91.116.220.47])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0372b983sm63475385e9.9.2025.09.12.07.20.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 07:20:03 -0700 (PDT)
Message-ID: <c3d9cdfb-6cfe-41ea-830b-3ab0f6ebcd5f@gmail.com>
Date: Fri, 12 Sep 2025 16:08:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/38] arm64: dts: mediatek: mt6795-xperia-m5: Fix mmc0
 latch-ck value
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
 <20250724083914.61351-21-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <20250724083914.61351-21-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_072007_048605_D2671854 
X-CRM114-Status: GOOD (  13.81  )
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
> Change the latch-ck value from 0x14 to 4: as only bits [0-3] are
> actually used, the final value that gets written to the register
> field for DAT_LATCH_CK_SEL is just 0x4.
> 
> This also fixes dtbs_check warnings.
> 
> Fixes: 5a65dcccf483 ("arm64: dts: mediatek: mt6795-xperia-m5: Add eMMC, MicroSD slot, SDIO")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Applied, thanks

> ---
>   arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
> index 91de920c2245..03cc48321a3f 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
> @@ -212,7 +212,7 @@ proximity@48 {
>   
>   &mmc0 {
>   	/* eMMC controller */
> -	mediatek,latch-ck = <0x14>; /* hs400 */
> +	mediatek,latch-ck = <4>; /* hs400 */
>   	mediatek,hs200-cmd-int-delay = <1>;
>   	mediatek,hs400-cmd-int-delay = <1>;
>   	mediatek,hs400-ds-dly3 = <0x1a>;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
