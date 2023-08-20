Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 566A1EE49A4
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 23:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NbC3E110jntQAeLE/dURBbCEgii4fAZyG5jJwshRe+U=; b=C9/Ivet3W4f7fn
	UexomKq/udLAk1Y2CR80R4Scp5y6BNB/pOOormI8xx6SuW44Ebxgo65bbbOegJHK20EI0/Rrs8HZ6
	qXcr4z37tvsQb4vRBFzzDugjALwRH81fEZN6q27HSPN6D2HsdafFHhw/5qHw9mesqbXIIavbzewPa
	ZA1cOvNdaCBYE5MFMomP8uinwb7zpEn2YSmM1J/XaqrSHrVDQnfI+qbbWC5EAh/7Yis0rajxoYJCo
	nxohvnjRk9Ma8mIGjxc9BBNUFCyCSuAhb+X8HqOnoRB1EwPF56O4UjAV3yhwlH3Z10RhKbmWBZnh4
	qQUxjZgUfQjcg5QC9MGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsJJ-00Chhx-2Z;
	Sun, 20 Aug 2023 23:58:21 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsJG-00ChhP-0A
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 23:58:19 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4ff8f2630e3so4312221e87.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 16:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692575894; x=1693180694;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lY5n8pvkZ+2T1rqIQ+TPmE/hW2jf5Gx3K91sbxE80mc=;
        b=jjwSYY0dMPHSPnYcJMc/+qkpHjd8baHB8UdX63W+hH3G2lcC2S5lAwWMbqPcOEIIpR
         2HSgDSXFh5tl7cGitQjwUWFhnqfk7nwhOtmnolu9+nwq25ybtjzEFvLJmkvzMwAUVR+J
         7aEjvZmfbW8AYZvFV04jd9Q7LS2J5bYzLjUqiLoXlJ+r1Arns86VVRfNxLJrV2S7WPw5
         FUXNgmtazKvyNZVJzuWe5WsiXd2ZKGBPBo/ZfGEFHDk+nlCMfRP2KqFFRmCDeEISkq8i
         5zqcEQSGoP1XwL/kzg1W1/Ea79gDqCKBt35pd6Ck9kRD4iaCvB+fB0oYpPJTHNV0wlC1
         tcJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692575894; x=1693180694;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lY5n8pvkZ+2T1rqIQ+TPmE/hW2jf5Gx3K91sbxE80mc=;
        b=QVwVzl5xLaGdzRTcmICcRY0t9CC8OIADTDGLbCmTcYOJfE+8f0DsZTOnPZ/ikpB8P8
         zMF65uqleQDeMhUCeILaXANlUAU1jdkxI0xLrTN+srsvvE9SMm8fTmY1Z2bERdllpP1Y
         f2vQouEuSP0cuF2lWEWlpRoEilPB2rhYIYd8T333KjxcYCc2AWXVABcsVrD2SJgHUjqb
         nck4OAUPctIeJEIXPWyyYUbhnkI4cg58BUspyC9zHQTToUD7KU80s838Bu2KwsuP49lP
         AIwfE9eZeV+h4tmVK2WOXN2n8+WMX/KGX8O9GEzbR9BT+BsMBRGshSNIUnTFAu0yhp4G
         Dl9Q==
X-Gm-Message-State: AOJu0Ywuei6piJSbHPsNdWhdqaciDpLrn6sbMWgJmy4O7Wlmg57i6pJp
	YBgYlywtELEW1e5OE5K7XR9hTA==
X-Google-Smtp-Source: AGHT+IFfkquvhaHxM3dAUzYxcyY2IICA+/G1U9dK+yXHGz4Q4pHDjl9E0SLnTnXpnELmzni8Xp+05A==
X-Received: by 2002:a05:6512:1047:b0:4ff:8aad:8c7b with SMTP id c7-20020a056512104700b004ff8aad8c7bmr4344495lfb.68.1692575894450;
        Sun, 20 Aug 2023 16:58:14 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h9-20020ac24da9000000b004ff9ed89408sm1442599lfe.193.2023.08.20.16.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 16:58:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: qcom-qmp-combo: fix clock probing
Date: Mon, 21 Aug 2023 02:58:13 +0300
Message-Id: <20230820235813.562284-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_165818_145140_F4F64500 
X-CRM114-Status: GOOD (  11.30  )
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

During rebase of qcom-qmp-combo series a call to devm_clk_bulk_get_all()
got moved by git from qmp_combo_parse_dt_legacy() to
phy_dp_clks_register(). This doesn't have any serious effect, since the
clocks will be set in both legacy and non-legacy paths. However let's
move it back to place anyway, to prevent the driver from fetching clocks
twice.

Fixes: 28e265bf84a8 ("phy: qcom-qmp-combo: simplify clock handling")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9c3de41ecedb..cbb28afce135 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3067,12 +3067,6 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 	if (ret)
 		return ret;
 
-	ret = devm_clk_bulk_get_all(qmp->dev, &qmp->clks);
-	if (ret < 0)
-		return ret;
-
-	qmp->num_clks = ret;
-
 	return 0;
 }
 
@@ -3332,6 +3326,12 @@ static int qmp_combo_parse_dt_legacy(struct qmp_combo *qmp, struct device_node *
 	if (ret)
 		return ret;
 
+	ret = devm_clk_bulk_get_all(qmp->dev, &qmp->clks);
+	if (ret < 0)
+		return ret;
+
+	qmp->num_clks = ret;
+
 	return 0;
 }
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
