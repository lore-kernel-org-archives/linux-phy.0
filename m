Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41FA0D6AAE6
	for <linux-phy@archiver.kernel.org>; Thu,  2 Apr 2026 15:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLYZgjzgFcqY82XOBknYome6vslZOK/CtRO9+Dw69Hk=; b=vEZeF+s7SYzlqP
	Wj+/Ll9ijUGQDy1JehCMJUdd3fI0+fR/ojiAZdKBhuvrOwI/3Nj6gD0XH7TPetetiLmxo7l0YZlX0
	TNsGujE6JaCJFRh01NEk00hX+WBhKKq3vpFJi0XMXzJ7bwv/n4D08JZUy7V4giu2MZE9AFj1l/5eT
	Sn9vlf40W8EYDVaZsbRa5j2Dsn8u3Rfl/qzmBXn7VAYVerQ5wzkE98d8qlr0smFzrii61GPpFNtuB
	MbF6Olz1uQdyS1094prVvIS6ynnuxT0JjFolyJaHT6eBaXiEVVsyAeUW0Fp7ch9JYN17JzoyMpAgN
	VslIjvX6S45lc+ie41KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8KE4-00000000SdT-01QO;
	Thu, 02 Apr 2026 15:44:56 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8KE1-00000000Sbc-3AjI
	for linux-phy@lists.infradead.org;
	Thu, 02 Apr 2026 15:44:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id C96D526939;
	Thu,  2 Apr 2026 17:44:51 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N5yDRO8KuNWw; Thu,  2 Apr 2026 17:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1775144690; bh=7aI7KJeV4nQljLdmYcLTbPABQXse5pFfo+dK4rli7Tw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=K8Ybsyn3EoaODqaBP1u6PISj0yzqezu6ZCLcVPPGm53eYCazhevInKPI73+WVlUri
	 ChWGzMOmep/mRrazrsbgSgD/SQfK9DbgFCoUshy+CbPaUZKI0JhkA4kAtQ0I6MTn1M
	 wHxKiJsEgAZR1sNW/G4nGWclKCajCJd3xCF3deaih4wp5uDtsMrqeaewEUfaMvDQWQ
	 3/SQJFD2KHDfjS8qVDAl2wWc31bYHRGxPvAnulDl/aVnfkWdKcxTn71HKcEZIsH6wx
	 9OT5IeAxIpDUolNB6m4p6NTJZQsV+2ULIWu0zHbWF+N7qE2jZBlXbV42NrYW+LZ741
	 ALEZoyfCIhsJw==
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
Subject: [PATCH v3 2/6] phy: realtek: usb2: introduce read and write functions to driver data
Date: Thu,  2 Apr 2026 20:44:10 +0500
Message-ID: <20260402154414.196012-3-adilov@disroot.org>
In-Reply-To: <20260402154414.196012-1-adilov@disroot.org>
References: <20260402154414.196012-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_084454_076977_92164A5C 
X-CRM114-Status: GOOD (  13.50  )
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

RTL9607C is a big endian SoC but has little endian USB host controller and
thus, reads and writes to the reg_gusb2phyacc0 should go through
le32_to_cpu and cpu_to_le32 functions respectively. This doesn't apply to
vstatus register though.

To handle this situation, introduce read and write functions to the driver
data and create 2 variations of reads and write function with le32 function
in it and without.

Adjust all instances of utmi_wait_register function to now include the read
function as one of its arguments.

