Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47046CD5BA4
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 17:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QqJ03wp3optgSndZyC9TgUNp992fwkW+mHyecM3qII=; b=HBoomaKF51BDkr
	4awEAFBTjnV24Vvb6/uqStMFJGHO4zCODVw7WC5M+L27L9praRMQV0XjykTZSWkjXBbt/1lw84Dw8
	Ef1rkzoAjyCYHrie0UrNU+t8tMYhF79AwxrzCxlXiO7AvRQRFv/+Xlg+3I3ut9MXefU/Tx6S5pBz2
	8mYsJsUMzVMyi4TfpkD3OmZOTl460xiud8Q2wrq6O76zcPMZAoDo5LfD6RHxjFhbcOb8PAUnsntGy
	WgLQgdlmU0/8iyqvzhOnA90Qf3kNXomE2lpGyGgP4UX4sH+tRVXDQmti0VJiAsoJNs79jIPUXWmhg
	BYXX4MDBnGnd/80MriZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlBT-00000005Nds-0CRa;
	Wed, 20 May 2026 17:58:19 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlBP-00000005NbR-0HZA
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 17:58:18 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 50036277B1;
	Wed, 20 May 2026 19:58:05 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4BUuOXuJMrPc; Wed, 20 May 2026 19:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1779299884; bh=I4SVOFAquh5eiYlUMlgdeL/TMUgvDKa+l2LFRekB3lE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=fqoNS3IVjSH9frZ/hbmiTZwHjDnBIkCW5YAS8cy9EGQc7JURmGDnPVYFRXw2WX6yH
	 aaTSs2I1Nm1IGGNXeJ2ks9cpSqNpK+IA4LMKo5Xt9OR8BK7+toztJKPm53TQoOlWGi
	 Zq627NXmj1WhscB3iuEiKDFeviy7Oxsv4O6GC4qFlGfSXn3mNy1BSAWsHJjYct92G2
	 t15nTOKT/VK5StVn/10JMRwdHXNL0PcBmDNTBoqjrEYxGSb5b/kb2SBySi1asW8lZq
	 4NQe5PyzVO11WVKb7+sTljiVSdfGyCr1sc1iVMSUEiTJAHJRnqVwZ44XwQnm+z5ai6
	 yuFeYjotM646A==
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
Subject: [PATCH v6 1/6] phy: realtek: usb2: introduce vstatus/new_reg_req variables to driver data
Date: Wed, 20 May 2026 22:57:23 +0500
Message-ID: <20260520175728.720877-2-adilov@disroot.org>
In-Reply-To: <20260520175728.720877-1-adilov@disroot.org>
References: <20260520175728.720877-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_105815_386655_B045D4AD 
X-CRM114-Status: GOOD (  12.68  )
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

In RTL9607C SoC, the vstatus register is located at a certain offset from
the base and so introduce the vstatus_offset to handle it.

Busy bit of the vstatus and new_reg_req bit are also different and so
introduce these variables to the driver data as well.

