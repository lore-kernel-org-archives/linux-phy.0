Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B94C25B5C
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/L/q4j6X8x5Pd8WYdAyigo4/G1tLEpu+Z5Torl1dQw=; b=hGRJOr+LAlY3dF
	1QdE1K3LNhTsT8qMyVyqverBirEQ+D59nBQR2F71QeS7D+6izqauJ9b7KpVL+AmxNo5RWmoMoa+d6
	weVE95nOeqrCJkZi0jPa4/aYt6cEHYMrUuEpEHuAnU7n3HpSX1kW2wJrRofVjPx2JSlAq1QpqgSmL
	7cQEg3uRevXgTXyHk+7W9koCWa1s9N8/kTitSgdmtOVq0mDiPydWT19j152WcnJLAXLO2v4fw3fVH
	JDjdR+dSps5NhE34kbV/x7VaO8eBijwVjQNXKPN8lOOgHMpyzxCxkGrRLwePD+vCyVY3BA6t5Z5ls
	R6a92JjqAW6j05zB+0Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgS-0000000A7DM-2Ere;
	Wed, 01 May 2024 16:19:52 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgN-0000000A78w-097V
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:50 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-51e1b9fba81so3206388e87.3
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580384; x=1715185184; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zQcyH0CQGIecT+zWVTvaDhk752lltvZDOvyRppo6X0s=;
        b=Hw011UEmM8LncRT8qiawf3lYaMQgwplozk4tihji0u8XeTfmMNf96eooBnmqoUnaHz
         oO3x+iWxJ0GcWqxCWsJ2b+YT5SjEsxF3yL/Cic5JVbpIX7kVLpIRvGOQnjtmf7lZmCWA
         MahttJXL7U647fDCvTVPhwRVKfFSChqClwwKXhOyu8FYfiIMoBTIBkjsCxryPrx+Zvjt
         xePL/Wuox42P8zEnlt9soHysI/rM1WL4Yb68lNe/nPzp1F/lLrM4iUV5hfQ5dI4oFQfr
         MA96MeoCdbLxjKFXUERUhKJGPAL1cuKXRe1o8YsOloIoCSDXTQ6z3am6cqDUkA4F4orm
         IH+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580384; x=1715185184;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zQcyH0CQGIecT+zWVTvaDhk752lltvZDOvyRppo6X0s=;
        b=LtYKu1p6tddBQbdQB11Iax/T4m40Re6H+J+MaQYXWnxOzxA2BHlySgfq7DfIQojRrD
         cmRq6G7gn00r026m5q6PWhicdJBNuC50Zd7x/B45gUVhm1sj1VAutP2kU/rIMLj+ktaq
         yn9CdysRJBAayRRHA7biCFPlGwY6p5y4I26cWBXn3492ZwLTDyWRyG7sGupjSWJXdfW5
         ob9XvdqR/7Dv0i/P59FEx6xHldnMArB/TsP8ZHJrKaw/uQvxfPkLe+3XmhrW8LRJ21D+
         z7EAwzf/hWi9g82tTUKHx+L55J8nrpFETl4Sf3PrMNyBHI+0ywwA5nRfWaeSrdZ76XY0
         QL6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXXhnF0k5xEpr1QzUkNTNjErFr4Koji9T77k4dbb/Ak6rKE54h8jEzdslYkZ8iUHN7JCTGul+U5OhBTrG/WMXq5L9PUVWJORBnm9iW+Xg==
X-Gm-Message-State: AOJu0YyVXsCbQ9kGHl5mdBi/fwtcOyo3jFnMdVltDHIxtd0uaIvVc8Kr
	yNNYWf76kYCw2EPV9LQSVTrdBHNCwNox1MV65eJQ0tmqsnuFkY9YVIDHtIlNvR4=
X-Google-Smtp-Source: AGHT+IFqPEJW/HC+cf6evSpiBnKTVoC9MgPssLpDGsdbNVGqZt/6nuex9rtE4/hP5MziFwRhJQoSmA==
X-Received: by 2002:ac2:44cb:0:b0:51a:a65b:ae14 with SMTP id d11-20020ac244cb000000b0051aa65bae14mr2093217lfm.25.1714580383592;
        Wed, 01 May 2024 09:19:43 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:29 +0300
Subject: [PATCH 03/13] dt-bindings: phy: qcom,usb-snps-femto-v2: use
 correct fallback for sc8180x
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-3-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1278;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=JQDseGGUo/RET8ft8mbdYXUrgDFowOEq0U/TppfOJXk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuYaDLIID2+x59b4mWDd+RmoVTASGHhyuc7G
 RHxTtIS+AeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmAAKCRCLPIo+Aiko
 1Z02B/9/GWAgJ0b7DMYVB8P67bPfKoKItErG5spn/rWjRmV5/Q1iYL0jH7Pv4RrH2J/P3ieopqc
 RA4E5ARBBUXTnonFisMu9Gd0p9QLmPj0+KhwqI6zC6WXrt/mrviaPzph08sk2LUMI4r3wiAFW/z
 bflQdHtgnX1HTXj9/5aYNeW5TDMs5X4Gvu2zj+eZc4L3lmKOgueMeP+kV+7VXFsDZuvh1E0Mu9A
 Jc4Xoe8PEY1NQCrRKi/FR8sFQNbN+vkivZ79ZegZtSfLwaJ/Ktq8KYOC3/sbxRJ97yUNuF9ef+K
 NdlDZXKxBQJ2SKjDbURX+7mNupnZlM/HW62JUQEKSJE5GFHs
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091947_182477_D74E1B58 
X-CRM114-Status: UNSURE (   7.98  )
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

The qcom,sc8180x-usb-hs-phy device uses qcom,usb-snps-hs-7nm-phy
fallback. Correct the schema for this platform.

Fixes: 9160fb7c39a1 ("dt-bindings: phy: qcom,usb-snps-femto-v2: use fallback compatibles")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 0f200e3f97a9..fce7f8a19e9c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -15,9 +15,6 @@ description: |
 properties:
   compatible:
     oneOf:
-      - enum:
-          - qcom,sc8180x-usb-hs-phy
-          - qcom,usb-snps-femto-v2-phy
       - items:
           - enum:
               - qcom,sa8775p-usb-hs-phy
@@ -26,6 +23,7 @@ properties:
       - items:
           - enum:
               - qcom,sc7280-usb-hs-phy
+              - qcom,sc8180x-usb-hs-phy
               - qcom,sdx55-usb-hs-phy
               - qcom,sdx65-usb-hs-phy
               - qcom,sm6375-usb-hs-phy

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
