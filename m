Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0704E73151
	for <linux-phy@archiver.kernel.org>; Mon,  2 Feb 2026 09:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WKaE95uwk6mqN1W17zVF+JbV72mSdsAtyrcB+y+yO90=; b=FbLt2bQWtI5i08
	un+HYsljbtn0mf0iR86PYstcTrj1Xa9YvZXCGdzAbDlMQtU+SoNRJpK0nNj+EW1YR9V47BUTTJBXS
	0C/ezUnRlqh1b/I9Q8gleFeM5oRxqo6YObPgFxP3S8JbZlEHyuoDH+bkfP/VmH4Uu5TfUPMVWRxHO
	L5VEjsAN1TJUhQa8olnTfXgL2RmQ6SPJA3VXg5s+Pb5y4wUMbPIsXzKgLjvHebQbUK3c9D63BcT6t
	2tmtkjhJYQaXRw3awQhPmJ1ZhHsz+lkWzHO9PbOc1fIbOD3X0lprhbSB8o4uSOGrhcJk/A/8j7sdR
	pxc38iw+KhYuN8K9BsBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqg5-00000004kcE-2af8;
	Mon, 02 Feb 2026 09:57:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqg3-00000004kc4-3vvK
	for linux-phy@lists.infradead.org;
	Mon, 02 Feb 2026 09:57:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 610EB60008;
	Mon,  2 Feb 2026 09:57:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3498AC116C6;
	Mon,  2 Feb 2026 09:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770026223;
	bh=iaqpfmFhxPBy/t38w5Ak5dyqH6QmlIhruLJShQ1bUhg=;
	h=From:To:Cc:Subject:Date:From;
	b=qTcBQFDKkLOtg9pqwexcQvqDxLatkpVjuHUSMqLFpubSoFFDCUIpis+YllIl/NSxi
	 +qEVdqFeplGLfx+tiuO0/vKV/YAVLM+G5mzMBhgGWqYzd9dsN94+eYy6oZzUAenhBI
	 1KCDNzZ5p9WOzFCVqSHBW3ZbDGQDD3FMf2CxklczX0gSqlXH67CtkCND7O/OKmMHTP
	 coSVNS8stizqIkAAM8UzQue+17h5unGmp9zq0olYVHouYnmgkRTbz+18BsswYm0KKJ
	 p0BLm/pVgf12qCTeiDKc3S3oSvpeOxUspIer4UInPWJENvBsnN1sViguI41Qqq9l2T
	 W2fmxT8XgMRYQ==
From: Arnd Bergmann <arnd@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Joy Chakraborty <joychakr@google.com>,
	Naveen Kumar <mnkumar@google.com>,
	Roy Luo <royluo@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Alex Elder <elder@riscstar.com>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Sven Peter <sven@kernel.org>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: GOOGLE_USB: add TYPEC dependency
Date: Mon,  2 Feb 2026 10:56:52 +0100
Message-Id: <20260202095655.1289973-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

With CONFIG_TYPEC=m, this driver cannot be built-in:

arm-linux-gnueabi/bin/arm-linux-gnueabi-ld: drivers/phy/phy-google-usb.o: in function `google_usb_phy_remove':
phy-google-usb.c:(.text+0x24): undefined reference to `typec_switch_unregister'

Add CONFIG_TYPEC as a hard dependency here to force a clean build.
In theory, compile-testing with CONFIG_TYPEC=n would also work, but
that seems pointless.

Fixes: cbce66669c82 ("phy: Add Google Tensor SoC USB PHY driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 142e7b0ef2ef..02467dfd4fb0 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -50,6 +50,7 @@ config GENERIC_PHY_MIPI_DPHY
 config PHY_GOOGLE_USB
 	tristate "Google Tensor SoC USB PHY driver"
 	select GENERIC_PHY
+	depends on TYPEC
 	help
 	  Enable support for the USB PHY on Google Tensor SoCs, starting with
 	  the G5 generation (Laguna). This driver provides the PHY interfaces
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
