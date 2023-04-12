Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73F80C77B73
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 12:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2julO2F2RbhHTcIhD9vb6AZ3UqyBIg5xNzsgRfrYV6s=; b=a9E3Z9ZAWTE9SN
	jf3iGLyshuckMqu1dLy1jcl/A6PGoWezBVbf7h3s0YRJtvL+SQbk2BiiTgyoUpzX+/znVBw+kCVYW
	InyBSlFcQPJDhPiVK9rDxfArU8CZWKg74Hhkwp1LX5ciQeljoVA3EbDbw2tyOtb86Q2bkgzeM4gpD
	WFBqxuyjWWIqqSLmhYzoABFXt+A6AEHZozOQ/CvfNrNU4I08bQCKsSWpocAUZynmPiS6w+aUUAprm
	TbxscPaa61+3olATlI6nS/nbRp3mCdn+L0B20p1Nz8N9WKDW+MoJjQyiwmY0gHNeLZEmeYGuZBBYF
	it9RUXhJvTzVI0CFWQfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pma4S-003F7J-0R;
	Wed, 12 Apr 2023 12:59:32 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pma4N-003F5d-2b
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 12:59:29 +0000
Received: by mail-wm1-x335.google.com with SMTP id eo6-20020a05600c82c600b003ee5157346cso8006960wmb.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 05:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1681304366; x=1683896366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=erBuPeVrzFlZV2m3GTCAkkOKGldewGoCCeiRWUfnelM=;
        b=F3QYxAcPMEMt/kGu/5NByv+dQTgXrV0wu04xUscbtGXnLbiLeFOS1KcmYiIJBCWHYW
         7oGqnSz3qQQfm6CBdfszFSm6BbyNqp4yyoHQrIYbFACnz6HblmyOWwRe0nwB4lKOZQwy
         ZNcW4VyrkPYzIE/V5G0yoBj+CM/K7MeTre4/QK9FfLVkLXnUxrldAv2p93KDUBDQGTow
         wADA+CIo+H3OZrgzIEdbuB70UnXPDpErMTq2+KNu9gDKflwBNcOw+bDrQCvyHO2P3y9D
         8mgBG+FsHdrPy2AdWof8uN9KSgtRKoG+7Hr0aTXvEiWax2WW1iLo9S2QVEKHCYz5XyuI
         0Ofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681304366; x=1683896366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=erBuPeVrzFlZV2m3GTCAkkOKGldewGoCCeiRWUfnelM=;
        b=vXUvZGO+obuSfIGtgz1sMTNjAIRyod6/MchrYXb6X8f64RNOQMCbj3ncaZl+Nu41Dm
         d5fxtUcmlKWYEdQcM/8p91wbLQyIB/f/06knYf4Sr/n4XTIBjhkMIg+8Ulh7KEaeq1Y5
         2KCzxZijrURJRE41hn2Brc0ICQ0f77ZgOTyH1bsvxYeSsjv0wo++K1r0gL7OVlQgW+oX
         4E8qL8U1EaiKdynnX4cTFVAR5DkpUmvA2spZaSvk3MennkVA3aviZsbBXVRXLpmib8GJ
         ex36qo2q+j/BjPivj4ZX7pV1eMmYttFqS7/wRV+6BPgLRVGy9YUecJzVvPx4okFCxQ85
         /nTQ==
X-Gm-Message-State: AAQBX9fi3e+HP4h5wVAScFw7E6rKQlkBXm9IbW628/NesKqqCmajoX11
	czRR1n7LZgRMnaK3yzqN2EAKGA==
X-Google-Smtp-Source: AKy350bzixhPofoYl7nQAhHg2btqGdbmFdg6kAkDkZeSl6i/hQ1NZTJGFcOxcJQxrOqLzKHQWAZ7Vg==
X-Received: by 2002:a05:600c:3ba8:b0:3f0:5ed7:f859 with SMTP id n40-20020a05600c3ba800b003f05ed7f859mr2135365wms.7.1681304366135;
        Wed, 12 Apr 2023 05:59:26 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id k23-20020a05600c0b5700b003eeb1d6a470sm2305203wmr.13.2023.04.12.05.59.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 05:59:25 -0700 (PDT)
Message-ID: <20684378-cf3e-0299-d390-287b7bafbda5@baylibre.com>
Date: Wed, 12 Apr 2023 14:59:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 02/27] dt-bindings: phy: mediatek,dsi-phy: Add compatible
 for MT6795 Helio X10
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 matthias.bgg@gmail.com
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-3-angelogioacchino.delregno@collabora.com>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230412112739.160376-3-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_055927_843156_5DB4841E 
X-CRM114-Status: GOOD (  12.12  )
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

On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> Add a compatible string for MediaTek Helio X10 MT6795: this SoC uses
> the same DSI PHY as MT8173.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>   Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
> index 26f2b887cfc1..a9f78344efdb 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
> @@ -24,6 +24,10 @@ properties:
>             - enum:
>                 - mediatek,mt7623-mipi-tx
>             - const: mediatek,mt2701-mipi-tx
> +      - items:
> +          - enum:
> +              - mediatek,mt6795-mipi-tx
> +          - const: mediatek,mt8173-mipi-tx

AFAIK, it should be:
       - items:
           - const: mediatek,mt6795-mipi-tx
           - const: mediatek,mt8173-mipi-tx

Since it isn't respected above for mt7623, it may be tolerated.
Please, take this comment as a suggestion, isn't a NAK from me.

>         - items:
>             - enum:
>                 - mediatek,mt8365-mipi-tx

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
