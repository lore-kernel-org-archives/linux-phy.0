Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 370B8C7EE29
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 20:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNvIP3qGGb32LTYEUM/J+XdiqSakhfB+gEifE0Y0Ybo=; b=p8QYwBGhNu1tg0
	7uOZSU1ZApbVsHo51HmsrunhP0OeDdokpFbHk3fudLdyFNRl/QpNCG6eep282q/vjjC2J7UXNj2s/
	c69tcGsAGcepER3+4Rk2uUWWXck+nSikXOwlrjI4DqwIyqalRansViraQgMPWICfUTjSfJbfJ2Ae4
	SsH4KZl0M3asi7YyrJiWK9IDQvBD6GiW5gvLew9y9f/cdAfRbuMP3acvxgHcmPu2ghsGEu/XiKU9P
	7lJYQK2dzQNnxvjlKihebkZQQKj/b/p8g4hlQoMfQL+hGErB5R24pCTT0QwsVqoKy5GgHp6/0/A4I
	Rn8f78saUTkuSeQtkd/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7LtT-00AUA9-2o;
	Thu, 08 Jun 2023 20:06:03 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7LtP-00AU6P-2a;
	Thu, 08 Jun 2023 20:06:01 +0000
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-777a2ef8d45so47267639f.2;
        Thu, 08 Jun 2023 13:05:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686254755; x=1688846755;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0/sR8/S11r6POKJwJKZdRyyXC9EYM0/cQxZIkmiJzsI=;
        b=bDt22+HPS/33Yzg3ZlcmQ1CvIUYfrXQPQbtipA4O6XIOZrMWnFPIspZg+gvDjOWMCx
         T7DblvfyOSGOqFZQb4rNv+1SfUblE1sLByC1x43ZKa4TCEXMZcTDuMfs5F3GEEoJnLhH
         TxF7vo9Sn2L/5QBCRkACs5f6Nwss/np5CPAomL2250bQB1zPlHTEwLHgzyL28sGYrUR1
         b95rVFTpq8epy53CiTYl1wv5EKV79yLjTZxoj0HpWHDgYe3CQaK3rGdR6TTca3i2J055
         PkOH3+2L7QZmxTbjYPVoJh5DOFh9X7SwK0OdXivFuIixu2VuFB8YwhbGiHQ1ZqQHLPHq
         zerA==
X-Gm-Message-State: AC+VfDztM6+5olNGBU+fBb+OETFIJVA5/zGSc5SrETHtWCyy9jykVyE3
	1QklZtlLoNL2mZI3xEK3jg==
X-Google-Smtp-Source: ACHHUZ4Z/oQrytUoNlri3g8lDHCGhsb5liDnpSpmhO6hxn9vEvVy6hx4AJ8tUzV/0PRd4R7ABah0Qg==
X-Received: by 2002:a05:6602:218c:b0:777:b4b7:f6ac with SMTP id b12-20020a056602218c00b00777b4b7f6acmr10471093iob.10.1686254755522;
        Thu, 08 Jun 2023 13:05:55 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id u19-20020a02c953000000b0041672c963b3sm483509jao.50.2023.06.08.13.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 13:05:54 -0700 (PDT)
Received: (nullmailer pid 3315825 invoked by uid 1000);
	Thu, 08 Jun 2023 20:05:52 -0000
Date: Thu, 8 Jun 2023 14:05:52 -0600
From: Rob Herring <robh@kernel.org>
To: Julien Stephan <jstephan@baylibre.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, mkorpershoek@baylibre.com, khilman@baylibre.com, Florian Sylvestre <fsylvestre@baylibre.com>, Andy Hsieh <andy.hsieh@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: add mediatek MIPI CD-PHY module
 v0.5
Message-ID: <20230608200552.GA3303349-robh@kernel.org>
References: <20230524083033.486490-1-jstephan@baylibre.com>
 <20230524083033.486490-3-jstephan@baylibre.com>
 <f92c39c8-177a-e18d-c3b0-79e7349ea4db@collabora.com>
 <2jfgupyvtuenvm7x52l6bo5xzzpva7u6njeg3ecd52wwj4spv6@y3nsq7j2hl2u>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2jfgupyvtuenvm7x52l6bo5xzzpva7u6njeg3ecd52wwj4spv6@y3nsq7j2hl2u>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_130559_845702_1B6AA0D7 
X-CRM114-Status: GOOD (  29.13  )
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

On Wed, May 24, 2023 at 04:05:03PM +0200, Julien Stephan wrote:
> On Wed, May 24, 2023 at 11:45:30AM +0200, AngeloGioacchino Del Regno wrote:
> > Il 24/05/23 10:30, Julien Stephan ha scritto:
> > > From: Florian Sylvestre <fsylvestre@baylibre.com>
> > >
> > > This adds the bindings, for the MIPI CD-PHY module v0.5 embedded in
> > > some Mediatek soc, such as the mt8365
> > >
> > > Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
> > > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> > > ---
> > >   .../bindings/phy/mediatek,mt8365-csi-rx.yaml  | 67 +++++++++++++++++++
> > >   MAINTAINERS                                   |  6 ++
> > >   2 files changed, 73 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> > > new file mode 100644
> > > index 000000000000..a1bd96a98051
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> > > @@ -0,0 +1,67 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +# Copyright (c) 2023 MediaTek, BayLibre
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/phy/mediatek,mt8365-csi-rx.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Mediatek Sensor Interface MIPI CSI CD-PHY
> > > +
> > > +maintainers:
> > > +  - Julien Stephan <jstephan@baylibre.com>
> > > +  - Andy Hsieh <andy.hsieh@mediatek.com>
> > > +
> > > +description:
> > > +  The SENINF CD-PHY is a set of CD-PHY connected to the SENINF CSI-2
> > > +  receivers. The number of PHYs depends on the SoC model.
> > > +  Depending on the SoC model, each PHYs can be either CD-PHY or D-PHY only
> > > +  capable.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - mediatek,mt8365-csi-rx
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  '#phy-cells':
> > > +    const: 0
> > > +
> > > +  mediatek,phy-type:
> >
> > Instead of declaring a phy-type here like this, can't we instead declare that in
> > the phy cells, like we're doing with MTK TPHY and like other non-MediaTek PHYs are
> > already doing?
> >
> > device {
> > 	...
> > 	phys = <&csi0_rx PHY_TYPE_CDPHY>;
> > 	...
> > }
> >
> > Regards,
> > Angelo
> >
> >
> 
> Hi Angelo,
> 
> This is a hardware property that is not dynamic, so IMHO it doesn't make sense
> to use phy argument for that. 

Why? Interrupt numbers are fixed hardware properties which go in arg 
cells.

> Some driver already use a 'phy-type'
> property (such as phy-cadence-torrent.yaml).
> 
> I was thinking of using phy argument on future upgrade when driver will
> support D-PHY and C-PHY modes so the phy user will be able to choose the
> mode.

Once you design the binding, you don't get to change it.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
