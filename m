Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 033B6C5AC67
	for <linux-phy@archiver.kernel.org>; Sun,  9 Aug 2026 00:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRYWd+QCTouY74MDEWcsIMd4SloA/ebkTP0M0pCxPFQ=; b=R7TAH+yS0ezyIm
	CMMEMrUNHAgu58c0zG7sZ/27o3mWNbutoKTOVjLKlGtBgWVaeQTM6XrA7wNSN4BnvU4drN1a2Ydpk
	MeyhfwdVcKcVWowcfbSzfwxjUorxeD1ir4MTdoifL0M+/qST1MEmA1qPJBNRueyLPR+xrQXrkh3N8
	X9LoKh5ktK2SW3OypJUKcrpvF4kXjwJwUHdPkJKdBqSZPEEuYbkuLLCMa9ZZFjuDNmMqw2H8b+LgK
	l2K3WMBz0zwcswpyiXjRzoKnlwJuAzena3ae8lJT1oJ9ZxXKIf3ZiyBFElei57j1x94AP7+Acg+fL
	eGctYqEQP0LCJ8S8/CKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsrZG-00000009qUT-31gf;
	Sun, 09 Aug 2026 00:39:11 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsrZE-00000009qU1-06mq
	for linux-phy@lists.infradead.org;
	Sun, 09 Aug 2026 00:39:09 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-cb01d87597cso35788a12.1
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 17:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786235947; x=1786840747; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=eCeCDkb6hi3Vz4cxe7Wywuz/miW1H4PxouDLcwUkCIk=;
        b=WxXPLa3wAzaKbObOVucNziuY2ERzrrD/66yFfY9j8e5pjSJVN/INd937X74n8XOPj7
         e3z73wvhM7MIhJAyY1QcuA6wZjffZrvCWOkYHLatk1tZ6r8OT3ady0kzmNc7xeB05N8e
         TmzmvGsrHe13Vq28YOf0/YCXtl9L3q4XBpfAO7eMhpNAhkbEm/LgeRZXWcfBonutP+qZ
         NM0//UfSZz25cAbnRrqgzB3A6ujamUMMqAkCDYr6tRi2iOJXP9EUJNUJx9wCWlCBNhco
         qS+PCEK0P0Kf8AqgPF0RLyuKwyyzhV0oYYTxLN9BSo7eMiXGuouXd6ab8PnxX1XFxed8
         rB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786235947; x=1786840747;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eCeCDkb6hi3Vz4cxe7Wywuz/miW1H4PxouDLcwUkCIk=;
        b=j44z/4p1dBZN5sN5IP5oA3sdiaa3okOrmD3eN7mR9wJ6xRITm2iyYmIpiB5AEeMSwC
         0JbuBe7y0QWLtdpmtmF9DZwxg9cqpX399l0Ww1bFcd/k0gEf5Jt6hKDAU0mIccaUlozF
         /sWnoQgWkSJVXKiLo1o9EBKFVG2EEU2L6vv3leLAm8jbTPpGrKvjChNNnq+NTgrWh1Ut
         H8xK+oCuEN8M1iWTnIWqJQhithJ+cUlk97whrCt84DKO3GFVrboSaDD4hnGRbMGvw5o/
         O1v7ZusoL5d2G6H+lUTl3v9k0LYZrsTr+gm73Zp6HJprijnS+w0f3sCVatj6yH2kxHPU
         A44A==
X-Forwarded-Encrypted: i=1; AHgh+RoLfB5AeSn8mnH6NrsFwY0uQvP6w2/5TQM06JuyaDSv72vd1dgA5YW0JwTpLpQOVCDee2qtSAbCoj0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4Tvfb/PZKCez7PVHjhF8IcTI9kOQpZtN1Y1V1Oc64CfP5rr7H
	ZdewUEo6e3FKklGoUB1QaZYSqp17qaLAOuHmXngO1vdbZbLFRptEqGHi
