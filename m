Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6402C55174
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 16:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9+oKe73fF4LvJb5b5KeQy40di6+JrnSW2GN0H2lifzE=; b=rAt3Dtt1HV2aJU
	48duz7uI8ceubcOBW/50bafm9pumuIcYgeCqDWHFK3RVPMVpCCBo+1OnYPINLW+npqmh/mIjRJ/Ht
	Eq/FZC1XhUBqo9Mr5av3JLxYigMczcasHJVjuFaEiU+dbUZJOJX6VqVfMyxb3SgDsvu6hog3+ffWA
	TrEDaN7ZKAqobu1VbijYFNFnBK3v+fSrN5KGjP/tHks2JXVi/OU0/SomzOuzwfem6Jf3WYP1c/gs1
	XElK5ZLyyyneK+f22NZnT4WGsK0/fBeHKU4mxVJvVKjesxwzuvFOwifzzBVaKJGJVtdtVoTy2AcsE
	LPri3V803ABJlrucChpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsk8h-00000009X1s-05mr;
	Sat, 08 Aug 2026 16:43:15 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsk8e-00000009X1S-3Cpc
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 16:43:13 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-92e7c6ec9dbso23300585a.0
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 09:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786207391; x=1786812191; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Lz/jE6jwP2/NdrVzpAXOIzj+A4PttFcfbpXJ2Xjln/8=;
        b=EaJrA4a0Il0D9dWdIE043W7e2UUB3DGPYtA+XUJbpr5UtzTR/LzWUXcz+DEGRrG/xj
         fg5DFT16VT4QoyycqHkujdVrf9sBx22H7aMMW3IjRQYzixwISsLydbqoMNFAra86FE4p
         88Wp7W1F3uVf0ZqQEmcz0OCN2CxgMVMe9/nWYubb86V+UWKxOCq3T1j6x5Nbwp1P12ki
         HtbwFnQndy3HId12nfeKEk7ZZ44gvbPyxqvYhLj/Y72LdYbV7HnVBuIG3cfD1SHNzJOk
         KuupUZ1EMPlBi6eVk71xlaM4WJ2aGdCcdToT/GLP52Zd8+H2+sKrMzzy/G+KxVO+d0yV
         g4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786207391; x=1786812191;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Lz/jE6jwP2/NdrVzpAXOIzj+A4PttFcfbpXJ2Xjln/8=;
        b=h83KN3jGDcWW4Lwcqgvz/sr26MyEbrQN/kKp/ZXpObcker6ChrPVU9BkGxlFNjb2CC
         PUOTsrotIXkZUXffxEHqObTiFnUdwOl3Kdq22S7wpPcCq6gIprxvBUWhRzsdUXxCcuyH
         Bs1Bg1bkiLxvdpwEg6dofDE7/Cqnj8XrEJYPpGbZmzZ64Ysg5nPQbjsUE9/51yWM9z5b
         KEr+htP8ik+4GnyWhroR4vEma23jgI8a7Ef6M+/C/Q2b8xd1lOyGeoJ2qmXIosR10Vtf
         kW+zKHWN/cYH2J1JWa2p01/fRFSE9OLJ7MLVJV7L6ByuwlEx+5RZG2+QBUc3jwl0t5qt
         OsOg==
X-Forwarded-Encrypted: i=1; AHgh+RqCCkZd27p/+d+3PkmH54NeUDMBl2t9nCtTcsaN2yEPisuSsUjuVJMNL2Sx3hVvCkntiAZBGrHq5AU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwITmN2BD8Em9x6wlis41tNvAsY3luzannzK7wFT4ez8/DHxB+V
	Mb51STKHo8Y21mLmGCLJbo39oXKDpmX61FOOfLUL+6TcvtFRDePI/ihb
