Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39210C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 24 Dec 2022 16:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xnKgofsJFdJlH2cIdskRVToDB2r3PGdXUHM0iYaqmVg=; b=taCdC7n9XZ9DFX
	klZ9TO7DJrUuUNIHdVOWcqJ9YO7/2VaGKN8bkuAwPGRFfjDtsuGyE8HwfOMArYB2+/DxBg6IfDuqD
	Yeb9sNvQ7Lx2iNMsmWROWv5ifmNIcBgMd7nCJRTsSWAhSRi8Tt1jhZOu4mCi6IuFhO7CtTcDfQxxk
	L8VSdlvpK84rwN7YGUjsTlPKRNdRGr0YQYoYDtujrVAXqUkPUvtxedMeTH/K0k5SwHDQ22AIIdprO
	iLylfiXrmo9tULetpZe9JEKs5eEDxgHqoKZQfwJ8ZBDXzGV9vyxBBjbOdrgLsI+6XaECrZ/U94MmB
	GuRn7YWV0/ri0xM+vO6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p97RZ-001fdz-RL; Sat, 24 Dec 2022 16:32:17 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p96fP-001DOy-Vl
	for linux-phy@lists.infradead.org; Sat, 24 Dec 2022 15:44:32 +0000
Received: by mail-lf1-x12a.google.com with SMTP id f34so10692935lfv.10
        for <linux-phy@lists.infradead.org>; Sat, 24 Dec 2022 07:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gJqi/1NfJw5LwmQrgbx8SfjaLOZbl6rNXmEOBkpmpe8=;
        b=wUUm02cnXMPlt2wsPdE3aMA2yBXTJM2VCaWmwwqZJrw3xAXSIGYwmq1jxaG0rXOYKE
         pzioV0tukf8viXwELdkDqkNEpYMvEFEshPpkbNHzbfy0lrVU+cZaEAftFOBkTVPxl3GR
         Rg7n/u37E97Uc4n0itbD/nmCsF/FHRVNLJOf+zspSgk1VmkG8sbPOqzyKiAucSB5cqZ1
         YVpD0IySp44WMQR+giw+N88E13sqO472wa0pCukxj/oYxWZ7W3B4vSJouQd0C0kWzOeO
         koGYyJziLfTOz2NkPujTsjY3aHk/YkDSiULt5DlodvFeTjE+eNw6Osye0pON7pPSkGAB
         /48Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gJqi/1NfJw5LwmQrgbx8SfjaLOZbl6rNXmEOBkpmpe8=;
        b=oybsSv2GsJAJofj1PkBG/X9IpdHwQBmLeU+nrDSewT4N0xfaiAyOc8UTlzYYXRPipx
         8TJlH6579ly0sCUt/mqyvY/dTtjoK9M3OI9wwBf/dUWL3PLe6gm/R2XHmmy0xscx/3a+
         Napy+vbslTvQQaUCf8oZ7r7XNnWDWhxTq62+UcezVN8j+Ao13L6lLGRaM3UWEqKcNUwQ
         JXLwvzLBzlrbxyIxZkdvILXZimoDxT+NhhuUEYkIl04Clyu8+7KLbwNxEQjfwarx+jEg
         D/jzKKGh4KphSXWBVPvr9gQFTtPqUQNoL9F1+6rDMzNx5iBFHF9q8S+hDhoYVF6kbihT
         vPQg==
X-Gm-Message-State: AFqh2krFITOhZqvo37J/Og0u2qxCHxGzFuDwBij4SxtggxDm/HfOGyov
	/yvUJQRM9QAp8R8BbmK1DaP7Yw==
X-Google-Smtp-Source: AMrXdXtxRWvo/hNKLsncTNLOdWGWw0VPar3rFmWqe8f8wqB2p0eEuNC5Pu/kpr5/kkvzuhjNN/QIUw==
X-Received: by 2002:a05:6512:3984:b0:4a4:68b8:c2dd with SMTP id j4-20020a056512398400b004a468b8c2ddmr4191249lfu.52.1671896548741;
        Sat, 24 Dec 2022 07:42:28 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id x11-20020a0565123f8b00b004b5adb59ed5sm979918lfa.297.2022.12.24.07.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Dec 2022 07:42:28 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,qusb2: do not define properties in "if" block
Date: Sat, 24 Dec 2022 16:42:26 +0100
Message-Id: <20221224154226.43417-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221224_074232_175393_B5268D6A 
X-CRM114-Status: GOOD (  11.14  )
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

It is more readable to define properties in top-level "properties:" and
restrict them (if needed) per compatible in the "if" block.  Defining
properties in "if" block  does not work correctly with
additionalProperties:false:

  sc7180-trogdor-pazquel-lte-ti.dtb: phy@88e3000: 'qcom,bias-ctrl-value', 'qcom,charge-ctrl-value', 'qcom,hsdisc-trim-value',
    'qcom,imp-res-offset-value', 'qcom,preemphasis-level', 'qcom,preemphasis-width' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/qcom,qusb2-phy.yaml          | 160 ++++++++++--------
 1 file changed, 85 insertions(+), 75 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 636ea430fbff..7f403e77f320 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -82,81 +82,74 @@ properties:
       Phandle to TCSR syscon register region.
     $ref: /schemas/types.yaml#/definitions/phandle
 
