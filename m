Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 386B0C5AC67
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 13:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3zO4oPsHja23o5+ZMa5I5KCEAMNdmPD6VJXIHYH2Gs=; b=lx3xle9TJdbeJm
	w40Dif+2F95sd5FoaWPdElYIRUdEsParJdMR9cAqUom1hapcUX40oOuHBN0iQAvVOWLT6FhP7lzws
	QxERLyzxLPHuWOYPv9enHpqP16velcLyIiOZd6GyqUcZnnwsN7hiZ7XeFONK2eVj+YNIrFTPADIXh
	/G3k1Pfgy8woAnhrA1NCjIuoPk+ljgj4N/hW0zWNCI+ijD5nLetq/9+/J0LiXsaDnbASD2QqbadZ/
	q0/kWTNZZxICuWeyq4OJiaadCy7HlBZbEf14gLC+9vv7zFygPQvmxEJXtOUlkA1B3mjPM6aw6aHFG
	SdMn7IoXt7xMNcQfgnoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsh01-00000009OgV-2kBR;
	Sat, 08 Aug 2026 13:22:05 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsgzy-00000009Ofe-3aDL
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 13:22:04 +0000
Received: by mail-pj2-x08.google.com with SMTP id 98e67ed59e1d1-38fd9408220so161999a91.1
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 06:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786195322; x=1786800122; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=li/c4+/312t4GgA151ifIixBtg8Isry/It3D3W9Em4A=;
        b=Zk6iBzD1+UtWy+n5HTeQCPn9oDCVKvBirzMQUDJqB1ryf8dfX+V06Zr20qJjPlAWWr
         VP5WJtuSmi2EaOWpH0NS0bRrt3yrk1Q1rwLq2xL1FraTmWttVKETOr6vbUd12whS7Fp0
         eZv2g6e/eBNgVC1jACnMVKWv7mZOTFzdXW6FENXwdv4gjObBL6uLyZbK4w5yDijt4+pu
         CAQ81cFeNqKJbucNvir4dBcO3E0215p4F6lxI7IgrvoLcZQnlc+eY476CGWcZOq/KhwE
         6SXGuKGQkpvZ59tOUNnkVgEh1WUwJ/mzgB6EeVJ17LMzzNkZLbS4YKDGLt6LpRiqW27F
         MQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786195322; x=1786800122;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=li/c4+/312t4GgA151ifIixBtg8Isry/It3D3W9Em4A=;
        b=b6CuMTB7Xj8pkkpPK32q/DMjpNl6fsDiMLapM3FzPE86JCFIrocABcRJMgbeLyJINE
         d6nPtfxMnedr1+2KfOqu84pIpMANOX2zRoXdc02Y0tiW+LPtDAAqFXvNc+ocgDsqBp/x
         223N/fp6s9Si/CI09UNcAqiBUFNRx2ZN2bHKJ5DmBgXtl/YxHDFG9WPPOQUZqkVjLkFX
         xQ61FUAMkBXIFUvfzHuGUqXbRbjHyxqyWsbHtJzq5NMeNVE6IqSKtmUWOEdjtoG5Kvkj
         k+0jxDLCPTENhUIeo/rIRI+ZtMsWIOE9vi+8GQYLKtnHUNrKAq/JXCYmRVVcCGQqyHDc
         P+dw==
X-Forwarded-Encrypted: i=1; AHgh+RpxfN1cs+sSDmA/CzkHUIe7gilsKxZWoI4cVrMPKBoY1tHsXRdDK8IILRekiUArb+DqhealR95DxoA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxN5eBltgu6isNRZon7qAWwL5fjy17gOBKTF4qyUvCkRO7jHeOB
	Nwbw2vOTfNBN//LFefEVg2qfjowN7VaCvBT8+s7X753433O6ySjEBd8h
X-Gm-Gg: AR+sD115PNDZ05TFlr8hTWdZdqlLtuRHgLNZZciST+wxwgfJRLzx3ng0NGHBsNXIR7s
	B3lDt3jLSpTfB1foRwz2UhSsqWiAlJpYy+loKdnOxpFK3BPa/kLs+vHfqx1Dv9GEB1CmeaJWCTG
	c7njF53puok/oKjfqu7/6dWK9Sh20dn2lFeQNfR+6XHsD3tYVdJ+5sda91sWVJMQ1eShG1hhghd
	GjlbrduJEX+zMchWJg+QxXRfqp2xsbjXsuI4KPlmTinkn6GyXRVeoEXRel0WU5idDGetHaTCvb5
	bPi80a+GDJZA47OJGpazKojbNLEEU0VzonncJKmshi66hhEmHHBQMfGURjo6dzd03iHL8JY+aUN
	88bLp3hrdnWVPAfos1iy1s87Wvo3v412q4mnb449SgEOfetxKj2lIacVjjSU+ydljwex6uc9Djm
	3yD3R9MAEdChTm1x9LR1zZnmg725jfcQr32xGTS7U=
