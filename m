Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9201DCF885D
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 21:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sucb3svdgaARBZBADtPtrhNjtGkNNKSpuAtzrHLLxgM=; b=El8g/SoFntBjIF
	kd6NF16hKNPoMwtXAwhFRW5vHWf9Qpr1BK0pn/2bvgWQNRiw87+uQysMFYJn6b559XQjgOx6nv9vH
	tEEVVT8jgk4kURZ2/ZHE539USW5mH8hoIBmgvrzZofcseS9inIzfXv3cFMaKj5IeOkjl1OaQj85TS
	UPI9eww/0roIFWsESonXzcMomGx+PYPwztC6wQ5qzoY0NLRYH0j+Rh7yKwCYmYfBWK77Wv4hNrenI
	xVkOapROOuqQYRnBokIe2bWyBO3sIbY5cew52EeyL0YAIoQF6TZT/dp/RJz+43vM6IWeKm68BuIRl
	V0oQCG39xnHqcZ84HCxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swpR9-0000000EE8b-11a1;
	Fri, 04 Oct 2024 21:02:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQp-0000000E13n-3fA0
	for linux-phy@bombadil.infradead.org;
	Fri, 04 Oct 2024 19:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RBix+wqd4rPTZ9hwcpM5atQMEjXDAmOeIkKruBi46lc=; b=EKJAXJVALTjyZwfYvoJrNOi7KY
	12OAZc7vaWX54ckyJJA/Qgy9vtNsv0ZqC2j2GjEpYQTMgetn+QNdGqsyM3qi7+YCm1HKt1M/X1o2r
	iy9ZTXzLzdWumhvxIxphWbk2vP60k9MKI9W600OGZVZzlw9+iqCJW2BaiX8d6I448+2II7DS0UXVp
	1dNfoaorasBp66bydmF9NCYB6PQkbnyye7fw9fKCiEzCvnArs1fAMbg14iQNeIlJIWFhHU7/bOAdr
	vOixLJPEL8hYYn3emAdH0d5Xl/5fpWmfjOx2aER7eE8WeghfMrhG/1dQRwbOqNN/Ll3So/u5yZFo0
	/wFt8OGg==;
Received: from mout.gmx.net ([212.227.17.22])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQl-00000003vw3-2gKl
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 19:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728071836; x=1728676636;
	i=markus.stockhausen@gmx.de;
	bh=RBix+wqd4rPTZ9hwcpM5atQMEjXDAmOeIkKruBi46lc=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=hbHoRiqypa8+2G1Tw3M0KdvmmGx0qaNWfV43sH9SKBe1mZElpnwy9REocsfhUQLo
	 CwQWQivQnpSO8IukGwB/YlIxObgRUy/gA2PFs9JxInDcZUv2Dy1gMKrzm1DxHXAXM
	 EDAeq//pNDYWo8XHNuTgMlg841hjQWk/S6TBAHek7uLSm5Ae/FMsLoa+BEiC5TFIY
	 iSZHP7CWqF9IVMYPIep9DY7fvFJzFCKnsY+Y3pq4MAjg0vivvXNbPnigCWl7V0qRN
	 JyC7cA3Kyv0/7GYkbEqmjiJxgBETbttU+nwwzc/4mNYHZhHy+TPK0ubvknn2xPUWX
	 HqlOJ84z2pq6BNirEQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.81]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MdefJ-1tWQI63XCj-00eBQT; Fri, 04
 Oct 2024 21:57:15 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH 1/4] phy: Realtek Otto SerDes: add header file
Date: Fri,  4 Oct 2024 15:56:07 -0400
Message-ID: <20241004195712.1891488-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:PiA6jVv76VM4E+O1reVAfyMAhX63/z+7XCh6izc9atkugIA9evT
 LTcWbV0lCNC1EJitDasPUQ79rSvc1mEKKBcJvdtHG946ySAc5X6AcuvS4lU8sxTvQpP+4vd
 3bAa+mcl5E7LrAj8BE3c+yH7ZNHzeuXG7FGAd1w3Pyl5F2nsSrZQtAUulfbcRF6HQhmtEf3
 eJDTeBcEg5Pm9fSp9WTtA==
