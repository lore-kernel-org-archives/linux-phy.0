Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24524E7FDF3
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 00:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53EXkGulkwZ3SPGtRus0zFh1/rJCVMoXzKmE7dmupVo=; b=bgpTW1V168lrgW
	/EJrAb2j/1A4dXBwj5Xwh2PmKLipeXj7jtReCeVvubU1g6z+dV1Q+7pK/agy6ON6oza5UlHteRnzf
	EJoOz9bkvMPERRvnmkWRNMVwy0pJhkDf4Goz/YvAExnmpaOrK2pALoEeRx8DPFPkonxagFWxFt9tf
	9oOp0+kkkN8Yz2lbK7RklTflMZ/cVhCFJVEeN/PzvL2I7Im3Z4cr2kgylPIniwsOqDh0Dctc/j7lB
	Gg+fF/q+gVhdNSRPyyraev1Wgz9q4bOmoNSFGmttHovCmpEjloBJpHX+yG0bPs5TgiF4OcsUHocwo
	bWojlGL/GMK85ef7PbKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn4B0-00000005miL-3JA7;
	Tue, 03 Feb 2026 00:21:54 +0000
Received: from out-189.mta0.migadu.com ([2001:41d0:1004:224b::bd])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn4Ax-00000005mew-1tGP
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 00:21:52 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770078107;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cuOWsCVIuR/WP5JRTGWbVJdWhDaeD5ZnnFP7ct7wKpA=;
	b=W7r5iL5hkTeQqW8Tiz4WLikSlkj4xcLTE/siInq6WUpr63vnkN3X7yN6abAqkxH0s5s6Ax
	oGrpdEON//phRH0Qy8HTJ5YB7JGd95fAeoarSq3vpBpn/QjbLoxjZderDJpwRRB5z0nPZH
	m+9cFfB2Ofzw3aDCUV7etEuM9laF1T8=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/8] dt-bindings: pci: xilinx-nwl: Add resets
Date: Mon,  2 Feb 2026 19:21:21 -0500
Message-Id: <20260203002128.935842-2-sean.anderson@linux.dev>
In-Reply-To: <20260203002128.935842-1-sean.anderson@linux.dev>
References: <20260203002128.935842-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_162151_622595_1B331456 
X-CRM114-Status: UNSURE (   5.98  )
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

Add resets so we can hold the bridge in reset while we perform phy
calibration.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 .../devicetree/bindings/pci/xlnx,nwl-pcie.yaml  | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
index 9de3c09efb6e..7efb3dd9955f 100644
--- a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
@@ -69,6 +69,18 @@ properties:
   power-domains:
     maxItems: 1
 
+  resets:
+    maxItems: 3
+
+  reset-names:
+    items:
+      - description: APB register block reset
+        const: cfg
+      - description: AXI-PCIe bridge reset
+        const: bridge
+      - description: PCIe MAC reset
+        const: ctrl
+
   iommus:
     maxItems: 1
 
@@ -117,6 +129,7 @@ examples:
     #include <dt-bindings/interrupt-controller/irq.h>
     #include <dt-bindings/phy/phy.h>
     #include <dt-bindings/power/xlnx-zynqmp-power.h>
+    #include <dt-bindings/reset/xlnx-zynqmp-resets.h>
     soc {
         #address-cells = <2>;
         #size-cells = <2>;
@@ -146,6 +159,10 @@ examples:
             msi-parent = <&nwl_pcie>;
             phys = <&psgtr 0 PHY_TYPE_PCIE 0 0>;
             power-domains = <&zynqmp_firmware PD_PCIE>;
+            resets = <&zynqmp_reset ZYNQMP_RESET_PCIE_CFG>,
+                     <&zynqmp_reset ZYNQMP_RESET_PCIE_BRIDGE>,
+                     <&zynqmp_reset ZYNQMP_RESET_PCIE_CTRL>;
+            reset-names = "cfg", "bridge", "ctrl";
             iommus = <&smmu 0x4d0>;
             pcie_intc: legacy-interrupt-controller {
                 interrupt-controller;
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
