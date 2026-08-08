Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37863C55174
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 14:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LY3mvYiLSm2ExO8O51zbpt2TAZ0R9mY4D6vI2MXMI20=; b=az5GIhDhRA+nqN
	qcd2SKwwa53tBkYKkxJhCgiF4YmD59IeTCD9fhKJNaOkZ1+VYPMmJklrEOJ7UmNpxxfN131hlyykd
	T5wnkdJ5kIb5LKsHXyt6F+gmMRCP+tZ1XfC89rjeCmuukR3eocRRTTdUXOX85mb3xD+c/SEyUTwSZ
	JnLtFME2gpMs3yfpPrDPj2va6naVOesbskRmWeWc3k3YskVGwHRSU2NnepA/v083cM/GrwHSRYjrz
	wctzC8g7IFBTOylCgeoutsNnBdfGN8XwZ9V/WAKg7EjjxetlZE+1E4hZW+hG23+14RkfFKFt48z57
	cPGTCMNPvKV+KsLsFOFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsiCp-00000009SYU-3efr;
	Sat, 08 Aug 2026 14:39:23 +0000
Received: from mail-pj2-x09.google.com ([2607:f8b0:4864:39::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsiCm-00000009SXj-3XgG
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 14:39:22 +0000
Received: by mail-pj2-x09.google.com with SMTP id 98e67ed59e1d1-38f0f8ab050so595764a91.0
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 07:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786199960; x=1786804760; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gLPlagPSnxq9fTONnyyz/3ddba5KQ5Gz9V5u0Vh5tVQ=;
        b=Idw1GdxC3g34OI9Fq+b24Oqrhrb1zEpulo42qIbYCLQVr518EzbLl0muj59DogpK1T
         3/ZNxG4jJnF9cHg9ezwedpCtvrMgToiAjZC8XRdHQgwwwA1gEnk67hYnDWIxrgFbx3t6
         1EJEiLYNTcmR2scRfgDl437nWaiW8bVXZ248TfAh9aYtuY8Eu1196yRFy0iH0vLBOgfA
         Z00wZhgKYrltOK0pRJA/yah+Z/63E4vhtqfE+5Oj2lCQMLe6qs/9GYaRF1BrYSEmQLvO
         7GYS7Xk8Lhp+zy3Hbj4o4ZWnBEZ6C2DnCma/qJI9c/+jwkIts0ZoDshbMgkHEx3Pxp+I
         Zj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786199960; x=1786804760;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gLPlagPSnxq9fTONnyyz/3ddba5KQ5Gz9V5u0Vh5tVQ=;
        b=NOuKQv/yLl6B8SYs8cWUnc6cAcVzf9NlZGSt8dZXq6610O7lxWBSDpPogJ4uU0MfTU
         891KAC5fyIhR13DbRyXjBWa9ITlhoEGIjRVkX5y03h6fWsSFe2E77PCG4uMhKhxkq+uh
         oXfPtIQ40UiMhpLLkT7PlmvlbQ/Fs6G2BXhJs7eLXMb0nQ3eGEOtFkzZ0pPvuVPxthYK
         vTdnI3LQxwLdYVsTXM68MKbrYkuBgeyCMm2LBherXQb9swsWgpUq/t2ncT1cQqUNHDqx
         GBZY4QAmhsUtzfsfX3p7cWSPuMzt3dAWvXk6GymDnEOtP6ehumJXRw1kz119fu/QoUem
         i1aA==
X-Forwarded-Encrypted: i=1; AHgh+Rom0qhZC6TNco1ohm/b48rTMS7CYlnCLAK1rGufEXrusIB2Yx0J5UZjGxUiDrUrWQV9D6YILfdEjmA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDnrYP7LP+PNkhf58OwHLevel2EoWgRTykPzrfZ6n8u5K1iLyt
	osA1JDlfSPAAoE9rFaoDvMQXmD5NpOKxQtEA7BrBJpMiVepS94j8LN/F
X-Gm-Gg: AR+sD12jPFSPa3+MAP+/zuSHNOnFa7zHKOXbNnzHxrqvnMbklOpfBjdmjQ8F6QV9fWR
	sMW0phL26Qwvy17q0WuGGL1XA1YnlfVqRDDh4TpKNsmzn+xjgMgolpsQBp54piQ+T+aAeuVHAq+
	tZlFwWjlgxIUUgfh7S4EUw7ZIr6GdX5o+vUBTMg2OyBC3UWlnTI6olpPwb9gOGgwGdymLGX6XxJ
	crquTiwOeIZE7YFrjiHcdj+ZTks837wnye5uFU8/nzqspy642rUZTvO/8wGOPLIVGBa2yOPwJHO
	hV1ddwE8MUN96rV+pPqKpC/qNhYcs9dTrOfE7BTRLho1t4OBTuRLELQjjPr0jan9g+ZhuUChM5x
	uTCFHhyQky8YeLJFY7VlcrJezZDOG4aFocD8by9Ky+n/+acmZCisLvnZOqmJ+OJm5piOVqLvCTX
	lpZSG4yxZEPHO0Btmh8vhpe/cB+hdejhLmteD0zNQ=
X-Received: by 2002:a17:90b:2585:b0:38e:bbf1:de34 with SMTP id 98e67ed59e1d1-39261fdab5amr13832835a91.7.1786199959787;
        Sat, 08 Aug 2026 07:39:19 -0700 (PDT)
Received: from localhost ([2403:2c80:17:1e::20db])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3925fd95794sm6424491a91.7.2026.08.08.07.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 07:39:19 -0700 (PDT)
Date: Sat, 08 Aug 2026 22:39:16 +0800
Message-ID: <ec84e2ba71be5e82a3afcf257129bf58.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Haylen Chu <heylenay@4d2.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH RESEND 03/17] dt-bindings: display: spacemit: add K3
 Innosilicon DP/eDP controller
In-Reply-To: <20260807230404.GA2211679-robh@kernel.org>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-3-6de34d80e86c@gmail.com>
 <20260807230404.GA2211679-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_073920_890070_FD9D2CE7 
X-CRM114-Status: GOOD (  20.69  )
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

Hi Rob,

On Fri, 07 Aug 2026 18:04:04 -0500, Rob Herring wrote:
> On Sat, Jul 25, 2026 at 12:51:12AM -0400, Cody Kang wrote:
> > Both K3 instances are the same IP and share one compatible; which one
> > behaves as eDP is decided by what its downstream port is wired to, not by
> > which register window it sits in, so the binding does not distinguish them.
> >
> > Signed-off-by: Cody Kang <codykang.hk@gmail.com>
> > ---
> >  .../display/spacemit/spacemit,k3-inno-dp.yaml      | 140 +++++++++++++++++++++
> >  1 file changed, 140 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/spacemit/spacemit,k3-inno-dp.yaml b/Documentation/devicetree/bindings/display/spacemit/spacemit,k3-inno-dp.yaml
> > new file mode 100644
> > index 000000000000..865ea310daaf
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/spacemit/spacemit,k3-inno-dp.yaml
> > @@ -0,0 +1,140 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/spacemit/spacemit,k3-inno-dp.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: SpacemiT K3 Innosilicon DisplayPort / embedded DisplayPort Controller
> > +
> > +maintainers:
> > +  - Cody Kang <codykang.hk@gmail.com>
> > +
> > +description:
> > +  Innosilicon DisplayPort transmit controller integrated in the SpacemiT K3
> > +  SoC. The K3 has two instances of the same block sharing one compatible;
> > +  each acts as embedded or external DisplayPort depending on whether its
> > +  output port drives a panel or a connector.
> > +
> > +properties:
> > +  compatible:
> > +    const: spacemit,k3-inno-dp
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +    description: Link and hot-plug events.
> > +
> > +  clocks:
> > +    items:
> > +      - description: Pixel clock for the controller.
> > +      - description:
> > +          Pixel clock generated by the DP PHY PLL; the pixel clock above is
> > +          parented onto it in use.
> > +
> > +  clock-names:
> > +    items:
> > +      - const: pxclk
> > +      - const: pll
> > +
> > +  resets:
> > +    maxItems: 1
> > +    description: Controller-wide reset signal.
> > +
> > +  phys:
> > +    maxItems: 1
> > +    description: Phandle to the K3 Innosilicon DP PHY.
> > +
> > +  phy-names:
> > +    items:
> > +      - const: dp
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Video input from the DPU.
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Output to the panel or to the DisplayPort connector.
> > +
> > +    required:
> > +      - port@0
>
> Shouldn't port@1 be required too?

Thanks for the review. Yes, will make port@1 required in v2 and
describe the DP connector on the board side (dp-connector) so the
graph is complete.

> Otherwise,
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Thanks! Will pick up your Reviewed-by with that change in v2.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
