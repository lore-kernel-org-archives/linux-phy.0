Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AE0ECAC5B9
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 08:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XKYB+2GeEr/kNgzyYTIWfhPlvJUzhS3rAZrxuKNCJI=; b=sp22bIOxB+M9td
	E4UaLRDJF/QlwgHmnSGiW0LaEjVRBfgBDV/fSMLPWvE2bNLYVB19aTGuy7/V1JtKkH2qeI1sUiznO
	eKLO+b55FMQrlYzMo9fpcRZa/4OA3u7IvlCN9s217ovfRbdCKcZpjY7tEXzFLfh13m+1YV0p1Gtx2
	udIWtDoyfOvpk6YPYi5qwpc31vXQqUPvHnfoaPrrrfxYQ6CI4/n6TyH4w2jf03RadnjBa8V9IdQrO
	nacbHfMhaQW2HHgBxNsxgjm15qxUjlt/qjRk+NWEuwNY0tHssc0yz8s0bczq357PpQ5t35hskJF+D
	bF6SDFTKWhYo4QeS6o4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Vxx-00000004gKV-47s7;
	Tue, 30 Sep 2025 08:44:10 +0000
Received: from zg8tmja2lje4os43os4xodqa.icoremail.net ([206.189.79.184])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Vxv-00000004gJS-3ESU
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 08:44:09 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app2 (Coremail) with SMTP id TQJkCgC3SZNGmNtohqXuAA--.21841S2;
	Tue, 30 Sep 2025 16:43:55 +0800 (CST)
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
Subject: [PATCH v5 1/3] dt-bindings: ata: eswin: Document for EIC7700 SoC ahci
Date: Tue, 30 Sep 2025 16:43:48 +0800
Message-Id: <20250930084348.100-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: <20250930083754.15-1-luyulin@eswincomputing.com>
References: <20250930083754.15-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
X-CM-TRANSID: TQJkCgC3SZNGmNtohqXuAA--.21841S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Kr4UAw4rtFWrGr1xJw15twb_yoW8tr47pF
	4kGrZrJF4SgryxXay7GF10kF1ftws7CF1Ykr1xt3WUKrZ8Was0qrsIk3W5Ga43Jw1xXa4a
	gFy3K342ya12vrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_GFv_Wrylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7sRRKZX5UUUUU==
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_014407_808726_BAB62460 
X-CRM114-Status: UNSURE (   9.17  )
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

Document the SATA AHCI controller on the EIC7700 SoC platform,
including descriptions of its hardware configurations.

Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
---
 .../bindings/ata/eswin,eic7700-ahci.yaml      | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml

diff --git a/Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml b/Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml
new file mode 100644
index 000000000000..6554e30018b3
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
+  AHCI SATA controller embedded into the EIC7700 SoC is based on the DWC AHCI
+  SATA v5.00a IP core.
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
