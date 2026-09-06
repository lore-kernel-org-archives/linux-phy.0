Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C664AC79F9E
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 22:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XW/ngL21D1NdzrrjgQa3uAdAtx4On08MC7ScfbKwF1k=; b=wmXsyQhGZyNeZA
	wFwpJCvNnDZK0hEfRgn4JGV2rNrxdbyOqmrUvEtB/F47Lfdj2hu1boiq59DkXvHJVBwYDagLYNkn0
	Sk/mirDsYrgyAJT37cBtaWPfDkXSHnnvOiMM6HE/rHoK6x7dMgU+gZ3iBHMdMFM2vFpfRfLQ0xzn4
	i9hua6YxNwBBi/zv8cvPZRXuZJuMnuAOD3gyy9LuBQGg2GIOdiuxp6fQmdCu2eXzvOH19aNKk0Xzs
	F2XCAce322rQMSPbmEDe+mCTAeKIoeeLc504Ktw++GVpWkXcnskKS05PRRm9pfz99Nu7eQR4SrMIW
	KKCxJ+tzXlaYclCgBjhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Lij-00000005cWg-0Gb4;
	Sun, 06 Sep 2026 22:52:17 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Lig-00000005cWL-242k
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 22:52:15 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-930f618435cso338464485a.3
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 15:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788735132; x=1789339932; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=mIJN/sAwYOGsx4KiLS2BjZwfic1XFdCFhhrLHJS/Pvk=;
        b=lrN3w+iucaGTVfs+FrH2WF38360aKkxnmP9XoOwDd4bHalz/3QifwyKS3P2gLyCCvU
         90Xy7H05ARZNG40CURzX8UAx/7pOIT5jwyTFiIYOSrTsEGMsHV3Q/1I5Ky+tFxhSv/c1
         ZLHuteYm5gUDZPWF18Osucea04J9Qh7vjRVhC7+cvjMKaMiV2lXZN2os2uSMkYXViFQI
         5gKYl44WzCWqZepK0WpqYlNIDvjxSqflfMz3/USypcKvNyPjBvi08BRrUUe16R+MW1oN
         eblQ2JFiCff/y/YwZCv5m6SaVC2hwda042Xn3Sh6MY6NjKr5JjwRtzHtRRfzFOXWIJVB
         sbvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788735132; x=1789339932;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mIJN/sAwYOGsx4KiLS2BjZwfic1XFdCFhhrLHJS/Pvk=;
        b=f8Dd+tKmHAC6Wz7VvTVZdPoPtlUTHucO3GzPfTRjmFw809eUkIArtpONAbc2wUQ31K
         tMDyMrbCqJEuqDYh1QcVPtChOjfB3/PbIvG6ZpFNbOhKfT5pqcHxB69gR573dP763SvY
         72HmYy8aVRrswhqF4i99VPxs2rlJ35e9yVbfLTjHolXhIFeKeaeDnFqk69IK+W2fhZzH
         TwS6+ttfyJVItS24V5zg+699Rzn+CcAt6Jktfwvb6He1mPue5qKz66J7hLc0gIp/gp4G
         4XFh10ZfRX2EZeNvgBUL6kTYanPHwYPQNSv0ixNTO2SYyuFWLstgu8+7/K+pbHRQaU89
         u+Kg==
X-Forwarded-Encrypted: i=1; AKwUvBwcKo8lqedLxxx7lLVJzULchhPN2RKQqAN5Co7GcH0YB/MYCvd3tpSQ7wtIbDdK1mteC7mNMmwUmQQ=@lists.infradead.org
X-Gm-Message-State: AFuF++mmRC/b0cKuLkGrsmbG/Mt/opFwdvM9PiXgHeWEdwf9/r61bpsu
	usdS/NtBHVKEpytlW7qu+j8MgnXOGfyqb0cRT4F2eLHAsFHZYA0g6Sad
