Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A308DC4321E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96/bJ9q0cBjPg1MQm9WHCochWo/AmKOOwni9rpoPzFA=; b=mrLcjUg4Vd3OMP
	2O6438ox4yolOGoDshXyIOe5l71odU+JcQMl53jXEyMTIYbTn5KlYIinxq/FyndMnM5oVE5vzELYZ
	iUqfqcWZey7U0xsoIOXq7tPwycfVYrHftZ9EtHs2Y1p+IBag7HaV8C+q0ObV5FYPQKvBspde5dDY8
	HPO6erir9vHiGHlfME7X73VgNzT9RCUcNsbOavd1O2BAv03NvAc2RH3KBQq8lwvi26pd2VSdWZLSW
	6q2eED07GN49KqNhLmJA4jNxa5yw+yKlcw0ivW7/rXv6Kxd/6U0RddK/buwyqnyBprR6h78c8iLXJ
	SjD5tMsZPygS32LAxZLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ncm-0099nn-U2; Thu, 01 Dec 2022 17:45:28 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ncf-0099fb-NF
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:45:23 +0000
Received: by mail-pj1-x102e.google.com with SMTP id hd14-20020a17090b458e00b0021909875bccso4604140pjb.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RgfrCdEhXykVwBp3nVTN7WEjo711kZc0QKngTjXB/aU=;
        b=F5Y0Q5UQLyyIR5QPRFA5yUqqUh1IxjxKnxrw7Sg44Xod7IPkxDk8a8CvKdMfIKAu4R
         8JPI6vH4kowAIxeAtJ4bFRkU5Gn9nlW8Cqevp1wF/BckB6B8H2KcLqmorCEE1Zzb0cI6
         UUTeX3qDPg+udsYi3swPmdvFHV50CMC3cd2RYw2iEpPIzM2SkNSVmYc0KSz1sSBsL7ls
         GfdGRgfyV0yZfHpQdtAZ9//P9o1qB++UJXkC1FmvHhTk/QzQxW+3Iam3ZgSr9u4HkJfO
         FBYLzj9kA1r3l2Z43glviXlDKmd845CiempMsq6KKAJbctYVyTLtO5Z9Q1gNeV2BF/AK
         dPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RgfrCdEhXykVwBp3nVTN7WEjo711kZc0QKngTjXB/aU=;
        b=yZbkp2QHD7EEci/fy3Vh8DVG9mRoTpGdDQhR50q4en2Npbk5n+WnRXdQxiG8/G3ItE
         JJcVDbM7oS2EmaKH9yeFpqJ+5wZsB8zU+ftxcn1mlWKqpbi/0qn9xqREJzL4qnS3tfeC
         GxvsPCZ5J8dIYmJbXoChpZZjCfcjH7zyltw+F+GuOk44PPm5Z7g2nSFzlb2MnG/qkmpz
         6FM5jXlYw1XH6l20e3s3MMwW2xkHlnZQpdDCdq/JJZrYmADP0ur6srsIQEa2cQw0xa+r
         Tw6gorzZHR6WFxn6j3jiOYEXxWAulxY6kyOv3naSys6vGaZiW8gM850sCsO0UKO3bANx
         Wjqg==
X-Gm-Message-State: ANoB5pnBgNUz1VfTltx6u7LNFwzM5+rMo9zXgEgUuHe1DqobpmMfApud
	JyA4vLLGSfQjs6ggaa40QvEh
X-Google-Smtp-Source: AA0mqf4RNaazYmkyS7egwN1iTEJDJ3lN1cFKiS5tVRX/fWUVO+9HFwVP5nZEnrW4BdqyH9lc2QPy6A==
X-Received: by 2002:a17:903:2683:b0:186:6f1e:5087 with SMTP id jf3-20020a170903268300b001866f1e5087mr50040574plb.119.1669916718738;
        Thu, 01 Dec 2022 09:45:18 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:45:17 -0800 (PST)
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
Subject: [PATCH v4 14/23] scsi: ufs: ufs-qcom: Remove un-necessary WARN_ON()
Date: Thu,  1 Dec 2022 23:13:19 +0530
Message-Id: <20221201174328.870152-15-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094521_862274_A9AF1707 
X-CRM114-Status: GOOD (  10.84  )
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
