Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CAD5FA3741
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZwpeEZgEzkEH7KmgeedxQSZA8FMP2MVh6xR5yvYwWE=; b=0/E9vccaXB2ySE
	f5vPGVTkN2+gEyZIkSyYJ3Wiow/6sZVBeXqySM6WXeyfFX5ILfdjlm/i+Kh2jzWZgIm2xwjAWwp2h
	aE/gpt1TYvAgVqO69KclTIHq8SfPcTcWiN4vPhvHJOO3xuB/e5sFmTHZn+ScUk4dRao105WhJhyRe
	/BELbVZNRjziHmPXgBUO9B+IosdWR63Wy8k1EHS4Z7iPDRNgx805hRx4dUKw8LJANK5mv7x+0UXcS
	FXpKv81QfvKnA9GHI25rIBG57NdF0lpSEm61nMyHsEJfnS4b/PaL0bHOjaaKJ7UaXNK92Q1/XYcHI
	sbVO/b+xFRInPFILWYQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8q-00DamO-Ot; Mon, 31 Oct 2022 18:04:08 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8o-00DalZ-2R
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:04:07 +0000
Received: by mail-pf1-x431.google.com with SMTP id v28so11164689pfi.12
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YE5rC5/HZ6deD3gc3XT/0TjMi23c/Z+tQRwUel8pEh4=;
        b=ngJIar4cRFhRJ87WFHp+luxDgZu2MaxOeVJXEy03uFeynHfCGlgzi4+nVEms9Rrk/Q
         ROcU3ieIa5E29iAolL6Yz77bfEMHKLh2mFIhoEnOubAUebbX3Dzmrq3EfuEWPqxXcGAn
         +rBiHDSlorwin1D7vz7k0tIR9TXt2rDcpAzH0KgK7R9bo7hJdfwl2kDscvhpG21gRei3
         12EO1W5NsPVUZGAi3n6ARvNOrJOdZDWH0wgCmOWRsDnRciNmsfVWUCRg64m1ovtl4KFd
         WqilTAX+Qx8nkQbWp1fEc6ofx7HjegeZT9bzcabe1M2IwGmiYj98lf7yZUYxJEjmd7aJ
         EkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YE5rC5/HZ6deD3gc3XT/0TjMi23c/Z+tQRwUel8pEh4=;
        b=Gg7d8l10t57BnLgeKORYJQauI64Cl4o+Htg1vF6ea09gA8f3GUT5Y9ACa3Ywcs6PhX
         hS1nRVIaqaiz3IqmCqIhThuEBj96LBbLjLSYhtrYdHJ1uHi0kjh+o0YahezTFs2fnGK/
         DrBeBTp7jHnwF6XJHSwqhhqkCmy6J0bFLdVusrcf0iZAjXDgnfnM6J9IAfM4S5INxUdo
         5Xxku+TWCCNnwcHI/9m5mlvNBt/zZQZk5j8uqFhUHhh2oTIeiViKbnSCqQWc1pzAp0Km
         hTgeUuAXVNWe3eIxjtC1HkkYQzsYAYFvXVe9QDUkv4ZVq1yiEPb9LFQRej2BHQb1V0/E
         /PiQ==
X-Gm-Message-State: ACrzQf1IyvRplDofGlc6cjL13tHBhV7RHqOd2rBa8l2sTOil4BG5WKKe
	3Kr/xD7tBslah9rWdhaWrhbK
X-Google-Smtp-Source: AMsMyM6yyBG+NNnymIFV2d9Fi+RqjhDyAZ0khdcfg9ZdsJeRcnR/xBL9MobSoFweIhYMbnTUnxEfBA==
X-Received: by 2002:a65:68cb:0:b0:460:b552:fbf4 with SMTP id k11-20020a6568cb000000b00460b552fbf4mr13750019pgt.457.1667239445056;
        Mon, 31 Oct 2022 11:04:05 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:04:03 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 12/15] scsi: ufs: ufs-qcom: Fix the Qcom register name for offset 0xD0
Date: Mon, 31 Oct 2022 23:32:14 +0530
Message-Id: <20221031180217.32512-13-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110406_130418_0C43F4C0 
X-CRM114-Status: GOOD (  11.18  )
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

On newer UFS revisions, the register at offset 0xD0 is called,
REG_UFS_PARAM0. Since the existing register, RETRY_TIMER_REG is not used
anywhere, it is safe to use the new name.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 9d96ac71b27f..7fe928b82753 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -33,7 +33,8 @@ enum {
 	REG_UFS_TX_SYMBOL_CLK_NS_US         = 0xC4,
 	REG_UFS_LOCAL_PORT_ID_REG           = 0xC8,
 	REG_UFS_PA_ERR_CODE                 = 0xCC,
-	REG_UFS_RETRY_TIMER_REG             = 0xD0,
+	/* On older UFS revisions, this register is called "RETRY_TIMER_REG" */
+	REG_UFS_PARAM0                      = 0xD0,
 	REG_UFS_PA_LINK_STARTUP_TIMER       = 0xD8,
 	REG_UFS_CFG1                        = 0xDC,
 	REG_UFS_CFG2                        = 0xE0,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
