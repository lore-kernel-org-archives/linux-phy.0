Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED2D8C3ABC3
	for <linux-phy@archiver.kernel.org>; Tue, 13 May 2025 14:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NL9AIzG4cYriphlR41UYSm3IQyuo09alCLg8IiuKUrw=; b=EX421QG0yLHKKQ
	2fV4vQPHxBiszzQvdRWVaC79bazUPkgpKL74pCcdLcsN16wSeAeW8Si+AzypyyGcpmcPwPY/4NbUw
	+zN5ZEB/ys4ICeGIOI42TUDibOQt8xjMLEF6LMMkyzbSQ5E5nW7NV771LYdXkajiQQNBwpO6X27wC
	aAGt6/cCEPWem7fPFj4orlKoI8iqGixO6b72kS2j9UFnT0rzBDZfl/+9eeYtuE8QLQvqu+L85V3sU
	i2xWhzMg2mGZyquuGQwrtyIgLhA1pQn5NdxA716+jEI2BzCvP3NPF613ZwAvCb7+dC8rCUtFjOePN
	UfJIE868subcrhBgoQgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEqoo-0000000Cdhm-23bs;
	Tue, 13 May 2025 14:41:18 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEqn7-0000000CdV9-3bkJ
	for linux-phy@lists.infradead.org;
	Tue, 13 May 2025 14:39:35 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-54fc36137caso541307e87.2
        for <linux-phy@lists.infradead.org>; Tue, 13 May 2025 07:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747147172; x=1747751972; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Ril6uuY7sDYo/3Zc1JrBgdRnjj+OY9LceWmMwrfigA=;
        b=Ji/CEb1LnakPUKT52SBJcuomIUIWvRTntWNA5MdS3R6gQTR/TPkMb34TWK+Qe4+bFd
         keGe9qsPtG7zhJLvF5+EmgADmqau+VqoMCMYenABBxiV+1C7Y2VCLyrcxHY2Lh6S8tIt
         GTDoNXcIF7F5xj91Hjr+mBCwcTGEmCUYswY83bV6L+sZl2nCXKIN/ls0I9JzlZwNS6lQ
         1H4nKuI2Fx6TOPEToRDFHyyFX1a532ZAjVH1PzSYVG4tf8kFT1MUHXH7aJRMjvxf6bAX
         xS04p9EZK54uX7OxP2NrSdzPhjLbnpEBh6mPXpNKxNZdxzNGqdd52ugpCI1Oy7kfwPnn
         /Wrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747147172; x=1747751972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Ril6uuY7sDYo/3Zc1JrBgdRnjj+OY9LceWmMwrfigA=;
        b=UPSYPmttDaEbZxE+VeKWNRjqEq/hAIEIp9lHzDvysTu/G62GAfGcx8m/Lp9cyIl7wW
         gSe9Jh37TJCSS/QHMkPBvlMiLqMWUROEBLpS4b8jdKtinJ+ZsE0NCgLue5fdmfltBOw5
         XfQCeQHN27Vg4yg42NCiri8FcG5BTEeRMwyjEpFiUlNtGMrD1S/1smB0jdpYFi7VCwHM
         0FV0m1OOneuxEmLL7id2hdfKN9GoxNtJONX/bjoWfs9s1NL7deG331fzc4DJ0WCZXFTK
         3+PRjB74N5kR1GyDz7VDtfFxmNcK0CmkRZ36TrMx12mHN2pVuuyfrk+f0OvaoLASd42Y
         SEtw==
X-Forwarded-Encrypted: i=1; AJvYcCXSTpd3WxKqKEnPgLADpc447RNIWV1+EFr/rl6bYbVKqdMGgXLOz6OqLyhKp7vVhvj9ygHE4LrkICg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyeQFtE3Brrn21pMZ4d2ky0ovw5NBDCO9QPi7jbXCLHU8L+2+xY
	oZlhn3ZCsHhutLNuTvUd+UJnDnwKArE6kw2aLTe1zXsFHz77Yu2SHh7x0dG8FVM=
X-Gm-Gg: ASbGnctMQlykhund6uXSC8wFZ4Hkerf4r/+n8eCuqHzBUg02GlCvdFWCX0nDe4d6num
	Yoe9w+qFAVpby4Wjmk5MkfoTOmGUWN81SCWgrGqwx/OL2u2l75HwWVP8DlvsgB7A75hHOVaSHPN
	N7qsrUu/cMwa4eb0hKuQ0D+03S7roSnfyrAJfA9oqwwDAAYeNl8UeJ1BFKLP/CBHEzWwuoToUwo
	LBlk4da6nRl1MjD8wej8+44eKngnpvyp4I6+WOkuVl12NBc8YTNjakt0VbwDwQwY91s36854QBP
	0n9rJuV0cWdsX4RWrPFcrzhJJh4W6goQwv/oIE+JEja8fnuBOyDvnnIe808he0WOACVoPRz3dvv
	vo29lU4ZxY//QjwxgK2ctrZhUSdka7We0I4s33G/z
X-Google-Smtp-Source: AGHT+IHPIdVM+BZod/QjbcgdZNCqQf4/wvlVtT+Y4YCECyzxCdGP18TVKh1eHt35UgrNr84GxDnE8w==
X-Received: by 2002:a05:6512:39d5:b0:54f:c4c0:ada8 with SMTP id 2adb3069b0e04-54fc67d65a3mr2061782e87.14.1747147171591;
        Tue, 13 May 2025 07:39:31 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64cd015sm1893445e87.248.2025.05.13.07.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:39:31 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hans.verkuil@cisco.com>
Cc: linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema for CSIPHY IPs
Date: Tue, 13 May 2025 17:39:18 +0300
Message-ID: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_073933_897475_65D37014 
X-CRM114-Status: GOOD (  11.59  )
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

Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
MIPI C-/D-PHY interfaces on Qualcomm SoCs.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
new file mode 100644
index 000000000000..ef712c5442ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
@@ -0,0 +1,110 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,csiphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm CSI PHY
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+description: |
+  Qualcomm SoCs equipped with a number of MIPI CSI PHY IPs, which
+  supports D-PHY or C-PHY interfaces to camera sensors.
+
+properties:
+  compatible:
+    enum:
+      - qcom,sm8250-csiphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  interrupts:
+    maxItems: 1
+
+  vdda-csi-0p9-supply:
+    description: Voltage supply, 0.9V
+
+  vdda-csi-1p2-supply:
+    description: Voltage supply, 1.2V
+
+  '#phy-cells':
+    const: 0
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    description: CAMSS CSIPHY input port
+
+    patternProperties:
+      "^endpoint@[0-1]$":
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            minItems: 1
+            maxItems: 4
+
+          bus-type:
+            enum:
+              - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+              - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
+        required:
+          - data-lanes
+
+    oneOf:
+      - required:
+          - endpoint
+      - required:
+          - endpoint@0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - '#phy-cells'
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8250-csiphy
+    then:
+      required:
+        - vdda-csi-0p9-supply
+        - vdda-csi-1p2-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,camcc-sm8250.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    phy@ac6e000 {
+      compatible = "qcom,sm8250-csiphy";
+      reg = <0x0ac6e000 0x1000>;
+      clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+               <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
+      interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
+      vdda-csi-0p9-supply = <&vreg_l5a_0p88>;
+      vdda-csi-1p2-supply = <&vreg_l9a_1p2>;
+      #phy-cells = <0>;
+
+      port {
+        csiphy_in: endpoint {
+          data-lanes = <1 2 3 4>;
+          remote-endpoint = <&sensor_out>;
+        };
+      };
+    };
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
