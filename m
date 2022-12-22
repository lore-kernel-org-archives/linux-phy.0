Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F82DC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NH5r6zOVgFVX/5VhWsU3nzSZTimLmXU/7AjeDjaaTaM=; b=YHY+VrwHDo3uF0
	AGTWCf49MYdLNJmA+YD3NusI/c7K18sg3JFman2+4HpyKTGQfPnM8yo5JhQg87GYDL7g8rihcTNX+
	y96kvYPCi+udJE5GoEjbwFRP7rlkSn/1Pi9OAwZSw2t3cSi8RZS1EoXWubVojtarerlzboi1oktZd
	kO0zU/ixKKwS6INMd/XsMb2LU7N7Jn8+tUpCGhqco2IgEvagEQx35+yvGqWoJu1Hj5ZvFr4Vw7dVx
	pDwjZilaYJIFw4Q3gIKKYQLV46sObByXpXBUXW+gz2QyN/lSr/9GxH9nM+xvE+Qx9yHoWE750EV30
	BkNy2Zb784PtQnayIsPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mg9-00D2Jq-0p; Thu, 22 Dec 2022 14:36:13 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MJb-00CpJd-Hk
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:12:57 +0000
Received: by mail-pj1-x1036.google.com with SMTP id x3so2012969pjv.4
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8r6KWtBC24mvcKhKbi7oMsl/OBPp4xpGlki0s+jabEY=;
        b=P4YYRDE7eLMbshCu/AHFfq4yO9XLNrx8vkP9s9ulv6mT6xjsgejmF7rZxI3q6MWsSr
         UcJ/yJdcKMahNPOMOwprplmiNGv11pKw3UvQEFcQzE30vtdW0VhOzTrWNV/1uvEvvluk
         OKfjfmw9AXCkybIh1bWJ/Q1J7cd6cPuLRqolxmcXGTN08h/p+BEieKI61QV1pHZ9ZKkR
         BgbFvnOWEgC8craFOZ56y8EqPp3zuw3fmmdf0tkDj+35Ic9zylbaBTXttoxUCBZw8lM7
         bSMJXQuRCBYHyGvemSAbZYbbI/xLN0tzsFHPyKRd1xShBmwCEfCM526PNiNxrlL5msmL
         ukbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8r6KWtBC24mvcKhKbi7oMsl/OBPp4xpGlki0s+jabEY=;
        b=rgCZ7mkA91jESguVYCtopX6M6RSyktx+ZQQMwqzh9BOiT3rxnTlENoOoiqi931BQ1Z
         69kXlzSXMP6Du9Y1rWWy49cGCRnDjtdu8wNW/3t+6snM/K0bHM0IIpAMd3+ZBHAQyhFr
         GFGQzdUEFDPFnZOpq1yq5ZHKik4d/rcCDvVfhMH/gM/x7V2jFahXsvqdcLIUjAsmmtiL
         xXE7vTWYt1Srcyy+v0gkznWAn0OJjKMyzBgwUVlCHywrMfNz/L82LltYz9h4LTAx1uTN
         Ph5+NfxCiaDt/Pep9QdlOvUK2dOD6gGCW0wsarjMJ8zrcnprfcmsURIgglsQ+/gp5TPA
         5hQg==
X-Gm-Message-State: AFqh2koN3SO7PYCaDgiKe9LL5Ral6gRXATkwvWaj7y575+/QHK9OCDeQ
	ZY1HwRxSLdlvBBIhFZ5z4N4P
X-Google-Smtp-Source: AMrXdXt39otDg2GPiuR+A8WWlXVq1iDlfUJ6rH6SVRvyktfugDgqkZ6oq6hotpPIIqAIrKuhLnlHxQ==
X-Received: by 2002:a05:6a20:3ca5:b0:af:ae01:54df with SMTP id b37-20020a056a203ca500b000afae0154dfmr9321720pzj.11.1671718374656;
        Thu, 22 Dec 2022 06:12:54 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:12:53 -0800 (PST)
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
Subject: [PATCH v5 22/23] scsi: ufs: ufs-qcom: Add support for finding max gear on new platforms
Date: Thu, 22 Dec 2022 19:40:00 +0530
Message-Id: <20221222141001.54849-23-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061255_701165_9135745C 
X-CRM114-Status: GOOD (  10.59  )
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

Starting from Qcom UFS version 4.0, vendor specific REG_UFS_PARAM0 register
can be used to determine the maximum gear supported by the controller.

Suggested-by: Can Guo <quic_cang@quicinc.com>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.c | 2 ++
 drivers/ufs/host/ufs-qcom.h | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 3efef2f36e69..607fddb7b4c3 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -291,6 +291,8 @@ static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba)
 		 * Hence downgrade the maximum supported gear to HS-G2.
 		 */
 		return UFS_HS_G2;
+	} else if (host->hw_ver.major >= 0x4) {
+		return UFS_QCOM_MAX_GEAR(ufshcd_readl(hba, REG_UFS_PARAM0));
 	}
 
 	/* Default is HS-G3 */
diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 4b00c67e9d7f..dd3abd23ec22 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -94,6 +94,10 @@ enum {
 #define TMRLUT_HW_CGC_EN	BIT(6)
 #define OCSC_HW_CGC_EN		BIT(7)
 
+/* bit definitions for REG_UFS_PARAM0 */
+#define MAX_HS_GEAR_MASK	GENMASK(6, 4)
+#define UFS_QCOM_MAX_GEAR(x)	FIELD_GET(MAX_HS_GEAR_MASK, (x))
+
 /* bit definition for UFS_UFS_TEST_BUS_CTRL_n */
 #define TEST_BUS_SUB_SEL_MASK	GENMASK(4, 0)  /* All XXX_SEL fields are 5 bits wide */
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
