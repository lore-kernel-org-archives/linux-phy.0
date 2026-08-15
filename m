Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AF24C5CFC1
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 09:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayoxb4PjddMzMHqUt+FYWGkiUnTMuqR0ZKlmKISpvVo=; b=gnqELG6pmUQcGG
	WOABtJwZCcoF3WhHKidQ70DG2GG487S91kPpQij/NVwx0DkbNkxsag4nPDBjNpItosybtwkaEOT07
	LRJC9PbFxHV3GI21h8jJL97EZVyRu9mh3Gh8Hzowf4pYxd4dXuM8b+Myua0gWU9ULO+VQ26Rt0wA2
	0PvqBAl0lVrqBCdRNIkKqe7E6FPr6bHQAp8a5+wVf4+cXNCwo8aoqtYu54iKknKS2yKBPGVOBRDXg
	GmmdsZY/EC/Bq27btv7myjBdKabWegIY5qHm8pMcuOmNyEK9Ph8wEUsCfDlU55SwVnAAjRny1jYM5
	6FNLyxoVQwRyFq4e3Ojw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvATh-00000003hMk-480q;
	Sat, 15 Aug 2026 09:14:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvATg-00000003hMO-2Yyi
	for linux-phy@bombadil.infradead.org;
	Sat, 15 Aug 2026 09:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3dPSEbg1Ast67qVKaRLrHXVeIHD74toW3MusnJJguLM=; b=dKUvyB3aMTVNu6m5y2d8ewfkvZ
	rKwIa2jArxT32TNpvv8lhuvGnfHv00IFZnkDx6ZdOvwthGCsL1Tf2oE3El7OjuDs+ShWOM4z3DHBf
	uHSP1uzdpAU3frPP3vShV1Cdw3sKlPjde7dC1lVpWHgOuk716mFLoBdxA3g9inxNlb1hW4754CsI8
	GhEmWZ2x9VwTWRKVwVSnUyzN0eUC8yQDa2iD/4fxGKveLOXKZBtiNrODaex5PhyIcBHhugP0G4Qpm
	YYWUimqapdywKpLkjcBj5p7GLlBriag62wNlH2vjH6WqgKd5mg3dZPFGpi4T5fL7yU+LoC/pNFupA
	qsyj5ouw==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wvATd-0000000HNWy-1Avn
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 09:14:55 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id B361588362;
	Sat, 15 Aug 2026 11:14:44 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MecjSrzQRqm6; Sat, 15 Aug 2026 11:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1786785283; bh=rpnTVB2lvy7vaRGEwYc4n2Ueim6D21MwthwfXOQ60pc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Hfzo6tyFEiG9qHwaPL704zRZjdFDIzzvw1IZ+eJ3XUEjr1onl/zTZt8HuX3Rs32GU
	 QlYiYou/THgNmckhzjG/7ku0XXEd7m1TFLm/S4jTVOxZjOU3fnTnXU1KcRJpZWye82
	 dSiKn8xsRzPj6JN/WRPswfhyXDQ16Y6oQRYyrZRz3swYv66azW/v/nQJiyCzyUq7Qf
	 AX7HSPczSv2JEnTgXOdKFIKG5tgbESu7ZCinr0ls/U2VPiCyAgfyJqL0UrAJ9ZfMsc
	 7T7AbT86+HTDh6W71gTsq5AuBSeFs5r8tfQTwW9nfa0T/u6eJlYkI8f2hzY4U54is0
	 +CYJy/0fF5mjA==
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
Subject: [PATCH v7 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Sat, 15 Aug 2026 14:13:38 +0500
Message-ID: <20260815091340.26910-5-adilov@disroot.org>
In-Reply-To: <20260815091340.26910-1-adilov@disroot.org>
References: <20260815091340.26910-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_101453_674926_7BECF50A 
X-CRM114-Status: GOOD (  13.37  )
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

Make use of the function devm_reset_control_get_optional_exclusive()
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
index 5e483c853f02..2ddad7be7353 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -17,6 +17,7 @@
 #include <linux/sys_soc.h>
 #include <linux/mfd/syscon.h>
 #include <linux/phy/phy.h>
+#include <linux/reset.h>
 #include <linux/usb.h>
 
 /* GUSB2PHYACCn register */
@@ -128,6 +129,7 @@ struct rtk_phy {
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
 
@@ -1055,6 +1066,11 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
 	rtk_phy->num_phy = phy_cfg->num_phy;
 
+	rtk_phy->phy_rst = devm_reset_control_get_optional_exclusive(dev, NULL);
+	if (IS_ERR(rtk_phy->phy_rst))
+		return dev_err_probe(dev, PTR_ERR(rtk_phy->phy_rst),
+				     "usb2 phy reset is not working\n");
+
 	ret = parse_phy_data(rtk_phy);
 	if (ret)
 		goto err;
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