UI-OutboundReport: notjunk:1;M01:P0:DRyco9o7Pso=;TV3/Ewbf+Plhm7NO/MP2AkVYzEC
 HezziUjwIFMXjXwyvNNlSfbWKTgo0Eo7jht05cCvg/Oe7dCCQ8gb21ZUEO0K/g7jWIIInO0Ox
 SvtonRwBIV9Jx3OdU0N5FWUp9xyT2ylM9bd3MLW4vdh4VXq0XldfzFWVUCs9q+O3Yil8gfpsA
 fioZBMWi+ZQ0m6GL/xmiqrfrlxEjzUblbIFUX2ezsA+n1Z0xD8rF+BHdqNP8kWOiuCYfrBv8O
 QTLHw3MwOcQETmHyvGBLN+hHN4J4n09+SLBwA8uSJQaTklwwtZ//2rOByoh4YYkgrJWPPXw8y
 aw0sa5tnR+1jqcxsXIPXGmA5S4tdwpTqDaEvkaMtBDcs6B2+G20SBMvKTOMwDsWCnAmfkh6Nv
 y9eM9T/j2dcoDCo6r6mT3xHZHrLhhaSRvIfwJYmBq3KYBl6MG8elU73oAr6LwGGYNMiE6VCD4
 b6OTjYKzr285drtFzfTmU1udTVqTAHIa0ALpJtw/KlfOpWQQT7U0MejZaqjPoD1MYM1EJeN5l
 6mQJaagW0kE3EBp9NtHE4l/PM13bdf6vlch13X4KWHeG7K47CmIQEfPJ7Kht54ON69aVI2U7V
 YgjNunpDSF/UehMku+suQEuKBJoHJ0uGUuCL5ksM4ShlpByJGP7ZXKpV5KXJZ+wq615CpBGYq
 NBLbggLd/XiAVnExGixdmjoEnyPyy/fTECAsGoEszN8T5lho4MlfUmTxOKQEza4JcCrPrMgvh
 NgmhRvqhgeATHUf6vQ4BuYUVjPLRjaRj8U1iuyZsfDaXt4f0LwmJ+ImfqR5wLhaxrwbfgcnpd
 8SEYQ1qQK2atXOjWXSQFwjeg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_205740_064895_EAD3155D 
X-CRM114-Status: GOOD (  11.84  )
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

This adds the header file for the new Otto SerDes driver.
---
 drivers/phy/realtek/phy-rtl-otto-serdes.h | 126 ++++++++++++++++++++++
 1 file changed, 126 insertions(+)
 create mode 100644 drivers/phy/realtek/phy-rtl-otto-serdes.h