X-Gm-Gg: AR+sD11A2546e7g63KXUW1njOTF/wgYC93KqT2sJgdRon3Sbckh9F0GDPsYOCtWz7hA
	a5MINk2qCAepIh+tGCcZekiNiIODBKeWg1RHg3bJGb7OJmJjEtIFPv3u7IQKW66nRKRakloGyVi
	/S5YbQbaO62TRK6I+qkrq0ITtqbU3eK+fE7yHpGW4ou9RDmU4Gb8fc9sS3OceVWBDkf0cQqdhik
	EutgqAU2K5m2EhObg2bDgh/tbx5IILxIRCzhm/WhmqMUxk0H4HgkdGaLt9gQWUePXLqJ3fwSD17
	QO5sS1dctULO5t75OwhhdlUu3iD4JyJrzGs6Webn2c8wEDZHfItlOA2xhmDU5ubvdvv/fMpQm1k
	6lFwotYiR5FOqx1bxn/exIqsgPs8ShX1Fvs7zdXwHJiRnebCXi63V1za9gyZVeWoMgsmta8xAtf
	RVpKIg1SQePa9Li/GHRks0fih0aWY5LG4RbkAUWxetYpla1Hy9Xp4FGEmrvE5a49aP5YszqE4y/
	Pv0PjDECqRJ+kMg8uZCNMcb7RcwoOmK02vCpA90vdy2rP++nTFqtJ/e6Nxo3DAxZZH66pO8ACtQ
	8+p/LTeufQ==
X-Received: by 2002:a05:620a:44d2:b0:92e:6f45:dfdb with SMTP id af79cd13be357-93648f51d58mr3084475285a.0.1786207390576;
        Sat, 08 Aug 2026 09:43:10 -0700 (PDT)
Received: from JesseofTheNorth.internal ([2600:4041:502b:ea00::1408])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9366e22695bsm402910885a.25.2026.08.08.09.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 09:43:10 -0700 (PDT)
From: Jesse Casco <jesse.casco@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: phy-qcom-qmp-combo: com_aux enable fails on a DP-only instance with no USB half (Snapdragon X2 Elite / glymur)
Date: Sat,  8 Aug 2026 12:41:48 -0400
Message-ID: <20260808164148.123057-1-jesse.casco@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_094312_828152_5758D299 
X-CRM114-Status: GOOD (  23.23  )
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

On the ASUS Zenbook A16 (UX3607OA, Snapdragon X2 Elite Extreme, glymur /
X2E94100) the internal HDMI output never produces a picture, and a second
problem turns that into an unusable machine. I would like verification on
the reading of both.

The failure

	Failed to enable clk 'com_aux': -16
	phy phy-88e1000.phy.7: phy init failed --> -16
	  clk_branch_toggle <- clk_branch2_enable <- qmp_combo_com_init
	    <- qmp_combo_dp_init <- phy_init

Plugging a display in afterwards produces only "phy_power_on was called
before phy_init", and the connector comes up with nothing behind it:

	                      status         EDID      modes
	nothing attached      disconnected   0 bytes   0
	display attached      connected      0 bytes   0

Why this looks like the driver and not the DT

phy@88e1000 has no DWC3 behind it. The USB controllers on this board are
a400000.usb (multiport), a600000.usb and a800000.usb; none is the tertiary
instance phy@88e1000 would pair with. That PHY is DisplayPort-only here,
and every tertiary clock sits at an enable count of 0 while the two PHYs
that do have controllers sit at 1:

	                                en prep     rate     hw  consumer
	gcc_usb3_tert_phy_com_aux_clk    0   0    19200000   Y   88e1000.phy
	gcc_usb3_tert_phy_aux_clk        0   0    19200000   N   88e1000.phy
	gcc_usb3_tert_phy_pipe_clk       0   0   125000000   N   88e1000.phy
	gcc_usb3_sec_phy_com_aux_clk     1   1    19200000   Y   fde000.phy
	gcc_usb3_prim_phy_com_aux_clk    1   1    19200000   Y   fd5000.phy

com_aux reports hw_enable = Y at an enable count of 0 -- the hardware reads
as on while nothing in the framework has enabled it, which is what I would
expect if clk_branch_toggle() polls the halt bit and times out at -EBUSY.

qmp_combo_clk_init() fetches {aux, cfg_ahb, ref, com_aux} with
devm_clk_bulk_get_optional(), and qmp_combo_com_init() enables the whole
bulk unconditionally -- including com_aux, which on this instance never
comes out of halt.