X-Received: by 2002:a17:90b:17c5:b0:37c:607b:2cd9 with SMTP id 98e67ed59e1d1-3903b9f3ee3mr28104214a91.0.1786195321821;
        Sat, 08 Aug 2026 06:22:01 -0700 (PDT)
Received: from localhost ([2403:2c80:17:1e::20db])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-390b343e662sm2307387a91.2.2026.08.08.06.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 06:22:01 -0700 (PDT)
Date: Sat, 08 Aug 2026 21:21:57 +0800
Message-ID: <c73cc405df108dd7c3c5da95a1f8cddc.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH RESEND 10/17] drm/spacemit: add Saturn DPU KMS pipeline
In-Reply-To: <084a860a77f18aaafcda4b223eec4fdcd96e75c9.camel@pengutronix.de>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-10-6de34d80e86c@gmail.com>
 <084a860a77f18aaafcda4b223eec4fdcd96e75c9.camel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_062203_117967_3DBE3B4C 
X-CRM114-Status: GOOD (  22.03  )
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

Hi Philipp,

On Mon, 27 Jul 2026 09:35:38 +0200, Philipp Zabel wrote:
> On Sa, 2026-07-25 at 00:51 -0400, Cody Kang via B4 Relay wrote:
> > From: Cody Kang <codykang.hk@gmail.com>
> >
> > Add the atomic KMS implementation on top of the hardware backend: one
> > CRTC and one primary plane per DPU instance. atomic_check validates
> > the plane rectangle 1:1 against the mode and sizes the per-channel FBC
> > line buffer; atomic commit builds the cmdlist batches, maps the
> > framebuffer through the DMMU and arms the cfg-ready handshake, with
> > vblank events driven from the DPU interrupt.
> >
> > Signed-off-by: Cody Kang <codykang.hk@gmail.com>
> > ---
> >  drivers/gpu/drm/spacemit/spacemit_crtc.c   | 815 +++++++++++++++++++++++++++++
> >  drivers/gpu/drm/spacemit/spacemit_planes.c | 376 +++++++++++++
> >  2 files changed, 1191 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/spacemit/spacemit_crtc.c b/drivers/gpu/drm/spacemit/spacemit_crtc.c
> > new file mode 100644
> > index 000000000000..b75ff6320501
> > --- /dev/null
> > +++ b/drivers/gpu/drm/spacemit/spacemit_crtc.c
> > @@ -0,0 +1,815 @@
> [...]
> > +/*
> > + * The assert and deassert orders are not mirror images: the hardware wants
> > + * these.
> > + */
> > +static void dpu_reset_assert(struct device *dev, const char *name,
> > +			     struct reset_control *rstc)
> > +{
> > +	int ret = reset_control_assert(rstc);
> > +
> > +	if (ret)
> > +		dev_warn(dev, "failed to assert %s reset: %d\n", name, ret);
> > +}
> > +
> > +static void dpu_reset_deassert(struct device *dev, const char *name,
> > +			       struct reset_control *rstc)
> > +{
> > +	int ret = reset_control_deassert(rstc);
> > +
> > +	if (ret)
> > +		dev_warn(dev, "failed to deassert %s reset: %d\n", name, ret);
> > +}
> > +
> > +static int dpu_pm_suspend(struct device *dev)
> > +{
> > +	struct spacemit_drm_private *priv = dev_get_drvdata(dev);
> > +	struct spacemit_crtc *a_crtc = priv->a_crtc;
> > +
> > +	/*
> > +	 * Assert before gating: a reset asserted into an already-gated block
> > +	 * has no clock edges to propagate on and leaves the register file
> > +	 * untouched.
> > +	 */
> > +	dpu_reset_assert(dev, "lcd", a_crtc->lcd_reset);
> > +	dpu_reset_assert(dev, "esc", a_crtc->esc_reset);
> > +	dpu_reset_assert(dev, "mclk", a_crtc->mclk_reset);
>
> It looks like these three are mirrored, and could be handled by
> reset_control_bulk_assert/deassert().

Thanks for the review. Indeed, reset_control_bulk_deassert()
walking the array in reverse gives exactly the mirrored order the
hardware wants. Will fix in v2.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
