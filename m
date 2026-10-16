Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29A12CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 18:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bgjeLPehXDLWps02rY7Kru4ca4xZ6uZsqZZgwAL2K4=; b=1o9HRL3an4pvXm
	bb8i1nM2wXwefbG7815x1eC5hpLZjTW4kC75kVj77sCLebou1IJ98NW8MwfXeIwYD/PbgZfprGikJ
	DAkTDTSZMIJc+c8qBSlJAycSk/URj1fa5dD7d9Anqgpyqb/dU57sXkVZddKPK+rsl5uw7FjzlXRyI
	g+Vgdu51Ozgj4Nv4dKf/fTue5Rt5QfxgzjoaLeXCx30vtGBhFe3NRyBbVP0joCoCxZt6otWH7ov4/
	I3G3d7z4S94h4qjt2CibHbiZaGLBXKx9xGi3c5s4BIoFKmiMpVcOXzIKjxJiS3oyiGZIBkew9be/X
	kVvIZ391K6chCFLnDqXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmHw-00000003cXN-3U3v;
	Fri, 16 Oct 2026 18:04:16 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmHs-00000003cUC-0oQY
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 18:04:15 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 82E7482BF1;
	Fri, 16 Oct 2026 20:04:04 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QzjqcJvGXaMd; Fri, 16 Oct 2026 20:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1792173843; bh=yxRNx5wl1YPr7B1V2d575Su9IThyVQUOF8kXcNAj7CE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=BioUEaxQMiJyyegGhVeERNOt7I5Ppl8GtF7tu2gxL+8c/BkOMUl8Xd932PsSBAfpr
	 GdJun+bgKkneTOhbDHHIeLoWjDvA1WsXkEfyJ6YwOPXMFVakIWadG06kc+2VEpLElS
	 hsV7ndK4uEeVvlFqQdnRft5ZjL3+Xv8PTMYqOZRcRj5IDqV4Kf7qRZIbJEsNaty+du
	 SAdGhxYjbmyJP/CjO968saxtfZFd/iqug6kHUu0OlyBZo+ZLjjW0MlVuOu8PEQTXOi
	 Gjt6OSpGAzUNmC8A+MiErpUSsso0wA5DALznhkkSgOK3+2JsGoJ8zSf31Cj4W2cKmr
	 zHp952JF15n3A==
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
Subject: [PATCH v9 5/6] phy: realtek: usb2: add support for RTL9607C USB2 PHY
Date: Fri, 16 Oct 2026 23:03:13 +0500
Message-ID: <20261016180314.31760-6-adilov@disroot.org>
In-Reply-To: <20261016180314.31760-1-adilov@disroot.org>
References: <20261016180314.31760-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_110412_505140_15F0B920 
X-CRM114-Status: GOOD (  13.56  )
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
before proceeding with phy parameter writes. Since it belongs into
the vstatus register region, it requires the use of added read and
write helper functions.

Add the bool variable to the driver data struct and hide this whole
procedure under the if statement that checks this new variable.

Add the appropriate big endian read and write functions for rtl9607
and assign them to its rtl9607_phy_reg_desc struct.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 66 ++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 2ddad7be7353..64076938c821 100644
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
 
@@ -107,6 +113,7 @@ struct phy_cfg {
 	bool use_default_parameter;
 	bool is_double_sensitivity_mode;
 	const struct phy_reg_desc *reg_desc;
+	bool force_host_disconnect;
 };
 
 struct phy_parameter {
@@ -144,6 +151,16 @@ static void rtk_usb2phy_write(u32 val, void __iomem *reg)
 	writel(val, reg);
 }
 
+static u32 rtk_usb2phy_read_be(void __iomem *reg)
+{
+	return ioread32be(reg);
+}
+
+static void rtk_usb2phy_write_be(u32 val, void __iomem *reg)
+{
+	iowrite32be(val, reg);
+}
+
 /* mapping 0xE0 to 0 ... 0xE7 to 7, 0xF0 to 8 ,,, 0xF7 to 15 */
 static inline int page_addr_to_array_index(u8 addr)
 {
@@ -600,6 +617,23 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
 		goto do_toggle;
 	}
 
