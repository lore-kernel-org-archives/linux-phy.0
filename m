Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FB44C05027
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 21:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9JkrjUd2VAIspe4ICzlLTkL9njAE5Ku/hv7T7mA8H0=; b=ykM/rulsDSYpQG
	tMSTsRU6n+imTU0oEbhP4J/bvTrrPigC+wMz14NxZy76pOc9DVK8aK2tCw+3MKyAhyDdd1vy5Lo6d
	IqMYvFHRD4E/+pzO3H3Ry2q2BcSfwvgrAxh59nLSXL3zYNZgR40ZYx2VEX4OV/NaIM/GnGjwja6LI
	02KzVITSXnBkYX7Y43Z4mC2kW/gGnvdPXcd3kbmjx24g5m5sECQR8XE7J+AHS7GIGIAyj/wxI0laa
	ikRW9u5wNAA1A08IuHsAVFpcWMM7QJI7G2hsi4hOrn7tvWouYl7ObVNnQ+nCbALGBG7pt/qmJNxC5
	FQ4atQfQxLA7yQx4wzhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90R-009zGr-CM; Mon, 06 Feb 2023 21:26:31 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90O-009zEx-Nc
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 21:26:30 +0000
Received: by mail-wr1-x431.google.com with SMTP id d14so11729150wrr.9
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 13:26:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m7PS6b5vkJPFlGz4zOi2GTk2RyAin7yCEnLhrjw1nNk=;
        b=LXT3KxxoYDTVakG2EVnFyJX0Ecoe0375mD4EVdWYvoZ0/77UtL8TqV8Rr4ebhuEDMW
         +mO4/eJK6PdpclKyD5rGI6WbkDVILkqZrbDfmMm1/FnDlnQHucF6ReBa0s/ru5V4nUOU
         9UnWsRtNaDOH6VR3QbMxTWC2f50gC8kffNZHAXZhAbWqkn4fPuSHbZQqJdPsuCAvqjoD
         N4Frmd1qX4IRz32ciC5lMaxoJtcq57Vl2SgZtJVHI6TSI7V38c3MsRJ5cSXhtOWPjlIF
         xrHbEkbQ3V90FwhhLVCyaWyjiZyK5x1bXZLXmeZx6ICWyOLjeTdzB+h8aU3+9E8gLxoW
         VoSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m7PS6b5vkJPFlGz4zOi2GTk2RyAin7yCEnLhrjw1nNk=;
        b=fuc/FGfq4LndG+Cz21eFu0gM2fJ0VvoYZbrj6D0cAHigk5iJa1Kbig6F3gaxzJNtaw
         ZDNql+tSKfs9+isK3LLkJZkM3XPsJW/6vlaLvk/5SwpPbzRYTV9ks4dzccQXjY7kPk4n
         NzyoTTd5VowVhjQk93s/Qpux4NJSoiBjck+kpvWNjtzRbDw0QHlCDXzGwMEEK27FMrd0
         gG9oE94RZ84K5FF5rQ4qt5DakupzvF3mr/lZ5IQTuB25fWX1wYefp4BT2zFWRi0IfX7s
         ds8lJSFWTzv0RHtRvmHWeg0vtqDNXMUz2CErn5cIzS4NERQYZm+PZ2o4p6ydC3ipFm6x
         rfUw==
X-Gm-Message-State: AO0yUKUuLk36NL4yJ+F08PO/wEiBTcDdjCP8kJGc0ZgHBg4YRG4WbJ9Y
	ghFPqHC4KnPz/h348zWa/KpEUA==
X-Google-Smtp-Source: AK7set/N0Z515Us6ba2AQzmcs4+lftZy9SCGxw2jiSRJD5nCFbPEB/efF7Y2ek9XQbT3R4s+Q25TKg==
X-Received: by 2002:a5d:6941:0:b0:2bf:cfbd:44be with SMTP id r1-20020a5d6941000000b002bfcfbd44bemr227090wrw.69.1675718784988;
        Mon, 06 Feb 2023 13:26:24 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:24 -0800 (PST)
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
Subject: [PATCH v8 01/11] dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
Date: Mon,  6 Feb 2023 23:26:09 +0200
Message-Id: <20230206212619.3218741-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230206212619.3218741-1-abel.vesa@linaro.org>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_132628_788886_6F32033A 
X-CRM114-Status: GOOD (  10.59  )
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

The v7 of this patch is:
https://lore.kernel.org/all/20230203081807.2248625-2-abel.vesa@linaro.org/

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
