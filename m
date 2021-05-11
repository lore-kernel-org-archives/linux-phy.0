Return-Path: <SRS0=RARg=KG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 870C7C43460
	for <linux-phy@archiver.kernel.org>; Tue, 11 May 2021 10:23:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8CB161933
	for <linux-phy@archiver.kernel.org>; Tue, 11 May 2021 10:23:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8CB161933
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4lx1ha46C77vzloXsYmBBuWnBDftlKGy2lclEd+G9WI=; b=oBvxr/h30X1uPW1ZACWe4m3x2j
	0DjkhNRGZf+grqlAIqT+FqiF58MfD5Pq4bHr1PbiwLRRS/T1faVfnXH5fAHgpKfO8gbjMHJxBv4VY
	jQs+PpWDFxykbvscKgkBb8YVa5jCHG100Po1N4yuyuZC8YN4TUYh/FP/+GMY78PQ5sXY2ig35XHUM
	PX9FjoC8hoWlIppjgdS2Ty0dOt57hMArzASOHT0XWFFA520r1ej3GVqMFkQxHIh8C3jESNs6MZwWZ
	1q7FtP1QftQ+ycA/D5Ka6zlgPJPGNop5F1xcRTCceBM2Gn9soSzxES0QLEI0RGciklqcmzrGr14em
	GCJzOrEQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgPYR-00GuXn-UC; Tue, 11 May 2021 10:23:56 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgJru-00GFWz-W4
 for linux-phy@desiato.infradead.org; Tue, 11 May 2021 04:19:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=gkLav7gNUppKdJ+DoniFp4kT3jxFpGfqc/qshk+XJwk=; b=OHv92Ow1WO7VZ/XQUSrgVstPGR
 3EmAR7yVBUWQ3NjaXxB9F9yAMP3LZtHLFSna8zlQnuymaJU5TlehB5IAYSOPu6JUFvo4ZUN12OzFV
 RJs1EXpH4CSk5qhPajQ6jzLlZvtGreavKFSxLN+C4yVe94pqNMl1RAPRRPC5lHMX0x7KwdhN21dGV
 /3pLyz42SrxS60E907b63uwUKUYANZQWMmSNBM4M92BQONGKaLvkj/GITgK8kGo6LMkK5c/SbdSvh
 93/NJpnz+kpBptlst+9IEgQJyNYuGK1eWfZT67mKuRvVBjwUSRRK7F/9CaXCj3FkeRpL+ZSgg4aNE
 rtT/ucdw==;
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgJrr-009IDV-4V
 for linux-phy@lists.infradead.org; Tue, 11 May 2021 04:19:36 +0000
Received: by mail-ot1-x329.google.com with SMTP id
 d3-20020a9d29030000b029027e8019067fso16395304otb.13
 for <linux-phy@lists.infradead.org>; Mon, 10 May 2021 21:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gkLav7gNUppKdJ+DoniFp4kT3jxFpGfqc/qshk+XJwk=;
 b=GyxOEtoYfY/Jjwq9hBqkQDYnAdS0Ne3YiGuUi52B0GNwy1+X733pGjofh1dONUsfgf
 Yrg4htTm3enGHyPUuyXgIb5viMuOSCT9mLV+jwem1Nwpd788/DZQp6WnyPJohy0PChMb
 2IVItI690P/rZ4YRM1szGF5KrKU+4fsbM9DASSV95uDXtPk5eTHd2rZC/faMFVWzbWse
 6WUIk0+thlJapsO46mLZEQbkG5Sup1l/m7jzNckh/PWHq6aVZSKXcI0bo28q+DysBTyw
 PM7Dg5MJ43jj6WFulBmHTZbw8TyTQe3x/zqhfYkPxLvFjMKA12S3VwooE0hfgDfF0n6Q
 /lsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gkLav7gNUppKdJ+DoniFp4kT3jxFpGfqc/qshk+XJwk=;
 b=r6s4QrhtPttDu34TL0W9zbjG/jbAwEiw1h54Kle6DRDVub19+dVa3r/VEKvN4UETrr
 DDVcNbdnbO5x9zjIPdfj8ZazL2+xmwB1J3myo3/yfPw7Z5nAQI8i61F9x/Xq1Gmj1lHt
 pf7Pf395OkTHUyjTzwafnL2zWR4L63PhTtKD+6yssgHUPVRvL6vxVBmjH1oGecBi2qPb
 f+BgbA2U8896cP+S0UnIZ6gSyv1JSrTGG+y0sOikptOPWpEwbjHkAVJNB/sd9vfKXLI0
 64hsIMEwyZmtKDDf259QJpZWz+F3KnyYWgwtDzlDFFvMbuwaZV39sU1trvH06JLHyXq1
 fPGw==
X-Gm-Message-State: AOAM5315ONdWU44HIz4t+w8XBw+a3LOgACFDTkHrtMQxgYdwMvFKq7HB
 d0zpUg5/EwMSBF6KnrI10uJfpw==
X-Google-Smtp-Source: ABdhPJwEBKQNKqYfa9/Do97FyvXS0Vej+xDddykDlgsCGjc+FKR00Wtppqg/G5Tj6FCapfUR9LR+PQ==
X-Received: by 2002:a9d:6949:: with SMTP id p9mr4238470oto.125.1620706773292; 
 Mon, 10 May 2021 21:19:33 -0700 (PDT)
Received: from localhost.localdomain ([2607:fb90:e623:42c1:10df:adff:fec2:f1d])
 by smtp.gmail.com with ESMTPSA id w15sm810721oiw.34.2021.05.10.21.19.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 May 2021 21:19:32 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, sbillaka@codeaurora.org,
 Rob Clark <robdclark@gmail.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: Introduce Qualcomm eDP/DP PHY binding
Date: Mon, 10 May 2021 23:19:29 -0500
Message-Id: <20210511041930.592483-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_211935_196969_90A19D24 
X-CRM114-Status: GOOD (  12.37  )
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_211935_196969_90A19D24 
X-CRM114-Status: UNSURE (   9.04  )
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

Introduce a binding for the eDP/DP PHY hardware block found in several
different Qualcomm platforms.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
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
