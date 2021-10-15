Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C512C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 22:11:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 594ED61163
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 22:11:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 594ED61163
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IOoMywDbDZAD4mMK94v7RUBTOcdrwEuzlHGiVsohiMk=; b=N9sHO1HCEO1rVA
	flXNG9Ng8lGDNh/xuc/VLMk21aJ0HV84BDgLl4TjlUIR5FM1gGgGRB0kGrXM8DTZDTcJ9RfZFk7U6
	n3aZNOqmlOOGHp/Pq7do/JVCK62+Ccf+Bolt5k2Xl597Q6ExKCb+VyU2fWeqC+ZslbBsmUF0otvFN
	5eU9MlEmWgKws3uX/4ooyGZ7z0aYQHpAi8NKob8w78qOhpyGzJbaKO3Nfe/5SylhuL3T5vVYSb4yR
	E5taTLCa4WSNS5eRej55AeePY9a99N09VgB5Zl79zZ1fKCf3UYlCKhGd8LKdZnQ2yCiDUgzUhOUFI
	cbgeP1yVfdrUDSvfhMcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbVQF-008w8g-Sc; Fri, 15 Oct 2021 22:11:27 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbVQC-008w7b-Gs
 for linux-phy@lists.infradead.org; Fri, 15 Oct 2021 22:11:26 +0000
Received: by mail-ot1-x331.google.com with SMTP id
 l10-20020a056830154a00b00552b74d629aso9656836otp.5
 for <linux-phy@lists.infradead.org>; Fri, 15 Oct 2021 15:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bjNfLq1QB8fLMEsBwBn7uXas0Vm/2KjKssKVAEdSfj8=;
 b=KvsCdlqRbTQxItKSMZiHq3p6Va9Qh3RKVjLBfVJ4SOznSPmvxDzk2kt99hpvY73VYt
 +zVIRzhpTR4g6JMbDOXMdjCFB0vmupv2QOjHMJNhblbhaTy2WG9MSkfncfOmL0h4Lpl9
 g3vresA3V5A0p+v7OaO7R5sLYMhcvbysuFXBk1k/JN09Vsq9vj3AqK4+UnnnX6t1h147
 UDPPpWQQloLjakwbY4hq84Fzch5En+LAHAP1IbI35RnmIruI9uJcg2IQsh42yX+qtY5L
 GP1eJIVO8IouIkTvBldYf8UkUS5qRrfliGNu6DOpGHcfTPc1zwSPTLdVyC7mWZXLMDhl
 24RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bjNfLq1QB8fLMEsBwBn7uXas0Vm/2KjKssKVAEdSfj8=;
 b=tCfpM9oPqmb16pUj7Wi2c74NjcnjIoDk3mRZcad5wctp6GLfp+EIddsZSnxFJIV+jJ
 /VaqW3VDk65EyZkS1rkDL3qjMR/hjp3rU5PUk+2KK2NKOEj+f30DFCe42uAq4eflVsDi
 eFrjx0/5hecdrSF4uV/x7aSXgNxS+O0kQYTZbRmw7cMPX4RRBfawKTdU7fgNyUfwZ0gB
 tz8+CfIWQSdnkJWCj5JwP7J1xhJP5rKvVg/ciyn3nP7m9OWMGnhsfTKdnR6ovLz4hPHa
 DMtTnWfu4+19rm410mCwegEV+DEIdRoSEVfrCl+bVN4FAwV351c7Xuvyn+8xmROjH43Y
 dRow==
X-Gm-Message-State: AOAM531KhIhkJZ0zrC6ftW5VTqiz8bqiKoG9aFBBzd1TJ5LHOGKiSP3U
 G/4ATWJxqe62OOlDwn7y00YdXw==
X-Google-Smtp-Source: ABdhPJzXC14+f95z1L9QMi3O+ePps8LkjmJida0VipaUCsJGioxCOn1qwVYVKGBFEFjwPVeB8Xlzsg==
X-Received: by 2002:a05:6830:30a4:: with SMTP id
 g4mr10125929ots.312.1634335883234; 
 Fri, 15 Oct 2021 15:11:23 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 f10sm1599635otc.26.2021.10.15.15.11.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 15:11:22 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 abhinavk@codeaurora.org, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: phy: Introduce Qualcomm eDP/DP PHY binding
Date: Fri, 15 Oct 2021 15:13:11 -0700
Message-Id: <20211015221312.1699043-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_151124_680977_07B85D6D 
X-CRM114-Status: GOOD (  12.02  )
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

Changes since v1:
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
