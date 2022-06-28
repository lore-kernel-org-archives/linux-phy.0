Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E081FC43334
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7LvvNnH00V3sBepGQY2L37PK/ct7pGhKwZ0rA4wSBk=; b=EUGdHSUgIeulgz
	a97gUbLjrbbe93S2u0A4NxVNqrq7+Juzbe9MYG3JsdkRDCU5BjrKpn+UoQIfOqRhcjo1tp6dRyUp6
	/4E297HVDfv4o4CYhg8QqS6iW0P3CnJYUFSbRGE3kmuBSQcWoz+KQD5hd6hOgiArRdqt2tHRKewIS
	VxiTBdx6UzDG+mxocGiDm/0EzrwPzbYo05bA/hn59RVRKcfVx2LvSjiPFS8T4QkafHN1KqV4YWd5r
	vcvprQvLkHqDcWZ+Sfr/EkfwprcUaAM16iETHonaepIII5qf+QNb2pbtBB1OBUOZnj0OHu0NHZSV5
	ONey3aTyUckRfxaSisoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFf-0069eU-AX; Tue, 28 Jun 2022 12:23:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFb-0069cy-Va
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:23:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1593661471;
	Tue, 28 Jun 2022 12:23:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55B11C341CA;
	Tue, 28 Jun 2022 12:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656419005;
	bh=SmqaQDNLD/5+VbZXpZxV6RGZ6+ob/LvJ25zs+IIEgoA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YVCm1kwexQmPi05+mfii6ESvEleglXwgOHzBVhuvhGo4HP0VCgTMC+pJS//xGUXO9
	 l4lvreqRYEuyiVXOmdh8nxSwIjl7aNuMTWMG386GCB0uQI6eBZJr+JMsPpyfObx1EI
	 dxxYfMr+HsF6XLgPkOc2vcMvy2/9ceuNDlVGQN+qMQIhhp1rCD3JItN0gomxE43fDs
	 dW0Myl451THIzRUxYeEjhxLqrTPxu/CyI7sFb0GZm9aDEF/PdhEpmur4J0weH/qqHP
	 vnZnKhUP0zsGRAcjJAByrR/0/QNqGVR/4BsAHMUwxt5l6HFOudPo6ucFljBeSFI4a7
	 7YNYmxpvZah5w==
From: Roger Quadros <rogerq@kernel.org>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: vigneshr@ti.com,
	t-patil@ti.com,
	sjakhade@cadence.com,
	s-vadapalli@ti.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 5/7] dt-bindings: phy: ti,phy-j721e-wiz: Add support for ti,j7200-wiz-10g
Date: Tue, 28 Jun 2022 15:22:53 +0300
Message-Id: <20220628122255.24265-6-rogerq@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220628122255.24265-1-rogerq@kernel.org>
References: <20220628122255.24265-1-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_052328_089935_3475872C 
X-CRM114-Status: UNSURE (   9.47  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

ti,j7200-wiz-10g supports an additional reference clock.
Add compatible and the additional clock.

Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 .../bindings/phy/ti,phy-j721e-wiz.yaml        | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index 3127bb648427..8305654b66c9 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -16,19 +16,23 @@ properties:
       - ti,j721e-wiz-16g
       - ti,j721e-wiz-10g
       - ti,am64-wiz-10g
+      - ti,j7200-wiz-10g
 
   power-domains:
     maxItems: 1
 
   clocks:
-    maxItems: 3
+    minItems: 3
+    maxItems: 4
     description: clock-specifier to represent input to the WIZ
 
   clock-names:
+    minItems: 3
     items:
       - const: fck
       - const: core_ref_clk
       - const: ext_ref_clk
+      - const: core_ref1_clk
 
   num-lanes:
     minimum: 1
@@ -106,6 +110,11 @@ properties:
       - assigned-clocks
       - assigned-clock-parents
 
+  ti,scm:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: |
+      phandle to System Control Module for syscon regmap access.
+
 patternProperties:
   "^pll[0|1]-refclk$":
     type: object
@@ -173,6 +182,16 @@ required:
   - "#reset-cells"
   - ranges
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,j7200-wiz-10g
+    then:
+      required:
+        - ti,scm
+
 additionalProperties: false
 
 examples:
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
