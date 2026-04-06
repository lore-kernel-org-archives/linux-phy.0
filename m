Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCB48F46C66
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 18:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/6e3RwrzKmCbs+9mnqybFeoSc5E7r3kaKwLEzSJ2Z0=; b=3HyW8BzFj1kiAt
	0F+Ao7KtbCkdOtnjQYLwWco5MxQ2vHh89TQmrQ+7CJiKVorIybr3TmGDCPjXIbiNoLDb2HdKjbIZj
	O8YdNxM6i1UZkS3BekMdbViWa2cfB4oMH7eByg55zDWhrLANgoycJtfkcsbAfRe17O8DmKMWrHs4e
	PMPn/aQg/kkkal9iLSdtZxgBu2UY7F1LSEq5pCAIZZqSUO0AFr7ijvrBtQgrB7kDkHgwZW55Oj9nV
	4KyUHQjqWxfZim3zwM/laoDBSQDm/CVlQHazNf0YxN3P4dMx3cBD+GQFZOR6ao/tacMsIGMJv8XX0
	T01TFIl1CNmNUyrxUB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9oRz-00000005O0k-2A5a;
	Mon, 06 Apr 2026 18:13:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9oRy-00000005O0P-1Osg
	for linux-phy@bombadil.infradead.org;
	Mon, 06 Apr 2026 18:13:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=S41LTvxBMmJSrefUlbODF+GokRFsDtkNJ276aY5jPnk=; b=WrheYeS9eVPdO/OY8rtj59TobF
	gy0bYNJXt2KgAwtDD58XbpsozvP0p6mZrE90hp3aRRja6wPugvu1RLTw5wzqhBA5rtOixCBM9psbV
	2EyJj19SCAay7RwiHXNMpOAyQ1VeYCkYcnInz8GeGt74jq9TkRWRLnPQGJ+KgUNTWTRvPBSmrnDnd
	WP78A7Mx0APb3OpsPVlTk2yraLch8QT2fzjT1FvRfE9aqfV2KGyli0YA0ufQzLbs8yXVyfl1MRZDI
	vkfsVDotT3TC1vGAXCiJBkBf5CXYvOjIP1taWxm3U7BkMKVb/1GuIq6CWk3wiIb895IBcpG8IktR9
	FRaM5Qtg==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9oRv-000000074mo-2dvm
	for linux-phy@lists.infradead.org;
	Mon, 06 Apr 2026 18:13:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 279FD271E5;
	Mon,  6 Apr 2026 20:13:15 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with UTF8SMTP
 id ZVndUVLmG6Zn; Mon,  6 Apr 2026 20:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1775499194; bh=gIZeKQ/pICKwWE/VdqKZ3JQLiyrx2OmNRFtpK70fdEc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=GxdQSGAhezM8aD2UjxZlu1rMnBzMqmzBVYZlcCl02luP87wStfgnZ232G5P79prji
	 QUpTfPllcmdofDcU8Kh3kmjn3AvzQN3odqe9Jh17QgGPiqflfSIaOo9eObxxbmnw9y
	 rUTXnMmneRoYQO31LwfcawNHLvktM2taUnsgbj9dBczpZD2gn9k7U5+ldYetokZ2gr
	 z6zNjBeSw2CJQyLm7qj1vAnLH38wNEd1Xa2sryXJ7Qnp6BcVh6nfnPWtsOumqCbVbA
	 JwIS3dbN47kx12ZJZ6yv5FmeE/H3N78kPeAmgW6AAg+jyLFLPpl+VSsioGPrrN1jsS
	 xC3Mk/9oRDypQ==
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
Subject: [PATCH v4 2/6] phy: realtek: usb2: introduce read and write functions to driver data
Date: Mon,  6 Apr 2026 23:12:24 +0500
Message-ID: <20260406181228.25892-3-adilov@disroot.org>
In-Reply-To: <20260406181228.25892-1-adilov@disroot.org>
References: <20260406181228.25892-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_191323_808973_522AF7EF 
X-CRM114-Status: GOOD (  13.73  )
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

The reason is readl/writel functions, despite the supposed little endian
byte swap, still operate with native endian. The __raw_{read,write} are
also native endianness. And so wrapping them around le32 makes a proper
byte swap from big endian to little endian.

To handle this situation, introduce read and write functions to the driver
data and create a default variation of read and write function for the
current RTD SoCs.

Adjust all instances of utmi_wait_register function to now include the read
function as one of its arguments.

Assign the existing phy configuration for RTD SoCs to the default read
and write functions.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 63 ++++++++++++++++++++++++------
 1 file changed, 50 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index f5d2f0c3376a..0facd5f02e2d 100644
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
@@ -128,6 +134,16 @@ struct rtk_phy {
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
@@ -144,12 +160,13 @@ static inline u8 array_index_to_page_addr(int index)
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
@@ -168,25 +185,25 @@ static char rtk_phy_read(struct phy_reg *phy_reg, char addr)
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
@@ -202,23 +219,23 @@ static int rtk_phy_write(struct phy_reg *phy_reg, char addr, char data)
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
 
@@ -984,6 +1001,8 @@ static int parse_phy_data(struct rtk_phy *rtk_phy)
 		phy_parameter->phy_reg.vstatus_offset = phy_cfg->vstatus_offset;
 		phy_parameter->phy_reg.vstatus_busy = phy_cfg->vstatus_busy;
 		phy_parameter->phy_reg.new_reg_req = phy_cfg->new_reg_req;
+		phy_parameter->phy_reg.read = phy_cfg->read;
+		phy_parameter->phy_reg.write = phy_cfg->write;
 
 		if (of_property_read_bool(np, "realtek,inverse-hstx-sync-clock"))
 			phy_parameter->inverse_hstx_sync_clock = true;
@@ -1098,6 +1117,8 @@ static const struct phy_cfg rtd1295_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg = {
@@ -1125,6 +1146,8 @@ static const struct phy_cfg rtd1395_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1395_phy_cfg_2port = {
@@ -1152,6 +1175,8 @@ static const struct phy_cfg rtd1395_phy_cfg_2port = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1619_phy_cfg = {
@@ -1177,6 +1202,8 @@ static const struct phy_cfg rtd1619_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1319_phy_cfg = {
@@ -1206,6 +1233,8 @@ static const struct phy_cfg rtd1319_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1312c_phy_cfg = {
@@ -1234,6 +1263,8 @@ static const struct phy_cfg rtd1312c_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1619b_phy_cfg = {
@@ -1262,6 +1293,8 @@ static const struct phy_cfg rtd1619b_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1319d_phy_cfg = {
@@ -1290,6 +1323,8 @@ static const struct phy_cfg rtd1319d_phy_cfg = {
 	.vstatus_offset = 0,
 	.vstatus_busy = PHY_VSTS_BUSY,
 	.new_reg_req = PHY_NEW_REG_REQ,
+	.read = rtk_usb2phy_read,
+	.write = rtk_usb2phy_write,
 };
 
 static const struct phy_cfg rtd1315e_phy_cfg = {
@@ -1319,6 +1354,8 @@ static const struct phy_cfg rtd1315e_phy_cfg = {
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
