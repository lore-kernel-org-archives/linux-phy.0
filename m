Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 220F2C636CC
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIby4yQEp93rTLAm0FkHTwpd0reYN4u/2QxlpZp2rM0=; b=XAD5YuvWl6fy0z
	ZQYScn5hLg1XqH1ew5I1z247tfCqwQYXbfogi6015NrCz3zCOUcJLwrzegI+h4ox09KahwAQVDAGC
	BZE1L+jvnvz6g2eliudo3y4qHnv7jGygPjogKk7xRvPFyS/2tZ6Hg0rYG1/29NoVmqgFv557YdY+X
	QNr2mg52JLqASikfWPNf6yc2a4x/pJ8ynmcmN45FsTYjd84Gl6H/4WnmizwHyk7OAoCfqwKs/AsuS
	xkLWHV4EYMjoKKDQGT50gZH3KGCmmfGYNZI3qSjMjJsZjsoPr60RFMqj+3E2sX31dBTtsMV9ieKe0
	vS7yGaH3BlN7wc3gETgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokk-00GXaO-IR; Wed, 08 Feb 2023 18:01:06 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokh-00GXWr-6u
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:01:04 +0000
Received: by mail-wm1-x332.google.com with SMTP id z13so6442392wmp.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DchZl1hRN+unSUjI498glgMmNXbQQ3rhvnKiCTqoT90=;
        b=y0EyDKDULMF3MQ5MiWgTHzzSH5iCL6MUojqJ2JX7JF4MBIKHFRUpGmVbxVtTRB8csq
         Qr/XxgKwrumNbIrdT+dpwn8UJWSu7SCiDUpV2oW3mtdkNWBngJQYy7lpTLQl8ab9sVeF
         245J9n+IrUM58f+ktlWkipzFHZUi+bYHY2uDzeDGguqXMoavQ/cXTy6m2tNzE510At4C
         mN1zo1SzjkQJxvjVhSmPFOu15rJ6xsZkE8tptlsQ/SirVqpg0VSY10MbEQc25C279TGX
         PDEIL+ramo9ePa31OYt8nS14i1QOwQRrKJJ4WJsvygZOb7YYTymqFDM3i8CvgD2j4SgI
         +61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DchZl1hRN+unSUjI498glgMmNXbQQ3rhvnKiCTqoT90=;
        b=pOfSwe5P2hu6Bbe/n0rTtKLfSvHxeV9PxTzC6nb9t9+ZtlhudrojDdD4FMGbjjncaH
         jXM38zW11QpJK3BYIJg7bgCHybE+/5SFRTF1PdwrEjhi76maD2Vao73ScdtpDhuGmJAy
         AiS8ZkmYupQO81OIH2i+61ltcSY/ExyOLmcT9SL8SI4qoKRovYDptz8fKMh/w4w8+Hhi
         7ESAQQ7R3fGpQcHJ/vpvmHA27+MSJi4RKR97xd3+Wg52bJ0gt3FPa4QFmQhqSdBQ8ao0
         RXqhCHShp3wo8n3yrIVUaEWTMt29yuZU0igfHu0SSASHMH8FetFrW/dK/MkMbuv5D0Lc
         UILw==
X-Gm-Message-State: AO0yUKVP59iGWy9n8EqZ9GD9fC3NdLDuFWrPBBIVPjraq441bN5nyII7
	+Gi8Xrj5Rn+99qGJ2poPPOq5FQ==
X-Google-Smtp-Source: AK7set+pbIZz3u99onv03D2Ht7ybFjFuSc4mKOSLvm/6h89UJxkhUSf97Zm/x6UitFe6ZP5Of1de8Q==
X-Received: by 2002:a05:600c:2e89:b0:3e1:bfc:d16e with SMTP id p9-20020a05600c2e8900b003e10bfcd16emr3539924wmn.39.1675879262077;
        Wed, 08 Feb 2023 10:01:02 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c169400b003dc54eef495sm2370286wmn.24.2023.02.08.10.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:01:01 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 09/11] dt-bindings: PCI: qcom: Add SM8550 compatible
