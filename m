Return-Path: <SRS0=P1CX=OU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A884C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Sep 2021 07:39:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F36AD6187A
	for <linux-phy@archiver.kernel.org>; Thu, 30 Sep 2021 07:39:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F36AD6187A
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIKJjHrHQy8645fBzUpTAQWJEtfONwXYlKVtfCxaW1w=; b=0ijWZLAwERXbZK
	aL0CvE11LKw7Oivgxpwc7fsg03AGn4HI4geh9dJjAIrfZSdX8Knr1bwXAQ+vGVJBv3vAXYLKccF8F
	3ZfSuyWqnfFdwpdaxhAm0PAkv6HNleR+FDGYkeIHOhEqDYuriHs7n3u5t1WbRwK+lcJsZAVthmdCb
	r4kG655dTg1Drf2BP6WWPX5tO5OBGkUm3zSXIkAcWTobr3uQeIbWcEVZgnVEEQeHN+QExf6fIOSjC
	n6SPb+q9Yx4q6NuGNSEscghsACMJbLt+kCQpYji8ltaQlTAGYiv6HtqsR9g0nn4jzKvW3QQBbSZ9d
	VjSbJm2EN7hUjivNmfPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVqfO-00DDPV-HS; Thu, 30 Sep 2021 07:39:42 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVqfL-00DDO5-2X
 for linux-phy@lists.infradead.org; Thu, 30 Sep 2021 07:39:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632987578; x=1664523578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BOv8Gg7PU5rXFtB1XFC+YKxGSaaPEsE7DzJZPSr3S4k=;
 b=wQ7bQHWczERt9YkHndhWank98XcyYVTfVo9JKkLnVtweuCLEyfAx8WQQ
 /FlMrWLJx2ngcPUMRj106I1YiChBA0eJs0bipXYMK3XE1AV4WUwI0t2yX
 aUnaJA8EK9PIrR2gwo813KvbJh0Wtw1HFBNEVDMSfmAemwPOXIBrfkxyU
 fUdrwuz6jmvIcvrJjvI2WBPzhGDmhpjyNrL0cyzaQLelvieST6LmIB0Rl
 r2juHx2tNjwytZ9fHCQaEt/hqt/Q5WEg6r75J9+edPFFmUrsCwX90bbaE
 r8g8tPr1Hw9gal7TVQWtRzrwqq351TA4UzbIXUgMAjDf3rnCXarvFXO5a w==;
IronPort-SDR: lybkGg5VruaNXsMvpvtnzgYqk/wM3V9iU+1Pd32hbwlSdowEbXRs1NCvdJeAo4S0sZu87OJszK
 xA3N+RRzBdqsZXOcnkQ8+/n4X0ntJEZL+cvERnbviJy5aKSAxITUBipEUFE2xn83L5dnAQTGns
 5/ko9bmxn+reR2S157mRGPNSTrH7LKS3MRr3norrRValld3lMgRRzTIl4YT1ha5bLSQmUXUrUd
 TO7xtNAz+/gClwLtQ5h7VJugvGuXIuMwCyXUEyUeWnhXl3Q5cb//NAmRapoAnoakvmemNpK2Gd
 0DXMHuhL9r+6GYTZ81R/Zo4n
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="146229527"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Sep 2021 00:39:38 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 30 Sep 2021 00:39:38 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Thu, 30 Sep 2021 00:39:36 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH 2/3] dt-bindings: phy: Add binding includes for lan966x serdes
Date: Thu, 30 Sep 2021 09:38:21 +0200
Message-ID: <20210930073822.2709955-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210930073822.2709955-1-horatiu.vultur@microchip.com>
References: <20210930073822.2709955-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_003939_143566_A7D64250 
X-CRM114-Status: UNSURE (   9.01  )
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
