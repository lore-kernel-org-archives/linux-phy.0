Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62BE1C6FA8B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 07:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvDl44QVIlyokc8ESwBzl1ePfPZ/9dcPVyibenBNL4M=; b=mWSzTzDGtCO7MU
	t2nTilY8Jo0xTzz/weBNa5EPzmvJr+q0wpzOlK3s0ILH75KFL/rziECva2sAgfUnzIDWYggr3VgMo
	HRn1cBZxL1yZ4NwQ+Znrok58Cirz1mfZ56kmoIKTffK2s5dTyy59nxWadPKxAhJS52afwgHraRmqF
	xWByX0+KWQV91PViFGjK2qCQMoegfOK3+hZ56UIi9t3OwHkh+3aB/3b9KVKaAY/NTOyQ89DYWVDbL
	8mMneJ1qcfAyH4zz+UgW48eS2AXVlVOysiY24cvTHb7b7Vehns0J3zm8KTC1nHpfygGHwWgMQhDA+
	4pk24VBg8OMophtJIwYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGVs-00Dmo7-Qy; Thu, 22 Sep 2022 07:20:48 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGVW-00Dmc2-Pb
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 07:20:28 +0000
Received: by mail-lj1-x22c.google.com with SMTP id b6so9850855ljr.10
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=l75230f4/Tc4m+TS6iA4e2H4Q+VpG770+Je6OFiVsyM=;
        b=hQ/UL/kN7XbzEXqfO+tmv964OK2GMoUE38JlkbYLqDPJ3sX9aZ7YaBiMAegrLKbyFm
         0lZTvlLYhE4eq+ExfRYlG4w+IguonGImEXN1v7MA9wWCrKgtVqE6SlrQ5VX0NG5E9Y38
         /4BtzZAHXkNvDllPnvs5t7kQv4zT0w0CgLdr2XvTwVocykNzokmm0+yttQvK5fx3Huhi
         zNfdsrW1u+Dk3rWZfo4H2Ndvrr5eoKn1l2tfcmE+E+seNPLEYCzpsjlgaKMuf7tWEqls
         XHvG3Ou2t6CdsQ7XwS5mMARAd0yru57ioABcS+6+ct3Mv211ahTfWMz9T8lmsbob5+7B
         DFWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=l75230f4/Tc4m+TS6iA4e2H4Q+VpG770+Je6OFiVsyM=;
        b=TWa5sDF3i6BTM4KVEILuOXKe93dF0ijFOUYG6PT5Tmxd4NSdU9oS4FxN/zyB8F+Bcz
         FYAi5sySnfigPOVyaEC88en2ZlMW4tfT2bqMT5CevP1jW0PAsEysKhFQhHf9RAPU2a3q
         e7f8NncXoAZBQtwa8S6IjvaeElTDJZHfHPURkYpLZRzPsug+VCCQoBu0YSMWmUrC5/0l
         wlarOW0Rfx2X68eTGC4gd+ukgdQX4iaG4Rw9K14/Ewa+cx9WmgBuvjfgiaGMBK1JZ8oz
         pIhj/nAt7GnjcFdNsfqespxk/2oajUQQv1B4SDOcR4MpFYsK+cyiDVZKqG2kjcXQ6xJn
         x11Q==
X-Gm-Message-State: ACrzQf3uEDJhHysSkmfDeDa1hnyzBGHV92TYFynhdG1DeLtnPaoNxpUS
	V70mVThYQULuWkHm6gqg1pnxZg==
X-Google-Smtp-Source: AMsMyM5wVw1kKJjWwk0eAv9vC8nvZTseIqkjOoLB/YN16eVtCyQpO11pitWkmTSeOsIupJQ3U8Qndg==
X-Received: by 2002:a2e:9b17:0:b0:26c:4ede:512c with SMTP id u23-20020a2e9b17000000b0026c4ede512cmr577476lji.529.1663831221961;
        Thu, 22 Sep 2022 00:20:21 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a14-20020a195f4e000000b0048ae316caf0sm805348lfj.18.2022.09.22.00.20.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:20:21 -0700 (PDT)
Message-ID: <e993c25e-f334-e1ca-73f8-58cf141c521e@linaro.org>
Date: Thu, 22 Sep 2022 09:20:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 15/17] dt-bindings: display: mediatek: dpi: Add
 compatible for MediaTek MT8195
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-15-4844816c9808@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-15-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_002026_858731_5ED9458D 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
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

On 19/09/2022 18:56, Guillaume Ranquet wrote:
> Add dt-binding documentation of dpi for MediaTek MT8195 SoC.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> index 5bb23e97cf33..2c7ecef54986 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> @@ -24,6 +24,7 @@ properties:
>        - mediatek,mt8183-dpi
>        - mediatek,mt8186-dpi
>        - mediatek,mt8192-dpi
> +      - mediatek,mt8195-dpi
>        - mediatek,mt8195-dp-intf

Aren't these the same?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
