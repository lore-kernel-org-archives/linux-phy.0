Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31CBAC48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:24:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 033E360240
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:24:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 033E360240
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PwuYEjAIUknFz/5SqghASsV6MicjgquwsqTv5mWitGU=; b=b0v+WdkAOcFYke
	Ckc48GXqLuBUqBm0uY4o3lA8ZZGy6Qgkth8cws/uu89NZk2VEFRYnxVoR6YFZUvX3YlUVOomLzhSB
	Ppns9KKvBDeOFYt39sihkV4SVZoFEWoTUxU1ib/HRmFZlVRPMPLpmvJIarVBqkQ6yc9J/756hLmKz
	cSQ0dsSx8+xFm1MulfomIxouFiaxmjaMHosTZby05wEw1Rpo9SP8dhw2t7ajko2/tgsr2nu+N8XA6
	noItaB8BnbWNdF6INMre30izxwMZfpCklVKHhCWxHKM+KRuT5yu3ucg1g6CW4YPoHyC1q65Tcc/Lc
	M5cIujJ1dnjvZMFHqVNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvEIW-002TiX-HV; Mon, 21 Jun 2021 07:24:44 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEIS-002TgR-Rx
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 07:24:42 +0000
Received: by mail-pf1-x436.google.com with SMTP id y4so5949104pfi.9
 for <linux-phy@lists.infradead.org>; Mon, 21 Jun 2021 00:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4Mz90SrmvetiiKOz2FA2/q5WPVb/5Mateql9uC1osYI=;
 b=LH6roB4QN50Ss3fd6q+CBK16FfSLRV/++biPwO3AeQTv8PFz5YsC987Yl5PrPtbQUR
 grYaD4IXKWdJJOg4dF6BckzRXAb951oI2Olp611oMhF3JgfviD5I5Jhy/q+gsRLvIMqk
 koZVmpZYLZherETZSArj4lMgsAiX7fGYNfJ8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4Mz90SrmvetiiKOz2FA2/q5WPVb/5Mateql9uC1osYI=;
 b=sUaQpOzprIQAuZQq+MQgTWw85Qgw0N5SmHGLl7n6dvZFkd8FXyk0V8eu55Yho2fSkL
 RiehgUoi3cKg8b8ZD9S7kFtWW5uBlpj8EOVriifF23lCX7kluaDJ+LWxtYRrF6vppqrG
 c2w90TyODNrjxh4rIL16a/Yo7hRyZPtw7s12utHprCYw+ZanQ3D8PageYtMv+O5/1GnD
 tGz4w2KaT+9GBUzQgl2lv/33qHtNpE/R6pZzEBePsw7IWVBv/CcYg6OczTj3nk1mzAVk
 u7U/C1TjYZ+L6bJcWgwZsix1VKDC8+WcFOiH1tbmC50dUgOVaIUb4ALbpZS3n2oUhu0r
 3k4A==
X-Gm-Message-State: AOAM531KKrMYlZc1AO19zIb7zEDA10lRP/PtWNSRIBC5E9/WXa1V7J6B
 RAVxf6EWk1wDRwckI8mXvrNw9w==
X-Google-Smtp-Source: ABdhPJxiCxvGt4Lvg95BHdbOmEwOZrpqM6XZznMkEdEE3H9U0aYNeyTH/9EQGYu7BduM/FJvQrX1Kg==
X-Received: by 2002:a63:ef04:: with SMTP id u4mr22267854pgh.429.1624260278855; 
 Mon, 21 Jun 2021 00:24:38 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
 by smtp.gmail.com with ESMTPSA id
 21sm13951294pfh.103.2021.06.21.00.24.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 00:24:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>,
 Fancy Fang <chen.fang@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-amarula@amarulasolutions.com,
 Anthony Brandon <anthony@amarulasolutions.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>,
 Milco Pratesi <milco.pratesi@engicam.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [RFC PATCH 0/9] arm64: imx8mm: Add MIPI DSI support
Date: Mon, 21 Jun 2021 12:54:15 +0530
Message-Id: <20210621072424.111733-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_002441_088136_172DB362 
X-CRM114-Status: GOOD (  11.65  )
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

This series support MIPI DSI on i.MX8MM.

It worked directly with existing mxsfb driver but the SEC DSIM
timings has to be validate and tested through all platforms, 
ie reason I'm sending it as RFC.

Tested on Engicam i.Core MX8M Mini SoM.

patch 1: dt-bindings for SEC MIPI DSIM

patch 2: SEC MIPI DSIM bridge driver

patch 3: dt-bindings for SEC DSIM DPHY

patch 4: SEC DSIM DPHY driver

patch 5: MIPI DPHY reset enable in blk-ctl

patch 6: display mix blk ctl node

patch 7: eLCDIF node

patch 8: MIPI DSI pipeline nodes

patch 9: Enable LVDS panel on EDIMM2.2

Note:
- all these patches on top of Peng Fan's blk-ctl driver.
- anyone interest, please have a look on this repo
  https://github.com/openedev/linux/commits/imx8mm

Any inputs?
Jagan.

Jagan Teki (9):
  dt-bindings: display: bridge: Add Samsung SEC MIPI DSIM bindings
  drm: bridge: Add Samsung SEC MIPI DSIM bridge driver
  dt-bindings: phy: Add SEC DSIM DPHY bindings
  phy: samsung: Add SEC DSIM DPHY driver
  soc: imx8mm: blk-ctl: Add MIPI DPHY reset enable
  arm64: dts: imx8mm: Add display mix blk ctl
  arm64: dts: imx8mm: Add eLCDIF node support
  arm64: dts: imx8mm: Add MIPI DSI pipeline
  arm64: dts: imx8mm-icore: Enable LVDS panel for EDIMM2.2

 .../display/bridge/samsung,sec-dsim.yaml      |  184 ++
 .../bindings/phy/samsung,sec-dsim-dphy.yaml   |   56 +
 .../freescale/imx8mm-icore-mx8mm-edimm2.2.dts |   90 +
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  104 ++
 drivers/gpu/drm/bridge/Kconfig                |   15 +
 drivers/gpu/drm/bridge/Makefile               |    1 +
 drivers/gpu/drm/bridge/sec-dsim.c             | 1535 +++++++++++++++++
 drivers/phy/samsung/Kconfig                   |    9 +
 drivers/phy/samsung/Makefile                  |    1 +
 drivers/phy/samsung/phy-sec-dsim-dphy.c       |  236 +++
 drivers/soc/imx/blk-ctl-imx8mm.c              |    4 +
 include/dt-bindings/power/imx8mm-power.h      |    5 +-
 12 files changed, 2238 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml
 create mode 100644 drivers/gpu/drm/bridge/sec-dsim.c
 create mode 100644 drivers/phy/samsung/phy-sec-dsim-dphy.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
