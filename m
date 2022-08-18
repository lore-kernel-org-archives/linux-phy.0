Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C22BC32773
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 14:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z18V3fqj9GTetHmjPAss3Puc1qfS8bRF3jz3QvXQh0E=; b=Hx6vTWJBAYRpJx
	T2quaFRDHeO9kO5knBP7Ufy5ZgSVcaxyWsaR6faDCSliNHvrmyUp+l1G0uhcMUTjqkqrC9vI277F5
	rWIH6TFybGs/x+utuHiQ215Mps1PsHB9EqBkwJ2Ms8l2w0HwzS9nV351H5eXTH5ZTw45i5DH6I5U4
	+11wJueS2NLa4pk2G9FjWtU2ou6qnB0SrdvAehrK+zkrfIBPI1QeX9QAbOlRw7L29Hjs/dfYlt01D
	04Qz71FSjCo5AMeBElG8pKKobZa5gv0Qm5v9TLcOEemy773Mpai4cjcJTYS1kJJRkmRAihxgmQY9d
	kxJV6v43OYwaCUJMR0FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOglx-006DGP-Ee; Thu, 18 Aug 2022 14:45:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOgaY-0065si-HH
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 14:33:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oOgaJ-0005lM-Kh; Thu, 18 Aug 2022 16:33:23 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oOgaH-000X0t-Qu; Thu, 18 Aug 2022 16:33:21 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oOgaH-0043dM-11; Thu, 18 Aug 2022 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	kishon@ti.com,
	sakari.ailus@linux.intel.com,
	hverkuil@xs4all.nl,
	jacopo@jmondi.org,
	laurent.pinchart+renesas@ideasonboard.com
Cc: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH 0/4] Add support for Toshiba TC358746
Date: Thu, 18 Aug 2022 16:33:03 +0200
Message-Id: <20220818143307.967150-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_073338_752987_740232B3 
X-CRM114-Status: GOOD (  11.35  )
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

this small series adds the support for the Toshiba TC358746 MIPI-CSI to
Parallel converter chip. After a long period I finally had the time to
include Sakaris points made on my v2 [1]. Since [1] is long time ago
and I reworked the driver a lot, I don't add a v3 on this series. Also
all already provided RB tags are dropped.

Regards,
  Marco

[1] https://www.mail-archive.com/linux-media@vger.kernel.org/msg147901.html

Marco Felsch (4):
  phy: dphy: refactor get_default_config
  phy: dphy: add support to calculate the timing based on hs_clk_rate
  media: dt-bindings: add bindings for Toshiba TC358746
  media: tc358746: add Toshiba TC358746 Parallel to CSI-2 bridge driver

 .../bindings/media/i2c/toshiba,tc358746.yaml  |  157 ++
 drivers/media/i2c/Kconfig                     |   17 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/tc358746.c                  | 1645 +++++++++++++++++
 drivers/phy/phy-core-mipi-dphy.c              |   31 +-
 include/linux/phy/phy-mipi-dphy.h             |    3 +
 6 files changed, 1850 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
 create mode 100644 drivers/media/i2c/tc358746.c

-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
