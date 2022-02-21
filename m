Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50024C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Feb 2022 02:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IjGzKJq94BFFhdSlug0hph9V3w6GXFLuYMK5ikWFk8=; b=G8Gfwj6z8PD92o
	W3E0Fq+UpP/WctQeRNpuLHA/dTwYP/EIFvh4lRplEiOGXP7BoabYFy5dL7WRyO0kv8Z0Ul2nke4p/
	Ji6TP0jFzx6lOQ0+7djMhZSyP06xV4ZKREmkzerOStB5p/fYxHJkQbp1ThpIrzgCq4FfqncIvgn1x
	vEzceC5UV7KiNQ85A3zFVMlarBlLD/6a42wuHbNslkk07A/OyPX9oAWSLmPkTgzcS5YAlzefRcw6s
	LwX/FocWTkrsaM1gE+vkpm/ZNqCd/QkvC7ACAYYMFDzgwgrF92F8xU7YIoeQjkmnoqk20m9x6WaRT
	+cYynfOnO8lOSFXL5HaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLyZP-0033yt-JL; Mon, 21 Feb 2022 02:36:59 +0000
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLyZ1-0033kU-3C; Mon, 21 Feb 2022 02:36:36 +0000
Received: by mail-io1-f48.google.com with SMTP id m185so14382780iof.10;
 Sun, 20 Feb 2022 18:36:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=z3L0QAaP0YwGTd6VI4wxx/3lOMZUuCl0MhaQbdJh1OQ=;
 b=nQ003X6yEpxF1CtxIVwrH+yIrRfqDQisf33iEtb69HIHilud96F1C0g7EijRn+FgGP
 7HfgPNW4NUgMc45VDlVhwOXuiH4E58sJPXNkUH5bk3HWiDRSsNYxshLn1uFbvTTszG7W
 oEoJeSTVxmtAmTOgtRNASxcmUfepu4jATaycKmpbyXZmUaOaeRZBlKp5gPLK9qHyM3r3
 a78T5EFvR2YaeONWe5vEhaS1V3IIjrvvn50kc45yf1fzH1kfZyP0+uTHAIDOftv6hvhQ
 Y/dXpbameSS3httPxFFM77yckfHSMAJBXYtDeLzpsS9suji+MULeHRHBjpLhm3GnKNi3
 sJng==
X-Gm-Message-State: AOAM531RHayzxKHYPVjvmPzWuUuznlszuDID1Lh22sFs1iamH9z5XhJd
 Nh2J6Hvj7MeGgfCh00uNTQ==
X-Google-Smtp-Source: ABdhPJzC3lbA/3xbYHDC1TVY6Mc9mRZFu+uPq7kGdXhvdW9HCdoukC5Q8i8N7ZC5YawbHb6/C1rUWw==
X-Received: by 2002:a02:c851:0:b0:30e:2296:4290 with SMTP id
 r17-20020a02c851000000b0030e22964290mr14295308jao.49.1645410993813; 
 Sun, 20 Feb 2022 18:36:33 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id s9sm7433901ilv.50.2022.02.20.18.36.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Feb 2022 18:36:33 -0800 (PST)
Received: (nullmailer pid 2041539 invoked by uid 1000);
 Mon, 21 Feb 2022 02:36:09 -0000
From: Rob Herring <robh@kernel.org>
To: Guillaume Ranquet <granquet@baylibre.com>
Cc: linux-kernel@vger.kernel.org, airlied@linux.ie,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 angelogioacchino.delregno@collabora.com, tzimmermann@suse.de,
 ck.hu@mediatek.com, mripard@kernel.org, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 p.zabel@pengutronix.de, jitao.shi@mediatek.com, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com, linux-fbdev@vger.kernel.org, deller@gmx.de,
 chunkuang.hu@kernel.org, vkoul@kernel.org, chunfeng.yun@mediatek.com,
 kishon@ti.com
In-Reply-To: <20220218145437.18563-3-granquet@baylibre.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
 <20220218145437.18563-3-granquet@baylibre.com>
Subject: Re: [PATCH v8 02/19] dt-bindings: mediatek,
 dp: Add Display Port binding
Date: Sun, 20 Feb 2022 20:36:09 -0600
Message-Id: <1645410969.343097.2041538.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_183635_208848_77D5B0B3 
X-CRM114-Status: GOOD (  14.82  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, 18 Feb 2022 15:54:20 +0100, Guillaume Ranquet wrote:
> From: Markus Schneider-Pargmann <msp@baylibre.com>
> 
> This controller is present on several mediatek hardware. Currently
> mt8195 and mt8395 have this controller without a functional difference,
> so only one compatible field is added.
> 
> The controller can have two forms, as a normal display port and as an
> embedded display port.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../display/mediatek/mediatek,dp.yaml         | 87 +++++++++++++++++++
>  1 file changed, 87 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dts:20:18: fatal error: dt-bindings/power/mt8195-power.h: No such file or directory
   20 |         #include <dt-bindings/power/mt8195-power.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:378: Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1398: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1594807

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
