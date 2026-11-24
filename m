Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6E12606A327
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 22:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FAB+x+Me;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=tMBxIY++
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6//9b8xGjolRw5eJqsiUf/zZPFOm8A4Qh2SB3WNSU0U=; b=FAB+x+Megynreh+pxhsWUrA0a3
	9Vj6N5tPYYWKm+3SyZI8SiQEK8/niBFXMmNk+8yUXxtrVjTRv0BxVELtGmYQL4r3FM0G48bGnuoup
	07ENTmr8Bnl9GUJfsNI5GkeTzVNY6rRgd0UXn2go3EDYLIRz/DYB+XrP3u6qgyu4yV2I6l0n2mlbt
	NazmvVG/QsUqvGlfRdRjdobbonNIrQaHsAEQppf7nGi4w2feWt8y6Z9JPcG+GCF0+iaJEiOz8YPaK
	RXXAUTl11dImBoGCb8C9QwH0M3rACAD9Hfjrgqy3q9yRyh9mpVYbmUs0zIfOrt5paQmEvclAB3x6e
	3ZtEfwOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVywp-00000007zIw-1Wyt;
	Tue, 24 Nov 2026 22:25:11 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVywl-00000007zH0-2dOr
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 22:25:09 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-4a2f4ca0dcfso2914312f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 14:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795559105; x=1796163905; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=JSzQSnco7VI2G/k8ySDHQjYOEaRc/td443pgDxBiMtM=;
        b=tMBxIY++kvwvSoZPc1gK0DU3OBU4lbaCP3tM6miV2GgaQs0680i50PRqEWTtThHjWP
         z5Eh3VitO1EM98pW1FuqG59tJs8MUuLkEx1C9HTd0GZo5rzlMFkSfAI6GXvid/E+ayL/
         NZFZSEyVmhxJEUAg8vs2JtB4TDYf5bBTb7HbeOxWBqiv4n33xCqHtY3E2DSHsTx8geu5
         7vo51a4Fw0+bci/OW5IO4xrIOO0EQXpgAkt5jfxL8P5afeCsyvb/1lfJP1ngyZ1UKdd8
         3ZN7LPOjmKX7JxTY90wz2hwMKmG9UoxRMpgls+/ENlAnw1wkXz0o9TQtOp/0T8+yUPeH
         r8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795559105; x=1796163905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=JSzQSnco7VI2G/k8ySDHQjYOEaRc/td443pgDxBiMtM=;
        b=RlyLUCfqzhltfsfAv5vnKdR3lXTzgCk+1/f/uYTxpC4wa7+qWZ3QNuiE7HYB15R13M
         HiiIJ3+HJvciccszGmAGzCuU60ViSmx/KYnul3j6+wrwTOCaC1RoJ526GH07ICEAtwyb
         VZHuezz9lBM2+nQAjMjDN9UDWuV9qbIeJ3YlMtv9UkF2H/8TmbGr26U4ZLwIar65/RfO
         94r+75CzSzC1DUremYA3lIC4TGjBt0os9nCywFEemXYQN1UoX6MJV5MLtCNGtI24cpKZ
         PAbO2k4YhMznq1BRTQYtFa/b9TiF3B7OxtG95EeF5THn8YFsVg/CscyQVYqa/+I6drtb
         EBGA==
X-Forwarded-Encrypted: i=1; AL+hErE4Y1uGKRzCQtXkfq0oZc/PFwm3ebv4UopcGyxbpGCqZ5L8toAttom1/RXMYim4oLW7M9lMOmHHMnE=@lists.infradead.org
X-Gm-Message-State: APuU4Z8o8Egt6LNm7sJwW5lMYlvEdH3wHJ+T4mmmdfvpmM4fQSg4qByc
	VQd3F8AOoSljwY8IeX1yCldmi87LW2dr+BzKB/GJJwJZQA7lovYokQyd
