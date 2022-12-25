Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65442C4332F
	for <linux-phy@archiver.kernel.org>; Sun, 25 Dec 2022 11:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vjSdgTSFMaAi9k6OyJgZHam2dT+xQtLnk5WvFR4HwVg=; b=Y8n5VwcNxdrXq0
	I3fR/6FpW8H/ZkfHfE6orLnWuyEUHId2Jv9uZb7sLDZwpIjA8LjojpsBw37KKIyAViSuevaHvM9/7
	tJbsqveEciwK8gTrHzrw38AVLYp5zybqTElS4I+5S/VOztVl1A6VgsF/nHZSGPDPZIvFQ7Uq+bhBc
	y2afarpLkderGg9O5sQJLrSK+wiCv/oxmXLbLGuw6hfdvfHjwg2RkVG/UiGVZyWEBWv4sWDuoYhfn
	r4Ijmu0xWuP7C4knPEaVD9jKDZYsOy7f7L/Guygm537iDThDTMS2EmzGQWO+E+tFIBApLoBTGgLSs
	E0P6ZJO3S3WCMARRxk/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9PfT-00Agji-G6; Sun, 25 Dec 2022 11:59:51 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9PfR-00Agi9-E6
	for linux-phy@lists.infradead.org; Sun, 25 Dec 2022 11:59:50 +0000
Received: by mail-lf1-x12a.google.com with SMTP id g13so12871004lfv.7
        for <linux-phy@lists.infradead.org>; Sun, 25 Dec 2022 03:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+ExVoiUpX6U97IwTnko2fEfj7v9D1prV4olDEP5D5io=;
        b=mj/BnUSLmbbHa0rGlrkk358XG2VGf0Z29EEwI1IbHMM+uP8kiNxH2zkAMFTE7cHDdg
         xTvmXlEYsZhcnY/DltcrjplkB2l5+E999eUQ0exHvZNCtvrojJIRBb/hfRYxrQDOJ5zH
         IL7EGweWf6TfN8A7QG0uQ6kulpLHov+jrfFWHYj3yCMeEaO4SUo+jci5uAnMamGFSwpU
         yWEzhJwI+6OgRQiUsw+sExYUQ5VN+pESPqV2jrjGwIMozJ70P13YMhwKV8IuCHF6GDu0
         Ll7bc7a2yyowP3FLnOZXJlG+ToLQ/bhY/ag9ntDIslgwxND+MY4gYps3/CT0x8PPRqC1
         J6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+ExVoiUpX6U97IwTnko2fEfj7v9D1prV4olDEP5D5io=;
        b=YddQ8i3YmxLHbaTzHWCWdNxobT2Tx8mt5Ue0QTVnUrfW/36AqjdHbeO3//YOgMkyjL
         fHowUOWUKNexwyLGCbeTpmkomlgI4sF1kRVkgbL9fn2j/KaMov/MeiGL7IagUxy2typ6
         D03dXsv771kfJxAsmI+5VvmPgsxDaaMLEgfZ1Ru3/s4a1EIO4c1HGULpU0DS9xxY7tzG
         6P4FVX2JY3b3JqzS8WSwAKBwSHwzvXDfXtUlRYRHU/EogUggs1MFoZmeMCjlY2DZKryA
         hEjc30mDvbIcX3Lw6G8sLhx3MXOIpyFEzvXcHSjK+LfEAoTsWUMiL7wlmAVtMjR0GkIY
         +B3w==
X-Gm-Message-State: AFqh2kqiuZVg9etpHflilz8Aoxe1fZZA1zZs3mcmC2X3nFxqfQqMOuS1
	Egk/lUEbgYpAw46aYmJTdTWZ1w==
X-Google-Smtp-Source: AMrXdXvRoHODcVE1Z/m7I9inLxGRn9KGvmQR6hYnkIUmcPWQwFWh03XIBatwnpiar+kQVD3SCsa+Zg==
X-Received: by 2002:a05:6512:3d9e:b0:4c0:2b07:e6e7 with SMTP id k30-20020a0565123d9e00b004c02b07e6e7mr5379114lfv.58.1671969586994;
        Sun, 25 Dec 2022 03:59:46 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v10-20020ac258ea000000b004b501497b6fsm1338615lfo.148.2022.12.25.03.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 03:59:46 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: correct SC7280 compatibles
Date: Sun, 25 Dec 2022 12:59:43 +0100
Message-Id: <20221225115944.55425-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_035949_504405_D7757839 
X-CRM114-Status: UNSURE (   7.47  )
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

USB3 DP PHY on SC7280 is used with SM8250 fallback:

  sc7280-herobrine-evoker.dtb: phy-wrapper@88e9000: compatible: ['qcom,sc7280-qmp-usb3-dp-phy', 'qcom,sm8250-qmp-usb3-dp-phy'] is too long

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml        | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index d9d0ab90edb1..97d94c685d7b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -19,12 +19,17 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - qcom,sc7180-qmp-usb3-dp-phy
-      - qcom,sc7280-qmp-usb3-dp-phy
-      - qcom,sc8180x-qmp-usb3-dp-phy
-      - qcom,sdm845-qmp-usb3-dp-phy
-      - qcom,sm8250-qmp-usb3-dp-phy
+    oneOf:
+      - enum:
+          - qcom,sc7180-qmp-usb3-dp-phy
+          - qcom,sc8180x-qmp-usb3-dp-phy
+          - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm8250-qmp-usb3-dp-phy
+      - items:
+          - enum:
+              - qcom,sc7280-qmp-usb3-dp-phy
+          - const: qcom,sm8250-qmp-usb3-dp-phy
+
   reg:
     items:
       - description: Address and length of PHY's USB serdes block.
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
