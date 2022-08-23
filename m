Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04D1EC32772
	for <linux-phy@archiver.kernel.org>; Tue, 23 Aug 2022 14:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N+s36vDTIhtV6S8pTnCX5Ubd3XlAFKGBoA9qOqccSVg=; b=Wr23xD6shlFZiX
	LJUFlUcfrSoSAEpuYtTRGtboP/Vs6/mqJFyDYfirePBxT0YE3qL9ECsRjJsohW+To46ZPiiNj4RyN
	9V3ALSJq227tAM9zJOmxqxVV+Tuoa1amzhMj8WTgLXuV5fZIhQ86YAY5k2Y4xG46rlt3/Ymaq2fP9
	/SKnj7Sfo3E9NZh2FOuyO6aXQAvzmSB+dzffZyYQAExLzxJg2sEZ7eHt8/d/U08UGnhhoLlMGyG31
	j90tzPTJGsH+VHtmqbDTU41+CRX9mI6+6PUMyodFeXtd6NvH+s5K5bOEA0KpGc2YrJ9Pg8o8ga9md
	EeKeJleuVPiRBPfaKhkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQVNO-006nM3-Cb; Tue, 23 Aug 2022 14:59:34 +0000
Received: from mail-oo1-f42.google.com ([209.85.161.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQVLZ-006lqn-Jg; Tue, 23 Aug 2022 14:57:43 +0000
Received: by mail-oo1-f42.google.com with SMTP id p48-20020a4a95f3000000b0044b0f5a8d17so1741069ooi.0;
        Tue, 23 Aug 2022 07:57:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=ooqlkbw3TE2NJhyebQ5cGozeHzUv+AJJEgZF4B67gIY=;
        b=Wt2ha81/zFnrvrojfeiPmz76NrvJs7wiSdk3Z/yThGOmThuiSVJ+4OueYZ1q1XZ+Sn
         E/TFf5ZEV6GMghkwqo0yZjaNcR+qEJC8ZalqJTttozAb1+F8CnvLpVk2xD4KqLIunEmN
         N1+X4em8PKv7+sGhgapFq1lldC5AsPfkRgyd056c7eiKGKh83utl8PWjETbf3Fi8AmQt
         M8uuxmg2uUauD6hCgt7/+2s7SRQb5PdZgKdCrIS+ijHw4XsfPW85akoTDampImx08mKy
         +AwTEo8UyLVf8gsjw65af/o0SMZEnrK+jeKG7p+wOT/81OtJq50pE8X1dG+fwBkkTcVi
         jlAg==
X-Gm-Message-State: ACgBeo2/MGzPubs5SeHQUqmYY0aQlAmw58gxVrfeTY6ub2MITIyx2eAp
	RT6Izhtf3hgFu4DcLSFwqQ==
X-Google-Smtp-Source: AA6agR5+a7sOjSPzaSgig28307qEt+b/EO4MrhzoXJrDqx7W1/FQV0jwLw+HKQCyDk3RmgEqKpT4Hw==
X-Received: by 2002:a4a:e411:0:b0:442:c893:86b7 with SMTP id t17-20020a4ae411000000b00442c89386b7mr8088683oov.22.1661266659387;
        Tue, 23 Aug 2022 07:57:39 -0700 (PDT)
Received: from xps15.. (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.googlemail.com with ESMTPSA id t1-20020a056870600100b0011c65559b04sm3840637oaa.34.2022.08.23.07.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 07:57:38 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Ray Jui <ray.jui@broadcom.com>,
	Scott Branden <scott.branden@broadcom.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Add missing (unevaluated|additional)Properties on child nodes
Date: Tue, 23 Aug 2022 09:56:45 -0500
Message-Id: <20220823145649.3118479-14-robh@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_075741_677642_0DDFAAA2 
X-CRM114-Status: UNSURE (   9.23  )
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

In order to ensure only documented properties are present, node schemas
must have unevaluatedProperties or additionalProperties set to false
(typically).

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/brcm,cygnus-pcie-phy.yaml          | 1 +
 Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml   | 2 ++
 .../devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml          | 2 ++
 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml    | 3 +++
 4 files changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/brcm,cygnus-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,cygnus-pcie-phy.yaml
index 045699c65779..808e90b2465d 100644
--- a/Documentation/devicetree/bindings/phy/brcm,cygnus-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/brcm,cygnus-pcie-phy.yaml
@@ -32,6 +32,7 @@ properties:
 patternProperties:
   "^pcie-phy@[0-9]+$":
     type: object
+    additionalProperties: false
     description: >
       PCIe PHY child nodes
 
diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
index dc287d428e49..801993813b18 100644
--- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
@@ -77,6 +77,8 @@ patternProperties:
       connector:
         type: object
         $ref: /schemas/connector/usb-connector.yaml
+        unevaluatedProperties: false
+
         properties:
           vbus-supply: true
 
diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index b078009ed509..563e85c48c6a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -81,6 +81,7 @@ properties:
 patternProperties:
   "^usb3-phy@[0-9a-f]+$":
     type: object
+    additionalProperties: false
     description:
       The USB3 PHY.
 
@@ -121,6 +122,7 @@ patternProperties:
 
   "^dp-phy@[0-9a-f]+$":
     type: object
+    additionalProperties: false
     description:
       The DP PHY.
 
diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index dcd63908aeae..7c7c3e3e6346 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -79,6 +79,7 @@ properties:
 
   refclk-dig:
     type: object
+    additionalProperties: false
     description: |
       WIZ node should have subnode for refclk_dig to select the reference
       clock source for the reference clock used in the PHY and PMA digital
@@ -108,6 +109,7 @@ properties:
 patternProperties:
   "^pll[0|1]-refclk$":
     type: object
+    additionalProperties: false
     description: |
       WIZ node should have subnodes for each of the PLLs present in
       the SERDES.
@@ -133,6 +135,7 @@ patternProperties:
 
   "^cmn-refclk1?-dig-div$":
     type: object
+    additionalProperties: false
     description:
       WIZ node should have subnodes for each of the PMA common refclock
       provided by the SERDES.
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