I cannot say from outside the SoC why it does not, but I can narrow it. It
is not a shared vote: gcc_usb3_tert_phy_com_aux_clk is BRANCH_HALT with
enable_reg == halt_reg == 0xe1074, its own CBCR rather than a bit in a vote
register, so enabling it waits on no other master. Its source is
gcc_usb3_tert_phy_aux_clk_src, an XO-derived RCG, at enable count 0 here
while the secondary instance's equivalent sits at 2. That leaves the
block's own power/reset state, which on the two working instances is
brought up by the DWC3 controller this one does not have. I would rather be
told the mechanism than guess at it, which is much of why I am writing.

Dropping com_aux from that node's clocks/clock-names makes the PHY
initialise cleanly: no clk-branch warnings, EDID 0 -> 512 bytes, modes
0 -> 32. That is legal, since the bulk get is _optional and cfg_ahb already
demonstrates it -- cfg_ahb is absent from all three combo PHY nodes here and
nothing complains. I do not think it is the right fix, though: the DT
describes the PHY's clocks correctly, and it is the driver that enables them
all regardless of whether the instance has a USB half.

Reproduced on the merged upstream A16 DTS

The machine daily-drives linux-next next-20260807 booting the merged board
file, e8fbbca94db7 ("arm64: dts: qcom: glymur: Add Asus Zenbook A16
(UX3607OA)"), which builds standalone. It fails identically, and everything
above is from that boot. The only local DT delta is an unrelated
arm,no-completion-irq on the SCMI transport.

Konrad, the merged commit lists the HDMI port as working, and it does not
work here, so I am sure I am missing something on my side: kernel revision,
a prerequisite, or a difference between units. One thing I can rule out --
booting your merged DTS, the board brings up all three USB controllers
including &usb_mp, so that is not it. Any pointer on what to check next
would be welcome.

Also, msm_dp_aux_transfer does not time out when the PHY is down

This is the part I would most like help with, because it turns a dead output
into a dead machine. With com_aux present, plugging a display in puts the DP
IRQ thread into uninterruptible sleep, and the compositor follows it in:

	STAT  PID   WCHAN                  COMMAND
	D     480   -                      irq/230-dp_display_isr
	Dl+   4855  msm_dp_aux_transfer    Hyprland

	# /proc/480/stack
	[<0>] msm_dp_aux_transfer+0x1e4/0x868 [msm]
	[<0>] drm_dp_dpcd_access+0x84/0x1a0 [drm_display_helper]
	[<0>] drm_dp_dpcd_probe+0x50/0x150 [drm_display_helper]
	[<0>] drm_dp_dpcd_read+0x12c/0x240 [drm_display_helper]
	[<0>] drm_dp_read_dpcd_caps+0x48/0x270 [drm_display_helper]
	[<0>] msm_dp_display_process_hpd_high.isra.0+0x50/0x240 [msm]
	[<0>] msm_dp_hpd_plug_handle.isra.0+0x84/0x198 [msm]
	[<0>] msm_dp_bridge_hpd_notify+0x94/0x2a0 [msm]

The AUX transfer is waiting on hardware that was never initialised -- the
"phy_power_on was called before phy_init" above is the same fact from the
other end -- and it never gives up. The compositor holds the DRM master lock
while stuck, so SIGKILL does not land and the session cannot be recovered.

It is not specific to hotplug: rebooting with the display attached brings
the machine up already wedged, same two tasks in the same function, with
phy_power_on-before-phy_init logged at 2.3s and 11.8s. An attached HDMI
display is enough to make the graphical session unusable from power-on, with
no user action at all. It took a cold boot with the cable out to recover.

An AUX transfer that cannot complete because the PHY is down seems like
something that should fail rather than block forever, independently of
whatever is wrong with com_aux. I have put the msm display maintainers on Cc
rather than writing separately, since both halves are the same event seen
from either side -- happy to split it out if you would rather keep the PHY
thread clean.

Environment

  - ASUS Zenbook A16 UX3607OA, Snapdragon X2 Elite Extreme (glymur/X2E94100)
  - linux-next next-20260807, merged upstream board DTS
  - HDMI chain: hdmi-connector <- Parade PS185 (simple-bridge)
    <- mdss_dp2 (af64000) <- phy@88e1000
  - Reproduces on every boot

I have the hardware and use it daily, so I am happy to test a patch or dump
any register state that would help.

I should be upfront that I am a hobbyist rather than a kernel developer, and
this work was AI-assisted. The measurements are real and reproducible;
please weigh my interpretation of them accordingly.

Thanks,

Jesse Casco

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
