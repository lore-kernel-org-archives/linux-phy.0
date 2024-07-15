Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4734C3DA4B
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 13:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=if8kodgcOx17keDBqVaTeKtrsB6WZIiSDvCQi2OHTBs=; b=SgUoEfqKOufv7L
	+f08WDth1sFRBS6F9cCmW5UuC4HnvsqyGN/nyB7j179/5Y41RLoanT3Ox92hQ4QUzq4n+i9+3/o5x
	fTiBTGy6Lh2ov/fzrBs7JjFz9v+WE7YD0hKNFo5pco+ljvW0JEw+0Osm3hN+9MpyYc2/0S1z8RtA8
	oC1EG64GIWSF7RP/Z7yRiDMKNWN/ZGQCSfPK5gVj5vZLcjMoRfMuwEDiEVOKtbXcrxwaunzdJxSW7
	kNFl3Ra38/6Gg1XYutVBcwZoIQ2HgrWmagNHNdmpkyOq2PhgSbC36kXVrB5SecEB1xeDkyqNOHPWT
	sLxoYPvSP+7xkTz2sMvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTLS9-000000079g0-1u0q;
	Mon, 15 Jul 2024 13:09:17 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTLS5-000000079eB-2nbo
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 13:09:15 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-367b8a60b60so2365587f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Jul 2024 06:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721048952; x=1721653752; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G8eQQqT0c8dqe8WwiFT0oNTtoVSK1zY8dAW9Gm5vNcM=;
        b=mFeeHdzu0h9g/eTYli+gIEEKr5TjL0QQrLpIhKJ7gQ5mMdTJrKf8KH2odXbVyXvmCL
         C8vIXyvC/W2P4AqQpqSQ8pAkdxRwXF/yfYc9qeZWmjDYQ70p/jPN/4l+oGjKqkzDMkZg
         mRLXr3Cls+4gZPEQduDHe+XDL7WuNRRblvxgP9zmWaRQCjzmIAS98YrEsCSowCn1Iq9S
         NET0rdMyekWuonFNlCPpTfUuHT9isLv8so83X7Jd3uQH35GKpqb2S15T5NtHEtSrjGND
         V+tyBkvqaicJdJzxpYf8XnhzTe2DzZS9MKJnBmq89+wAUT4P73mHLxg1Z/v2p1AJ23+Z
         VBsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721048952; x=1721653752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G8eQQqT0c8dqe8WwiFT0oNTtoVSK1zY8dAW9Gm5vNcM=;
        b=XESETl0OBswouEenGy7XINKyKbTNptr+hrCyeLNHt1wQZz8bT562HR2iKLiMyOQikd
         ZPmR7kejJvcL/wQgaAZ5Dbzi/prTYvZoNsI6hp9QutQkbMD/WXC6+m2Bga04Y8DsfKnX
         GEKCwfL/tiRlyGK/GsefrndozsV+8Ms29ZdkE91Fd/1ADykfCkyvxTvsKgDp3JIMqaJZ
         fPDixPouCHzTmwoJWaf8jcmzJPj+wk8Nx/K/KYLnoYRVoCS03Qj+9GO2QTXUYGAgvcG2
         +QT6hrN0B9IU1c6VyClISQsF+JUl3UtUQf9gV9K8paoK4GDjZrTlsYQCCFU5tU46pmyl
         aI7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUhv7PNjtdj18S0eeBTWDncoCnTAET1pql89H3CuuKq1UU8Eqds3Onh8mfTqwKaynXYSit1uv0G+lky1C8GgJRYGwF5uESYgXHz6deALg==
X-Gm-Message-State: AOJu0YxYtF53GEiUzBCPwWTZi8JklTmTD6Fn9eQfkTQvQQPTLOpk+/47
	kdiBir+ZNJJLkNGbtiXU1MDjHa9h80xuni2jpotPoRH6CfnKLEjN2ld84xx2E5Y=
