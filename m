Return-Path: <SRS0=WqSa=PW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15AA5C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  3 Nov 2021 23:42:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C37A860F10
	for <linux-phy@archiver.kernel.org>; Wed,  3 Nov 2021 23:42:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C37A860F10
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C/1FDZ+ep6nugUMGPWL/cIIvGuq9Fr6/bKT7kpwp1Ug=; b=Lty9OgiLGXgDAF
	dmbKdX//CaFosvf8JqiSSXdyMP70WnsX/RShTz9ad7yGUB3p45URvlgEL+tAo3lg0t5CwNHGqgXbb
	CQ4HlVfgeTSWeiAcVkLeOYLYMLbspIfWorrRln/9DTwd6k5saCfAfJ6jNrcaX7iAcb17UYHBh2LmQ
	fTF54rbg/4iAk6YKfaa3AStY5bJPraJpuaauW0+ObRTmm4F+8PGapZmSuhhwJG1pPtRIuvz0slEnU
	UytV7JpCFEMvZoGgAtmog/TetOeVcAHMNJ3nSxaCxkvlgC10CoPXxDxEL2PT7jb1SD3yczAiXflgW
	OfXsE5hkSM6JQAPURvsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miPto-0076TB-8m; Wed, 03 Nov 2021 23:42:32 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miPtm-0076Rr-DS
 for linux-phy@lists.infradead.org; Wed, 03 Nov 2021 23:42:32 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 c2-20020a056830348200b0055a46c889a8so5814403otu.5
 for <linux-phy@lists.infradead.org>; Wed, 03 Nov 2021 16:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+d/nRNEJxMOGI8UBycJTdeWCVBuzJgHXdG+LEv8+0j8=;
 b=JdOhq/HClnkGQS23jj6+31XHbNjiGlAwL/9e+IkZq4KCzp6TBfQfQwOuaSNnz3mZ26
 PlbKAYYNhUOdB4keuDUdyjekriD7+uNjdQgokuJwRLqQLVtyZw6QWoinUwqLvfCeaLIg
 hLB4qyUkIJ5DhTRJ2XXjoObV6HnbePNoYOHO75e2AeO07einwNwz+6KTAwvmbt1i7e5l
 AxRYlzqm2ZNFnsGrhw10F7xiR9fRTGbNH3OyFh+fa1U09OjMBl8WNr8yn5dbL4R/TEqj
 dqZXVYW+AyfXaSmwe64OwIRQa0iM+PchBhj0sPXyOpcOWezySxDOzLLWRYKdA25hhObG
 SfvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+d/nRNEJxMOGI8UBycJTdeWCVBuzJgHXdG+LEv8+0j8=;
 b=XHRMjUHk5H3Mnd+V5aXeX9ydnYKfowVCTuEtG2fcSIdY8Fc4aqNKrK6DL3PyBJnsYS
 dujTELsj3vB+DSnbwwzaVv4MGC8LvleqEq0ja3DDeClvWV9vC8SIcDVRYRtcnNPEVcNJ
 z7nzaZ9QgZzeIv0Jqc2AkLlNq/aucVr5XqqEkrHQ0d6xQcqxx2//a0BFtHethO5c1y7U
 fuJFFEEFpLPXR7l/qnL6FM42eaZmdmm76RrCXgS2gTsO2MdZI8LAMURSd9KTF7w9t41I
 RFLeEtKhTeJkcLZAKKiZrTw5CtgC4AGCurxxa9mBhlePZW6YOi6bzwHWhjc/deGhoCrs
 dDIQ==
X-Gm-Message-State: AOAM531Rx8U9kMMtWgoWWPe/PYiaYb6VshrT4g662Z4223fkbIs4zmKB
 5dzsEGErYEHxibMy5YIhX4RL8Q==
X-Google-Smtp-Source: ABdhPJx5/8ld6TaAtiYbuEiJO1GUBBEeX7N9PmwIjai1+k5TueK58Gpxyb1gPjDsoHRqWT5bBmy0mw==
X-Received: by 2002:a05:6830:12da:: with SMTP id
 a26mr15102946otq.318.1635982948408; 
 Wed, 03 Nov 2021 16:42:28 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id c16sm885139oov.32.2021.11.03.16.42.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Nov 2021 16:42:27 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: phy: Introduce Qualcomm eDP PHY binding
Date: Wed,  3 Nov 2021 16:44:09 -0700
Message-Id: <20211103234410.1352424-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211103_164230_512317_9E483E74 
X-CRM114-Status: GOOD (  12.08  )
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

Introduce a binding for the eDP PHY hardware block found in several
different Qualcomm platforms.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v3:
- Dropped DP compatible from the binding

 .../devicetree/bindings/phy/qcom,edp-phy.yaml | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
new file mode 100644
index 000000000000..9076e19b6417
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm eDP PHY
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+description:
+  The Qualcomm eDP PHY is found in a number of Qualcomm platform and provides
+  the physical interface for Embedded Display Port.
+
+properties:
+  compatible:
+    const: qcom,sc8180x-edp-phy
+
+  reg:
+    items:
+      - description: PHY base register block
+      - description: tx0 register block
+      - description: tx1 register block
+      - description: PLL register block
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: aux
+      - const: cfg_ahb
+
+  "#clock-cells":
+    const: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#clock-cells"
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@aec2a00 {
+      compatible = "qcom,sc8180x-edp-phy";
+      reg = <0x0aec2a00 0x1c0>,
+            <0x0aec2200 0xa0>,
+            <0x0aec2600 0xa0>,
+            <0x0aec2000 0x19c>;
+
+      clocks = <&dispcc 0>, <&dispcc 1>;
+      clock-names = "aux", "cfg_ahb";
+
+      #clock-cells = <1>;
+      #phy-cells = <0>;
+    };
+...
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
