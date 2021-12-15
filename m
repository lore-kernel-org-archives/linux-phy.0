Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F41E1C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 15:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v71VUxl7Ex4Wta8myxlW1AAk68Xa9vmXBb7z77GV2kU=; b=ABZ/UVyzgfp2Ab
	aCpfcOOe//PIUrTlwRtSa7M5+i0COCO/CqTKQkB5zZaqe459XMA66hg5ttWGIy1Vwfr7Sl4mUQ7+0
	UED55FvJOhEn8xT28DBWwumQCpuGrT4D7wYGCQBBUBlRaR2Kk2/TPnpFyyUhtON2FJQ9Y4CSlNIlw
	PYw3qcvzWbzbsPVK8pVpVJUhX46GhDKLgcnmcLuLcZt7bPGiFqercXWsktPD9hshpLdJ316kABRFX
	A0AvqOc94UvJiRVvHHKfTaGgWzwk4Bpf46WRfSGw8Wh0C1fwDFiUNb0hbH9A3h0rf7GOdIic6DD4C
	1c3mrGCDpV35TQ4vH05Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxWFW-001Nga-7R; Wed, 15 Dec 2021 15:31:22 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxWFI-001Ndz-Eb; Wed, 15 Dec 2021 15:31:10 +0000
Received: from localhost.localdomain ([194.191.235.54]) by mrelay.perfora.net
 (mreueus003 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0MLePl-1mxF7p3NJb-000tVI; Wed, 15 Dec 2021 16:30:51 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: linux-phy@lists.infradead.org
Cc: linux-imx@nxp.com, linux-next@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Mark Brown <broonie@kernel.org>,
 linux-pci@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Zhu <hongxing.zhu@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] phy: freescale: pcie: fix building for x86_64 as a module
Date: Wed, 15 Dec 2021 16:30:36 +0100
Message-Id: <20211215153037.688885-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:/cHhHSs4N+2DNJ5wTLoubYD0rUh2l5oYb3aX9HXa0UVqu9pMzMH
 x28Ezyml0wRYEPJv55bAaYjT+GdEyE0EyrLF5WXgnYvHdA46RWoxI5rFwvao8GE/Z0Ko8Wn
 zHYpeRMGj4Oez1fAUsPK6WdyDVU06FLWr/izt4+nhuLOghlYZmREkXYt9P3HEp+IMegRn+/
 7cpvofDSXIf8K/oJxQ23Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:OZWSgY8S+WI=:hdKlAEiPEBcCD/FbFUgUfv
 WHSQdAQxf1HZq6cDWzP/uHcSmxJ2Q7jJW90rljgt8A0tbFQOVaFhbUwphzr0le912PWwyfelA
 fexm3n+kkkAAGdzrkjEEQ+6rfmb1LYRyHw8HY+kIOKoAcmTDTTr86LH/7bu3WWVzXU51A+vtX
 CUdtXDfSVk+G4/N90/lUALdxI4Y6xh8MiUSxPKPP9CxDk3jqP3raJ2cfPkCGajmbwV1LTtifb
 M3Yx2mS+/MCbsDuRIjB/3Qr0PEjgZQI/XK82rt17BU3HLkzG9R9hppUZtOdSsfAKhh0sBhVgT
 QZz3dJ36PZubKgdZxMO1FHZ9CU4A395peIqcIAfqJCK/PDCkOjjtIQBJGG1J+MNu3DtXbR8d2
 bxnRdIs9i3xP/yJ5SLIN54/E+l24XNNtAiBBC3iy2vf61+PXHPnwC1tUAhGn8I3/ly0nsNjWK
 7aYM5si0nL+dPnbEh9k26R5/GPhknTQ+7rfFsO0ui+V7lS7SkYRAPTrYCqtgoiy2B9ovIXIzm
 I83uN+ItNsYfJho5lPT4ekax+ryVJJn1I1aA8awYI0i9UEZaK/7ouNTg4DCu87jWF0dZ6/exh
 gQ6pXmIqwpkg9JSFfd0psRTeaPglxHDMUDsNO1zd+PcUXlj54LLR3G8Ss/dzxphJfTsI/qm1o
 G0tWpmI1n7craJaCNen4ZwHcKBiarvsbmUjBj8DtCVZtZfAsWgNjMW/CATXDY8SHaP+s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_073108_624320_05D41D50 
X-CRM114-Status: UNSURE (   8.61  )
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

x86_64 allmodconfig build failed like this:

/tmp/next/build/drivers/phy/freescale/phy-fsl-imx8m-pcie.c: In function
 'imx8_pcie_phy_init':
/tmp/next/build/drivers/phy/freescale/phy-fsl-imx8m-pcie.c:41:37:
 error: implicit declaration of function 'FIELD_PREP'
 [-Werror=implicit-function-declaration]
   41 | #define IMX8MM_GPR_PCIE_REF_CLK_EXT FIELD_PREP(IMX8MM_GPR_PCIE_
REF_CLK_SEL, 0x2)
      |                                     ^~~~~~~~~~
/tmp/next/build/drivers/phy/freescale/phy-fsl-imx8m-pcie.c:85:7: note:
 in expansion of macro 'IMX8MM_GPR_PCIE_REF_CLK_EXT'
   85 |       IMX8MM_GPR_PCIE_REF_CLK_EXT :
      |       ^~~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors

Fix this by explicitly including linux/bitfield.h.

While at it sort includes alphabethically and add a new line before the
dt-bindings one as usually done.

Fixes: 1aa97b002258a190d77
("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
Reported-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index f6502463d49a..f1eb03ba25d6 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -3,10 +3,11 @@
  * Copyright 2021 NXP
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
-#include <linux/delay.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
 #include <linux/module.h>
@@ -14,6 +15,7 @@
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
