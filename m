Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9876ECAC592
	for <linux-phy@archiver.kernel.org>; Mon, 15 Sep 2025 13:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtZ2839gwZZ9qvqAZI267vuEsKlIlsJ7QI9oGf7g9Vo=; b=CCiseB6SvxO0CT
	WMtVOYpXFGdY4YPc5vbJkHic7ivHjIIlcIr34zvnEsv0bUmsxJq9sOEsFev+rK8hQfau+BziEBOjb
	X/yhEW9R/lpM7agVvAXF+fapGxUo4tZfX9L7hY1pdlVkmnUrQFTas0eqA7wj+3gzSd9MBQra9GWU8
	Gwu83ZMFIyxBefIYOmka8C5KLEmjuLhx0msEIjyIneuBYz4V3w9NDdpRYP1zuzU3f5Tn3VZ5Xs813
	hcvZSOurn4BSbbvWwofAd1NIy0rCURwKx/DsnjpYYTA+hhj4MwDMJoAVZLrg9DmOmL+/npmVdxtqq
	ckvbHJHCvSFUqquyfYDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy9dc-00000004TvT-16fV;
	Mon, 15 Sep 2025 13:53:00 +0000
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net ([206.189.21.223])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy9dZ-00000004Ttm-1Q6b
	for linux-phy@lists.infradead.org;
	Mon, 15 Sep 2025 13:52:58 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app2 (Coremail) with SMTP id TQJkCgAXqZIuGshomW_RAA--.39132S2;
	Mon, 15 Sep 2025 21:52:49 +0800 (CST)
From: Yulin Lu <luyulin@eswincomputing.com>
To: dlemoal@kernel.org,
	cassel@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	linux-phy@lists.infradead.org
Cc: ningyu@eswincomputing.com,
	zhengyu@eswincomputing.com,
	linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>
Subject: [PATCH v4 1/3] dt-bindings: ata: eswin: Document for EIC7700 SoC ahci
Date: Mon, 15 Sep 2025 21:52:32 +0800
Message-Id: <20250915135232.1852-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: <20250915135138.877-1-luyulin@eswincomputing.com>
References: <20250915135138.877-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
X-CM-TRANSID: TQJkCgAXqZIuGshomW_RAA--.39132S2
X-Coremail-Antispam: 1UD129KBjvJXoWxZw4fGF4xAFyDWr4xGrW3Jrb_yoW5Aw1rpF
	s7GrZrJFs2qryxXayxJF10kF1S9ws3CFyYkr1xt3W7JrZ8Wa4vqrsIy3W5Ga47Jr1xX34a
	gFy3K3yjya12vrJanT9S1TB71UUUUUDqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9C14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_Wrv_ZF1lc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8Jr0_Cr1UYxBIdaVFxhVjvjDU0xZFpf9x0pRxwIDUUUUU=
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_065257_624162_916FFC49 
X-CRM114-Status: GOOD (  14.06  )
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

Document the SATA AHCI controller on the EIC7700 SoC platform,
including descriptions of its hardware configurations.

Retains the "ports-implemented" property in the DTS, because
removing it and relying only on the firmware register causes
problems. If the property is not present and we remove the
module using `rmmod`, a reset is triggered that clears the
register. As a result, inserting module again using `insmod`
will lead to errors.

The detailed reasons are that the ports-implemented register is
configured by the firmware (U-Boot on the HiFive Premier P550 board)
before kernel entry and correctly set to 0x1. During probe,
ahci_platform_enable_resources() -> ahci_platform_deassert_rsts() is
called, and when the driver is removed,
ahci_platform_disable_resources() -> ahci_platform_assert_rsts() is
called. This reset clears the register, which is defined by the IP
databook to reset to 0.

Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
---
 .../bindings/ata/eswin,eic7700-ahci.yaml      | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml

diff --git a/Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml b/Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml
new file mode 100644
index 000000000000..40c44f0705ba
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/eswin,eic7700-ahci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Eswin EIC7700 SoC SATA Controller
+
+maintainers:
+  - Yulin Lu <luyulin@eswincomputing.com>
+  - Huan He <hehuan1@eswincomputing.com>
+
+description:
+  AHCI SATA controller embedded into the EIC7700 SoC
+  is based on the DWC AHCI SATA v5.00a IP core.
+
+select:
+  properties:
+    compatible:
+      const: eswin,eic7700-ahci
+  required:
+    - compatible
+
+allOf:
+  - $ref: snps,dwc-ahci-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: eswin,eic7700-ahci
+      - const: snps,dwc-ahci
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: aclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: arst
+
+  ports-implemented:
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - phys
+  - phy-names
+  - ports-implemented
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    sata@50420000 {
+        compatible = "eswin,eic7700-ahci", "snps,dwc-ahci";
+        reg = <0x50420000 0x10000>;
+        interrupt-parent = <&plic>;
+        interrupts = <58>;
+        clocks = <&clock 171>, <&clock 186>;
+        clock-names = "pclk", "aclk";
+        phys = <&sata_phy>;
+        phy-names = "sata-phy";
+        ports-implemented = <0x1>;
+        resets = <&reset 96>;
+        reset-names = "arst";
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
