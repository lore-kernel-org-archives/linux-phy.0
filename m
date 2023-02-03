Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FEFAC61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 08:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLA7TX/Vba2sG+6yEFZP2YnkEVuccYpZv3X1dv4/7bU=; b=wUAYr12z+7U/M9
	gP8iks+IJLjdspt8TadFtAzXx4fvRA8R/0TChCp+VhwbwUQH/3zJm1uHVmCh51gyEgUlFxUonqPIQ
	guEfYOYZcAWE9wZIdo8vFmVuV3SJpeg0O1kiReVDhIaWHUcaAYbVompr/OZWB/UE90JS530u30EaL
	9T+h3x9pBc9iRDa1rGrp/ae6izr1ipIC6ez0mhGzsE3LPWuN6J65iTICMg6ZLKDeAjAw9C1d0l+Dd
	hs6XhtnZAI153daDa8sVm1wRkMhaMhUCXpmn1B/eI16A5n6s/fEZ0jZpMSnijrQ0DvP0TlNKtxhSB
	s3F0duDIss0bUwYPvtLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrH0-000yvg-W7; Fri, 03 Feb 2023 08:18:18 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrGy-000ytk-3j
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 08:18:17 +0000
Received: by mail-wm1-x32e.google.com with SMTP id o36so3250567wms.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 00:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hHVSZmfPgAo5RFgaLsgTBVwp8EpbSHQ6eJ1ToXPAf7w=;
        b=O027C0LG52ThmPeI7y3otX8Qaax8KR7ZNtcaHwJLBjOpGRtMDJ3y96MTi8ywPblY8a
         WUmqEIapAADmtxMbIuNsR8u13YhadKLLQ+1Wjc3l7DBxQmjkMpVEmfSWyDY84wlnDDqe
         WZlKp5+qFZLtz1M6IzW16Kz+I3pvPyTMkoTGE494W7EyiajIddDho3YtEF3lKxZERecd
         66utQVbBtIoJCwc03yzJz2JVII4wRNeILC/aBYwBKVsSna+cg5Rbrj4Y3hO8YYQTsFoT
         BUsP/8jXWj3U+YOjKWGrcn85wfEAlMIU6enF7CfcvGbE7oHqdCqZtclrXVpk2g7GyzBB
         jq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hHVSZmfPgAo5RFgaLsgTBVwp8EpbSHQ6eJ1ToXPAf7w=;
        b=QIU9qMlEJT4s95wcHiVYAAR/pLtkIBtkcT3mwYaLGqIAMABmZ9BccXNtQCisQIp/1V
         pmUIDOijeEt58MPhNNvPYoYHCCIhbf/cT6IFfvVWPKDxabUGbnmY6knKnavHM8a3YYPB
         gwpa1RRf4Nd876dBKsh/FYvPCryfhSw8K9DwK6HrOdhGOZPbY+9g5fFJ0kdy84QBcV9M
         97+BoIsbniMlVTFZNxYIPz2azTZUQtqAU3K2/qa2K9QAo2u/LGTg4vrcyN7Sat4TXFQX
         VtrWpJjtNzHcaAVrp1CR/MkdsBT47+/JdPUkU0sDOwZIEDc7zsQ+WZKwTbt5U6PZ5q0i
         E04g==
X-Gm-Message-State: AO0yUKWX3r/imw9HZCJlfoWDFyr5ML5mbSRIVgHw7w91Ui/FK0jIA8Wn
	0KFpx1KPrVV6csUwxh19FQznVg==
X-Google-Smtp-Source: AK7set81X5uOetuvZvX0o27PRIRbeEQ/NJkqiTaEuo0msEwT8ahEuMWN3/5iVWpFQUIpq+XZF5ovrQ==
X-Received: by 2002:a1c:7718:0:b0:3dc:5805:9d75 with SMTP id t24-20020a1c7718000000b003dc58059d75mr9009111wmi.18.1675412294069;
        Fri, 03 Feb 2023 00:18:14 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id az24-20020a05600c601800b003dc4baaedd3sm7316591wmb.37.2023.02.03.00.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 00:18:13 -0800 (PST)
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
Subject: [PATCH v7 01/12] dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
Date: Fri,  3 Feb 2023 10:17:56 +0200
Message-Id: <20230203081807.2248625-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203081807.2248625-1-abel.vesa@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_001816_170608_07272BBA 
X-CRM114-Status: GOOD (  11.01  )
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

The v6 of this patch is:
https://lore.kernel.org/all/20230202123902.3831491-2-abel.vesa@linaro.org/

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
