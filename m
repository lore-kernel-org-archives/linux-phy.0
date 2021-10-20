Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7342C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 09:43:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9CBA1611C6
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 09:43:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9CBA1611C6
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njOccqPqYhm6W19f8aerUoFOAIGmBaTwsk/DTyWVweI=; b=Tv3GRDtptKYEl9
	TJe8iP0GPr6mMm4FoQ72dPhlbyI+wwbB+fSjvoHzK5KQMwzcUEWFloV3m0m/8oM7+wdbNXOZ00KXB
	HEOFtpk0pTpSGXS6XiHYGnsZd08uqjX7XsaOlzlNAle10WVatF5jF/lwEshv3ZNcNZ91uTjhY1fTc
	vVpuvAlAfOjCD06zxn3zq7+WLE5EkGRpHwEGQwO/PL8nGx1RjxIyYljpPxlyKFpZcNtyN2Gh3fiGe
	KDVRG9ocJ8GJRBnZ5Wag6jXz88ovyz0MZd06VbRJgW61Oy9fLTI+L56iPwZYrLs6M5jfFQum+XWZe
	BJ3iKICcyj4FX/Fch36A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md88A-0042M4-5F; Wed, 20 Oct 2021 09:43:30 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md887-0042Kr-IL
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 09:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1634723007; x=1666259007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jIJ1AwfUxGKF7dH+OvdoeRw3aK9VyFJmbBd8KYx8q5A=;
 b=Dc+dM6PJwluaAVbSlOQAnWMVsezjyPmqfz111Vr9VEqcxP7WtZDia7S0
 Kyv238tkQl4OLwKi4kzjBIWLfpsSvAtO6hdJlH6kZewtgVkhWvg1kmwr1
 YqubpYWmcqqGotr0uWmObqGgYGjxoYqg7XUmn+pikMHmKtQkwB1ue0Z4O
 aS8phd8fuli3n++LvWhFHTesxkkmJ3jkoKTBr4k3Cueq5AcLFmcr71MjD
 8IwF6q8t+2JbFxyvMLd+TsVepUk6AqOXl8NIhygp4GQF+rSf4jFJOWtrC
 56HDKc5++ZDhWXdGtQeENnHQhY3j0rVkedn2ZgzGqNr2T+dVEiZ9G8IH8 Q==;
IronPort-SDR: 6FI26VcJou9CCMMY4EbBhJMHeVhZQeY2X6FMRedI1XmvEvW9QeN+dtIjQhOPGRxh2uiv8eYRLB
 +/GlhjSN97rwDnhp+MRZV699FDvyeGeyOkHg8PBWT4n162yqJRiFCUARsGSuSfb8GllRaLRvPW
 JqNGjhBfs4+/P5aDNvbwLpbIy/UZhE2DfW78IZnmZFi41JcABdGvIvqTJhJZyTug287jvTrIYL
 fQGflQgcYubpTWSQzoWiW3y627YMfxibZBpNfcOv5gXPznVvFsvVUZWVL7o4ydSlPANuexiE99
 YOuG6nZBWUQxOOCFKAaF5YVs
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="141015576"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Oct 2021 02:43:27 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 20 Oct 2021 02:43:26 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Wed, 20 Oct 2021 02:43:24 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v4 2/3] dt-bindings: phy: Add constants for lan966x serdes
Date: Wed, 20 Oct 2021 11:42:28 +0200
Message-ID: <20211020094229.1760793-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211020094229.1760793-1-horatiu.vultur@microchip.com>
References: <20211020094229.1760793-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_024327_637583_2685E6CB 
X-CRM114-Status: UNSURE (   9.81  )
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
