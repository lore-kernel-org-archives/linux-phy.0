Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B399BC27C6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 08:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrjbdYKoLit/FF6R5bDkd832if/iGl2WR9exYDuTYTU=; b=W1aXCJgZ9+v2tV
	ax8XjXAm8knW/mwkYjMfcVp+MI9U82nEPyBKAfn/iGNxfxCwTru9Fp73Jrewq3aOGvYzoVV7OpRrS
	6HHDo1RjpzBI5iY1zH0xMBK3/28m8jx+j9Yh1RLQT8llmjh1YagMw9Lw/QthJATxd1E3zRRSO1hRV
	RdVNcy7uhRsvKdoLDPtHDWxhJrEyqoM85G0chQrnYKzxQKRzKTT3H+ykrZ04hdLQqTelDI/GSq7Bp
	YK6NzlGnkZusVoKtVDx+l9wHyIxC/DCZEovyJgG6shNtaTc0OM/qfZRlKEZWKI1cfp3AakNwvHu5M
	PIp+5vvxXnRLqeM2EBlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI2PP-000000022Kj-1rSJ;
	Fri, 14 Jun 2024 08:35:43 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI2PM-000000022Iz-0nsP
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 08:35:41 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-52c84a21c62so2204380e87.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 01:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718354138; x=1718958938; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cu/gvkK5JV8o/AwZTjhXVurT12iJLCtsIO6X1RdbaeU=;
        b=w0lvdKAN5GsTpmKLmQQ/COseiuoYH9ddqE1p9EniGE1aKRSb6RL5iO0XL91E3lEWiG
         BdK4bPpOS3vuztnR1iewpUQdObcbFQvtPWQCbZWO1Pykt8UW3uzBwmKKik0TNV0/5Uyq
         FUuThkqLt32i+eLCtPjjYGq3XyAhkbHsd4iFOCEyBZT3Sl5YqYYfEbZS1aqAOG5U9IIY
         9YCEo3pMogZN36csPXQ4+yIMEUVYfAm7+AI0UErbi6EUbn2RoT52lCP92X48L3XA9UDC
         cNqv+6tfJeGbKsK87IfYhKoFtMyBH5zQlUtycwqCFuKsqQriwx705iuSb1Efn8Pav4nN
         RXlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718354138; x=1718958938;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cu/gvkK5JV8o/AwZTjhXVurT12iJLCtsIO6X1RdbaeU=;
        b=NxqCkFOD5+qxvAjCxMDUhickAXdyW7bwgWR5PXrnErWihblE48j3pIUEaDRzMNCuh1
         blm1kBTUW/Wy9p11jIaUXrmY3i5Orlvr1ZlF2dXQAyHgQFl4B00slIlQ2PMZi2Ef6Yu4
         XilUOL1mHQVR6Jmx5QCjW8i4WSfeQroGEz+EG2HpEikXp2Qi7lXR9Th1ma9RuEyzJOoZ
         bS4GCgMFbjv/QvXK4wF0Te3HgwFVmuPBQcqLBKstRiDRlxY8GUkUIBK1yDl4zxjWRMGH
         qrSyqqoptgSu44aHJbVOiWZE6AkxPuooLawdI11jgIweRQ+Pxu4DF/9bnWQ9Y/r9SDr2
         18UA==
X-Forwarded-Encrypted: i=1; AJvYcCU7nrUGA5mRVqURvGSehjBNDpFhFICVhStKOlun4AfhScOThn3ZQaegq/b6j3aR5ggFggLJgz8KrWYZxO8xwiQ2uHwEMhlxS4+4WZ56Ag==
X-Gm-Message-State: AOJu0YwlgykgI9D6CFxVRhSO+DHGyRj75ICLEFg7qhIz8HSbMVhnRDKr
	MlFqsu7PWhCinqaK3r4qaAWSw+xOp6Yve4nf42tUBKGNo76FO/c0hALzFdYX2BA=
X-Google-Smtp-Source: AGHT+IGBwQeeRTRpx3tVIDNf6sTLyuMyd/F9sOxQ2WN+C8rxDT7QywHo76mQERX8zghGcWanjbYHag==
X-Received: by 2002:a19:5f1c:0:b0:52c:1e37:92c7 with SMTP id 2adb3069b0e04-52ca6e99f9dmr1335311e87.59.1718354137822;
        Fri, 14 Jun 2024 01:35:37 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282f1dbsm444776e87.110.2024.06.14.01.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 01:35:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 11:35:34 +0300
Subject: [PATCH v2 1/2] phy: qcom: qmp-pcie: restore compatibility with
 existing DTs
MIME-Version: 1.0
Message-Id: <20240614-fix-pcie-phy-compat-v2-1-990863ea53bf@linaro.org>
References: <20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org>
In-Reply-To: <20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1592;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=T3DjvXEe+sumQ+ecA/DCNSeChO1xZMZY4sezj86K88Y=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbADX9AHnjH9hkGD+TdBoOGvwKBB1HxpP+V47g
 6dSXZoIDJWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwA1wAKCRCLPIo+Aiko
 1TGDB/kBg91USYnSDUl0V2b7SQdGOrrO6lVRza608UE+7V9XzzUpvCNA+vSyfU5EW2MtqBoF3AM
 7R+FpS0MkVTEGJj7oHOlANKSQ2cPtCRBBA0KoV8z/hfknL0D0Y3fz59bpOQzNHhXF32BWr3n9jK
 SBSUcy/FIAyNfFoAfLswcIHBYAQk4c/0wkLRjp7uBZOTZh0vaNpiiUYlCAvHWATPn9+UTLJtXFQ
 IZIHCPAt0Il/PLlU43ksakMCOh+oadeb86fsyvzpcCmd3kpBc0jG5ITaJx7YBQZz3zp5yGDpSLn
 RYDl05RAjlWX1oVd08XcDyMJ6knwbRlmkH6THH/sJ63+CqKk
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_013540_353842_F4F75EA2 
X-CRM114-Status: GOOD (  10.53  )
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

Existing device trees specify only a single clock-output-name for the
PCIe PHYs. The function phy_aux_clk_register() expects a second entry in
that property. When it doesn't find it, it returns an error, thus
failing the probe of the PHY and thus breaking support for the
corresponding PCIe host.

Follow the approach of the combo USB+DT PHY and generate the name for
the AUX clocks instead of requiring it in DT.

Fixes: 583ca9ccfa80 ("phy: qcom: qmp-pcie: register second optional PHY AUX clock")
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 8cb91b9114d6..5b36cc7ac78b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4033,14 +4033,11 @@ static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
 	struct clk_init_data init = { };
-	int ret;
+	char name[64];
 
-	ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
-		return ret;
-	}
+	snprintf(name, sizeof(name), "%s::phy_aux_clk", dev_name(qmp->dev));
 
+	init.name = name;
 	init.ops = &clk_fixed_rate_ops;
 
 	fixed->fixed_rate = qmp->cfg->aux_clock_rate;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
