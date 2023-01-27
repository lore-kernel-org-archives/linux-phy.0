Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E84DC54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXqxIWijMDDfJmCiDeRa8gmNLCcEqFenNDOyk9v37iI=; b=zcOesSjf7Z2rt5
	0Gq8Q2UEYVNuXik6VJ/74/peZ7OjL23Qi839F0RIp6cltuD8eja8meP7+gJB8OdylAn3YBnJDy5Gh
	VjzVz1zvgCzzvZEcq58iHYE72YFa5DoDThvp+SQZD4li9Bwv5ybwHhd+VTHTD891YLFEkD7FXK9+8
	AvSVJgJ0C/AeSQSs4cd5kUPtaEbY6DCi1NHMHAaZszKFAifqgSXFa71I5pYvBbivMa7DY1tzLtcVR
	D4x4T2Zgj2h0QRNFFFNsKq7wdq2epKIiOPHV9WQj+yDPsELG+sxUXW1/+yIggFBZR9i6QhPqYONL0
	8v4zbEpc/1kB2x4ZdvXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLVcG-00GR9H-LA; Fri, 27 Jan 2023 20:46:32 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUb0-00G8v2-1s
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 19:41:14 +0000
Received: by mail-wr1-x435.google.com with SMTP id q10so5912621wrm.4
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 11:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OTbIA/qsw+iEJ2j+G0MzDhcSxbI2hiwezMO1CX++Hek=;
        b=UiNtolU4E4LMirZ4Bc6hCbF2Jcz5w1QeiV10veN90X6hOIKK6DxgcHncK03SxrGbJm
         /sKRRXKFATHToB6UbvzOI6DakGvCBirwe1kIXq/2TgIYNH6wmNJijrbE9FDSYzHQN6/l
         7OSjUm4C8UrSXDLHi2D2oWYMcrIk8xYxY0Kjfr/y1HOuMlCbtilFiPYiQf9e2y55r7yX
         ghfx0IWmgbsvSZcPtiuvRPp6De5wdvuVrGDXfVqn92uOUfyWQrnB7Q4OcK4TGqN29mUC
         X0URPMHiV9YBbge0/mJIrfUgH6wuXfK3YEUKnmCoyZz0RiHwmlvgPSzbFqCspJwiJQbf
         lj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OTbIA/qsw+iEJ2j+G0MzDhcSxbI2hiwezMO1CX++Hek=;
        b=nfkTDtJzEig0tm1A/uZySRXnKTCB1II8XFE610bpbf+nXiU1jgCo3WLWu11CdaXpg3
         rPpHG6o2nhPpZKZMygJIwWwAbnVnwHj3CaSnwE5FmsRpliwBLbURqSxvDSohum6LT4Mt
         b9tIjTSQXE1dBC6f5r8NFeUhwdaQRHeGptE/gnFopdNHJZ3REC8aweFhBy+0ibITv3Hg
         Eqgx0B8q42ri7mjVzX2V/tdYlTWjZJLZ+Gb0+Rmgwzpg2R9y/4wTEmW3srJY9jIdNE+8
         El60ggI7WLrMn3sBy/vLG1QtRhNX/mG/LHUFLHHCHbtKtbrsXTCpRfTx/wEaVdJwrON8
         1M+A==
X-Gm-Message-State: AO0yUKWOvy9fKz85O3CuEJKJGD8x4kxsglkNjDQ4xAetUTD29me0X4dY
	hSR6alWUvXBMnQ6ROvpf/PQpaw==
X-Google-Smtp-Source: AK7set8phgbSxSEwh8u2STG/34e8GAiaEpnPycQ0+6PFVjzYXOkOdLXAox+v4Bj7Ov9boXJSQBqgbw==
X-Received: by 2002:a05:6000:1001:b0:2bf:dafe:43d7 with SMTP id a1-20020a056000100100b002bfdafe43d7mr129204wrx.16.1674848468608;
        Fri, 27 Jan 2023 11:41:08 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm5822417wrr.72.2023.01.27.11.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:41:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: replicant@osuosl.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	=?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
	Henrik Grimler <henrik@grimler.se>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/8] dt-bindings: soc: samsung: exynos-pmu: allow phys as child
Date: Fri, 27 Jan 2023 20:40:50 +0100
Message-Id: <20230127194057.186458-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_114110_113602_5FDD8FAC 
X-CRM114-Status: UNSURE (   9.48  )
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

The MIPI and DisplayPort phys are actually part of the Power Management
Unit system controller, thus allow them as its children, instead of
specifying as separate device nodes with syscon phandle.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soc/samsung/exynos-pmu.yaml      | 71 +++++++++++++++----
 1 file changed, 57 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 13bb8dfcefe6..f7c141dd11ec 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -31,20 +31,28 @@ select:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - samsung,exynos3250-pmu
-          - samsung,exynos4210-pmu
-          - samsung,exynos4412-pmu
-          - samsung,exynos5250-pmu
-          - samsung,exynos5260-pmu
-          - samsung,exynos5410-pmu
-          - samsung,exynos5420-pmu
-          - samsung,exynos5433-pmu
-          - samsung,exynos7-pmu
-          - samsung,exynos850-pmu
-          - samsung-s5pv210-pmu
-      - const: syscon
+    oneOf:
+      - items:
+          - enum:
+              - samsung,exynos3250-pmu
+              - samsung,exynos4210-pmu
+              - samsung,exynos4412-pmu
+              - samsung,exynos5250-pmu
+              - samsung,exynos5260-pmu
+              - samsung,exynos5410-pmu
+              - samsung,exynos5420-pmu
+              - samsung,exynos5433-pmu
+              - samsung,exynos7-pmu
+              - samsung,exynos850-pmu
+              - samsung-s5pv210-pmu
+          - const: syscon
+      - items:
+          - enum:
+              - samsung,exynos5250-pmu
+              - samsung,exynos5420-pmu
+              - samsung,exynos5433-pmu
+          - const: simple-mfd
+          - const: syscon
 
   reg:
     maxItems: 1
@@ -64,6 +72,10 @@ properties:
     minItems: 1
     maxItems: 32
 
+  dp-phy:
+    $ref: /schemas/phy/samsung,dp-video-phy.yaml
+    unevaluatedProperties: false
+
   interrupt-controller:
     description:
       Some PMUs are capable of behaving as an interrupt controller (mostly
@@ -74,6 +86,10 @@ properties:
       Must be identical to the that of the parent interrupt controller.
     const: 3
 
+  mipi-phy:
+    $ref: /schemas/phy/samsung,mipi-video-phy.yaml
+    unevaluatedProperties: false
+
   reboot-mode:
     $ref: /schemas/power/reset/syscon-reboot-mode.yaml
     type: object
@@ -117,6 +133,23 @@ allOf:
         - clock-names
         - clocks
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos5250-pmu
+              - samsung,exynos5420-pmu
+              - samsung,exynos5433-pmu
+    then:
+      properties:
+        dp-phy: true
+        mipi-phy: true
+    else:
+      properties:
+        dp-phy: false
+        mipi-phy: false
+
 examples:
   - |
     #include <dt-bindings/clock/exynos5250.h>
@@ -130,4 +163,14 @@ examples:
         #clock-cells = <1>;
         clock-names = "clkout16";
         clocks = <&clock CLK_FIN_PLL>;
+
+        dp-phy {
+            compatible = "samsung,exynos5250-dp-video-phy";
+            #phy-cells = <0>;
+        };
+
+        mipi-phy {
+            compatible = "samsung,s5pv210-mipi-video-phy";
+            #phy-cells = <1>;
+        };
     };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
