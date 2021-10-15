Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996ACC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 12:40:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 635E96108E
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 12:40:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 635E96108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ylzDrFGMrKFs+89jNyi1X/A7IcHQp4Y1bFFsgWqKK+Q=; b=VyVsCQx8MbtfVi
	V3+9+ICUkqiViZF+o4ryP3bl/UOYR1JlwUe4wREkDMdRKLuGT8aQAszDS/9VFdQEIMt/EOOeR/SVl
	2ainEDE3YyDdRhKzSRxHOmZSb0hYm8DSQFLyg89pqKdUvEuNjhrq19cgwdFcxcyn9ekRPpQe84X+V
	szAD+xY9mumqeD5ozqf/vETepsfi8HBqbmpcOpMvKpw8ePFnyqrYuWRft95W0JfVV05zdFifQRfT7
	8a3mHj0YaiuRLT360YwyyFMR33zUVyxz80v40xwbRJAw9iImoTTRfWUptMiFN6O8mAFMKhq4m4Gl3
	5TCJiKasngy/+q+boGeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbMVN-006x1S-Nx; Fri, 15 Oct 2021 12:40:09 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbMVJ-006wyH-H3
 for linux-phy@lists.infradead.org; Fri, 15 Oct 2021 12:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1634301605; x=1665837605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j70I3MLfR+S39GoQ5y05nrBzwqYPqS8zv9d7ynokaLU=;
 b=Ae0C7W4Hci2S/V90J7jl5pBph8u7Tn3oaIx06fJ1NJTHLz3cuvjGPRtF
 KHBl9IF3flvgng/nPi3r8gxkfyNfz/gdkO1lS76u+UIUp+MlUuwEdb/+h
 p2KNf6JDRft0FaCP3tO4UXs/aKvL/3T8L+3BOjBFGD6LwcM0bRA6kxFbS
 9WV11B8qC2oP3q0Z6uzpD7mnymE/5cqBnhrRgwjk3XA/qOl4w2bfqd+s3
 vPMACkeQxlyYqT1yfX5pxRqM2S0u4i11dSoGOesyomeFAIc8pDTuU3oO4
 ySCUVw6OMic4ps+86f/+M7yZABA1bzlv6xY8Hw4bBFrSQV4oR7vVknLh0 g==;
IronPort-SDR: +pD9xwTIUtt26j80oNLa49sgvVJDiV0Pr+WJA0vbFYMRhuvpy0uGP1W11EXfY7YFkUKdXQZpd6
 qMpGHMpcPVfAPTtracTFCDwHBxR3d2wgz5DMOuGGFztEeqH97mFc0Gf2C2EtVA8JcuJXXgn9Qw
 ELBn9RZMO8dA6qlvXMzVvD8oHMLN2SYDM1PIOaXaqYWXsLy4FJO1fMFIuPSG4lTXatZ+6kXDoT
 IRjpbMWCbtHPGK2FwUUlnWoBg6YXobqMxYfcBrt3e7gAhrfInK/Dm2w96VZ6OaCjedtwfGuIqY
 Smr4+2IXcr7pYy1aiwBmpdgG
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="73070434"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2021 05:40:04 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Fri, 15 Oct 2021 05:40:04 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Fri, 15 Oct 2021 05:40:02 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v3 2/3] dt-bindings: phy: Add constants for lan966x serdes
Date: Fri, 15 Oct 2021 14:39:19 +0200
Message-ID: <20211015123920.176782-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211015123920.176782-1-horatiu.vultur@microchip.com>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_054005_683849_9FED1B47 
X-CRM114-Status: UNSURE (   8.87  )
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
index 000000000000..8a05f93ecf41
--- /dev/null
+++ b/include/dt-bindings/phy/phy-lan966x-serdes.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+
+#ifndef __PHY_LAN966X_SERDES_H__
+#define __PHY_LAN966X_SERDES_H__
+
+#define PHY(x)		(x)
+#define PHY_MAX		PHY(2)
+#define SERDES6G(x)	(PHY_MAX + 1 + (x))
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
