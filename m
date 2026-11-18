Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C334A606A334
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 22:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wljh812h;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=PS6AhOjc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Z6QcGakIthDEv7f5DkYflQB/Rkv//uRyR+gKSvVGArI=; b=wljh812hZFE5IpBbj7k9cf9nEJ
	FfY0nIYi2BONlb6zzdznehYx0DGcOezDdlmcdOw8ISTOZGdZYbZJt6PD/coGhkuU5rCgUIrypXKVY
	ijbTr69Dch78iam7SKF64eNFWPTLLF67R+BrmpSWMSe+oVvV27P1o5EBhdWMe36PmG2gRqBQwJjjm
	JE/JD41REGjc+dkScZnJiwri+gCmOErkLUfG/E5mWKp83aeY/9Bw+doJbw2N84VLUuf7nQIY/6Y6l
	v5tt4R5kR5/PfTn+vrBbUNhp9WhP3l/hDrRLqro+Q0wqAKtH61pBwTg99oXvlwLkt+YGzi9dPAjLW
	AQUvM9fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTnpY-0000000AOBs-1cjB;
	Wed, 18 Nov 2026 22:08:40 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTnpW-0000000AOAq-1725
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 22:08:39 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-3b3f3ac0f88so91093a91.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 14:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795039717; x=1795644517; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=48GpV2tL7XVTAarQnrcMPM8Usr/dY/fptCTJVKAYBQY=;
        b=PS6AhOjcSbrmFxGa7VsGPcSnrPls4Jq/xzPlOK9bvwvuJV4wPuTYixsbt6GEBeh/bZ
         tGcIrF8yWfVnzeoD5nkndCu9f4Xg9hgCmRRoVYJrEvFv/pqNqgOmax0X4iLyJpgTf94d
         ubyy1PB02ytRdJ/3mNz8+QmxU7F/hW2vpXcefkG68ekYN/UiwV+muRgZFHSChTdv2i1q
         aWaVvRGQ0AcmGH1O1QEgpDF3n+ioOyP2JRqmU5dlmX45fQFkMKPmtGCSuukvnFWWN4AG
         fLv1cKv0W88xEuDJtiDSeb3YgTWnXlk5EVrfgpjG9Glp2PxBCI7Tln2tjubzMzB3/po5
         +kJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795039717; x=1795644517;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=48GpV2tL7XVTAarQnrcMPM8Usr/dY/fptCTJVKAYBQY=;
        b=ViXh0FwqVPzVqupNqBQDFC0IbTN1LDiCxdzO7VB/CdGj9LTJqq2lWjVSDTEE/vW36o
         sY7fP1gNiTMmTKU7G+9pjNghw9FwKyYcKusl0UvlGaiIkiNPdDUbnPeKLdfW7Sx0A5/p
         gBNZsgeylA2GBFYpyTK8pahkd60wKfwyzogm6RHGSHdoqzHxQUyEmhrhOKEAjO3pK8tp
         hrde7Euc20vl1ouIEw57tk/O4way6lOnFkDwwAunyTA4YBG3AQhp4F2LNFjOdzYoAcFv
         RvkGEP2bMxtt7mT1i7lOZ7XsGLIHppelJRspfE5hVo5xXiTfukrrIZ2chx9l0qioVAPJ
         qrkg==
X-Forwarded-Encrypted: i=1; AL+hErHx1Z0+zrR6cEB8KpxV6JEvuBykkOAbB0YXuAv6V8dTMmVUjzkKSqkjBUbI3BCNUjdvrDV/JqoyDe4=@lists.infradead.org
X-Gm-Message-State: APuU4Z+XGO7DXuEeDFlW18OcvsyqJwpt4hJ2//os9pqW8Yb3NWt02GBs
	pQEr9DK5w9Sq12ZLAshotxRXgjNAvjjUU/RZiqMKjK5aMYPhaMYJR+sl
X-Gm-Gg: AZFdTZf9q8X4mQAjFCtPFLGadGW3FPKQnV8F673FGmW/aNYlW36sf8lJ9kLV9EXced8
	2REtET+z1EIFRRQ6J78x6nTdts99vrFsIXOHYX4+sqKZ9c3OqUvN9QjWNUbGqkaEu9JzI18Z6VB
	Xd1FqJPatlL8macCD8GhJuXIwMoZtOTEK+gskDxu8Nd1qY4TZhqaV9RruYkr60uuIU4qQCYCsOu
	IjkRnB3JuHi+qJE7qaVO/h44nvhqhLfQYWjHUhcqJQ9YOJoFZpTfmjrV7LNCyDAPN+qHZ/rgegj
	pECEDUU+hPfBj8hHFtaiSn0Inka8Mf+67GH+5/V59hQibO1EpwitGw+FG24vSV/QThCkA81XvuH
	T1m8lXOYd4wxqmRxrpvwcooFUUl3jtoU2UkNusWCsiKgiWJhJMpig7t0L4rJLmHiMDHMQ1XxZkA
	53fAlxRb36HUunu5iGuP7sd6N3XHkUDw/fYQt0iJ2Ox3Qz5p55uVVaXLgHsvCZEpz1dSaU3C0i5
	xkfys9k3A1eO2XditBZSniEYCKjZfFBVhE/Y9b018kXKZjbY+umxq4t7gv4kslOLo9Aqh8DyLxU
	wxk=
