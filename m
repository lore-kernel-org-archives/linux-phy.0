Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF129C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0+XDCl+UT0hA37RmjGiSrvNvbWMCMSZgeWON462H3Q=; b=vTYvvxSFjFMBtM
	fhy0kCZjAudU/8xaspLAZiMXM6baEVzb/Cy+Lgq9KwVrrz9DOBXvyoXOZRMzZe5KN2EuFILWcF6so
	UuFaTF/w9a3Ehb9KDBB2Nhc9HKs5Elht2hrvPP8zVZVDZ2xMeyV3cBWdneAD3eNPIbR6oMHdZnN3y
	ue1tYTppt4Nx4Yw5ijjeeRnB3YXPFmohR6OrP4mahN1JhseC36nm5rjuC5QmwSrt277ZwH2PDkpHW
	TTakAlV7Dj+9mQSioMHlHnmlZ2fU1ZtinHZdghI5u09/dFYdt2ElX7Vs7pXxVZ0IccQneg0qTBoka
	KkAwkc2ms+FMohVz9j2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6T-003xaA-DS; Wed, 08 Mar 2023 08:24:53 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6Q-003xYI-M8
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:24:52 +0000
Received: by mail-pl1-x62c.google.com with SMTP id u5so16936264plq.7
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BWGkUKxc1+RShsSquL6TSNv4d+3ZNQVwM0OHF82Nolc=;
        b=nnv0TKxz1LQVhz72XMyVwhz2edQHF5C8K/gYRQygBo/yk+Dbv/xU+iD8tOrKpBybxo
         Th40/nZ5t3RuUuVaBM6w9/X487xPXQIMTOKM9TbKVKor+Z0RVV2eYg8W8PhlRGiSX/kh
         ddWdEZIFEpMwK++1pKPLAP1lGQcQYlhaYBvzvGWLWaFB70c6ZfKmR0GdchQKNjwHjGZc
         iN+14smx3G6dHXcmkw1THuLbzgflDB5QFz+VmZr10YyKqLAPt7GpI7XLw4ybBEWFJWv7
         Hrj4r6bBgz9hKSJUOWbkNDVSPO/ri5RP9664q/ztWxL4fVHCC9ZgzTxmkwpwyZYGN4gi
         v6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BWGkUKxc1+RShsSquL6TSNv4d+3ZNQVwM0OHF82Nolc=;
        b=Y91Tfxz3avZ170nhgKJFQ9CufXLRjHoiTrz87MM/DUQWRO0fpHLA/j5YeVUxAm+KxX
         XFEQMDUzsBhHQMODaf9fLoD6q31GsAlsEkyakvqnTv3UrmTJCjD1xtz7lfN07NUsu3gm
         Xnh/RZo1y2Rz+TJkKXNixKI6aIxQgAlwtguHIgVn5nnaCP2qptjGgYz7pXwzwkfYgAC2
         rWTjrQ7KqNfFfGXtq25fPWOL5YSRzob5KLJ3XbCFi692IDZGIJ0umO29oFcVPzADwVMW
         mKd/tCBuYCcVtfEF7dIvbT0k+T3UqhUfxDeSw6do/HtEJoIs0be96r/H6fx2DwNXAKGq
         HvPw==
X-Gm-Message-State: AO0yUKV0N6xVP9KnfVj6ohkNKuupjGwEs5ynpQZHQi75A1/78pYA3AQ6
	eH+lkZlqQjT9M3Y57fml0Rwj
X-Google-Smtp-Source: AK7set9hgLNXRCzM9+1cjNcg3cIBVdT4wUvKBQU14zJyGNk2N5NXDyJJWVjP3UoIVTQYzfWFhPYFbA==
X-Received: by 2002:a17:902:cec6:b0:19d:1bc8:488a with SMTP id d6-20020a170902cec600b0019d1bc8488amr22220855plg.29.1678263885323;
        Wed, 08 Mar 2023 00:24:45 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:24:45 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 03/13] dt-bindings: PCI: qcom: Add SDX55 SoC
Date: Wed,  8 Mar 2023 13:54:14 +0530
Message-Id: <20230308082424.140224-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002450_739919_9C47234E 
X-CRM114-Status: UNSURE (   7.89  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 55ee86facbc0..35ef56553603 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -33,6 +33,7 @@ properties:
           - qcom,pcie-sc8180x
           - qcom,pcie-sc8280xp
           - qcom,pcie-sdm845
+          - qcom,pcie-sdx55
           - qcom,pcie-sm8150
           - qcom,pcie-sm8250
           - qcom,pcie-sm8350
@@ -203,6 +204,7 @@ allOf:
               - qcom,pcie-sc7280
               - qcom,pcie-sc8180x
               - qcom,pcie-sc8280xp
+              - qcom,pcie-sdx55
               - qcom,pcie-sm8250
               - qcom,pcie-sm8350
               - qcom,pcie-sm8450-pcie0
@@ -671,6 +673,32 @@ allOf:
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
