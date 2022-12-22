Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 006D7C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKU/K25JnosxsyOvzrF0uR2sL+pWLQcTWQd1RhVNb58=; b=xm7K9cSv+Tu+2i
	SqCN1da/1IRREUnimpOUcKvptFw4VBKj64vQEd7t2EYppnOnrVQNptPU4sLaWPUziJ0ro6lUt4ATg
	tyH3DFypCcJYDzJ0XSGpHfy7kB+RYoxWQqpHWfn539fLhXDTja8dFlyiG4+kx8RS3apT6nTQJSf4F
	McKC7QMnn+nD52IzsMGIXwqlY7I6AZazmhIhahabPyV0EjVwKFBupmnPCJKS6UW0Gxowik0UA/ojS
	lRWubUVClnN1FzxkeqThIfgdpQv/+C2btPzY6JL6FY8GjEYsVe/Z/Ws0lyGHUgLsxn/40Opjc6WzN
	6idQWj1NprZ4FnkLPJFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mcd-00D08Y-Af; Thu, 22 Dec 2022 14:32:35 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MJA-00CoxP-Pf
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:12:30 +0000
Received: by mail-pl1-x62b.google.com with SMTP id 4so2137224plj.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPijPobTcYQaRyLBeRVB3HBZnVNDSDqtRoK4CmiEviM=;
        b=BA0eDOPbqVVIhhnoX9eUYS0pHxcdGVSvOSEqKJssJmQgmB/zpfNs2ywpseefd9emYh
         XoqN4fMEHfG2pCF4KZiD2D5/qOOhJbSP8VUw1VfdAzx0eEsQJRZfPNZ1giqckcw6l/0F
         RY9jGf365mZQMeq8fABGTxuju4LBtSxJVrQVhQSYMynUL2F04SC6OwQb54WMmEL+4MHi
         nj4OlLmn3jy8CMwICcCtp6czimJzm9ypl8bMFg5PkRnYD7CXnKG/mQwKZnsgSz2ndx0y
         UIxtddqWDUwypdkhoLzg5pp8bnnjBvmdaWC8ZQ+LmnfdZ565cBWkogTOH/3UPtLm+trg
         koiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mPijPobTcYQaRyLBeRVB3HBZnVNDSDqtRoK4CmiEviM=;
        b=KVdVQR121E+Ll4s2xpNd2mA4+6iiTjGOQYUUpvh6ShrZdjMtYE//BKwW1NPJ3mwMB/
         B+wdVBp/hfq/9WusrPM4pn6c9ZXMJQ5hKaEiOrcPWYAyIKZj5DMsz+6WAH8QIMeIDq7t
         Y8XSEVFU8nfmAc0AvkNrN1PNqeAdTKW0pI/CFqZbKvVTtj6qUSij/nogHWij9Y4H75eF
         eVVwGNJsJRA6fftxEZlYU7k4rqZL3qYjL5YyeAhCLfpTIyZjzZnohT0+b90Zi91ime7H
         AlRLNRMvDCNSTJB6aci5JeGNE/q7sYuOAZmYytRxQbz9p4cLdyezAzjDtLaTg+SxhH9q
         GVjQ==
X-Gm-Message-State: AFqh2kqdGgqotE8InO7eR1mMPkDmT/Gee8EZ+7gkVZ+M44v+OpU5Bxny
	mhFq9rLZlzIG/GbxQ4z/H9C5
X-Google-Smtp-Source: AMrXdXvWMjrApzmz5yi1BXdIqlRS22IM1TaOp7Xa1o1bPm+EfdAnwO2fH9/w5YnfyLy+cSU+N9cqsQ==
X-Received: by 2002:a17:903:28d:b0:191:386:d8f with SMTP id j13-20020a170903028d00b0019103860d8fmr6265636plr.47.1671718344357;
        Thu, 22 Dec 2022 06:12:24 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:12:23 -0800 (PST)
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
Subject: [PATCH v5 18/23] scsi: ufs: core: Add reinit_notify() callback
Date: Thu, 22 Dec 2022 19:39:56 +0530
Message-Id: <20221222141001.54849-19-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061229_050293_3131B066 
X-CRM114-Status: UNSURE (   9.19  )
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

reinit_notify() callback can be used by the UFS controller drivers to
perform changes required for UFSHCD reinit that can happen during max
gear switch.

Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/core/ufshcd-priv.h | 6 ++++++
 include/ufs/ufshcd.h           | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/ufs/core/ufshcd-priv.h b/drivers/ufs/core/ufshcd-priv.h
index a9e8e1f5afe7..2ce3c98e0711 100644
--- a/drivers/ufs/core/ufshcd-priv.h
+++ b/drivers/ufs/core/ufshcd-priv.h
@@ -226,6 +226,12 @@ static inline void ufshcd_vops_config_scaling_param(struct ufs_hba *hba,
 		hba->vops->config_scaling_param(hba, p, data);
 }
 
+static inline void ufshcd_vops_reinit_notify(struct ufs_hba *hba)
+{
+	if (hba->vops && hba->vops->reinit_notify)
+		hba->vops->reinit_notify(hba);
+}
+
 extern const struct ufs_pm_lvl_states ufs_pm_lvl_states[];
 
 /**
diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
index 5cf81dff60aa..0a0b435f5c17 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -297,6 +297,7 @@ struct ufs_pwr_mode_info {
  * @config_scaling_param: called to configure clock scaling parameters
  * @program_key: program or evict an inline encryption key
  * @event_notify: called to notify important events
+ * @reinit_notify: called to notify reinit of UFSHCD during max gear switch
  */
 struct ufs_hba_variant_ops {
 	const char *name;
@@ -335,6 +336,7 @@ struct ufs_hba_variant_ops {
 			       const union ufs_crypto_cfg_entry *cfg, int slot);
 	void	(*event_notify)(struct ufs_hba *hba,
 				enum ufs_event_type evt, void *data);
+	void	(*reinit_notify)(struct ufs_hba *);
 };
 
 /* clock gating state  */
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
