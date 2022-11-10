Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCD44C43217
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 10:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4n2gFllgUIJmBfpyHewM4fXQrD/9OfCmjSgY1wqxSaI=; b=CLwNXqoWjzWALB
	eHlwacOTcNhYjacRUQgLTI9Pnlggs+RSI7vbgaWrcdbQwplplT8gqefQ7fkFdYMNNIKIYRinTzhVG
	U+I49rnY52bhP8vWZzNa+1FSAxvWdPRiIYX7hu9LiQ+r409h2hgndEuYPPcB3Wl8ynbU3hXWKUNtW
	labU5O+lU5SaeqNkNPHEEnjhxvtabM9sm77GNtug8BocUxvqAyRdjsrwn96H4SUL2CnVyCb3Qs8EF
	Wwsztd/z1vSvdGXzu+5Cntcz//PDxlsTDtIFlQKGIgAHjsh/u0r/1YVooaCHeRj4mf8zXYAQ8LMmk
	XG1A+fvI6KKsZ1oVBMkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4sa-0053aO-6L; Thu, 10 Nov 2022 10:33:52 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4sY-0053Ye-1c
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 10:33:51 +0000
Received: by mail-lf1-x129.google.com with SMTP id a29so2332300lfj.9
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 02:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z/is0taNXLslowunLGClJmRq4bGkunbgWU7W/P30/eU=;
        b=tGeALP/Fg/0LrOJE9suXQsCf1lJbB/hoJO4PNAsf/zhf0QKa6taViJVx3SrAy50TSo
         S0bzg+08NQIhkicAi8QTRW4Z/h7FR/i+VomE3gaLzeMJIKEFIKdvJgnLtLQ/oD9dT1bu
         YFPWULdw76wooTn4kRN+5/+EiCpXLtElsNOzZ/LQ19nkH2sqdaBu9FgLrY7Gl2Y3rF8f
         SbvWwyvb9yx/HT81cvdqTUPqoUeL07DTQEFlUgL5ADSvBOzPewudUTxkyAmU57cNXNS2
         jFVfbj9WheuDuZLmko9gkC5gvUNK5xi7PSSpQrUdhEjQmOBf1mjiMhUawN5RI3bZdYIW
         xsCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z/is0taNXLslowunLGClJmRq4bGkunbgWU7W/P30/eU=;
        b=BXV3q7BENzr9hkkELjjBVq5IVHF6qwLgtg6wCcgKkDDaF4/LHu7xPeV4olmgEXz3JE
         9VsPlekiMu50LMiu9fXZ/SG0d0Md40/fL4WN9dIVeJfGIVoR2/twZYy85L2zpOBCuZEC
         /BixaXg1d0CQubLhFAWHz/xYbxMOVrTy3mi45RSU0KiWiUx3UxGnl6ojwPsQiafyHtjU
         HXomDmOJGP/Wa+XjAHXf2sixFn3sDwHMmJkmIgpxXm3y85QNg7/eNKi7TVPEAGAuyUF0
         j6qVglcGMaIVJkR1enFv4/QlHBHSHdytOOvZ9gRUhmKDkEMgZuHba8J5i61YMEic3e8g
         xaow==
X-Gm-Message-State: ACrzQf3oIL/7YjR1PwA/40AmK1cavUNvPzGnWM1af9LR1LXiUDAXZaxU
	E7FwGN6zGixEZMdiKf3RbdtvUQ==
X-Google-Smtp-Source: AMsMyM7XD4ARqKcBdJZhUsgf6Wg13cEtDV0E8et7ZHgNi3+yZcATHV9Ccz/dSUiHCdGLrmM5smyFqA==
X-Received: by 2002:ac2:5cd1:0:b0:4a2:291a:9460 with SMTP id f17-20020ac25cd1000000b004a2291a9460mr20904690lfq.203.1668076428443;
        Thu, 10 Nov 2022 02:33:48 -0800 (PST)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id p22-20020ac246d6000000b00498f32ae907sm2687837lfo.95.2022.11.10.02.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 02:33:48 -0800 (PST)
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
Subject: [PATCH v2 1/8] dt-bindings: PCI: qcom: Add sm8350 to bindings
Date: Thu, 10 Nov 2022 13:33:38 +0300
Message-Id: <20221110103345.729018-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_023350_108905_BD217D53 
X-CRM114-Status: UNSURE (   9.95  )
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
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 54f07852d279..502c15f7dd96 100644
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
@@ -540,6 +542,49 @@ allOf:
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
+          # Unfortunately the "optional" aggre0 clock is used in the middle of the list
+        - properties:
+            clocks:
+              maxItems: 9
+            clock-names:
+              items:
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
+              maxItems: 8
+            clock-names:
+              items:
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
@@ -670,6 +715,7 @@ allOf:
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
