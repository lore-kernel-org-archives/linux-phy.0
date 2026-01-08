Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62450D1D48A
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 21:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eUpX6fHJ3npMYiLJM8KO6IneH8GWRO3beX3cGtjjl3w=; b=sm0y1jN2QS9IKX
	JDFIj1kOtxmjZtsJWAhXNdL4vqCJzvd0fcqmYbrSng8jMb8OLYrJ9Z+wbLder0PvABn7aDDWcRLcE
	ZAxvVetz+Xe5CeMdrg2oI2BXbjduMd+Oim+PZ5e4/x2N4u7wplK6J+DzY6bXD9gQZKx10yiE2st0d
	jN26cYAzedcLss8NUnjnljgxMbJH1iurxNsc5bqdds545ubedCJF/YTfP4CH9GC8MbqoXtLAxdicH
	/ff7cR6W1CZCkfV/88ngRjg1bzAZyCEvqeiVW2ou/VeqvUttkrbzU8YrZg8y7MJdfZi1vY5mUbIGf
	vUXVT/ozUQNurp8dQOCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdxNa-00000000sKp-3nVF;
	Thu, 08 Jan 2026 21:17:14 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdxNW-00000000sJH-0HFJ
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 21:17:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767907029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ne57iAfUngCEZ/eJnFXNUIoW6Gx1gYxdMUdG2ktOUNY=;
	b=EMDXTUtx4WdyZZXG1LsaRsGzE+cDvmhBJI1WwQhZ/JysnTpPExl7C1F6fp0/pLMS4Ws23k
	7stKLYBPEF+yFKElbzm7FB4O/UC1Pjafo7mWYjmBqfI7j0qLdqUSZHpuRmGPZ8zYVO6X6i
	k4tmRitRSJYVOaYsm2l2NAvBN/NELu8=
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com
 [209.85.222.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-447-ziRMpICvM-ixjGJ12bG4WA-1; Thu, 08 Jan 2026 16:17:05 -0500
X-MC-Unique: ziRMpICvM-ixjGJ12bG4WA-1
X-Mimecast-MFC-AGG-ID: ziRMpICvM-ixjGJ12bG4WA_1767907025
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-93f65d0a94eso4521596241.2
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 13:17:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767907025; x=1768511825;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ne57iAfUngCEZ/eJnFXNUIoW6Gx1gYxdMUdG2ktOUNY=;
        b=ERSYw5tTQt4dyCnZG6jvB107PHRokNYWQHBgA6bpFaB4Cy+8yryzJhM0DEzmRzdnvo
         0+4QXGusLHAHpBMYo4WZPCpF/OD9KzVoiww9Tl9HvUoznGwkAMUJ6WjJmJ9uTLfWEaU7
         g79i7xsxa2TJ0nH57XuDextrXarFocKVV+Ye79Wcq0AOlT6vCV7EGCrNdEEpSUPiYnig
         v+XfFZWMMRTmQwhc1Goexm/Qz00QNGyZKP9twfAYfcWJyiSVucTPIXEDMAMW1r9w4JIB
         WYxg9h7cj0dHPrlbh6jTLAYb5lc82ApvqrBEs8fbQe4Pn0BrgxzRsi3+Wuj6rjflBoiN
         MMjw==
X-Forwarded-Encrypted: i=1; AJvYcCUJoFDcIcCOOGDmAkqH9uqQMOBn0qw0z336Ydq91vNE6lC02b0hk8mLp/vjs4yeYojIGK8PFdpFy7Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbY0HnsfuQQsfwjSaLeA1ejwyjyTP/TXYmLYVBNoZLoFC26tPR
	1V8af2rrZPr0gfsdSQ1vJny6FICGnWK+ZvgyHnRyccMbPKBE3ahRlqpNQ2VsBQZPA8uF8eSZTaM
	DDsGsY317ByM8lF1qT8x2mrwEn8eIxSaxfebridM4aF+Ij2U0sQwCRhzGjsGNQc4c+P0=
X-Gm-Gg: AY/fxX7DtqJl9jLm5JuwWEjENaULHNc57lmj4Qf4dTl3SA1hOsT0dhRiFiW1jMP3XZ8
	qSuWlYNdR//Wno7IsPALCJ+PMaTKRP4h1CR4Qdd4vSqTwMKbzddklIMFg2PoXHZtUr9zkie8KGO
	LmYDubu+lKlLEuu5RMYLv4lo7xiYKSWV4zbxB31jQxF26gTC2VHM52S90vzflsLh4TnRN37NZgW
	eIaNE8hXJK1Zux1WJMuh75Sq6aNHhv1mK4D/CmS/LWPd+y/seQP27V9wQ7Tw9ZIaEwfTezKNset
	6M3VlHifSc4ZP4uUx4k+j5le43jJ7oz+cp+avmHBlDD8DniFhychSRxt0oM0gC1571SsqadVvfS
	VS+DwBSy8pizvbu0=
X-Received: by 2002:a05:6102:554b:b0:5ea:67f4:c1ad with SMTP id ada2fe7eead31-5ecb68aff05mr2988587137.21.1767907024793;
        Thu, 08 Jan 2026 13:17:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFz/p7kGP9fvfk2vXLPq3R9VUjKVw1cdN6NrP5mq/P0PGpCjqA4/hKeGKMrVWaYIPrb1wIVZw==
X-Received: by 2002:a05:6102:554b:b0:5ea:67f4:c1ad with SMTP id ada2fe7eead31-5ecb68aff05mr2988572137.21.1767907024314;
        Thu, 08 Jan 2026 13:17:04 -0800 (PST)
Received: from [10.30.226.224] ([2600:382:811f:d757:daa5:b867:12a3:9d12])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec77064e86sm7623329137.7.2026.01.08.13.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 13:17:03 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Subject: [PATCH 00/27] clk: remove deprecated API divider_round_rate() and
 friends
Date: Thu, 08 Jan 2026 16:16:18 -0500
Message-Id: <20260108-clk-divider-round-rate-v1-0-535a3ed73bf3@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MwQqDMAyA4VeRnA0kHizsVcYO2kQNG3WkKkLpu
 6/s+B3+v0BWN83w6Aq4XpZtTw3cdxC3Ka2KJs0w0DASU8D4eaPYZaKOvp9J0KdDkeMizGGmMRC
 0+Ou62P0fP1+1/gDlVpEzaAAAAA==
X-Change-ID: 20260107-clk-divider-round-rate-1cfd117b0670
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Brian Masney <bmasney@redhat.com>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, sophgo@lists.linux.dev, 
 Chen-Yu Tsai <wens@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-actions@lists.infradead.org, 
 Keguang Zhang <keguang.zhang@gmail.com>, linux-mips@vger.kernel.org, 
 Taichi Sugaya <sugaya.taichi@socionext.com>, 
 Takao Orito <orito.takao@socionext.com>, Jacky Huang <ychuang3@nuvoton.com>, 
 Shan-Chun Hung <schung@nuvoton.com>, Vladimir Zapolskiy <vz@mleia.com>, 
 Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>, 
 Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, 
 Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Michal Simek <michal.simek@amd.com>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-phy@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5523; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=5gEzfGrJrZBcK9ab2+97vww3qO4uDY2TibGccFpsz3I=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDIT5Lb+j2COyZDSrq1aGtHuW3Hnjb6jSZa7wqEZi1UKM
 +/wfPfoKGVhEONikBVTZFmSa1QQkbrK9t4dTRaYOaxMIEMYuDgFYCLePxj+cE8JZ4ir1XC94hPf
 wLfqhfvjO0u5RdiClDPF9/n9TrNyZGT4NKcq8ciUz4qK0XG3a+4381Zd+31jtWu5nMfx+TvuVsY
 xAAA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: F3WUgish2tkwplJRrUDYjvjgqBtGlUWkp34dQvg7YWY_1767907025
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_131710_184542_9E457775 
X-CRM114-Status: GOOD (  16.47  )
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

Here's a series that gets rid of the deprecated APIs
divider_round_rate(), divider_round_rate_parent(), and
divider_ro_round_rate_parent() since these functions are just wrappers
for the determine_rate variant.

Note that when I converted some of these drivers from round_rate to
determine_rate, this was mistakenly converted to the following in some
cases:

    req->rate = divider_round_rate(...)

This is invalid in the case when an error occurs since it can set the
rate to a negative value. So this series fixes those bugs and removes
the deprecated APIs all in one go.

Three of the patches ended up being a more complicated migration, and I
put them as the first three patches in this series (clk: sophgo:
cv18xx-ip), (clk: sunxi-ng), and (rtc: ac100). The remaining patches I
feel are all straight forward.

Merge strategy
==============

Only three of the patches are outside of drivers/clk (drm/msm, phy, and
rtc). For simplicity, I think it would be easiest if Stephen takes this
whole series through the clk tree. Subsystem maintainers please leave an
Acked-by for Stephen. Thanks!

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
Brian Masney (27):
      clk: sophgo: cv18xx-ip: convert from divider_round_rate() to divider_determine_rate()
      clk: sunxi-ng: convert from divider_round_rate_parent() to divider_determine_rate()
      rtc: ac100: convert from divider_round_rate() to divider_determine_rate()
      clk: actions: owl-composite: convert from owl_divider_helper_round_rate() to divider_determine_rate()
      clk: actions: owl-divider: convert from divider_round_rate() to divider_determine_rate()
      clk: bm1880: convert from divider_ro_round_rate() to divider_ro_determine_rate()
      clk: bm1880: convert from divider_round_rate() to divider_determine_rate()
      clk: hisilicon: clkdivider-hi6220: convert from divider_round_rate() to divider_determine_rate()
      clk: loongson1: convert from divider_round_rate() to divider_determine_rate()
      clk: milbeaut: convert from divider_ro_round_rate() to divider_ro_determine_rate()
      clk: milbeaut: convert from divider_round_rate() to divider_determine_rate()
      clk: nuvoton: ma35d1-divider: convert from divider_round_rate() to divider_determine_rate()
      clk: nxp: lpc32xx: convert from divider_round_rate() to divider_determine_rate()
      clk: qcom: alpha-pll: convert from divider_round_rate() to divider_determine_rate()
      clk: qcom: regmap-divider: convert from divider_ro_round_rate() to divider_ro_determine_rate()
      clk: qcom: regmap-divider: convert from divider_round_rate() to divider_determine_rate()
      clk: sophgo: sg2042-clkgen: convert from divider_round_rate() to divider_determine_rate()
      clk: sprd: div: convert from divider_round_rate() to divider_determine_rate()
      clk: stm32: stm32-core: convert from divider_ro_round_rate() to divider_ro_determine_rate()
      clk: stm32: stm32-core: convert from divider_round_rate_parent() to divider_determine_rate()
      clk: versaclock3: convert from divider_round_rate() to divider_determine_rate()
      clk: x86: cgu: convert from divider_round_rate() to divider_determine_rate()
      clk: zynqmp: divider: convert from divider_round_rate() to divider_determine_rate()
      drm/msm/dsi_phy_14nm: convert from divider_round_rate() to divider_determine_rate()
      phy: ti: phy-j721e-wiz: convert from divider_round_rate() to divider_determine_rate()
      clk: divider: remove divider_ro_round_rate_parent()
      clk: divider: remove divider_round_rate() and divider_round_rate_parent()

 drivers/clk/actions/owl-composite.c        |  11 +--
 drivers/clk/actions/owl-divider.c          |  17 +---
 drivers/clk/actions/owl-divider.h          |   5 -
 drivers/clk/clk-bm1880.c                   |  13 +--
 drivers/clk/clk-divider.c                  |  44 ---------
 drivers/clk/clk-loongson1.c                |   5 +-
 drivers/clk/clk-milbeaut.c                 |  15 +--
 drivers/clk/clk-versaclock3.c              |   7 +-
 drivers/clk/hisilicon/clkdivider-hi6220.c  |   6 +-
 drivers/clk/nuvoton/clk-ma35d1-divider.c   |   7 +-
 drivers/clk/nxp/clk-lpc32xx.c              |   6 +-
 drivers/clk/qcom/clk-alpha-pll.c           |  21 ++--
 drivers/clk/qcom/clk-regmap-divider.c      |  16 +--
 drivers/clk/sophgo/clk-cv18xx-ip.c         | 154 ++++++++++++++++-------------
 drivers/clk/sophgo/clk-sg2042-clkgen.c     |  15 +--
 drivers/clk/sprd/div.c                     |   6 +-
 drivers/clk/stm32/clk-stm32-core.c         |  42 +++-----
 drivers/clk/sunxi-ng/ccu_div.c             |  25 +++--
 drivers/clk/sunxi-ng/ccu_mp.c              |  26 ++---
 drivers/clk/sunxi-ng/ccu_mult.c            |  16 +--
 drivers/clk/sunxi-ng/ccu_mux.c             |  49 +++++----
 drivers/clk/sunxi-ng/ccu_mux.h             |   8 +-
 drivers/clk/sunxi-ng/ccu_nkm.c             |  25 ++---
 drivers/clk/x86/clk-cgu.c                  |   6 +-
 drivers/clk/zynqmp/divider.c               |   5 +-
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c |   7 +-
 drivers/phy/ti/phy-j721e-wiz.c             |   5 +-
 drivers/rtc/rtc-ac100.c                    |  75 +++++++-------
 include/linux/clk-provider.h               |  28 ------
 29 files changed, 257 insertions(+), 408 deletions(-)
---
base-commit: f8f97927abf7c12382dddc93a144fc9df7919b77
change-id: 20260107-clk-divider-round-rate-1cfd117b0670

Best regards,
-- 
Brian Masney <bmasney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
