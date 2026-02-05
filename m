Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12770E91290
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 08:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hF0Cd7pKG0kkp9mtpDRg9nW9LE4HW0Cn+oRF1grrgOs=; b=atcLZPrWE4Fh9M
	KLKs6PTJb8QURdee5NenGd6VDUFDaAi0rpxSb56OEIkXY//hq+u4j2ppnt/Oqx/7+SYajI7wHz5ON
	Nxz29Ek1vmPwYGCxrCbzC4GzgJSQGYWkb7wymCVNgdRchFYbixNgFv9DnE4mi3fiqrkYcVMqZQ1hM
	92XHXn0mO3BbC74/OagAeJ5MOY2zj1jiPEykCakMecX4cc4jF5hP6wOIIrGvWf2l/IpNod2zm+55K
	eEAwduURu8yIehT9Es6l2XWCDJ8b9ndRqvGJZ0EXa0VFTPqGvbw2zIr/IhZskbjOxBig1oCrom41G
	7F6y96mdulX2aM8cY2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnucX-00000009bhh-3NGz;
	Thu, 05 Feb 2026 08:21:49 +0000
Received: from azure-sdnproxy.icoremail.net ([207.46.229.174])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnucV-00000009bhJ-0j00
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 08:21:49 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app1 (Coremail) with SMTP id TAJkCgBntzcLU4RpG+oCAA--.13822S2;
	Thu, 05 Feb 2026 16:21:32 +0800 (CST)
From: Yulin Lu <luyulin@eswincomputing.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com,
	linmin@eswincomputing.com,
	fenglin@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>
Subject: [PATCH v9 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
Date: Thu,  5 Feb 2026 16:21:29 +0800
Message-Id: <20260205082129.1482-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: <20260205082009.1780-1-luyulin@eswincomputing.com>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
X-CM-TRANSID: TAJkCgBntzcLU4RpG+oCAA--.13822S2
X-Coremail-Antispam: 1UD129KBjvJXoWxCw4ruw47Kr1DtFy8trykGrg_yoW5XF18pF
	s3Wry8Xrn3uF17uw43G3WIkF1fJan7CF4Ykr4Igas0qFs0q3ZYqF4akF1Yk34UCr18Za47
	ZFsIq347Aa17ZrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_Jw0_GFylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VU13ku3UUUUU==
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_002147_570611_D779F502 
X-CRM114-Status: UNSURE (   9.62  )
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

Document the SATA PHY on the EIC7700 SoC platform,
describing its usage.

Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
---
 .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
new file mode 100644
index 000000000000..fc7dbac77acf
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/eswin,eic7700-sata-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Eswin EIC7700 SoC SATA PHY
+
+maintainers:
+  - Yulin Lu <luyulin@eswincomputing.com>
+  - Huan He <hehuan1@eswincomputing.com>
+
+properties:
+  compatible:
+    const: eswin,eic7700-sata-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: phy
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: port
+      - const: phy
+
+  eswin,tx-amplitude-tuning:
+    description: This adjusts the transmitter amplitude signal, and its value
+      is derived from eye diagram tuning. The three values correspond to Gen1,
+      Gen2, and Gen3 parameters respectively.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      - description: Gen1 parameter.
+        minimum: 0
+        maximum: 0x7f
+      - description: Gen2 parameter.
+        minimum: 0
+        maximum: 0x7f
+      - description: Gen3 parameter.
+        minimum: 0
+        maximum: 0x7f
+    default: [0, 0, 0]
+
+  eswin,tx-preemph-tuning:
+    description: This adjusts the transmitter de-emphasis signal, and its value
+      is derived from eye diagram tuning. The three values correspond to Gen1,
+      Gen2, and Gen3 parameters respectively.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      - description: Gen1 parameter.
+        minimum: 0
+        maximum: 0x3f
+      - description: Gen2 parameter.
+        minimum: 0
+        maximum: 0x3f
+      - description: Gen3 parameter.
+        minimum: 0
+        maximum: 0x3f
+    default: [0, 0, 0]
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    sata-phy@50440300 {
+        compatible = "eswin,eic7700-sata-phy";
+        reg = <0x50440300 0x40>;
+        clocks = <&hspcrg 17>;
+        clock-names = "phy";
+        resets = <&hspcrg 0>, <&hspcrg 1>;
+        reset-names = "port", "phy";
+        #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
