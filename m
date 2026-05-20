Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56BDECD5BAB
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 17:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Pwuxn1Tpp0KpHbqT/XO5ggMBFc7R9bM8WLngB1jO9I=; b=w8ycn0m+gY2RCl
	9qqFADtTvnaRo/2CKmenmWsyiPrI3NPPlpztA0eSvKyYaWnV5F4mb/f74sC+xQhspLqBTjDquCiti
	N+v3FTf3fLsQOe36BhaaPnEzolN4NzdQ05tXkMuHVTOSeAiJZ9Q0z+CHLCtm3SNmwhqSiaQaJFw4U
	Mc6AwgQqSVQXnQVc42kZc14/8BDL5ojg/5j0fs3wx0LUOm/CzqNetTRXBYt/9beKexrZKvxygRlUj
	i7sgsqGXtr3g/6Tn1JoEE7FXAgemY0w1tgUdSifHnGNDBrgfd+8L8xYRX+irt5ODN2G7xGQaUCp6z
	/K5NoKtyG/WR2s/YKysQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlBT-00000005Ne3-0O4V;
	Wed, 20 May 2026 17:58:19 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlBQ-00000005Ncj-3ydA
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 17:58:18 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3F118277CB;
	Wed, 20 May 2026 19:58:15 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WCZhKAa0FRRZ; Wed, 20 May 2026 19:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1779299894; bh=qB9qgIkXgUH0uyIWiZuxeaWVLvji8cTXtCmHcSQ8HKA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=XC7Gbm+FrV5zZNJM6eohW827Pza2oA0YyeeP8YKlowmjqwpC7zSbKnb5f/JvtaciC
	 8NyPhMGeaxowrsCl7xKFzWIR+InpbWqRopufvy8o9Eh23xk2vWXioNDMf/SR0kLn3U
	 2bnAJYl6lXP/TioWv+V+H5wZ8dwIHkVFO5BEcvaj+dMgMCEUen3AUMDJukBbg6lw97
	 QGptug0pqyF1IblTAhJuh7ghyu3KiV5g99cQ9N7Y2JUs6zHuUo/iXvpyiaNRj6Tw5F
	 Oo5lLV88ZlwBobfD1fnkY7HQY4YA0kSgeR1/VjbsoaNdATcV2njF9WxnpUh2mwG2Qc
	 iEHCsYC2eHLKg==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: [PATCH v6 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Wed, 20 May 2026 22:57:26 +0500
Message-ID: <20260520175728.720877-5-adilov@disroot.org>
In-Reply-To: <20260520175728.720877-1-adilov@disroot.org>
References: <20260520175728.720877-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_105817_124323_F80F6D8E 
X-CRM114-Status: GOOD (  13.92  )
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
index a9e29d2f7e6f..16c5fc3191de 100644
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
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