X-Gm-Gg: AR+sD11nmhlgEqyJTdkpwWyoha7JP3BWCLx3N5xJ89pHoeoXRGhc3RfmlXlw6h1Cqoj
	oWa46Er2T6k0aiEoS0hZMKy1r/TqWrsAVEVCPqZQcEc/qMnZpt3uUvjdpgYD1WZ+84TTKbaKH75
	2JfJcyszTSHExKGVKuGMBEzSm2kEKvnYeDgawzIBFRi2Fs6uJfxB3KFJmORLFDfQaIt1oqbEUOg
	4igBH4CQxrjDhyJbJEwttDx5Uvqxs3bumKIhZZ11KUMVmYTg+HGaUqBOL1VIEkBO0eGknqGoVJf
	tT74Odyg5LClC9iAun61Nq1tUBhNe1fsulXZMT/smh6p5Fjaluc0qyU1L/welab2P5MpXNRZBlN
	ZUUufopxCz0MMcj0lKlY9WdUcc6Vl3LV2ggNdAKkbkNd6zoWMK89y3J4UcNMSG3K0G6+3NAOXjl
	6q7HyOX/HnqHpoOFe9cv5zmDESTG8cws9fDF0xj8Q=
X-Received: by 2002:a05:6a00:3d0a:b0:847:9d6c:a56d with SMTP id d2e1a72fcca58-84f6b78b1bamr7626777b3a.12.1786235946764;
        Sat, 08 Aug 2026 17:39:06 -0700 (PDT)