X-Received: by 2002:a17:90b:2ccf:b0:3b3:cb22:72d0 with SMTP id 98e67ed59e1d1-3b3d07656e8mr4366165a91.29.1795039717105;
        Wed, 18 Nov 2026 14:08:37 -0800 (PST)
Received: from localhost ([2403:2c80:6::107b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b3fe09df73sm93624a91.9.2026.11.18.14.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 14:08:35 -0800 (PST)
Date: Thu, 19 Nov 2026 06:08:29 +0800
Message-ID: <aef6553f89eba87f753b048a87e3080e.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Haylen Chu <heylenay@4d2.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yao Zi <me@ziyao.cc>,
 Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Guodong Xu <docular.xu@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 10/17] drm/spacemit: add Saturn DPU KMS pipeline
In-Reply-To: <f0b2beb9-d0ad-4870-812a-fef530a964c3@suse.de>
References: <20260809-k3-display-v2-0-327d7910bf71@gmail.com>
 <20260809-k3-display-v2-10-327d7910bf71@gmail.com>
 <f0b2beb9-d0ad-4870-812a-fef530a964c3@suse.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_140838_323045_E802BF9E 
X-CRM114-Status: GOOD (  40.86  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Thomas,

On Mon, 14 Sep 2026 15:58:39 +0200, Thomas Zimmermann wrote:
> Hi,
>
> please find a review below.  I've only mentioned most issues once, they 
> are usually throughout the code. Please fix all instances then.

Thanks for the review. Will fix all instances.

> Am 09.08.26 um 15:14 schrieb Cody Kang via B4 Relay:
[...]
> > +	drm_atomic_crtc_state_for_each_plane_state(plane, pstate, crtc_state) {
> > +		u32 rdma_id = to_spacemit_plane_state(pstate)->rdma_id;
> > +		u32 layer_fbcmem_size =
> > +				to_spacemit_plane_state(pstate)->fbcmem_size;
>
> If you need to check plane state, please do this in the plane's 
> atomic_check. For atomic commits that only change plane state, the 
> CRTC's atomic_check might not run, I think.

Will do; the check moves into the plane's atomic_check.

> It looks like this code allocates memory. This is is something that 
> should be done globally.

It does not allocate memory: it partitions the on-chip line buffer.
With one plane per CRTC nothing is shared between planes, so the
plane's own check is enough.

[...]
> > +	if (!drm_dev_enter(crtc->dev, &idx))
> > +		return;
>
> drm_dev_enter() and drm_dev_exit() protect hardware access. Given hat 
> you have a tracepoint below, you certainly don't want to return here. 
> It's is better to write code like this
>
> atomic_enable() {
>
>    if (drm_dev_enter()) {
>
>        // do HW access
>        drm_dev_exit()
>    }
>
> }
>
> although not many drivers do this.

Will do.

> > +
> > +	trace_spacemit_crtc_atomic_enable(a_crtc->dev_id);
>
> Why is your modesetting code is filled with tracepoints? Most other 
> drivers don't need them. There is debugging infrastructure available in DRM.

Will drop them.

[...]
> > +		ret = reset_control_bulk_assert(ARRAY_SIZE(priv->pipe_resets),
> > +						priv->pipe_resets);
> > +		if (ret)
> > +			dev_warn(a_crtc->dev,
> > +				 "failed to assert resets: %d\n", ret);
> > +		usleep_range(10000, 20000);
> > +		a_crtc->first_modeset = false;
> > +	}
>
> Just no. This code belongs into driver or platform init. It is 
> definitely not for mode setting.

Will do; it moves to probe.

[...]
> > +		usleep_range(10000, 20000);
> > +	}
> > +
> > +	drm_crtc_vblank_on(&a_crtc->crtc);
>
> I'd say you want to enable vblanking after programming the display mode. (?)

Will do.

> > +
> > +	spacemit_crtc_init(a_crtc);
>
> The code is full of these tiny helpers. Please inline them. And please 
> also avoid the callbacks that these tiny helpers invoke.  The DRM 
> interfaces are your abstraction interface. Please don't introduce 
> another one.

Will do.

[...]
> > +	/*
> > +	 * MMIO on a clock-gated DPU stalls the bus, so an in-flight handler
> > +	 * must finish its status reads before dpu_pm_suspend() gates the
> > +	 * clocks.
> > +	 */
> > +	if (a_crtc->irq_online > 0)
> > +		synchronize_irq(a_crtc->irq_online);
>
> This irq is unrelated to vblanking, I presume?

It is the vblank interrupt as well: the one line carries the DPU's
vsync, config-ready and underrun status. The synchronize_irq() is not
about vblank, though. A register read on a clock-gated DPU stalls the
bus, so a handler that is already running has to finish before the
clocks stop. With the move to runtime PM (next point) the call will
sit in the runtime suspend callback, ahead of the clock gating.

> > +	timer_delete_sync(&a_crtc->cfg_rdy_timer);
> > +
> > +	/* Close the ISR's MMIO gate before the clocks actually stop. */
> > +	a_crtc->clocks_on = false;
> > +	dpu_pm_suspend(a_crtc->dev);
>
> This whole DPU PM stuff doesn't seem to belong here.  There's are 
> device-PM ops for controlling power management.  It might happen that 
> compositors disable the CRTC for simple mode setting. This should not 
> suspend the whole device.

Will do; it moves to runtime PM.

> > +	spin_lock_irq(&drm->event_lock);
> > +	if (crtc->state->event) {
> > +		drm_crtc_send_vblank_event(crtc, crtc->state->event);
> > +		crtc->state->event = NULL;
> > +	}
> > +	spin_unlock_irq(&drm->event_lock);
>
> You need set up the vblank machinery to send the event on the next 
> vblank irq. See [1] for a simple example.
>
> [1] 
> https://elixir.bootlin.com/linux/v7.2.5/source/drivers/gpu/drm/drm_vblank_helper.c#L51

Will do. The event will be armed from the config-ready interrupt
rather than in atomic_flush, since the next commit must not start
before the hardware has taken the current command lists.

[...]
> > +	trace_spacemit_crtc_atomic_check(a_crtc->dev_id);
>
> Please don't add your own tracepoints.

Will do.

> > +	ret = spacemit_crtc_atomic_check_fbmem(crtc, state);
> > +	if (ret) {
> > +		drm_dbg_kms(crtc->dev,
> > +			    "failed to satisfy fbcmem size for all rdmas\n");
>
> Drivers should only use drm_dbg().  drm_dbg_kms() et al are for DRM core 
> and helpers.

Will do.

[...]
> > +	if (WARN_ON(!crtc->state))
>
> There are helpers like drm_WARN_ON() et al. Please prefer them over 
> WARN_ON() and other non-DRM counterparts.

Will do.

[...]
> > +	ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
> > +	if (ret) {
> > +		dev_err(dev, "failed to initialize vblank\n");
> > +		goto err_unbind_all;
> > +	}
>
> Better do this after running drm_mode_config_reset().

Will do.

[...]
> > +	/* The programming paths use the raw rectangles, so refuse to clip. */
> > +	if ((state->src.x1 >> 16) != src_x || (state->src.y1 >> 16) != src_y ||
> > +	    (drm_rect_width(&state->src) >> 16) != src_w ||
> > +	    (drm_rect_height(&state->src) >> 16) != src_h ||
> > +	    state->dst.x1 != state->crtc_x || state->dst.y1 != state->crtc_y ||
> > +	    drm_rect_width(&state->dst) != crtc_w ||
> > +	    drm_rect_height(&state->dst) != crtc_h) {
> > +		drm_dbg_kms(plane->dev,
> > +			    "clipped plane rectangles not supported\n");
> > +		return -EINVAL;
> > +	}
>
> What's the matter with this code?
>
> Allocated buffers can be larger than the display mode. If the hardware 
> cannot handle this, it might become a problem in some setups.

It worked around the driver programming the unclipped rectangles.
Will fix.

> > +	/* One-dimensional sources are invalid (only 0x0 = constant fill) */
> > +	if ((src_w == 0) != (src_h == 0)) {
> > +		drm_dbg_kms(plane->dev, "unsupported src_w %d src_h %d\n",
> > +			    src_w, src_h);
> > +		return -EINVAL;
> > +	}
>
> I'm not aware of any driver testing this. The above calculation of 
> state->visible should have detected this case.

Will do.

[...]
> > +		cur_state->mmu_tbl.size =
> > +			((PAGE_ALIGN(fb->obj[0]->size) >> PAGE_SHIFT) +
> > +			 HW_ALIGN_TTB_NUM) * 4;
> > +		cur_state->mmu_tbl.va =
> > +			dma_alloc_coherent(a_crtc->dev, cur_state->mmu_tbl.size,
> > +					   &cur_state->mmu_tbl.pa,
> > +					   GFP_KERNEL | __GFP_ZERO);
> > +		if (!cur_state->mmu_tbl.va)
> > +			return -ENOMEM;
>
> Resource allocation/deallocation like this should better be done in 
> begin_fb_access/end_fb_access when you need them for the commit. 
> User-space compositors might send in a large number of states only for 
> atomic_check'ing. There's no point in allocating actual memory then.

Will move the allocation to prepare_fb.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