diff --git a/drivers/phy/realtek/phy-rtl-otto-serdes.h b/drivers/phy/realtek/phy-rtl-otto-serdes.h
new file mode 100644
index 000000000000..4d951731c02c
--- /dev/null
+++ b/drivers/phy/realtek/phy-rtl-otto-serdes.h
@@ -0,0 +1,126 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
+ * Copyright (c) 2024 Markus Stockhausen <markus.stockhausen@gmx.de>
+ */
+
+#ifndef _PHY_RTL_OTTO_SERDES_H
+#define _PHY_RTL_OTTO_SERDES_H
+
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+
+#define RTSDS_PAGE_SDS				0
+#define RTSDS_PAGE_SDS_EXT			1
+#define RTSDS_PAGE_FIB				2
+#define RTSDS_PAGE_FIB_EXT			3
+#define RTSDS_PAGE_NAMES			48
+
+#define RTSDS_INV_HSO				0x100
+#define RTSDS_INV_HSI				0x200
+
+#define RTSDS_EVENT_SETUP			0
+#define RTSDS_EVENT_INIT			1
+#define RTSDS_EVENT_POWER_ON			2
+#define RTSDS_EVENT_PRE_SET_MODE		3
+#define RTSDS_EVENT_POST_SET_MODE		4
+#define RTSDS_EVENT_PRE_RESET			5
+#define RTSDS_EVENT_POST_RESET			6
+#define RTSDS_EVENT_PRE_POWER_OFF		7
+#define RTSDS_EVENT_POST_POWER_OFF		8
+#define RTSDS_EVENT_MAX				8
+
+#define RTSDS_SEQ_STOP				0
+#define RTSDS_SEQ_MASK				1
+#define RTSDS_SEQ_WAIT				2
+
+#define RTSDS_SWITCH_ADDR_BASE			(0xbb000000)
+#define RTSDS_REG(x)				((void __iomem __force *)RTSDS_SWITCH_ADDR_BASE + (x))
+#define iomask32(mask, value, addr)		iowrite32((ioread32(addr) & ~(mask)) | (value), addr)
+
+#define RTSDS_838X_MAX_SDS			5
+#define RTSDS_838X_MAX_PAGE			3
+#define RTSDS_838X_SDS_MODE_SEL			RTSDS_REG(0x0028)
+#define RTSDS_838X_INT_MODE_CTRL		RTSDS_REG(0x005c)
+
+#define RTSDS_839X_MAX_SDS			13
+#define RTSDS_839X_MAX_PAGE			11
+#define RTSDS_839X_MAC_SERDES_IF_CTRL		RTSDS_REG(0x0008)
+
+#define RTSDS_930X_MAX_SDS			11
+#define RTSDS_930X_MAX_PAGE			63
+#define RTSDS_930X_SDS_MODE_SEL_0		RTSDS_REG(0x0194)
+#define RTSDS_930X_SDS_MODE_SEL_1		RTSDS_REG(0x02a0)
+#define RTSDS_930X_SDS_MODE_SEL_2		RTSDS_REG(0x02a4)
+#define RTSDS_930X_SDS_MODE_SEL_3		RTSDS_REG(0x0198)
+#define RTSDS_930X_SDS_SUBMODE_CTRL0		RTSDS_REG(0x01cc)
+#define RTSDS_930X_SDS_SUBMODE_CTRL1		RTSDS_REG(0x02d8)
+
+#define RTSDS_931X_MAX_SDS			13
+#define RTSDS_931X_MAX_PAGE			191
+#define RTSDS_931X_SERDES_MODE_CTRL		RTSDS_REG(0x13cc)
+#define RTSDS_931X_PS_SERDES_OFF_MODE_CTRL	RTSDS_REG(0x13f4)
+#define RTSDS_931X_SDS_FORCE_SETUP		0x80
+
+#define RTSDS_COMBOMODE(mode, submode)		(0x10000 | (mode << 8) | submode)
+#define RTSDS_MODE(combomode)			((combomode >> 8) & 0xff)
+#define RTSDS_SUBMODE(combomode)		(combomode & 0xff)
+
+struct __attribute__ ((__packed__)) rtsds_seq {
+	u16 action;
+	u16 ports;
+	u16 page;
+	u16 reg;
+	u16 val;
+	u16 mask;
+};
+
+struct rtsds_sds {
+	struct phy *phy;
+	int mode;
+	int link;
+	int min_port;
+	int max_port;
+};
+
+struct rtsds_ctrl {
+	struct device *dev;
+	void __iomem *base;
+	struct mutex lock;
+	u32 sds_mask;
+	struct rtsds_conf *conf;
+	struct rtsds_sds sds[RTSDS_930X_MAX_SDS + 1];
+	struct rtsds_seq *sequence[RTSDS_EVENT_MAX + 1];
+};
+
+struct rtsds_macro {
+	struct rtsds_ctrl *ctrl;
+	u32 sid;
+};
+
+struct rtsds_conf {
+	u32 max_sds;
+	u32 max_page;
+	int (*read)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg);
+	int (*mask)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg, u32 val, u32 mask);
+	int (*reset)(struct rtsds_ctrl *ctrl, u32 idx);
+	int (*set_mode)(struct rtsds_ctrl *ctrl, u32 idx, int mode);
+	int (*get_mode)(struct rtsds_ctrl *ctrl, u32 idx);
+	int mode_map[PHY_INTERFACE_MODE_MAX];
+};
+
+/*
+ * This SerDes module should be written in quite a clean way so that direct calls are
+ * not needed. The following functions are provided just in case ...
+ */
+
+int rtsds_read(struct phy *phy, u32 page, u32 reg);
+int rtsds_write(struct phy *phy, u32 page, u32 reg, u32 val);
+int rtsds_mask(struct phy *phy, u32 page, u32 reg, u32 val, u32 mask);
+
+#endif /* _PHY_RTL_OTTO_SERDES_H */
--
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
