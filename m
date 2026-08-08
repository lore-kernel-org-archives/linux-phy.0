Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 488B6C55174
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 14:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+8/RZvlQgZLDqS0d5rWx1/QlNY+iuUjxA5dRsTsrXo=; b=uGDKJzX3ciWFF1
	KgguiQbNULGAxj20yhpCyhp+kDnHbezc+EkOCEBayLMe7fbaBi9yW5Y9j+G/CkRGqwhLNoe5oF+lv
	3elhNm7yTQFW4do/MKrYATOQdKmP+iLKGxyaecYm0Id6CJU9On7nIXlCkfJAG7sUcpl6mc/AfSlCS
	JVGXgZxLDvmrE67mizKolnuwTG3c9WqINk/lF78qQjJr73DUNAEZln5j1Q5Nm61Yw5XmOEaPOrORv
	T7U355zx61GCrFN3LO+72tp5I3y52x7l6KGJqDbFsrFg+aBKgyglkxmM/02Jway0v73njbuREs/2L
	dCl19xAvOJ50wfOOU+kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsi3I-00000009S5e-3XRQ;
	Sat, 08 Aug 2026 14:29:32 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsi3F-00000009S4n-4ALX
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 14:29:31 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-c96739a46acso246393a12.1
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 07:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786199369; x=1786804169; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=7CZYGhkXjoLPOZDdCP+ZBeQkJbqW9Nm3A99Ju9rkXbI=;
        b=iFdfmy3Hv5a1iGrOwZ0N3sqqOZojeHaW+HI/OTgZQ8Y9IPeILYRm1njJmuxFgIsJVq
         rBEEXTzQosCPftHdPu89k9ZywHAOfjc/nDGy+gQbK2ZXgEyh6R7rO9pfGLoosRX4Oc2T
         ONxPu4Jg2WTbca42jEUwzByF1DQE98+N1fT8s8AbkPBUAnroTFz00jS81p20MTo1AHga
         Y79CkoC7gX1RyQipMctoa5CKeK0Ym0wxvG60zSmNXpSaHNhceM4EHak2Sn72POLZ8gq0
         gBvYHp4clm2F0KCFi+eMDPzky7Ixi2B+nQOs2xwlqpnMCqY0sAUmVW633OhinJyI68LS
         aNAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786199369; x=1786804169;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7CZYGhkXjoLPOZDdCP+ZBeQkJbqW9Nm3A99Ju9rkXbI=;
        b=kzZu1pXTCpJL0aYOKMTRtZ2nhBbe0qaHvzFZKW1cOMbkh1bc4Fx6PpttVgGhXV5gr5
         EivAEhaS41SQ32Z0yfOt9KFCq+/yJDa/gMMvCf6PV8NXnju/6M0APsP2uhJjQBSRxAmy
         oGmY9F/c2FBrYGmWYaDUcKXOZHLV3MaGA++dZ98u8dvcWd09GPiqbJETIp8GSO/iS8D5
         +r2hQSU3/Ivmnb2wxJtua2WiNHudJeTj+sTg/5P0OzgXzpn4/+6WRam7ivWjD4MZQeRp
         fYSCeaXNSUXh0l6JSFk2PNQqPamYMNZAHt/0Cq9NP90TU2S+fuXb+D28ncxpbPzBqd4c
         kDXQ==
X-Forwarded-Encrypted: i=1; AHgh+RrVfV2WAqdf/lKoWY2xPm29Im0K076C8Ke0P0X1hBcY7EYr6yTTffHjANWfVrM6UzFEzFg3CQwHFJ0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKeV0mZK0Z45UJQl6n+NK685DNfcemZHt5gbCKSKo4XU1Ljt3u
	jZn8SNx8Z8iV0D2TVtFFkVA0Z6oPojclY6nO7+QxN6It5pb0jpCkWHMD
