Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9418C7EE2D
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 13:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjIL3ce/hgAFxYsvzAEkxFwUl9w2b8rgiLQDH/T0rqc=; b=PIt36dUfjSF6nT
	Dc5WTzYOVh/XNsx2kc4TBkCdv6+RL1VllNfj8Wqheo+NoTWUfYUd4d/8xVteRnNV/A6A7gdZQLogS
	eJ1zaiKJvLlewWEsn23jfiYIPINdH48wcIOEJoveG35hU9DlfnyDgIsBAPOe7SuMqPhma+z1HTJNc
	ldYq7ftH7Hr9Rd3l3BbgEs9Ni192rSErzrf4IC3MX3K7Iz0hMQWoJSSQbblTdeQKObZFBsysQpHYB
	kPWJ2NWDNjAYP4+xOjc2s0/WISmG51R6i3LamhNrVLSJAUsphOpuCt19bWaO/2YEgRX4bwonvkKgt
	rYJqZYYIxUVSDUwY7nVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyYNw-002HJs-13;
	Mon, 15 May 2023 13:37:08 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyYNq-002HEr-2g
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 13:37:06 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3090408e09bso1989694f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 06:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684157819; x=1686749819;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=siTWifPxX1aManif72YDrV0r+hmOKzstfDGYR/mGvqU=;
        b=rLHZSu5M7RzoKDhFsx1ys87yhSCrDbWTxAgMMuBUgps5wawJ0qQvajd4EV/blhJUvk
         mf5SlkcbLuA8LQevhATGAuZ6wjKw0sknNT/LGwNU5+EfeNKDoO8I3NjrWVIy5NChlcuS
         9Lbiuf195fFKr6LR39RnmNs01s5xd/KUVGZRE+n9trEW2NK2OXJLc8KoU7wDZGa/G9Pb
         psPo42k4wG7g5mczy7duZj9mXmPUeOu5pmaTEENyjhV176o+wMZ/TH9J18i8HfN+rxZp
         Dw1w6WJ9FPpJIGhAiNvGnIB0JqtPz4Ue8rpbx4/nqbRZUXbxK29X0s5Ea9XMNHS67GoL
         bPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684157819; x=1686749819;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=siTWifPxX1aManif72YDrV0r+hmOKzstfDGYR/mGvqU=;
        b=dPvu75rcFrDjE3ddIuajdC2PMCkcht6+Zz3MhBRQFLZS9hoMotkbH4hw0b57jk4TX6
         bYEuLiJ9kBwVmO32UKsVKEdIwFfbsJzur6Gh3ZBcbjXpSALKpClhOFU6IR/+R7feDWw8
         veolepysrAoFDRNtznkXMvEeulxHsPu7Qg1nJ6vvBDDiLPeoPRhVqS11Ve4XbT/V6bed
         29mAx2AdICjId+IVoMFeS6Rx0InMgbwYiDVsL3JM76z5oEmL5TtIVK478N005hKnr4mD
         6A4EgYyvPuBQEoWuKsKoU6FqgROOA7t+bl8/zxPUjxxwcRdx+8jgmZXnwE6gq2JjzNZu
         2MaA==
X-Gm-Message-State: AC+VfDyNvRmTzM5bczj02vBX+IAsZPppi9F7SjqlxLxNx/tna/6wWQUV
	as+D7aSlKdu5nOsoJuWDb9CYRg==
X-Google-Smtp-Source: ACHHUZ4Rdql4HTts8WmrVYcQw4kCaOVth/28CmVLcDZlzwc9HN6Pxehp2ST/CdMixqBydRN1GYH6FQ==
X-Received: by 2002:a5d:4b91:0:b0:306:2a1a:d265 with SMTP id b17-20020a5d4b91000000b003062a1ad265mr23135895wrt.58.1684157818781;
        Mon, 15 May 2023 06:36:58 -0700 (PDT)
Received: from localhost ([2a01:e0a:55f:21e0:fd3b:9fed:e621:cc8f])
        by smtp.gmail.com with ESMTPSA id w3-20020a05600018c300b002fe96f0b3acsm32786586wrq.63.2023.05.15.06.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 06:36:58 -0700 (PDT)
Date: Mon, 15 May 2023 15:36:57 +0200
From: Julien Stephan <jstephan@baylibre.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: krzysztof.kozlowski@linaro.org, robh@kernel.org, 
	chunkuang.hu@kernel.org, linux-mediatek@lists.infradead.org, 
	Phi-bang Nguyen <pnguyen@baylibre.com>, Louis Kuo <louis.kuo@mediatek.com>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Andy Hsieh <andy.hsieh@mediatek.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-arm-kernel@lists.infradead.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"open list:DRM DRIVERS FOR MEDIATEK" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] phy: mtk-mipi-csi: add driver for CSI phy
Message-ID: <ynrvqt24hjgng25r2xa3hxj35cvgotx7sdfrbqfjcvj3foegmr@4lqhen5yu6fh>
References: <20230515090551.1251389-1-jstephan@baylibre.com>
 <20230515090551.1251389-3-jstephan@baylibre.com>
 <cd6067b2-660a-8f2c-697d-26814a9dc131@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd6067b2-660a-8f2c-697d-26814a9dc131@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_063703_090443_7EB6994F 
X-CRM114-Status: GOOD (  19.34  )
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

On Mon, May 15, 2023 at 02:22:52PM +0200, AngeloGioacchino Del Regno wrote:
> Il 15/05/23 11:05, Julien Stephan ha scritto:
 ..snip..
> > +	port->is_cdphy = of_property_read_bool(dev->of_node, "mediatek,is_cdphy");
>
> This driver doesn't support C-PHY mode, so you either add support for that, or in
> my opinion you should simply refuse to probe it, as it is *dysfunctional* for the
> unsupported case (and might even introduce unstabilities).
>
> 	/* At the moment, only D-PHY mode is supported */
> 	if (!port->is_cdphy)
> 		return -EINVAL;
>
> Also, please don't use underscores for devicetree properties: "mediatek,is-cdphy"
> is fine.
>
Hi Angelo,
You are right this driver does not support C-PHY mode, but some of the
PHYs themselves support BOTH C-PHY AND D-PHY. The idea of `is_cdphy` variable
is to know if the CSI port supports BOTH C-PHY AND D-PHY or only DPHY.
For example mt8365 has 2 PHYs: CSI0 and CSI1. CSI1 support only D-PHY,
while CSI0 can be configured in C-PHY or D-PHY. Registers for CD-PHY and
D-PHY are almost identical, except that CD-PHY compatible has some extra
bitfields to configure properly the mode and the lanes (because supporting
trios for CD-PHY).
If C-PHY support is eventually added into the driver, I think we will need
another variable such as `mode` to know the mode. I was also thinking
of adding a phy argument to determine if the mode is C-PHY or D-PHY.

So here, I don't want to stop the probe if `is_cdphy` variable is set to
true. Does it make sense ?

Regards
Julien

.. snip..
> > +
> > +	phy = devm_phy_create(dev, NULL, &mtk_dphy_ops);
> > +	if (IS_ERR(phy)) {
> > +		dev_err(dev, "Failed to create PHY: %ld\n", PTR_ERR(phy));
> > +		return PTR_ERR(phy);
> > +	}
>
> Regards,
> Angelo
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
