Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEF18C64EC4
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 16:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tp2s0UuUacHXA3DdAPW6og5I8q655wo1YYAnZ70Zn4=; b=zhmFt8Wf5sLIrD
	DQVk6ThK3khq5ktWzb+FiWShgOaWvf77ZP0Hgg2dni2Oh9w/X7OlPkY8EoznEZWJe1g3XSywKvh1r
	YaESO3D2ADPw1WccupQP4cP5KfUAXOZsD8UHHfFGrG2KZYlN9MDyfJKmz1SBy8ABeEhmGjgFXsFAk
	/ZO5Uj42j1N3raQOFxPWJF/uQw6GDxpY/UJ5M5IesQsNIYIEAcLrVnNPTkas8/H3vfsBiVmbZ3kBO
	JnkVTXOvfecC2INBduiZuyDnqIKqZDmhF0FKED5dTTBUNJeq8XPRMbwqHM4fxAAvxZhZcXlKE2SHZ
	7woz2cH8gMvW0QmfdJTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUsFR-00D4tT-AU; Wed, 22 Feb 2023 16:45:41 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7U-00CsV0-Ue
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:33:26 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d7so4768650pfu.4
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LMSvnDU64o95J5N9i3H4OYKYP+QezDC8GOgpgloFHv8=;
        b=GDFmvn86qxfTR0yFZJ0kAN5wpkL6OmovwhzyDVJMaoo5VoeD6W7HNMZ+L7inWzGW20
         NZTEKa3hwArvPxMK/A5YxCkzFbOyG57LnQTHFZHVqfTOWmiHXTrfnvnFh6z2RCl59B/d
         a8Ri7whljlL9tjARXm/cua1hCL+UT5QkeD3W8bMwFWRdmRvd9ZNBOFMmY7JdEwswJBip
         nZqNsjmhVnj3dzV0Sdgi+gXkRk6RB+wd03h6x0umiA8nZtvNC4cXGP8Tac0foKnG2gyA
         s10Na+zpRapA62TDhdRdK2FBCT1RX3gtgkSsIjNqaEneSnQmVeQmFOepT8TRCMqkC9y2
         pSlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LMSvnDU64o95J5N9i3H4OYKYP+QezDC8GOgpgloFHv8=;
        b=f/XYiMivGlEONeZ1v4nfV6sxrVUf9PvJYuHQLTOaDhdXnRkeuG/s1zVMfklKXt2SL0
         PPb7XoQ09g+2pWoIRCy6KIod2b/iL0VoE09Zj336FT1Nes9txzlno+qQtb06rrNr6y1Q
         JuHdDa9Amit2BemxEQseLkM+v7aU6mUheLpbG/kw1zx7lr5xZRdJbwqLQqYrK6zYGXHP
         xinu4p2oCo+r6Gadyr/lh6k0U0h9KW3N0ulz4Hjw4apTSGxQQihnjshLQO341H+0b3ru
         F83FgtpukBY3r0wwHdHWYOiU5E8E275N/rdpaEZrwYAlgslK2dEUczAZNWWBp4l1fNic
         Rekw==
X-Gm-Message-State: AO0yUKXve8PjT9etw/N8zsmkrXVZH8PmwSF6GhMvmgo+aRbZG5gUAL1Q
	du/bL7UujCb6ZxYR+djCaS6v
X-Google-Smtp-Source: AK7set9ni8WDJPDhM17uAJwQMGjhZd/em4yQh7aJpXXmajfE+IZd1d8hcwT6xeKzy8U9BhvFvF3Dhg==
X-Received: by 2002:a62:1cc8:0:b0:5a9:c682:f489 with SMTP id c191-20020a621cc8000000b005a9c682f489mr8338789pfc.3.1677080000042;
        Wed, 22 Feb 2023 07:33:20 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:19 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 03/11] dt-bindings: PCI: qcom: Add SDX55 SoC
Date: Wed, 22 Feb 2023 21:02:43 +0530
Message-Id: <20230222153251.254492-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073325_007951_E51655E5 
X-CRM114-Status: UNSURE (   8.09  )
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

Add support for the PCIe controller on the Qcom SDX55 SoC to the binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index f48d0792aa57..3bba1ef3cff5 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -30,6 +30,7 @@ properties:
       - qcom,pcie-sc8180x
       - qcom,pcie-sc8280xp
       - qcom,pcie-sdm845
+      - qcom,pcie-sdx55
       - qcom,pcie-sm8150
       - qcom,pcie-sm8250
       - qcom,pcie-sm8450-pcie0
@@ -199,6 +200,7 @@ allOf:
               - qcom,pcie-sc7280
               - qcom,pcie-sc8180x
               - qcom,pcie-sc8280xp
+              - qcom,pcie-sdx55
               - qcom,pcie-sm8250
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
@@ -646,6 +648,32 @@ allOf:
           items:
             - const: pci # PCIe core reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-sdx55
+    then:
+      properties:
+        clocks:
+          minItems: 7
+          maxItems: 7
+        clock-names:
+          items:
+            - const: pipe # PIPE clock
+            - const: aux # Auxiliary clock
+            - const: cfg # Configuration clock
+            - const: bus_master # Master AXI clock
+            - const: bus_slave # Slave AXI clock
+            - const: slave_q2a # Slave Q2A clock
+            - const: sleep # PCIe Sleep clock
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+
   - if:
       properties:
         compatible:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
