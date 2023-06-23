Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C35AEB64D7
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jun 2023 15:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=36AXTngW6XXAHy2z0cyAnISmjVECAWoejUB+s0QVq64=; b=gzDIN4r7m5bPFc
	bUfzcEf3Vw8sgIht/xON4xmuW2tPXGxVG8NtIioZjhU2aM85Fd0R5GnlLqd0T5o2Z1jCbjMM4hcPL
	ocp30q8BFcvVEXrFL0svMWTugy/Hi5b4Z5N8YETPK8rlRlZpuEn+Mfa7zkMKJAcrRmrEmuiH2fFD6
	3FK3LHLqGtgOk8NhGZleP8rJkFiCtq2SI1MofIFA/wfhNZetruoR+O3SUX1PWLhJ+FveT/DQZmNEC
	Fcy8Z7AEnA1dQHy3dBTIHWrJ6m1/wb0Zj81vbRY/izTwa+MFk+pgCPE8FDnRiZ5/4xRo4/rE9o8yY
	96i7EU5kgyXShpVmiRAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCidG-003vXd-0J;
	Fri, 23 Jun 2023 15:23:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCidD-003vWo-0e
	for linux-phy@lists.infradead.org;
	Fri, 23 Jun 2023 15:23:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A70D061AA3;
	Fri, 23 Jun 2023 15:23:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CD60C433C0;
	Fri, 23 Jun 2023 15:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687533806;
	bh=6tFbzhaBjmMoKkG1CNrCXK+CWNwGbleX71IfZSZAiRQ=;
	h=From:To:Cc:Subject:Date:From;
	b=mDEZWbDgdq4hMs2Z9jt15TcgjRbUQiak6kDW7/sDpz1hUykHwK4yFRVHb8XXp6T2U
	 ce3AcuUDeo4JGbomgkEqmbOvufUqNXyZxgNQNbTdQI5cpffJae8QEhZ7Hzx0m+w4uj
	 eunRKNh3i1N+O/ugxP03zzduODf/mgqaf2/jbpakUccSSKzbEtaECmCdKmI1rYNKOq
	 3ZctNYWyNmGJj3Xb4+5ZvTvknnYPl8OG4O0yQ9q284fsyMio13ObzjE5InpVP0uyFQ
	 QR4zMlZpyRjNvTocgOiyBcGvw1YZ84AOnn7cm5RkbGbbJVdWzok9eEPN4xhmWOVxO8
	 C15PaBm99di3Q==
From: Arnd Bergmann <arnd@kernel.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Gerald Loacker <gerald.loacker@wolfvision.net>,
	Bingbu Cao <bingbu.cao@intel.com>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Vincent Shih <vincent.sunplus@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] media: tc358746: select CONFIG_GENERIC_PHY
Date: Fri, 23 Jun 2023 17:23:09 +0200
Message-Id: <20230623152318.2276816-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_082327_279126_848BA59A 
X-CRM114-Status: GOOD (  12.64  )
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

From: Arnd Bergmann <arnd@arndb.de>

The tc358746 driver selects CONFIG_GENERIC_PHY_MIPI_DPHY and links to
that, but this fails when CONFIG_GENERIC_PHY is disabled, because Kbuild
then never enters the drivers/phy directory for building object files:

ERROR: modpost: "phy_mipi_dphy_get_default_config_for_hsclk" [drivers/media/i2c/tc358746.ko] undefined!

Add an explicit 'select GENERIC_PHY' here to ensure that the directory
is entered, and add another dependency on that symbol so make it
more obvious what is going on if another driver has the same problem,
as this will produce a Kconfig warning.

Fixes: 80a21da360516 ("media: tc358746: add Toshiba TC358746 Parallel to CSI-2 bridge driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/media/i2c/Kconfig | 1 +
 drivers/phy/Kconfig       | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
index cf675ac4b1326..226454b6a90dd 100644
--- a/drivers/media/i2c/Kconfig
+++ b/drivers/media/i2c/Kconfig
@@ -1305,6 +1305,7 @@ config VIDEO_TC358746
 	select VIDEO_V4L2_SUBDEV_API
 	select MEDIA_CONTROLLER
 	select V4L2_FWNODE
+	select GENERIC_PHY
 	select GENERIC_PHY_MIPI_DPHY
 	select REGMAP_I2C
 	help
diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index f46e3148d286d..8dba9596408f2 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -18,6 +18,7 @@ config GENERIC_PHY
 
 config GENERIC_PHY_MIPI_DPHY
 	bool
+	depends on GENERIC_PHY
 	help
 	  Generic MIPI D-PHY support.
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