Add these variables to the pre-existing phy cfg structs for RTD SoCs and
assign them the default values.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 68 +++++++++++++++++++++++-------
 1 file changed, 53 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 248550ef98ca..bd9ee895b9f9 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -64,6 +64,9 @@ struct phy_reg {
 	void __iomem *reg_wrap_vstatus;
 	void __iomem *reg_gusb2phyacc0;
 	int vstatus_index;
+	int vstatus_offset;
+	u32 vstatus_busy;
+	u32 new_reg_req;
 };
 
 struct phy_data {
@@ -96,6 +99,9 @@ struct phy_cfg {
 	bool do_toggle_driving;
 	bool use_default_parameter;
 	bool is_double_sensitivity_mode;
+	int vstatus_offset;
+	u32 vstatus_busy;
+	u32 new_reg_req;
 };
 
 struct phy_parameter {
@@ -162,21 +168,21 @@ static char rtk_phy_read(struct phy_reg *phy_reg, char addr)
 	addr -= OFFEST_PHY_READ;
 
 	/* polling until VBusy == 0 */
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return (char)ret;
 
-	/* VCtrl = low nibble of addr, and set PHY_NEW_REG_REQ */
-	val = PHY_NEW_REG_REQ | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
+	/* VCtrl = low nibble of addr, and set phy_reg->new_reg_req */
+	val = phy_reg->new_reg_req | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return (char)ret;
 
-	/* VCtrl = high nibble of addr, and set PHY_NEW_REG_REQ */
-	val = PHY_NEW_REG_REQ | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
+	/* VCtrl = high nibble of addr, and set phy_reg->new_reg_req */
+	val = phy_reg->new_reg_req | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return (char)ret;
 
@@ -194,25 +200,26 @@ static int rtk_phy_write(struct phy_reg *phy_reg, char addr, char data)
 	int ret = 0;
 
 	/* write data to VStatusOut2 (data output to phy) */
-	writel((u32)data << shift_bits, reg_wrap_vstatus);
+	writel((u32)data << shift_bits,
+	       reg_wrap_vstatus + phy_reg->vstatus_offset);
 
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return ret;
 
-	/* VCtrl = low nibble of addr, set PHY_NEW_REG_REQ */
-	val = PHY_NEW_REG_REQ | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
+	/* VCtrl = low nibble of addr, set phy_reg->new_reg_req */
+	val = phy_reg->new_reg_req | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 
 	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return ret;
 
-	/* VCtrl = high nibble of addr, set PHY_NEW_REG_REQ */
-	val = PHY_NEW_REG_REQ | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
+	/* VCtrl = high nibble of addr, set phy_reg->new_reg_req */
+	val = phy_reg->new_reg_req | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 
 	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, PHY_VSTS_BUSY, 0);
+	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return ret;
 
@@ -957,6 +964,7 @@ static int get_phy_data_by_efuse(struct rtk_phy *rtk_phy,
 
 static int parse_phy_data(struct rtk_phy *rtk_phy)
 {
+	struct phy_cfg *phy_cfg = rtk_phy->phy_cfg;
 	struct device *dev = rtk_phy->dev;
 	struct device_node *np = dev->of_node;
 	struct phy_parameter *phy_parameter;
@@ -974,6 +982,9 @@ static int parse_phy_data(struct rtk_phy *rtk_phy)
 		phy_parameter->phy_reg.reg_wrap_vstatus = of_iomap(np, 0);
 		phy_parameter->phy_reg.reg_gusb2phyacc0 = of_iomap(np, 1) + index;
 		phy_parameter->phy_reg.vstatus_index = index;
+		phy_parameter->phy_reg.vstatus_offset = phy_cfg->vstatus_offset;
+		phy_parameter->phy_reg.vstatus_busy = phy_cfg->vstatus_busy;
+		phy_parameter->phy_reg.new_reg_req = phy_cfg->new_reg_req;
 
 		if (of_property_read_bool(np, "realtek,inverse-hstx-sync-clock"))
 			phy_parameter->inverse_hstx_sync_clock = true;
@@ -1085,6 +1096,9 @@ static const struct phy_cfg rtd1295_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = false,
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg = {
@@ -1109,6 +1123,9 @@ static const struct phy_cfg rtd1395_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = false,
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg_2port = {
@@ -1133,6 +1150,9 @@ static const struct phy_cfg rtd1395_phy_cfg_2port = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = false,
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
 };
 
 static const struct phy_cfg rtd1619_phy_cfg = {
@@ -1155,6 +1175,9 @@ static const struct phy_cfg rtd1619_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = false,
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
 };
 
 static const struct phy_cfg rtd1319_phy_cfg = {
@@ -1181,6 +1204,9 @@ static const struct phy_cfg rtd1319_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
 };
 
 static const struct phy_cfg rtd1312c_phy_cfg = {
@@ -1206,6 +1232,9 @@ static const struct phy_cfg rtd1312c_phy_cfg = {
 	.driving_updated_for_dev_dis = 0xf,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
 };
 
 static const struct phy_cfg rtd1619b_phy_cfg = {
@@ -1231,6 +1260,9 @@ static const struct phy_cfg rtd1619b_phy_cfg = {
 	.driving_updated_for_dev_dis = 0x8,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
 };
 
 static const struct phy_cfg rtd1319d_phy_cfg = {
@@ -1256,6 +1288,9 @@ static const struct phy_cfg rtd1319d_phy_cfg = {
 	.driving_updated_for_dev_dis = 0x8,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
 };
 
 static const struct phy_cfg rtd1315e_phy_cfg = {
@@ -1282,6 +1317,9 @@ static const struct phy_cfg rtd1315e_phy_cfg = {
 	.driving_updated_for_dev_dis = 0x8,
 	.use_default_parameter = false,
 	.is_double_sensitivity_mode = true,
+	.vstatus_offset = 0,
+	.vstatus_busy = PHY_VSTS_BUSY,
+	.new_reg_req = PHY_NEW_REG_REQ,
 };
 
 static const struct of_device_id usbphy_rtk_dt_match[] = {
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