Received: from localhost ([2403:2c80:17:1e::208c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f5a165619sm2385597b3a.0.2026.08.08.17.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 17:39:05 -0700 (PDT)
Date: Sun, 09 Aug 2026 08:39:00 +0800
Message-ID: <db9f1190f5096e83bc9af5c082c519a6.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com,
 sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND 08/17] drm/spacemit: add Saturn DPU core types,
 cmdlist and display MMU
In-Reply-To: <20260725050439.2A4CB1F00A3A@smtp.kernel.org>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-8-6de34d80e86c@gmail.com>
 <20260725050439.2A4CB1F00A3A@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_173908_097873_4B4AA05E 
X-CRM114-Status: GOOD (  38.57  )
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

On Sat, 25 Jul 2026 05:04:38 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 12 potential issue(s) to consider:
> - [Critical] DMMU page table size calculation underflow allows arbitrary physical memory access.
> - [Critical] Shallow copy of DMA buffers in atomic state causes active display corruption.
> - [High] crtc_cmdlist_atomic_commit() passes a guaranteed NULL pointer to the hardware command list execution callback.
> - [High] Global `cmdlist_groups` array causes data races across concurrent atomic commits.
> - [High] Unconditional dereference of `first_cl` in `cmdlist_atomic_commit()` causes a kernel panic if the command list group is empty.
> - [High] DMMU maps only the first GEM object, breaking multi-planar framebuffers.
> - [High] NULL pointer dereference in `dpu_plane_info` tracepoint.
> - [High] Sleeping in atomic context via `drm_gem_shmem_get_pages_sgt()`.
> - [High] Missing bounds check on `nod_len` causes DMA buffer overflow.
> - [Medium] Unaligned base virtual addresses are used for DMMU translation regions.
> - [Medium] Memory leak of DMA buffers upon atomic state destruction.
> - [Medium] Speculative array out-of-bounds access in `cmdlist_sort_by_group()`.
> --
>
> --- Patch [8]: [PATCH RESEND 08/17] drm/spacemit: add Saturn DPU core types, cmdlist and display MMU ---
> commit dc983d68951c3577447bb897e17c833e557da908
> Author: Cody Kang <codykang.hk@gmail.com>
>
> drm/spacemit: add Saturn DPU core types, cmdlist and display MMU
>
> This commit introduces the shared driver types, MMIO accessors, trace
> events, command-list builder, and DMMU table code for the Saturn DPU.
> It enables batched register programming by building per-module register
> lists in memory, which the hardware command-list engine replays.
>
> > diff --git a/drivers/gpu/drm/spacemit/dpu/dpu_trace.h b/drivers/gpu/drm/spacemit/dpu/dpu_trace.h
> > index 0000000000000..abfe34a67a4bd 100644
> > --- /dev/null
> > +++ b/drivers/gpu/drm/spacemit/dpu/dpu_trace.h
> [ ... ]
> > +TRACE_EVENT(dpu_plane_info,
> > +	    TP_PROTO(struct drm_plane_state *state, struct drm_framebuffer *fb,
> > +		     u32 rdma_id, u32 alpha, u32 rotation),
> > +	TP_ARGS(state, fb, rdma_id, alpha, rotation),
> > +	TP_STRUCT__entry(
> > +			__field(u32, rdma_id)
> > +			__field(u32, src_w)
> > +			__field(u32, src_h)
> > +			__field(u32, src_x)
> > +			__field(u32, src_y)
> > +			__field(u32, crtc_w)
> > +			__field(u32, crtc_h)
> > +			__field(u32, crtc_x)
> > +			__field(u32, crtc_y)
> > +			__field(u32, width)
> > +			__field(u32, height)
> > +			__field(u32, format)
> > +			__field(u32, blend_mode)
> > +			__field(u32, alpha)
> > +			__field(u32, zpos)
> > +			__field(u32, rotation)
> > +	),
> > +	TP_fast_assign(
> > +			__entry->rdma_id = rdma_id;
> > +			__entry->src_w = state->src_w >> 16;
> > +			__entry->src_h = state->src_h >> 16;
> > +			__entry->src_x = state->src_x >> 16;
> > +			__entry->src_y = state->src_y >> 16;
> > +			__entry->crtc_w = state->crtc_w;
> > +			__entry->crtc_h = state->crtc_h;
> > +			__entry->crtc_x = state->crtc_x;
> > +			__entry->crtc_y = state->crtc_y;
> > +			__entry->width = fb->width;
> > +			__entry->height = fb->height;
> > +			__entry->format = fb->format->format;
>
> [Severity: High]
> Can this dereference a NULL pointer? When a plane is disabled during an
> atomic commit, state->fb might be NULL. Unconditionally reading fb->width
> here could cause a kernel panic if tracing is enabled.

The tracepoint's only caller passes a validated fb from an enabled
plane's update path; disabled planes never reach it.

> > +			__entry->blend_mode = state->pixel_blend_mode;
> > +			__entry->alpha = alpha;
> > +			__entry->zpos = state->zpos;
> > +			__entry->rotation = rotation;
> > +	),
> [ ... ]
> > diff --git a/drivers/gpu/drm/spacemit/spacemit_cmdlist.c b/drivers/gpu/drm/spacemit/spacemit_cmdlist.c
> > index 0000000000000..787d38e9e135f 100644
> > --- /dev/null
> > +++ b/drivers/gpu/drm/spacemit/spacemit_cmdlist.c
> [ ... ]
> > +void cmdlist_regs_packing(struct cmdlist *cl, enum cmdlist_mode_type mod,
> > +			  struct cmdlist_regs *cl_regs)
> > +{
> [ ... ]
> > +	for (i = 0; i < cl_regs->size;) {
> > +		u32 value[CMDLIST_ROW_REGS] = {0x0};
> > +		u32 offset, strobe = 0;
> > +		u8 regs_in_row = 0;
> > +
> > +		if (cl_regs->flags[i]) {
> > +			offset = cl_regs->base + i * sizeof(u32);
> > +			for (u8 j = 0; j < CMDLIST_ROW_REGS; j++) {
> > +				index = i + j;
> > +				if (likely(index < cl_regs->size)) {
> > +					if (cl_regs->flags[index]) {
> > +						value[j] = reg_base[index];
> > +						regs_in_row++;
> > +						strobe |= CMDLIST_REG_STROBE(j);
> > +					}
> > +				} else {
> > +					break;
> > +				}
> > +			}
> > +			hwdev->cmdlist_fill_data_row(cl, strobe, offset, value);
> > +			/*
> > +			 * the row covers the whole window; a shorter stride
> > +			 * would revisit covered words as duplicate rows
> > +			 */
> > +			i += CMDLIST_ROW_REGS;
> > +			cl->nod_len++;
>
> [Severity: High]
> Is there a risk of overflowing the DMA command list buffer here? The loop
> increments cl->nod_len and writes to memory, but there doesn't seem to be
> a bounds check to ensure the packed rows do not exceed the allocated
> capacity in cl->size.

Not reachable: the 4 KiB cmdlist holds 255 rows, the largest
register window (146 words) packs into at most 49, and no single
list carries more than a few windows. v2 I can add a WARN_ONCE
guard in the row-fill helpers rather than trusting the arithmetic.

> > +		} else {
> > +			i++;
> > +		}
> > +	}
> > +
> > +	drm_dbg(a_crtc->crtc.dev, "row_num = %d\n", cl->nod_len);
> > +}
> > +
> > +void cmdlist_sort_by_group(struct drm_crtc *crtc)
> > +{
> > +	struct cmdlist *first_cl;
> > +	struct cmdlist *last_cl;
> > +	struct cmdlist *p;
> > +	struct cmdlist *prev;
> > +	struct drm_plane *plane;
> > +	struct spacemit_crtc_rdma *rdmas =
> > +			to_spacemit_crtc_state(crtc->state)->rdmas;
> > +	struct spacemit_drm_private *priv = crtc->dev->dev_private;
> > +
> > +	drm_atomic_crtc_for_each_plane(plane, crtc) {
> > +		struct spacemit_plane_state *spacemit_pstate =
> > +			to_spacemit_plane_state(plane->state);
> > +		u32 rdma_id = spacemit_pstate->rdma_id;
> > +
> > +		first_cl = &spacemit_pstate->cl;
> > +		if (!first_cl->va)
> > +			continue;
> > +
> > +		last_cl = first_cl;
> > +		last_cl->next = NULL;
> > +
> > +		rdmas[rdma_id].in_use = true;
>
> [Severity: Medium]
> Could rdma_id exceed the bounds of the array? It is used directly as an
> index for the rdmas array without checking if it is within hwdev->rdma_nums.

rdma_id is validated against hwdev->rdma_nums in plane atomic_check
before any array use.

> > +		if (priv->cmdlist_groups[rdma_id]) {
>
> [Severity: High]
> Does modifying the global priv->cmdlist_groups array here cause data races?
> Since this array is stored in the shared spacemit_drm_private structure,
> concurrent atomic commits on multiple CRTCs might overwrite each other's
> command lists without locking.

There is one CRTC per DRM device in this driver; commits on a CRTC
are serialized by the atomic helpers, and the group array is filled
and consumed within a single commit tail.

> > +			p = priv->cmdlist_groups[rdma_id];
> > +			prev = NULL;
> > +			while (p) {
> > +				if (cl_to_spacemit_pstate(p)->state.crtc_y <
> > +				    spacemit_pstate->state.crtc_y) {
> > +					prev = p;
> > +					p = p->next;
> > +				} else {
> > +					break;
> > +				}
> > +			}
> > +			if (!prev) {
> > +				priv->cmdlist_groups[rdma_id] = first_cl;
> > +				last_cl->next = p;
> > +			} else {
> > +				prev->next = first_cl;
> > +				last_cl->next = p;
> > +			}
> > +		} else {
> > +			priv->cmdlist_groups[rdma_id] = first_cl;
> > +		}
> > +	}
> > +}
> > +
> > +void cmdlist_atomic_commit(struct drm_crtc *crtc,
> > +			   struct drm_crtc_state *old_state)
> > +{
> [ ... ]
> > +	for (i = 0; i < hwdev->rdma_nums; i++) {
> > +		if (old_rdmas[i].in_use)
> > +			hwdev->enable_cmdlist(a_crtc, hwdev, i, false);
> > +
> > +		if (cur_rdmas[i].in_use) {
> > +			drm_dbg(crtc->dev, "cmdlist group = %d\n", i);
> > +			cur_cl = priv->cmdlist_groups[i];
> > +			first_cl = cur_cl;
> > +			while (cur_cl) {
> > +				hwdev->cmdlist_fill_conf_row(cur_cl, hwdev,
> > +					CMDLIST_CMP_INVALID);
> > +				cmdlist_dump_node(cur_cl);
> > +				cur_cl = cur_cl->next;
> > +			}
> > +			chy = cl_to_spacemit_pstate(first_cl)->state.crtc_y;
>
> [Severity: High]
> Could first_cl be NULL here? If cur_rdmas[i].in_use is true but
> priv->cmdlist_groups[i] is empty, first_cl would be NULL. This can happen
> if planes are removed from the state but in_use was copied as true from the
> old state. The cl_to_spacemit_pstate macro would yield a negative offset
> from NULL, resulting in a crash.

in_use cannot be inherited: crtc duplicate_state allocates a zeroed
rdmas array for every state, so it is only set by
cmdlist_sort_by_group() for planes whose cmdlist exists in the same
commit.

> > +			addrl = (lower_32_bits(priv->cmdlist_groups[i]->pa) &
> > +				 CMDLIST_ADDRL_ALIGN_MASK) >> CMDLIST_ADDRL_ALIGN_BITS;
> > +
> > +			addrh = upper_32_bits(priv->cmdlist_groups[i]->pa);
> > +			hwdev->cfg_cmdlist(hwdev, i, chy, addrl, addrh);
> > +			hwdev->enable_cmdlist(a_crtc, hwdev, i, true);
> > +			priv->cmdlist_groups[i] = NULL;
> > +		}
> > +	}
> > +}
> > +
> [ ... ]
> > +void crtc_cmdlist_atomic_commit(struct spacemit_crtc *a_crtc)
> > +{
> > +	struct cmdlist *cur_cl;
> > +	struct drm_crtc *crtc = &a_crtc->crtc;
> > +	struct spacemit_drm_private *priv = crtc->dev->dev_private;
> > +	struct spacemit_hw_device *hwdev = priv->hwdev;
> > +	u8 crtc_id = drm_crtc_index(crtc);
> > +	u8 dev_id = a_crtc->dev_id;
> > +
> > +	drm_dbg(crtc->dev, "cmdlist group = %d\n",
> > +		hwdev->rdma_nums + crtc_id);
> > +	cur_cl = priv->cmdlist_groups[hwdev->rdma_nums + crtc_id];
> > +	while (cur_cl) {
> > +		hwdev->cmdlist_fill_conf_row(cur_cl, hwdev, dev_id);
> > +		cmdlist_dump_node(cur_cl);
> > +		cur_cl = cur_cl->next;
> > +	}
> > +	hwdev->crtc_cmdlist(cur_cl, hwdev, priv, crtc_id, dev_id);
>
> [Severity: High]
> Does this pass a guaranteed NULL pointer to the hardware callback?
> The while loop exhausts cur_cl to NULL, which is then immediately passed
> to hwdev->crtc_cmdlist. It looks like the head of the list should be
> passed instead.

The callback never reads that parameter; it re-reads the group from
spacemit_drm_private itself. Will drop the unused parameter in v2 so
this stops reading like a bug.

> > +}
> > +
> > +/* Called from atomic_check(), where -ENOMEM is still an answer. */
> > +int spacemit_cmdlist_alloc(struct device *dev, struct cmdlist *cl)
> > +{
> > +	if (cl->va)
> > +		return 0;
>
> [Severity: Critical]
> Does returning early when cl->va is present cause active display corruption?
> Because struct cmdlist is embedded directly in the plane state, DRM's state
> duplication will shallow-copy cl->va. If atomic_update mutates this same
> virtual address while the hardware is actively reading it from the old
> state, it could lead to screen tearing or DPU hangs. DMA buffers for
> command lists generally need to be multi-buffered or allocated per-state.

There is no shallow copy: duplicate_state zeroes the embedded
cmdlist, atomic_check allocates a fresh buffer for each new state,
and destroy_state frees it.

> > +
> > +	cl->size = PER_CMDLIST_SIZE;
> > +	cl->va = dma_alloc_coherent(dev, cl->size, &cl->pa,
> > +				    GFP_KERNEL | __GFP_ZERO);
> > +	if (!cl->va)
> > +		return -ENOMEM;
>
> [Severity: Medium]
> Is there a corresponding dma_free_coherent() during state destruction?
> If the allocated cl->va is never freed when the atomic state is destroyed,
> this might cause a steady leak of DMA memory.

Yes: spacemit_plane_atomic_destroy_state() frees both the cmdlist
and the DMMU table.

> > +
> > +	return 0;
> > +}
> [ ... ]
> > diff --git a/drivers/gpu/drm/spacemit/spacemit_dmmu.c b/drivers/gpu/drm/spacemit/spacemit_dmmu.c
> > index 0000000000000..2ae30dd1a4f23 100644
> > --- /dev/null
> > +++ b/drivers/gpu/drm/spacemit/spacemit_dmmu.c
> [ ... ]
> > +int spacemit_dmmu_map(struct drm_framebuffer *fb, struct dpu_mmu_tbl *mmu_tbl,
> > +		      u8 tbu_id, struct cmdlist_regs *cl_rdma,
> > +		 struct drm_plane *plane)
> > +{
> > +	struct spacemit_drm_private *priv = fb->dev->dev_private;
> > +	struct spacemit_hw_device *hwdev = priv->hwdev;
> > +	const struct drm_format_info *format = NULL;
> > +	struct sg_table *sgt = NULL;
> > +	u32 total_size, offset1, offset2;
> > +	struct tbu_instance tbu = { };
> > +	u8 plane_num;
> > +	u32 val;
> > +
> > +	format = fb->format;
> > +	sgt = drm_gem_shmem_get_pages_sgt(to_drm_gem_shmem_obj(fb->obj[0]));
>
> [Severity: High]
> Will this sleep in atomic context? This function appears to be called
> during hardware programming in the atomic commit phase. Calling
> drm_gem_shmem_get_pages_sgt allocates memory and can acquire a mutex,
> which is forbidden in atomic context. Buffer mapping typically needs to be
> deferred to the sleepable prepare_fb callback.

This runs from plane atomic_update in the commit tail, which is
process context; sleeping is allowed there.

> [Severity: High]
> Does mapping only fb->obj[0] break multi-planar framebuffers? If userspace
> provides a multi-planar framebuffer where the planes reside in different GEM
> objects, extracting the SG table only for obj[0] will result in incorrect
> physical memory pages for the secondary planes.

Every advertised format is single-planar, so the two- and
three-plane arms cannot execute; will drop them in v2 rather than
harden dead code.

> > +	if (IS_ERR(sgt))
> > +		return PTR_ERR(sgt);
> > +
> > +	plane_num = format->num_planes;
> > +
> > +	total_size = roundup(fb->obj[0]->size, PAGE_SIZE);
> > +
> > +	offset1 = plane_num > 1 ? fb->offsets[1] : total_size;
> > +	offset2 = plane_num > 2 ? fb->offsets[2] : total_size;
> > +
> > +	switch (plane_num) {
> > +	case 3:
> > +		tbu.ttb_pa[2] = mmu_tbl->pa + (offset2 >> PAGE_SHIFT) * 4;
> > +		tbu.tbu_va[2] = TBU_BASE_VA(tbu_id) + offset2;
>
> [Severity: Medium]
> Could adding offset2 directly to TBU_BASE_VA result in unaligned base
> virtual addresses? If userspace supplies an offset that is not a multiple
> of PAGE_SIZE, programming an unaligned virtual address might confuse the
> hardware MMU.

Unreachable for the same reason: single-planar formats only.

> > +		tbu.ttb_size[2] = PAGE_ALIGN(total_size - rounddown(offset2, PAGE_SIZE))
> > +				  >> PAGE_SHIFT;
>
> [Severity: Critical]
> Can this size calculation underflow? If a malicious userspace client
> provides offset2 smaller than offset1, the unsigned subtraction
> offset2 - rounddown(offset1, PAGE_SIZE) will underflow to a massive
> positive value. This could program the DMMU with a huge translation block,
> allowing arbitrary out-of-bounds physical memory reads.

Also unreachable: single-planar formats only, and the framebuffer
core bounds every offsets[] within the GEM object at creation time.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