X-Gm-Gg: AYBFou1MHndfXqFIE4ZmseJi8L9Q8WO4sfhqWisKDX39ofOydzvH8N329IJUi0B6zC4
	dVvb3P+coJv3MCXiK1he++HxEj9TPkYYJFB1KQ3l1A5s40wNRonD4EodF0CC3LNpd2JXN4/CSTf
	gN2yl8D1iMxptFG2VtDZClIgauIgc3IEijl0BIyOJ4E7RnLZ0apADbbkz7BARqUZd1GoO9nQK3n
	I2W2lO9Ok1vqcn7xb5tw+YppX9+gvT4uMKrCFUtDvv5Y5rd94KP9vBXtQhzA9JdIEayTNaaBUzl
	jPs8wF2rISkHmVpW0BCE1MqJEDNqb61NOO3WNp5wKH9a32RZ8RqIbk9q614U/m549FP69OXBAs9
	ckJq/UH08p6MB73qjG3TjOOpo+yN9J85jcIxWyGy6drKEmFvzVB/FRGnqhXb9ecrdxvJcIqJIUY
	1e4TMsvekoaQdXgFtIxBye+DlqanBYULsajxgAeBvVGdXNK5Upj62s7cuY3d9zL97GSl17pcZM1
	yY/+Q==
X-Received: by 2002:a05:620a:d48:b0:939:6dea:3749 with SMTP id af79cd13be357-939804a747amr1501625985a.45.1788735127989;
        Sun, 06 Sep 2026 15:52:07 -0700 (PDT)
Received: from localhost ([35.11.35.209])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9399429b97esm444434285a.29.2026.09.06.15.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 15:52:07 -0700 (PDT)
From: BurningHoryd <sjunhyuk1@gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: SM8250 USB-C DP alt mode: DP AUX times out in reversed (CC2) cable orientation
Date: Sun,  6 Sep 2026 18:52:06 -0400
Message-ID: <20260906225206.2994952-1-sjunhyuk1@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_155214_552040_423BFE08 
X-CRM114-Status: GOOD (  17.36  )
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

Hi,

I'm chasing a DisplayPort-over-USB-C alt mode bug on an SM8250 (Retroid
Pocket 5) board and would appreciate a pointer, as it looks like it may
be in the nb7vpq904m redriver or the qmp-combo DP AUX path.

Hardware / software
-------------------
- SoC: SM8250, qcom,sm8250-qmp-usb3-dp-phy combo PHY (88e8000.phy)
- USB-C redriver: onnn,nb7vpq904m (i2c, typec mux/switch)
- External sink: VITURE Beast XR glasses, 4-lane DP-only (pin assignment
  C, TYPEC_DP_STATE_C), HBR2, 1920x1200@120
- Kernel: v7.2 base, plus three local qmp-combo patches that are the
  subject of a separate downstream review (keep usb_init_count across the
  DP-only mux switch / skip USB3 power on/off while already in DP-only /
  the residual pipe_clk-in-common timeout hunk). The AUX failure below
  reproduces with those applied; I have not been able to bisect against
  pristine v7.2 because plain v7.2 has an unrelated regression on this
  board (qcom_pmic_typec now requires connector/vbus-supply, which the
  board DT lacks, so DP alt mode never powers up at all without a
  separate DT fix).

Symptom
-------
Normal cable orientation: DP alt mode works perfectly - link trains,
1920x1200@120, stable.

Reversed cable orientation (Type-C orientation = reverse / CC2): DP never
comes up. The DP alt mode HPD notification reaches msm_dp
(msm_dp_bridge_hpd_notify status=1), msm_dp starts bring-up
(msm_dp_display_host_phy_init, phy_init OK), but the very first DPCD read
- SINK_COUNT at 0x200 in msm_dp_hpd_plug_handle - polls for ~4 seconds
and never gets a reply:

  [drm:msm_dp_hpd_plug_handle] Before, sink_count=0
  [drm:msm_dp_display_host_phy_init] core_init=1 phy_init=1
  ... ~4 s ...
  [drm:msm_dp_hpd_plug_handle] After, sink_count=0
  [drm:msm_dp_bridge_detect] aux link status: 0
  [drm:msm_dp_bridge_detect] failed to read caps

