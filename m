Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AD56C3DA78
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 21:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lwTP28ycTsm0QWr/jMZftdTaJ20Ub/w1xhL3G0otlqI=; b=bWjDeRCJ0xbjbc
	HMmQHLNGzRlEyfS7QB0huNh72ZDrMQZN4rmz7pO5AffvftSVNiB6FXCcwOlENSzzoswWcLMETEJrJ
	yB252qEyjn+mEIPkIMmZrWyC07UHZprMyowq1aXG7+eNxsPm2TqwQvO5UA3iU4PQYUe5lQcaMXcqy
	rPkokqUj7KdnVDaZb//smUB1B9GOJMcyE6Lb+OWUgDg8NnGD3rMcn3iIlvKOKHmiaI2nO8koKSF4g
	Qad27yNV8q8lhb5pZIKUCiY/9Iuk4iDkN0RE9D51SXJ2GrwWD4vb9t/YWGBkYQOs4fCm/ioHhWPus
	HnsmCyKU8UUfxZdWOVsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGRUg-004Zvd-Gt; Fri, 13 Jan 2023 21:21:46 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGRUc-004Zsr-Uk
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 21:21:44 +0000
Received: by mail-lf1-x130.google.com with SMTP id o20so2881073lfk.5
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 13:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Dgg9JeyhvNXnnFE5cRLXAtppjoki0B7FFUK7wOEpChw=;
        b=CHxywticMRlcAgN0Fcl2ZaydliIr1xwa5MFZ5UdX57qzlSlT5IuOqOxZEQ9RWJWrh7
         J09KqGFy886RAcnWv86r2u1qnKZyQcLC+JUWzWjrqLscL4pYC2UYF/0bIuymKl6iadAT
         zZ1TXDzBLPCCjk4iYYU00Utz5Ph42y0rdebgwM2PL12rHi9RmCdmC79+kWdW8XxwfMek
         uQlYaARCcckrsPKJPp4grMdQInBG3DYwNY7w3Q9anSyR3BC4NmRhADKw5Fair1+GSGQ5
         GRRkNbvEkZDNdO7BXpbldFIYxvkM50npdLtAYc9Pvh9lbG1dnqh83XO1VEJu/r5VLMTu
         9gkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dgg9JeyhvNXnnFE5cRLXAtppjoki0B7FFUK7wOEpChw=;
        b=qLJO5AYeFzlrvydjHvdHypCrlhU7uUJY292L0JOE9aEK1DZyBZ/7k1Bsh0dEbWpkEF
         WLO1T362HLWexMs4C8hXWsMH0hZNfJqZckO/4Cvf7CFqsK2jieNn68o35yeb1bMlbqkp
         GtgR+5BRmOIsbGQaHSZ5JXRELDpQlq8a3435uyydSrUbt4fQKAB3b3OokKpkIgSdEs4n
         ehpeVGWPXFYsDfyH9gmJMdgQ7JqUDi8molvRW2eBtm+v69UwZsMebD0wq83gClv2yn1i
         ZiNsB2uE39diTr8hGHxKBDNwp8uM5smPuEW+uY/nWKbNegtsPYmjbW2FdXsCrCFQqe2W
         uizw==
X-Gm-Message-State: AFqh2kopZ9AWlDUPerBff7pFBU/7OEpgli0psZ8h4uvzWEAwlAtXHdUu
	O/Ds2IaPWcnt4RmT5eg3DZL9RA==
X-Google-Smtp-Source: AMrXdXtGpw4seAekxp4RMLdpvZLdYqKiRAOA2pyUu4YZgAM+fX3nqi7fZbPg2j8X3Yl/toz4dlrpEg==
X-Received: by 2002:a05:6512:b88:b0:4cc:93e9:df8e with SMTP id b8-20020a0565120b8800b004cc93e9df8emr5317476lfv.33.1673644899995;
        Fri, 13 Jan 2023 13:21:39 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u11-20020ac243cb000000b004cafa2bfb7dsm4008933lfl.133.2023.01.13.13.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 13:21:39 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 1/2] phy: qcom-qmp-pcie: fix the regs layout table for sm8450 gen3x1 PHY
Date: Fri, 13 Jan 2023 23:21:37 +0200
Message-Id: <20230113212138.421583-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_132143_059619_1FFFEF34 
X-CRM114-Status: GOOD (  10.42  )
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

The sm8450 gen3x1 PHY references the pciephy_v4_regs_layout while the
PHY itself uses v5 regs. While there are only minor differences between
v4 and v5 regs and none of them concerns registers mentions in
regs_layout, switch the PHY to use pciephy_v5_regs_layout to remove
possible confusion.

Fixes: bbe207a1aba1 ("phy: qcom-qmp-pcie: rename regs layout arrays")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 21727e90fad1..0e7aaff2ecfd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2164,7 +2164,7 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= pciephy_v4_regs_layout,
+	.regs			= pciephy_v5_regs_layout,
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS,
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
