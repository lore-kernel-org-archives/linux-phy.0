Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCEB5C02188
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jan 2025 13:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RGH4BaSHAFEItb0fdS5+u5Hhn3UDYSXq0+5rprrKrY=; b=e45WDa/IHCRNVB
	69ItnIXXV2ZDM/CRBBIyqbj9q6ADD7jbgk6zyHaty1FlvA6RCgeeoVSEI26Gj1AJEjuuBl/prve3s
	1G4XHcbr+J7alFaQuZCxUeWtckRkHajLrEOjb3iuPd3n5dcZSVsZm3TgMiX5wqz1jgTHktAGOes4a
	0S9L9RDzBI4417W4jxZ1/eagt4GqzkHq0FtwIfhzXyAEaS24U6AekqMv8Co6g7IRq7/eCFSyAadzl
	UZOKztzuQ88kodAbJKBtRrKOl0H7ovrdC3M/p1invSN0l9IVCv/Mx/1TUCA1jB7bgGga8SfSFEbAX
	R2tMHbeYwRk2g+XQTpYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYm1p-00000000JGw-2Ed6;
	Fri, 17 Jan 2025 13:04:49 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYm1l-00000000JCq-3IrM
	for linux-phy@lists.infradead.org;
	Fri, 17 Jan 2025 13:04:48 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:e8f3:e87e:7352:b33b])
	by laurent.telenet-ops.be with cmsmtp
	id 2D4g2E00627fVKr01D4gmC; Fri, 17 Jan 2025 14:04:40 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1a-0000000DPU3-35Ex;
	Fri, 17 Jan 2025 14:04:40 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1f-00000004wB7-3R4I;
	Fri, 17 Jan 2025 14:04:39 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Herve Codina <herve.codina@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 1/3] dt-bindings: interrupt-controller: microchip,lan966x-oic: Clarify endpoint use
Date: Fri, 17 Jan 2025 14:04:36 +0100
Message-ID: <0f2d1bcb431827b65b2c0ba6619d9126ec97da72.1737118595.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1737118595.git.geert+renesas@glider.be>
References: <cover.1737118595.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_050445_961657_AE7A1A6A 
X-CRM114-Status: GOOD (  10.57  )
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
---
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