X-Gm-Gg: AZFdTZe9G+/5mjKQtzcHgt1sKyThLrBGbXCdMnJxspJ4kCQv1RMFfv90CSALiPAwztn
	irGKX7t5+0lrt9mOuvxOBDj4QRhRy6oeYZ4pOrmruvI7PUZ8qG4yO3A8LKrAqEkg/+FxFinVUg5
	vnBoAsNV4tw0zk+2UZiQhilfvWISLUINF1efDI9W63GpbKAQqN1dpo2xid8t69sP8UwIlc7wtaK
	76fO8sxq5bad+0BoHH0qJbN6/g6O5N58jtixhG3QJdWvNDaMqZWqX5tj3pDGnjaKJyCQhDp39FS
	zDd9EuJ+IA3tg/KI7HGYymHrjyrYyPjt4/mQh37ArIs03eH2cynxKw85luKFHoczmgbbWmEF0B4
	xBI21KDRgPb2o7iPUeFLkf5VL14gbz3pDdyaAEfvBkuIFsiPAOrtE2rypYvYRoSQJ5wqlL8GF+2
	B48MvER6s7oBIZW59A2ms1YK1lgEohQqMIl3lKrZjHMCZdiou2RU/sUGZGxLwVrKLCBgw34K21M
	fkvAty408T1DTUCDSgKdoR4TDn7AvK9tLXvy3w0WhOzNtvg5XgmbnSqqacPkf4v9x2cnH8pOShN
	mxhossrBZ0rX36EKGLH94lU8nBzEwtv8TupIXP/SygNMtr0QswHKE8NwQwCfW5clQxpYlKMxdOR
	J2oU=
X-Received: by 2002:a05:6000:4704:b0:4a8:5a5b:3b7d with SMTP id ffacd0b85a97d-4abb5eacf4fmr32036412f8f.56.1795559105485;
        Tue, 24 Nov 2026 14:25:05 -0800 (PST)
Received: from Ansuel-XPS24.localdomain ([87.13.246.159])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab69bf630esm31125711f8f.16.2026.11.24.14.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 14:25:05 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	John Crispin <john@phrozen.org>
Subject: [PATCH v5 2/3] dt-bindings: phy: airoha: Document support for AN7583 Gen2 PCIe PHY
Date: Tue, 24 Nov 2026 23:24:32 +0100
Message-ID: <20261124222452.219832-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261124222452.219832-1-ansuelsmth@gmail.com>
References: <20261124222452.219832-1-ansuelsmth@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_142507_686057_6285D36B 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document support for AN7583 Gen2 PCIe PHY used to make the Gen2 PCIe port
work. Add the required register to configure the PCIe PHY and provide an
example for it.

Similar to the USB 3.0 PHY, a dedicated phys property is required to
configure the serdes for PCIe or Ethernet usage.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../phy/airoha,an7583-pcie-gen2-phy.yaml      | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
new file mode 100644
index 000000000000..424da3c5ad01
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7583-pcie-gen2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7583 SoC PCIe Gen2 PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7583 SoC PCIe Gen2 PHY describes the PCIe PHY for the
+  Gen2 PCIe controller.
+
+  This PCIe PHY makes use of a dedicated USB PHY for PCIe usage and
+  can also be used for Ethernet usage for SGMII or HSGMII mode.
+
+properties:
+  compatible:
+    const: airoha,an7583-pcie-gen2-phy
+
+  reg:
+    items:
+      - description: ana register
+      - description: pma register
+      - description: dig register
+
+  reg-names:
+    items:
+      - const: ana
+      - const: pma
+      - const: dig
+
+  phys:
+    items:
+      - description: phandle to Serdes PHY
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - phys
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@1fa5f000 {
+        compatible = "airoha,an7583-pcie-gen2-phy";
+        reg = <0x1fa5f000 0x100>,
+              <0x1fa5e000 0x400>,
+              <0x1fa5a000 0x900>;
+        reg-names = "ana", "pma", "dig";
+
+        phys = <&serdes_phy>;
+
+        #phy-cells = <0>;
+    };
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
