Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67A49C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 19:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AmLQwVoFRTk+phb79ZZ7/t7WtmpZPUrcBg74mulxpFM=; b=O7BIPaDx/e/mnv
	Z1jvhtQGwQMBfp+a4amSqWc9LspM3myMWBw3ESSVCaOcXjqhFPRZ+GgsPxZzXXHsLumwT/XOvJyWL
	MBArZ+sT+P/b9KBjxJquB09ci/czFW95iF6Xj5OCcFFDqbLbfpfNaLkthx+cIogcia2KjFKe6JRt3
	F5RXbXcvTKAMuRTnuimwML3FCVxmr4mzxAo6izS0SrPMNkdq/ueJayEqLvso6H8SBX9ZiS1U0Zwqy
	CVIc0Jj1DoNahpoxMd56jQjkw6kI75AdHraDgsgKTpmeRVHQC8pXmhd1u4Rv2k8xlmXFe8r54UyMg
	fWreBWpLVy8c417wykLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odyln-0055Vt-Nj; Thu, 29 Sep 2022 19:00:27 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odylk-0055OY-Fd
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 19:00:26 +0000
Received: by mail-lf1-x131.google.com with SMTP id j16so3629353lfg.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 12:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=SXNRgezD66dOFNTYj/62XJd73lc2lPvfOvxtQr1WywA=;
        b=GJCkLz0bYM1DYJx9DF36t9LZynTLjvEHbvJVr21dZvoJxtDZKjJCwxIwj7YefOzp4J
         StqsnHUcslalg+H3DWIESp9Tk+SmxpZhxsB+veURlGS64tAWhRwsAgyGRy7o4AcnyH0h
         v9hRl2XuCJvX4QNPvZZt/0G14NhO/pDIytBV7x5/J0G1HuNQC+xh/kElIuYRsIr7sfIr
         N4yaHRjqG0oTy9fwTLdz1I2DzkndKLUxVs7nX6tjNJrPGjUGOWJGOLVMwqLBse2fhSHc
         NmYl+g4Y8r6vEHWs18mfSNyDnFNNFyCmaw0dfLavEYzk2ZnB4F4YbSKlDAls9xfrOy6O
         cmDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=SXNRgezD66dOFNTYj/62XJd73lc2lPvfOvxtQr1WywA=;
        b=o1AYh6K4UuhUBy+rxQ8T3HnFAs44N7OlkvLA45NN5qGRQy6XUpA3k7ngdO1y/RuJ9Z
         xJMA7wbAla/zErX+d0s7H2XULL39JQ8CDl3g4E6DjdQPiTMzjJFeyBOqWjEJ8XYxasJI
         CuchViJGOXCT9l6J3PBizPEHiRybxgsS8izij2CgSYMgrS9Nja3SzmkL4R7c7ih3mjyi
         WaiyXsJCJ/MOjINzGGWKIWtqCQmjDdIJzz6fujtDP6g4r/65n/464U/urB+aalEE2pqA
         sQ1Xy9Tkzv7YdBmwuG+36ur7l871WPtJlpVCI6VIZvOr1whD8LOogA9u8GlXAU/iEPJG
         N/fQ==
X-Gm-Message-State: ACrzQf3zU811l7MOrCkH2PDmGtlzN9OmHB4BQ4TKOif50MEeG9EZiGH7
	Rau3C0clQlqVP7xeZOD/ow5oQw==
X-Google-Smtp-Source: AMsMyM73MLvoFpR7+pjiyJhjx1fnEB4XAntskus3PN3n8DQLM9XxZu1FQGuxDm41mFcMiHOCqGQ9cA==
X-Received: by 2002:a05:6512:3e14:b0:499:1f71:1680 with SMTP id i20-20020a0565123e1400b004991f711680mr1992315lfv.114.1664478018290;
        Thu, 29 Sep 2022 12:00:18 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j15-20020a056512108f00b0049f87fb416dsm33693lfg.12.2022.09.29.12.00.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 12:00:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Robert Marko <robimarko@gmail.com>
Subject: [PATCH] phy: qcom-qmp-usb: correct registers layout for IPQ8074 USB3 PHY
Date: Thu, 29 Sep 2022 22:00:17 +0300
Message-Id: <20220929190017.529207-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_120024_682638_52D94D73 
X-CRM114-Status: GOOD (  10.74  )
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

According to the kernel 4.4 sources from NHSS.QSDK.9.0.2 and according
to hardware docs, the PHY registers layout used for IPQ8074 USB3 PHY is
incorrect. This platform uses offset 0x174 for the PCS_STATUS register,
0xd8 for PCS_AUTONOMOUS_MODE_CTRL, etc.

Correct the PHY registers layout.

Fixes: 94a407cc17a4 ("phy: qcom-qmp: create copies of QMP PHY driver")
Fixes: 507156f5a99f ("phy: qcom-qmp: Add USB QMP PHY support for IPQ8074")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index b84c0d4b5754..c3e7a860582b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1616,7 +1616,7 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= usb3phy_regs_layout,
+	.regs			= qmp_v3_usb3phy_regs_layout,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
