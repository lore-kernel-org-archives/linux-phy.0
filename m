Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4543DC35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 10:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rx6+6eN8n6Miwe40KbJpU8k6gKVf9iPm6Bb4AQIlxn4=; b=sB2UHyc5PdBYaK
	cARAgFJFcTGVKJPdNO0jPgQCZlV+qFmjySNDeBEn5QbS59cDUX0LkPvUrSY+V442RYWGFocY+5uzQ
	iQVRHozUCIVu8hkaiPFXMfcsKyo9bHGkHuw5kQP5l/hECyFsNrXxbLMTDJqlWvG+h4kTQamWs8ZW5
	WntAuVIaN6al0fR8N79yD0cGRyTQw/U+qn9DYHkBlsjlzLgy6Q/0is2RQ5fI6P5+Vus7wIOYs6KoR
	0ngQZurkQVbRuTcONuNKwOr0lN7taGghGMOCXxjoG7TcGPjeuUk4Yxa72U/PJi3x3u2m+APwGx/KD
	S2JJPxiMn5549tKyjqNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGEu-002Q8Y-03;
	Thu, 21 Dec 2023 10:25:16 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGEp-002Q6c-0f
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 10:25:13 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2cc6ea4452cso6435061fa.1
        for <linux-phy@lists.infradead.org>; Thu, 21 Dec 2023 02:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703154309; x=1703759109; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7t0InnVEdoaDLd0slt0Nn4Ib7Hih+u/LAlcmfNafhqE=;
        b=huA8C9LLQXqHIOGbmpl6lpjRss0Q/51agq4LQ27DGDNY9Dex1TK3vxb3yUbnKTZhYn
         0jFAgCGxDXDwb528fVVgaruNs0xyVQfJvqxZ5HYZkMp7+HN5Q2T8FOu6UbJZKIFZ51Iw
         yL4T1z08z5TJzSQ0RszzVhthPWmY8cKPUQaixxPTUO0c/HWOZz3Oe/0z+opQed+JwrwO
         sBmIkPHDiUbWoRfxLheugzXCvCP3l86Gd+spRitZS6HzvzKPgAF0o/Qj7A3nzX8XA3s7
         UgUtlnRBYiG2pA4simMB/ku8kEkHptyJIxYZI1o0LcCyin90acyfkTtJnA0a43lD3aD4
         FwMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703154309; x=1703759109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7t0InnVEdoaDLd0slt0Nn4Ib7Hih+u/LAlcmfNafhqE=;
        b=HVWFckMdHB9hQAY0skRjeRdx92QvUSu3jTnIO0xiF+S1JIjsjIueHTciEc+AFl0kf3
         2I6yqyxdAXUYtRTdTP464X7yqs8fhJghyuTBvgp3a1BX/ep9bzINGKdiA12ILOAjaSG2
         RnK7uWYkoXm+KD7rLjktDvW4KuVxQZlOsYsp8ENo4WA57juOUHXNTH7yU4uAcnSfvwGL
         hOBrfsFL/7NClntBdpSxxqYIASMg94yDIrJ2ZQ+LcIYM4+/8dXU3phVEvgC05Q/Ae6Se
         +1gLzuj2BMcjSPVwaffccW/wBigKfMVJ6bPUah9xpx1Gicf6s5o2jJwx9pATY97nmpRX
         txZg==
X-Gm-Message-State: AOJu0YxiZ063JXKEvCUHID6iAuwRVuKmBHcjsPVUUHrIchF+lCllZzoD
	cb/HqGKRfXAP9p6K/CckCHuj1g==
X-Google-Smtp-Source: AGHT+IHsypJK5zmnFF8uxikLuOs/DapVoexa1CtYrg0iXQF5DIPiyEwsd93WTa+aqhMeVusC0+eOQA==
X-Received: by 2002:a05:6512:285:b0:50e:60eb:255e with SMTP id j5-20020a056512028500b0050e60eb255emr275172lfp.23.1703154309104;
        Thu, 21 Dec 2023 02:25:09 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id m26-20020a056512359a00b0050aaae62dbdsm231671lfr.62.2023.12.21.02.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Dec 2023 02:25:08 -0800 (PST)
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
	linux-phy@lists.infradead.org,
	Aiqun Yu <quic_aiquny@quicinc.com>
