Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD536C4345F
	for <linux-phy@archiver.kernel.org>; Fri, 26 Apr 2024 20:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+wDTaEMIZOP5rkeGuJYyOiwuBQHQ3H7XmCGrFP7y99Q=; b=a3fkXvxJcv/JHj
	IpL2slHqpu17nWUBMz2NSIGdXujY6nnBDFPYWrWYtsZycVCDcL0eLABUWEyq76Z6NHq/ycPOdKmpT
	OE7ogE+qN+8GJqZM5mxduvVqvm2jKJquM21MIKiX0lMYm7LMjxLsKP0/cTEph7ov2FoGknJMk19TR
	DV4hpd/EmCqAVs2fcvzyOiO1IVfqgZo0Qe8t2AYIXH4QhOXMaPuImrJnJbrsvA8Ow1DESOt/Y5J22
	43Gwe/WYXXwwnGQ5HQ+bo9EmG4RKQ6dvLxIVUtD+6ekc5V/5XmLTO8yAjxH+3A96AnSklKgcTbn62
	8Yujc81IgRGREH5JllIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0S67-0000000Dw7i-0ocy;
	Fri, 26 Apr 2024 20:23:07 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0S64-0000000Dw6J-0AQf;
	Fri, 26 Apr 2024 20:23:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 04502CE1C6B;
	Fri, 26 Apr 2024 20:23:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA3D1C113CD;
	Fri, 26 Apr 2024 20:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714162981;
	bh=GbaTYwdZ8id3LPa579gAi+LysdGAYbNVBDYDNoM7P+o=;
	h=From:To:Cc:Subject:Date:From;
	b=BDt7XFC5+ZlqbRPkXwezHFzXgsKBQ233OU/DL9YQ4CO8IvTo1gw/IpfQXQ2kyd6g7
	 9Ms/jBsIMGaVM2n7UsxElrXKY+ChUQsNPLXBWXN1suiLlr0KQYBdPYBweG6fVFUja+
	 zyKACwTXpGSZTjSOkd8B0ob4kTLQBV3TK+vaAXHgB1vZXo4WldQmBM7I4GVTFiZRQH
	 y/uRsqc2XcZ7OjqpGyV8U9RA+7CRi1E3hlLwXucNJmX4njy26oSR0YpHauNSMcdoEW
	 aVy3/SoitHOWufMcdRUft+hv6eYaTzPvWyOOKw1/8GBN9Q002HWo5k71l41zLqm8xd
	 HT2AgHiysMayQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH] dt-bindings: Drop unnecessary quotes on keys
Date: Fri, 26 Apr 2024 15:22:37 -0500
Message-ID: <20240426202239.2837516-1-robh@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_132304_461228_1AD3F5DC 
X-CRM114-Status: GOOD (  13.15  )
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

The yamllint quoted-strings check wasn't checking keys for quotes, but
support for checking keys was added in 1.34 release. Fix all the errors
found when enabling the check.

Clean-up the xilinx-versal-cpm formatting while we're here.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/net/sff,sfp.yaml   | 12 ++++++------
 .../devicetree/bindings/pci/xilinx-versal-cpm.yaml   |  7 +++++--
 .../devicetree/bindings/pci/xlnx,nwl-pcie.yaml       |  2 +-
 .../devicetree/bindings/phy/brcm,sata-phy.yaml       |  8 ++++----
 .../devicetree/bindings/regulator/ti,tps62864.yaml   |  2 +-
 .../bindings/soc/tegra/nvidia,tegra20-pmc.yaml       |  6 +++---
 Documentation/devicetree/bindings/tpm/ibm,vtpm.yaml  |  4 ++--
 7 files changed, 22 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/sff,sfp.yaml b/Documentation/devicetree/bindings/net/sff,sfp.yaml
index bf6cbc7c2ba3..90611b598d2b 100644
--- a/Documentation/devicetree/bindings/net/sff,sfp.yaml
+++ b/Documentation/devicetree/bindings/net/sff,sfp.yaml
@@ -29,39 +29,39 @@ properties:
       allowable by a module in the slot, in milli-Watts. Presently, modules can
       be up to 1W, 1.5W or 2W.
 
-  "mod-def0-gpios":
+  mod-def0-gpios:
     maxItems: 1
     description:
       GPIO phandle and a specifier of the MOD-DEF0 (AKA Mod_ABS) module
       presence input gpio signal, active (module absent) high. Must not be
       present for SFF modules
 
-  "los-gpios":
+  los-gpios:
     maxItems: 1
     description:
       GPIO phandle and a specifier of the Receiver Loss of Signal Indication
       input gpio signal, active (signal lost) high
 
-  "tx-fault-gpios":
+  tx-fault-gpios:
     maxItems: 1
     description:
       GPIO phandle and a specifier of the Module Transmitter Fault input gpio
       signal, active (fault condition) high
 
-  "tx-disable-gpios":
+  tx-disable-gpios:
     maxItems: 1
     description:
       GPIO phandle and a specifier of the Transmitter Disable output gpio
       signal, active (Tx disable) high
 
