Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CA86C531C9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 05:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qBfImRx9dSQIzZrsXKv3K9nmasDGRqLvQJwN9V0wJP8=; b=yphnil/aHd/BKe
	/rOskRM7sdh8VeBBhsnW/YZRCZMUZHwbH3TVs3Mby0cFiL/QHCVatsmfCbIu2zXwzd9YGmnKlU2K8
	Ng30s687/Yxfc5RUzS85Jlnzk8/mCcghxtBRqSKz4suqYeXxCY8qV9nfs9hCZ+myKhbSf5mU/YKne
	UdP96wFS719uta8pCwlwdFve8mGZcSJco6tj86/sBDaA+mzZZztBJR5cPtAXxut7FitqrMIVyGgQ2
	hOLKz2CWgThXpOY+SaKwMIMUHWbxWQfKJ8htxQ3khg+1/BgP0dXIH30/rqcssBzCUZS7Ust8qupzL
	77mTES3AVTjvIImYVMkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUcJ-0000000038X-3sxb;
	Sat, 25 Jul 2026 05:08:07 +0000
Received: from mail-pj2-x0a.google.com ([2607:f8b0:4864:39::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUcG-0000000037x-2i1y
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 05:08:05 +0000
Received: by mail-pj2-x0a.google.com with SMTP id 98e67ed59e1d1-38e8adc1d70so463839a91.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 22:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784956083; x=1785560883; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=lGkHba1dpLm3kZ77OrZxUFezmNhR7Fx9pZtETx4Zo3s=;
        b=muiHkSowIO8eV5LmxrpXLtM1Ibti0micpGNrgvbgiSARkDdNFZXhgZFXOPxws46C3C
         uUj9aQsbzzMdz7/GeK7tYYYlQ2ULQuFo2psN6JQpFBgnWKu51A9HsljHGchw9Ujj4JD0
         lm9/DHYDs21nKvit55uwAFW1WFvB5FjO3EAipyYLKgUCR5y9aZp1x5cYpvfRjk6E7Jt4
         o678KXnXVs/UibpadLRDv6ttisGnO+YVaWngDQL1NXvx2OUHQ8rmPlg0SZ+WePc6XVzh
         88LU3TgHc+lYrn4Y40MMQbV1SHgzCcZJqm1mEu0n5u5zymSLRAogX6tQdm6/81TRNfMR
         C5Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784956083; x=1785560883;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=lGkHba1dpLm3kZ77OrZxUFezmNhR7Fx9pZtETx4Zo3s=;
        b=m9SZNMVPurH03Vd4KLS3JLsWtsSTt9f3fclGye8t9zN63yozX4mUSy/wrN/SYWG6bv
         TSeK89cqJUUqKnJ8VzvxpGFmevvzWAWct47NlhMQLei0bBMXHN/hqOF1W5E9f2EAITmQ
         Yac2RACqyga7oLst6BDcth6tdzWkDmZwHWkcnT9Gy9ymrkMmgXrGZyOiI8+lQQGyNmHM
         qnM4NIwNM8LO32Wc5ls2VcFsFWlfw75tIw0onp5Bvqg8w1+nU9LlWsw9ANHtjTP4gA2X
         vA3LGfz5MOrD7JshQGrU1SJ8Xzmnfz4eCcBLjYcTkCwU/fz50jFntijzTpATUsWB7sH6
         zk6w==
X-Forwarded-Encrypted: i=1; AHgh+RqaaEWgvhiyTDFL8V/ar9TQEeU9qoJAWby73xaadRrqViQ7IkoV6oo9GdjUswtetf1mMkLuL0IMlVs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQhxKhKn7kjdr+z7f0OKGIxgVt+vB+7IONJWDIfpXClYvG1z8c
	m+HXMb1qku7mfLcnyHk20yfpwin+plm9RNqEFYW8W/mmI7zhuP3K6EIv
X-Gm-Gg: AR+sD13Md9OdjD4urcog+5CIlhmfNh/NLpy/03aDWhi2kKP9+8Kxj/7z6QQf+CpwOh8
	SViYcLKW/px/gHD6u3IXKsIXegSF+h/ocbDEF1RuDAMMbFsN5BZFtL1eEW5mJx5UQBmqzvqxE7/
	AIhHYf1e6ybzPip+6iVdEs1DwgPGENffocTgrUvxRquDw6KIptIMb9gY4YRJJpFeNhA3+HIxXDR
	/AoGwj3el8ZND5eEo2eXJiKQbuEwkAm+Gz4Y9F5+IV0kuSq4FKoPoEs6NlsCktLotzJnGATeU7t
	44CShFXWDuLjUlMR7wDWK6BPfLoatc2579tPyLuztgX9LYuIJQ2IhtGHzd9XS++YrG5RafHZNKZ
	taSL9TUZqpGooL7nYAweGH8G5oVFu0kRb/2JKFQN/CeLkqeHdWg9IPxc=
X-Received: by 2002:a05:6a00:4218:b0:84a:6726:62f9 with SMTP id d2e1a72fcca58-84e5942e629mr681366b3a.9.1784949429047;
        Fri, 24 Jul 2026 20:17:09 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.17.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:17:08 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Subject: [PATCH 00/17] drm/spacemit: add SpacemiT K3 display support
Date: Fri, 24 Jul 2026 23:16:32 -0400
Message-Id: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJEqZGoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDc0Nj3Wxj3ZTM4oKcxErdVIu0tNQUM/NUS2MzJaCGgqLUtMwKsGHRsRB
 +cWlSVmpyCcgEpdpaAGzX92NuAAAA
X-Change-ID: 20260713-k3-display-e8ffed67e936
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_220804_691621_E141D118 
X-CRM114-Status: GOOD (  17.81  )
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

This series adds display support for the SpacemiT K3 [2], a RISC-V SoC:
a new DRM driver, a new PHY driver and three new bindings.

The display path is three blocks deep:

  Saturn DPU -> Innosilicon DP/eDP controller -> Innosilicon DP PHY

The Saturn DPU is SpacemiT's own display processing unit. It has a private
address translation unit and a command-list composer that replays a batch
of register writes when a flush is latched. It exposes one CRTC with one
primary plane. The K3 instantiates two DPUs, one per display path.

The DPU driver arrives as five staged patches to keep each one a
reasonable size. The driver only becomes buildable with that last patch.
Bisect safe.

The DP/eDP controller and its PHY are Innosilicon IP, also two instances
of each. An instance behaves as embedded DisplayPort or as external
DisplayPort purely according to what its output port is wired to, so the
bindings do not distinguish them. The PHY's registers are interleaved
with the controller's inside one MMIO window, which is why it is
described as a child node and shares the controller's regmap.

The pixel clock is generated by the DP PHY's PLL, and the SoC's APMU
pixel-clock mux takes that PLL as an input. Rather than let the display
driver reach into PHY registers, the PHY registers its PLL as a clock
provider and the APMU mux is parented to it through the clock framework.
That is what patches 2, 4, 5 and 6 are for, and it is also what keeps the
APMU and the DP/eDP controller out of a devicetree provider cycle.

As a first posting of the K3 display subsystem, this patchset supports:
a single primary plane per CRTC, linear RGB scanout (no plane scaling,
rotation, YUV or writeback). It does not support DSI, DSC or DP audio,
and link rates are capped at HBR2.

Based on drm-misc-next at commit 5b9af25f2d0b ("accel/ivpu: Remove
unnecessary min_t()/max_t() usage"), v7.2-rc2 based.

Testing this series needs a SpacemiT u-boot carrying display support
[1]. SpacemiT expects to add that support into an official u-boot
release in August 2026.

Tested on two K3 boards:

  - Pico-ITX: an eDP panel and an external DisplayPort monitor.
  - CoM260-IFX: DisplayPort only, no eDP.

Note: The eDP panel DTS enablement is not part of this series; a separate
      series will follow showing how eDP can be verified.

What was run on both boards, with modetest from libdrm and with kmscube:

  - modetest -s, looped over 1920x1080, 1280x720 and 3840x2160
    on DisplayPort and 2560x1600 on eDP
  - kmscube, on each head and on both at once
  - hot-plug and sink swap on the DisplayPort connector

Both built-in and modular configurations were tested, and the runs above
were repeated in both. Patch 17 defconfig adds them as modules.

[1] https://github.com/spacemit-com/uboot-for-k3-display-verify/tree/k3-br-v1.0.y
[2] https://www.spacemit.com/community/document/info?lang=en&nodepath=hardware/key_stone/k3

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
Cody Kang (17):
      dt-bindings: display: spacemit: add K3 Saturn DPU controller
      dt-bindings: phy: add SpacemiT K3 Innosilicon DP PHY
      dt-bindings: display: spacemit: add K3 Innosilicon DP/eDP controller
      dt-bindings: soc: spacemit: allow eDP/DP PHY PLL pixel clocks on K3 APMU
      phy: spacemit: add Innosilicon DP TX PHY driver
      clk: spacemit: k3: parent eDP/DP pixel clock to the PHY PLL
      drm/spacemit: add Saturn DPU register model
      drm/spacemit: add Saturn DPU core types, cmdlist and display MMU
      drm/spacemit: add Saturn DPU hardware backend
      drm/spacemit: add Saturn DPU KMS pipeline
      drm/spacemit: add Saturn DPU DRM device driver
      drm/spacemit: add Innosilicon DP/eDP controller bridge driver
      MAINTAINERS: add SpacemiT K3 display driver entry
      riscv: dts: spacemit: k3: add display nodes
      riscv: dts: spacemit: k3-pico-itx: enable the DisplayPort output
      riscv: dts: spacemit: k3-com260-ifx: enable the DisplayPort output
      riscv: defconfig: spacemit: k3: enable display driver

 .../display/spacemit/spacemit,k3-inno-dp.yaml      |  140 ++
 .../display/spacemit/spacemit,k3-saturn-dpu.yaml   |  132 ++
 .../bindings/phy/spacemit,k3-inno-dp-phy.yaml      |   48 +
 .../bindings/soc/spacemit/spacemit,k1-syscon.yaml  |   30 +-
 MAINTAINERS                                        |   10 +
 arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts     |   11 +
 arch/riscv/boot/dts/spacemit/k3-display.dtsi       |  156 ++
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts       |   11 +
 arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi       |   22 +
 arch/riscv/configs/defconfig                       |    2 +
 drivers/clk/spacemit/ccu-k3.c                      |    4 +-
 drivers/gpu/drm/Kconfig                            |    1 +
 drivers/gpu/drm/Makefile                           |    1 +
 drivers/gpu/drm/spacemit/Kconfig                   |   37 +
 drivers/gpu/drm/spacemit/Makefile                  |   15 +
 drivers/gpu/drm/spacemit/dpu/dpu_saturn.c          |  483 ++++
 drivers/gpu/drm/spacemit/dpu/dpu_saturn.h          |   35 +
 drivers/gpu/drm/spacemit/dpu/dpu_saturn_hee.c      |  896 +++++++
 drivers/gpu/drm/spacemit/dpu/dpu_trace.h           |  350 +++
 drivers/gpu/drm/spacemit/dpu/saturn_fbcmem.c       |  152 ++
 drivers/gpu/drm/spacemit/dpu/saturn_fbcmem.h       |   21 +
 drivers/gpu/drm/spacemit/dpu/saturn_regs/dpu_int.h |   25 +
 drivers/gpu/drm/spacemit/dpu/saturn_regs/ops_hee.h |   52 +
 .../gpu/drm/spacemit/dpu/saturn_regs/reg_map_hee.h |   64 +
 .../drm/spacemit/dpu/saturn_regs/saturn_fields.h   |  298 +++
 drivers/gpu/drm/spacemit/spacemit_cmdlist.c        |  304 +++
 drivers/gpu/drm/spacemit/spacemit_cmdlist.h        |  146 ++
 drivers/gpu/drm/spacemit/spacemit_crtc.c           |  815 +++++++
 drivers/gpu/drm/spacemit/spacemit_crtc.h           |  259 +++
 drivers/gpu/drm/spacemit/spacemit_dmmu.c           |  103 +
 drivers/gpu/drm/spacemit/spacemit_dmmu.h           |   40 +
 drivers/gpu/drm/spacemit/spacemit_dpu_ids.h        |   22 +
 drivers/gpu/drm/spacemit/spacemit_dpu_reg.h        |  108 +
 drivers/gpu/drm/spacemit/spacemit_drm.c            |  132 ++
 drivers/gpu/drm/spacemit/spacemit_drm.h            |   68 +
 drivers/gpu/drm/spacemit/spacemit_inno_dp.c        | 2443 ++++++++++++++++++++
 drivers/gpu/drm/spacemit/spacemit_inno_dp.h        |  328 +++
 drivers/gpu/drm/spacemit/spacemit_planes.c         |  376 +++
 drivers/phy/spacemit/Kconfig                       |   13 +
 drivers/phy/spacemit/Makefile                      |    1 +
 drivers/phy/spacemit/phy-k3-inno-dp.c              |  948 ++++++++
 41 files changed, 9099 insertions(+), 3 deletions(-)
---
base-commit: 5b9af25f2d0b574b4058c9f8c84486a597168116
change-id: 20260713-k3-display-e8ffed67e936

Best regards,
--  
Cody Kang <codykang.hk@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
