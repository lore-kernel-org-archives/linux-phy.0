Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10F8CC6379F
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 14:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6lRGElXBIdbsfheZUWnY3XyTOeB8PZ9A6J7DHIQdog=; b=ABiCRYyYc0QMJ+
	G+ANqT3Zo5/M0DxAFiw/bC0jzKSnvNBBYJ8TDEyRJ7QqaIlh26DXCToPzv3L1yVdzzoA0vW+LH0ND
	JJM8qukAvSYl78EMvFDzN/kQPANcno3PpCVsL+fMbIjjfooEC5eq7rkvgx416FyqPOIMiQgX8eCIU
	Gs0fskTvpGmVdY8F/001R0apLrWxT31RMjAU6UA3Pn3Xka+cZfzOkMNYN+xqz5tvzzO1RZyUZsD3j
	tEarlgQK1Ud2jDkFif9Ge3/8qlgd6TQHEpX1cY25+p3xRbCMpvtMHLyH2uAdDzK1fMrGKhi276q2a
	zwXil28CR0M0upAGFHiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXU-005E7L-BH; Thu, 19 Jan 2023 14:05:12 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXR-005E4s-9s
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 14:05:10 +0000
Received: by mail-wm1-x32e.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so3675247wmb.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Jan 2023 06:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ce3GwxxXOOj5HeCb74kK7+aZTfEk+p7txbLlzWZ97D4=;
        b=Cmkd+Z2GfmQTvd6eFx6R1DDs1KpZqnMU8En6l7oSp7NmCCy/BbOORPcaxzp9ACTyi1
         TsK1YaPjJP84b/leGMn+O3isF7vtWV2ItIrD5VQWonFM+OX5Nd6i97koD1X3pD5D4Qi+
         MhH3CXL8SjVKRpRcpMCJYRjK4ej6SwEInoM7ScAlelID6n3JVcf1zcYxwvMkmS7y3HKh
         lva1WWneVM/3flFAKlFYfbg3bP+fJeQylntwTh2UImtEgi2QxRuQa7+ps22RWPCP3/Mp
         SR+fmVmx40N9LBCbf4GuFJpR7OsyZG0H8BjsXIMV5a1bOrHo7D6u77wn9AI9DBlVTp9E
         WHxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ce3GwxxXOOj5HeCb74kK7+aZTfEk+p7txbLlzWZ97D4=;
        b=MCnOV2eaXif8thy8ZeBGM5A1xJFkjtRn84HKliK/Q3Mr8FBUaZoHQDR9kPqdDE+Fjm
         YJYoW41DQldOyaPGLd+A9tG/PcmEyULduDKR4thDJ+bYiHNqeg5iKejSJmm81i2Ey5tQ
         hlvuREqq8lJkaeMo0LtDFH8lEn5eV2dfZ/H2zokETh/enyVQz9r4Urc0iu6cD1PeIYr2
         InrcLEdh49oSrq66HwIL3OMJCp+4vrOkUQRFDbAt78PY35QJ64KX5yTiiQj4ZUdzf4wl
         p4nZXOHiGRN+syfM6sABgF5HPpXsEYyHLipyx+IeVrE9IkwPqrLyuc9E8i8NKV14v3AG
         KqIQ==
X-Gm-Message-State: AFqh2krLnGhcSqvVZm6H95irzsNWTBjoL8KtZvUthmkO7G4EI9jWcSfk
	RY3ohjxeaJqKdPaEeoS82q9hfQ==
X-Google-Smtp-Source: AMrXdXtcAuLaS3MOfvSXDJI30N+6dJW31PjjvVsqP7Ilrb4FzpvP5BWDXEHZiJBCI/gBfrNh0c9pAw==
X-Received: by 2002:a05:600c:510d:b0:3da:f719:50cd with SMTP id o13-20020a05600c510d00b003daf71950cdmr10036297wms.18.1674137107854;
        Thu, 19 Jan 2023 06:05:07 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m10-20020a05600c4f4a00b003d96efd09b7sm5263883wmq.19.2023.01.19.06.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 06:05:07 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 01/12] dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
Date: Thu, 19 Jan 2023 16:04:42 +0200
Message-Id: <20230119140453.3942340-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119140453.3942340-1-abel.vesa@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_060509_424242_A3CC2010 
X-CRM114-Status: GOOD (  11.09  )
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

Document the QMP PCIe PHY compatible for SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v3 of this patchset is:
https://lore.kernel.org/all/20230118005328.2378792-1-abel.vesa@linaro.org/

Changes since v3:
 * increased the allowed number of resets to allow ncsr reset
 * added vdda-qref-supply which is used by pcie1_phy node in MTP dts
 * added both compatibles to the allOf:if:then clause to constrain the
   number of possible clocks to 5

Changes since v2:
 * added back the binding compatible update patch

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml      | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 8a85318d9c92..4b4566f90811 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -20,6 +20,8 @@ properties:
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
       - qcom,sc8280xp-qmp-gen3x4-pcie-phy
       - qcom,sm8350-qmp-gen3x1-pcie-phy
+      - qcom,sm8550-qmp-gen3x2-pcie-phy
+      - qcom,sm8550-qmp-gen4x2-pcie-phy
 
   reg:
     minItems: 1
@@ -43,16 +45,21 @@ properties:
     maxItems: 1
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   reset-names:
+    minItems: 1
     items:
       - const: phy
+      - const: nocsr
 
   vdda-phy-supply: true
 
   vdda-pll-supply: true
 
+  vdda-qref-supply: true
+
   qcom,4ln-config-sel:
     description: PCIe 4-lane configuration
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -113,6 +120,8 @@ allOf:
           contains:
             enum:
               - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8550-qmp-gen3x2-pcie-phy
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
