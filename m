Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C312E7718E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 06:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/hutH9jkkceBPgAukq0+uFAzBTCqDb2YqVV6H4Awv4=; b=lMwi+irC9pRG14
	SXh5yoLTyBbfltWzQhHhoRLXmOl68WoO9C3iqN1Trn0wtYmQeJfjvlV/68+0z7HblD1oeYT7BLrgz
	Xg//xjypnrjw78P0FPvhtsSAv+KVoYH5lnPBu+Uvh/Dd64sErTS9s06zeQkYDo99OaGbMNx4w5RDz
	Rhu1mi5sijE99xRrT4/XNhTfAUCbJ+Et7HbTgYgUHZsMgtdM/KieBQczt8roJIIx5pd8259EnajfG
	1XOiSjQg2OsnviE+uJCYh9G8+N+MULD/y3RWCkiHdY5xpYoBRC19EBZuKDKBKtD9lQPs4rvvvAub6
	Q+VS+uyGJPxJPsJQ7Gmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPyYF-0000000BN9Q-3KKY;
	Tue, 24 Dec 2024 06:37:55 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPyYD-0000000BN7r-139k
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 06:37:54 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-e46c6547266so3960231276.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Dec 2024 22:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735022272; x=1735627072; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o1XvnZFs6gULC9u+/TF7lOR4yZnTuNv7QjOSNUS7iok=;
        b=GYdk3rO9OMm7l4eOhrGzrFq3VyVOy8wjOt5nbp8asYUeiufk1pR3PnoP0NE1DpMD4A
         nhejXy/Ryg96G7iepwdNk2bVWGzc3niyKcqqrwd82fxylqoBDECk+c+3krlp4PWb276X
         2qIOmnbQdaHHuZvYuuFq9E9LiMBT9yqZpZGsDvxsBKkYBlRBVGiZaZ9fZqn6nmFD+cxG
         Vo1mlMK2u4dYMD3KrFYZyDfV/gkFiLG8Z3TbSxfGVwKiLjAdPMHyXjU1XiUkXubOmVBg
         ynHvFThHpGD2s2Q7IiOAXLZVU/Lv/abr3P43UwbIjtSYiSWfrpo0f/bBfwh0rHRJHTkF
         VUJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735022272; x=1735627072;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o1XvnZFs6gULC9u+/TF7lOR4yZnTuNv7QjOSNUS7iok=;
        b=jqAyyDG736E8jS2akz3YKjs0iYT6QinQg1XQrRxdDkkZTqgqxpQjX4qZ1yNS6s+rNy
         AxSl8CaiSoJzsRZ3SSYvwVw7FScyA0sIbznc/ISMBNic4SuWOKM+l+XAoeDBJwQciBhv
         IWJO8hk6ukpOrSoJfpfV8OuGVAOI1G8j8VGF+aF/O0VUPi6ICC4A4X+yk25VuSydn9O4
         LV3oTrlM2eg/+UoUaWxu+/u/CwMPqOeG6W9DNHasA5+IZ0bzghbo1N4UKmCu7fAD4/z7
         UKupnvgYlj4lp9NXrBdJ+UNzWsA+LYlFjAyC5mLAmpyP+0M4Y8W43kLzqv6rmbDuqKVu
         tfig==
X-Forwarded-Encrypted: i=1; AJvYcCWvrHqLq4lH00SayKsjNjKRueBgSD94G8dy6TvQy2hj8K/Mth1I6zHajN8znJZWyhPjYEGUzV99xGk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCSAVV5LxWNGFls593dkDw8H3RhP9jvIBV1Zf5drQHBCrC0IEc
	9msM9IWnW9OIBnTYyZ521HSmWJG7h9/COtl+/GqsncHMm0jvLsEUgjeUatw7OtHb5BaDiMYa6B0
	wPC2vitkaOvOUejALi79TtTqusVq4dIzdsRgSCA==
X-Gm-Gg: ASbGncsZn8Ay1YJn9tAxy4mEp1nzcFBALPNuJI/GGci6095nej1LFKmUC6/3NQDb6OQ
	zTLOkh3Gk5rs/8JUSYVqvcDYwlRDLMMBDVzktYNb3sOinQ4+kdp3L
