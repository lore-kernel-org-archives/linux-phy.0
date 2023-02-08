Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51BB9C05027
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ropeD9WGRgRvG7lPX7LcL0vG0mtSVDfQpSPIWlaJ7w=; b=FoGqc2L/6ylttp
	k5+aw1s6kHofVdg1haNKKkqjGv4WF9ZIvr6ZDsHpbNbgeBbNGkEw+9t9rkuYkb2a7SKJ4u0n9eAPk
	ZKRb+IvCZvVHBkq81k1JXpgsA9i9Ed88KXEwKtUlE8P2T7KU8XQ/kBBBWKqrUt+9WFPmCJx1mGsAv
	67gcSHu3nGPXbvvzNTOor98VXcC1iHgIt69quVIDOg9M40O/fPn4kDM2feSqAgl8OyTvh2jy88yS1
	rNFQgkF84TyIUJbDIJ9FZOzBkPmGgSKeEmEwknNaIxvzpOv0U+COV7dS9It/GLodoVqYaa1cEIRJU
	C4PqUBeGgT+gE3ZkgU4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokY-00GXRW-NM; Wed, 08 Feb 2023 18:00:54 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokW-00GXOv-6Q
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:00:53 +0000
Received: by mail-wm1-x335.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so2070039wmb.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6KM/i62HSUxCVg8Zh4TiHwfFhq4muwIio+7QAfo08ow=;
        b=Ujrz+Wh1xsDd6ZgMgexZNYjur0f8M1mQemnqik7jojmeDQYZSfFUXjXbYCno7wg/1P
         OVpeAyNqmQRLkS90klnBjIJ+m+dtCzwDnlLwawlEiDIgEEYXr+eVJu+gs5saHqVQs4LU
         1q2lDh74nK0CrYHyFTPG9xlu2P1/jIjQvsnnUssumGxU5PNKgfJzUnKA+sM0j4gJMUSQ
         0x6nYO3X0TR5lktALIUij2n6GbMsXSWprXPOXq3oLdyniflAXf+l9iqnjgLriWs5br2m
         HdZbpLfMln8leICZO/+MFEGxQ585UL6e1fnCaQnIKz7v2K5wiCHY2N2Dg8K2p+f20P7w
         Hp3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6KM/i62HSUxCVg8Zh4TiHwfFhq4muwIio+7QAfo08ow=;
        b=o6mb7rGq0fE4L3ahCydHrcHVuTDapqeCBws1RslLKIyuKOv2B8gQCvVLSn1sjuVYlO
         4t6F9x5LsbgJ0GEOmFJKmdfnzcKsubfaewlLLCvAZNNom4zRfH11TUCIFB25pXHIshAr
         /H9Qg6pAAwj+e8CY6Yl0h5BsxnG8cn3j7fmNEuMmYidCkuUoszfBuQvrwn0ZLW+WOZvA
         CCy3LiBxrSkB3HSLA62mu895jZhW7NdKjWI0Zez8bEhSZ+BqPH5+J4QFz0qCjykte2yO
         46Jw9MUOy1CpqBFsiM9TMuj2mpCgslyH5+ABV3ny2+oRaCthedoWspSL47mBaiuVPGvn
         14qw==
X-Gm-Message-State: AO0yUKU+zyalLTjk2aOqDUkpWMhjJd/rLIadCg5GlTEiT6Jhexfz+pEi
	TqG8GJzhdwxPALk+tY6dX2IR++HlUNwr0M79
X-Google-Smtp-Source: AK7set+DlfST3ZoKmbSCgJf/bhGdTRPxmglOFoXuGCqis65h3dNx8vWY3xDiuyq5omBsMnDLedIcpA==
X-Received: by 2002:a7b:ce0e:0:b0:3e0:39:ec8d with SMTP id m14-20020a7bce0e000000b003e00039ec8dmr8030047wmc.26.1675879248269;
        Wed, 08 Feb 2023 10:00:48 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c169400b003dc54eef495sm2370286wmn.24.2023.02.08.10.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:00:47 -0800 (PST)
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
Subject: [PATCH v9 01/11] dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
Date: Wed,  8 Feb 2023 20:00:10 +0200
Message-Id: <20230208180020.2761766-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_100052_256715_ADE00F26 
X-CRM114-Status: GOOD (  10.70  )
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
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
---

The v8 of this patch is:
https://lore.kernel.org/all/20230206212619.3218741-2-abel.vesa@linaro.org/

Changes since v8:
 * none

Changes since v7:
 * Added Johan's R-b tag

Changes since v6:
 * none

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
