Return-Path: <SRS0=M3Kk=PE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B5A4C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 16 Oct 2021 23:19:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C0E4560F48
	for <linux-phy@archiver.kernel.org>; Sat, 16 Oct 2021 23:19:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C0E4560F48
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+bqRjA3uVsT2NMGJf9f6KeL6ZWCZbLZCVqSh4JBFM/s=; b=zJf12sFFonR1cq
	/+fhVbbJRFfjVRwrA99EPySkbESbboXvFcyqt4v1kbOYVG0BedoTtVck4Gu2O7leGzpqSoqW/BoTm
	CVhB4v+s5L52R+kOVYEVzsRL0kmp1idGycudZT4fmqyIvorjwYLFTolOxAx1d7H8ASkgDL9O4VH2P
	4zLwZrwg+0CdY8oY6LlbPs035Kkn9xtBdYYqIXi4bep4daL5jUPC3M87EuhYK9lyfqsWnX2DUowtE
	++Ic4NnDr7ItmJZISlEw/K5wH2ygzp0h/Hmeb5hqecskvwUKKZJO7FCIFF3jguTJKyhSE4zDSfjy4
	PKOOHQExUAF7z4fkc50w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbsxr-00BTgp-OW; Sat, 16 Oct 2021 23:19:43 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbsxo-00BTgG-VU
 for linux-phy@lists.infradead.org; Sat, 16 Oct 2021 23:19:42 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 x33-20020a9d37a4000000b0054733a85462so104827otb.10
 for <linux-phy@lists.infradead.org>; Sat, 16 Oct 2021 16:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FkP4lqvH6ZOJT/fX9WTaeVqu3z8mUf6wLhul8KmE4w0=;
 b=vD9EOlTSpylZht/VGRfDs5EMGozH3jPEpImOoRhKP5/9TwZJFttyZQ2wmgMQSMKJkR
 IYVcZQ7ZJ6auJ6l/Aa8stcncMYx6dNcWGO6ANMy7G7lKbapCA2bAUAIHseuCKUke7yMN
 T5QPn2PW5L+ZQ28hspIUZ3nFnOfMw+640Qbvb7P2H+PUK8/U2eMMWlsv61s7c6vssyR+
 rSx4KBgqv3xkFl2heF9JsYyVT2Yil/e9DmgsbRskuRWZRxgnkwTGwPJVppdBUtXPWcXe
 pnfO/EfogSnw4pGrMy3u3crgTBSSY656wdLtknbiDXW3owJ/jJKEJtkXW5XMcK9unr9S
 mfAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FkP4lqvH6ZOJT/fX9WTaeVqu3z8mUf6wLhul8KmE4w0=;
 b=ZSw+7flAB5M14+iEzdWUAeF8wJNzcNcI/ityxlXA5Gq9sGB3EBFyM1QiGwc5/8ozgj
 Y16+l7SxmTwLgUYsAOfgtgVPNG+VIp8i62q4VSpnHN72gu7jo7pacdzYDezEwhc8NmiQ
 DZCtxv9Ok+nQnYlvwmIu1aUfHVucYihWXl+dVpsi2YYB/jbYPaPzJIgTmD0HRbE+kSc4
 s9ak7BX6uriYrnENpKQeJTM683WHNFSY+xzquWKJVRy+56lK4e7mAtniTanbid3ct3VS
 f9jDqBJ1a6OUfTzJQaCCxGm5X0TX5CYi6viXXLRynIJJ+B3m+MktVoLDEeLrKK9t0JQp
 qM7w==
X-Gm-Message-State: AOAM531ly5NWZ4pszDA9xsBzvKUf6M+rABMXq+hrqxajIsPzeXEx9js7
 qt03Iq4iZEPqcZjPIVZDSWfDLAyYC00=
X-Google-Smtp-Source: ABdhPJx7dvI/TRBqyslSRyo6qlBeJ/yPa6weJz1/rB3rtJ+fUFVYJ7Nzy1AXN/wII8aeWu24ugjkZg==
X-Received: by 2002:a05:6830:442c:: with SMTP id
 q44mr5450606otv.154.1634426379977; 
 Sat, 16 Oct 2021 16:19:39 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 l8sm1430287otv.8.2021.10.16.16.19.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 16:19:39 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 abhinavk@codeaurora.org, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: phy: Introduce Qualcomm eDP/DP PHY binding
Date: Sat, 16 Oct 2021 16:21:27 -0700
Message-Id: <20211016232128.2341395-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_161941_040938_985DC86E 
X-CRM114-Status: GOOD (  12.24  )
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

Introduce a binding for the eDP/DP PHY hardware block found in several
different Qualcomm platforms.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v2:
- None

 .../devicetree/bindings/phy/qcom,edp-phy.yaml | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
new file mode 100644
index 000000000000..c258e4f7e332
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm DP/eDP PHY
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+description:
+  The Qualcomm DP/eDP PHY is found in a number of Qualcomm platform and
+  provides the physical interface for DisplayPort and Embedded Display Port.
+
+properties:
+  compatible:
+    enum:
+      - qcom,sc8180x-dp-phy
+      - qcom,sc8180x-edp-phy
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
2.29.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
