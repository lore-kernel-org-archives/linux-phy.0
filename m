Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8837C636C9
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 16:32:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89B0B60FF3
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 16:32:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 89B0B60FF3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S1CvzKrPqd45RCYWKM96Pih4fLhQHylH5sGwmHmmLGs=; b=uTFVQ/NuqLTX8a
	dpOMrBx0XNrIX41A+4LnB9uZRfcklXH+bdjoxTEbisJrU8as9CJEIdfYtTRmif3pqF2Ft2YLvy17r
	s/LmaHNqm4clgZxeKPgAUzcokMpPzYJ71Y+B7cAvnBNrVDmDtpAjPsV3MuvhnhK6ogH9zZUKgncAk
	f8NoCrDKi5TQ747dr97E+pMPdBqG6Sb2nol/LTqEP1JWoVoZ08XQgKqgkv8F8S1rcpVIQjLJ6rEke
	/hf+KmMifPIMy55VZRlNuvRlbYuABKDhnQPL4GdlwArhxUETJ2JfMjZjE/3zGCi5cbJtIgSFMocNu
	TwRLZCRYgvq/MOpos44w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6F8p-00Gae6-2e; Wed, 21 Jul 2021 16:32:15 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6F8m-00GadD-GS
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 16:32:13 +0000
Received: by mail-ot1-x331.google.com with SMTP id
 o72-20020a9d224e0000b02904bb9756274cso2594920ota.6
 for <linux-phy@lists.infradead.org>; Wed, 21 Jul 2021 09:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kCvZTNdYEH5Jl0HEt5wKlYnbcTvyEMwjuHluFUKeb/Q=;
 b=zhiDbGZ6irvoE254nIOet2VI5q8lV53kzKCSBRKjE2mVYstBUUpyvyZZXh/jcXAcYX
 io8iGnJGSkAeYT1fQJz444piKJLTUOZP7u+JoZRTgqs07gd/zcKUqpf46/Td2NPZLVKE
 cgvXa87jvME/YWHIv9mNeqUmgN1o2xufonskalGe10mUfvKhy7J+O3SGH3pUQS1e+Vzb
 1A89MyAlAGx5GjTwaTaxQ3q/N63PUWjnb1Q/jDCG2zzhYrE8x7tm7/+CBP9p8QPuMEhk
 kWuiAqpKL962z4KNbpe+f74EzJBh8bntHd0RTdF1fpRDbQwF4UTGmPN0Rt0maoqvWH+S
 uOdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kCvZTNdYEH5Jl0HEt5wKlYnbcTvyEMwjuHluFUKeb/Q=;
 b=TbO9IWFkfdWEVxk4J9gAkqMTUloGkYVLrmK2SZShYz1trNXOVDvjzK8PiP/1yK+gCb
 7F0t2UpOz5DNP33JqVR09j33KVQ/UbBBQjGIU2XSBSw7eKXK87sMx+coU2usPccDv0o+
 JFFWzgeciw48rLSH8pzluUNZG5SzYJoaJKPMML0OKd6maNv/dYg9XPypm4Rv6WoUaHw5
 kZo1k/1wxz3MeyVXedAw9PUP/uIa+UuyqUPWMKhQp9mTcb9MiTsgU4KWoEbc1Asdm1au
 cX4YFJ/LgsJmo59ao5OJPfptUw4erLHCoerxGyqmzCjrr7D6jO/Z1vY38BYKjGoURuGe
 ukTQ==
X-Gm-Message-State: AOAM533OVu+SRAYfRYBV854MkZigRtpYO4DMSUt0pfnLP8OU8q86EaXS
 U3Xaz30O0Wdj3dxHzc8ngk2gtzs5qXq10g==
X-Google-Smtp-Source: ABdhPJzQFnAl1SLEDOoYb4zVkDHREZjwyVNxQW5My6QwUomoZN8IcPzJYua9n15ZiiiW+Da8Mrxx9g==
X-Received: by 2002:a05:6830:2144:: with SMTP id
 r4mr25797300otd.19.1626885131603; 
 Wed, 21 Jul 2021 09:32:11 -0700 (PDT)
Received: from localhost.localdomain
 (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id w19sm4682531ooj.39.2021.07.21.09.32.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 09:32:11 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: [PATCH] phy: qcom-qmp: Fix sc8180x PCIe definition
Date: Wed, 21 Jul 2021 09:30:29 -0700
Message-Id: <20210721163029.2813497-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_093212_591839_34634C30 
X-CRM114-Status: GOOD (  11.25  )
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

A copy paste error was snuck into the patch going upstream that made the
SC8180x PCIe PHY use the SM8250 serdes table, but while this works
there's some differences in the tables (and the SC8180x was left
dangling). So correct the SC8180x definition to use the SC8180x serdes
table.

Fixes: f839f14e24f2 ("phy: qcom-qmp: Add sc8180x PCIe support")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index b2ab20cd8ef5..cb2bf0590991 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -3519,7 +3519,7 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.type = PHY_TYPE_PCIE,
 	.nlanes = 1,
 
-	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
+	.serdes_tbl		= sc8180x_qmp_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
 	.tx_tbl			= sc8180x_qmp_pcie_tx_tbl,
 	.tx_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_tx_tbl),
-- 
2.29.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
