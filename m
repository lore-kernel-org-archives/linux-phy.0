Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A6C9C38142
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 12:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7blfySp5cPzuVjjArXsMXQRvFz+RKG1d4l7ZKjswts=; b=WHD7ZsATlLE72v
	//Vvud4mOkck5TYPM7QcgAMcc2dY8y8Hpl3DvQ3yIlNwz4cQQdSilemeuWX31F1+dpw47A+siMmpZ
	UyMCb63X7M3TaI/kSDtPmSV+0ize2WcCocjq0mEQOuez/nN15FDwY/POtjSP6qMeIfdCztPQ/hMAq
	qjxvUZMqvkRQtU3DNkcXGWTZN2lcSQqhdJrbx36RH8qH17AxDkvU76jsAUtNJAYXcQDYVktS2J292
	O4jHrYCa/AZFHrSj5B45N3QVXMoD5YVOxrQOHh7jfjNU7vYZcaJlbrjV4PvT/zj5imzSs59lf5Ab6
	nye2IosKQCyyxRYyxTWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIiE-003n9k-Gc; Tue, 24 Jan 2023 12:47:42 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIiB-003n4z-1I
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 12:47:40 +0000
Received: by mail-wr1-x42c.google.com with SMTP id e3so13735528wru.13
        for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 04:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VrldaaWGIUz5RWdh+krK3nRA9Yar72lQE/bz4xdVemE=;
        b=zmLLwfcAgYLnCSUjZSGRit/IreL5dJktxVITjcVonR1DrIorWJUEa5fm+gebYcyx1J
         5094NgB8SQCfIo5ruW8oSa3JznsLVavyKTomZuMEw5h229zMbBpeUZf+pIGuwBqRDkKy
         cXbu+BsR9cd6y9D3t1Smm9ge2jp3L6jG2GpAL6MBL79vtimsj5n4cqhgyRlCilmVNd2/
         O7KpF6PBkng0xuofFTkD3laTulNVyj3p9O3dTW2uRfDv2YpSw5tlUTLssNwJ0UrZrPuY
         CBkhKCrhQWtx5GdWOXmN5eT6GoxHVPcloDocw4xjR9FVquazUOQAJnvfMr7vfKVYQsBw
         t8Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VrldaaWGIUz5RWdh+krK3nRA9Yar72lQE/bz4xdVemE=;
        b=IDIpsc/OrecG3bg8DWgiJc4WvhKDXrtfPJ65pAsjadyMQCtdrSr1qoTl+ymFIphtMM
         9QwN/FXQlWz0UUfR2niaeC5iBAwl9nYWj2zbbu65kMqACfA3/7NMMS/ZFDrMclr4at1O
         Mg723BDfqddEFGuYSwXTfF93GawIkp3d5FdktzYRz+TGS1eShyv4h83OiihhkgZ8jA5H
         270un6B4WzbtfG/dRajI7M2z2wzYjKTiIs6bSbeRjbsq+a466dpuJBhwwq7xtoJDcE48
         r2WeofwwZpbpl0DtHxX1Y0+1kilH2alS+W1y3XZwl5ukXa+BlqiQZiPiXOO0tfLMatil
         Tonw==
X-Gm-Message-State: AO0yUKVhqX/SmAQDF4Lg8Yr6KmB1VcxKvbhzHiARkIxFWbBnQhIAkkg3
	xH84jKzcLRIWbEN+0vLbDz1EEQ==
X-Google-Smtp-Source: AK7set+kFPxHL5wIiuB75PmesHeCajX0j7XEcHR5vWoOGw2q9NZ0wNQlwJvtuwXrl014YhUQ2X03nw==
X-Received: by 2002:a5d:58d0:0:b0:2bf:b26a:3404 with SMTP id o16-20020a5d58d0000000b002bfb26a3404mr1180174wrf.12.1674564455213;
        Tue, 24 Jan 2023 04:47:35 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d5705000000b002bdbde1d3absm1766840wrv.78.2023.01.24.04.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 04:47:34 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v5 09/12] dt-bindings: PCI: qcom: Add SM8550 compatible
Date: Tue, 24 Jan 2023 14:47:11 +0200
Message-Id: <20230124124714.3087948-10-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124124714.3087948-1-abel.vesa@linaro.org>
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_044739_097590_125292B9 
X-CRM114-Status: GOOD (  11.23  )
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
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v4 of this patch is:
https://lore.kernel.org/all/20230119140453.3942340-10-abel.vesa@linaro.org/

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


 .../devicetree/bindings/pci/qcom,pcie.yaml    | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index a5859bb3dc28..c690152dfbf2 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -34,6 +34,7 @@ properties:
       - qcom,pcie-sm8250
       - qcom,pcie-sm8450-pcie0
       - qcom,pcie-sm8450-pcie1
+      - qcom,pcie-sm8550
       - qcom,pcie-ipq6018
 
   reg:
@@ -52,6 +53,12 @@ properties:
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
@@ -102,6 +109,10 @@ properties:
   power-domains:
     maxItems: 1
 
+  enable-gpios:
+    description: GPIO controlled connection to ENABLE# signal
+    maxItems: 1
+
   perst-gpios:
     description: GPIO controlled connection to PERST# signal
     maxItems: 1
@@ -197,6 +208,7 @@ allOf:
               - qcom,pcie-sm8250
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
+              - qcom,pcie-sm8550
     then:
       properties:
         reg:
@@ -611,6 +623,37 @@ allOf:
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
@@ -694,6 +737,7 @@ allOf:
               - qcom,pcie-sm8250
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
