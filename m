Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 946EDC7EE2C
	for <linux-phy@archiver.kernel.org>; Wed, 24 May 2023 14:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jv7mE+sJCtkWVPIAI5MlNmaqZOJOdBieXTluV/ivyk0=; b=P3UtpPoPTyePpV
	FuT6HkYV/tU1fBMTYTzddStjZ7Lvt8sHEDrwOn9RlnMidNEaHi38rLnpEf7+NiJD8eMD35aFXoRUz
	wD38txn1jOZnmAN2mriSTs7NVkBAcToQImuicSgbVYfO7mXiIs2wPqA3svvPpafH/gf2HeXZjhk4o
	S4WnnZUOJ5Sre53vWJorf3I3RVs1C//DkPBOYcD3r8b2gAInVYH5I9snVfDkwquM/4EBFseiWS4e0
	khzW5ACph4o9rdf02pd82bKoVTVSauj0Jgcb8Q/LXtuUdWwNkj+pvNK3ztsG1Wfip6LhPggrrgUQ7
	xcCeMKutVq4bu/Prc5oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1p74-00DdvM-0X;
	Wed, 24 May 2023 14:05:14 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1p70-00DduL-1y
	for linux-phy@lists.infradead.org;
	Wed, 24 May 2023 14:05:12 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3093a778089so604682f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 24 May 2023 07:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684937109; x=1687529109;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gYK7qPs3K1mFYFt83RxjkD5ObwozLtF5ga5amIDsihk=;
        b=4ZafKxfGLJdkPWBsxlTVtT+cEWZgHCeBAVxIB1Yj/ajbUZXdejKUVx11UN31nSk161
         pCLnKBPkgeIZryb+Q6Fi1k6sqDcPorkF5vUQsAjAHaI8GD7DXGa0hPWHrEgEUPnKzRUA
         CNzODjz6k+O76u81KJS7gBPhfaFPGXNwsd0gqtIEmvkelhzBSVy40S+5aGozdCCPbY3W
         T+ebSUBLH6iDUmZlgQ/Bqkb/Tuo9drKd8oBgi1JjlYIzXfz1vcdgrfv1oWMdIsV3FRkX
         FPGwAXkqnrlGOy1anD8KfMUrZOO8hxQy/qJEggfYxOK6IqPLxrppkpwbBGU9GvM/lHrW
         kTsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684937109; x=1687529109;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gYK7qPs3K1mFYFt83RxjkD5ObwozLtF5ga5amIDsihk=;
        b=UDfPYv1EOSiAbCP487l88lAFTD39zlJV+vK0Ond56HXJfZGLbp//bnZE50K8E5XJiJ
         jo0mOzdrOE57Lplh5YX5S3wcxG3Vc9WAs6pC0i02kf8sbaRC8VdQUkBqq4MwGSPv7ARy
         Cx/bVGX0gb07Np+a7G2U0t4n0qRd7Go7eMiTTGuiaGca3PEIbHclY7FqJDIrY1AQnO4x
         xgPa+2B64JfE86kfpNkfAQqYaPNdFw3H15He4e3sebJY2hTybYMsIIED5ch+t168ctiI
         Eu1x4aF69DyC1tr9E0b7uqk9Kck4kFaK8BU6lVh7s9ROWwgBNnRuIYkVU2JcLSiXzhxT
         pROA==
X-Gm-Message-State: AC+VfDz8Z8OcXCPitKCxZL8TqiV7vKqsWL1XNZhrje9IU4sar3VfRlH7
	9KjxWLxMLZaPqUcLfICUb4HL9g==
X-Google-Smtp-Source: ACHHUZ7DY/QLV/yoCNKc+5pHRfJJcvT+0JwdYcgh8jA6/pQw2WsZyH/SczX7hjf76cberK5A66uMnQ==
X-Received: by 2002:adf:e8ce:0:b0:306:34d6:6dfc with SMTP id k14-20020adfe8ce000000b0030634d66dfcmr12451544wrn.37.1684937109015;
        Wed, 24 May 2023 07:05:09 -0700 (PDT)
Received: from localhost ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id t1-20020a5d6a41000000b003063176ef09sm14849411wrw.6.2023.05.24.07.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 07:05:08 -0700 (PDT)
Date: Wed, 24 May 2023 16:05:03 +0200
From: Julien Stephan <jstephan@baylibre.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: mkorpershoek@baylibre.com, khilman@baylibre.com, 
	Florian Sylvestre <fsylvestre@baylibre.com>, Andy Hsieh <andy.hsieh@mediatek.com>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: add mediatek MIPI CD-PHY module
 v0.5
Message-ID: <2jfgupyvtuenvm7x52l6bo5xzzpva7u6njeg3ecd52wwj4spv6@y3nsq7j2hl2u>
References: <20230524083033.486490-1-jstephan@baylibre.com>
 <20230524083033.486490-3-jstephan@baylibre.com>
 <f92c39c8-177a-e18d-c3b0-79e7349ea4db@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f92c39c8-177a-e18d-c3b0-79e7349ea4db@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_070510_651528_D8045D69 
X-CRM114-Status: GOOD (  26.12  )
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

On Wed, May 24, 2023 at 11:45:30AM +0200, AngeloGioacchino Del Regno wrote:
> Il 24/05/23 10:30, Julien Stephan ha scritto:
> > From: Florian Sylvestre <fsylvestre@baylibre.com>
> >
> > This adds the bindings, for the MIPI CD-PHY module v0.5 embedded in
> > some Mediatek soc, such as the mt8365
> >
> > Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
> > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> > ---
> >   .../bindings/phy/mediatek,mt8365-csi-rx.yaml  | 67 +++++++++++++++++++
> >   MAINTAINERS                                   |  6 ++
> >   2 files changed, 73 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> > new file mode 100644
> > index 000000000000..a1bd96a98051
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +# Copyright (c) 2023 MediaTek, BayLibre
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/mediatek,mt8365-csi-rx.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Mediatek Sensor Interface MIPI CSI CD-PHY
> > +
> > +maintainers:
> > +  - Julien Stephan <jstephan@baylibre.com>
> > +  - Andy Hsieh <andy.hsieh@mediatek.com>
> > +
> > +description:
> > +  The SENINF CD-PHY is a set of CD-PHY connected to the SENINF CSI-2
> > +  receivers. The number of PHYs depends on the SoC model.
> > +  Depending on the SoC model, each PHYs can be either CD-PHY or D-PHY only
> > +  capable.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - mediatek,mt8365-csi-rx
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  '#phy-cells':
> > +    const: 0
> > +
> > +  mediatek,phy-type:
>
> Instead of declaring a phy-type here like this, can't we instead declare that in
> the phy cells, like we're doing with MTK TPHY and like other non-MediaTek PHYs are
> already doing?
>
> device {
> 	...
> 	phys = <&csi0_rx PHY_TYPE_CDPHY>;
> 	...
> }
>
> Regards,
> Angelo
>
>

Hi Angelo,

This is a hardware property that is not dynamic, so IMHO it doesn't make sense
to use phy argument for that. Some driver already use a 'phy-type'
property (such as phy-cadence-torrent.yaml).

I was thinking of using phy argument on future upgrade when driver will
support D-PHY and C-PHY modes so the phy user will be able to choose the
mode.

Does it makes sense?

Best
Julien

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
