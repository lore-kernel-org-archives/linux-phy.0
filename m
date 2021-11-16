Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47BCAC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:15:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1425B61BE5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:15:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1425B61BE5
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eObmMDb6m/xVOVDrUHXK2rqqtftzT9VWoMhYPRfDEM0=; b=wMv6GNGrL46okG
	njudDgKOfD7A382+qs2q9rDIC/Sq9dkquvtwm9H/Z8FzJyrQbs/1+eJUv0LNyAPX2Dq7KIggJCS6e
	a8c4q8eJ0C3gL5N32F4jA5oFcgG9jiqvczecE/YuJDY5q/Anpwr6F9B5r1ivgnLOSAhhISBLb6lsX
	8D6R01K+mmoeBPQ65foN+pX69YRpmlsUWLfiok9sy9KVgX8TICwQd0fEd4XshJQynUv+2cnzJK7Zl
	Xqp2Vxt6QxHRRHL00+OWIJvDBXtyJZXiq73X5jvUa+0cabez7LSojPywm5TnGvGnGJDhrdZXL+DTI
	xuTQfc9QAyTBuarKivTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvUZ-00193G-3m; Tue, 16 Nov 2021 10:15:07 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvUT-00190F-F6
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1637057701; x=1668593701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/EoVRfeXsKrEx1Z5FwdvtGr5J+131lwL9RZTW9bzi3A=;
 b=DNbP32ox2pq0Qj2O1mYstNtM9LooeVpZoN0C1KHx/zrQNGSnF428/fqU
 DvqmMyVGAP1f9giIIj8yuoX4fnVB/MCyXmPB7MHuYUdOiCyxKSz9dstVG
 2lzNhdHZ65ARkodjEqsIky2/Sf4W5VS0xjSSG8ntMNe8PnLK0qMTXuAw9
 2zNKRQJk/S+q8X4DO78gk/9bDSO0rJgP2IcobPAdld3PlqzMUic7QnTnU
 uAUGbbk9Zq2pnUB//2xYkj2Zr1iigUdfJTbR+nciP1b1fa7ApOGzOpxnX
 Byoe4tJnTLjkHenRQar99TNKGhvENpcEpBndHuOYlUUW73a2dhMRYDTQZ w==;
IronPort-SDR: 1oaLpSh3HmN/8ZbcFsh7M8PXv6k9mBFlxKt4FtgSz+pgtTh0tdfHXCGECuPhWTQgKjrcmWxRpJ
 CwbvLZtGU4aW9Qv+RfoaauKG8KqPlYGOryoy7hj268elXis9dpIc1Ehlh8UCo69zO1oiVjKbm7
 adVLggY2bo90ogOQPRpidhUs0dZ0Q7R4wSPaGv9wjsHHJJHhpw6LRtjP40IevRA0zSB0NoYBeJ
 4wDkTdPLqHUhEfAm6al7M7c9pXyQ+RtAyahd7QHrprwyx4XVUePw4ADHT4PZFTYuR4BQ8jb6pG
 V85XvbyTkmUeanMoyrpwaPeZ
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="139272092"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Nov 2021 03:15:00 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 16 Nov 2021 03:15:00 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Tue, 16 Nov 2021 03:14:57 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>, <kuba@kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>, Rob Herring
 <robh@kernel.org>
Subject: [PATCH resend v4 2/3] dt-bindings: phy: Add constants for lan966x
 serdes
Date: Tue, 16 Nov 2021 11:08:17 +0100
Message-ID: <20211116100818.1615762-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_021501_649097_B07F8523 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
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

Lan966x has: 2 integrated PHYs, 3 SerDes and 2 RGMII interfaces. Which
requires to be muxed based on the HW representation.

So add constants for each interface to be able to distinguish them.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/dt-bindings/phy/phy-lan966x-serdes.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/dt-bindings/phy/phy-lan966x-serdes.h

diff --git a/include/dt-bindings/phy/phy-lan966x-serdes.h b/include/dt-bindings/phy/phy-lan966x-serdes.h
new file mode 100644
index 000000000000..4330269a901e
--- /dev/null
+++ b/include/dt-bindings/phy/phy-lan966x-serdes.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+
+#ifndef __PHY_LAN966X_SERDES_H__
+#define __PHY_LAN966X_SERDES_H__
+
+#define CU(x)		(x)
+#define CU_MAX		CU(2)
+#define SERDES6G(x)	(CU_MAX + 1 + (x))
+#define SERDES6G_MAX	SERDES6G(3)
+#define RGMII(x)	(SERDES6G_MAX + 1 + (x))
+#define RGMII_MAX	RGMII(2)
+#define SERDES_MAX	(RGMII_MAX + 1)
+
+#endif
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
