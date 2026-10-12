Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C3BDCA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 17:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ueeuHw8Y5HgxGYElGvzwV3A7k/zqIuYQ0HA8gyKkva0=; b=XQ2VoqKbuPWXZx
	befpoipUgmsGTNBGRWxKXxDcXfmvy72AYj4ex4L8Bq4Zyde/VmzmuiN9D/07HK8S82vjvObJTHsS3
	eoOmPNCi9+oS58a5h55NRR2rryvnrap2VNvnCamsIhGhFSBuxoQTdpRV67X7+RXGNvcpPk02erZLM
	so3vDq//3rYxK7x7w6uzWh82R6iuShxo/L8fBXIykT3/brIiLESF4doFsvK3FiG26CeARp1n7ObhT
	ZtCaite6pzxzaQcKRmvvVxX18EHuRI0pkPSQbZFz2bzJh+GQx2E6v4TO9qXM82juHb5r+ZWTT8fB6
	+BplRjjpVA25QK7MgosA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGJyv-0000000B85K-1b6D;
	Mon, 12 Oct 2026 17:38:38 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGJyl-0000000B81h-1qhm
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 17:38:36 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 1380582C3F;
	Mon, 12 Oct 2026 19:38:23 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tc68SP68jDjs; Mon, 12 Oct 2026 19:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1791826701; bh=fVQMgeTLx8KcVX1xPfKLjt+HrX6nxP5c9F51tQGpjbc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=BNVHWLmuNlcUeFGhD56/0d32iNtoVXuGuPXXwoTZFppRZDqt6Q+uID4fK6e2qZmZQ
	 kbhsNf0+bSTViTsmCY4mADK60LKQqvI6iGVwF/aDxwCyx87tKvUd/mLtnlXQfil+OJ
	 cUhRxOstb8zBMJ8mRLi259EnqaF3VGB2UmmgA4sszcy1nvPtoIxemwrz1zy2TMvQmb
	 +QzD1jH4ndRX7WIjhdYZ0Tqk3yDjscAiDGrYq2yjx8uP8XQIElBLtFvNh5u+dQnHFp
	 wkD3Ev68Uw4yJXvxYXTOxE7ofEE3FJ95surAfVdmsSroGmogPG2JvODEYHj0QFkRt/
	 TQObd7ND4JCCQ==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: [PATCH v8 1/6] phy: realtek: usb2: introduce phy_reg_desc struct to the driver
Date: Mon, 12 Oct 2026 22:37:34 +0500
Message-ID: <20261012173739.36377-2-adilov@disroot.org>
In-Reply-To: <20261012173739.36377-1-adilov@disroot.org>
References: <20261012173739.36377-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_103834_824659_0DF88182 
X-CRM114-Status: GOOD (  13.52  )
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

In RTL9607C SoC, there are a few differences in usb2 phy compared
to existing RTD SoCs, like vstatus register is at certain offset
from the base, busy bit and new_reg_req bit are at different bits
of the register.

To avoid duplicating these variables across phy cfg and driver data,
create a per-SoC struct that would hold them and with that add the
default rtd_phy_reg_desc to which all RTD SoCs driver data will
point towards.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 59 ++++++++++++++++++++++--------
 1 file changed, 44 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 248550ef98ca..e8d0f0119ec0 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -60,10 +60,17 @@
 #define DEFAULT_DC_DISCONNECTION_VALUE (0x6)
 #define HS_CLK_SELECT BIT(6)
 
+struct phy_reg_desc {
+	int vstatus_offset;
+	u32 vstatus_busy;
+	u32 new_reg_req;
+};
+
 struct phy_reg {
 	void __iomem *reg_wrap_vstatus;
 	void __iomem *reg_gusb2phyacc0;
 	int vstatus_index;
+	const struct phy_reg_desc *desc;
 };
 
 struct phy_data {
@@ -96,6 +103,7 @@ struct phy_cfg {
 	bool do_toggle_driving;
 	bool use_default_parameter;
 	bool is_double_sensitivity_mode;
+	const struct phy_reg_desc *reg_desc;
 };
 
 struct phy_parameter {
@@ -156,27 +164,28 @@ static inline int utmi_wait_register(void __iomem *reg, u32 mask, u32 result)
 static char rtk_phy_read(struct phy_reg *phy_reg, char addr)
 {
 	void __iomem *reg_gusb2phyacc0 = phy_reg->reg_gusb2phyacc0;
+	const struct phy_reg_desc *reg_desc = phy_reg->desc;
 	unsigned int val;
 	int ret = 0;
 
 	addr -= OFFEST_PHY_READ;
 
 	/* polling until VBusy == 0 */
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, reg_desc->vstatus_busy, 0);
 	if (ret)
 		return (char)ret;
 
-	/* VCtrl = low nibble of addr, and set PHY_NEW_REG_REQ */
-	val = PHY_NEW_REG_REQ | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
+	/* VCtrl = low nibble of addr, and set reg_desc->new_reg_req */
+	val = reg_desc->new_reg_req | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, reg_desc->vstatus_busy, 0);
 	if (ret)
 		return (char)ret;
 
-	/* VCtrl = high nibble of addr, and set PHY_NEW_REG_REQ */
-	val = PHY_NEW_REG_REQ | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
+	/* VCtrl = high nibble of addr, and set reg_desc->new_reg_req */
+	val = reg_desc->new_reg_req | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, reg_desc->vstatus_busy, 0);
 	if (ret)
 		return (char)ret;
 
