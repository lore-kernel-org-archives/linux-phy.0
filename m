Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE73FA374A
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LX9nGIDba/tcQ3hDzWCjdunEKkCx1yok6r29A/D61Q=; b=XpLNu2jguHD9TB
	stybn0Gg4U/I8L14tkiiMj4xkn+Nxt3ySBX46wGv6G0Hh7HH9ze72OIDuRW3OnM/4yHVitobhlydz
	xqsR+qder7PgnY+cwrlKsHyLb/Owj1Rhcg4UPK/hmkH8tfuhjQw4SF2zpTXYSVDWKNU3ddSvvnhuQ
	S6pGsUa63nddsaQaDX5jjOKD6/dHjAkgFL1PE1zzud9JKxPXMC0NsZ6p5pOQkOozg3N/knc4Amcq6
	Om8PQcXEFHNx1QrtZYrOhMAu1ohgcwF9up5CsA5xtA9g4XkFayPCY/megHtGqwfyFs+zLW77SCccX
	UjaxilqEho9CrARdoUdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8r-009MKK-Cq; Sat, 29 Oct 2022 21:13:21 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8o-009MG0-8g
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:13:19 +0000
Received: by mail-lj1-x232.google.com with SMTP id x21so11037272ljg.10
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=swTzgpM0Pz/+17CyZPXCMYY39bgiFlYC7ketMF0VDSU=;
        b=qjDZPTSAikMnTJw7RtegzieQLRrkmgafUzkKPtnThgNEijjf25ZKWiCCeVSP1kgyHv
         cWfRIghlWgmJ66I4haQOKw8sqctrjoqjx663Dqfy0aO+AcHvoKy3TwAhadIM57/jHMBW
         ZijkEKoHFMkO6a2/RJU88Dcw5A25uaE9+Iu4Rw9AJR435Q5/VRkyMXymAMEOqml1EvfN
         zTwBlgPCzp3szymADo5qBioYfMKB2WipypdqyFDyUwkm8K8DWs/oy1+YK2WazzUAW/O/
         y8z1lZpBe9fq8cLNlOGaiN19gkFcojJR9zb+0Tr69VqE70hhX+IeGO7LcCeZ/tAX95ol
         VLGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=swTzgpM0Pz/+17CyZPXCMYY39bgiFlYC7ketMF0VDSU=;
        b=LKQ1NtLiiLnPWxogpPadYpQzhpjs1PWBFb4g2tkX/mD3X3aKCQfXCP71xJPZVK1iaN
         OrRyQ3RNePUoXDWbrjIE827BIRVCF7MAN1JzCfRSdizstwKfUdB0oVOIJAGchQPAlEXq
         O5IjqragVW6zWpyiz5XM1LFgvJzL75+qnrWrsY21BId/FS5Rrr2ZQ1dma3r0+ZmIaB/j
         RRJ38X2cXxudINA0ozNF4fKPpwvCmhnYMqnPDYV3PATYqO0FHYz4XcJRU2etw9xENGFk
         LRWhAwL+r7xWyRTAwykzXrjnZ6bMOzr4qnMGI1An+tBgbPJh7SK0VJtjvrVxybpRYxY0
         QHzQ==
X-Gm-Message-State: ACrzQf2tQRJXujfAMTmQCQwlip7cJ1yeunJ20vE9myNw/+MWGlU9yvXI
	rfmKAGNadhmmxnOQu8ewu6OG2Q==
X-Google-Smtp-Source: AMsMyM7MYkde/YdEibYj6wq2j+5pTXEeJMeIPK+cSHSOHrk7IOl01tEyuBC+b8dntHuhTnTnu1sffg==
X-Received: by 2002:a2e:5cb:0:b0:277:794:cb70 with SMTP id 194-20020a2e05cb000000b002770794cb70mr2288707ljf.280.1667077995491;
        Sat, 29 Oct 2022 14:13:15 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id j14-20020a05651231ce00b004a480c8f770sm433508lfe.210.2022.10.29.14.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 14:13:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 1/7] dt-bindings: PCI: qcom: Add sm8350 to bindings
Date: Sun, 30 Oct 2022 00:13:06 +0300
Message-Id: <20221029211312.929862-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_141318_328472_4BA9E677 
X-CRM114-Status: GOOD (  10.11  )
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

Add bindings for two PCIe hosts on SM8350 platform. The only difference
between them is in the aggre0 clock, which warrants the oneOf clause for
the clocks properties.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 54f07852d279..55bf5958ef79 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,pcie-sdm845
       - qcom,pcie-sm8150
       - qcom,pcie-sm8250
+      - qcom,pcie-sm8350
       - qcom,pcie-sm8450-pcie0
       - qcom,pcie-sm8450-pcie1
       - qcom,pcie-ipq6018
@@ -185,6 +186,7 @@ allOf:
               - qcom,pcie-sc8180x
               - qcom,pcie-sc8280xp
               - qcom,pcie-sm8250
+              - qcom,pcie-sm8350
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
     then:
@@ -540,6 +542,57 @@ allOf:
           items:
             - const: pci # PCIe core reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-sm8350
+    then:
+      oneOf:
+          # Unfortunately the "optional" ref clock is used in the middle of the list
+        - properties:
+            clocks:
+              maxItems: 13
+            clock-names:
+              items:
+                - const: pipe # PIPE clock
+                - const: pipe_mux # PIPE MUX
+                - const: phy_pipe # PIPE output clock
+                - const: ref # REFERENCE clock
+                - const: aux # Auxiliary clock
+                - const: cfg # Configuration clock
+                - const: bus_master # Master AXI clock
+                - const: bus_slave # Slave AXI clock
+                - const: slave_q2a # Slave Q2A clock
+                - const: tbu # PCIe TBU clock
+                - const: ddrss_sf_tbu # PCIe SF TBU clock
+                - const: aggre0 # Aggre NoC PCIe0 AXI clock
+                - const: aggre1 # Aggre NoC PCIe1 AXI clock
+        - properties:
+            clocks:
+              maxItems: 12
+            clock-names:
+              items:
+                - const: pipe # PIPE clock
+                - const: pipe_mux # PIPE MUX
+                - const: phy_pipe # PIPE output clock
+                - const: ref # REFERENCE clock
+                - const: aux # Auxiliary clock
+                - const: cfg # Configuration clock
+                - const: bus_master # Master AXI clock
+                - const: bus_slave # Slave AXI clock
+                - const: slave_q2a # Slave Q2A clock
+                - const: tbu # PCIe TBU clock
+                - const: ddrss_sf_tbu # PCIe SF TBU clock
+                - const: aggre1 # Aggre NoC PCIe1 AXI clock
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+
   - if:
       properties:
         compatible:
@@ -670,6 +723,7 @@ allOf:
               - qcom,pcie-sdm845
               - qcom,pcie-sm8150
               - qcom,pcie-sm8250
+              - qcom,pcie-sm8350
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
     then:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
