Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D7EBC5AD2C
	for <linux-phy@archiver.kernel.org>; Sun,  9 Aug 2026 03:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xciGepvK65kTGL7FfSU03LPFasyDRxtz+Do96lthVRs=; b=yui8MLw5zAMsTf
	xPxMqFRu0x7gKImh1WHvVNXvCcYH6iN2r3d7AfUzwkOoPdfsSKajoZo+8K4sTYqZqF1UQRiI2pXy3
	OcCYlZaBzijJIzYOBzSRXJJ04EokVGfWtvu259qUF5xsN9bYESJg9Xkh4hcWQXtQMfa5JlV6Oql19
	el/o2x3EIQsA/twiUg2cAEpM+RtlWhWZmPFD8VVmRHCiZ9EQ1Kq0YpDqocQXCQz+sB/Hm/Prv89RI
	uCp3m5Fa22etLrbds9ejzgEOaRsbUIPv345fQTnS1ogidIp2b2AHpLxvrV7O4tobTzVMATAfPdppc
	gVbJ/YY6cxl0wAHHk74w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsuBP-00000009xDX-4BI1;
	Sun, 09 Aug 2026 03:26:44 +0000
Received: from mail-pj2-x06.google.com ([2607:f8b0:4864:39::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsuBN-00000009xCi-2aKn
	for linux-phy@lists.infradead.org;
	Sun, 09 Aug 2026 03:26:43 +0000
Received: by mail-pj2-x06.google.com with SMTP id 98e67ed59e1d1-38f25802c19so365137a91.1
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 20:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786246001; x=1786850801; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=i+2ZP2VpD4hdDzBsnG2msnBM+iMSdLsJB7PET2eMgj0=;
        b=YnHisOsK4l2dsnWXxBO9eJ++CISU+RORuRWipHn8kqPmPht8SW7sPgkTkZI2Q284Iu
         yX0HAuyNhwvI9poqzXTWWglMbFpVRUSkUwq+7ToUsj6xdAZ1nOOL6HOG5ywAO1Jati72
         KCJKkTsMeOV8ymux+MBJh05Epl8CaaDuajIm2JstNs74J4+818j+JGUEf5hzaaioIXyX
         NuR9JPdLu9002RTeWzmmGpvACFyzjWDaImiPygNa3dEOeXx8KWcv5oI08IvltqWyvsnZ
         F6x7EFMHiJO2vfNc0wcihs7FV3T7dgTSejadXE3nFqJ4xeDfYmDQqQvmb/aClqqthujE
         BEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786246001; x=1786850801;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=i+2ZP2VpD4hdDzBsnG2msnBM+iMSdLsJB7PET2eMgj0=;
        b=ShmHg7m4VqXgrLXaclsAxLb8qy/yfJr5hU/qW4o9mlDHCzBc5hchq+HLBL1r2+fqXY
         e1YgI0Ki30lw8Ufog2Th/KAIqblUIRCN4hCp9OV3vHXzd9ARw2zKyIKA4ExCSBBx8Xhb
         1jZXCexLffaH+WUbAp4K99bB6pjlVrflD6ils2DG+aiKINAO1r61H4nUYEL2I89gNMiC
         N+mdi/s9xI2vZwEWNR3Oz1ELx0Kdy2GzQ6VJUPzA8Q4Xg57T489f4HXjPJyYl7loxy/6
         ZzD/JSHxFtkcjbtUo2sc4llyM0meMXWzWKcw2s4eY5lRWQqUY4s5oyPePkzrWXJ3RhIo
         qttw==
X-Forwarded-Encrypted: i=1; AHgh+RrtnIRWlaS1wVuPq9cXUTwxbHUJwM9bsbYlj/VcgZQskvvkfawyPFymix75MdUqec8beBROHAFJVFU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwUzZzplsnhODI8zcqBuKw3z8W28PqHSkBOBs6cKYGPItN+aLuf
	lvi0yktEo9FuOCHrGphXQDMpS319oFQWMUXcto7nlB5sLgdyoejO3gr+
X-Gm-Gg: AR+sD11Aa4Uzhhs810Yg/5W6VqDxgftTGnZiEL/b2BJRcHNDhXdKttrHhMAIVdY/C3J
	DDOGBX4bf+ImIWAeSrbw+qH15QAtidmXwEvow5thAdE3k922+LcrdNM2x3h54qSICQ4hocrzl7/
	8u1qWKMWpLzfkEVDvYvnoL8aUXEZVyt/k3Hw5jN3bZKbCqlyNVlFXfy8avQSVNnemgxt52L7ChS
	h0j+V5Gaq3BAKPKQfLjaDvOFZigQXbVUpQOVYfQ6bnjGRSs+E1sZLOTv2wgchjPt6gxFjz3AkZr
	3RtVFMS1fhR4+0VihDZLAB7J7WDfyr8koP7NqcVRYBkdRiQw+E7rHGua3n2Q5MPVRfhblp0oBTi
	BSTXJSOBpJO6wOIohtbvoW76h+xBk/5hkDpLl15L2XITfadL0rRuKKWw8SYnAbVTwZNpGvZoqou
	s0V3yYkof3O57b2/A3zbFv4I+F6QPCVuwzeg==
X-Received: by 2002:a17:90b:390e:b0:38e:9ef9:eb97 with SMTP id 98e67ed59e1d1-392823ea541mr9657081a91.16.1786246000598;
        Sat, 08 Aug 2026 20:26:40 -0700 (PDT)
Received: from localhost ([2403:2c80:6::10db])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-390b35ca2b7sm3210539a91.4.2026.08.08.20.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 20:26:40 -0700 (PDT)
Date: Sun, 9 Aug 2026 11:26:35 +0800
From: Cody Kang <codykang.hk@gmail.com>
To: Guodong Xu <docular.xu@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, dri-devel@lists.freedesktop.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH RESEND 10/17] drm/spacemit: add Saturn DPU KMS pipeline
Message-ID: <ko2cc6jyezfyqzg2rdftyebeydw6nfd65ajvu46acfewhnrqxi@om2uhqdlhmzv>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-10-6de34d80e86c@gmail.com>
 <084a860a77f18aaafcda4b223eec4fdcd96e75c9.camel@pengutronix.de>
 <wr3264hzlya6zep433nr3u2acukizilkrqpkj444kfqeyaeorj@2rc4zo2cqcer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <wr3264hzlya6zep433nr3u2acukizilkrqpkj444kfqeyaeorj@2rc4zo2cqcer>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_202641_659749_D2B29DA8 
X-CRM114-Status: GOOD (  16.04  )
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

On Sat, Aug 08, 2026 at 01:03:52AM -0400, Guodong Xu wrote:
> On 2026-07-27 09:35, Philipp Zabel wrote:
> > On Sa, 2026-07-25 at 00:51 -0400, Cody Kang via B4 Relay wrote:
> > > From: Cody Kang <codykang.hk@gmail.com>
> > > 
> > > +	/*
> > > +	 * Assert before gating: a reset asserted into an already-gated block
> > > +	 * has no clock edges to propagate on and leaves the register file
> > > +	 * untouched.
> > > +	 */
> > > +	dpu_reset_assert(dev, "lcd", a_crtc->lcd_reset);
> > > +	dpu_reset_assert(dev, "esc", a_crtc->esc_reset);
> > > +	dpu_reset_assert(dev, "mclk", a_crtc->mclk_reset);
> > 
> > It looks like these three are mirrored, and could be handled by
> > reset_control_bulk_assert/deassert().
> > 
> > > +	dpu_reset_assert(dev, "aclk", a_crtc->aclk_reset);
> > > +	dpu_reset_assert(dev, "dsc", a_crtc->dsc_reset);
> 
> Is there a reason these two cannot be mirrored in order? Please double
> check. As I checked the vendor tree, the suspend/resume side appear to be
> copy/paste rather than a deliberate ordering.
> 
> Please double-check. Unless I'm missing something, I suggest to bulk them.

Agree, I'll check.

Cody


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
