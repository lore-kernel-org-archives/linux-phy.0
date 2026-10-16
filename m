Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30F08CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 18:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qQoqlykjDQ6nOXm9BC1snKzEHA0PnkX3+hf1L8OSeo=; b=p0o2O6Da6EHGL4
	fWst7rDT8BL2K4zdPFqULGG1j+SxNAT8UBciPb4fcYney6Kj924fS0rVOmUYvFiS2P67P3aI+dYSH
	RgJXN/vfrd4Ulx3gg498rOkIU8L5uh5a61vhBODhEAwvdhEbBZIWDRKJ8iMAVUyW6Mf8155SMbwpD
	isje3ciI4eYoBe3Khhksdo65YJfWU9ISpaklPKA0MN3UY/1TFXDdMZXbWhWVJGUc4yl6GU1ahutw3
	HSG7vsOvFy42RIICP1IZPvI+b7SkMRE+ERmFtyy4wZOhfwZJByPL5aDc4KHsRtbcWBbKDuvYuENsm
	dTwLEEZ4qgw2Xa9jKLQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmHi-00000003cRO-2Cnv;
	Fri, 16 Oct 2026 18:04:02 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmHf-00000003cPi-0v0h
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 18:04:01 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3BD2482BC2;
	Fri, 16 Oct 2026 20:03:56 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zebGHIGMPEul; Fri, 16 Oct 2026 20:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1792173835; bh=3ZOHzaAO1udfR/xUh2fFSdmSRwLIyVAffoAJJxMCpYI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Z5POFlg/GK+fE5qMj4ucrz1xnURxzfgeJVp260+S6QfPGmXxFgiSWUDcutpv72w/K
	 bJJWcgq+RGVdSNBj4C3T+P9UTFVkw72hIcjFXn3Ak0400pJdbGf0h6JwuVs14Qzyyq
	 kEg/BoR+oXXfCvTn18WdpDb0ByYOuJLW88HrUHUbQLn3YeOcbyTw/9npXZjfv7ByNq
	 4zLCBuAQtRx+ycXRzaZ4qFdjwUbe5NZUjb2hstyMaM+gcSGO/wSHPrW7iwMzPKH2aY
	 fAPMdsfFQcR9oLNTGn1l/RDjEuSi6M2qMm/HfqjKdytpIXy1zjAhoubj3JW/S5hiad
	 0aJE+agPiROZg==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: [PATCH v9 2/6] phy: realtek: usb2: introduce read and write functions to phy_reg_desc struct
Date: Fri, 16 Oct 2026 23:03:10 +0500
Message-ID: <20261016180314.31760-3-adilov@disroot.org>
In-Reply-To: <20261016180314.31760-1-adilov@disroot.org>
References: <20261016180314.31760-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_110359_690952_13A86413 
X-CRM114-Status: GOOD (  10.68  )
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

RTL9607C is a big endian SoC with little endian USB host controller but
vstatus register is from big endian memory region and thus existing
writel doesn't work. It needs either __raw_writel or iowrite32be
instead.

To handle this situation, introduce read and write function to the
phy_reg_desc struct and add a default variation that is going to be
ponted by the existing rtd_phy_reg_desc.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index e8d0f0119ec0..5e483c853f02 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -64,6 +64,8 @@ struct phy_reg_desc {
 	int vstatus_offset;
 	u32 vstatus_busy;
 	u32 new_reg_req;
+	u32 (*read)(void __iomem *reg);
+	void (*write)(u32 val, void __iomem *reg);
 };
 
 struct phy_reg {
@@ -130,6 +132,16 @@ struct rtk_phy {
 	struct dentry *debug_dir;
 };
 
+static u32 rtk_usb2phy_read(void __iomem *reg)
+{
+	return readl(reg);
+}
+
+static void rtk_usb2phy_write(u32 val, void __iomem *reg)
+{
+	writel(val, reg);
+}
+
 /* mapping 0xE0 to 0 ... 0xE7 to 7, 0xF0 to 8 ,,, 0xF7 to 15 */
 static inline int page_addr_to_array_index(u8 addr)
 {
@@ -204,8 +216,8 @@ static int rtk_phy_write(struct phy_reg *phy_reg, char addr, char data)
 	int ret = 0;
 
 	/* write data to VStatusOut2 (data output to phy) */
-	writel((u32)data << shift_bits,
-	       reg_wrap_vstatus + reg_desc->vstatus_offset);
+	reg_desc->write((u32)data << shift_bits,
+		       reg_wrap_vstatus + reg_desc->vstatus_offset);
 
 	ret = utmi_wait_register(reg_gusb2phyacc0, reg_desc->vstatus_busy, 0);
 	if (ret)
@@ -988,7 +1000,6 @@ static int parse_phy_data(struct rtk_phy *rtk_phy)
 		phy_parameter->phy_reg.vstatus_index = index;
 		phy_parameter->phy_reg.desc = phy_cfg->reg_desc;
 
-
 		if (of_property_read_bool(np, "realtek,inverse-hstx-sync-clock"))
 			phy_parameter->inverse_hstx_sync_clock = true;
 		else
@@ -1078,6 +1089,8 @@ static const struct phy_reg_desc rtd_phy_reg_desc = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1295_phy_cfg = {
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
