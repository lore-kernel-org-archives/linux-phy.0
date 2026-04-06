Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C444AF46C66
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 18:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gioc55p3z/6Q/j/x+VcqMYrEu4dyz1r4h/RMcMaYjc8=; b=Wvu5LhJeLfLaJs
	XYP8qmCVFcKWVukAmIjl1841TS9J5CaBDlSkLWhahUy3kjNLIkTLQ8AwnE08sfQYNLThBrFOviuwb
	pV9LSmH9fy4x5F9chUovqON0jfDyWx/0bDnQ/Mpq4vs5QU92pOw1QhoLpqkTJGDm0qncjU575Sydh
	pQgVmc02KNwQQzBG0842WcvTYkcQ+tnSA3E2Y1FCs3o5hQkqizqXE5WVgKlMcNlSqJ786U3cqr25b
	tmZusr0ksinsEcwd2G48shFpc/OJ0R0OeLZqKjQR2PSyg7GrRlDFH5Lq69spygAwhpd5hoCld3xwH
	dZ7NS+zwspQalBQnbmcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9oSB-00000005O3e-2BLw;
	Mon, 06 Apr 2026 18:13:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9oS9-00000005O3H-3vJM
	for linux-phy@bombadil.infradead.org;
	Mon, 06 Apr 2026 18:13:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TG8Ts0lvwZl/5ypyMSynPVHz2oiqHxOes46j4kcT7EA=; b=hBQrusQJQRaei9WigCTDdTfhO9
	W9ZZpmVJGhvxLyA0HvjMlaTSmJzRH8BCaQEBrAvWGbBIE8GEVDTwzsyJhG2ShVDkj8BTEbUn4lR8W
	Vv3gQkjqiobPni1Bs4SM6XbkmLfGixrQZVAgsxeqcwdaYw0K67oAXC4WdtWewyh26QjTsU2mXKi7r
	LdlhTbg8k7o8HyLKUh+XY4tPvh9Xr6zejRlKHRCvL0NpPvCZsTPz/zCIuqa5YG+6c2jQwgxvF6BVF
	2IzCc0fqfJBBDk9/bY3Pa2ASKYdDf5JIxcH9Vz+2sxjPSK7REsDH3DDxw5FigusTbaAhN6pu1za9H
	9M7F4SDA==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9oS7-000000074oO-0oNC
	for linux-phy@lists.infradead.org;
	Mon, 06 Apr 2026 18:13:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 6B5262708A;
	Mon,  6 Apr 2026 20:13:22 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JkYX7jfwsH7m; Mon,  6 Apr 2026 20:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1775499201; bh=2b582OA9bo8ZO+4nA6VuGo0KsqY+xwfvgTSwFREy4/o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=dxvSqtVnagn1cxHhDJCDbuVm26m5zVu+zstYtFPjDlaj8+a+uTOtKfQNJpGPBYR3m
	 zBQdlmvgA6+f3sitwPEs2ZebyhevJMZcey+96j/0WrhSyUaELdoNeCnjEfNmGvwfCn
	 2cBIKM1E3muAgxppxn02NoMLH4q5xIcottgtKI8QaG8oHs7MHcy4lbc/kcllK9NWDM
	 w0oRR3hVe5hv7GrQSffiNKzBQ2QGayvMDZoMzz8/Za1SxPaL+8mjfuUJywhB7GPcxb
	 FMQeb37CC4LnTAXtXQx987Y9TwTmBCinvs5mGJDMxipNhJPt0Te+ZHQNk+vk+sPgmN
	 fv8R7t2eBWc+g==
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
Subject: [PATCH v4 5/6] phy: realtek: usb2: add support for RTL9607C USB2 PHY
Date: Mon,  6 Apr 2026 23:12:27 +0500
Message-ID: <20260406181228.25892-6-adilov@disroot.org>
In-Reply-To: <20260406181228.25892-1-adilov@disroot.org>
References: <20260406181228.25892-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_191335_410807_AF9DBAAF 
X-CRM114-Status: GOOD (  12.86  )
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

Add the appropriate little endian read and write functions for rtl9607
and assign them to its phy config struct.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 57 ++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 64fd42513b86..9311cf09521b 100644
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
@@ -146,6 +153,18 @@ static void rtk_usb2phy_write(u32 val, void __iomem *reg)
 	writel(val, reg);
 }
 
+static u32 rtk_usb2phy_read_le(void __iomem *reg)
+{
+	return le32_to_cpu(readl(reg));
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
@@ -609,6 +628,16 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
 		goto do_toggle;
 	}
 
+	if (phy_cfg->force_host_disconnect) {
+		/* disable force-host-disconnect */
+		u32 temp = readl(phy_reg->reg_wrap_vstatus + PHY_9607_FORCE_DISCONNECT_REG);
+
+		temp &= ~PHY_9607_FORCE_DISCONNECT_BIT;
+		writel(temp, phy_reg->reg_wrap_vstatus + PHY_9607_FORCE_DISCONNECT_REG);
+
+		msleep(10);
+	}
+
 	/* Set page 0 */
 	phy_data_page = phy_cfg->page0;
 	rtk_phy_set_page(phy_reg, 0);
@@ -1374,6 +1403,33 @@ static const struct phy_cfg rtd1315e_phy_cfg = {
 	.write = rtk_usb2phy_write,
 };
 
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
+	.check_efuse_version = CHECK_EFUSE_V2,
+	.efuse_dc_driving_rate = EFUS_USB_DC_CAL_RATE,
+	.dc_driving_mask = 0x1f,
+	.efuse_dc_disconnect_rate = EFUS_USB_DC_DIS_RATE,
+	.dc_disconnect_mask = 0xf,
+	.usb_dc_disconnect_at_page0 = true,
+	.do_toggle = true,
+	.driving_updated_for_dev_dis = 0x8,
+	.is_double_sensitivity_mode = true,
+	.vstatus_offset = 0xc,
+	.vstatus_busy = PHY_9607_VSTS_BUSY,
+	.new_reg_req = PHY_9607_NEW_REG_REQ,
+	.read = rtk_usb2phy_read_le,
+	.write = rtk_usb2phy_write_le,
+	.force_host_disconnect = true,
+};
+
 static const struct of_device_id usbphy_rtk_dt_match[] = {
 	{ .compatible = "realtek,rtd1295-usb2phy", .data = &rtd1295_phy_cfg },
 	{ .compatible = "realtek,rtd1312c-usb2phy", .data = &rtd1312c_phy_cfg },
@@ -1384,6 +1440,7 @@ static const struct of_device_id usbphy_rtk_dt_match[] = {
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
