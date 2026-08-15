Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F2CC5CFDB
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 09:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXIyKZUWXNTEe1cxfnpEEtPoCri8ImVDm5sptbnkpbs=; b=ARRkqyzEvbHjF/
	kMASklTuWBnHZ7/Twg0qSv7bPWnRyQeqkG0tEKnu6ehP7qhSUDcSAgqU4bKrqtKaIqjI/UWn2RQ97
	UAqrHNqlovlZMkTKfe/NxiZDvus0P/5a1KL4VQwsHEwRGFWjymGDDGEKESOZLZByBSAUE6YnknhGu
	gCEvq4+5MmiJ9sK5ZO7fzkc1rpWqkcVIsQEXOXoNEDVeIv8FvGs+hcDGtmQUUbddeHTHhOa35eHD1
	PoBYP5/QlHElBmtQ26IlC698cTV8WutHvHmSX3PJKhHFcqbvpK5tRVyeRRsMmCv4BvpqniuHcioof
	CP8G+rOSf6lsb10/Xy5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvATl-00000003hO2-0D4k;
	Sat, 15 Aug 2026 09:15:01 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvATi-00000003hMc-1apY
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 09:14:59 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id EF183882CA;
	Sat, 15 Aug 2026 11:14:37 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PQPWE5oCTmlF; Sat, 15 Aug 2026 11:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1786785277; bh=qi/gWHzJoMLT99wi33nSAx6f8CFgp+JnA4bNs+DMJnI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=HqPL07JXkgTVdLEbAbaoVMgadjSik1hqNNfBhN5LsZgqc+bDz7X3V14Gc8a2BbEPX
	 ADGLxP7yOTodzKVGWxASzl7ZZ30nwh2wU8LYSV5EgZXdfWJAYQUtf/+YnmE7ugt/wS
	 xqpDIwbu7HPGFAf4kN99Q3+UdJekGEAn8czamdJ4Rq2NGyttrdkwtADcnBPF7f38ix
	 BOnM6lsbe+2sO5loluo1NvB6Do1dauYN4VnOHs2WFDx83T8gz0k0mxJjueLG7hhe/x
	 ObW6nl+liSWQFxsmLDVzyzOQhgHTr2YSg1e2mHfl1t66ZlQkcOHVZeVoE1LItJZqGT
	 NTzvSv3YSd1pg==
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
Subject: [PATCH v7 2/6] phy: realtek: usb2: introduce read and write functions to phy_reg_desc struct
Date: Sat, 15 Aug 2026 14:13:36 +0500
Message-ID: <20260815091340.26910-3-adilov@disroot.org>
In-Reply-To: <20260815091340.26910-1-adilov@disroot.org>
References: <20260815091340.26910-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_021458_558917_53B6A0D9 
X-CRM114-Status: GOOD (  10.43  )
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
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