Subject: [RFC PATCH 2/2] dt-bindings: display: msm: mass-rename files
Date: Thu, 21 Dec 2023 12:25:06 +0200
Message-Id: <20231221102506.18320-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231221102506.18320-1-dmitry.baryshkov@linaro.org>
References: <20231221102506.18320-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_022511_241658_7C7C7055 
X-CRM114-Status: UNSURE (   7.93  )
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

Rename the Qualcomm MSM Display schemas to follow the main compatible
string instead of just using the block type. This follows the
established practice for YAML file names.

Cc: Aiqun Yu (Maria) <quic_aiquny@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/{gmu.yaml => qcom,adreno-gmu.yaml}     | 2 +-
 .../bindings/display/msm/{gpu.yaml => qcom,adreno.yaml}         | 2 +-
 .../bindings/display/msm/{hdmi.yaml => qcom,hdmi-tx.yaml}       | 2 +-
 .../bindings/display/msm/{mdp4.yaml => qcom,mdp4.yaml}          | 2 +-
 .../msm/{dsi-controller-main.yaml => qcom,mdss-dsi-ctrl.yaml}   | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)
 rename Documentation/devicetree/bindings/display/msm/{gmu.yaml => qcom,adreno-gmu.yaml} (99%)
 rename Documentation/devicetree/bindings/display/msm/{gpu.yaml => qcom,adreno.yaml} (99%)
 rename Documentation/devicetree/bindings/display/msm/{hdmi.yaml => qcom,hdmi-tx.yaml} (98%)
 rename Documentation/devicetree/bindings/display/msm/{mdp4.yaml => qcom,mdp4.yaml} (97%)
 rename Documentation/devicetree/bindings/display/msm/{dsi-controller-main.yaml => qcom,mdss-dsi-ctrl.yaml} (99%)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,adreno-gmu.yaml
similarity index 99%
rename from Documentation/devicetree/bindings/display/msm/gmu.yaml
rename to Documentation/devicetree/bindings/display/msm/qcom,adreno-gmu.yaml
index 4e1c25b42908..0678cead56bf 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,adreno-gmu.yaml
@@ -3,7 +3,7 @@
 %YAML 1.2
 ---
 
-$id: http://devicetree.org/schemas/display/msm/gmu.yaml#
+$id: http://devicetree.org/schemas/display/msm/qcom,adreno-gmu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: GMU attached to certain Adreno GPUs
diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,adreno.yaml
similarity index 99%
rename from Documentation/devicetree/bindings/display/msm/gpu.yaml
rename to Documentation/devicetree/bindings/display/msm/qcom,adreno.yaml
index b019db954793..ad15f0a6ead7 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,adreno.yaml
@@ -2,7 +2,7 @@
 %YAML 1.2
 ---
 
-$id: http://devicetree.org/schemas/display/msm/gpu.yaml#
+$id: http://devicetree.org/schemas/display/msm/qcom,adreno.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Adreno or Snapdragon GPUs
diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/qcom,hdmi-tx.yaml
similarity index 98%
rename from Documentation/devicetree/bindings/display/msm/hdmi.yaml
rename to Documentation/devicetree/bindings/display/msm/qcom,hdmi-tx.yaml
index 47e97669821c..a137ca0b734c 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,hdmi-tx.yaml
@@ -2,7 +2,7 @@
 %YAML 1.2
 ---
 
-$id: http://devicetree.org/schemas/display/msm/hdmi.yaml#
+$id: http://devicetree.org/schemas/display/msm/qcom,hdmi-tx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Adreno/Snapdragon HDMI output
diff --git a/Documentation/devicetree/bindings/display/msm/mdp4.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdp4.yaml
similarity index 97%
rename from Documentation/devicetree/bindings/display/msm/mdp4.yaml
rename to Documentation/devicetree/bindings/display/msm/qcom,mdp4.yaml
index 35204a287579..40c31602affd 100644
--- a/Documentation/devicetree/bindings/display/msm/mdp4.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdp4.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/mdp4.yaml#
+$id: http://devicetree.org/schemas/display/msm/qcom,mdp4.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Adreno/Snapdragon MDP4 display controller
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdss-dsi-ctrl.yaml
similarity index 99%
rename from Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
rename to Documentation/devicetree/bindings/display/msm/qcom,mdss-dsi-ctrl.yaml
index 4219936eda5a..35f4facc2fdd 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdss-dsi-ctrl.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/msm/dsi-controller-main.yaml#
+$id: http://devicetree.org/schemas/display/msm/qcom,mdss-dsi-ctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Display DSI controller
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