Date: Wed,  8 Feb 2023 20:00:18 +0200
Message-Id: <20230208180020.2761766-10-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_100103_286420_903E0DC7 
X-CRM114-Status: GOOD (  11.03  )
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

Add the SM8550 platform to the binding.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
---

The v8 of this patch is:
https://lore.kernel.org/all/20230206212619.3218741-10-abel.vesa@linaro.org/

Changes since v8:
 * none

Changes since v7:
 * dropped the enable-gpios property as it is not used
 * added Johan's R-b tag

Changes since v6:
 * none

Changes since v5:
 * added Krzysztof's R-b tag

Changes since v4:
 * dropped _serdes infix from ln_shrd table name and from every ln_shrd
   variable name
 * added hyphen between "no CSR" in both places
 * dropped has_ln_shrd_serdes_tbl
 * reordered qmp_pcie_offsets_v6_20 by struct members
 * added rollback for no-CSR reset in qmp_pcie_init fail path
 * moved ln_shrd offset calculation after port_b
 * dropped the minItems for interconnects
 * made iommu related properties global
 * renamed noc_aggr_4 back to noc_aggr

Changes since v3:
 * renamed noc_aggr to noc_aggr_4, as found in the driver

Changes since v2:
 * dropped the pipe from clock-names
 * removed the pcie instance number from aggre clock-names comment
 * renamed aggre clock-names to noc_aggr
 * dropped the _pcie infix from cnoc_pcie_sf_axi
 * renamed pcie_1_link_down_reset to simply link_down
 * added enable-gpios back, since pcie1 node will use it

Changes since v1:
 * Switched to single compatible for both PCIes (qcom,pcie-sm8550)
 * dropped enable-gpios property
 * dropped interconnects related properties, the power-domains
 * properties
   and resets related properties the sm8550 specific allOf:if:then
 * dropped pipe_mux, phy_pipe and ref clocks from the sm8550 specific
   allOf:if:then clock-names array and decreased the minItems and
   maxItems for clocks property accordingly
 * added "minItems: 1" to interconnects, since sm8550 pcie uses just one,
   same for interconnect-names

 .../devicetree/bindings/pci/qcom,pcie.yaml    | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 872817d6d2bd..eb7f5a9aef2c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -38,6 +38,7 @@ properties:
           - qcom,pcie-sm8350
           - qcom,pcie-sm8450-pcie0
           - qcom,pcie-sm8450-pcie1
+          - qcom,pcie-sm8550
       - items:
           - const: qcom,pcie-msm8996
           - const: qcom,pcie-msm8998
@@ -58,6 +59,12 @@ properties:
     minItems: 1
     maxItems: 8
 
+  iommus:
+    maxItems: 1
+
+  iommu-map:
+    maxItems: 2
+
   # Common definitions for clocks, clock-names and reset.
   # Platform constraints are described later.
   clocks:
@@ -205,6 +212,7 @@ allOf:
               - qcom,pcie-sm8350
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
+              - qcom,pcie-sm8550
     then:
       properties:
         reg:
@@ -639,6 +647,37 @@ allOf:
           items:
             - const: pci # PCIe core reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-sm8550
+    then:
+      properties:
+        clocks:
+          minItems: 7
+          maxItems: 8
+        clock-names:
+          minItems: 7
+          items:
+            - const: aux # Auxiliary clock
+            - const: cfg # Configuration clock
+            - const: bus_master # Master AXI clock
+            - const: bus_slave # Slave AXI clock
+            - const: slave_q2a # Slave Q2A clock
+            - const: ddrss_sf_tbu # PCIe SF TBU clock
+            - const: noc_aggr # Aggre NoC PCIe AXI clock
+            - const: cnoc_sf_axi # Config NoC PCIe1 AXI clock
+        resets:
+          minItems: 1
+          maxItems: 2
+        reset-names:
+          minItems: 1
+          items:
+            - const: pci # PCIe core reset
+            - const: link_down # PCIe link down reset
+
   - if:
       properties:
         compatible:
@@ -724,6 +763,7 @@ allOf:
               - qcom,pcie-sm8350
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
+              - qcom,pcie-sm8550
     then:
       oneOf:
         - properties:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
