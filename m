Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C1B4C27C5E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jun 2024 10:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJ/Vij/Sfj2tuM0svyyCppQfWf7BcH8w+W2S09x1WO4=; b=Ixm43UO1eWbSYR
	R8wj/NKbRgmPoJdayPw8bcZkmOpq/QOunxTuEqJuwnQ8fkWEaPZU6je/OYuc+r6OKJIJoJ+nMXkMt
	H1FRN2BbLRoVZVdFbeVaWt8gh4pCVfq81cZbaD9Gu5rKfUq2g7mhBrQoJm889BUd1x7v7Exi5gw97
	/YvAZONEpvE9Hriz7aeXXkYYgBJSPh3q3pFfFH/i0/lnyp53dgBjGJeAW9T43YHTs6ToQ5iO6z9ST
	+h3EFV34+hLAlx3P8daZrwGXq35SwxXJww9YtNQFDSN979URy7IoxZi55T/GCmLfPZAhx/Tuoy80M
	cqY5ScHGE2GiESUFQAew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzDz-00000008YEV-2Czn;
	Tue, 11 Jun 2024 10:59:35 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzDv-00000008YDQ-30tn
	for linux-phy@lists.infradead.org;
	Tue, 11 Jun 2024 10:59:33 +0000
X-IronPort-AV: E=Sophos;i="6.08,229,1712588400"; 
   d="scan'208";a="211445801"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 11 Jun 2024 19:59:30 +0900
Received: from localhost.localdomain (unknown [10.226.93.49])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id C287440078D0;
	Tue, 11 Jun 2024 19:59:25 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v3 1/6] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document USB VBUS regulator
Date: Tue, 11 Jun 2024 11:59:12 +0100
Message-Id: <20240611105917.57872-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240611105917.57872-1-biju.das.jz@bp.renesas.com>
References: <20240611105917.57872-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_035931_907990_D9CA00C5 
X-CRM114-Status: UNSURE (   7.21  )
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

The VBUS enable can be controlled by the VBOUT bit of the VBUS control
register. This register is part of usbphy-ctrl IP.

Document the USB VBUS regulator object.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3:
 * New patch
---
 .../bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml    | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index 03c18611e42d..cfe479df0f41 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
@@ -42,6 +42,12 @@ properties:
       0 = Port 1 Phy reset
       1 = Port 2 Phy reset
 
+  regulator-vbus:
+    type: object
+    description: USB VBUS regulator
+    $ref: /schemas/regulator/regulator.yaml#
+    unevaluatedProperties: false
+
 required:
   - compatible
   - reg
@@ -49,6 +55,7 @@ required:
   - resets
   - power-domains
   - '#reset-cells'
+  - regulator-vbus
 
 additionalProperties: false
 
@@ -64,4 +71,9 @@ examples:
         resets = <&cpg R9A07G044_USB_PRESETN>;
         power-domains = <&cpg>;
         #reset-cells = <1>;
+        regulator-vbus {
+          regulator-name = "vbus";
+          regulator-min-microvolt = <5000000>;
+          regulator-max-microvolt = <5000000>;
+        };
     };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
