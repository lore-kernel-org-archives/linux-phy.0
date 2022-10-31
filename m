Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E5B4FA3741
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zleGZ59Bruq44hL2yidQH2ID5MtVkLagNr7U8WvDey4=; b=3uOnyC0/xZj500
	2QXToZ5Gt8bToe9tIzkgr4UGT/WDRYissvwLtjdylCQ+A1yNy/+/SYBga7noKKARaAkZHJ27zwT7i
	el0rrkfCGr3HCA6aZ5PIOskaYzzCc4MyQkXonYqfiEr2UUhR/JET8qNsxQsr+swEdl6OwKMggv9YX
	GGzjLkfuUzuP1Fpmka3YHlAN0xXJVaO2rKLvk99ztuJ2+VVFEA3eA61I7AFhmeBPxpU7xVfSlO+/d
	Z82FU2O6jj3rGED2zrgIUd1l2RlcvRp8+5ZSs30A+yx7Sb7tWECe+kqNTF/CBAabo9Aa0c606V77V
	x9zrBSjVOg1sMs35GPcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8U-00DagI-AA; Mon, 31 Oct 2022 18:03:46 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8R-00DaZx-PN
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:03:45 +0000
Received: by mail-pf1-x436.google.com with SMTP id 17so7091912pfv.4
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3s4pb9x6UWl8wDrCXVlNY9pvnbipHUCj9wO5Sx7YnCg=;
        b=Aqxzg4D/i1JrHY1gvTUikcKWYvNIR6/SOWTFirfsyknenpTiNExSaqMPOO4XTOGMr0
         WjaDMhmDlSBJFRherP07thMkDv9uP+ytT5h5rOISFFZfNOFMDV3dcQb3AOJoxziDHC+E
         aAg446XXtI5x1pD2GSVM/M9gsGM3Q7t49dONxrBYaSSRdpHjZwMhxxv+/dKs1WM3vZmv
         ez3Wo8Z7SEIaD4GAmyrhJwYWHha71PE38otRjY3zU9gjAae1GRWd/vgCujig7aX3uFP1
         pDwfXQmLAJNarMjlLz7QQRiC30fJ8d0aTD4Bu3a4QfMpbHg8GU/5QC94xE889PcLnOZc
         XWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3s4pb9x6UWl8wDrCXVlNY9pvnbipHUCj9wO5Sx7YnCg=;
        b=cfQX8bQG945C+gWGxfn8mJQ+NDtHTGCNJF6f+PvA6T8gqvZm9QtGRrxsDmHhVGr9uS
         czxK4n0Jx4eghFhXPTrlaHIqm02+tZ/c7wQFB6cBfe9gMYblpjks7LiVHGXJBm0iZ5dE
         nAj8O6HdE9Ljuc9VJc/bSoawLSmjDOk2q6hlHIzJA7a49CfT7F/BFhfOj5T8G59cEOXb
         OmW7SFW4vD0mAMlZA8nNKu6R7i6lJtHjlN9CUkP0Ql8q+zf50uOEhBTG2Zt8bbIJZabA
         eIwNXEtg68QOZ3uflkt6iZQ1Gn4/YaYKc9a452l/bBMamVWzuMXUB0TpmYgbM22MaA44
         nwLg==
X-Gm-Message-State: ACrzQf3dHguDRfvJJ35SqZaMd+Zokk0oI83GejB6hVw88UHYwxgRJVnd
	BUGUZGlP0fSvZVUw7DgFAN/Q
X-Google-Smtp-Source: AMsMyM7lyqNnH5Zv2natwI+SL8YjteI6+uttuWSF9voVktP1yk/eeh9VzW9d4o4g84anScqZQNZXeg==
X-Received: by 2002:a63:e218:0:b0:448:5163:478f with SMTP id q24-20020a63e218000000b004485163478fmr13962942pgh.415.1667239423271;
        Mon, 31 Oct 2022 11:03:43 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:03:42 -0700 (PDT)
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
Subject: [PATCH v2 09/15] scsi: ufs: ufs-qcom: Remove un-necessary WARN_ON()
Date: Mon, 31 Oct 2022 23:32:11 +0530
Message-Id: <20221031180217.32512-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110343_841882_B65C6753 
X-CRM114-Status: GOOD (  11.16  )
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
