Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73191CF885B
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 21:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2YAN01H/Z/3aEaBl1ziA4HzIpkTSjbHzpNE1CVwTls=; b=OzGE0RIcj0LG+7
	0MQdQXPlVLcZEchVpOP7dNTtAf3AhRz0lMTxLxJiv5wlpWyzgcLfbbnmGLl7fAlssfufCHjaW29kz
	iQdVUz2908SHBSbWVMS08U3JUWhAu+SN4UkdtFB4zhcTUlPzguhmcDwtVlsGdpmWsohOR+3dwnvHh
	enylMQDinOYClGilC4HKKKHG6jQGZ25yp7MfbEzCvRHHqlkSkhkfsTFTkfs6LGpIYmsxWIK/pOZlE
	/HIQnNYp1jOWBw/7RZAKOTSCXONx/M3fFyigbxECP0nAeXO8akqRIKYSQt/Wj02XOZSjlrVKDuC5h
	mbPB17DoQJNTEK9dmtrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swpR8-0000000EE7i-0DlP;
	Fri, 04 Oct 2024 21:02:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQd-0000000E120-0RXn
	for linux-phy@bombadil.infradead.org;
	Fri, 04 Oct 2024 19:57:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4EiZB57Ije44d5unSa0zzmwhV7tOSVS8o5yzMkwZGS0=; b=JHM98W/fnazMt4AhhbJjHgMptl
	ztbhmF0e9UvG6HzRibYuvebvgKUSY6/RgmQGb6P418P6ZCWCdjpEUNdENi0wWZMmaCtMu3qhiyciv
	yDy1tZgMSSKrgw7wLOGOJHcdXmZYZyot5xEXOEghwV8jMvJPbCzOrKmLOhazR7/n0SeEn3sqH5c9C
	eU8tLU4Tc1e9j4oeE+/T+I4kenTkgNJYZnRHLAbGYi4JD/9wBaqtX1lY5tZlHpfKM5vX/gL+5W423
	8Qd/jo9q2av4o6pcd/bAPuWU+/R+2gOl/zf6zo4o6I+jNW2tsspv9uoesuXyQYQLdFAXRKk6zedNI
	wWCgP4Ug==;
Received: from mout.gmx.net ([212.227.17.21])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQX-00000003vtQ-2AwS
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 19:57:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728071836; x=1728676636;
	i=markus.stockhausen@gmx.de;
	bh=4EiZB57Ije44d5unSa0zzmwhV7tOSVS8o5yzMkwZGS0=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=BZ13Fa6krd+ph0TsiKBveMIKoNU6QpKFaGLYyJArkw7prvtU7Q/svHpjPz9uwxqL
	 mTMCVziPPN1k5Cv+OJfoNMMzE/eyK4nB68tUoEw2f09c9rQZo76wl6fQeRDfGV4SP
	 u08BFjw5aS43h8pRSvLzAmxVcFRlGWos5uP+MFqAIYwySavxtvqBmwsWr22MIoG0b
	 PAKV7Vynz4GwQiXoBPrcWtRqUlKGetXHeihdyzZTI843HlPqqXw6mJEJtat/OZeO9
	 1lkAj0AZLC8KEeiwTVwof7YoyMZSdIGcuJw7gS5DXCFUW1jNgt/4w/hQksHuZfybe
	 VQl7qRJnF569j2Y4dg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.81]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mo6ux-1tmPvb00a3-00kDqJ; Fri, 04
 Oct 2024 21:57:16 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH 2/4] phy: Realtek Otto SerDes: add driver source
Date: Fri,  4 Oct 2024 15:56:08 -0400
Message-ID: <20241004195712.1891488-3-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:F5P5pbwCGeah2h5HeJr/LoJpE2yuCxk3uvn0IN2hI5KlqKs5qGH
 d0DhHv6vpzbbos7lniwRNFETZU7fBeav4v5i8hRVnGdkcBLDzmPXS5myDUg8qPSJ6KTKAFs
 qKO1Uobd3hcxibgTCnNvhTuTrD1FnqeqgezyoDddUVrAEmntp0D5b7wiDXVT5jL3Ln6iSXE
 6rKSRqOIrL8i9esGAsPww==
UI-OutboundReport: notjunk:1;M01:P0:nx7OjdBY7gw=;Sjn3ZGKCUFJiV0ySqtPY0voo+Y3
 zGUSSBlJi2epuLbF9sVSVYpnFp4tR8eQgoW+o64j4285P5o2s3NnN/RzNbtUXcnDsHsNQH+PO
 0MbjySUN0rQpOD/IOecp53viRQvM43apZnV+VIBz8KItPMYWJ+M4Kvu7r0+2dVFP7vlD5nrBc
 jvCzIJxkJznV01QPk9y9bSBvSS50JJ3I/FEKJp/KyTiXlZVkOFFViMDHs26aTWvKa3KsKyNDX
 Hb+HVEK55fzKQvkkB/LSP81AqLdzDWoGCA2fMs8euG92xHekVIKHxcZaZgVRn7Y2q+Ay2dNiz
 kXnDl5mfxFohO6OvkwAYWW/UAV4Ucw0FSX0zQ4OF4+eYLW2gvMbnQcKIT2xMiozGJg4F876xZ
 9bu9mObUxHsPXWyCwHhFIqw3o/DWX7oMHvX54w+dQ3aayy10FDsc8mmAjjFAEpeBa+bcD6Cd6
 AqVSK2cTEv1VqNcGZcaasjgjjqKs1qAPOPzVzC98t1fIoufTFrQbyl+6S2NjlCEPWykrdClcd
 TPhRo9HLxh3yZ7YYHhFW6SIlXdTLHGwWnQcdRzknP/ItYIJeqV0vUCVSMIZo2yugvzSsmIf/0
 99Ib0e6QQhpYTw6G5CtUs/SifehG1Rg1tmvZRBj3eV8wOwc57qOA1TLuCbhteJCWBhsvXxyXE
 U9N7QryWr+pmoSb7YAQYZ18bIAbpKSEXKfKIwpjeShtRGcH63FzFRqV/Qn1sCERdA/Sjboq2E
 1KHpaU9Qrpf6m+WEo8B6cCh3JLpaKtHwwGfMEtD6XE0cYXm7yo1BPcFlScwy1+Ihyv8zbLPx3
 K29KIl31QBjFh+ZwGPSt/4Cg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_205725_909173_E5CE8545 
X-CRM114-Status: GOOD (  22.88  )
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

