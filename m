Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94687C004D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWQVX4FRMY5I8v6XOkm2OzuqOhv/ia6E28aGWF+S820=; b=d0GXp2BsMgQy8h
	Rw0j+A2WUDCqH+S7lnbPMDE2dOtgUTJprvm4l2+LMyYGTfeMlBMi1wKHz/3xdiYeEXGYXx2ihjnGU
	Fdga6P0DaZZMNmGMjSqDF7jMP+2NJ5j4kb9ewfIzaCxubF0IqsuU98AUIVi89ovk0uFXZukAIkDi6
	pwCIGE8HPSgn2ik4R2izf7qMYvwNZ3CeWenV5qSAC6mc4XieVyUP10gM1Bm9WFtw6AdfRSGPsPozf
	6q7z0ac66t7beiPiCO/e9mS9i5Il40DUVv77Zhj6pmQa8gdl1lJ7BrTUgj7Xmq4gYChWpHcRs6pik
	qWgSMzGCEzkk3W+wNRkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5r2-000Opo-0J; Wed, 18 Jan 2023 10:39:40 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5qz-000Oo7-Cm
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:39:38 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:4745:2e6d:e3a6:3327])
	by laurent.telenet-ops.be with bizsmtp
	id AAfX2900C2zf9gW01AfXES; Wed, 18 Jan 2023 11:39:34 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5qo-005aKJ-7Z;
	Wed, 18 Jan 2023 11:39:31 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5qt-001Jt4-ID;
	Wed, 18 Jan 2023 11:39:31 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Wolfgang Grandegger <wg@grandegger.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document NXP TJR1443
Date: Wed, 18 Jan 2023 11:39:23 +0100
Message-Id: <6ee5e2ce00019bd3f77d6a702b38bab1a45f3bb0.1674037830.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674037830.git.geert+renesas@glider.be>
References: <cover.1674037830.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_023937_615602_00A53B8D 
X-CRM114-Status: UNSURE (   6.83  )
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

The NXP TJR1443 High-speed CAN transceiver with Sleep mode is a
pin-compatible alternative for the TI TCAN1043.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 02b76f15e7170231..237295b2b5a86a21 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -15,6 +15,7 @@ properties:
 
   compatible:
     enum:
+      - nxp,tjr1443
       - ti,tcan1042
       - ti,tcan1043
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