msm_dp then gives up and the connector stays disconnected. Link training
is never reached. Stock Android on the exact same hardware works in both
orientations, so this is a driver-side issue, not a board/silicon limit.

What I've verified (instrumented kernel, dev_info in the phy + nb7 set
paths)
------------------------------------------------------------------------
- It is NOT a state / refcount / mux ordering artifact: a clean
  reverse-first plug (fresh boot, reversed cable plugged before any
  normal plug) fails identically.
- On the reversed plug, in order:
  * qmp_combo_typec_switch_set(REVERSE) runs, qmp_combo_com_init(force)
    writes QPHY_V3_DP_COM_TYPEC_CTRL = SW_PORTSELECT_MUX|SW_PORTSELECT_VAL
    (0x3).
  * nb7vpq904m_set() runs for TYPEC_DP_STATE_C with reverse=1, writes
    AUX_CC_REG (0x09) = 0x1.
  * qmp_combo_typec_mux_set() does the DP-only transition, com_init(force)
    again (mode=DP_ONLY, TYPEC_CTRL=0x3) - this happens AFTER the nb7 DP
    config.
  * qmp_combo_dp_init() -> qmp_v4_dp_aux_init() runs.
  So the PHY and the redriver are both configured for reverse, in a sane
  order, before msm_dp attempts AUX. And AUX still times out.
- qmp-combo has no DP-AUX orientation register that I can find - AUX
  orientation on this design is entirely nb7vpq904m AUX_CC_REG.
- Inverting SW_PORTSELECT_VAL and/or nb7 AUX_CC (making the registers
  bit-identical to the working normal-orientation case) does not help -
  reverse still fails.
- Forcing repeated full qmp_combo_com_exit/com_init cycles during the
  DPCD poll window does not help.

The one thing that changes anything
-----------------------------------
I added a knob to override GEN_DEV_SETTINGS OP_MODE in the nb7
TYPEC_DP_STATE_C branch (it normally hard-codes
GEN_DEV_SET_OP_MODE_DP_4LANE):

  OP_MODE = DP_4LANE (2)      -> DPCD read: 0 successes (many tries)
  OP_MODE = DP_CC1   (1)      -> DPCD read: 0 successes
  OP_MODE = DP_CC2   (0)      -> DPCD read succeeds intermittently
                                 (~1 in 4 plugs, sink_count 0->1,
                                 connector goes connected briefly).
                                 Link training then fails, which is
                                 expected since DP_CC2 is a 2-lane
                                 op-mode and the source is driving 4.
  OP_MODE = 3, 4             -> 0 successes

DP_CC2 is the "flipped orientation" op-mode. It is the only setting that
ever gets an AUX transaction through in reversed orientation. That
strongly suggests the nb7vpq904m SBU/AUX switch is not being put into the
flipped routing for a 4-lane DP session - AUX_CC_REG alone does not seem
to do it in DP_4LANE op-mode - but I don't have the full NB7VPQ904M
register map to confirm (the public datasheets are image-only).

Questions
---------
1. Is nb7vpq904m's DP_4LANE path missing SBU/AUX orientation handling
   that the DP_CC1/DP_CC2 paths get implicitly from the op-mode? Should
   AUX_CC_REG be sufficient in DP_4LANE mode, or is another
   GEN_DEV_SETTINGS / AUX register bit needed for CC2?
2. Is there an SM8250 qmp-combo DP-AUX orientation step that mainline is
   missing (something the downstream PHY driver does for a reversed
   4-lane DP session)?
3. Any known-good reference for reversed-orientation 4-lane DP on an
   SM8250 + nb7vpq904m board?

I can share the full instrumented traces (normal vs reverse) and test the
register map if someone can point at the right bits. Happy to turn a fix
into a proper patch.

Thanks,
BurningHoryd

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
