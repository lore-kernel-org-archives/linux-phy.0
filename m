Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA9E8C02185
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 14:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YF760yN4n1ad3WFHz96vy+4PF2zDQLVqkA58HyYSirQ=; b=BWV0XpoR7r3RqZ
	4KNzXIH64hBgYpLxbCyaG6fg6Vh+016h77wArY5pByMlosqQs9QQHMShrjCZyzTcFcHh/Jl9d+B0b
	EpfbubzE0z2tQKYKEbAOai7go420KMpw8hPjSdmndJEhzZGNtN1yL91+ypl30etfOGgH00sanlGVE
	1OQmHgytXDTfmahhy4kiDnHLlcY6eXzYhyGJ+4lBhv5tVzW7dyqGI1ET6IXizRcheTyaAiABVP7zs
	KkxFR3o4DtIcClBdPw4Hy1CwLJBuFn679JvGITK6URTGbe8jM0/YVvA4iWm318xrrGl65x40nnhYi
	7C6m8E4fhM+Ul/JAMCrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsry-00000005nvt-2Syy;
	Mon, 20 Jan 2025 14:35:14 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsru-00000005nt5-017S
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 14:35:11 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:30c9:4dcf:fe21:4b10])
	by xavier.telenet-ops.be with cmsmtp
	id 3Sb42E00D0raqVW01Sb4Zg; Mon, 20 Jan 2025 15:35:06 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsrh-0000000DhTT-3Lpi;
	Mon, 20 Jan 2025 15:35:04 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsro-0000000DTZR-1JIG;
	Mon, 20 Jan 2025 15:35:04 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: =?UTF-8?q?Herv=C3=A9=20Codina?= <herve.codina@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: interrupt-controller: microchip,lan966x-oic: Clarify endpoint use
Date: Mon, 20 Jan 2025 15:35:01 +0100
Message-ID: <247b1185c93610100f3f8c9e0ab2c1506e53e1f4.1737383314.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1737383314.git.geert+renesas@glider.be>
References: <cover.1737383314.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_063510_181737_F81514C1 
X-CRM114-Status: GOOD (  11.32  )
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

Reword the description, to make it clear that the LAN966x Outbound
Interrupt Controller is used only in PCI endpoint mode.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Herve Codina <herve.codina@bootlin.com>
---
v3:
  - Add Acked-by,

v2:
  - New.
---
 .../bindings/interrupt-controller/microchip,lan966x-oic.yaml | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/microchip,lan966x-oic.yaml b/Documentation/devicetree/bindings/interrupt-controller/microchip,lan966x-oic.yaml
index b2adc71741770940..dca16e202da992cd 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/microchip,lan966x-oic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/microchip,lan966x-oic.yaml
@@ -14,9 +14,8 @@ allOf:
 
 description: |
   The Microchip LAN966x outband interrupt controller (OIC) maps the internal
-  interrupt sources of the LAN966x device to an external interrupt.
-  When the LAN966x device is used as a PCI device, the external interrupt is
-  routed to the PCI interrupt.
+  interrupt sources of the LAN966x device to a PCI interrupt when the LAN966x
+  device is used as a PCI device.
 
 properties:
   compatible:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
