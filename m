Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 301C5D6CFB0
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 02:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lo2X367hqksZ+VWB101nyH021KgSETz4yRG/BqVnSd0=; b=armso5kfXchDZa
	j0yDmxy+c+AYTX2x7dW4Y7qpKu90oeDd5IQ7H+yDzMxRBdyy8DdiLkrtxcAtjen+l6NG26k5sEl3s
	Hn0bc8gxoB0GgfQvCoxEEFQu5muAOwX+WgnYMAuUyDmiMPUc3YDGITawuCIAV6vnkKxIDCqqoB0Nj
	Ppo4LZbj3hZWt1TjfqOBPiXq0+i3eHv8IkLjjFSwbVdNGBYt/wE5og5SMVnvSdcS3YmDlPN89jfPI
	RsDNNklQDDZTJKqbHpCXmGgjdOtezTbANfulxnqkfyKIdGyckBbvKq3jdtueQ7Fj42X0U5uOcFK6V
	NLudPsl2vvdTg4TpI7Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vj7FG-0000000844T-36Le;
	Fri, 23 Jan 2026 02:49:58 +0000
Received: from sgoci-sdnproxy-4.icoremail.net ([129.150.39.64])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vj7FD-0000000843Y-3Frw
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 02:49:57 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app2 (Coremail) with SMTP id TQJkCgBXyy3D4XJpfe4EAA--.19977S2;
	Fri, 23 Jan 2026 10:49:41 +0800 (CST)
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
Subject: [PATCH v8 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
Date: Fri, 23 Jan 2026 10:49:36 +0800
Message-Id: <20260123024936.386-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: <20260123024823.1612-1-luyulin@eswincomputing.com>
References: <20260123024823.1612-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
X-CM-TRANSID: TQJkCgBXyy3D4XJpfe4EAA--.19977S2
X-Coremail-Antispam: 1UD129KBjvJXoWxCw4ruw47Kr1DtFy8trykGrg_yoW5XFykpF
	s3ury8XFn3ur17uw43J3WIkF1fJan7CFs0kr4Ig3Z0qFs0q3ZYqF4akF1Yk34UCry8Za47
	ZFs0qa47Aay7ZrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9l14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4U
	JVW0owA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
	Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwCY1x0262kKe7AKxVWUtVW8ZwCY02Avz4vE-syl42xK82IYc2Ij64vIr41l4I
	8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AK
	xVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcV
	AFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8I
	cIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r
	4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUFg4SDUUUU
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_184956_177011_53EFBA88 
X-CRM114-Status: UNSURE (   9.78  )
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
 .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
new file mode 100644
index 000000000000..4bb2d7a53761
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
@@ -0,0 +1,96 @@
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
+        default: 0
+      - description: Gen2 parameter.
+        minimum: 0
+        maximum: 0x7f
+        default: 0
+      - description: Gen3 parameter.
+        minimum: 0
+        maximum: 0x7f
+        default: 0
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
+        default: 0
+      - description: Gen2 parameter.
+        minimum: 0
+        maximum: 0x3f
+        default: 0
+      - description: Gen3 parameter.
+        minimum: 0
+        maximum: 0x3f
+        default: 0
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
