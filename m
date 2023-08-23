Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A98EDC3DA6F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 18:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eBgsl6lDk2BAeKF07DnbDn2W1oWBgikJyerPhi6BoqM=; b=GYOfPnjb7Tz0ps
	ISTPbreLaPJ8J5V26CW76zcHilEJiBuIE3QC9iQWVKjv9+NXqt2w7qw893l8190n1LrdXAoVMs6EG
	rn0FZmU/JxpWxSeLfq8lmTxfR+hLF35ljq7CFTeZ+p9bqpYF1Qatf0/MjTnUptG3ruHnQEwCbC8nv
	jsWASwnt3tUjeEw6cNS8V7mtcDarOLODaTe98eSTh9nVh5NoZzbJ2YOlK+95SJmrMgrlKaWsJtyAh
	S32xRKFmwFgUD2Jg/UYD7BrFTYBCm3O37Q+GlNQrzdokx1XEJSsMxfX8HGWMfCKvlrlMp2cr//oaC
	nybEDytyzQMC748SDTrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYsQC-001Ijs-1K;
	Wed, 23 Aug 2023 18:17:36 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYsQ8-001IhV-39
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 18:17:34 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5009969be25so1211078e87.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Aug 2023 11:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692814649; x=1693419449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eDia3iie2HSwMQvJ4KMWyAy1RoMirRHHmpdoeUjpUSI=;
        b=Uyoq0AL1unYJXps1XfrgSHRWLHYYs2FzDXtJA8OxU6C8yBa0/r9SyGU9ctt+ClIHzj
         l3JATABbLH67McV8lq/RKvLaHL/xbPYYo6nP4pin1skD50cOkVsTujrUELAOon5mABOs
         ZvGI4Kig9SBk/g7Rqo+GdAfgeYZW7UfCCLAK1DZ76Yl/Jdjh90a/kNThnOS/GMAvCTpd
         kZDH/+gV2OL+F8yzLQzsukBlfMOgFjSUzQRIAlp0fzlMqzpwmov0VGScucf35lUnE5AD
         LgyT8zs/iVk92vsPBjXYMGccEX0not8bzGd/bqlk0U5FSrA0zEQW1AiJZKX2fOD1PSCX
         kfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692814649; x=1693419449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eDia3iie2HSwMQvJ4KMWyAy1RoMirRHHmpdoeUjpUSI=;
        b=IfzYSrv5idNqu6BE1iPTVLGu9WrQU0k8jYW9yrMhzWUC3fMwYpC2gKMm6lz+/m6Kgr
         VWbSeeGPFi3dsS9t+zTa2N4IfrL3M3hkupAGJKX4CGK1G1dI+tuIfP7xXQazOnY5KwhL
         HwvPOl7sX5oXMW4QqHL8OsLNp3BqvsMuC2MSWZ5HivnpHJoqZYn7gN7Ks+EhteBIdAqF
         20UDc21eOcDt81xbAY1B3oe85he2O1P5nDHRO+qqe8XyevcPg7X+ryTJkLf4uZh2UlRk
         k//FzFy+vQ6cCXjU2ICDZw36douTQCLrqy6tQQVtUY2UpARZ5ptcRzchEW9LBnYuMK8Y
         jxzg==
X-Gm-Message-State: AOJu0Yw2rAULPDK5hMb7sI2kAbYEZPMjLstu8qJYt6GH+PiplYMgMKDX
	Du8y/XYy9t3fLNqEgNwkTYZvaA==
X-Google-Smtp-Source: AGHT+IEenG3z/6GMxwEtRPoa2twbxcb6CX+RlbfKh8sY8DkAkgVxBF9CMXi3Dur14aXR/4xhvmESsA==
X-Received: by 2002:ac2:4f16:0:b0:4fb:76f7:fde9 with SMTP id k22-20020ac24f16000000b004fb76f7fde9mr9885618lfr.30.1692814649217;
        Wed, 23 Aug 2023 11:17:29 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n3-20020a195503000000b0050096cc3bbbsm339308lfe.297.2023.08.23.11.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 11:17:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: qcom,ipq8074-qmp-pcie: fix warning regarding reg size
Date: Wed, 23 Aug 2023 21:17:28 +0300
Message-Id: <20230823181728.3082946-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_111733_065282_98FEA24B 
X-CRM114-Status: GOOD (  10.06  )
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

Fix the 'reg is too long' warning caused by me adding 64-bit address and
size to the example, while default being 32-bit (cell size equal to 1).

Reported-by: Rob Herring <robh+dt@kernel.org>
Fixes: 505fb2541678 ("dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 5073007267ad..634cec5d57ea 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -70,7 +70,7 @@ examples:
 
     phy@84000 {
         compatible = "qcom,ipq6018-qmp-pcie-phy";
-        reg = <0x0 0x00084000 0x0 0x1000>;
+        reg = <0x00084000 0x1000>;
 
         clocks = <&gcc GCC_PCIE0_AUX_CLK>,
                  <&gcc GCC_PCIE0_AHB_CLK>,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
