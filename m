Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC727C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 11:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gt+alhVavx8x1Mf0XUjJMoM1UzI+5YsUYKp0aewu5w0=; b=jPBvdwx2l0SiBB
	aewZkzgZ640tHrxlXo7hhRFoDOmvv5hRTjK7MBD3VdazhbGkHF2M7qFR9miq3gNj5tN2fG8RTD1ZG
	LOfs/Hpvv6VsB/XfjhFeuhqo8Twhjx6I2i7By4rY9p/+PLKfjnIfuFdrToOnhs+qebO3ixP7FuLTg
	Krh8QXznsFdpixteFQCr3rR2yZD3ttSGznIEE6iWZtXi9xoaDBk3WfKTWXbMycvyhfVn/LyUajOqm
	qfYt/u1KJSNuO48FkXSgTRShhOnlCJwNO1pqrAl4GEO87WRilXDqgx8TmvcN6ATB0iaLm9sVsgO+G
	SyBpQHAcRlWGiU99jqdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxRT-00GL4W-1z;
	Mon, 06 Nov 2023 11:06:51 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxRQ-00GL1f-1c
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 11:06:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 322ABB80EDD;
	Mon,  6 Nov 2023 11:06:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35D51C433CB;
	Mon,  6 Nov 2023 11:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699268806;
	bh=g3eDON8La9LZBGvGeH9tuvtlZ9gkW8hDKV2CMMchUE4=;
	h=From:To:Cc:Subject:Date:From;
	b=fBa/EuyJu1KjyLtU6I9czSHVWMGMexRmURy8to5xILif8oO7Yo0mGuoaqCYhuOgee
	 ZiVGPee5/nkIaGBoUCvutRflUr4V2xi0k2wm539RlYLIYb2jdXMhCAERHajB3he6z4
	 JHRlIgbWM1H08AI3XpOsKrrnLBm7EV8x1nvF6SZ61EVh53N/ftYP3s9BbPc4Ht4kxj
	 5Bzc5dCtPcNFLIlhiCw7A6+SS/h+ivRDIIAXhbwMWyobSaI4RQtMMwGiPP0SIJnqc9
	 1o3MaBYLxTHEH4E77PTsbpzxZ022lJkuSjy0Yl0ciajvIL7RpwKAsrTpuF/CWTaDYV
	 8jKGgZ4L4lNrg==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan+linaro@kernel.org>)
	id 1qzxS7-00085p-1j;
	Mon, 06 Nov 2023 12:07:31 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/3] Revert "usb: phy: add usb phy notify port status API"
Date: Mon,  6 Nov 2023 12:06:51 +0100
Message-ID: <20231106110654.31090-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_030648_665685_8164746A 
X-CRM114-Status: GOOD (  10.66  )
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

The recently added Realtek PHY drivers depend on the new port status
notification mechanism which was built on the deprecated USB PHY
implementation and devicetree binding.

Specifically, using these PHYs would require describing the very same
PHY using both the generic "phy" property and the deprecated "usb-phy"
property which is clearly wrong.

We should not be building new functionality on top of the legacy USB PHY
implementation even if it is currently stuck in some kind of
transitional limbo.

Revert the new Realtek PHY drivers for now so that the port status
notification interface can be reverted and replaced before we dig
ourselves into an even deeper hole with this PHY mess.

Note that there are no upstream users of these PHYs and the drivers were
only included in 6.6 so there should still be time to undo this.

Preferably these should go in through Greg's tree for 6.7-rc1.

Johan


Johan Hovold (3):
  Revert "phy: realtek: usb: Add driver for the Realtek SoC USB 3.0 PHY"
  Revert "phy: realtek: usb: Add driver for the Realtek SoC USB 2.0 PHY"
  Revert "usb: phy: add usb phy notify port status API"

 drivers/phy/Kconfig                |    1 -
 drivers/phy/Makefile               |    1 -
 drivers/phy/realtek/Kconfig        |   32 -
 drivers/phy/realtek/Makefile       |    3 -
 drivers/phy/realtek/phy-rtk-usb2.c | 1325 ----------------------------
 drivers/phy/realtek/phy-rtk-usb3.c |  761 ----------------
 drivers/usb/core/hub.c             |   23 -
 include/linux/usb/phy.h            |   13 -
 8 files changed, 2159 deletions(-)
 delete mode 100644 drivers/phy/realtek/Kconfig
 delete mode 100644 drivers/phy/realtek/Makefile
 delete mode 100644 drivers/phy/realtek/phy-rtk-usb2.c
 delete mode 100644 drivers/phy/realtek/phy-rtk-usb3.c

-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
