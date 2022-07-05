Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48696C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IThsmm6vOZzNyCYyFfFG4g2UvX7Pu4DNGXZmARQgXTI=; b=EXw4qlrA1NjJfe
	4ShiOFuerKDREpLlXTLBHyhpr5BP5hD8wm3VLyXqgrWM3XmVnGTAIk2L8A0RJoWUesixLdYv2Gt17
	1XtrQ4hW8m0yIxQJXML2Kx2F4ruJAngeBL2vQwyT1l69NUCYcsfL4U5vSM2wj4ilLA7rYl/u5bZpX
	0visWWuJ56QeSGZXLv6c2hIos0EWf2Cu06VpSm62OTJn1Qdvhj47ZZcIc8MhDSf6maBKTglhtzsqC
	VMD0b9w/phQiysR+ealeccreiE2Z4EimTwtwkGZ3IPjfewixretVWu1V78OkZyDbdsPFxUxQBiW8P
	GH3Y+gcsoZZ81BI8bvjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g3w-00HFWb-Io; Tue, 05 Jul 2022 10:45:48 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5Y-00GqlF-AC
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:25 +0000
Received: by mail-lf1-x129.google.com with SMTP id e12so19604204lfr.6
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=01bj+k2iK46i8ygWClSrCFjTLx488NH70cSKsBIKTsg=;
        b=EBgIy95oI1YlRgvATQfJpS80cR7EKsjCNm4gaabQMdE36oQ9UB4d7CLRx0DUJcgtZR
         9sst1JhY5f10oCLZxtduKw5h5XQsAuREy/710ch6VcAzhx0Z2Poy55Zly5n3lKc0Yc6J
         dI21tdKCkbfGHjVT53SzHgoqD8QuP1bswransbJNb6dKvxqPgM9mV10EHrYx8EWNd9jd
         G8cPRINN7VaKqCDffeao7LkChyQ+/FQCmuNgO3q0EaSmMLIXfGRr/+Iy1s1bASStqP7v
         SOCgW26WRGL7s8rqCkmqwp7nvfOWL8FE8TAsAjKtswA2gmohvA4VO+DvoAnjiFj1DyxY
         0Bvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=01bj+k2iK46i8ygWClSrCFjTLx488NH70cSKsBIKTsg=;
        b=sP9L5LCOeWS9WtVd1/+AJZ0hffT3DNoCXfGszw/nCbsVyED70BjkLRAsnb0Qc8GEnK
         LAa6IMby8KSAy4IeLLHCxjBX7rJCmw6Cveu1ma69eSIQgh+qOk6Fvd0b50lsMPBuoRC4
         b4bazzhDMqVkgftW36ssoeV3p8f3HSIwer5oTfLVQg43WGr6GwoglJ6pfGrvr5uukMpx
         3FKVq3LcUHklYdiIY99F8H/zL6s9SqMNuer28MZYBBahg/JYOUIYQfBDWeKn+U/zFun3
         MRUeEd1XypcQmU9HefyUjMBdCSaFudhMz1ZmMToWBK4fOuo+OXTQVI13dKd4oGkpCLSN
         FE8w==
X-Gm-Message-State: AJIora8HHy5bY+PuW1yt97WbNHReUJnDaNXL0uDyGpWzWoPgXOsMZ1aM
	oKSG0ZRdHwHLgn7wxaZqRyYgng==
X-Google-Smtp-Source: AGRyM1t3YCQvDbMe1JwFFlmHtpCo9dv5TH+j6hW5E21eFvkk5xFInDRir/IU9QDicNR/uPGC213yAw==
X-Received: by 2002:a05:6512:128f:b0:480:fd23:6647 with SMTP id u15-20020a056512128f00b00480fd236647mr22510026lfs.136.1657014202606;
        Tue, 05 Jul 2022 02:43:22 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 01/28] phy: qcom-qmp: fix the QSERDES_V5_COM_CMN_MODE register
Date: Tue,  5 Jul 2022 12:42:53 +0300
Message-Id: <20220705094320.1313312-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024324_392465_066B8CE1 
X-CRM114-Status: UNSURE (   9.32  )
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

Change QSERDES_V5_COM_CMN_MODE to be defined to 0x1a0 rather than 0x1a4.
The only user of this register name (sm8450_qmp_gen4x2_pcie_serdes_tbl)
should use the 0x1a0 register, as stated in the downstream dtsi tree.

Fixes: 2c91bf6bf290 ("phy: qcom-qmp: Add SM8450 PCIe1 PHY support")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index f4ee5884c076..581f09c71667 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -1116,7 +1116,8 @@
 #define QSERDES_V5_COM_CORE_CLK_EN			0x174
 #define QSERDES_V5_COM_CMN_CONFIG			0x17c
 #define QSERDES_V5_COM_CMN_MISC1			0x19c
-#define QSERDES_V5_COM_CMN_MODE				0x1a4
+#define QSERDES_V5_COM_CMN_MODE				0x1a0
+#define QSERDES_V5_COM_CMN_MODE_CONTD			0x1a4
 #define QSERDES_V5_COM_VCO_DC_LEVEL_CTRL		0x1a8
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x1ac
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x1b0
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
