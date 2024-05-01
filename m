Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 079CCC25B74
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFf1qJp1HVIhkVbCtZa4d8mwVHS8Vy/udPkx9dA/+JY=; b=FLxzDnr6ViXt3b
	aLKZdGErYREHHw0W9apLd5Gbrpc54a345EaJvDfNYDM1y+52nLE/8s5AoFWVJ5Yp/ynDRt9YwNS4C
	wKDlxnU29eXlUdo0pMcDnq7/ASxLVglbghcFYGL8XyfHguem/57V3pba3PYGNx7+ihpYUqgUK2Ach
	HHwdlIK9uCQTtF+6EM8zFWhJOCKk80IgFYlnQ/FdqAL1id4qilG/LR8LawzUG4CsH+XVHifjqsZjx
	WdWj4upya9A0CzSNGHol2et4YG1lXOAOm4dG6asfXJSXIFjVA8FGX3XjBiCCa2him+4/eVsJWF0VN
	MpGPnkj5+HoCZE60V7gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgR-0000000A7Cf-34q3;
	Wed, 01 May 2024 16:19:51 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgM-0000000A78p-389L
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:50 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-518a56cdbcfso10948493e87.2
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580382; x=1715185182; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QS7uXHBg97FEWIXT4Bv2Z1UzRhWVUsI51KDXVVeZ7No=;
        b=sC3187/BXC6spVFthHQRUKPrxPrsVflpipEBw2CshZY9zmV2I/U9LBUKroDknDxRdY
         J1i252a9X54mbDEJIb/jFMIPJ5UZwTaN62hdABSpVVSV6/gWatveOfqTBdittceekCsb
         QhHJPKGIKoDPXY7awE5k9Z0DsVS4++QKRbWb3hHZHTAEBFz5hL3LoBOka9yXh09t8WuT
         jACqjm1wtKaNLWOnyJRmysktpB6YG4eRYPTkyUC+iNLaeRsL80F8OmsU57WZ6uUYcz0Z
         N0d8+BTqweXPKKR6nXtjDoNv579lrGWn93QM+t5zqWZe+IPjAq5iA9I8bkLFWCUX62LI
         AqRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580382; x=1715185182;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QS7uXHBg97FEWIXT4Bv2Z1UzRhWVUsI51KDXVVeZ7No=;
        b=WivS15ft7Vbrtg26uncfez6ucit8zo9lrpuQmDTtL587M7C6Sk/8LyU0R+mmT73Skn
         ExiKtpdjPU1gPszOhrirvHgR+4vLM3lXQE+3VWvnU4vPjXXW4qAJpAHEsPfG6jScy3nh
         X7J7QxmN9P17gxYsazUMBFxta4HX5r1jftO14gFuf4lw/f6o6oZd9cy5jRK70sJLvkj/
         +HNSh/WkbFJY/A+csmbfWkEJusHQvcVyVJs458g619u2i1pFjJtodlhAjF7Bx1Yhk8lh
         TboxmZhuTt0JlAxvlBA0BOCFBUn97t8M6FH4Hf4xrr43iGUlIZ8SlvtgIAz27a/9/jUP
         AmwA==
X-Forwarded-Encrypted: i=1; AJvYcCVWGvxP6ieXY+IaXzJ5b0RXoDpvYkqL/6rH6UHwA/EhL4MzoPtHnbPzZcCyrsjn5OwonHlb8A2KOWu9UgHz6LIa5szmT93N06ZLAt6N6Q==
X-Gm-Message-State: AOJu0YwzNUhrUt8bUqkQ6T0xAEZLg1afMgMqfNPiGHxFE+J/WH7ck8Ac
	ob8/rIB5JTY2I44NVj8UxuzGg68Uxq6SxmmH1xcYKludoHDcgz0sVv9Uiz4LMYc=
X-Google-Smtp-Source: AGHT+IHOUpp0qpUkPb4uAi+MDjtYR+8QFYb6uaQRdhghuWRCMPDlkyU1X/O+WPQgGiFUFedU6jVu0A==
X-Received: by 2002:a05:6512:547:b0:51b:e707:74dd with SMTP id h7-20020a056512054700b0051be70774ddmr2402251lfl.33.1714580382667;
        Wed, 01 May 2024 09:19:42 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:28 +0300
Subject: [PATCH 02/13] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: fix
 msm899[68] power-domains
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-2-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1416;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=5Kn/Xp5aT6AU6VzISZGaeXF0Itj9GdwjhwxzVTTUE3w=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ5pR9oypHnen8uYHvdjteSf5e0/N7fPO7+tmuZ8+ySeYq
 aWivW5LJ6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAmkm7M/ldwyYkNpp8yOd66
 TPjf5nZvSmubMJfd/VD1lxPuTwiTk78hwy797UTizuO9x6+9k+zlzn78v2Vt/lPxItUJWe5GiqI
 MAcZpZ32NrkjdWa+dfjV+seUbSU6uVDXP5OaWzUHaczauCN3amP+lPD7a8uidSe8ZraO5C8W8y2
 77/L82tbVW6eq8bX9YJDizerOWz/y+2yCweLsUR5n8wmXvmjY8WW0jNCcgPeBZvI1b7uTTcfHVV
 2qFTQNfcUVMSousrD/4tkf1tlL3b/tTKTdfuJ3deWDtk9zW7rKbgVFTX3vMc5ac1xxb9/SDfoTC
 C8/FJZZWka1u51sXl4XKlZ4p66xdcJLJ4quAnXVhiKAFAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091946_920758_853191F4 
X-CRM114-Status: UNSURE (   8.44  )
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

The Qualcomm MSM8996 and MSM8998 platforms don't have separate power
domain for the UFS PHY. Replace required:power-domains with the
conditional schema.

Fixes: dc5cb63592bd ("dt-bindings: phy: migrate QMP UFS PHY bindings to qcom,sc8280xp-qmp-ufs-phy.yaml")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml          | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 9dac6852f8cb..f9cfbd0b2de6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -72,7 +72,6 @@ required:
   - reg
   - clocks
   - clock-names
-  - power-domains
   - resets
   - reset-names
   - vdda-phy-supply
@@ -130,6 +129,21 @@ allOf:
             - const: ref
             - const: qref
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8996-qmp-ufs-phy
+              - qcom,msm8998-qmp-ufs-phy
+    then:
+      properties:
+        power-domains:
+          false
+    else:
+      required:
+        - power-domains
+
 additionalProperties: false
 
 examples:

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
