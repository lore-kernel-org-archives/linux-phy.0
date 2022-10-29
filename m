Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CD6C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zleGZ59Bruq44hL2yidQH2ID5MtVkLagNr7U8WvDey4=; b=s5sQX8i7F517yn
	y1StrmTEJZTqwdcQ/7b8QoS2ECkyQiPqj1rtIQtcdyyZGrk+8dk/j60IooENE9UckS+jfXu3o+o0e
	GMexrqJBMy8sC1WX8kIQaO9KxN7Q3DeVm6H7tdmhc2IXpuUwJpr6cAo2LQEq3HN1uc3fanzf53KJV
	99SGJZKgO6HgaGNqoPpoMnb5EsF+vBk/lkQmsEpG+bKAajJ1yby9UmoTlR8qtbK36jqtu0pdl44vU
	uvFRiKi4qOqlT9Ik/t8fqY+gHgCgECoIw2iXnOV/mSLzQfKT867PH2xuj4Lk7jkbtoa/TUhedtJsd
	Q4RFT/lICvbi59SOllJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomeW-006UHD-FJ; Sat, 29 Oct 2022 14:17:36 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomeU-006UFV-7g
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:17:35 +0000
Received: by mail-pj1-x102f.google.com with SMTP id d13-20020a17090a3b0d00b00213519dfe4aso6833990pjc.2
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3s4pb9x6UWl8wDrCXVlNY9pvnbipHUCj9wO5Sx7YnCg=;
        b=Q6O1hF4S7juySY6AmZ8zq//HmIEox9z1xxzOUF6YDpC70zwiXukT55J0k9aaH8It7Q
         pGmFfNKqllIDMoAfwQFxJz7zDsju19WK1q6KU/+0gQAGZlt1w+8rBEm++XUSLTpMHdHE
         sa5CdEqaXiFDgkbIvDE6d8x8o1T9HkG7Pcp0RXlTQYGWWpPn9qgbPMi1SnbCtfdLx7gw
         R0Dtd2nKG7kst/GazoN5J4+ahms67kLaEQxUGJM/GVZDdOu464Z+QhKL0OaGJml24BlH
         mYi7q9UBfqkpbwd1PgZkdtYE+tP1R1A+WqVbEW2unLleiaqJVqM87KhbUgURnPTkI4gX
         3k2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3s4pb9x6UWl8wDrCXVlNY9pvnbipHUCj9wO5Sx7YnCg=;
        b=J+FBPJD/SqC6nFhpM6WmsYJiGjTdpsO18ZRk2Y5DjPR17gL17QIcV0BBnGfxF8D7+R
         qDkhRv9BUwYKMPR4iwlqlipLerHU0gz1xPhzxFoE6dOaXjpEO1tWPmkP4Il5vKQqwMaC
         3ex6pcPoYPqhQmlOWwQvjDJhpXuW9zxIqh0MLBvETPHsGoLh0Wju4/w0cmAFN1srcKE6
         p+i1UI4U+B3Gw0gJpKR5Dgl75U4lWScjsbqjphDsS53VQmbycOZFOFVPOJwfU7mx/LUc
         DEgIlVdTu/RhNGbi4QX3B16tTda6s8sNxQNFFfqB02hA4nJuZd90WXuRttUaV+lSD3rw
         mwnw==
X-Gm-Message-State: ACrzQf3AVRNyLO/Tw9TU/0ms1u1oJgERWkma1nYEN9O84L69/p4jBJ6Z
	DZjlOXJZR4pL0p5xRnoNPRXq
X-Google-Smtp-Source: AMsMyM5kZh+0/sPqHoObvpi8OIIjuAZhuV8pWD2z/fTnaZ0gdUHdJP8lOulgEuhNtg4suUFwuMLnEg==
X-Received: by 2002:a17:903:1209:b0:179:d027:66e6 with SMTP id l9-20020a170903120900b00179d02766e6mr4653018plh.67.1667053051344;
        Sat, 29 Oct 2022 07:17:31 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:17:30 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 09/15] scsi: ufs: ufs-qcom: Remove un-necessary WARN_ON()
Date: Sat, 29 Oct 2022 19:46:27 +0530
Message-Id: <20221029141633.295650-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071734_291556_3B5B1893 
X-CRM114-Status: GOOD (  11.00  )
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