+	if (phy_cfg->force_host_disconnect) {
+		const struct phy_reg_desc *reg_desc = phy_reg->desc;
+		void __iomem *vstatus = phy_reg->reg_wrap_vstatus;
+		u32 temp;
+
+		temp = reg_desc->read(vstatus + PHY_9607_FORCE_DISCONNECT_REG);
+
+		/* disable force-host-disconnect */
+		temp &= ~PHY_9607_FORCE_DISCONNECT_BIT;
+
+		reg_desc->write(temp, vstatus + PHY_9607_FORCE_DISCONNECT_REG);
+		temp = reg_desc->read(vstatus + PHY_9607_FORCE_DISCONNECT_REG);
+
+		/* allow IP to startup */
+		usleep_range(10000, 11000);
+	}
+
 	/* Set page 0 */
 	phy_data_page = phy_cfg->page0;
 	rtk_phy_set_page(phy_reg, 0);
@@ -1109,6 +1143,14 @@ static const struct phy_reg_desc rtd_phy_reg_desc = {
 	.write = rtk_usb2phy_write,
 };
 
+static const struct phy_reg_desc rtl9607_phy_reg_desc = {
+	.vstatus_offset = 0xc,
+	.vstatus_busy = PHY_9607_VSTS_BUSY,
+	.new_reg_req = PHY_9607_NEW_REG_REQ,
+	.read = rtk_usb2phy_read_be,
+	.write = rtk_usb2phy_write_be,
+};
+
 static const struct phy_cfg rtd1295_phy_cfg = {
 	.page0_size = MAX_USB_PHY_PAGE0_DATA_SIZE,
 	.page0 = { [0] = {0xe0, 0x90},
@@ -1342,6 +1384,29 @@ static const struct phy_cfg rtd1315e_phy_cfg = {
 	.reg_desc = &rtd_phy_reg_desc,
 };
 
+static const struct phy_cfg rtl9607_phy_cfg = {
+	.page0_size = MAX_USB_PHY_PAGE0_DATA_SIZE,
+	.page0 = { [0] = {0xe0, 0x95},
+		   [4] = {0xe4, 0x6a},
+		  [11] = {0xf3, 0x31}, },
+	.page1_size = MAX_USB_PHY_PAGE1_DATA_SIZE,
+	.page1 = { [0] = {0xe0, 0x26}, },
+	.page2_size = MAX_USB_PHY_PAGE2_DATA_SIZE,
+	.page2 = { [7] = {0xe7, 0x33}, },
+	.num_phy = 1,
+	.check_efuse_version = CHECK_EFUSE_V2,
+	.efuse_dc_driving_rate = EFUS_USB_DC_CAL_RATE,
+	.dc_driving_mask = 0x1f,
+	.efuse_dc_disconnect_rate = EFUS_USB_DC_DIS_RATE,
+	.dc_disconnect_mask = 0xf,
+	.usb_dc_disconnect_at_page0 = true,
+	.do_toggle = true,
+	.driving_updated_for_dev_dis = 0x8,
+	.is_double_sensitivity_mode = true,
+	.reg_desc = &rtl9607_phy_reg_desc,
+	.force_host_disconnect = true,
+};
+
 static const struct of_device_id usbphy_rtk_dt_match[] = {
 	{ .compatible = "realtek,rtd1295-usb2phy", .data = &rtd1295_phy_cfg },
 	{ .compatible = "realtek,rtd1312c-usb2phy", .data = &rtd1312c_phy_cfg },
@@ -1352,6 +1417,7 @@ static const struct of_device_id usbphy_rtk_dt_match[] = {
 	{ .compatible = "realtek,rtd1395-usb2phy-2port", .data = &rtd1395_phy_cfg_2port },
 	{ .compatible = "realtek,rtd1619-usb2phy", .data = &rtd1619_phy_cfg },
 	{ .compatible = "realtek,rtd1619b-usb2phy", .data = &rtd1619b_phy_cfg },
+	{ .compatible = "realtek,rtl9607-usb2phy", .data = &rtl9607_phy_cfg },
 	{},
 };
 MODULE_DEVICE_TABLE(of, usbphy_rtk_dt_match);
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