X-Gm-Gg: AR+sD12w4WeYszZjrvkS79CGmPHVYVCAdRAvLA1pGE3w7ypO+i0H4uWodzAGZYkql8n
	EYKWgg2hszjse5Tb2RpYpAtj3AuI3cLm5tFV3Yxzrv4C+gTwCbcnG4ldovW0AeuB/zu+e3X4NX+
	FI9J0frilAbZKkbtY/rw1tU2Y5zv1HX+smyRB3Ey5mgfql3N4YB5Zhhd0qHqiE+g2Wpi1PElLCK
	lDhpG6lPVSYLLy0vvWQEvPBDsp60xqYCroFzJpzB7Wi3+i/q4gvBsnWSksP3VnzCksD+ZDhShlD
	Cvcl3jUrT8x3DfQRpbkYb9K5PlRu3EZnez696m1e2dYYeUnlzl0JUGxsu4ZfaPsgGmIErqyYFSc
	W44YRzl1loMOPETA5mGPegAbt2ddZPWl8b6QhM6Lqkdn1V10k1kobjIsTKdmvZtedJNz0mPggc/
	JfQPpNnhFDzR084TtdwFerhrA8RjcZ89vzBKRxLzE=
X-Received: by 2002:a05:6a00:278b:b0:848:7b92:8e74 with SMTP id d2e1a72fcca58-84f2e0dc994mr36524222b3a.39.1786199369200;
        Sat, 08 Aug 2026 07:29:29 -0700 (PDT)
Received: from localhost ([2403:2c80:17:1e::20db])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f5a3cad9dsm2140077b3a.23.2026.08.08.07.29.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 07:29:28 -0700 (PDT)
Date: Sat, 08 Aug 2026 22:29:25 +0800
Message-ID: <2b3c661bf7e1d437f81e4b7da13be25d.codykang.hk@gmail.com>
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
Subject: Re: [PATCH RESEND 04/17] dt-bindings: soc: spacemit: allow eDP/DP PHY
 PLL pixel clocks on K3 APMU
In-Reply-To: <20260807230824.GA2220945-robh@kernel.org>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-4-6de34d80e86c@gmail.com>
 <20260807230824.GA2220945-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_072930_032780_A9DF138B 
X-CRM114-Status: GOOD (  16.90  )
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

On Fri, 07 Aug 2026 18:08:24 -0500, Rob Herring wrote:
> On Sat, Jul 25, 2026 at 12:51:13AM -0400, Cody Kang wrote:
> > The APMU's eDP pixel-clock muxes select the DP PHY PLLs as parents, so the
> > K3 syscon takes two clock inputs the other variants do not have.
> >
> > Gate them behind the K3 compatible instead of widening the shared clock
> > list, so a non-K3 syscon cannot silently accept clocks it has no mux for.
> >
> > Signed-off-by: Cody Kang <codykang.hk@gmail.com>
> > ---
> >  .../bindings/soc/spacemit/spacemit,k1-syscon.yaml  | 30 +++++++++++++++++++++-
> >  1 file changed, 29 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml b/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
> > index d3a7c93c3c54..b8fc6632a392 100644
> > --- a/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
> > +++ b/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
> > @@ -31,14 +31,18 @@ properties:
> >      maxItems: 1
> >
> >    clocks:
> > -    maxItems: 4
> > +    minItems: 4
> > +    maxItems: 6
> >
> >    clock-names:
> > +    minItems: 4
> >      items:
> >        - const: osc
> >        - const: vctcxo_1m
> >        - const: vctcxo_3m
> >        - const: vctcxo_24m
> > +      - const: edp0_pll_pxclk
> > +      - const: edp1_pll_pxclk
> >
> >    "#clock-cells":
> >      const: 1
> > @@ -95,6 +99,30 @@ allOf:
> >          - clocks
> >          - clock-names
> >          - "#clock-cells"
> > +  # Only the K3 APMU exposes the two eDP/DP PHY PLL pixel clocks as extra
> > +  # inputs (parents of its eDP pixel-clock muxes); every other variant has
> > +  # the four base oscillator inputs only.
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: spacemit,k3-syscon-apmu
> > +    then:
> > +      properties:
>
> > +        clocks:
> > +          minItems: 4
> > +          maxItems: 6
> > +        clock-names:
> > +          minItems: 4
> > +          maxItems: 6
> > +    else:
> > +      properties:
> > +        clocks:
> > +          minItems: 4
> > +          maxItems: 4
> > +        clock-names:
> > +          minItems: 4
> > +          maxItems: 4
>
> 4 is already the minimum, so it can be dropped on all of these.

Thanks for the review. Will drop them in v2.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
