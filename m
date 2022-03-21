Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAD12C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Mar 2022 13:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2srjr5FMDYJKL6cEhXz/UWhPpuArvT+3RCdetUomNI=; b=S8GtFZwg+6yBd/
	Z/eskWzCLTrdjweKkzc1D66p1KbgqXJp14220lEacsjuywGczp9d854i73Kwm+hfNGjxyTcdi4b73
	kQ3YOV8oDIm1Xuw1zmoE+dByAOxAb4wLSij0sqx7OCRGSUxJvGzIiOpMidYQ4TMtynnPY7Isig5nN
	GHGX/+Ji658gcgMvx3DQ60oO+hW3JDf7spQ9Z6IvxAwPS5ku/NZPs60DmSHoEl2m8QqZeo238SKMx
	PSyP5gl6MzOodwdvf4R6q7RXkgn6Z8GbooLxvUXEk+1c8vCNVdWfmL2WCQpIjLy2zyK0aoc/4tf1/
	T1LI/OksNMOzfAHsDqfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWIAX-007sNu-91; Mon, 21 Mar 2022 13:33:57 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWIAU-007sLn-Af
 for linux-phy@lists.infradead.org; Mon, 21 Mar 2022 13:33:55 +0000
Received: by mail-ed1-x52a.google.com with SMTP id t1so17869023edc.3
 for <linux-phy@lists.infradead.org>; Mon, 21 Mar 2022 06:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fairphone.com; s=fair;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DsNby0a3KqzAfOnj6mSyZetKsm2cbFk7h9HIg7MUGdQ=;
 b=mVyqs6hGGEUzEFy32H/xYVc8XbIFlcX8m1ZC85sLopiDTeC1gHZcaYWZ1t9zaF9xhJ
 EYsabs6hRni0eEKMdAghJhsH5U/tcQt0EiS5EP4KZ3mRazXyLtVGD12H72iJ7mYDRQbN
 ORKFueJmChRJ5gjIlmvlPOvD4pVJq+PanCARu1rT8lQ00x+5dK3bfhHgP/vkmiURe5HT
 DOA0f9njkv3mDnFZUcDzZFW7Wl0UMIduQZmfJkKsip8jeIdDg5sq2WRbbvITTvKO+bIq
 AFN60dplhhuEVHC7vWPgmddrusV9fLlJEVQJETly7aK5vwYDy8tuXeSV18QY1Fc6qrrT
 VTlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DsNby0a3KqzAfOnj6mSyZetKsm2cbFk7h9HIg7MUGdQ=;
 b=k53cE3LqALrrSIC7N1z1rnSB6aN/6VIs0mcyZvW9vN9N+oNdp0i/NQokqQNgMbXuYe
 4LFz9sV8wTIBn2bmm8Ix0/AvxNvUjYQNdyTCB3dMWrVGUCPisibvq2QSBymYJReCFLBh
 5f5ho/m7o3ZOG+X+yaNOVxtuNxEw++OYwN1M+yCu6Z4GXScJ7Ih9yYTt042OBDj4Mb0g
 uoF0xvcRDNL38qq74ooYdSzUIxcBrBBdhuGBOTIorX13TmJtJCMWCXtaUnYIl25ni9QZ
 Ym2xOCBmHj/jrOzlzOnvw9aa3KIvf/GwKxj95vHeG3a81bFyvvpcrmElAvbZbREQXH5L
 DVPQ==
X-Gm-Message-State: AOAM532TrfFeqEUThGJ5q1+wSJBw8H+ahFpfPSGx2UMGOikABbrz1nEg
 6PiYc1rrnnf5CxQfNfHHHpNA63OG5HqEQA==
X-Google-Smtp-Source: ABdhPJwbmbOxiUJERj4MHNXeag+kdgbSCHJBfY82vjDCL38uvezqoHUBcVMRYz+Bz08iOVCcqVzlsg==
X-Received: by 2002:a05:6402:51c7:b0:419:2bd7:efa4 with SMTP id
 r7-20020a05640251c700b004192bd7efa4mr8919920edd.135.1647869632531; 
 Mon, 21 Mar 2022 06:33:52 -0700 (PDT)
Received: from otso.arnhem.chello.nl (a246182.upc-a.chello.nl.
 [62.163.246.182]) by smtp.gmail.com with ESMTPSA id
 r22-20020a17090638d600b006d584aaa9c9sm6862154ejd.133.2022.03.21.06.33.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 06:33:52 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] phy: qcom-qmp: Add SM6350 UFS PHY support
Date: Mon, 21 Mar 2022 14:33:15 +0100
Message-Id: <20220321133318.99406-4-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220321133318.99406-1-luca.weiss@fairphone.com>
References: <20220321133318.99406-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_063354_389016_B124A363 
X-CRM114-Status: UNSURE (   9.72  )
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

The SM6350 UFS PHY is compatible with the one from SDM845. Add a
compatible for that.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- nothing

 drivers/phy/qualcomm/phy-qcom-qmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index b144ae1f729a..1628275265b5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -6007,6 +6007,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm6115-qmp-ufs-phy",
 		.data = &sm6115_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm6350-qmp-ufs-phy",
+		.data = &sdm845_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sm8150-qmp-ufs-phy",
 		.data = &sm8150_ufsphy_cfg,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