This adds the source for the new Otto SerDes driver.
---
 drivers/phy/realtek/phy-rtl-otto-serdes.c | 1181 +++++++++++++++++++++
 1 file changed, 1181 insertions(+)
 create mode 100644 drivers/phy/realtek/phy-rtl-otto-serdes.c

diff --git a/drivers/phy/realtek/phy-rtl-otto-serdes.c b/drivers/phy/realtek/phy-rtl-otto-serdes.c
new file mode 100644
index 000000000000..c3a2584a69d0
--- /dev/null
+++ b/drivers/phy/realtek/phy-rtl-otto-serdes.c
@@ -0,0 +1,1181 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
+ * Copyright (c) 2024 Markus Stockhausen <markus.stockhausen@gmx.de>
+ */
+
+#include "phy-rtl-otto-serdes.h"
+
+/*
+ * The Otto platform has a lot of undocumented features and registers that configure
+ * the SerDes behaviour. Trying to include that here would clutter the driver. To
+ * provide maximum flexibility the driver can run register modification sequences
+ * during operation, E.g. when calling phy_reset() or phy_power_on(). These sequences
+ * need to be stored in the device tree. More documentation over there.
+ */
+
+static const char *rtsds_events[RTSDS_EVENT_MAX + 1] = {
+	[RTSDS_EVENT_SETUP]		= "cmd-setup",
+	[RTSDS_EVENT_INIT]		= "cmd-init",
+	[RTSDS_EVENT_POWER_ON]		= "cmd-power-on",
+	[RTSDS_EVENT_PRE_SET_MODE]	= "cmd-pre-set-mode",
+	[RTSDS_EVENT_POST_SET_MODE]	= "cmd-post-set-mode",
+	[RTSDS_EVENT_PRE_RESET]		= "cmd-pre-reset",
+	[RTSDS_EVENT_POST_RESET]	= "cmd-post-reset",
+	[RTSDS_EVENT_PRE_POWER_OFF]	= "cmd-pre-power-off",
+	[RTSDS_EVENT_POST_POWER_OFF]	= "cmd-post-power-off",
+};
+
+static void rtsds_load_events(struct rtsds_ctrl *ctrl)
+{
+	int i, elems, sz = sizeof(struct rtsds_seq);
+
+	for (i = 0; i <= RTSDS_EVENT_MAX; i++) {
+		elems = of_property_count_u16_elems(ctrl->dev->of_node ,rtsds_events[i]);
+		if (elems <= 0)
+			continue;
+
+		if ((elems * sizeof(u16)) % sz) {
+			dev_err(ctrl->dev, "ignore sequence %s (incomplete data)\n", rtsds_events[i]);
+			continue;
+		}
+
+		/* alloc one more element to provide stop marker in case it is missing in dt */
+		ctrl->sequence[i] = devm_kzalloc(ctrl->dev, elems * sizeof(u16) + sz, GFP_KERNEL);
+		if (!ctrl->sequence[i]) {
+			dev_err(ctrl->dev, "ignore sequence %s (allocation failed)\n", rtsds_events[i]);
+			continue;
+		}
+
+		if (of_property_read_u16_array(ctrl->dev->of_node, rtsds_events[i],
+					       (u16 *)ctrl->sequence[i], elems)) {
+			dev_err(ctrl->dev, "ignore sequence %s (DT load failed)\n", rtsds_events[i]);
+			kfree(ctrl->sequence[i]);
+			ctrl->sequence[i] = NULL;
+			continue;
+		}
+	}
+}
+
+static int rtsds_run_event(struct rtsds_ctrl *ctrl, u32 sid, int evt)
+{
+	struct rtsds_seq *seq;
+	int ret, step = 1, delay = 0;
+
+	if (evt > RTSDS_EVENT_MAX || sid > ctrl->conf->max_sds)
+		return -EINVAL;
+
+	seq = ctrl->sequence[evt];
+
+	if (!seq)
+		return 0;
+
+	while (seq->action != RTSDS_SEQ_STOP) {
+		if ((seq->action == RTSDS_SEQ_WAIT) && (seq->ports & BIT(sid)))
+			delay = seq->val;
+
+		if (delay)
+			usleep_range(delay << 10, (delay << 10) + 1000);
+
+		if ((seq->action == RTSDS_SEQ_MASK) && (seq->ports & BIT(sid))) {
+			ret = ctrl->conf->mask(ctrl, sid, seq->page,
+					 seq->reg, seq->val, seq->mask);
+
+			if (ret) {
+				dev_err(ctrl->dev, "sequence %s failed at step %d", rtsds_events[evt], step);
+				return -EIO;
+			}
+		}
+
+		seq++;
+		step++;
+	}
+
+	return 0;
+}
+
+static int rtsds_hwmode_to_phymode(struct rtsds_ctrl *ctrl, int hwmode)
+{
+	for (int m = 0; m < PHY_INTERFACE_MODE_MAX; m++)
+		if (ctrl->conf->mode_map[m] == hwmode)
+			return m;
+
+	return PHY_INTERFACE_MODE_MAX;
+}
+
+static void rtsds_83xx_soft_reset(struct rtsds_ctrl *ctrl, u32 sidlo, u32 sidhi, int usec)
+{
+	for (u32 sid = sidlo; sid <= sidhi; sid++)
+		ctrl->conf->mask(ctrl, sid, 0x00, 0x03, 0x7146, 0xffff);
+	usleep_range(usec, usec + 1000);
+	for (u32 sid = sidlo; sid <= sidhi; sid++)
+		ctrl->conf->mask(ctrl, sid, 0x00, 0x03, 0x7106, 0xffff);
+}
+
+/*
+ * The RTL838x has 6 SerDes. The 16 bit registers start at 0xbb00e780 and are mapped
+ * directly into 32 bit memory addresses. High 16 bits are always empty. Quite confusing
+ * but the register ranges are cluttered and contain holes.
+ */
+
+static int rtsds_838x_offset(u32 sid, u32 page, u32 reg)
+{
+	if (page == 0 || page == 3)
+		return (sid << 9) + (page << 7) + (reg << 2);
+	else
+		return 0xb80 + (sid << 8) + (page << 7) + (reg << 2);
+}
+
+static int rtsds_838x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	int offs;
+
+	if (sid > RTSDS_838X_MAX_SDS || page > RTSDS_838X_MAX_PAGE || reg > 31)
+		return -EINVAL;
+
+	offs = rtsds_838x_offset(sid, page, reg);
+
+	/* read twice for link status latch */
+	if (page == 2 && reg == 1)
+		ioread32(ctrl->base + offs);
+
+	return ioread32(ctrl->base + offs);
+}
+
+static int rtsds_838x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
+{
+	int offs;
+
+	if (sid > RTSDS_838X_MAX_SDS || page > RTSDS_838X_MAX_PAGE || reg > 31)
+		return -EINVAL;
+
+	offs = rtsds_838x_offset(sid, page, reg);
+
+	/* read twice for link status latch */
+	if (page == 2 && reg == 1)
+		ioread32(ctrl->base + offs);
+
+	iomask32(mask, val, ctrl->base + offs);
+
+	return 0;
+}
+
+static int rtsds_838x_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	if (sid > RTSDS_838X_MAX_SDS)
+		return -EINVAL;
+
+	/* RX reset */
+	rtsds_838x_mask(ctrl, sid, 0x01, 0x09, 0x0200, 0x0200);
+	rtsds_838x_mask(ctrl, sid, 0x01, 0x09, 0x0000, 0x0200);
+
+	/* CMU reset */
+	rtsds_838x_mask(ctrl, sid, 0x01, 0x00, 0x4040, 0xffff);
+	rtsds_838x_mask(ctrl, sid, 0x01, 0x00, 0x4740, 0xffff);
+	rtsds_838x_mask(ctrl, sid, 0x01, 0x00, 0x47c0, 0xffff);
+	rtsds_838x_mask(ctrl, sid, 0x01, 0x00, 0x4000, 0xffff);
+
+	rtsds_83xx_soft_reset(ctrl, sid, sid, 1000);
+
+	/* RX/TX reset */
+	rtsds_838x_mask(ctrl, sid, 0x00, 0x00, 0x0400, 0xffff);
+	rtsds_838x_mask(ctrl, sid, 0x00, 0x00, 0x0403, 0xffff);
+
+	return 0;
+}
+
+static int rtsds_838x_set_mode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
+{
+	int shift, mode = RTSDS_MODE(combomode), submode = RTSDS_SUBMODE(combomode);
+
+	if (sid > RTSDS_838X_MAX_SDS)
+		return -EINVAL;
+
+	if (sid == 4 || sid == 5) {
+		shift = (sid - 4) * 3;
+		iomask32(0x7 << shift, (submode & 0x7) << shift, RTSDS_838X_INT_MODE_CTRL);
+	}
+
+	shift = 25 - sid * 5;
+	iomask32(0x1f << shift, (mode & 0x1f) << shift, RTSDS_838X_SDS_MODE_SEL);
+
+	return 0;
+}
+
+static int rtsds_838x_get_mode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int shift, mode, submode = 0;
+
+	if (sid < 0 || sid > RTSDS_838X_MAX_SDS)
+		return -EINVAL;
+
+	if (sid == 4 || sid == 5) {
+		shift = (sid - 4) * 3;
+		submode = (ioread32(RTSDS_838X_INT_MODE_CTRL) >> shift) & 0x7;
+	}
+
+	shift = 25 - sid * 5;
+	mode = (ioread32(RTSDS_838X_SDS_MODE_SEL) >> shift) & 0x1f;
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+/*
+ * The RLT839x has 14 SerDes starting at 0xbb00a000. 0-7, 10, 11 are 5GBit, 8, 9, 12, 13
+ * are 10GBit. Two adjacent SerDes are tightly coupled and share a 1024 bytes register area.
+ * Per 32 bit address two registers are stored. The first register is stored in the lower
+ * 2 bytes ("on the right" due to big endian) and the second register in the upper 2 bytes.
+ * We know the following register areas:
+ *
+ * - XSG0	(4 pages @ offset 0x000): for even SerDes
+ * - XSG1	(4 pages @ offset 0x100): for odd SerDes
+ * - TGRX	(4 pages @ offset 0x200): for even 10G SerDes
+ * - ANA_RG	(2 pages @ offset 0x300): for even 5G SerDes
+ * - ANA_RG	(2 pages @ offset 0x380): for odd 5G SerDes
+ * - ANA_TG	(2 pages @ offset 0x300): for even 10G SerDes
+ * - ANA_TG	(2 pages @ offset 0x380): for odd 10G SerDes
+ *
+ * The most consistent mapping we can achieve that aligns to the RTL93xx devices is:
+ *
+ *		even 5G SerDes	odd 5G SerDes	even 10G SerDes	odd 10G SerDes
+ * Page 0: 	XSG0/0		XSG1/0		XSG0/0		XSG1/0
+ * Page 1: 	XSG0/1		XSG1/1		XSG0/1		XSG1/1
+ * Page 2: 	XSG0/2		XSG1/2 		XSG0/2		XSG1/2
+ * Page 3: 	XSG0/3		XSG1/3		XSG0/3		XSG1/3
+ * Page 4: 	<zero>		<zero>		TGRX/0		<zero>
+ * Page 5: 	<zero>		<zero>		TGRX/1		<zero>
+ * Page 6: 	<zero>		<zero>		TGRX/2		<zero>
+ * Page 7: 	<zero>		<zero>		TGRX/3		<zero>
+ * Page 8: 	ANA_RG		ANA_RG		<zero>		<zero>
+ * Page 9: 	ANA_RG_EXT	ANA_RG_EXT	<zero>		<zero>
+ * Page 10: 	<zero>		<zero>		ANA_TG		ANA_TG
+ * Page 11: 	<zero>		<zero>		ANA_TG_EXT	ANA_TG_EXT
+ */
+
+static int rtsds_839x_offset(u32 sid, u32 page, u32 reg)
+{
+	int offs = ((sid & 0xfe) << 9) + ((reg & 0xfe) << 1);
+
+	if (page < 4) {
+		offs += ((sid & 1) << 8) + (page << 6);
+	} else if (page < 8) {
+		if (sid != 8 && sid != 12)
+			return -1;
+		offs += 0x100 + (page << 6);
+	} else if (page < 10) {
+		if (sid == 8 || sid == 9 || sid == 12 || sid == 13)
+			return -1;
+		offs += 0x100 + ((sid & 1) << 7) + (page << 6);
+	} else {
+		if (sid != 8 && sid != 9 && sid != 12 && sid != 13)
+			return -1;
+		offs += 0x100 + ((sid & 1) << 7) + ((page - 2) << 6);
+	}
+
+	return offs;
+}
+
+static int rtsds_839x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	int offs, shift = (reg << 4) & 0x10;
+
+	if (sid > RTSDS_839X_MAX_SDS || page > RTSDS_839X_MAX_PAGE || reg > 31)
+		return -EINVAL;
+
+	offs = rtsds_839x_offset(sid, page, reg);
+	if (offs < 0)
+		return 0;
+
+	/* read twice for link status latch */
+	if (page == 2 && reg == 1)
+		ioread32(ctrl->base + offs);
+
+	return (ioread32(ctrl->base + offs) >> shift) & 0xffff;
+}
+
+static int rtsds_839x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
+{
+	int oldval, offs = ((sid & 0xfe) << 9) + ((reg & 0xfe) << 1);
+
+	if (sid > RTSDS_839X_MAX_SDS || page > RTSDS_839X_MAX_PAGE || reg > 31)
+		return -EINVAL;
+
+	offs = rtsds_839x_offset(sid, page, reg);
+	if (offs < 0)
+		return 0;
+
+	/* read twice for link status latch */
+	if (page == 2 && reg == 1)
+		ioread32(ctrl->base + offs);
+
+	oldval = ioread32(ctrl->base + offs);
+	val = reg & 1 ? (oldval & ~(mask << 16)) | (val << 16) : (oldval & ~mask) | val;
+	iowrite32(val, ctrl->base + offs);
+
+	return 0;
+}
+
+static int rtsds_839x_set_mode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
+{
+	int shift = (sid & 7) << 2, offs = (sid >> 1) & ~3;
+	int mode = RTSDS_MODE(combomode), submode = RTSDS_SUBMODE(combomode);
+
+	if (sid > RTSDS_839X_MAX_SDS)
+		return -EINVAL;
+
+	rtsds_839x_mask(ctrl, sid, 0, 4, (submode << 12) & 0xf000, 0xf000);
+	iomask32(0xf << shift, (mode & 0xf) << shift, RTSDS_839X_MAC_SERDES_IF_CTRL + offs);
+
+	return 0;
+}
+
+static int rtsds_839x_get_mode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode, submode, shift = (sid & 7) << 2, offs = (sid >> 1) & ~3;
+
+	if (sid > RTSDS_839X_MAX_SDS)
+		return -EINVAL;
+
+	submode = (rtsds_839x_read(ctrl, sid, 0, 4) >> 12) & 0xf;
+	mode = (ioread32(RTSDS_839X_MAC_SERDES_IF_CTRL + offs) >> shift) & 0xf;
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+static int rtsds_839x_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int lo = sid & ~1, hi = sid | 1;
+
+	if (sid > RTSDS_839X_MAX_SDS)
+		return -EINVAL;
+
+	/*
+	 * A reset basically consists of two steps. First a clock (CMU) reset and a
+	 * digital soft reset afterwards. Some of the CMU registers are shared on
+	 * adjacent SerDes so as of now we can only perform a reset on a pair.
+	 */
+
+	if (lo < 8 || lo == 10) {
+		rtsds_839x_mask(ctrl, hi, 0x09, 0x01, 0x0050, 0xffff);
+		rtsds_839x_mask(ctrl, hi, 0x09, 0x01, 0x00f0, 0xffff);
+		rtsds_839x_mask(ctrl, hi, 0x09, 0x01, 0x0000, 0xffff);
+		rtsds_839x_mask(ctrl, lo, 0x08, 0x14, 0x0000, 0x0001);
+		rtsds_839x_mask(ctrl, lo, 0x08, 0x14, 0x0200, 0x0200);
+		usleep_range(100000, 101000);
+		rtsds_839x_mask(ctrl, lo, 0x08, 0x14, 0x0000, 0x0200);
+	} else {
+		rtsds_839x_mask(ctrl, lo, 0x0a, 0x10, 0x0000, 0x0008);
+		rtsds_839x_mask(ctrl, lo, 0x0b, 0x00, 0x8000, 0x8000);
+		usleep_range(100000, 101000);
+		rtsds_839x_mask(ctrl, lo, 0x0b, 0x00, 0x0000, 0x8000);
+	}
+
+	rtsds_83xx_soft_reset(ctrl, lo, hi, 100000);
+
+	return 0;
+}
+
+/*
+ * The RTL930x family has 12 SerdDes. They are accessed through two IO registers
+ * at 0xbb0003b0 which simulate commands to an internal MDIO bus. From the current
+ * observation there are 3 types of SerDes:
+ *
+ * - SerDes 0,1 are of unknown type
+ * - SerDes 2-9 are USXGMII capabable with either quad or single configuration
+ * - SerDes 10-11 are of unknown type
+ */
+
+static int rtsds_930x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	int cnt = 100, cmd = (sid << 2) | (page << 7) | (reg << 13) | 1;
+
+	if (sid > RTSDS_930X_MAX_SDS || page > RTSDS_930X_MAX_PAGE || reg > 31)
+		return -EINVAL;
+
+	iowrite32(cmd, ctrl->base);
+
+	while (--cnt && (ioread32(ctrl->base) & 1))
+		usleep_range(50, 60);
+
+	return cnt ? ioread32(ctrl->base + 4) & 0xffff : -EIO;
+}
+
+static int rtsds_930x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
+{
+	int oldval, cnt = 100, cmd = (sid << 2) | (page << 7) | (reg << 13) | 3;
+
+	if (sid > RTSDS_930X_MAX_SDS || page > RTSDS_930X_MAX_PAGE || reg > 31)
+		return -EINVAL;
+
+	if (mask != 0xffff) {
+		oldval = rtsds_930x_read(ctrl, sid, page, reg);
+		if (oldval < 0)
+			return -EIO;
+		oldval &= ~mask;
+		val |= oldval;
+	}
+
+	iowrite32(val, ctrl->base + 4);
+	iowrite32(cmd, ctrl->base);
+
+	while (--cnt && (ioread32(ctrl->base) & 1))
+		usleep_range(50, 60);
+
+	return cnt ? 0 : - EIO;
+}
+
+static void rtsds_930x_mode_offset(int sid,
+				   void __iomem __force **modereg, int *modeshift,
+				   void __iomem __force **subreg, int *subshift)
+{
+	if (sid > 3) {
+		*subreg = RTSDS_930X_SDS_SUBMODE_CTRL1;
+		*subshift = (sid - 4) * 5;
+	} else {
+		*subreg = RTSDS_930X_SDS_SUBMODE_CTRL0;
+		*subshift = (sid - 2) * 5;
+	}
+
+	if (sid < 4) {
+		*modeshift = sid * 6;
+		*modereg = RTSDS_930X_SDS_MODE_SEL_0;
+	} else if (sid < 8) {
+		*modeshift = (sid - 4) * 6;
+		*modereg = RTSDS_930X_SDS_MODE_SEL_1;
+	} else if (sid < 10) {
+		*modeshift = (sid - 8) * 6;
+		*modereg = RTSDS_930X_SDS_MODE_SEL_2;
+	} else {
+		*modeshift = (sid - 10) * 6;
+		*modereg = RTSDS_930X_SDS_MODE_SEL_3;
+	}
+}
+
+static int rtsds_930x_set_mode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
+{
+	int modeshift, subshift;
+	int mode = RTSDS_MODE(combomode);
+	int submode = RTSDS_SUBMODE(combomode);
+	void __iomem __force *modereg;
+	void __iomem __force *subreg;
+
+	if (sid > RTSDS_930X_MAX_SDS)
+		return -EINVAL;
+
+	rtsds_930x_mode_offset(sid, &modereg, &modeshift, &subreg, &subshift);
+	if (sid >= 2 || sid <= 9)
+		iomask32(0x1f << subshift, (submode & 0x1f) << subshift, subreg);
+	iomask32(0x1f << modeshift, (mode & 0x1f) << modeshift, modereg);
+
+	return 0;
+}
+
+static int rtsds_930x_get_mode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int modeshift, subshift, mode, submode = 0;
+	void __iomem __force *modereg;
+	void __iomem __force *subreg;
+
+	if (sid > RTSDS_930X_MAX_SDS)
+		return -EINVAL;
+
+	rtsds_930x_mode_offset(sid, &modereg, &modeshift, &subreg, &subshift);
+	if (sid >= 2 || sid <= 9)
+		submode = (ioread32(subreg) >> subshift) & 0x1f;
+	mode = ioread32(modereg) >> modeshift & 0x1f;
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+static int rtsds_930x_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int modecur, modeoff = ctrl->conf->mode_map[PHY_INTERFACE_MODE_NA];
+
+	if (sid > RTSDS_930X_MAX_SDS)
+		return -EINVAL;
+
+	modecur = rtsds_930x_get_mode(ctrl, sid);
+
+	/* It is enough to power off SerDes and set to old mode again */
+	if (modecur != modeoff) {
+		rtsds_930x_set_mode(ctrl, sid, modeoff);
+		rtsds_930x_set_mode(ctrl, sid, modecur);
+	}
+
+	return 0;
+}
+
+/*
+ * The RTL931x family has 14 "frontend" SerDes that are magically cascaded. All
+ * operations (e.g. reset) work on this frontend view while their registers are
+ * distributed over a total of 32 background SerDes. Two types of SerDes have been
+ * identified:
+ *
+ * A "even" SerDes with numbers 0, 1, 2, 4, 6, 8, 10, 12 works on on two background
+ * SerDes. 64 analog und 64 XGMII data pages are coming from a first background
+ * SerDes while another 64 XGMII pages are served from a second SerDes.
+ *
+ * The "odd" SerDes with numbers 3, 5, 7, 9, 11 & 13 SerDes consist of a total of 3
+ * background SerDes (one analog and two XGMII) each with an own page/register set.
+ *
+ * As strange as this reads try to get this aligned and mix pages as follows
+ *
+ * frontend page		"even" frontend SerDes 	"odd" frontend SerDes
+ * page 0-63 (analog): 		back sid page 0-63	back sid page 0-63
+ * page 64-127 (XGMII1):	back sid page 0-63	back sid +1 page 0-63
+ * page 128-191 (XGMII2):	back sid +1 page 0-63	back sid +2 page 0-63
+ */
+
+static int rtsds_931x_backsid(u32 sid, u32 page)
+{
+	int map[] = {0, 1, 2, 3, 6, 7, 10, 11, 14, 15, 18, 19, 22, 23};
+	int backsid = map[sid];
+
+	if ((sid & 1) && (sid != 1))
+		backsid += (page >> 6); /* distribute "odd" to 3 background SerDes */
+	else if (page >= 128)
+		backsid += 1; /* "distribute "even" to 2 background SerDes */
+
+	return backsid;
+}
+
+static int rtsds_931x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
+{
+	int backsid, cmd, cnt = 100;
+
+	if (sid > RTSDS_931X_MAX_SDS || page > RTSDS_931X_MAX_PAGE || reg > 31)
+		return -EINVAL;
+
+	backsid = rtsds_931x_backsid(sid, page);
+	cmd = (backsid << 2) | ((page & 0x3f) << 7) | (reg << 13) | 1;
+
+	iowrite32(cmd, ctrl->base);
+	while (--cnt && (ioread32(ctrl->base) & 1))
+		usleep_range(50, 60);
+
+	return cnt ? ioread32(ctrl->base + 4) & 0xffff : -EIO;
+}
+
+static int rtsds_931x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page,
+			   u32 reg, u32 val, u32 mask)
+{
+	int backsid, cmd, oldval, cnt = 100;
+
+	if (sid > RTSDS_931X_MAX_SDS || page > RTSDS_931X_MAX_PAGE || reg > 31)
+		return -EINVAL;
+
+	backsid = rtsds_931x_backsid(sid, page);
+	cmd = (backsid << 2) | ((page & 0x3f) << 7) | (reg << 13) | 3;
+
+	if (mask != 0xffff) {
+		oldval = rtsds_931x_read(ctrl, sid, page, reg);
+		if (oldval < 0)
+			return -EIO;
+		oldval &= ~mask;
+		val |= oldval;
+	}
+
+	iowrite32(val, ctrl->base + 4);
+	iowrite32(cmd, ctrl->base);
+	while (--cnt && (ioread32(ctrl->base) & 1))
+		usleep_range(50, 60);
+
+	return cnt ? 0 : - EIO;
+}
+
+static int rtsds_931x_set_mode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
+{
+	int shift = (sid & 3) << 3, offs = sid & ~3;
+	int mode = RTSDS_MODE(combomode);
+	int submode = RTSDS_SUBMODE(combomode);
+
+	if (sid > RTSDS_931X_MAX_SDS)
+		return -EINVAL;
+
+	rtsds_931x_mask(ctrl, sid, 31, 9, (submode & 0x3f << 6), 0x0fc0);
+	iomask32(0xff << shift, ((mode | RTSDS_931X_SDS_FORCE_SETUP) & 0xff) << shift,
+		 RTSDS_931X_SERDES_MODE_CTRL + offs);
+
+	return 0;
+}
+
+static int rtsds_931x_get_mode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode, submode, shift = (sid & 3) << 3, offs = sid & ~3;
+
+	if (sid > RTSDS_931X_MAX_SDS)
+		return -EINVAL;
+
+	submode = (rtsds_931x_read(ctrl, sid, 31, 9) >> 6) & 0x3f;
+	mode = (ioread32(RTSDS_931X_SERDES_MODE_CTRL + offs) >> shift) & 0x1f;
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+static int rtsds_931x_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int pwr, modecur, modeoff = ctrl->conf->mode_map[PHY_INTERFACE_MODE_NA];
+
+	if (sid > RTSDS_931X_MAX_SDS)
+		return -EINVAL;
+
+	modecur = rtsds_931x_get_mode(ctrl, sid);
+
+	if (modecur != modeoff) {
+		/* reset with mode switch cycle while being powered off */
+		pwr = ioread32(RTSDS_931X_PS_SERDES_OFF_MODE_CTRL);
+		iowrite32(pwr | BIT(sid), RTSDS_931X_PS_SERDES_OFF_MODE_CTRL);
+		rtsds_931x_set_mode(ctrl, sid, modeoff);
+		rtsds_931x_set_mode(ctrl, sid, modecur);
+		iowrite32(pwr, RTSDS_931X_PS_SERDES_OFF_MODE_CTRL);
+	}
+
+	return 0;
+}
+
+int rtsds_read(struct phy *phy, u32 page, u32 reg)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+
+	return ctrl->conf->read(ctrl, sid, page, reg);
+}
+
+int rtsds_mask(struct phy *phy, u32 page, u32 reg, u32 val, u32 mask)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+
+	if (!(ctrl->sds_mask & BIT(sid)))
+		return -EACCES;
+
+	return ctrl->conf->mask(ctrl, sid, page, reg, val, mask);
+}
+
+int rtsds_write(struct phy *phy, u32 page, u32 reg, u32 val)
+{
+	return rtsds_mask(phy, page, reg, val, 0xffff);
+}
+
+static int rtsds_phy_init(struct phy *phy)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+	int ret;
+
+	if (!(ctrl->sds_mask & BIT(sid)))
+		return 0;
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_INIT);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "init failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_power_on(struct phy *phy)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+	int ret;
+
+	if (!(ctrl->sds_mask & BIT(sid)))
+		return 0;
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_POWER_ON);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "power on failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_power_off(struct phy *phy)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+	int ret;
+
+	if (!(ctrl->sds_mask & BIT(sid)))
+		return 0;
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_PRE_POWER_OFF);
+	if (!ret)
+		ret = ctrl->conf->set_mode(ctrl, sid, ctrl->conf->mode_map[PHY_INTERFACE_MODE_NA]);
+	if (!ret)
+		ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_POST_POWER_OFF);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "power off failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_set_mode_int(struct rtsds_ctrl *ctrl, u32 sid, int phymode, int hwmode)
+{
+	int ret;
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_PRE_SET_MODE);
+	if (!ret)
+		ret = ctrl->conf->set_mode(ctrl, sid, hwmode);
+	if (!ret) {
+		ctrl->sds[sid].mode = phymode;
+		ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_POST_SET_MODE);
+	}
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "set mode failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+
+	if (!(ctrl->sds_mask & BIT(sid)))
+		return 0;
+
+	if (mode != PHY_MODE_ETHERNET)
+		return -EINVAL;
+
+	return rtsds_phy_set_mode_int(ctrl, sid, submode, ctrl->conf->mode_map[submode]);
+}
+
+static int rtsds_phy_reset_int(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int ret;
+
+	mutex_lock(&ctrl->lock);
+	ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_PRE_RESET);
+	if (!ret)
+		ret = ctrl->conf->reset(ctrl, sid);
+	if (!ret)
+		ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_POST_RESET);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "reset failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_reset(struct phy *phy)
+{
+	struct rtsds_macro *macro = phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 sid = macro->sid;
+
+	if (!(ctrl->sds_mask & BIT(sid)))
+		return 0;
+
+	return rtsds_phy_reset_int(ctrl, sid);
+}
+
+static const struct phy_ops rtsds_phy_ops = {
+	.init		= rtsds_phy_init,
+	.power_on	= rtsds_phy_power_on,
+	.power_off	= rtsds_phy_power_off,
+	.reset		= rtsds_phy_reset,
+	.set_mode 	= rtsds_phy_set_mode,
+	.owner		= THIS_MODULE,
+};
+
+/*
+ * The SerDes offer a lot of magic that sill needs to be uncovered. To help further
+ * development provide some basic debugging about registers, modes and polarity. The
+ * mode can be changed on the fly and executes the normal setter including events.
+ */
+
+#ifdef CONFIG_DEBUG_FS
+static const char *rtsds_page_name[RTSDS_PAGE_NAMES]	= {
+	[0] = "SDS",		[1] = "SDS_EXT",
+	[2] = "FIB",		[3] = "FIB_EXT",
+	[4] = "DTE",		[5] = "DTE_EXT",
+	[6] = "TGX",		[7] = "TGX_EXT",
+	[8] = "ANA_RG",		[9] = "ANA_RG_EXT",
+	[10] = "ANA_TG",	[11] = "ANA_TG_EXT",
+	[31] = "ANA_WDIG",
+	[32] = "ANA_MISC",	[33] = "ANA_COM",
+	[34] = "ANA_SP",	[35] = "ANA_SP_EXT",
+	[36] = "ANA_1G",	[37] = "ANA_1G_EXT",
+	[38] = "ANA_2G",	[39] = "ANA_2G_EXT",
+	[40] = "ANA_3G",	[41] = "ANA_3G_EXT",
+	[42] = "ANA_5G",	[43] = "ANA_5G_EXT",
+	[44] = "ANA_6G",	[45] = "ANA_6G_EXT",
+	[46] = "ANA_10G",	[47] = "ANA_10G_EXT",
+};
+
+static ssize_t rtsds_dbg_mode_show(struct seq_file *seqf, void *unused)
+{
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	int mode, sid = macro->sid;
+
+	mutex_lock(&ctrl->lock);
+	mode = ctrl->conf->get_mode(ctrl, sid);
+	mutex_unlock(&ctrl->lock);
+
+	seq_printf(seqf, "hw mode: 0x%X\n", mode);
+	seq_printf(seqf, "phy mode: ");
+
+	if (ctrl->sds[sid].mode == PHY_INTERFACE_MODE_NA)
+		seq_printf(seqf, "off\n");
+	else
+		seq_printf(seqf, "%s\n", phy_modes(ctrl->sds[sid].mode));
+
+	return 0;
+}
+
+static ssize_t rtsds_dbg_mode_write(struct file *file, const char __user *userbuf,
+				size_t count, loff_t *ppos)
+{
+	struct seq_file *seqf = file->private_data;
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	int ret, hwmode, phymode, sid = macro->sid;
+
+	ret = kstrtou32_from_user(userbuf, count, 10, &hwmode);
+	if (ret)
+		return ret;
+
+	/*
+	 * As we are still exploring the SerDes this debug function allows to set
+	 * arbitrary modes into the SerDes. While this might confuse the internal
+	 * driver handling it helps to avoid to rebuild & start from scratch for
+	 * every test.
+	 */
+	phymode = rtsds_hwmode_to_phymode(ctrl, hwmode);
+	rtsds_phy_set_mode_int(ctrl, sid, phymode, hwmode);
+
+	return count;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_mode);
+
+static int rtsds_dbg_registers_show(struct seq_file *seqf, void *unused)
+{
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 page, reg, sid = macro->sid;
+
+	seq_printf(seqf, "%*s", 12 , "");
+	for (int i = 0;i < 32; i++)
+		seq_printf(seqf, "%*d", 5, i);
+
+	for (page = 0; page <= ctrl->conf->max_page; page++) {
+		if (page < RTSDS_PAGE_NAMES && rtsds_page_name[page])
+			seq_printf(seqf, "\n%*s: ", -11, rtsds_page_name[page]);
+		else if (page == 64 || page == 128)
+			seq_printf(seqf, "\nXGMII_%d    : ", page >> 6);
+		else
+			seq_printf(seqf, "\nPAGE_%03d   : ", page);
+		for (reg = 0; reg < 32; reg++)
+			seq_printf(seqf, "%04X ", ctrl->conf->read(ctrl, sid, page, reg));
+	}
+	seq_printf(seqf, "\n");
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_registers);
+
+static int rtsds_dbg_polarity_show(struct seq_file *seqf, void *unused)
+{
+	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl = macro->ctrl;
+	u32 reg, sid = macro->sid;
+
+	reg = ctrl->conf->read(ctrl, sid, RTSDS_PAGE_SDS, 0);
+
+	seq_printf(seqf, "tx polarity: ");
+	seq_printf(seqf, reg & RTSDS_INV_HSO ? "inverse" : "normal");
+	seq_printf(seqf, "\nrx polarity: ");
+	seq_printf(seqf, reg & RTSDS_INV_HSI ? "inverse" : "normal");
+	seq_printf(seqf, "\n");
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
+
+static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	debugfs_create_file("mode", 0600, ctrl->sds[sid].phy->debugfs,
+			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_mode_fops);
+
+	debugfs_create_file("polarity", 0400, ctrl->sds[sid].phy->debugfs,
+			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_polarity_fops);
+
+	debugfs_create_file("registers", 0400, ctrl->sds[sid].phy->debugfs,
+			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_registers_fops);
+}
+#endif /* CONFIG_DEBUG_FS */
+
+static void rtsds_setup(struct rtsds_ctrl *ctrl)
+{
+	int hwmode, ret;
+
+	for (u32 sid = 0; sid <= ctrl->conf->max_sds; sid++) {
+		if (ctrl->sds_mask & BIT(sid)) {
+			/* power off controlled SerDes */
+			hwmode = ctrl->conf->mode_map[PHY_INTERFACE_MODE_NA];
+			ret = ctrl->conf->set_mode(ctrl, sid, hwmode);
+			if (!ret)
+				ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_SETUP);
+			if (ret)
+				dev_err(ctrl->dev, "setup failed for SerDes %d\n", sid);
+		}
+		/* in any case sync back hardware status */
+		hwmode = ctrl->conf->get_mode(ctrl, sid);
+		ctrl->sds[sid].mode = rtsds_hwmode_to_phymode(ctrl, hwmode);
+	}
+}
+
+static struct phy *rtsds_simple_xlate(struct device *dev,
+				      const struct of_phandle_args *args)
+{
+	struct rtsds_ctrl *ctrl = dev_get_drvdata(dev);
+	int sid, sid2, min_port, max_port;
+
+	/*
+	 * Some Realtek Ethernet transceivers (e.g. RLT8218B) will be attached via a
+	 * bonded 2x QSGMII link to two SerDes. Others (e.g. RTL8218D) allow to make
+	 * use of single XGMII or dual QSGMII links. When a switch port tries to lookup
+	 * the SerDes it is attached to we honour that by an enhanced mapping. We allow
+	 * two possible configuration options. Standalone or linked to another. E.g.
+	 *
+	 * Single: port@24 { phys = <&serdes 4 -1 MinPort MaxPort>; };
+	 * Dual:   port@24 { phys = <&serdes 4  5 MinPort MaxPort>; };
+	 *
+	 * As we can only hand over a single phy this function will return the primary
+	 * phy. The secondary phy can be identified later on by the link attribute in
+	 * the controller structure.
+	 */
+
+	if (args->args_count != 4)
+		return ERR_PTR(-EINVAL);
+
+	sid = args->args[0];
+	if (sid < 0 || sid > ctrl->conf->max_sds)
+		return ERR_PTR(-EINVAL);
+
+	sid2 = args->args[1];
+	if (sid2 < -1 || sid2 > ctrl->conf->max_sds)
+		return ERR_PTR(-EINVAL);
+
+	/*
+	 * Additionally to a linked SerDes also get the ports whose traffic is going
+	 * through this SerDes. As of now we do not care much about that but later on
+	 * it might be helpful.
+	 */
+
+	min_port = args->args[2];
+	if (min_port < 0)
+		return ERR_PTR(-EINVAL);
+
+	max_port = args->args[3];
+	if (max_port < min_port)
+		return ERR_PTR(-EINVAL);
+
+	ctrl->sds[sid].link = sid2;
+	if (sid2 >= 0)
+		ctrl->sds[sid2].link = sid;
+
+	ctrl->sds[sid].min_port = min_port;
+	ctrl->sds[sid].max_port = max_port;
+
+	return ctrl->sds[sid].phy;
+}
+
+static int rtsds_phy_create(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	struct rtsds_macro *macro;
+
+	ctrl->sds[sid].phy = devm_phy_create(ctrl->dev, NULL, &rtsds_phy_ops);
+	if (IS_ERR(ctrl->sds[sid].phy))
+		return PTR_ERR(ctrl->sds[sid].phy);
+
+	macro = devm_kzalloc(ctrl->dev, sizeof(*macro), GFP_KERNEL);
+	if (!macro)
+		return -ENOMEM;
+
+	macro->sid = sid;
+	macro->ctrl = ctrl;
+	phy_set_drvdata(ctrl->sds[sid].phy, macro);
+
+	ctrl->sds[sid].link = -1;
+	ctrl->sds[sid].min_port = -1;
+	ctrl->sds[sid].max_port = -1;
+
+#ifdef CONFIG_DEBUG_FS
+	rtsds_dbg_init(ctrl, sid);
+#endif
+	return 0;
+}
+
+static int rtsds_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct rtsds_ctrl *ctrl;
+	int ret;
+
+	if (!np)
+		return -EINVAL;
+
+	ctrl = devm_kzalloc(dev, sizeof(*ctrl), GFP_KERNEL);
+	if (!ctrl)
+		return -ENOMEM;
+
+	ctrl->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(ctrl->base)) {
+		dev_err(dev, "failed to map SerDes memory\n");
+		return PTR_ERR(ctrl->base);
+	}
+
+	ctrl->dev = dev;
+	ctrl->conf = (struct rtsds_conf *)of_device_get_match_data(dev);
+
+	ret = of_property_read_u32(np, "controlled-ports", &ctrl->sds_mask);
+	if (ret) {
+		ctrl->sds_mask = 0;
+		dev_warn(dev, "property controlled-ports not found, switched to read-only mode\n");
+	}
+
+	for (u32 sid = 0; sid <= ctrl->conf->max_sds; sid++) {
+		ret = rtsds_phy_create(ctrl, sid);
+		if (ret) {
+			dev_err(dev, "failed to create PHY for SerDes %d\n", sid);
+			return ret;
+		}
+	}
+
+	mutex_init(&ctrl->lock);
+	dev_set_drvdata(dev, ctrl);
+	provider = devm_of_phy_provider_register(dev, rtsds_simple_xlate);
+
+	rtsds_load_events(ctrl);
+	rtsds_setup(ctrl);
+
+	dev_info(dev, "initialized (%d SerDes, %d pages, 32 registers, mask 0x%04x)",
+		 ctrl->conf->max_sds + 1, ctrl->conf->max_page + 1, ctrl->sds_mask);
+
+	return PTR_ERR_OR_ZERO(provider);
+}
+
+static const struct rtsds_conf rtsds_838x_conf = {
+	.max_sds	= RTSDS_838X_MAX_SDS,
+	.max_page	= RTSDS_838X_MAX_PAGE,
+	.mask		= rtsds_838x_mask,
+	.read		= rtsds_838x_read,
+	.reset		= rtsds_838x_reset,
+	.set_mode	= rtsds_838x_set_mode,
+	.get_mode	= rtsds_838x_get_mode,
+	.mode_map = {
+		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0, 0),
+		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(4, 1), /* SerDes 4, 5 only */
+		[PHY_INTERFACE_MODE_100BASEX]	= RTSDS_COMBOMODE(5, 1), /* SerDes 4, 5 only */
+		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(6, 0),
+	},
+};
+
+static const struct rtsds_conf rtsds_839x_conf = {
+	.max_sds	= RTSDS_839X_MAX_SDS,
+	.max_page	= RTSDS_839X_MAX_PAGE,
+	.mask		= rtsds_839x_mask,
+	.read		= rtsds_839x_read,
+	.reset		= rtsds_839x_reset,
+	.set_mode	= rtsds_839x_set_mode,
+	.get_mode	= rtsds_839x_get_mode,
+	.mode_map = {
+		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0, 0),
+		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_COMBOMODE(1, 0), /* SerDes 8, 12 only */
+		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(7, 0), /* SerDes 12, 13 only */
+		[PHY_INTERFACE_MODE_100BASEX]	= RTSDS_COMBOMODE(8, 0),
+		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(6, 0),
+		[PHY_INTERFACE_MODE_SGMII]	= RTSDS_COMBOMODE(7, 5), /* SerDes 8, 12, 13 only */
+	},
+};
+
+static const struct rtsds_conf rtsds_930x_conf = {
+	.max_sds	= RTSDS_930X_MAX_SDS,
+	.max_page	= RTSDS_930X_MAX_PAGE,
+	.mask 		= rtsds_930x_mask,
+	.read 		= rtsds_930x_read,
+	.reset 		= rtsds_930x_reset,
+	.set_mode 	= rtsds_930x_set_mode,
+	.get_mode 	= rtsds_930x_get_mode,
+	.mode_map = {
+		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(31, 0),
+		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_COMBOMODE(26, 0),
+		[PHY_INTERFACE_MODE_2500BASEX]  = RTSDS_COMBOMODE(22, 0),
+		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(4, 0),
+		[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_COMBOMODE(13, 0), /* SerDes 2-9 only */
+		[PHY_INTERFACE_MODE_QUSGMII]	= RTSDS_COMBOMODE(13, 2), /* SerDes 2-9 only */
+		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(6, 0),
+	},
+};
+
+static const struct rtsds_conf rtsds_931x_conf = {
+	.max_sds	= RTSDS_931X_MAX_SDS,
+	.max_page	= RTSDS_931X_MAX_PAGE,
+	.mask		= rtsds_931x_mask,
+	.read		= rtsds_931x_read,
+	.reset		= rtsds_931x_reset,
+	.set_mode	= rtsds_931x_set_mode,
+	.get_mode	= rtsds_931x_get_mode,
+	.mode_map = {
+		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(31, 63),
+		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_COMBOMODE(31, 53),
+		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(31, 57), /* 1G/10G auto */
+		[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_COMBOMODE(13, 0),
+		[PHY_INTERFACE_MODE_XGMII]	= RTSDS_COMBOMODE(16, 0),
+		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(6, 0),
+	},
+};
+
+static const struct of_device_id rtsds_compatible_ids[] = {
+	{ .compatible = "realtek,rtl8380-serdes",
+	  .data = &rtsds_838x_conf,
+	},
+	{ .compatible = "realtek,rtl8390-serdes",
+	  .data = &rtsds_839x_conf,
+	},
+	{ .compatible = "realtek,rtl9300-serdes",
+	  .data = &rtsds_930x_conf,
+	},
+	{ .compatible = "realtek,rtl9310-serdes",
+	  .data = &rtsds_931x_conf,
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, rtsds_compatible_ids);
+
+static struct platform_driver rtsds_platform_driver = {
+	.probe		= rtsds_probe,
+	.driver		= {
+		.name	= "realtek,otto-serdes",
+		.of_match_table = of_match_ptr(rtsds_compatible_ids),
+	},
+};
+
+module_platform_driver(rtsds_platform_driver);
+
+MODULE_AUTHOR("Markus Stockhausen <markus.stockhausen@gmx.de>");
+MODULE_DESCRIPTION("SerDes driver for Realtek RTL83xx, RTL93xx switch SoCs");
+MODULE_LICENSE("Dual MIT/GPL");
--
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
