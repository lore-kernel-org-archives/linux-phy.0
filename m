Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78DD0C77B77
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 15:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ubN4d7fXgZSZu33OK30rGA8pAm/R/YX58tsaN0F2sKI=; b=bwupX7ZwkZvCLV
	4ViLueVRBcC4b+cEo/mvxFdFGhvya7ZzptrC2b+YnifgBzJP8x7dtIVd3kpPoDP5fuDUnjJU7Okgk
	64Kdvv2ehNqjV6+YL834qFcdnNcpUPsdRVGgtpyUZlaCCLAM/KTwSNIf7EEXfEBSb/CjkWnuk2sZV
	Ct0eIknN0gkDv9qcvXn8/Ubglj46A3sHc6lbR/hMs11yuTe6w+FMx+NwEN+VrmgQfYrJR/JCfzK2u
	7MiVx6XIe+goAPLTO3sMXZs2qEjT8S6DqJdmKJpztScBsCTK4nxlC2C3lEefD0PPFqZeykb+sgtqt
	5mcWcJ7YryEsqf7OxfaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po43X-00E01i-09;
	Sun, 16 Apr 2023 15:12:43 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po43T-00E00l-2R
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 15:12:41 +0000
Received: by mail-ej1-x62d.google.com with SMTP id fw30so5040163ejc.5
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 08:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681657956; x=1684249956;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xlWlvCWzrovrnqFvYZa6sVT2dx6B7igBCNASIvtKe9k=;
        b=ofuNa16m1w1KPW5fhX8kOZV6iA3lUxhQjy4U44tnXZ0qMuT+JO+fsjXJwxiyc0niJf
         /QUO4b8lsrltY7rwihIhq5ewsI/26fOmG5uCtnB8az4Jt9Anw9vyqUdzCaMw5uh3KgOv
         VAOkGVTZRKq1VXDhzOU5bjND7F57mPLNWUw1mibGlMTsE3LTgROWQlYxM1aJo4QSIU4/
         79A3yLVaOBsBiGzRZuteNFkIcdbGfU+rbwNFZwtQwIXCPFVGdHFbiXqovZmOfKiGS1Kd
         zdA+b9ejFY1YfrI2VZZZpbCQX00CAzB3nK3FyHcvP4+vIu8eepwVva3QRBQz6DDNzbvB
         F4kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681657956; x=1684249956;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xlWlvCWzrovrnqFvYZa6sVT2dx6B7igBCNASIvtKe9k=;
        b=KkLANUYxO/AamEsSnbq/Jb1QCpue2kVm9YEKMP3gdWhb5oI7xzNvdq8z+/WK0+6aVu
         6kRyJy4nB3VBDUz7nTUJm934ZWeL0vdKuPQX1WK+CPInyvK/AKnbufgi2S4kKPqt7pIv
         UGRlusjiopaCByE4Dx16fj+ijYFEPm/6wKchtkACTEDQ37CbReK3u65OgFxEqvJer+Og
         +jmWf+WgJQAF/rg/cHz3OMwSg41Qm6bxRG7sQscdHrOJpGRLUXQDlC4jE3xUOTCwuljL
         FfYxUDlM2KdIQkRTM9OV+oPyNQDhLstzLZaG76UOsgxo1dNYNuKHeQ/QVK4KF0S6g0s7
         7kWw==
X-Gm-Message-State: AAQBX9fPdzujtm1kUyQ3rMndPbK8WggV9cVwD/LqDBTuwC0nStUxYvXw
	kEKs9VeC8nf/sZ10JFlKx+pdyw==
X-Google-Smtp-Source: AKy350ZI6BgnI3mupLhl88+iHzgLlBV1xT4C3FRFxxGbWQfUvHA+oyjPfjPjRJIwh1KODZ7vbnE2QA==
X-Received: by 2002:a17:906:6992:b0:930:6c71:64eb with SMTP id i18-20020a170906699200b009306c7164ebmr4772616ejr.29.1681657955997;
        Sun, 16 Apr 2023 08:12:35 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:ba4d:301c:484d:5c9])
        by smtp.gmail.com with ESMTPSA id s13-20020a1709060c0d00b0094e729d333fsm5169635ejf.222.2023.04.16.08.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 08:12:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,edp-phy: allow power-domains
Date: Sun, 16 Apr 2023 17:12:33 +0200
Message-Id: <20230416151233.346336-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_081239_862120_4D328C05 
X-CRM114-Status: UNSURE (   7.39  )
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

At least on SC8280XP the eDP PHY is part of power domain:

  sc8280xp-crd.dtb: phy@220c2a00: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index c4f8e6ffa5c3..6566353f1a02 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -43,6 +43,9 @@ properties:
   "#phy-cells":
     const: 0
 
+  power-domains:
+    maxItems: 1
+
   vdda-phy-supply: true
   vdda-pll-supply: true
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
