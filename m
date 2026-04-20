Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 411FAF5A8B1
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 19:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sudclmz9hMt5Th2V5znhaSTlP+3bW8tg35RKmgRze/w=; b=xsOLr+9fX1XlRR
	BZxG/RAVmHYXf9cKXpOqOxFHNqncZTBZ0rmVOdy3hNJrU+uxynnv1qESJ3NjXMR1WimX25wo9Av1c
	q/UGwNsJqK/NiM1JE9mBLG4HhKQ4lBfNWBtExdCpiMozxnGkwSostefHmrY4rXfKvc4sCTV1sNnzU
	GV8A6OLSSUEsKYh74MpmkcbzLDGHk4+KJMrv1Wk73MKu79gwNHNAvsv6HuFSo/nhwODgdOzCF1UST
	vk5Sqz57EglSMJ75arWzE9d/hzNJzNQDWeGZ58zDuq9hWoDzcvjcM5WkSHuksPkk/44XUq0eJFald
	xo8ygaGJqh2L9qgmGWJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEuAc-00000007aHq-49tB;
	Mon, 20 Apr 2026 19:20:35 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEuAZ-00000007aHF-3YOb
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 19:20:33 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 162AE27011;
	Mon, 20 Apr 2026 21:20:18 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VetugQQBQRKD; Mon, 20 Apr 2026 21:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1776712817; bh=I4bAzl1GDu2wOCTjoJs7Sz/xGm5YwQN59J/ybBhb/EQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=VQxKa7WrEBkGgFrKO/Y78/ce4S7uJivyZVkvZSGNCt5aSScP2rouohgZ+bwRvvr9N
	 2kvNEUe8OHKyS9Co2k9U4HOD5X9g+CjRKWmMIIuQ+yaGP5A3UiopKkmn1VdreuzBHT
	 Ntb9eJaDLZgKaCcYZAvFvgq7QhMSpYBevuP3SXhBLhq4Kty5Hm7rIA79iZykJZx47t
	 83vaoClW+Sm3T5Z++ehaZxv55Mjg+PjxKIqhR2rz2UPQ+yTUmgKhdP0Iv/0vTzZXjY
	 TrO7nMihHWmRwqKiqsJ2GXHGTn4JM18lfLSR1yctJ4V3HEo+5VlsihLfKi92uCoAFv
	 7Z194FC/CLHhw==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: [PATCH v5 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Tue, 21 Apr 2026 00:19:39 +0500
Message-ID: <20260420191941.81834-5-adilov@disroot.org>
In-Reply-To: <20260420191941.81834-1-adilov@disroot.org>
References: <20260420191941.81834-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_122032_020780_2663754D 
X-CRM114-Status: GOOD (  13.63  )
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

In RTL9607C, there is so called "IP Enable Controller" which resemble
reset controller with reset lines and is used for various things like
USB, PCIE, GMAC and such.

Introduce the reset_control struct to this driver to handle deasserting
usb2 phy reset line.

Make use of the function devm_reset_control_array_get_optional_exclusive()
function to get the reset controller and since existing RTD SoCs don't
specify the resets we can have a cleaner code.

Since the vendor usb driver developed by Realtek doesn't assert the reset
line (or in their case clear the register bit), we can reasonably assume
reset_control_assert is not needed here.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 19297a42a841..aaa07a69224a 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -17,6 +17,7 @@
 #include <linux/sys_soc.h>
 #include <linux/mfd/syscon.h>
 #include <linux/phy/phy.h>
+#include <linux/reset.h>
 #include <linux/usb.h>
 
 /* GUSB2PHYACCn register */
@@ -130,6 +131,7 @@ struct rtk_phy {
 	struct phy_cfg *phy_cfg;
 	int num_phy;
 	struct phy_parameter *phy_parameter;
+	struct reset_control *phy_rst;
 
 	struct dentry *debug_dir;
 };
@@ -676,6 +678,15 @@ static int rtk_phy_init(struct phy *phy)
 	if (!rtk_phy)
 		return -EINVAL;
 
+	if (rtk_phy->phy_rst) {
+		ret = reset_control_deassert(rtk_phy->phy_rst);
+
+		if (ret)
+			return ret;
+
+		usleep_range(5000, 6000);
+	}
+
 	for (i = 0; i < rtk_phy->num_phy; i++)
 		ret = do_rtk_phy_init(rtk_phy, i);
 
@@ -1059,6 +1070,11 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
 	rtk_phy->num_phy = phy_cfg->num_phy;
 
+	rtk_phy->phy_rst = devm_reset_control_array_get_optional_exclusive(dev);
+	if (IS_ERR(rtk_phy->phy_rst))
+		return dev_err_probe(dev, PTR_ERR(rtk_phy->phy_rst),
+				     "usb2 phy resets are not working\n");
+
 	ret = parse_phy_data(rtk_phy);
 	if (ret)
 		goto err;
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