X-Google-Smtp-Source: AGHT+IFZ8ke7ALCJ3nOuLTQKsekeJoRs3cJKquLJ733BfXm3xrOprg1bOLqkxV6UJrbJ7rSuBs35FEWCK/hX2TFMd+E=
X-Received: by 2002:a05:690c:7402:b0:6ef:7370:96ee with SMTP id
 00721157ae682-6f3f812055fmr116458157b3.12.1735022271919; Mon, 23 Dec 2024
 22:37:51 -0800 (PST)
MIME-Version: 1.0
References: <20241223064147.3961652-1-victor.liu@nxp.com> <20241223064147.3961652-4-victor.liu@nxp.com>
 <kpem2w4wu7ywc5pvbk3ls5hsyttrwcylomzfh567ejlxkymeqd@cujrbfxgrntc> <73c80079-582a-40cb-b9e1-e20fc96fe603@nxp.com>
In-Reply-To: <73c80079-582a-40cb-b9e1-e20fc96fe603@nxp.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 08:37:41 +0200
Message-ID: <CAA8EJpqJiiR15Xxw3j+vGPUBYYLgvxuXKeigMGBb4F3w178cfA@mail.gmail.com>
Subject: Re: [PATCH v7 03/19] dt-bindings: display: imx: Add i.MX8qxp Display
 Controller display engine
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	tglx@linutronix.de, vkoul@kernel.org, kishon@kernel.org, aisheng.dong@nxp.com, 
	agx@sigxcpu.org, u.kleine-koenig@baylibre.com, francesco@dolcini.it, 
	frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_223753_310504_8759F9BF 
X-CRM114-Status: GOOD (  28.34  )
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

On Tue, 24 Dec 2024 at 07:56, Liu Ying <victor.liu@nxp.com> wrote:
>
> On 12/23/2024, Dmitry Baryshkov wrote:
> > On Mon, Dec 23, 2024 at 02:41:31PM +0800, Liu Ying wrote:
> >> i.MX8qxp Display Controller display engine consists of all processing units
> >> that operate in a display clock domain.
> >>
> >> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> >> ---
> >> v7:
> >> * Drop DT alias documentations and add instance numbers to compatible strings.
> >>   (Rob)
> >>
> >> v6:
> >> * No change.
> >>
> >> v5:
> >> * Document aliases.  Drop Rob's previous R-b tag. (Maxime)
> >>
> >> v4:
> >> * Collect Rob's R-b tag.
> >>
> >> v3:
> >> * No change.
> >>
> >> v2:
> >> * Drop fsl,dc-*-id DT properties. (Krzysztof)
> >> * Drop port property. (Krzysztof)
> >> * Fix register range sizes in example.
> >>
> >>  .../imx/fsl,imx8qxp-dc-display-engine0.yaml   | 235 ++++++++++++++++++
> >>  1 file changed, 235 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-display-engine0.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-display-engine0.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-display-engine0.yaml
> >> new file mode 100644
> >> index 000000000000..60d1e0a4a5dd
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-display-engine0.yaml
> >> @@ -0,0 +1,235 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/display/imx/fsl,imx8qxp-dc-display-engine0.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Freescale i.MX8qxp Display Controller Display Engine
> >> +
> >> +description:
> >> +  All Processing Units that operate in a display clock domain. Pixel pipeline
> >> +  is driven by a video timing and cannot be stalled. Implements all display
> >> +  specific processing.
> >> +
> >> +maintainers:
> >> +  - Liu Ying <victor.liu@nxp.com>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    enum:
> >> +      - fsl,imx8qxp-dc-display-engine0
> >> +      - fsl,imx8qxp-dc-display-engine1
> >
> > Is there actual difference between engines 0 and 1? If there is none,
> > why are you artificially adding one here?
>
> I think engine 0 and 1 have the same HW implementation, but they connect
> to different ExtDsts through FrameGens.  The two compatible strings make
> it possible for an operating system to figure out which engine is which
> by getting the instance numbers from them.

