Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8C2610AB814
	for <linux-phy@archiver.kernel.org>; Thu, 26 Mar 2026 19:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w49Ip2skAlpcykG03P3ZkCS81MONAcwwu2wNTqCN4t0=; b=Ncep1lcI5qbjJH
	VbvhX/rU8cuNwG5PxvrJr06q+dFTYutsO7iJu2kxRA7j8tJLK+xwcizT7PQyPd2Cc0NPfY9tD3U5+
	LzM8DWGQ8MgGiUyeHWlV3ztlKdDRt4fWoeoYd5iJDpkrxhGzvSh6a+xkIdJnXlXYOm+wkIVtLPM16
	j0jf6fEzDS/ieYIHJMJbyTC/h8BEQgj5QJIGVhsKGEgmudBosDbmWBxebuZ/XMR2SREyYQ/OtHGE1
	4PqIKtFw+qgaVAy8kKWC1CHo8Kxd3nnmj500jd8iOhUfhXKTz3rOZ4YcBrley0QGuTukfIs9HVOU/
	OYFclFwDgTuXCLGJG22w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qU7-000000067V8-2Nvq;
	Thu, 26 Mar 2026 19:35:15 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qU4-000000067Tv-3Xhk
	for linux-phy@lists.infradead.org;
	Thu, 26 Mar 2026 19:35:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 358D926471;
	Thu, 26 Mar 2026 20:35:11 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PYjQ0TBXeGoz; Thu, 26 Mar 2026 20:35:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774553710; bh=QaMxN5JIjzz6HwV6IhF0gYp+uTretPZBpdnTbCTSpv0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=h+IjJEeojumeSY440gmDf8576U5m7dfOj4J5AtGSBqxovKI9Lgtq82A87W89vB2Eg
	 q6DHyqb/JeEC1Dm3+N053gD7jUpFNSxhJ1jap9/JmKiAYZJxF8aWo+ZkYkQyHqVzEy
	 lBbD9CNgEXCBJcDFfTKixaCxzl9Q4jMW/nTA+kAHJ/K4Bj9P3/3l3Q9pL0FqFsMOEX
	 EmHQDfua9nlnngNQJs+umjjpTexnmELq2DMPooXnJkodsh7gkMIybrLFUhGubV2Oab
	 NHey9SvkDdu9smqVWkwG3Py2JGqdoS0c3og+kcv/w8/OHF3P7lY8x9ZrZ7oXLKDKXR
	 7DkiPLRx9mC6Q==
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
Subject: [PATCH 5/6] phy: realtek: usb2: add support for RTL9607C USB2 PHY
Date: Fri, 27 Mar 2026 00:34:18 +0500
Message-ID: <20260326193419.48419-6-adilov@disroot.org>
In-Reply-To: <20260326193419.48419-1-adilov@disroot.org>
References: <20260326193419.48419-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_123513_170176_E2DD2E8B 
X-CRM114-Status: GOOD (  12.40  )
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

Add support for the usb2 phy of RTL9607C series based SoCs.
Add the macros and phy config struct for rtl9607.

RTL9607C requires to clear a "force host disconnect" bit in the
specific register (which is at an offset from reg_wrap_vstatus)
before proceeding with phy parameter writes.

Add the bool variable to the driver data struct and hide this whole
procedure under the if statement that checks this new variable.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 57 ++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 070cba1e0e0a..bf22d12681dc 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -26,6 +26,12 @@
 #define PHY_VCTRL_SHIFT 8
 #define PHY_REG_DATA_MASK 0xff
 
+#define PHY_9607_VSTS_BUSY BIT(17)
+#define PHY_9607_NEW_REG_REQ BIT(13)
+
+#define PHY_9607_FORCE_DISCONNECT_REG 0x10
+#define PHY_9607_FORCE_DISCONNECT_BIT BIT(5)
+
 #define GET_LOW_NIBBLE(addr) ((addr) & 0x0f)
 #define GET_HIGH_NIBBLE(addr) (((addr) & 0xf0) >> 4)
 
@@ -109,6 +115,7 @@ struct phy_cfg {
 
 	u32 (*read)(void __iomem *reg);
 	void (*write)(u32 val, void __iomem *reg);
+	bool force_host_disconnect;
 };
 
 struct phy_parameter {
@@ -614,6 +621,16 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
 		goto do_toggle;
 	}
 
+	if (phy_cfg->force_host_disconnect) {
+		/* disable force-host-disconnect */
+		u32 temp = readl(phy_reg->reg_wrap_vstatus + PHY_9607_FORCE_DISCONNECT_REG);
+
+		temp &= ~PHY_9607_FORCE_DISCONNECT_BIT;
+		writel(temp, phy_reg->reg_wrap_vstatus + PHY_9607_FORCE_DISCONNECT_REG);
+
+		mdelay(10);
+	}
+
 	/* Set page 0 */
 	phy_data_page = phy_cfg->page0;
 	rtk_phy_set_page(phy_reg, 0);