Assign the existing phy configuration for RTD SoCs to the default read
and write functions.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 75 ++++++++++++++++++++++++------
 1 file changed, 62 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index f5d2f0c3376a..f6670ac6346d 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -67,6 +67,9 @@ struct phy_reg {
 	int vstatus_offset;
 	int vstatus_busy;
 	int new_reg_req;
+
+	u32 (*read)(void __iomem *reg);
+	void (*write)(u32 val, void __iomem *reg);
 };
 
 struct phy_data {
@@ -102,6 +105,9 @@ struct phy_cfg {
 	int vstatus_offset;
 	int vstatus_busy;
 	int new_reg_req;
+
+	u32 (*read)(void __iomem *reg);
+	void (*write)(u32 val, void __iomem *reg);
 };
 
 struct phy_parameter {
@@ -128,6 +134,28 @@ struct rtk_phy {
 	struct dentry *debug_dir;
 };
 
+static u32 rtk_usb2phy_read(void __iomem *reg)
+{
+	return readl(reg);
+}
+
+static u32 rtk_usb2phy_read_le(void __iomem *reg)
+{
+	return le32_to_cpu(readl(reg));
+}
+
+static void rtk_usb2phy_write(u32 val, void __iomem *reg)
+{
+	writel(val, reg);
+}
+
+static void rtk_usb2phy_write_le(u32 val, void __iomem *reg)
+{
+	u32 tmp = cpu_to_le32(val);
+
+	writel(tmp, reg);
+}
+
 /* mapping 0xE0 to 0 ... 0xE7 to 7, 0xF0 to 8 ,,, 0xF7 to 15 */
 static inline int page_addr_to_array_index(u8 addr)
 {
@@ -144,12 +172,13 @@ static inline u8 array_index_to_page_addr(int index)
 #define PHY_IO_TIMEOUT_USEC		(50000)
 #define PHY_IO_DELAY_US			(100)
 
-static inline int utmi_wait_register(void __iomem *reg, u32 mask, u32 result)
+static inline int utmi_wait_register(u32 (*read)(void __iomem *reg), void __iomem *reg, u32 mask,
+				     u32 result)
 {
 	int ret;
 	unsigned int val;
 
-	ret = read_poll_timeout(readl, val, ((val & mask) == result),
+	ret = read_poll_timeout(read, val, ((val & mask) == result),
 				PHY_IO_DELAY_US, PHY_IO_TIMEOUT_USEC, false, reg);
 	if (ret) {
 		pr_err("%s can't program USB phy\n", __func__);
@@ -168,25 +197,25 @@ static char rtk_phy_read(struct phy_reg *phy_reg, char addr)
 	addr -= OFFEST_PHY_READ;
 
 	/* polling until VBusy == 0 */
-	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
+	ret = utmi_wait_register(phy_reg->read, reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return (char)ret;
 
 	/* VCtrl = low nibble of addr, and set PHY_NEW_REG_REQ */
 	val = phy_reg->new_reg_req | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
-	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
+	phy_reg->write(val, reg_gusb2phyacc0);
+	ret = utmi_wait_register(phy_reg->read, reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return (char)ret;
 
 	/* VCtrl = high nibble of addr, and set PHY_NEW_REG_REQ */
 	val = phy_reg->new_reg_req | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
-	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
+	phy_reg->write(val, reg_gusb2phyacc0);
+	ret = utmi_wait_register(phy_reg->read, reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return (char)ret;
 
-	val = readl(reg_gusb2phyacc0);
+	val = phy_reg->read(reg_gusb2phyacc0);
 
 	return (char)(val & PHY_REG_DATA_MASK);
 }
@@ -202,23 +231,23 @@ static int rtk_phy_write(struct phy_reg *phy_reg, char addr, char data)
 	/* write data to VStatusOut2 (data output to phy) */
 	writel((u32)data << shift_bits, reg_wrap_vstatus + phy_reg->vstatus_offset);
 
-	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
+	ret = utmi_wait_register(phy_reg->read, reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return ret;
 
 	/* VCtrl = low nibble of addr, set PHY_NEW_REG_REQ */
 	val = phy_reg->new_reg_req | (GET_LOW_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 
-	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
+	phy_reg->write(val, reg_gusb2phyacc0);
+	ret = utmi_wait_register(phy_reg->read, reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return ret;
 
 	/* VCtrl = high nibble of addr, set PHY_NEW_REG_REQ */
 	val = phy_reg->new_reg_req | (GET_HIGH_NIBBLE(addr) << PHY_VCTRL_SHIFT);
 
-	writel(val, reg_gusb2phyacc0);
-	ret = utmi_wait_register(reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
+	phy_reg->write(val, reg_gusb2phyacc0);
+	ret = utmi_wait_register(phy_reg->read, reg_gusb2phyacc0, phy_reg->vstatus_busy, 0);
 	if (ret)
 		return ret;
 
@@ -984,6 +1013,8 @@ static int parse_phy_data(struct rtk_phy *rtk_phy)
 		phy_parameter->phy_reg.vstatus_offset = phy_cfg->vstatus_offset;
 		phy_parameter->phy_reg.vstatus_busy = phy_cfg->vstatus_busy;
 		phy_parameter->phy_reg.new_reg_req = phy_cfg->new_reg_req;
+		phy_parameter->phy_reg.read = phy_cfg->read;
+		phy_parameter->phy_reg.write = phy_cfg->write;
 
 		if (of_property_read_bool(np, "realtek,inverse-hstx-sync-clock"))
 			phy_parameter->inverse_hstx_sync_clock = true;
@@ -1098,6 +1129,8 @@ static const struct phy_cfg rtd1295_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg = {
@@ -1125,6 +1158,8 @@ static const struct phy_cfg rtd1395_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg_2port = {
@@ -1152,6 +1187,8 @@ static const struct phy_cfg rtd1395_phy_cfg_2port = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1619_phy_cfg = {
@@ -1177,6 +1214,8 @@ static const struct phy_cfg rtd1619_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1319_phy_cfg = {
@@ -1206,6 +1245,8 @@ static const struct phy_cfg rtd1319_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1312c_phy_cfg = {
@@ -1234,6 +1275,8 @@ static const struct phy_cfg rtd1312c_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1619b_phy_cfg = {
@@ -1262,6 +1305,8 @@ static const struct phy_cfg rtd1619b_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1319d_phy_cfg = {
@@ -1290,6 +1335,8 @@ static const struct phy_cfg rtd1319d_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1315e_phy_cfg = {
@@ -1319,6 +1366,8 @@ static const struct phy_cfg rtd1315e_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct of_device_id usbphy_rtk_dt_match[] = {
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
