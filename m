Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83F19C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jan 2022 09:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rWrqmpqx7cYn1wiNyIV66h89aSCuP2hxayexc6RP+QE=; b=K68E27xhCbupKV
	2fRPmlhqZT32H1mzqH0IzZjxgiehByPCoY3BMkczVn8mabopvVLipZCMLq+Q3d9ccJzgKLp90Ls/L
	dSxCkXmCD52d7sjt/mXw+OJjZauQtcQPtdo/r79oXf2sCKORfSSBHpH/LofGHS1BXzludmx+vpTIW
	gXOaC21a8h32XXpG4zWbf63UYf5QWadY+G+nPfDQDEKqJCjt6ewHVcBBFVSP8YxTHOvmNLSNsQ1Ak
	f/uaFXXlCwvsjg6HuFq4FrlHmE5l9eSW7hDhOoUsqD9KZCHFfH/RvIlPVND0xjzYMGQ6x392wm7CP
	uGqcI6VckPpyrz9lsXHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7w1T-005BQH-Sz; Thu, 13 Jan 2022 09:03:55 +0000
Received: from mout.perfora.net ([74.208.4.196])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7w1R-005BOv-7P; Thu, 13 Jan 2022 09:03:54 +0000
Received: from localhost.localdomain ([81.221.144.115]) by mrelay.perfora.net
 (mreueus003 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0M1m9M-1mEAdZ2zBy-00th5p; Thu, 13 Jan 2022 10:03:36 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: linux-phy@lists.infradead.org
Cc: linux-next@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Tim Harvey <tharvey@gateworks.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 linux-imx@nxp.com, linux-pci@vger.kernel.org,
 Mark Brown <broonie@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Zhu <hongxing.zhu@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2] phy: freescale: pcie: cosmetic clean-up
Date: Thu, 13 Jan 2022 10:03:21 +0100
Message-Id: <20220113090321.119880-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:LMVuApgc6X7l67/Kle4sn+3reMtIFV4BD4OCrBDC7RhTnbXCqpN
 oMXeq9r8qLlVW/gPAVRU6Mysznuj9kG0EoDH3Rp0xtEm+gnC7zrvAqU4uGHwp+zWsGg1REC
 6z8DfT98EQ7kpLzxabfruD8xyQ5UAuVlxPoM1kOgsArUKFtIDVxlwcvYq2+STFnhvC9gilt
 VusWDZxKRPcFMHm9EzuXw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:nGo3enaFOMI=:1EQd4AM0tHvPCz8hk00wKi
 m+xBm6ZubgPv5cObWHd+SFTqJutPuqpz/2/FwpP6s21DqJpAU2T2EEbAXUbYUQbjzg8me/z7z
 qqPJMR/4Nvu+gVBlzDggoLlvLKgtELx7UZJgx0rr9IVW2yh2/cfWenyRXQDPfTQSlIFuyNpI/
 yRXzr7o47oYuaVNIQS/t7hDrZZoMALMRizJu4N0x+l2YK6tCZnFPx1jUnI3TVPTB3H5d2dXFI
 yMjUwPXq85uB2u5rn0s+ZYQyLSRG3pu7wKGmcdr1ipfmhiK96Sfy+MJfUC/cn6Y2VU3iilCem
 vlcckL+/hHJKRxoeiWibrQR+njJXFDjaexD1EBb0Aw+qRqPQxBylspfePJi/GDbMyAPno8qhg
 uybCZlxz7BjwpKxjb2TpbqU4LCbJ/07mRvxq27MmtTWQmGgurgDtT3R6B0ttRHGhKP6eGB9Wg
 NXZ8/a5lxZDmdnUuQ8ZMFYz9S4apaE0fY4L8bVjbExtc8dAxPSlwIuHpbeJq85GR0nLW0b19k
 UUAR4Md/xfrO/0fbAjU6Pwx68yIaAiTsiR8sNLm0JiyfsFT7mDzuaSydXdyyllncxNR+vZMf0
 v21n9e3bIeuy29fA5u9SRE4e/ve9JTPfHVPZb7beJUsq46QYG1t6qV4Y+ffJ2upJKamSis84Q
 FBLkYWGTAMwhz1xB5eM7HKOtxspFTV5Syd0LUVaCRDpZtBR9UfEhvmrKjBu6zn5NDgTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_010353_390461_22B95656 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
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

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Sort includes alphabethically and add a new line before the dt-bindings
one as usually done.

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v2:
- Was 'phy: freescale: pcie: fix building for x86_64 as a module' but as
  Vinod already pushed a fix for that build issue this now only
  addresses the minor cosmetic clean-up as requested by him.

 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index 04b1aafb29f4..f1eb03ba25d6 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -5,9 +5,9 @@
 
 #include <linux/bitfield.h>
 #include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
-#include <linux/delay.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
 #include <linux/module.h>
@@ -15,6 +15,7 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
+
 #include <dt-bindings/phy/phy-imx8-pcie.h>
 
 #define IMX8MM_PCIE_PHY_CMN_REG061	0x184
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