X-Google-Smtp-Source: AGHT+IEkQyXvA5mRa8Lirst2IcaNs/BzNCxRdC6Nwo7m5zgs93tenf8EJCOPq+kzxG047cJ1h5B9ow==
X-Received: by 2002:adf:cd8b:0:b0:35f:20eb:cae3 with SMTP id ffacd0b85a97d-367cead8ce2mr11922934f8f.67.1721048951877;
        Mon, 15 Jul 2024 06:09:11 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680daccdffsm6417766f8f.54.2024.07.15.06.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 06:09:11 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,sata-phy: convert to dtschema
Date: Mon, 15 Jul 2024 14:01:06 +0100
Message-ID: <20240715130854.53501-2-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715130854.53501-1-rayyan.ansari@linaro.org>
References: <20240715130854.53501-1-rayyan.ansari@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_060913_731453_58E5C3CD 
X-CRM114-Status: GOOD (  15.26  )
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

Convert the bindings for the SATA PHY on both apq8064 and ipq806x from
the old text format to yaml.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 .../bindings/phy/qcom,sata-phy.yaml           | 55 +++++++++++++++++++
 .../bindings/phy/qcom-apq8064-sata-phy.txt    | 24 --------
 .../bindings/phy/qcom-ipq806x-sata-phy.txt    | 23 --------
 3 files changed, 55 insertions(+), 47 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sata-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-apq8064-sata-phy.txt
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-ipq806x-sata-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/qcom,sata-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sata-phy.yaml
new file mode 100644
index 000000000000..0bf18d32c133
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sata-phy.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sata-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SATA PHY Controller
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Konrad Dybcio <konrad.dybcio@linaro.org>
+
+description:
+  The Qualcomm SATA PHY describes on-chip SATA Physical layer controllers.
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq806x-sata-phy
+      - qcom,apq8064-sata-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: cfg
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-ipq806x.h>
+    sata_phy: sata-phy@1b400000 {
+        compatible = "qcom,ipq806x-sata-phy";
+        reg = <0x1b400000 0x200>;
+
+        clocks = <&gcc SATA_PHY_CFG_CLK>;
+        clock-names = "cfg";
+
+        #phy-cells = <0>;
+    };
+
diff --git a/Documentation/devicetree/bindings/phy/qcom-apq8064-sata-phy.txt b/Documentation/devicetree/bindings/phy/qcom-apq8064-sata-phy.txt
deleted file mode 100644
index 952f6c96bab9..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom-apq8064-sata-phy.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Qualcomm APQ8064 SATA PHY Controller
-------------------------------------
-
-SATA PHY nodes are defined to describe on-chip SATA Physical layer controllers.
-Each SATA PHY controller should have its own node.
-
-Required properties:
-- compatible: compatible list, contains "qcom,apq8064-sata-phy".
-- reg: offset and length of the SATA PHY register set;
-- #phy-cells: must be zero
-- clocks: a list of phandles and clock-specifier pairs, one for each entry in
-  clock-names.
-- clock-names: must be "cfg" for phy config clock.
-
-Example:
-	sata_phy: sata-phy@1b400000 {
-		compatible = "qcom,apq8064-sata-phy";
-		reg = <0x1b400000 0x200>;
-
-		clocks = <&gcc SATA_PHY_CFG_CLK>;
-		clock-names = "cfg";
-
-		#phy-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/qcom-ipq806x-sata-phy.txt b/Documentation/devicetree/bindings/phy/qcom-ipq806x-sata-phy.txt
deleted file mode 100644
index 76bfbd056202..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom-ipq806x-sata-phy.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-Qualcomm IPQ806x SATA PHY Controller
-------------------------------------
-
-SATA PHY nodes are defined to describe on-chip SATA Physical layer controllers.
-Each SATA PHY controller should have its own node.
-
-Required properties:
-- compatible: compatible list, contains "qcom,ipq806x-sata-phy"
-- reg: offset and length of the SATA PHY register set;
-- #phy-cells: must be zero
-- clocks: must be exactly one entry
-- clock-names: must be "cfg"
-
-Example:
-	sata_phy: sata-phy@1b400000 {
-		compatible = "qcom,ipq806x-sata-phy";
-		reg = <0x1b400000 0x200>;
-
-		clocks = <&gcc SATA_PHY_CFG_CLK>;
-		clock-names = "cfg";
-
-		#phy-cells = <0>;
-	};
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
