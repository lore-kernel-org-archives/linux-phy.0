Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BD60C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 10:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVFVEsa8xuIx0n5I2bUVawPf/rrVEATIISli1NtjcNg=; b=QZTlRdo6/uAsFb
	lFqFYnhm8CXQ5FFLcDWS+1fdWQYHT7A50LbxI4TivdKzDt2umc5SQnkKOQi+T8YGrnMsB0T2l9FZ1
	DsSt/A4ofFGaF5MnRmiN1w9sGZ8glgusgEaEeCnvQ7LJ52qy/+JwqBMh9DlaUeX9bwo5AY07xYBST
	gFbObhZoeeuqeiOPsQ5JpX6nYjbBOQQzncIadydEH5dWzaVc0yfumtaqMFpQy+e08/qaN19r6OscF
	eja6WQQ3mdxtgAmmXLpPLKh3XlkhldhEkej4yCjbW7nm9NzbobrgYnjVWsqYRkMHJhReNhlrlnGch
	bnTzrAFM9g+U+b92gSTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnCx-00GPsj-K3; Wed, 23 Nov 2022 10:42:23 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnCu-00GPpl-J8
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 10:42:22 +0000
Received: by mail-lj1-x22f.google.com with SMTP id z24so20923783ljn.4
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 02:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bda09macuyK5fYNXnbLx3WrcVV5Sb23aKOiNbSvBd8U=;
        b=bOBm+hpF6D9fAUC6maQ8j1uwXXeEOzWC68rFDd5Elim232VcyJg+ZZb3eWhdLVMDE7
         /po3+jQ4o9/PdzTUWjzUOFrWza5CnEuCtgcj0An4C+x6juAENvO8lH0eJ66iEuk0AjPY
         WjftM1dVUeGXn0UsnLY0+0zRMwzcq35PnyojqudM3BKxfOdY3hJLozxJ34mfLZLyuB8Q
         xYYRCW8Fflvs/23a9EcCqzHh3RDrnsP6XsAEfy/ey8FMLz+pTBH1kFrkcNma7YXaBV7m
         TwD1ywvJrGzQhA4DYJMK3WP1XtGMUhx6ZdZAT41Fkhvja6uoLYdWYqWN58aVd2o0kta8
         qVYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bda09macuyK5fYNXnbLx3WrcVV5Sb23aKOiNbSvBd8U=;
        b=F6M2ccQxflir55sfsNnWfELRTbQ71SAhoRpHKxUouy8Rf3RzdTnUGPueTy/DJTMQQD
         23x9uPUmwVDtOd22edJteT/x7U0zHHUK9D13koBSLKmJ+Lttu+CxsC//Pip+WxeME72u
         GtPbfKiuGefVuSwWwAr8e3w3P6yAVLzF8n/nWyp6kaaVTwb2Erm5mACtjpSolyzYF0Re
         78TI67D9NqdUhmQ4ADLc8Kydpx8mOokcuQIBrCTzBVMiBqqpZ2ddvHYhpVHAXD2gaPGH
         jXkIXjbyFeI72VNer1AvOQ695bA23CesArspA3al3KrRTaUKcL36TmSqrkYZA9UD/Rdv
         dTGA==
X-Gm-Message-State: ANoB5pmW7qVjBW0d6xccByPiXbzvV/P+9JlIhyl2tFLFX73G5t55V+ch
	AMhr6v31pKQMbtfI8W6vsXNRgw==
X-Google-Smtp-Source: AA0mqf64Owtbu7ESJT1RZlk0iUTM2xUoDEQI5h/X43/zXe5olzOeKuAa4Hj2m4Qvs+MIwtZMJY4TJA==
X-Received: by 2002:a05:651c:2db:b0:279:13e4:b790 with SMTP id f27-20020a05651c02db00b0027913e4b790mr8874615ljo.154.1669200138561;
        Wed, 23 Nov 2022 02:42:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id n5-20020a05651203e500b00498f570aef2sm2862908lfq.209.2022.11.23.02.42.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:42:17 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Hovold <johan@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 3/4] dt-bindings: phy: qcom,*-qmp-ufs-phy: add clock-cells property
Date: Wed, 23 Nov 2022 12:42:14 +0200
Message-Id: <20221123104215.3414528-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123104215.3414528-1-dmitry.baryshkov@linaro.org>
References: <20221123104215.3414528-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_024220_644984_9E78C7F7 
X-CRM114-Status: UNSURE (   8.07  )
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

Add #clock-cells property to the QMP UFS PHYs to describe them as clock
providers. The QMP PHY provides rx and tx symbol clocks for the GCC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml      | 3 +++
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml     | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
index be41acbd3b6c..80a5348dbfde 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
@@ -75,6 +75,9 @@ patternProperties:
         minItems: 3
         maxItems: 6
 
+      "#clock-cells":
+        const: 1
+
       "#phy-cells":
         const: 0
 
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index dde86a19f792..32ed1886fbae 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -43,6 +43,9 @@ properties:
 
   vdda-pll-supply: true
 
+  "#clock-cells":
+    const: 1
+
   "#phy-cells":
     const: 0
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
