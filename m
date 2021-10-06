Return-Path: <SRS0=SQnc=O2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C0E9C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 06:35:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0457611CC
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 06:35:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E0457611CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIKJjHrHQy8645fBzUpTAQWJEtfONwXYlKVtfCxaW1w=; b=G5b35eiHS0b0HC
	XnU7aPsR5bElPNBr16kxGb99Gb0qs0sn0J7Dg5p78hyGxuFFHRZ/Aiv8nfy7Isoxgddv8lcyCPMwy
	2vY7GLFPj3TySIZDYRTA87RNX3SLtCSVibNoIHzbJR/QpjarxxuDwJWby7ZHc+SOfnnE4tR06tBdz
	v9zV2QFMm0/2qinhC9bqoRVKmteuEff0wkLvreSGizsh6mnZ3P/Tt/3jythoZngHf7IbO+SoAPBDN
	DAsa5h93ultK2ODSTMBW2SqrpStccaRTd8WLEspWYUd8xp19q1hA2kPeuzlstBL0/cLmDiAtn8KwP
	rT0u5rIrmXz/LMsKWwIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY0Ww-00D2YF-FM; Wed, 06 Oct 2021 06:35:54 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY0Ws-00D2VT-S1
 for linux-phy@lists.infradead.org; Wed, 06 Oct 2021 06:35:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1633502151; x=1665038151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BOv8Gg7PU5rXFtB1XFC+YKxGSaaPEsE7DzJZPSr3S4k=;
 b=T8PyMZ3TDnqI78bvGewJryQK/UN90+albeMgnUI2oly0niME0B5IJeVS
 PPN9iyWr6Ciq+h0xmZjs6HbOQKTWIAKxHH8sEwDw3mcltrzISXJENpgZ1
 JElX8hTxOXYmZ0pKIjm9CVQ+8bsM/n8ZKYVa+EWtVXDo1xl9R3ig3XVtE
 bjWGOJaRjZFGBgk5xwmeKJc3AODlDvhmVPzrh8jE9ugAG5OHBmfQCsVPf
 66CbB8fKbCnrEv2WRXcXRZoK45HPvrOq/L/qL/prMdnMMJOQBzdHd33tn
 5xGYFwJvBTsVupRyCHOnBryaUf9A/ageZZuP1/nafJVxLbAqamELylVZv g==;
IronPort-SDR: w+pW4Xha1EvPpdVxUwbOia+d83PP/wGmak3z9g+kY8TvxDptGYmFsZMIJocMUzsiaM5UhZ5mMw
 kvAN/MQAGl0pfnGg1ZiWrv2VQpqY4V61qiuImb0bMbL1KMj/2Q1tccqiO7SBblGKIVd/TN2MNf
 qhpvUPTBu7a2a7u0aGiPxivD/3iK0jYjN7lTjkTq6utAwYuuvMJNVR0CRfbA1BZ755w5lYt1o1
 ExSAvJ1klhKY8hC/E2vSQ4jKVnzxTgH6A8IbxAUqyLKuLPUCGiO9kQfUSgePmmmBm0QFBXVS42
 T8aUoa0A9pB9YjciJfsFCnOd
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="134419752"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Oct 2021 23:35:38 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 5 Oct 2021 23:35:35 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Tue, 5 Oct 2021 23:35:33 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <linux@armlinux.org.uk>, <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v2 2/3] dt-bindings: phy: Add binding includes for lan966x
 serdes
Date: Wed, 6 Oct 2021 08:35:22 +0200
Message-ID: <20211006063523.3962427-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211006063523.3962427-1-horatiu.vultur@microchip.com>
References: <20211006063523.3962427-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_233551_025220_CA234EF0 
X-CRM114-Status: UNSURE (   8.32  )
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

Add include bindings for lan966x serdes

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/dt-bindings/phy/lan966x_serdes.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/dt-bindings/phy/lan966x_serdes.h

diff --git a/include/dt-bindings/phy/lan966x_serdes.h b/include/dt-bindings/phy/lan966x_serdes.h
new file mode 100644
index 000000000000..06e529473475
--- /dev/null
+++ b/include/dt-bindings/phy/lan966x_serdes.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+
+#ifndef __LAN966X_SERDES_H__
+#define __LAN966X_SERDES_H__
+
+#define CU(x)		(x)
+#define CU_MAX		CU(2)
+#define SERDES6G(x)	(CU_MAX + 1 + (x))
+#define SERDES6G_MAX	SERDES6G(3)
+#define RG(x)		(SERDES6G_MAX + 1 + (x))
+#define RG_MAX		RG(2)
+#define SERDES_MAX	(RG_MAX + 1)
+
+#endif
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