-if:
-  properties:
-    compatible:
-      contains:
-        const: qcom,qusb2-v2-phy
-then:
-  properties:
-    qcom,imp-res-offset-value:
-      description:
-        It is a 6 bit value that specifies offset to be
-        added to PHY refgen RESCODE via IMP_CTRL1 register. It is a PHY
-        tuning parameter that may vary for different boards of same SOC.
-      $ref: /schemas/types.yaml#/definitions/uint32
-      minimum: 0
-      maximum: 63
-      default: 0
-
-    qcom,bias-ctrl-value:
-      description:
-        It is a 6 bit value that specifies bias-ctrl-value. It is a PHY
-        tuning parameter that may vary for different boards of same SOC.
-      $ref: /schemas/types.yaml#/definitions/uint32
-      minimum: 0
-      maximum: 63
-      default: 32
-
-    qcom,charge-ctrl-value:
-      description:
-        It is a 2 bit value that specifies charge-ctrl-value. It is a PHY
-        tuning parameter that may vary for different boards of same SOC.
-      $ref: /schemas/types.yaml#/definitions/uint32
-      minimum: 0
-      maximum: 3
-      default: 0
-
-    qcom,hstx-trim-value:
-      description:
-        It is a 4 bit value that specifies tuning for HSTX
-        output current.
-        Possible range is - 15mA to 24mA (stepsize of 600 uA).
-        See dt-bindings/phy/phy-qcom-qusb2.h for applicable values.
-      $ref: /schemas/types.yaml#/definitions/uint32
-      minimum: 0
-      maximum: 15
-      default: 3
-
-    qcom,preemphasis-level:
-      description:
-        It is a 2 bit value that specifies pre-emphasis level.
-        Possible range is 0 to 15% (stepsize of 5%).
-        See dt-bindings/phy/phy-qcom-qusb2.h for applicable values.
-      $ref: /schemas/types.yaml#/definitions/uint32
-      minimum: 0
-      maximum: 3
-      default: 2
-
-    qcom,preemphasis-width:
-      description:
-        It is a 1 bit value that specifies how long the HSTX
-        pre-emphasis (specified using qcom,preemphasis-level) must be in
-        effect. Duration could be half-bit of full-bit.
-        See dt-bindings/phy/phy-qcom-qusb2.h for applicable values.
-      $ref: /schemas/types.yaml#/definitions/uint32
-      minimum: 0
-      maximum: 1
-      default: 0
-
-    qcom,hsdisc-trim-value:
-      description:
-        It is a 2 bit value tuning parameter that control disconnect
-        threshold and may vary for different boards of same SOC.
-      $ref: /schemas/types.yaml#/definitions/uint32
-      minimum: 0
-      maximum: 3
-      default: 0
+  qcom,imp-res-offset-value:
+    description:
+      It is a 6 bit value that specifies offset to be
+      added to PHY refgen RESCODE via IMP_CTRL1 register. It is a PHY
+      tuning parameter that may vary for different boards of same SOC.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 63
+    default: 0
+
+  qcom,bias-ctrl-value:
+    description:
+      It is a 6 bit value that specifies bias-ctrl-value. It is a PHY
+      tuning parameter that may vary for different boards of same SOC.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 63
+    default: 32
+
+  qcom,charge-ctrl-value:
+    description:
+      It is a 2 bit value that specifies charge-ctrl-value. It is a PHY
+      tuning parameter that may vary for different boards of same SOC.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 3
+    default: 0
+
+  qcom,hstx-trim-value:
+    description:
+      It is a 4 bit value that specifies tuning for HSTX
+      output current.
+      Possible range is - 15mA to 24mA (stepsize of 600 uA).
+      See dt-bindings/phy/phy-qcom-qusb2.h for applicable values.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+    default: 3
+
+  qcom,preemphasis-level:
+    description:
+      It is a 2 bit value that specifies pre-emphasis level.
+      Possible range is 0 to 15% (stepsize of 5%).
+      See dt-bindings/phy/phy-qcom-qusb2.h for applicable values.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 3
+    default: 2
+
+  qcom,preemphasis-width:
+    description:
+      It is a 1 bit value that specifies how long the HSTX
+      pre-emphasis (specified using qcom,preemphasis-level) must be in
+      effect. Duration could be half-bit of full-bit.
+      See dt-bindings/phy/phy-qcom-qusb2.h for applicable values.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 1
+    default: 0
+
+  qcom,hsdisc-trim-value:
+    description:
+      It is a 2 bit value tuning parameter that control disconnect
+      threshold and may vary for different boards of same SOC.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 3
+    default: 0
 
 required:
   - compatible
@@ -169,6 +162,23 @@ required:
   - vdda-phy-dpdm-supply
   - resets
 
+allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: qcom,qusb2-v2-phy
+    then:
+      properties:
+        qcom,imp-res-offset-value: false
+        qcom,bias-ctrl-value: false
+        qcom,charge-ctrl-value: false
+        qcom,hstx-trim-value: false
+        qcom,preemphasis-level: false
+        qcom,preemphasis-width: false
+        qcom,hsdisc-trim-value: false
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
