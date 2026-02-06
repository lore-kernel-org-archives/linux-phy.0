Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A30EB28FE
	for <linux-phy@archiver.kernel.org>; Fri,  6 Feb 2026 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RvDYYveELJVRP695jZpYoM2gmfoJdO1cvcb49vbspSc=; b=vsu9z64AQ7LtYZ
	atr9GYHj2iAstQQyQvWlarWMKaim6QnLhB304aESLZcU0OTOkXnIpS8ZmW6GgCt8D8U3mXfA3HrP9
	GDjGs8YBCS8A4+k/MgsENQz/yUe97yjlaERcmlhTZhwTjotMh0zDlZj/l8X/7he/ITXEpEEOkyOsM
	MsE3yYwbSDpgV4GSWFmGFAHXpr5q44AsNlInnSVS6dyRRKprTNifw9i/SDwaMWZ0s2+F5s4XySuYW
	JP28ZLcajmoTO5Axf8bh0m++nnoDF03Wq5zKB4yHI+PRcWW2A3ub4LDdrSmUyayUhhjd6dZJTwVvH
	eREDZrU2l7dODR0lj1dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voIiH-0000000B8hZ-2HnT;
	Fri, 06 Feb 2026 10:05:21 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voIiD-0000000B8gt-40Ni;
	Fri, 06 Feb 2026 10:05:19 +0000
Received: from localhost.localdomain (unknown [58.61.141.99])
	by smtp.qiye.163.com (Hmail) with ESMTP id 335ee3599;
	Fri, 6 Feb 2026 18:05:07 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Yixun Lan <dlan@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Ze Huang <huang.ze@linux.dev>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Mark Brown <broonie@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-riscv@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev
Subject: [PATCH 1/2] dt-bindings: phy: spacemit: add regulator support to K1 USB2 PHY
Date: Fri,  6 Feb 2026 18:00:08 +0800
Message-Id: <20260206100009.873182-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Tid: 0a9c326999a603a2kunmb90599ad38e347
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTEoaVk8ZSU1JTh8fQ05NT1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVQkJZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVUpCS0
	tZBg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_020518_175719_F387F3A2 
X-CRM114-Status: UNSURE (   5.97  )
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

Add an optional phy-supply property to describe the regulator
supplying for USB VBUS.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
index 43eaca90d88c..74a1cd5bcdbe 100644
--- a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
@@ -19,6 +19,10 @@ properties:
   clocks:
     maxItems: 1
 
+  phy-supply:
+    description:
+      Phandle to a regulator that provides power to VBUS.
+
   "#phy-cells":
     const: 0
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