@@ -190,29 +199,31 @@ static int rtk_phy_write(struct phy_reg *phy_reg, char addr, char data)
 	unsigned int val;
 	void __iomem *reg_wrap_vstatus = phy_reg->reg_wrap_vstatus;
 	void __iomem *reg_gusb2phyacc0 = phy_reg->reg_gusb2phyacc0;
+	const struct phy_reg_desc *reg_desc = phy_reg->desc;
 	int shift_bits = phy_reg->vstatus_index * 8;
 	int ret = 0;
 
 	/* write data to VStatusOut2 (data output to phy) */
-	writel((u32)data << shift_bits, reg_wrap_vstatus);
+	writel((u32)data << shift_bits,
+	       reg_wrap_vstatus + reg_desc->vstatus_offset);
 
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, reg_desc->vstatus_busy, 0);
 	if (ret)
 		return ret;
 
-	/* VCtrl = low nibble of addr, set PHY_NEW_REG_REQ */
-	val = PHY_NEW_REG_REQ | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
+	/* VCtrl = low nibble of addr, set reg_desc->new_reg_req */
+	val = reg_desc->new_reg_req | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 
 	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, reg_desc->vstatus_busy, 0);
 	if (ret)
 		return ret;
 
-	/* VCtrl = high nibble of addr, set PHY_NEW_REG_REQ */
-	val = PHY_NEW_REG_REQ | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
+	/* VCtrl = high nibble of addr, set reg_desc->new_reg_req */
+	val = reg_desc->new_reg_req | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 
 	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, reg_desc->vstatus_busy, 0);
 	if (ret)
 		return ret;
 
@@ -957,6 +968,7 @@ static int get_phy_data_by_efuse(struct rtk_phy *rtk_phy,
 
 static int parse_phy_data(struct rtk_phy *rtk_phy)
 {
+	struct phy_cfg *phy_cfg = rtk_phy->phy_cfg;
 	struct device *dev = rtk_phy->dev;
 	struct device_node *np = dev->of_node;
 	struct phy_parameter *phy_parameter;
@@ -974,6 +986,8 @@ static int parse_phy_data(struct rtk_phy *rtk_phy)
 		phy_parameter->phy_reg.reg_wrap_vstatus = of_iomap(np, 0);
 		phy_parameter->phy_reg.reg_gusb2phyacc0 = of_iomap(np, 1) + index;
 		phy_parameter->phy_reg.vstatus_index = index;
+		phy_parameter->phy_reg.desc = phy_cfg->reg_desc;
+
 
 		if (of_property_read_bool(np, "realtek,inverse-hstx-sync-clock"))
 			phy_parameter->inverse_hstx_sync_clock = true;
@@ -1060,6 +1074,12 @@ static void rtk_usb2phy_remove(struct platform_device *pdev)
 	remove_debug_files(rtk_phy);
 }
 
+static const struct phy_reg_desc rtd_phy_reg_desc = {
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
+};
+
 static const struct phy_cfg rtd1295_phy_cfg = {
 	.page0_size = MAX_USB_PHY_PAGE0_DATA_SIZE,
 	.page0 = { [0] = {0xe0, 0x90},
@@ -1085,6 +1105,7 @@ static const struct phy_cfg rtd1295_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = false,
+	.reg_desc = &rtd_phy_reg_desc,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg = {
@@ -1109,6 +1130,7 @@ static const struct phy_cfg rtd1395_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = false,
+	.reg_desc = &rtd_phy_reg_desc,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg_2port = {
@@ -1133,6 +1155,7 @@ static const struct phy_cfg rtd1395_phy_cfg_2port = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = false,
+	.reg_desc = &rtd_phy_reg_desc,
 };
 
 static const struct phy_cfg rtd1619_phy_cfg = {
@@ -1155,6 +1178,7 @@ static const struct phy_cfg rtd1619_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = false,
+	.reg_desc = &rtd_phy_reg_desc,
 };
 
 static const struct phy_cfg rtd1319_phy_cfg = {
@@ -1181,6 +1205,7 @@ static const struct phy_cfg rtd1319_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.reg_desc = &rtd_phy_reg_desc,
 };
 
 static const struct phy_cfg rtd1312c_phy_cfg = {
@@ -1206,6 +1231,7 @@ static const struct phy_cfg rtd1312c_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.reg_desc = &rtd_phy_reg_desc,
 };
 
 static const struct phy_cfg rtd1619b_phy_cfg = {
@@ -1231,6 +1257,7 @@ static const struct phy_cfg rtd1619b_phy_cfg = {
 	.driving_updated_for_dev_dis = 0x8,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.reg_desc = &rtd_phy_reg_desc,
 };
 
 static const struct phy_cfg rtd1319d_phy_cfg = {
@@ -1256,6 +1283,7 @@ static const struct phy_cfg rtd1319d_phy_cfg = {
 	.driving_updated_for_dev_dis = 0x8,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.reg_desc = &rtd_phy_reg_desc,
 };
 
 static const struct phy_cfg rtd1315e_phy_cfg = {
@@ -1282,6 +1310,7 @@ static const struct phy_cfg rtd1315e_phy_cfg = {
 	.driving_updated_for_dev_dis = 0x8,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.reg_desc = &rtd_phy_reg_desc,
 };
 
 static const struct of_device_id usbphy_rtk_dt_match[] = {
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
