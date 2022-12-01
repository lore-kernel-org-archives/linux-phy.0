Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 215FAC4321E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akaC1+UC3GEWTbXhGpeFdut8Po00qovseAOFoV7qC1o=; b=S4gPJaAbZpKFsr
	MqZmBi4X2i21wC/w+uaSSqItOeJwX81BZD6PziexA+oskA01uRTAZG7OW7BKDLPxkUzchblwfWBg9
	McngDhyZytFgevkjIbB+7eoANoZPFD9Mt5s5xbftUWXvMHuRDKvi+qqYI7FyT720rOpwdEZscnYQm
	9gYHxSOhhafCwCRgIaBMoCVIUpFLVNkP5CsaRDujjMjfWOOZuCVKQUrBeSDBnlS7QKdGWriR5j4/0
	ytSZcbSlmUmR1aq1umlCaA4H+CYgr81cBsU/0vBQplUFiDtQPhZ4yWVqnY/KlvDSjYc+yScjFh549
	rHNX+QOwoisVPgQtq8Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nmw-009Ki2-85; Thu, 01 Dec 2022 17:55:58 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ndS-009Age-32
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:46:11 +0000
Received: by mail-pj1-x102f.google.com with SMTP id u15-20020a17090a3fcf00b002191825cf02so2816891pjm.2
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6j6MDpCLb+McpecemKMLJBiFRu5JxDaZjTLdO5ExkiE=;
        b=qm1An1wnNA4JoFkmc8RLxXAUN5b1VJMqvUQeJKWDZO8VpPHJJytH/a0wukFgCOEsQR
         PvGKlwQN3Pb2fuYtDoCTV5/tIrJy8CRXv6LJCganss6jIk07kEbQAJ8d7u5mEwU0skZ/
         FJcYOO/573sfawqfjpoM3U2FdRTle6JLR41EA/ous0A/ZUB5pZeqWumjGpPRQpWAbKFY
         VsMFWP/tJF23y85ZNZSPrmt2VHgyHmj38L6j2wN5MEBC7GBGnugxzq6yXUW0ncuTybE0
         BBq71sWiayRPPaKTcEuZpZSiHF4xm4IKTVcSO5oTbYBy7l9R13Rq2KSseUJNbeZLo+yR
         Mrfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6j6MDpCLb+McpecemKMLJBiFRu5JxDaZjTLdO5ExkiE=;
        b=iqPQ0rqVhz+738cHyfyTMARdWEkWIUO4bu/2EH2rpnjDNR5Sxum6Fms8R0j4U86x2D
         HFmmIlEVmsVqIto6j3KXp4D5XmCJFkbfYByJhvKpiXckOKDPyVz0bfyp2mOEOvp1m8Vk
         8q13CBLHka8ixewtzlik5ZUcx3XUfzdDN6Rp2pNrwCaqghgaTBh1dkMvUL8uyrDt42Pz
         CKgtlubHaCvdBPfxg2nhzJixx+OvL3zZai8UoVwPcn23hd/WTVc6u8bi5dlheVroT6+Z
         fMyDBGFd7F6eLfq2DTVCjD8DS6M6RMOASS0ZcSTfUHe9fSmeWZsRf+z5RKDCKftnsUzN
         SxqQ==
X-Gm-Message-State: ANoB5pmnNfVfjWqFsXv0uJnm1ZCFknce9L1Po9Fui7talAVQMPo1hOpd
	a8PE/zJ8d8Ad7TrhcEc8o0Tf
X-Google-Smtp-Source: AA0mqf78KOsPbaaFlVhcd28Ih9c2G7S6cX3mlAYi31+Gy7RmnH1cTQ9mb4rh4Nel4BZ59XsqVQWANg==
X-Received: by 2002:a17:902:ce90:b0:187:19c4:373a with SMTP id f16-20020a170902ce9000b0018719c4373amr61127615plg.163.1669916769695;
        Thu, 01 Dec 2022 09:46:09 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.46.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:46:08 -0800 (PST)
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
Subject: [PATCH v4 22/23] scsi: ufs: ufs-qcom: Add support for finding max gear on new platforms
Date: Thu,  1 Dec 2022 23:13:27 +0530
Message-Id: <20221201174328.870152-23-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094610_164296_A616812C 
X-CRM114-Status: GOOD (  10.41  )
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
