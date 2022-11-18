Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3054DC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 23:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0zLx130drINATyNM5U+pKAd16wXg5FqWsPKJxz1Z14=; b=LhDvfNq7EsjGN8
	1Of4p2poxMhUKSPzCGbpVRdZPzDDnlNGzUT0CFX9eCafdL3luXO0CMmZ0mLSDCoIZDVBuhFH5eIiD
	61aoMHkUWWdTaTHmA34hooxuuoCltcEfLLXfaDjkUO+BfVGV2PMTfcy31Q5oC9vWiM0oolS3ktiia
	aGyw38iA/WN4j76jpbmRCfsjFNl0OkXhYN8GOgHwr8oBzKyWUPi4YD3nGM3aXF3CUPJekKvBd4jT6
	cbBGoJAKwRyG6//ukDqIht8O23+cDHyYSKeYbfi+GbdfJU5mAYWTBg7GsvPBPTt8oDcQ7ntzM/nOw
	t+Thm9gZ4XjfWXJHDcPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAqu-009CIK-C7; Fri, 18 Nov 2022 23:32:56 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAqp-009CFs-Kc
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 23:32:52 +0000
Received: by mail-lf1-x12c.google.com with SMTP id l12so10615936lfp.6
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 15:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+A6rilHFZI6MYdzHjtL9YOIpSlyXP0el9z1gbix2N18=;
        b=oOU7yE9qXDOAgFpSHdkzaJB8QWRzZPXm8BJ75Cj1dDj1tclwRuVIuTQNe7K8dbzbxh
         PkboBWf2XsZxcZ3RhCKvkHcVA4zQ0TKKVkCa0xN7/dfBNkkPZQDNOHbQsrsxU2ht9Xzv
         2wd2vPrOd8rQ5J+NO9nDRKe9CHdlWMcA+4GR0hb82+txUIExVPkRAouY83dWWWMn8Nyf
         FHN3ZfgfqWi57zlV21xUybvShXZ7FTP7Ruj5HeIB4BUuNSmff9+pvmmhZOYSLa0xeSqK
         UPL/HguKX/tgMfzdG2Ce5aRuVp4bpgSq9mIrXKUiziY8KSpTDTJkklG0uuQGOR3ZejvM
         85tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+A6rilHFZI6MYdzHjtL9YOIpSlyXP0el9z1gbix2N18=;
        b=j4nVdY9WcOgIFi3c5Vg2O1HkKVo4Kb9TokODPltdmH0Uutosy4DcAVULbs7s7e3nwq
         J5B0zOl7WPdurThe3tbsxTimWhrbxcsa5DUuCmONSP4EvaKVzw1j/tYbzA2ohy86x2NP
         +YSIEIKAXpVa4/BM0Sr8bGdDIlkHAWz1VSqSlGQ0Ee6pkY8X/KOt4c/7jUgkf+DU3xLQ
         URjQeppgXQ33Dej5b7vzW3HKrjbHTJj7XtD1qjo5+FH0gCu+YpsS1U5grGQS3b3Rxetm
         rjy3JUVCpdXq0cvdUw9P27fhaP8pLg0C0gZ5PQy3SeYAf72E8VUaejEmxegiVs7m3tSk
         hwSw==
X-Gm-Message-State: ANoB5pmsC32JtUtnJExZTqDk7+eXn/po00d2NquJaiLANkff6uL8fuTT
	vKhB2I6k/JwxDhWzFC54NGAEUg==
X-Google-Smtp-Source: AA0mqf42nQntitlvu0C5N/oHufK7bSWByH1O58uOQ5GalVNLYodSXuk1OmCznTzWJ97hZTgyjS3LnQ==
X-Received: by 2002:ac2:5f9b:0:b0:4a2:5163:f61b with SMTP id r27-20020ac25f9b000000b004a25163f61bmr3006817lfe.177.1668814367948;
        Fri, 18 Nov 2022 15:32:47 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id k13-20020ac257cd000000b004947f8b6266sm843900lfo.203.2022.11.18.15.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 15:32:47 -0800 (PST)
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
Subject: [PATCH v4 1/8] dt-bindings: PCI: qcom: Add sm8350 to bindings
Date: Sat, 19 Nov 2022 01:32:35 +0200
Message-Id: <20221118233242.2904088-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_153251_691543_D13A00A5 
X-CRM114-Status: UNSURE (   7.98  )
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

Add bindings for two PCIe hosts on SM8350 platform. The only difference
between them is in the aggre0 clock, which warrants the oneOf clause for
the clocks properties.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 2f851c804bb0..ea295bc30504 100644
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
@@ -193,6 +194,7 @@ allOf:
               - qcom,pcie-sc8180x
               - qcom,pcie-sc8280xp
               - qcom,pcie-sm8250
+              - qcom,pcie-sm8350
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
     then:
@@ -548,6 +550,35 @@ allOf:
           items:
             - const: pci # PCIe core reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-sm8350
+    then:
+      properties:
+        clocks:
+          minItems: 8
+          maxItems: 9
+        clock-names:
+          minItems: 8
+          items:
+            - const: aux # Auxiliary clock
+            - const: cfg # Configuration clock
+            - const: bus_master # Master AXI clock
+            - const: bus_slave # Slave AXI clock
+            - const: slave_q2a # Slave Q2A clock
+            - const: tbu # PCIe TBU clock
+            - const: ddrss_sf_tbu # PCIe SF TBU clock
+            - const: aggre1 # Aggre NoC PCIe1 AXI clock
+            - const: aggre0 # Aggre NoC PCIe0 AXI clock
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+
   - if:
       properties:
         compatible:
@@ -690,6 +721,7 @@ allOf:
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
