Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD9EEC636D4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 12:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enRDp0vefKygyCox+67MSnFkBx5zSZRgYCSKCcTrRwk=; b=eDJimkgyrl5I6e
	x8anm+WdUv1T48EVvkKPxmuywj/v+OvFkVCz9chD3Vk+hkcV+CAstecekh5unXw8dE8/lzn0vTb/L
	nrXgPQ+uEbSENnZF1DoiOhkhti1LnSaDV2kFMdp+NPFk3qy5HYBAs6VjPoBbW9YoWQaWnkNLwSlQX
	0CAeC4NE/BHf8ZitEsgcPbRLLq3+M82icRDXmu3Rrxbc6wkWEVIljXQRsDqsvmILOaomnZ+Imeq6P
	jgRf18dqs54fWqR/QLKj5qA9xrUBjTonVqUm6yvvyT87d0qTxl8kEpAVg2/dv5otSKVeCR0NEnnbM
	n47S0OK5iQWA6XEE10xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs1-00FpDD-6E; Thu, 02 Feb 2023 12:39:17 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYry-00FpCE-6O
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 12:39:15 +0000
Received: by mail-wr1-x42a.google.com with SMTP id h16so1553712wrz.12
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 04:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f6VouN0MlWgjUshOJPKbo7az5XyXYLPFJ7JD5CxhfXU=;
        b=IAAI0Mve3sXdspkDMVmAAgMvVKtqC8M8bvqtq841a0lZOcllSyFN4CCXQl+6ZORct4
         gWxwXg54GlTw/t7ujjHhEg7yGvdPmBxIJjADfZC/OgdgVJlM7J63rxUrRPGzDEIG1RTx
         DL7PKAa/gdhtFotKxMCdorico/dFvJ1GB3bHiYQXqmpXGjP7Iezxdosh6RiikSTnkiuX
         TVDtPgO55+sK3RmrSuEfk5oAZmVpYxxu4JgVMtHNBdVu53bVhM3HH2BA/M9nz2Sz6I2B
         ehVLetPKrK78pFOcUPjyP3kbLXISd7Mz0FVJQGdjtGCzoWz8+WLFJa1dnIKXFhs6CLLP
         yooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f6VouN0MlWgjUshOJPKbo7az5XyXYLPFJ7JD5CxhfXU=;
        b=xCP797XlzfdBfhHVQX1DhY1rPlqRhVbP+iEOIop8+Wt7N5m5tfZxYBCWZAZjftOAod
         qIj/NT66dY/QRLv7SbHOPleexJWYJOqUcNpMskiYmkzVcLYv7nEb5orSbqzeZNW6qswA
         ZvznBQYwG+f/rgtVTz/oydCwRuFv5r7WwKnNbPanypbSDOZyQ28d46LvYA2cDnGEIHvU
         GcZbxqP4dmbWuPD0VLbzR15amrc1Jw2lU0lVPLYn+FLWtjdVpENDkYtBQ8JHbMt1YUds
         3DsHkECh1VwqyeykeYJv3pxlRKaaTWjOULYcVS6aeSMldZ8FhBbrOLbekqVDNjvphdQ+
         uiaQ==
X-Gm-Message-State: AO0yUKXT3Ns2GeRfNisKRnQAKNPQrMe/g4x/9SywhJDJT9wUgSJ9dUJC
	mCLNsecriBi/MfrBibJEbp+c+g==
X-Google-Smtp-Source: AK7set8qnBhGskoZh8msy/I6YjkTW9VLwBR0VChSsus1s4lmxEmPBQ+U3BRpClRae5fUqod4pYJXRg==
X-Received: by 2002:adf:ea08:0:b0:2bf:dfa2:977c with SMTP id q8-20020adfea08000000b002bfdfa2977cmr5364351wrm.47.1675341552503;
        Thu, 02 Feb 2023 04:39:12 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j5-20020adff005000000b002bddd75a83fsm19525644wro.8.2023.02.02.04.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 04:39:12 -0800 (PST)
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
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 01/12] dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
Date: Thu,  2 Feb 2023 14:38:51 +0200
Message-Id: <20230202123902.3831491-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202123902.3831491-1-abel.vesa@linaro.org>
References: <20230202123902.3831491-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_043914_258047_BE38FD95 
X-CRM114-Status: GOOD (  11.57  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v5 of this patch is:
https://lore.kernel.org/all/20230124124714.3087948-2-abel.vesa@linaro.org/

Changes since v5:
 * added Krzysztof's R-b tag
 * renmaed the no-CSR reset to "phy_nocsr" as discussed off-list with
   Bjorn and Johan

Changes since v4:
 * constrained resets and reset-names to 1 for every other SoC

Changes since v3:
 * increased the allowed number of resets to allow ncsr reset
 * added vdda-qref-supply which is used by pcie1_phy node in MTP dts
 * added both compatibles to the allOf:if:then clause to constrain the
   number of possible clocks to 5

Changes since v2:
 * added back the binding compatible update patch

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 8a85318d9c92..ef49efbd0a20 100644
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
+      - const: phy_nocsr
 
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
@@ -126,6 +135,25 @@ allOf:
         clock-names:
           minItems: 6
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
+    then:
+      properties:
+        resets:
+          minItems: 2
+        reset-names:
+          minItems: 2
+    else:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
