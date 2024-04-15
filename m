Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B0F4C00A94
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 18:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0S8MFoRuGo7eJSuOB1X/jOxYiNm2UutMB9i5IrUbCBQ=; b=yhzQnjfbrkuuGH
	PmkDkXSLVsizot9KbP//UHTmJCmWou24PriXT0bYwbwFZTkTCRhdAFjwAVTu66ATeiwUmap5zJ4pg
	Dlchtj1jJJp1kzZSNzW5K8VLU21fiw2GaChT1X5SHXSvnGYRewfaZaXiIkD3co2kTOqZ9EBcr8gxl
	JpgNcvqISkr3gPURxJEU2SU3Bsdnlt+kndpCe9DumAicwLuEqiy1zrLrFgr8cSD/AMqXlSkWz7Wxa
	IouYNglxNqnnnatDyItRDWZHaKse9JeIOhVb0sKTHAf9+YLq7uVFlHifvrieT4PUUeTsvqG6LNXwz
	rG8dKdUSWp1wIBr2H1sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxH-00000009Qkb-3XbP;
	Mon, 15 Apr 2024 18:21:23 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxF-00000009QiO-1TEv
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 18:21:22 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5aa400b917dso2299254eaf.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 11:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713205279; x=1713810079; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VSUxhRAqtSpAkOo8bigYXpnuJtyRvKgYbnzdNf6wuKY=;
        b=FdJbBFZUAr6jpWNGwxyDk20mH7d12yzV145LaTWN+Icb3qgeloCYbZbVr6tiu6yhZW
         9U7YcUM5SvXcfdiosZ/AUl2lzHylx53TJ6PksVft9DcVwNueLds75Rt2A0SOtu/mUGTQ
         Vj62SaiBilNAV91Q2EXAVvL3CT4oAqQUhrdKjQ8ZR/tHLZwZW0ZGrY+tr4mSfOTVVcEn
         fPpyuxSJWrFcJ14EJA78Fba7TQR9RdXBMGDVKWVijA81757oUFr5Jeko+bQwgqwoqpMe
         +nLWxHhUMaUbcr6yPlzn3kEfZdClkCW5IzhbLDqc63GP/C0tGq1a4BaUE9Hf7dYPljnq
         NfkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713205279; x=1713810079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VSUxhRAqtSpAkOo8bigYXpnuJtyRvKgYbnzdNf6wuKY=;
        b=ZVnyfhgmKClyfEKses7G5uhC6dDAR7mFHH0AXh7rSIbu9MH7iqHAjjb85yTYBz09d1
         6u8V09GCfdug0bXM6lf+uRFLacZ+PJbSdMZ9aCxIO8sQZLPF3ZBsOQxTCPvWIKo0K6QZ
         2Jnv4Xx4pnv81vv1EoRiCtqBZ3qfHsv8XExUZwQIIqeJl/1B4feLDFnOGX6KA6Zgazvp
         iu0S8+M0jxlieLqa0d1cJ+oMPmIEqvuqwBk+E4B5YM5yKA4scHIOZO0inV/FwqXi48l0
         z9RoBS+R5ji/nlE+gHvON7oMWFjHE2u7ryV12kObRYPyaC+aRaU/TVvP57G6szbB+tJD
         pVVg==
X-Forwarded-Encrypted: i=1; AJvYcCX7vA9mxyD/6anSjkjNNMoN7N5f/4jLbsYsn1cN/gdRBcHRlYrRj2aoiAjpw/QpWsXllpYSTnKpROhIu6w5xZbVi+I4fTCCpKf1HVV+Tw==
X-Gm-Message-State: AOJu0Yw1sGKzpQ6rh3BYdWQVzm3se7oJIzml6i//DS88fJaIXFVm0kYz
	09Pcks8vH6heZ8xXpRftKzV9StpV5LVboZe+s96pMt6OJcsNxuL+
X-Google-Smtp-Source: AGHT+IHWDOfDR262vpiTAuGOuGAJ+9982G4HI7/75giU8A9pOm9OGbS5vpH7wkRuMoZaxW+ulBWPpQ==
X-Received: by 2002:a4a:b045:0:b0:5ac:9fec:c32e with SMTP id g5-20020a4ab045000000b005ac9fecc32emr4272840oon.8.1713205279255;
        Mon, 15 Apr 2024 11:21:19 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id x4-20020a056820104400b005a4dc7abc01sm2177494oot.11.2024.04.15.11.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 11:21:18 -0700 (PDT)
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
Subject: [PATCH v3 3/7] dt-bindings: PCI: qcom: Add IPQ9574 PCIe controller
Date: Mon, 15 Apr 2024 13:20:48 -0500
Message-Id: <20240415182052.374494-4-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240415182052.374494-1-mr.nuke.me@gmail.com>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_112121_413905_13D6EAD0 
X-CRM114-Status: UNSURE (   8.34  )
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
The difference is that the "iface" clock is not required, and the
"sleep" reset is replaced by an "aux" reset. Document these
differences along with the compatible string.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index cf9a6910b542..2d9bbcc95c31 100644
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
@@ -397,6 +399,37 @@ allOf:
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
@@ -507,6 +540,7 @@ allOf:
                 - qcom,pcie-ipq8064v2
                 - qcom,pcie-ipq8074
                 - qcom,pcie-ipq8074-gen3
+                - qcom,pcie-ipq9574
                 - qcom,pcie-qcs404
     then:
       required:
@@ -566,6 +600,7 @@ allOf:
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
