Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1360C46CD4
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 10:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WF30URBfcRvmqkJLP8B4AKpkW1iFl27MZUIaYLJOHcU=; b=R9SZ/1dnqS+jni
	0bvyVUPM9WBs6k6mTd3j4gibQTKNalcQiJCAU/fNqYATxSIbOd2kj49BeqNB4bHIXJVGx/oXA0o4p
	pYuSZhhAw7BOo1zXjpBlE03w69slrRE0ydsp8siEpK9h+vu3Xnr0qd1pSRucKct+M/D/pF9Uhpm0M
	xcKFF3QwVkjtGAXeA3qwX9E8ez/jUT/QEjfmCLM/UY5Kh5tIUw3USg4BAMWQq8ag2LDicrd2MPLI8
	/I+Xm4e3Ve/HkmDuu+uJDuZVBNmYOzMPG8DXP79JTMUbvJJ/aHrtl0oUfD1QQmNkHasuqi+2ebuRJ
	FkFFkkoAU3Ci10E2QSoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGEr-002Q7v-27;
	Thu, 21 Dec 2023 10:25:13 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGEo-002Q6b-33
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 10:25:12 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50e3901c2e2so798514e87.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Dec 2023 02:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703154308; x=1703759108; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zl+unRu+Z3Li1VZc4Qd2ksf/Y02Bj/Ncp2AcgdIJpNI=;
        b=P6Rk0ImS0VH5g/eVFQxCf5JPmKg+Y2/2GcUGa1uG4V6XE4UsTgMiz0ywwCFRXLOo4Y
         9rRFfDmPp5XFO8IsiDIrERba4DIcqHaK5LOgrjixdg4V5aUxyNllDzO+LVCicMqTiqKH
         9R6AC/YoX3oT4gKKQcr7wlcOKmcWFCwaW4RjTfv66653yNEqjfpyTL5jstGZIaLjyCoS
         dSja0JuPgrra2hn6iagvYxsknPUjxdfYE6WYSZ27yHCIflQa+4bYofItjI+Qnfztq+jz
         KKiEu3DKGqo8RPT5nF99tANnMwDth5nwk7uBKs47mJaMftUSN7NZbf7v7Ok30wpK+TS+
         pHig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703154308; x=1703759108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zl+unRu+Z3Li1VZc4Qd2ksf/Y02Bj/Ncp2AcgdIJpNI=;
        b=gZzuVs1JUr4YKMOSzEPy2+ILoycbqkXuK39b0w/tHyQsyi9BcSMcWHEZZbQsiLsOFO
         f7QI/wLND6tUfMXhdlQU9w6VxLYeGRPUH+iPzPs06VR7WGIoQC47N/FhbsH5g2+KTjZ+
         AaGQ/kuity6eeycf7SHpIoJYXqGcSg6VWq2qSxIe/yPoa0ca2yXRBNHzh2MP9kohNztu
         A7vKOF0iC7qJEu+9SAtSif5wNtAxaW2VVpwWVux6H3K427VJ/lIcXuDiMBNc4LcOiBvy
         4yJl2KN3gR1PMx6X+YpFSyZjqJqZk0v0zqKaXPkmV85jPjOmkXGR/YV1LQ1nM1zY5X8X
         ++ww==
X-Gm-Message-State: AOJu0Yzx9ffKpCmtAb1z0nrDbu0CmBPe3f8K8Vj470YdM80lx76T6cOH
	i4xL8qNXte2JXweNfxQN5XNaYw==
X-Google-Smtp-Source: AGHT+IErFsX1C+i5hoTMPx7U4b5LtQifR1S+KwjgLmAZYmXWJKsKdb6GqMAJPx0m4XRQ74za46cjAQ==
X-Received: by 2002:a05:6512:b26:b0:50c:180:2156 with SMTP id w38-20020a0565120b2600b0050c01802156mr11739569lfu.7.1703154308200;
        Thu, 21 Dec 2023 02:25:08 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id m26-20020a056512359a00b0050aaae62dbdsm231671lfr.62.2023.12.21.02.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Dec 2023 02:25:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Jonathan Marek <jonathan@marek.ca>,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH 1/2] dt-bindings: display: msm: move DSI PHY schema to bindings/phy
Date: Thu, 21 Dec 2023 12:25:05 +0200
Message-Id: <20231221102506.18320-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231221102506.18320-1-dmitry.baryshkov@linaro.org>
References: <20231221102506.18320-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_022510_982676_74D81253 
X-CRM114-Status: UNSURE (   8.00  )
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

While the DSI PHY schema files describe the display-related hardware,
they still describe a PHY. Move all DSI PHY schema files to the phy/
subdir.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml}      | 4 ++--
 .../msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml}      | 4 ++--
 .../msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml}      | 4 ++--
 .../msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml}      | 4 ++--
 .../msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml}        | 4 ++--
 .../msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml}  | 2 +-
 6 files changed, 11 insertions(+), 11 deletions(-)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml} (96%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml} (94%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml} (93%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml} (94%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml} (94%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml} (90%)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
similarity index 96%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
index 69d13867b7cf..094fbd60093a 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-10nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-10nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 10nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
similarity index 94%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
index 52bbe132e6da..308706d37944 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-14nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-14nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 14nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
similarity index 93%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
index 7e6687cb002b..cf6f96d04150 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-20nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-20nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 20nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
similarity index 94%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
index 288d8babb76a..4fe30ca2d5f5 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-28nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-28nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 28nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
similarity index 94%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
index 7e764eac3ef3..1208aa59ca84 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-7nm.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-7nm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI 7nm PHY
@@ -10,7 +10,7 @@ maintainers:
   - Jonathan Marek <jonathan@marek.ca>
 
 allOf:
-  - $ref: dsi-phy-common.yaml#
+  - $ref: qcom,dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
similarity index 90%
rename from Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml
rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
index 6b57ce41c95f..b871a36cb210 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-phy-common.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-common.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI PHY Common Properties
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
