Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88D4AC7EE25
	for <linux-phy@archiver.kernel.org>; Thu, 18 May 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8tYSF2jOx+Qb2WtexPjXX4TU4WQBv3evUyPmRS6DBU=; b=Z/Qqnwa4eyriRU
	wW5qMVAU5B4GU82ygxfEHNoVw3l/Q0eohtI9yfD8+/em5j7pd277y06jWr2sAQ3MVsgXfoSNWcIJK
	2dvJSYsYSCepySiKlhqj+KPO+7O9x8J4o9WyP6kUGO73OujNwC+Qlpv6+HqVrO76nAxSja5Quuk1p
	dt/7rp0Mm1HBZ0j7fdTxIHOyio6+47gLJWIFY8a+84FxBqorTV4aOIBSUe77ve+HS1K2xvFWslaeH
	4XjJ5BBdPyhqvFZlD9L0vXCjoormYdoJ8yNcZ3Vjyy32Eak2rN08UPvhSgwAJFgPIwX7Q2mvH5FqJ
	cU7sTv6oSQ32UQnGpGSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzg04-00DN4K-0C;
	Thu, 18 May 2023 15:57:08 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzfzz-00DN3E-0L
	for linux-phy@lists.infradead.org;
	Thu, 18 May 2023 15:57:04 +0000
X-IronPort-AV: E=Sophos;i="5.99,285,1677510000"; 
   d="scan'208";a="159865415"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 19 May 2023 00:57:02 +0900
Received: from localhost.localdomain (unknown [10.226.92.79])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 939F0400F7E0;
	Fri, 19 May 2023 00:56:59 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Subject: [PATCH RFC 3/3] phy: renesas: phy-rcar-gen3-usb2: Control VBUSEN selection
Date: Thu, 18 May 2023 16:56:49 +0100
Message-Id: <20230518155649.516346-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230518155649.516346-1-biju.das.jz@bp.renesas.com>
References: <20230518155649.516346-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_085703_251208_2D7DC47B 
X-CRM114-Status: GOOD (  12.02  )
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

As per RZ/G2L HW(Rev.1.30 May2023) manual, VBUSEN can be controlled by
the Port Power bit of the EHCI/OHCI operational register or by the VBOUT
bit of the VBUS Control Register. Control VBUSEN selection such that bit
is set to 0 (Port Power bit of the EHCI/OHCI operational register) for
host operation and set the bit to 1 (VBOUT bit of the VBUS Control
Register) for device operation.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index d4e2ee7e4efb..429b1d44eee7 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -21,6 +21,8 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regulator/consumer.h>
+#include <linux/reset.h>
+#include <linux/reset/rzg2l-usbphy-ctrl.h>
 #include <linux/string.h>
 #include <linux/usb/of.h>
 #include <linux/workqueue.h>
@@ -113,6 +115,7 @@ struct rcar_gen3_chan {
 	struct extcon_dev *extcon;
 	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
 	struct regulator *vbus;
+	struct reset_control *rstc;
 	struct work_struct work;
 	struct mutex lock;	/* protects rphys[...].powered */
 	enum usb_dr_mode dr_mode;
@@ -190,6 +193,7 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 
 	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
 	if (ch->soc_no_adp_ctrl) {
+		rzg2l_usbphy_ctrl_select_vbus_ctrl(ch->rstc, vbus ? 0 : 1);
 		vbus_ctrl_reg = USB2_VBCTRL;
 		vbus_ctrl_val = USB2_VBCTRL_VBOUT;
 	}
@@ -670,6 +674,11 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	if (IS_ERR(channel->base))
 		return PTR_ERR(channel->base);
 
+	channel->rstc = devm_reset_control_get_optional_shared(&pdev->dev,
+							       NULL);
+	if (IS_ERR(channel->rstc))
+		return PTR_ERR(channel->rstc);
+
 	channel->obint_enable_bits = USB2_OBINT_BITS;
 	/* get irq number here and request_irq for OTG in phy_init */
 	channel->irq = platform_get_irq_optional(pdev, 0);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
