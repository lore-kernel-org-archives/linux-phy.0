Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B22BBC10F1A
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 04:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wP7Vknw9VCc1arShUWqeRY0DLZCyEajhwyooR/ODAjk=; b=0WG/nmA/8+tXBO
	IWCd4UmfaURTD6B8BUoO4LOjeqZKsK54YivhBegCDLTw22pFP6Dt3ux9a4xgTV2ryW40jaCCJ5eO8
	3Mfoxks3Hd/1qygfQzVrQSM0K7gASy8MkDXC0eUjNRUoIcxx2BreAnLbJaQ3TJHLNggWsGYqkhgGV
	uuZkpMGRcnuPz8pa9lPHACBSm0cpKNwF7D95DDwSCYkfuOX8/aSfYLj8wAUESJeKDzzyOfvHu9WTv
	Ydutay7OTtScWlvCBO+4fPW/qj6tzD6vpAGMJDpLz1nF3Go9l4OGZQ6e7T7eE51VWgU8sRClMZ/tW
	qpXW5vICH8DRQEzIsjEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21ac-00000008XSj-1Sk2;
	Wed, 01 May 2024 04:29:06 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21aY-00000008XQX-2MF5
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 04:29:04 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6ee3231d95eso261787a34.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 21:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714537741; x=1715142541; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=53QnHnVF7bqkRAf/NYE3eZQ50tFTHOIRODlZaYfoSVE=;
        b=NTiHyHk+CFgidi1QpBC6Ky3Siw9hCiQuE78T2pa7Y9xK9Cv5URW2Hy/F53PS0rDg1Z
         8yLJz8YZQWby4TkT4Qaa0niyys4YlijF4UZicCl85+ymwuG3Yd0LzjYjGC9g2IrGgTtp
         lDgiV0E6Mh+kAyW7U/ygp0chUDZyxmACtRM7XAtpuZDaS1GDPwXnrR3czvJrnjzbM92o
         GIpWp9XoVjRJqDIerKQvtQoTF+J35pj4QL4kfyQYtKRQDTFrWt1reU9uYvS68iE3fLPY
         f9VdmNvw9vSfjR5qI04PFsBoH3g55twpX/yGN7qFoRFm+jwskiYG0HOkxBSazvVDvk7V
         MagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714537741; x=1715142541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=53QnHnVF7bqkRAf/NYE3eZQ50tFTHOIRODlZaYfoSVE=;
        b=ZNdZQj3/ZF3GK88tNJ7+EYHgaNYhhtjgD1ZsISpTujmQoTf1Jbq4iKdKTH74WqIcz7
         uxQYfAWdV3SWI/bGy7XZ0e6z/z81KsaL02+DTSLg81RJ+MSN2Sx4+ebNYUpkCNh3PLjT
         CF4DiMpn4nyHnc5jpYL1L57QfpOT7MdKnViXICXFIrpkEnLJPB4mkEFldmtw7Gjic5/E
         FHYyIuA421uDuOBy4lTLEcHgeMywkjSPF/jHaiKGODiSadmmmfzi0IvuZvRaSSLMhI2h
         kpFjgwCVj1iGNDMrg+2dktYUDCRq4NXsZscWHCleyVpeqBq8KchUebiB6NX5XVfaonUK
         zrSw==
X-Forwarded-Encrypted: i=1; AJvYcCUdjl7rYdEMVrW/xLjV8el71O8dBh9ZnD1eUgEliOk1wRo2KNThTOUxkpMAxmVguEnCI3WO42hyuIY2eUo2BS6oeB7BrwFO8776RY5Cyg==
X-Gm-Message-State: AOJu0YykpAW6gU5QvrulMnKzAVVis/ZRrHQFHZYbGtneb2QZVxaYtoEa
	KS0RDO7j5pq3AQF30L0G9reumGFvaMaU2IGO89ujKxXoIS/hKi4GvdWh7DscGY0=
X-Google-Smtp-Source: AGHT+IGZ6Bq0eAhG/carm/csp8ApgnvJNQUPq/GxvHn40hwIEdBr56IsFv4ZyhDbwV1GMjYFEXYYaQ==
X-Received: by 2002:a9d:6e12:0:b0:6ee:1654:c391 with SMTP id e18-20020a9d6e12000000b006ee1654c391mr2064810otr.7.1714537741133;
        Tue, 30 Apr 2024 21:29:01 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id do26-20020a0568300e1a00b006ed6dc9fd54sm2719058otb.25.2024.04.30.21.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 21:29:00 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v4 RESEND 3/8] dt-bindings: PCI: qcom: Add IPQ9574 PCIe controller
Date: Tue, 30 Apr 2024 23:28:42 -0500
Message-Id: <20240501042847.1545145-4-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_212902_632846_57222A75 
X-CRM114-Status: UNSURE (   8.63  )
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

IPQ9574 has PCIe controllers which are almost identical to IPQ6018.
The difference is that the "iface" clock is replaced by the "snoc",
and "anoc". The "sleep" reset is replaced by an "aux" reset.
Document these differences along with the compatible string.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index cf9a6910b542..ac6d2b1b8702 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,pcie-ipq8064-v2
           - qcom,pcie-ipq8074
           - qcom,pcie-ipq8074-gen3
+          - qcom,pcie-ipq9574
           - qcom,pcie-msm8996
           - qcom,pcie-qcs404
           - qcom,pcie-sdm845
@@ -161,6 +162,7 @@ allOf:
             enum:
               - qcom,pcie-ipq6018
               - qcom,pcie-ipq8074-gen3
+              - qcom,pcie-ipq9574
     then:
       properties:
         reg:
@@ -397,6 +399,39 @@ allOf:
             - const: axi_m_sticky # AXI Master Sticky reset
             - const: axi_s_sticky # AXI Slave Sticky reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-ipq9574
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: axi_m # AXI Master clock
+            - const: axi_s # AXI Slave clock
+            - const: axi_bridge # AXI bridge clock
+            - const: anoc
+            - const: snoc
+            - const: rchng
+        resets:
+          minItems: 8
+          maxItems: 8
+        reset-names:
+          items:
+            - const: pipe # PIPE reset
+            - const: aux # AUX reset
+            - const: sticky # Core Sticky reset
+            - const: axi_m # AXI Master reset
+            - const: axi_s # AXI Slave reset
+            - const: axi_s_sticky # AXI Slave Sticky reset
+            - const: axi_m_sticky # AXI Master Sticky reset
+            - const: ahb # AHB Reset
+
   - if:
       properties:
         compatible:
@@ -507,6 +542,7 @@ allOf:
                 - qcom,pcie-ipq8064v2
                 - qcom,pcie-ipq8074
                 - qcom,pcie-ipq8074-gen3
+                - qcom,pcie-ipq9574
                 - qcom,pcie-qcs404
     then:
       required:
@@ -566,6 +602,7 @@ allOf:
               - qcom,pcie-ipq8064-v2
               - qcom,pcie-ipq8074
               - qcom,pcie-ipq8074-gen3
+              - qcom,pcie-ipq9574
               - qcom,pcie-qcs404
     then:
       properties:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
