Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1632C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 12:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zq/yp5i+NlHN5dXsfswETeGebLaL/FoQkb7xu3FmFJQ=; b=xGHbKKbX1ikAgx
	LHwbLQv+d5ApiWX7CJjOM5UXxAcNJ5/SHGGYpg8CeD8u438GsKVcHrnPRmdupwOZ4ELoo+cAD05WA
	rPZxhZqaCnK1xXFGA0YUp/BH2yAZj+g0r1rW3BWDZ29QOJZSadXT5V9D4CH/CYX3gJ486ybSciGfr
	wy0ZODUThQiZur2NP0Jcm4wcsArChQkJH07kiY/c8wN/VT61Z6hQ49a2L+TyDrjub/foa9y6YQoe9
	7Qvc4qzOB8hXp8TXTnLrnL77gQjWYCOaWXntQ0PA6ocuaiWZWJvelxcYu/MpKy5tSkTy1HUAQbsrb
	iBRz4ZoZNFH1A32B1/IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZia-0038Zt-1Y;
	Wed, 12 Apr 2023 12:36:56 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZiV-0038WA-0t;
	Wed, 12 Apr 2023 12:36:52 +0000
Received: by mail-wr1-x42c.google.com with SMTP id j11so14382796wrd.2;
        Wed, 12 Apr 2023 05:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681303008; x=1683895008;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5+yJqelcjnVJsBvuc5XbMPT6WJPDQKryMhB4y470pSo=;
        b=LLjqDK8tdTHUH7mzFIFmfQT8xQyuLtVYbmR7OQrKeNzsqHXLj5BBQMhtKqzkyUOumi
         Sn/FVrn77yRrZUvVN/HJuEHXk/hHx7wn1bvjgdWUlsHOf/xX2c58NYs7Pb4IjjyABuXJ
         w3agsCkggYVx3P+20Poa/ChhqMclxJlCHVv6UQRDUKXEyh2AO/A2pJg8bMu868T2DGa+
         hhoq5XcdPPbLdXlR/sjZKqdDnicTwRtks9MloCIznQD29X6PMwXA0qlZEltcag2yqo0k
         qPm6j05xWOMfFQ7zE8JislSdbLHAMo8LpDUZSfG5aZy/z2WIvaDc7lTllYO7QMVQsCju
         InTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681303008; x=1683895008;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5+yJqelcjnVJsBvuc5XbMPT6WJPDQKryMhB4y470pSo=;
        b=kPQW0jAFnisHphHPpMwt3xIWNz6vQ6t8vIYSe3G0vkKnUPoa18WA2V86pEqoQ1vmLW
         Jh88pexP+gJnE76RpkHPCG6P8bMTmPFZseclzNoHKwZpMEUppZAFYRwWlMGLfrXuMuxT
         GtGO5tMVgVXO5M0tIi/qPN4tzv4LdCUnhzHP478nYGrpliKQbkQSo2/VchJ4aZpxLsPW
         PJ426Lf8IbcO6gof+gE4yKahl9Us80rEzfdg77Sg9I7RGDh2FoFUPI3PZq5n4bqppeN4
         dMWt5j83qYk0V3CaI0IdFd4UyOLSkfeoRvPqZlYq0SA0U65d22quUb1Pl47fkZ/ZXfLM
         68bA==
X-Gm-Message-State: AAQBX9dMFBf+k1+GOEcOIl/DURf3xxZmeJaY8TbAvEE680HX/oDhS8wH
	7zA4uTQ+D98Abt7A/n/6M3M=
X-Google-Smtp-Source: AKy350YfaWPBQRxXe37/4nw4RvtdvOSXPdUuUJj6f7mSjFILGvCzsrsicMkzLrBGLQ3m32F6fCsuGw==
X-Received: by 2002:adf:ec82:0:b0:2d7:67bc:344a with SMTP id z2-20020adfec82000000b002d767bc344amr13517948wrn.37.1681303007626;
        Wed, 12 Apr 2023 05:36:47 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id m8-20020adffe48000000b002c55521903bsm17181465wrs.51.2023.04.12.05.36.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 05:36:46 -0700 (PDT)
Message-ID: <3e8c6b55-5b5e-5141-8f63-d7f0fc7d1699@gmail.com>
Date: Wed, 12 Apr 2023 14:36:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 08/27] dt-bindings: display: mediatek: wdma: Add
 compatible for MediaTek MT6795
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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
 <20230412112739.160376-9-angelogioacchino.delregno@collabora.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20230412112739.160376-9-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_053651_310568_71CB5D94 
X-CRM114-Status: GOOD (  12.93  )
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
> Add a compatible string for MediaTek Helio X10 MT6795's WDMA block: this
> is the same as MT8173.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>   .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml    | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
> index 7d7cc1ab526b..1a19b3ef036f 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
> @@ -23,6 +23,9 @@ properties:
>       oneOf:
>         - items:
>             - const: mediatek,mt8173-disp-wdma
> +      - items:
> +          - const: mediatek,mt6795-disp-wdma
> +          - const: mediatek,mt8173-disp-wdma

:D

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

>   
>     reg:
>       maxItems: 1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