-  "rate-select0-gpios":
+  rate-select0-gpios:
     maxItems: 1
     description:
       GPIO phandle and a specifier of the Rx Signaling Rate Select (AKA RS0)
       output gpio signal, low - low Rx rate, high - high Rx rate Must not be
       present for SFF modules
 
-  "rate-select1-gpios":
+  rate-select1-gpios:
     maxItems: 1
     description:
       GPIO phandle and a specifier of the Tx Signaling Rate Select (AKA RS1)
diff --git a/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml b/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml
index 4734be456bde..c41344f8a242 100644
--- a/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml
+++ b/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml
@@ -48,13 +48,16 @@ properties:
   interrupt-controller:
     description: Interrupt controller node for handling legacy PCI interrupts.
     type: object
+    additionalProperties: false
+
     properties:
       "#address-cells":
         const: 0
+
       "#interrupt-cells":
         const: 1
-      "interrupt-controller": true
-    additionalProperties: false
+
+      interrupt-controller: true
 
 required:
   - reg
diff --git a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
index 426f90a47f35..cbe832c23dae 100644
--- a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
@@ -84,7 +84,7 @@ properties:
       "#interrupt-cells":
         const: 1
 
-      "interrupt-controller": true
+      interrupt-controller: true
 
     required:
       - "#address-cells"
diff --git a/Documentation/devicetree/bindings/phy/brcm,sata-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,sata-phy.yaml
index 8467c8e6368c..439bda142764 100644
--- a/Documentation/devicetree/bindings/phy/brcm,sata-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/brcm,sata-phy.yaml
@@ -59,14 +59,14 @@ patternProperties:
       "#phy-cells":
         const: 0
 
-      "brcm,enable-ssc":
+      brcm,enable-ssc:
         $ref: /schemas/types.yaml#/definitions/flag
         description: |
           Use spread spectrum clocking (SSC) on this port
           This property is not applicable for "brcm,iproc-ns2-sata-phy",
           "brcm,iproc-nsp-sata-phy" and "brcm,iproc-sr-sata-phy".
 
-      "brcm,rxaeq-mode":
+      brcm,rxaeq-mode:
         $ref: /schemas/types.yaml#/definitions/string
         description:
           String that indicates the desired RX equalizer mode.
@@ -75,7 +75,7 @@ patternProperties:
           - auto
           - manual
 
-      "brcm,rxaeq-value":
+      brcm,rxaeq-value:
         $ref: /schemas/types.yaml#/definitions/uint32
         description: |
             When 'brcm,rxaeq-mode' is set to "manual", provides the RX
@@ -83,7 +83,7 @@ patternProperties:
         minimum: 0
         maximum: 63
 
-      "brcm,tx-amplitude-millivolt":
+      brcm,tx-amplitude-millivolt:
         description: |
             Transmit amplitude voltage in millivolt.
         $ref: /schemas/types.yaml#/definitions/uint32
diff --git a/Documentation/devicetree/bindings/regulator/ti,tps62864.yaml b/Documentation/devicetree/bindings/regulator/ti,tps62864.yaml
index 0f29c75f42ea..dddea27596e9 100644
--- a/Documentation/devicetree/bindings/regulator/ti,tps62864.yaml
+++ b/Documentation/devicetree/bindings/regulator/ti,tps62864.yaml
@@ -24,7 +24,7 @@ properties:
     type: object
 
     properties:
-      "SW":
+      SW:
         type: object
         $ref: regulator.yaml#
         unevaluatedProperties: false
diff --git a/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml b/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml
index b86f6f53ca95..7140c312d898 100644
--- a/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml
+++ b/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml
@@ -365,9 +365,9 @@ allOf:
 additionalProperties: false
 
 dependencies:
-  "nvidia,suspend-mode": ["nvidia,core-pwr-off-time", "nvidia,cpu-pwr-off-time"]
-  "nvidia,core-pwr-off-time": ["nvidia,core-pwr-good-time"]
-  "nvidia,cpu-pwr-off-time": ["nvidia,cpu-pwr-good-time"]
+  nvidia,suspend-mode: ["nvidia,core-pwr-off-time", "nvidia,cpu-pwr-off-time"]
+  nvidia,core-pwr-off-time: ["nvidia,core-pwr-good-time"]
+  nvidia,cpu-pwr-off-time: ["nvidia,cpu-pwr-good-time"]
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/tpm/ibm,vtpm.yaml b/Documentation/devicetree/bindings/tpm/ibm,vtpm.yaml
index 50a3fd31241c..8b0d3d4be5d8 100644
--- a/Documentation/devicetree/bindings/tpm/ibm,vtpm.yaml
+++ b/Documentation/devicetree/bindings/tpm/ibm,vtpm.yaml
@@ -33,13 +33,13 @@ properties:
   reg:
     maxItems: 1
 
-  'ibm,#dma-address-cells':
+  ibm,#dma-address-cells:
     description:
       number of cells that are used to encode the physical address field of
       dma-window properties
     $ref: /schemas/types.yaml#/definitions/uint32-array
 
-  'ibm,#dma-size-cells':
+  ibm,#dma-size-cells:
     description:
       number of cells that are used to encode the size field of
       dma-window properties
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
