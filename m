Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 802CDC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sr4yRRNerAO+US9umWDp4WKa0sp2DZxEy4/Xac13/uA=; b=K59T8szwIDunwf
	cAEVUeaBzthqY4mkcJWCTY+E/AsNeIgUhrAh6kG+rpB9bTnjJ/EARGf0fZfgT8h6ASFUoia1pFKot
	4a46NF1yaaROBwo2A1N4qePwo33kFh7OIniwJJg7Cfsqcveu2cuaNiC1J3CLDfku5V9J1Q5ryFmLs
	F7q6NvrTBk35J937Q8aqYkpGJpsi0i9A1avIMGNn07eR4Jbhxa/KCvlH6xQWPK7iZhn/djA1xkbbL
	eFyBBZbS2Oj9lakicMFrrAw8+tr6f+Bh1EGlxHUCJkByk3VggAsTJLTpzfisexNV1EHIDJ2tTBOCK
	tawSnkI7TDJHR6AdeZQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWc-00FK7M-T0; Wed, 23 Nov 2022 07:50:30 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWa-00FK1h-0q
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:50:29 +0000
Received: by mail-pf1-x436.google.com with SMTP id b4so496760pfb.9
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=glMEmrKRq4os3IrGzZuvFW519vUHu5A1N8n6PQVGzlQ=;
        b=BOIqJRhDIjAKXMdP0E72f+a3Mm553ME26QYgvjzRlnw5V6BDIRXLMaF1se86tGbYQB
         ZKJSBLv7ClSBzIHeOGPty5hmKbwaBrkAZyu5V7cAXRjG5/gkyz6zJVwZsudzNbC9l4sX
         xGxB/hxYu0PBYiO+yoCyjYeMiJMGg99bn5EY+aEng7GPz83FRjYFs/kI3QkayzRoFvhW
         wfs9iSr4xEj+gPjd1lE6V0ENFCIGqFFvmzEws69pHbHcVtxSZqsQQo4soZY0JUzY4sMe
         KDFqmpqix67JN0Z5Q/X7RLjj2iVbNpbHIil8wCaS62qxF0o21h88N9YOigHsix7vCpN1
         62LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=glMEmrKRq4os3IrGzZuvFW519vUHu5A1N8n6PQVGzlQ=;
        b=ul4OFUgt861SekPGonUK6gIzk1WghJX2QpTp5XUQkhUkbWsmexi0XHonkNKj5HOgA7
         acYQrG1BerjDkivx8WCifFEOvXKAwUr5dsCyV97pSNhyg1Mh8IrYSKv7oaOt9FLfAJWj
         zsURzRCR4zzwELPskjIp2N/bqYG7htSH2zWqsXcl28MMghGoF9ZYrlecDmGm6j5UXGCQ
         6+VtF6rjOYfYAw/DNqZdHVoixY1do//4WrJMTOJ6ELwE9Kp3rge1C+dTIabGy+81u6q9
         ZzCxhUxj2jihsvDCDLyqvmTeC6JfEC1FWhq+zDQXfP534f6A13nbGqDbaVLQU6LQZ21d
         o8Gg==
X-Gm-Message-State: ANoB5pmYqSzQdMxbt9e2Argppra0qUMNoV1TcB1hr8OE7at1cpQ+FZZr
	KgySUMhAy1VKYYv9bmFe0hi7
X-Google-Smtp-Source: AA0mqf6lPAF5IEkGpX+K2Q9GKm/yZZjproyXopeEaYdMDy/lg31urXcP7Dnn38GSLO1N23qo/ycyeA==
X-Received: by 2002:a63:5359:0:b0:46f:3dfb:87e1 with SMTP id t25-20020a635359000000b0046f3dfb87e1mr9010367pgl.290.1669189827640;
        Tue, 22 Nov 2022 23:50:27 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:50:26 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 19/20] scsi: ufs: ufs-qcom: Add support for finding max gear on new platforms
Date: Wed, 23 Nov 2022 13:18:25 +0530
Message-Id: <20221123074826.95369-20-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_235028_110753_21DA9632 
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

Starting from Qcom UFS version 4.0, vendor specific REG_UFS_PARAM0 register
can be used to determine the maximum gear supported by the controller.

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
