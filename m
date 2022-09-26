Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81017C32771
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 17:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VgNsHnaUT5teOX0o2yG69B5by3Nz6zhGBhYgQELGVqg=; b=mIJjWeW4ApJBAu
	Z5KeKkpuHrO2n5oncb2rIT4BnZS7/SMQ8akdaIxGI+1TGAISivsx+GhxLIDW2jwdFBE986hbIoyW1
	nrHI9G5+he+F9DWD9gTeshCnG8D+wqRbg5CRUwwHn5RtPiBop1olNfILdd1qWDjk3g0vHDsm5ElIF
	bsOqqA7PbWmS2HTTDs+J4lyt9ToyqpM0+ZWPHNktFQZ6D8x7auR276Iws9j/rbYSjkBAZbJDPr9Ps
	hVeuFHVyx8d3VUa3Gw17ETfYyVwzuUfH2dElRxs67I4h6sFCyNW0TaFR6Dzdg/N2AHsNX+rXAuOCp
	VaeKNmEOaN+1B7Pt5S9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocrr9-0061og-Ta; Mon, 26 Sep 2022 17:25:23 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocrr6-0061mC-2r
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 17:25:21 +0000
Received: by mail-lf1-x129.google.com with SMTP id s6so11948162lfo.7
        for <linux-phy@lists.infradead.org>; Mon, 26 Sep 2022 10:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Ya1v88EZ/XL5sO47rkF+/KDWT7WSuaL0/qW3DYX0V7c=;
        b=xVro1ZEJLUK6UvST2c/9H1/8iGaGK6u2JjxVftenrMia3xiubnS4d8rXVTQZT4yI0B
         SgIEH66bXw2Sdeo/vE/7CqL7qAIMzoPKApyY6TfRZ72rjzhu63JWS1heFPFlbaCLMNEs
         5g5WxaTWun712SQPk/mtaor7DFZdQ8yyMcySaoPktphJgUYW39q3l3xJANiXMaz0ETbq
         gCdG9Ylmva2LeVmN1QGEeHZoosprlSt6CXz47XH5/oZ/UmBmV8uAW8YDmtOhImXJmA/8
         OjoKr8shyB2G9VOHHrw59C5hSHMGqDIGPujN4QCEnydfqV5oWHcQBc5+1V4QjFRypej5
         49pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Ya1v88EZ/XL5sO47rkF+/KDWT7WSuaL0/qW3DYX0V7c=;
        b=lQL6Q2Qf+KnF/DuCiEwWM0SQyoju7Z0uKVcFlRM/GxN5BtZEzhxVIZnHYGBBASEkr+
         12/ARrhI1NHeZ35H/2dsPGrLDtXKnjgNqznhkVk/L8tQqob07GS8X8sBdVakgLxrqQxD
         s1HiE/hq99Ge/i0EfdmUzAdVlIQ8lzzQkJOYGdJuSi6gPdtG6sbVdNEpTam9xTnQRZCL
         q3vibqlasUjuOy8NPcPtewA5rUfb4yzImy6bxZ9b5l+eEwsjKp4Vacm/U1r+IryjmVs6
         lke35HWg6OeygKSwkouYixo3mg+kYIEnQCl4074Bgiv9IAQD30LHeTbymZQOgBsWBGzj
         zcpg==
X-Gm-Message-State: ACrzQf2LdV55Cky6YLn2fGSOS4s6uIiWR71o5CtMy4WbHV1rB+sLlLbD
	VVTLyw6U0DGldy062KfkgPHkfQ==
X-Google-Smtp-Source: AMsMyM7/vngVBgs5Cre9YiLHuYyvIaPdldWzcS/+4vgTg9OSyrBxOGboY315b0O8K0vXfoVw9EWwHA==
X-Received: by 2002:a05:6512:3d8c:b0:49a:4872:858 with SMTP id k12-20020a0565123d8c00b0049a48720858mr8848192lfv.145.1664213116330;
        Mon, 26 Sep 2022 10:25:16 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b13-20020ac247ed000000b0049f9799d349sm2574870lfp.187.2022.09.26.10.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 10:25:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH] phy: qcom-qmp-pcie: fix resource mapping for SDM845 QHP PHY
Date: Mon, 26 Sep 2022 20:25:14 +0300
Message-Id: <20220926172514.880776-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_102520_146680_4A39AE28 
X-CRM114-Status: UNSURE (   9.76  )
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

On SDM845 one of PCIe PHYs (the QHP one) has the same region for TX and
RX registers. Since the commit 4be26f695ffa ("phy: qcom-qmp-pcie: fix
memleak on probe deferral") added checking that resources are not
allocated beforehand, this PHY can not be probed anymore. Fix this by
skipping the map of ->rx resource on the QHP PHY and assign it manually.

Fixes: 4be26f695ffa ("phy: qcom-qmp-pcie: fix memleak on probe deferral")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 7aff3f9940a5..5be5348fbb26 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2210,7 +2210,10 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 	if (IS_ERR(qphy->tx))
 		return PTR_ERR(qphy->tx);
 
-	qphy->rx = devm_of_iomap(dev, np, 1, NULL);
+	if (of_device_is_compatible(dev->of_node, "qcom,sdm845-qhp-pcie-phy"))
+		qphy->rx = qphy->tx;
+	else
+		qphy->rx = devm_of_iomap(dev, np, 1, NULL);
 	if (IS_ERR(qphy->rx))
 		return PTR_ERR(qphy->rx);
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
