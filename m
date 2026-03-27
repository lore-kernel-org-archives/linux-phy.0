Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED5310F284B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 16:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6Ooifq02iZY4frN9BDChRSB8+Ee3/Ou+bm623Epr0w=; b=xef4DCFeW3ZGsn
	hxBeNivAHPt5CobKUwSmPxXo57x58kGR8fu4BuLBcuOyKU9tuEMs5PH0ySOhuo/BAyUSWz0rZRMmf
	R+9h1AEcZQ0EW6A+raxghU7RXYw6wHUXwW9Gb054kOW9tl0rhnNEPC62tMaEFPCkcZ2vKRRv0SBh8
	8T4z890tTFFu7R4627GNqCanMwaVQXYhdWN6Riui6Eo45YJy+O8KBy8k+vJq/uPan/pjuLVmEjEaX
	V08fOK5MaHXHxMKBNRLlnl/otGzd3XoE4lr0iNV3f7Zhq7PwGLaF2WmeEvPggWy6xMWdrsZlq3VDm
	Dvl8xaptKEfYdUZzlE7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w69ig-00000007jzp-02QG;
	Fri, 27 Mar 2026 16:07:34 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w69id-00000007jxn-1eUO
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 16:07:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8E8CD2722C;
	Fri, 27 Mar 2026 17:07:29 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iwLKmA2FuTWB; Fri, 27 Mar 2026 17:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774627646; bh=A2n8k6aIgmIJ4ucRQWwBcogmliaMS8yEWnuf1xcyKuE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=i4MqKOBL5+t1RAJCKLYADj3a5vBluzc9Ww5cQ/qksWGl+hoWSSqCOkJcejMhheSDr
	 PSlnogzxmLDPawJywtiSQj085H9ZLF6SayH4bfo2p4zxeAK6rQlv9gn+M2fyK9D796
	 pQLrOsyLXfsJJAJOOOsa40gTaNzAJLJ2TihTUxE7cNCn9LU2VTn+3og+mABKlyRMM5
	 iiZFyRDPs3NkbOYoFd8XpWAlKYlPYndzYuOSiqVKel8Yylv3cInVWW3C2J6ZgQsG6K
	 4jggexIc02WFLQSRF18Y0aQnKIrguP6NyegSvpmWagqirrhQw4jwp8WYZfcbhzf2Dv
	 p1EIWVnvuWc0A==
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
Subject: [PATCH v2 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Fri, 27 Mar 2026 21:06:36 +0500
Message-ID: <20260327160638.15134-5-adilov@disroot.org>
In-Reply-To: <20260327160638.15134-1-adilov@disroot.org>
References: <20260327160638.15134-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_090731_565778_8CA51CEF 
X-CRM114-Status: GOOD (  12.57  )
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

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index e65b8525b88b..070cba1e0e0a 100644
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
@@ -602,6 +604,10 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
 	phy_parameter = &((struct phy_parameter *)rtk_phy->phy_parameter)[index];
 	phy_reg = &phy_parameter->phy_reg;
 
+	reset_control_deassert(rtk_phy->phy_rst);
+
+	mdelay(5);
+
 	if (phy_cfg->use_default_parameter) {
 		dev_dbg(rtk_phy->dev, "%s phy#%d use default parameter\n",
 			__func__, index);
@@ -1069,6 +1075,12 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
 	rtk_phy->num_phy = phy_cfg->num_phy;
 
+	rtk_phy->phy_rst = devm_reset_control_array_get_optional_exclusive(dev);
+	if (IS_ERR(rtk_phy->phy_rst)) {
+		dev_err(dev, "usb2 phy resets are not working\n");
+		return PTR_ERR(rtk_phy->phy_rst);
+	}
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
