Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36DF0C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Apr 2022 20:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bPL8UvpkBrbvspCOR/5Natllcg5/TjCHEwV2x2qVhA=; b=SzWIjj4fcqVCFI
	UB1+LUGJEZTEaVYlZeJK9b6+Fd9AgPup8XXh2MUDOuRQV/BfcDDehder+UJ4yJyu/WasRhTAfn9yf
	mVXHkANYdebwEhYBIMCrmopxOixZkpYM5Wfb3AfqZUsMZ5FbBUSbHROxbnAQBvX8KyB6qaRMfzovp
	MzgvVpLaCeFHzHuvwVqmNAURdaR6OdzermYO3rv1U8E4N/3UXdITbbyuEETJ7/d58h8I0GVDoeD4D
	hp6r2Sz8UBXoK6EhFsyMxoZNxY/fRjHdRcRxC/cDxL0HpsA8SZnBv/mFMmILqlPez1IqWaEiYAQaz
	pXSVNoRx2bz/bT825XZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njoGt-003WNg-HR; Wed, 27 Apr 2022 20:28:23 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njoGh-003WJw-HO; Wed, 27 Apr 2022 20:28:12 +0000
Received: by mail-ej1-x635.google.com with SMTP id g6so5672392ejw.1;
 Wed, 27 Apr 2022 13:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XvGmY2mQG936hGzg2VuapP2qnKpxxaFYjmRXixs6VIw=;
 b=MzXqmOkEd24dbNwdLzRcxZTb2yAdP6lxjxolSFWkLK094wVT5610q89FwZ/ACmJWZz
 JaZsD+iFtBu7Sd6EofSiptXIMuutK5FJMnSMgPchBU9BGddEjtH4AOh/Z4XN4wZ3NX6j
 9nDsIiBBcII8jofTbK2AxsQNZEqufmuwgsddUp/Y9xx4sc3lrZZl0wgF/5at5HQGtbMD
 0AD0ey2KzlA/t+OU6RpGmuHsmo9ixIkh6lpPGIRnzR485erVPeMxThYWyHMF+UKv4sbJ
 sUmr9ycIMaf8KZr6Z3btAq0qF4LLK9owYVro7lHFGpXk2nOKHJY0+5zRHUYx3L5ve0dJ
 u3rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XvGmY2mQG936hGzg2VuapP2qnKpxxaFYjmRXixs6VIw=;
 b=fLXRYgPmnNeqFTxzmDCsEN6q5TPVKqPs9Wmmfbpy3EIkv7/5gkIzeA+v00QuIZ9W2Z
 7iOX2DbYPQ3G+cu199/c6cxdC2I+mNeK0rckxSMeriSKoC5jTPhEMPiZ/92i2zr7oe90
 k8leKd2NmDOmOQf/m0yw2Oo8tN6UDf0QpVVek5yBZ/gq0oEt3FcFLnOvQAqLeHFneJRr
 1jLBbBGtnxvClu8uBNyJXgkFiIIi0NXT+njI/HRkIr0Q/5NqmaJMIG13Gi9gzo5aTNgl
 Q9xGOsljaZsfl6M0TGrpvKTwIq8rk+rtP8h7NSjCHIjs/Wz2AiE5eYEAT10SHDzwfOae
 I6Ag==
X-Gm-Message-State: AOAM530UxZMNfGpaGSqEMvuGhNfR46d7LgG3AyKIWXaVVSj9S7pOZXAB
 qa6uapkz0Br9WTDDlt6rjIg=
X-Google-Smtp-Source: ABdhPJynfDhtkkRIX5oDrXpoq2M/wKC5ZG0bQaQWExaqc1wCyweARLqXzr5tTgNf04q7vp1gnE2VVg==
X-Received: by 2002:a17:907:7286:b0:6ef:f594:e063 with SMTP id
 dt6-20020a170907728600b006eff594e063mr28032902ejc.611.1651091284058; 
 Wed, 27 Apr 2022 13:28:04 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-118-115.static.t-2.net.
 [89.212.118.115]) by smtp.gmail.com with ESMTPSA id
 c2-20020a170906924200b006f3d1141693sm1004812ejx.44.2022.04.27.13.28.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Apr 2022 13:28:03 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 6/8] MAINTAINERS: Add entry for the Allwinner A31 MIPI
 CSI-2 bridge driver
Date: Wed, 27 Apr 2022 22:28:02 +0200
Message-ID: <3412158.V25eIC5XRa@jernej-laptop>
In-Reply-To: <20220415152138.635525-7-paul.kocialkowski@bootlin.com>
References: <20220415152138.635525-1-paul.kocialkowski@bootlin.com>
 <20220415152138.635525-7-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_132811_625172_704F68F3 
X-CRM114-Status: GOOD (  13.22  )
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

Dne petek, 15. april 2022 ob 17:21:36 CEST je Paul Kocialkowski napisal(a):
> Add myself as maintainer of the Allwinner A31 MIPI CSI-2 bridge media
> driver.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index fd768d43e048..0c7a3c792837 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -761,6 +761,14 @@ T:	git git://linuxtv.org/media_tree.git
>  F:	Documentation/devicetree/bindings/media/allwinner,sun4i-a10-
csi.yaml
>  F:	drivers/media/platform/sunxi/sun4i-csi/
> 
> +ALLWINNER A31 MIPI CSI-2 BRIDGE DRIVER
> +M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +T:	git git://linuxtv.org/media_tree.git
> +F:	Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-
csi2.ya
> ml +F:	drivers/media/platform/sunxi/sun6i-mipi-csi2/
> +
>  ALLWINNER CPUFREQ DRIVER
>  M:	Yangtao Li <tiny.windzz@gmail.com>
>  L:	linux-pm@vger.kernel.org





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