@@ -1141,6 +1158,7 @@ static const struct phy_cfg rtd1295_phy_cfg = {
 	.new_reg_req = PHY_NEW_REG_REQ,
 	.read = phy_read,
 	.write = phy_write,
+	.force_host_disconnect = false,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg = {
@@ -1170,6 +1188,7 @@ static const struct phy_cfg rtd1395_phy_cfg = {
 	.new_reg_req = PHY_NEW_REG_REQ,
 	.read = phy_read,
 	.write = phy_write,
+	.force_host_disconnect = false,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg_2port = {
@@ -1199,6 +1218,7 @@ static const struct phy_cfg rtd1395_phy_cfg_2port = {
 	.new_reg_req = PHY_NEW_REG_REQ,
 	.read = phy_read,
 	.write = phy_write,
+	.force_host_disconnect = false,
 };
 
 static const struct phy_cfg rtd1619_phy_cfg = {
@@ -1226,6 +1246,7 @@ static const struct phy_cfg rtd1619_phy_cfg = {
 	.new_reg_req = PHY_NEW_REG_REQ,
 	.read = phy_read,
 	.write = phy_write,
+	.force_host_disconnect = false,
 };
 
 static const struct phy_cfg rtd1319_phy_cfg = {
@@ -1257,6 +1278,7 @@ static const struct phy_cfg rtd1319_phy_cfg = {
 	.new_reg_req = PHY_NEW_REG_REQ,
 	.read = phy_read,
 	.write = phy_write,
+	.force_host_disconnect = false,
 };
 
 static const struct phy_cfg rtd1312c_phy_cfg = {
@@ -1287,6 +1309,7 @@ static const struct phy_cfg rtd1312c_phy_cfg = {
 	.new_reg_req = PHY_NEW_REG_REQ,
 	.read = phy_read,
 	.write = phy_write,
+	.force_host_disconnect = false,
 };
 
 static const struct phy_cfg rtd1619b_phy_cfg = {
@@ -1317,6 +1340,7 @@ static const struct phy_cfg rtd1619b_phy_cfg = {
 	.new_reg_req = PHY_NEW_REG_REQ,
 	.read = phy_read,
 	.write = phy_write,
+	.force_host_disconnect = false,
 };
 
 static const struct phy_cfg rtd1319d_phy_cfg = {
@@ -1347,6 +1371,7 @@ static const struct phy_cfg rtd1319d_phy_cfg = {
 	.new_reg_req = PHY_NEW_REG_REQ,
 	.read = phy_read,
 	.write = phy_write,
+	.force_host_disconnect = false,
 };
 
 static const struct phy_cfg rtd1315e_phy_cfg = {
@@ -1378,6 +1403,37 @@ static const struct phy_cfg rtd1315e_phy_cfg = {
 	.new_reg_req = PHY_NEW_REG_REQ,
 	.read = phy_read,
 	.write = phy_write,
+	.force_host_disconnect = false,
+};
+
+static const struct phy_cfg rtl9607_phy_cfg = {
+	.page0_size = MAX_USB_PHY_PAGE0_DATA_SIZE,
+	.page0 = { [0] = {0xe0, 0x95},
+		   [4] = {0xe4, 0x6a},
+		  [12] = {0xf3, 0x31}, },
+	.page1_size = MAX_USB_PHY_PAGE1_DATA_SIZE,
+	.page1 = { [0] = {0xe0, 0x26}, },
+	.page2_size = MAX_USB_PHY_PAGE2_DATA_SIZE,
+	.page2 = { [7] = {0xe7, 0x33}, },
+	.num_phy = 1,
+	.check_efuse = false,
+	.check_efuse_version = CHECK_EFUSE_V2,
+	.efuse_dc_driving_rate = EFUS_USB_DC_CAL_RATE,
+	.dc_driving_mask = 0x1f,
+	.efuse_dc_disconnect_rate = EFUS_USB_DC_DIS_RATE,
+	.dc_disconnect_mask = 0xf,
+	.usb_dc_disconnect_at_page0 = true,
+	.do_toggle = true,
+	.do_toggle_driving = false,
+	.driving_updated_for_dev_dis = 0x8,
+	.use_default_parameter = false,
+	.is_double_sensitivity_mode = true,
+	.vstatus_offset = 0xc,
+	.vstatus_busy = PHY_9607_VSTS_BUSY,
+	.new_reg_req = PHY_9607_NEW_REG_REQ,
+	.read = phy_read_le,
+	.write = phy_write_le,
+	.force_host_disconnect = true,
 };
 
 static const struct of_device_id usbphy_rtk_dt_match[] = {
@@ -1390,6 +1446,7 @@ static const struct of_device_id usbphy_rtk_dt_match[] = {
 	{ .compatible = "realtek,rtd1395-usb2phy-2port", .data = &rtd1395_phy_cfg_2port },
 	{ .compatible = "realtek,rtd1619-usb2phy", .data = &rtd1619_phy_cfg },
 	{ .compatible = "realtek,rtd1619b-usb2phy", .data = &rtd1619b_phy_cfg },
+	{ .compatible = "realtek,rtl9607-usb2phy", .data = &rtl9607_phy_cfg },
 	{},
 };
 MODULE_DEVICE_TABLE(of, usbphy_rtk_dt_match);
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