This is about HW description, no OS in place.

>
> If the two engines use a same compatible string, then either 1) use
> DT aliases to get the instance number(as v5/v6 do) or 2) use OF graph to
> describe the connections between FrameGens and ExtDsts.  However, in v6,
> Rob doesn't like 1) because it abuses the aliases which contain the display
> controller instance number, like "dc0-display-engine0"(i.MX8QM SoC has
> two display controllers), and 2) is too complex because all connections
> between internal devices need to be documented with OF graph.  So, I choose
> to use the two compatible strings, like brcm,bcm2835-pixelvalve0.yaml does.
> Thinking about 2) more, maybe the connections between pixel engine and
> display engines need to be documented too, which seems to be more or less
> duplicating the connections between FrameGens and ExtDsts.

3) use IO addresses to determine the block ID. I think this has been
pointed out by somebody else too, not only by me.

>
>                                            CF0/1/4/5
>                            PE               | | | |
>                                             V V V V  primary layer cross bar
>                           +------------------------------------------+
>                           |                                          |
> 4 FUs + (VS4/5 + HS4/5) =>|               LB0/1/2/3                  |
>    secondary layer        |                                          |
>    cross bar              +------------------------------------------+
>                              |          |              |          |
>                              V          V              V          V
>                           +-----+    +-----+        +-----+    +-----+
>                           | ED0 |    | ED4 |        | ED5 |    | ED1 |
>                           +-----+    +-----+        +-----+    +-----+
> -----------------------------|----------|--------------|----------|-------------
>                           content     safety        safety     content
>                           stream0    stream0        stream1    stream1
>                              |          |              |          |
>                              |  DE0     V              V    DE1   |
>                              |       +-----+        +-----+       |
>                               ------>| FG0 |        | FG1 |<------
>                                      +-----+        +-----+
>                                         |              |
>                                         V              V
>                                        ...            ...
>
> >
> >> +
> >> +  reg:
> >> +    maxItems: 2
> >> +
> >> +  reg-names:
> >> +    items:
> >> +      - const: top
> >> +      - const: cfg
> >> +
> >> +  resets:
> >> +    maxItems: 1
> >> +
> >> +  interrupts:
> >> +    maxItems: 3
> >> +
> >> +  interrupt-names:
> >> +    items:
> >> +      - const: shdload
> >> +      - const: framecomplete
> >> +      - const: seqcomplete
> >> +
> >> +  power-domains:
> >> +    maxItems: 1
> >> +
> >> +  "#address-cells":
> >> +    const: 1
> >> +
> >> +  "#size-cells":
> >> +    const: 1
> >> +
> >> +  ranges: true
> >> +
> >> +patternProperties:
> >> +  "^dither@[0-9a-f]+$":
> >> +    type: object
> >> +    additionalProperties: true
> >> +
> >> +    properties:
> >> +      compatible:
> >> +        enum:
> >> +          - fsl,imx8qxp-dc-dither0
> >> +          - fsl,imx8qxp-dc-dither1
> >> +
> >> +  "^framegen@[0-9a-f]+$":
> >> +    type: object
> >> +    additionalProperties: true
> >> +
> >> +    properties:
> >> +      compatible:
> >> +        enum:
> >> +          - fsl,imx8qxp-dc-framegen0
> >> +          - fsl,imx8qxp-dc-framegen1
> >> +
> >> +  "^gammacor@[0-9a-f]+$":
> >> +    type: object
> >> +    additionalProperties: true
> >> +
> >> +    properties:
> >> +      compatible:
> >> +        enum:
> >> +          - fsl,imx8qxp-dc-gammacor0
> >> +          - fsl,imx8qxp-dc-gammacor1
> >> +
> >> +  "^matrix@[0-9a-f]+$":
> >> +    type: object
> >> +    additionalProperties: true
> >> +
> >> +    properties:
> >> +      compatible:
> >> +        enum:
> >> +          - fsl,imx8qxp-dc-matrix0
> >> +          - fsl,imx8qxp-dc-matrix1
> >> +
> >> +  "^signature@[0-9a-f]+$":
> >> +    type: object
> >> +    additionalProperties: true
> >> +
> >> +    properties:
> >> +      compatible:
> >> +        enum:
> >> +          - fsl,imx8qxp-dc-signature0
> >> +          - fsl,imx8qxp-dc-signature1
> >> +
> >> +  "^tcon@[0-9a-f]+$":
> >> +    type: object
> >> +    additionalProperties: true
> >> +
> >> +    properties:
> >> +      compatible:
> >> +        enum:
> >> +          - fsl,imx8qxp-dc-tcon0
> >> +          - fsl,imx8qxp-dc-tcon1
> >> +
> >> +required:
> >> +  - compatible
> >> +  - reg
> >> +  - reg-names
> >> +  - interrupts
> >> +  - interrupt-names
> >> +  - power-domains
> >> +  - "#address-cells"
> >> +  - "#size-cells"
> >> +  - ranges
> >> +
> >> +allOf:
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            const: fsl,imx8qxp-dc-display-engine0
> >> +    then:
> >> +      patternProperties:
> >> +        "^dither@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-dither0
> >> +
> >> +        "^framegen@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-framegen0
> >> +
> >> +        "^gammacor@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-gammacor0
> >> +
> >> +        "^matrix@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-matrix0
> >> +
> >> +        "^signature@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-signature0
> >> +
> >> +        "^tcon@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-tcon0
> >> +    else:
> >> +      patternProperties:
> >> +        "^dither@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-dither1
> >> +
> >> +        "^framegen@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-framegen1
> >> +
> >> +        "^gammacor@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-gammacor1
> >> +
> >> +        "^matrix@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-matrix1
> >> +
> >> +        "^signature@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-signature1
> >> +
> >> +        "^tcon@[0-9a-f]+$":
> >> +          properties:
> >> +            compatible:
> >> +              const: fsl,imx8qxp-dc-tcon1
> >> +
> >> +additionalProperties: false
> >> +
> >> +examples:
> >> +  - |
> >> +    #include <dt-bindings/clock/imx8-lpcg.h>
> >> +    #include <dt-bindings/firmware/imx/rsrc.h>
> >> +
> >> +    display-engine@5618b400 {
> >> +        compatible = "fsl,imx8qxp-dc-display-engine0";
> >> +        reg = <0x5618b400 0x14>, <0x5618b800 0x1c00>;
> >> +        reg-names = "top", "cfg";
> >> +        interrupt-parent = <&dc0_intc>;
> >> +        interrupts = <15>, <16>, <17>;
> >> +        interrupt-names = "shdload", "framecomplete", "seqcomplete";
> >> +        power-domains = <&pd IMX_SC_R_DC_0_PLL_0>;
> >> +        #address-cells = <1>;
> >> +        #size-cells = <1>;
> >> +        ranges;
> >> +
> >> +        framegen@5618b800 {
> >> +            compatible = "fsl,imx8qxp-dc-framegen0";
> >> +            reg = <0x5618b800 0x98>;
> >> +            clocks = <&dc0_disp_lpcg IMX_LPCG_CLK_0>;
> >> +            interrupt-parent = <&dc0_intc>;
> >> +            interrupts = <18>, <19>, <20>, <21>, <41>, <42>, <43>, <44>;
> >> +            interrupt-names = "int0", "int1", "int2", "int3",
> >> +                              "primsync_on", "primsync_off",
> >> +                              "secsync_on", "secsync_off";
> >> +        };
> >> +
> >> +        tcon@5618c800 {
> >> +            compatible = "fsl,imx8qxp-dc-tcon0";
> >> +            reg = <0x5618c800 0x588>;
> >> +
> >> +            port {
> >> +                dc0_disp0_dc0_pixel_combiner_ch0: endpoint {
> >> +                    remote-endpoint = <&dc0_pixel_combiner_ch0_dc0_disp0>;
> >> +                };
> >> +            };
> >> +        };
> >> +    };
> >> --
> >> 2.34.1
> >>
> >
>
> --
> Regards,
> Liu Ying



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
