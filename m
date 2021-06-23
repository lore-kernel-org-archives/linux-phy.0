Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E80C4743C
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 15:44:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84CD2610C7
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 15:44:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 84CD2610C7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ae5B43gcSZj81cnd0Rp76sqXTo3ihyuWbFha2cmgAVA=; b=M65b7Omngu3oHp
	hnwJDEWxnbRfQEgpR/CLkk3v9374FwSHpj6rACUfvcPINBP6nROhaqhzZ2uIwb7fhmL1mpb3MYV9a
	/QCEoHxuDfYPZ6I2IgYKvK7nzLQimTeI4duxlEYRTo2iJJ0BIYXjtQ37YRyuvKpaWFQCo2QFsMTpR
	PFSe+kv7Qnmn4umXWF/iAkrHMg0tg94myjlbF3hirq87j+hswg+HkBvZr02IGng3JbPD1WiqyM5+6
	QDgqyn4IIqdjpkjWObB7gA4STa603qa2kpaTj8K4YA58SWDcGqlg6FurNE0rag/JhiooekuyHj98e
	zAxTt7FzjVvcnuahBaZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw53N-00BAJF-1k; Wed, 23 Jun 2021 15:44:37 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw53J-00BAHh-7Y
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 15:44:35 +0000
Received: by mail-ej1-x633.google.com with SMTP id he7so4671794ejc.13
 for <linux-phy@lists.infradead.org>; Wed, 23 Jun 2021 08:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pWTQT9hqz+DhdHnOIzqiipB68pLsb96pnxhgmji3vzI=;
 b=X9VJDJSMEjzSv5poRhninV0Ko6KwWKOuAF5hxrAzwbxUtKkcPOumHqjO3c1VmRbsDM
 qICfLsc8OPQEzKrrAzOxlQtrnL1nG5MCwKYxpCozXGTwyuWw8Ap1bD00/G2en4x8mRKi
 Eps/Bl6EXlrpDJ+lEJWC49zq7b/WBPVrzLUgM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pWTQT9hqz+DhdHnOIzqiipB68pLsb96pnxhgmji3vzI=;
 b=NNxaEv9rOeFQ5MrbFrMbHPbj9KIRzjyO44DukRIf3WffGfT9N9ZoefRwO7VeIRflzd
 Ozjd8QyADLPxAuJLUppPJ/Uki+g6phBsrsWjDpo/h/9Hq8WQuB0/PvKW6BoCkR72ZrVj
 kqPVc6TtgUoT9kt7PGT81Pxns3RaBZ3RF676y7sgQQg9bLsOlDuKqOOejGPDiPhw1Pap
 k0Gmr0YsbiTFDgYSV/w9LjaQzWqYeFZ9Rwn+0GSn0tsyAa7aSoiFRoZpRev/NKYUagMP
 idbLmYOkx/Q9Fx6u6WdI81POjw7k+LbzDxRaW/p2vmS5B/2wchQUFR3N+ipS/kOpIpVu
 u99g==
X-Gm-Message-State: AOAM532Ac00i1ZQ3BifFF7Vjo9U6jOAyRouywTrI+aiPfW4vxmUDcN/f
 +Ox/Ff3pQVC8U03209Z4gIMahRLFU+8j+hrNY1KZog==
X-Google-Smtp-Source: ABdhPJxs1ynO88wXheyf2VPD1FkNJ7s8VcqhwpyUGgxU32FDfbf4AgGMZjAswMZGjJH+ka9QUIvnYyYkKU9gCG/7UDQ=
X-Received: by 2002:a17:906:b887:: with SMTP id
 hb7mr709041ejb.252.1624463070457; 
 Wed, 23 Jun 2021 08:44:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-2-jagan@amarulasolutions.com>
 <YNDSpAJdI3OKugSL@pendragon.ideasonboard.com>
In-Reply-To: <YNDSpAJdI3OKugSL@pendragon.ideasonboard.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 23 Jun 2021 21:14:19 +0530
Message-ID: <CAMty3ZDy+zAFgRW2OA5srsYNc-Qd8JCp3uLTWWkLRZJQKEMpAA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/9] dt-bindings: display: bridge: Add Samsung SEC
 MIPI DSIM bindings
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>, 
 Fancy Fang <chen.fang@nxp.com>, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>, linux-phy@lists.infradead.org, 
 linux-kernel <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>, 
 Anthony Brandon <anthony@amarulasolutions.com>, 
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>, 
 Milco Pratesi <milco.pratesi@engicam.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Robert Foss <robert.foss@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_084433_463071_9810E00D 
X-CRM114-Status: GOOD (  22.74  )
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

Hi Laurent,

On Mon, Jun 21, 2021 at 11:26 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> Thank you for the patch.
>
> On Mon, Jun 21, 2021 at 12:54:16PM +0530, Jagan Teki wrote:
> > Samsung SEC MIPI DSIM Bridge controller is MIPI DSI bridge
> > available in NXP's i.MX8M Mini and Nano Processors.
> >
> > Add dt-bingings for it.
> >
> > Cc: Andrzej Hajda <a.hajda@samsung.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Robert Foss <robert.foss@linaro.org>
> > Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../display/bridge/samsung,sec-dsim.yaml      | 184 ++++++++++++++++++
> >  1 file changed, 184 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> > new file mode 100644
> > index 000000000000..32f67f313dfd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> > @@ -0,0 +1,184 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/samsung,sec-dsim.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung SEC MIPI DSIM Bridge controller on i.MX8M Mini and Nano SoCs
> > +
> > +maintainers:
> > +  - Jagan Teki <jagan@amarulasolutions.com>
> > +
> > +description: |
> > +  NWL MIPI-DSI host controller found on i.MX8 platforms. This is a dsi bridge for
> > +  the SOCs NWL MIPI-DSI host controller.
> > +
> > +allOf:
> > +  - $ref: ../dsi-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx8mm-sec-dsim
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> > +
> > +  assigned-clock-parents: true
> > +  assigned-clock-rates: true
> > +  assigned-clocks: true
> > +
> > +  clocks:
> > +    items:
> > +      - description: DSI bus clock
> > +      - description: PHY_REF clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: phy_ref
> > +
> > +  phys:
> > +    maxItems: 1
> > +    description: phandle to the phy module representing the DPHY
> > +
> > +  phy-names:
> > +    items:
> > +      - const: dphy
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +    description: phandle to the associated power domain
> > +
> > +  samsung,burst-clock-frequency:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      DSIM high speed burst mode frequency.
> > +
> > +  samsung,esc-clock-frequency:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      DSIM escape mode frequency.
> > +
> > +  samsung,pll-clock-frequency:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      DSIM oscillator clock frequency.
>
> Why do you need those three properties ? They look like configuration
> information to me, not system description. If they are needed, their
> description needs to explain how to set them. Looking at the three
> descriptions above I have no idea what to select for those frequencies.

DSIM PLLOutput PMS values are computed based on these clock values as
per exynos dsi code is concern. Look like there is other way to
compute PMS in SEC DSIM(at least on i.MX8MM) unlike exynos. Let me
come back with new changes, thanks!

Jagan.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
