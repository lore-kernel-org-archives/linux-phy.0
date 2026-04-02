Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32D2FD6AAE2
	for <linux-phy@archiver.kernel.org>; Thu,  2 Apr 2026 15:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acn6RsiyhO/tcHVw0GKx3zOLinNU+egtto3yn9tGi14=; b=QxKdRZhIoI2DU/
	xIYMa5wqRrWrsB+E3brW7kJ3wbZPh1ko0sc0e1KFnhw4ZHf2r4HfA4h43CqfcsH2oNmAaxZA8KkpS
	kqRjNYPoIISG5szT+Rq9q2kw1R3bkbdYLN1zyMtC/N0rGiQ2oQ7vutFw+nlnF8JiVzuK5eySw2Td6
	tKrwwS/186DfKDusb+Na1ZlUbxocBTcByopkqXYe8FP/qa2ZpmavQRAoIVMbEzG8rUJN87Q0mG3ij
	OkJbmt8t3szxxnI1GHRjpKYLa6WOzY4wiM3N/GrzQqXKvnWyxx/X6RpOGXgB6hnN+/OJS6Jrm4ecH
	ZSzHZv7dCbEbooDN/B9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8KE7-00000000Sfu-40UW;
	Thu, 02 Apr 2026 15:44:59 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8KE5-00000000Sdy-3uBp
	for linux-phy@lists.infradead.org;
	Thu, 02 Apr 2026 15:44:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 0B88426561;
	Thu,  2 Apr 2026 17:44:56 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5uK-BBoK71eu; Thu,  2 Apr 2026 17:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1775144695; bh=DfzP7HoXHrUJXf1Pl7aFkwOB+aCYHpLF8dMkVUpUPrE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=PItvXz5hQJXMbJsaRjFNAeIK+N4VInygPYaG5UVO/yNeOS2ZliW6wnMfh1EefWuyW
	 rGXysiygXX6qkBmGTD8e79PRqR+3M9W+OOIfGROPLZKD4zPN5VvTsKbPgY6WPNznT+
	 GS6Gi254dpid2QvVuHTS52EaWuSQCEJnOUt49WT1gHKMrhIRmMhbf7aOZbbHGV85IU
	 gMLTRF18Gv0HvEXcRW4Dn8E4aBIDH6bK9vuyRyN9lrYwkmPqz5ziqhuv0WO7I26TD0
	 vRdOf06ggB+npZblCz8oNAg/EuaIM440bJQa7C8RaGrMBny8db80jTp3PCtdCfG5MT
	 ZrHi2cg+tv+hw==
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
Subject: [PATCH v3 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Thu,  2 Apr 2026 20:44:12 +0500
Message-ID: <20260402154414.196012-5-adilov@disroot.org>
In-Reply-To: <20260402154414.196012-1-adilov@disroot.org>
References: <20260402154414.196012-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_084458_109126_59298392 
X-CRM114-Status: GOOD (  12.15  )
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
 drivers/phy/realtek/phy-rtk-usb2.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index f6670ac6346d..288c8e9e1384 100644
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
@@ -604,6 +606,15 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
 	phy_parameter = &((struct phy_parameter *)rtk_phy->phy_parameter)[index];
 	phy_reg = &phy_parameter->phy_reg;
 
+	if (rtk_phy->phy_rst) {
+		int ret = reset_control_deassert(rtk_phy->phy_rst);
+
+		if (ret)
+			return ret;
+
+		msleep(5);
+	}
+
 	if (phy_cfg->use_default_parameter) {
 		dev_dbg(rtk_phy->dev, "%s phy#%d use default parameter\n",
 			__func__, index);
@@ -1071,6 +1082,11 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
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
