Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A2C3C76196
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 09:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVjmP52UPBenxIsjTrXPvykbGidVTDz+t3L6DGuJAsM=; b=V4UIrrkkhNpvOt
	k8Pod/VNvr34Sc6LvulSYG6heiPg6nYazCezlkF5Q/aZxiqUnNySeTLvQqafeTXgL/0G/G9jRCTS3
	DM6dN35WDw4jHhcMue9oNFFOCJDb4Xf70RQpVrlg8cqQxgWJEwVXH02lsBCIrX7kQvI/rXOOhY85+
	itIG7Pyj/ZvPt/1IkvCLQ/jW6jQyOdxEFbSgDCc+EIjTqVh90w/HdSSEA73sF3ZpsJPgBruCbL9gS
	zCWpCY6O8qXcgHpBjOuuLcIP5E20ItqXjVAt0rpCvgP1nyGbt1ghqQTjuTaeaJCnvb07zxMwkXF+Z
	rv28ItTRckIA1fgJng6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjGpD-00Ep3B-3A;
	Mon, 03 Apr 2023 09:50:07 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjGp7-00EoxP-0L
	for linux-phy@lists.infradead.org;
	Mon, 03 Apr 2023 09:50:03 +0000
Received: by mail-ed1-x52d.google.com with SMTP id b20so114886759edd.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Apr 2023 02:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680515399;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=njOb8FD8MR7p9DAF345Hq+aO222nfpoaV4wgzEQORsE=;
        b=WSssOdY3Y7QQMxZhOv5ODIMftu2oa1cARN3R7zrYwN6qDd6mcfPp0HUo/WyzzybZlN
         3qwP+204tyHqCd89ElO0Un0gBC2UIThCIsdF8Wh/CBy8virxgKXDJtFh1XborA+iWUVN
         N+k+CKu0zYPFcAkS+mnT2g9RVJMtq7eNyt79cJLa8P4RS1PxHLGb/b7N1pBhEeKbG1Qm
         LGpaI5X9aSyIR2xYFIwwx9XQ4Gj6fpkg2+cHarWPeBftyNzNpFft3vIc7cCjppZFNv/p
         3/6LW4Lb4OWiTvgVMYFxPbkeOohPQ5OSTAM32IKGLEYhEID6mAHSm4CilJTNYK3Svc6b
         RrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680515399;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=njOb8FD8MR7p9DAF345Hq+aO222nfpoaV4wgzEQORsE=;
        b=U7n5YneCZMuKPQDO4pFwaq8/EpozQxndYQpK+nvk06h1M8nfVKvzdK0SABNiZzYial
         ju27JtXij4bH2pLetlSF2hbLzR2EQFWG/KQB4gBRkn74yf+rgn3FRHYyfV+u27xSM2Mr
         P/pNHe71PT7meej0EsWoaGpzQe3ZITBZCeJi6fbFBkgJ8mXjY7DvpULi2R9i1rsSwjlj
         xW9/4tiX/3B/v+HwNQmMAumpC9ViYlxQd1clhCVnNLOR5+bFBP3JX25zB2ZyQpMpM+xG
         TnoZCcu8K1G3vwuSX2Mdtc/f8Blb2rJSwHbsDmpgnXaR7z/UrC7VAHjO/up8ZvoLlRDx
         QB5w==
X-Gm-Message-State: AAQBX9fvyiKtweBs1g+hJh/kx89OlbAVa3+obeJcpfxJUbIEW10I8sMQ
	PQviIW3eXNQ7fAKcuSPHe5t5JQ==
X-Google-Smtp-Source: AKy350axDXzqltQsMGrbEq+s6HAPPXokx38cO/zKLAuZvJShm+5OuEGsdQduEWPjjJl9tW5ESCenGg==
X-Received: by 2002:a17:907:7f0d:b0:946:fa88:5901 with SMTP id qf13-20020a1709077f0d00b00946fa885901mr19111746ejc.63.1680515399082;
        Mon, 03 Apr 2023 02:49:59 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id hz15-20020a1709072cef00b0093ebc654f78sm4290447ejc.25.2023.04.03.02.49.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 02:49:58 -0700 (PDT)
Message-ID: <4837c3e0-60ed-601b-8512-30fda2176619@linaro.org>
Date: Mon, 3 Apr 2023 11:49:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: add mtk-mipi-csi driver
Content-Language: en-US
To: Julien Stephan <jstephan@baylibre.com>
Cc: Florian Sylvestre <fsylvestre@baylibre.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Andy Hsieh <andy.hsieh@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 "moderated list:ARM/Mediatek USB3 PHY DRIVER"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:ARM/Mediatek USB3 PHY DRIVER"
 <linux-mediatek@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20230403071929.360911-1-jstephan@baylibre.com>
 <20230403071929.360911-2-jstephan@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230403071929.360911-2-jstephan@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_025001_170856_85F718B2 
X-CRM114-Status: GOOD (  16.33  )
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

On 03/04/2023 09:19, Julien Stephan wrote:
> From: Florian Sylvestre <fsylvestre@baylibre.com>
> 

There is no commit msg.

> Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> ---
>  .../bindings/phy/mediatek,csi-phy.yaml        | 41 +++++++++++++++++++
>  MAINTAINERS                                   |  6 +++
>  2 files changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
> new file mode 100644
> index 000000000000..c026e43f35fd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml

Filename like compatible.

> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0-Only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/mediatek,csi-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek Sensor Interface MIPI CSI CD-PHY
> +
> +maintainers:
> +  - Julien Stephan <jstephan@baylibre.com>
> +  - Andy Hsieh <andy.hsieh@mediatek.com>
> +
> +description: |

Do not need '|'.

> +  The SENINF CD-PHY is a set of CD-PHY connected to the SENINF CSI-2
> +  receivers. The number of PHYs depends on the SoC model.
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt8365-mipi-csi
> +
> +  reg:
> +    minItems: 1

maxItems instead
(from where did you get such example?)

> +
> +  '#phy-cells':
> +    const: 1
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
