Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A3CC4167B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASwgICyMRWxu0Fp9C2AO/vi2OxPNH5I50LRB0BiqROg=; b=t+j5W5WwyE6IG1
	XruQEcf/f7t24ilJ2mm0TgT1d0cXR/amVZ6NMe64jEBtLcnjc5mc+29Tqn+n9KVkka0N0akVL4+/J
	88RcTxefPDrS9Ie8z38XuFs1qTlGublBNFHeOd4RRHsD7IKSugaMlEt4FWTWJGr1fYxfiRAu8Xnf9
	n+QGbQSypDgpQru136qC2vlglsJYYpcVYDgONzrONpDy/ip5oemYrLfRLjgS8i+y0GXPZHadVSd/5
	/cUXmQKMUMEoUjiz7Cd/AT5ugjVF+S3lbKpQFNgZx6IG1XEMWZQTEGmWJsfMg6VJYWHNXT3tACnNV
	BHqRS7SetVdJ2MOGEXaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYV-00CxeQ-Ti; Thu, 22 Dec 2022 14:28:19 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIc-00Cocw-Qe
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:11:56 +0000
Received: by mail-pj1-x1036.google.com with SMTP id v23so2012526pju.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xKhZ0e0M8HYKuSmRQjhv72TX3T/LlT9blCNctysBuGQ=;
        b=nD5egqnYURqthIGOtQB37shl0bPI1H4qqNQn2FwkH4/tQJcvyS0FkDFLD4P9rsE157
         04OuUVzrj890GbhpoMxhOAO7rBtss0L25pwB0062QhLxhWZuJrAYIzdNTWHg08QTslSt
         VlmQ22KCMIFdjETvuBnOz/m+1HE/TxZedKcUB8VM45EdhcRdmzv30GjTtcqnppJhVLFW
         jr6jEQ4te51NYzN908Cm9KP55tyyK+7udd5+N52kTYF6aKvpeILxL61T4DNFJRvEhTjY
         oIuCU6TUNeMP/0gIi+pqII+n1PVWPgTN3SgN3nATNUIcF/w8t/xEE2wUNu0sWIOAIu1N
         cEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xKhZ0e0M8HYKuSmRQjhv72TX3T/LlT9blCNctysBuGQ=;
        b=xe7rtNFFLuamoF47NVLmFpNYQN3lK0kx0Bek5v2SHgo+rS99jHXK1kSqWHsi56N/Lk
         au0BNbGBGzSCXPU0XH8TpmZFJPULBgRwn6/t9krWDZ/K2eOJFNf62x4yLlmC769IAwbL
         n1a5STDSk3dcxJevCJ60psXxf/ghw/wV8dpalu0Q4gMSfwSPgR9JVyFNOvw3YiVELaB8
         UrGufHfWMq8UUOQFQ16BSz/rOk0C9l75W21gD0oxwLKesdryQbBPMh/X/Mf/u0DTsrRc
         rS1D7HByXG9t7b1Y7P7ML/wajaqhjJxAnv3QSJYDA/hw8Hubm+6WfbWYfqA/pzfJoymi
         3bMA==
X-Gm-Message-State: AFqh2koQ5Q+/ZAHUa2vgsoYwpisZLF6BiwRetWZXDLLRwihfQYSCL8yZ
	Pr84L2ngxI7s8GbO3E8BgpRmsIzlkaC/lJ8=
X-Google-Smtp-Source: AMrXdXsFVYG7ivgtchhbVXCprc4JnySWwh9p5ST+pTCanLIJsvhT0b0/4NdZ08dVB+p1cmuKb/NpZQ==
X-Received: by 2002:a05:6a21:3988:b0:ad:a09c:5734 with SMTP id ad8-20020a056a21398800b000ada09c5734mr7998451pzc.44.1671718314110;
        Thu, 22 Dec 2022 06:11:54 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:11:53 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 14/23] scsi: ufs: ufs-qcom: Remove un-necessary WARN_ON()
Date: Thu, 22 Dec 2022 19:39:52 +0530
Message-Id: <20221222141001.54849-15-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061154_902260_C08F0E2E 
X-CRM114-Status: GOOD (  10.92  )
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

In the reset assert and deassert callbacks, the supplied "id" is not used
at all and only the hba reset is performed all the time. So there is no
reason to use a WARN_ON on the "id".

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Reviewed-by: Asutosh Das <quic_asutoshd@quicinc.com>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 7cd996ac180b..8bb0f4415f1a 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -895,8 +895,6 @@ ufs_qcom_reset_assert(struct reset_controller_dev *rcdev, unsigned long id)
 {
 	struct ufs_qcom_host *host = rcdev_to_ufs_host(rcdev);
 
-	/* Currently this code only knows about a single reset. */
-	WARN_ON(id);
 	ufs_qcom_assert_reset(host->hba);
 	/* provide 1ms delay to let the reset pulse propagate. */
 	usleep_range(1000, 1100);
@@ -908,8 +906,6 @@ ufs_qcom_reset_deassert(struct reset_controller_dev *rcdev, unsigned long id)
 {
 	struct ufs_qcom_host *host = rcdev_to_ufs_host(rcdev);
 
-	/* Currently this code only knows about a single reset. */
-	WARN_ON(id);
 	ufs_qcom_deassert_reset(host->hba);
 
 	/*
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
