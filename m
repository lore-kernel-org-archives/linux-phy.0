Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDE91C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 17:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sP1kd/XwE/HAzjFfR2JjlgLoOc6c0/Xtvsd1cKX7Ous=; b=ERbLrC9pn2/eTA
	GxzcpN/S/14ytbZNPdhZmooBXYlirBGDM6LPYEYs+2HIlg7UwZYkFjLnQYx83h9/bKtWoeChpxBR0
	rXcopLd13/DSxU0QPswuZkE2ro/zll2JIVAv9P2PcZH9alxyboQ0ywO/wxaiBB69nVQUhegVviHdI
	P1a9NW7DzyJEBj0+JmEXsrdPiXnzp19vEZLUMzEq6i2oY8j+QMFeRr8qADjDJb3l00xQ7fDMFB5O2
	00HfFxC/fn+EEGGwY6/ncJDFC+ftkD5EbIm/B2xAlvorcuVMPy+TrpX8Y9RBvtyoMUXUYfacXKCAi
	PCPhOgxHe8+x1YX+h19w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXnsP-002rUH-RH; Fri, 25 Mar 2022 17:37:29 +0000
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnmo-002p4W-9q; Fri, 25 Mar 2022 17:31:43 +0000
Received: by mail-ed1-f53.google.com with SMTP id b15so10056080edn.4;
 Fri, 25 Mar 2022 10:31:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=fRup0HhTI1fItvOnWgW1apl6hJ+hovK5wDJd4/CJEws=;
 b=KX+pymeirfWOlx+IHjC7wOG11veQCU/TEGnGUlUOztaXeAh+bzcoEztGlromW3xfaN
 ibJRisJL8r80mfTD961acaJQgy7Y9+hUTpAE5u3QFIMpgaaFyJKMy2cgkI0ygDaZC1zf
 FhcmHf+Wc+Cm2Dm0lBcHymYaa4YP4+xQIOfWFLDtRcpyZelAbgi+e5YuTyPZhW6wSnhb
 z/4+pxAAxd1iUZe4NRUkKcxpbYn4y9B4l/LyGkfKXyN0jk1+SAYysw1Ueadng+Mv1wzN
 ELH4tQK53j8SLnUZcoNkcEm8tT6XtG+POGoQYGqRFvG2apnJPMgEN+YOdL7/IcO/fWky
 eBJA==
X-Gm-Message-State: AOAM531m2cs0Hxl/1roQeQR7Pqhtf+Wj7MmlOcOxpeku694/aEDmLQJv
 Syd57dU/Kfph5eQVKPChAzg=
X-Google-Smtp-Source: ABdhPJxBJl5W6RwFQAyh8otMltwQxLkSdlG8+OGsciwzNPCea5FQXhEojfuAMY1CBRj+1zzaCrkF1w==
X-Received: by 2002:a50:d84c:0:b0:418:f176:79df with SMTP id
 v12-20020a50d84c000000b00418f17679dfmr14200983edj.353.1648229500341; 
 Fri, 25 Mar 2022 10:31:40 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 c12-20020a05640227cc00b004192114e521sm3209328ede.60.2022.03.25.10.31.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Mar 2022 10:31:39 -0700 (PDT)
Message-ID: <8baedbe6-eb60-02b4-a6b8-fe3abc566335@kernel.org>
Date: Fri, 25 Mar 2022 18:31:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 01/22] dt-bindings: mediatek,dpi: Add DP_INTF compatible
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 robh+dt@kernel.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com,
 kishon@ti.com, vkoul@kernel.org, deller@gmx.de, ck.hu@mediatek.com,
 jitao.shi@mediatek.com, angelogioacchino.delregno@collabora.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org, markyacoub@google.com,
 Markus Schneider-Pargmann <msp@baylibre.com>, Rob Herring <robh@kernel.org>
References: <20220325171511.23493-1-granquet@baylibre.com>
 <20220325171511.23493-2-granquet@baylibre.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220325171511.23493-2-granquet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_103142_408654_1B0BCA2E 
X-CRM114-Status: GOOD (  15.29  )
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

On 25/03/2022 18:14, Guillaume Ranquet wrote:
> From: Markus Schneider-Pargmann <msp@baylibre.com>
> 
> DP_INTF is similar to DPI but does not have the exact same feature set
> or register layouts.
> 
> DP_INTF is the sink of the display pipeline that is connected to the
> DisplayPort controller and encoder unit. It takes the same clocks as
> DPI.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

This is v1, how did you get Rob's review already?

> ---
>  .../bindings/display/mediatek/mediatek,dpi.yaml       | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> index dd2896a40ff0..53acf9a84f7f 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> @@ -4,16 +4,16 @@
>  $id: http://devicetree.org/schemas/display/mediatek/mediatek,dpi.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: mediatek DPI Controller Device Tree Bindings
> +title: mediatek DPI/DP_INTF Controller Device Tree Bindings

While at it, remove "Device Tree Bindings". It's about hardware.


Please also rebase your tree as you use my old email address.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
