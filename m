Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7060C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wof22bjgfHBmznoPsAjY1o9NY19rv0OI58FP46qWQAw=; b=fvKeRbIAqJBN0t
	m5xPrnzF6wshNmEAfpPwFesgMQtR5QqBRM/5So2LaonVD5tzoMzyS5ZuLcNBYgCCnOM27ePde2ij5
	BvOI6p+NeX6C26kkfvoOVYXDe1JOD+lZyNuR/PO5raCd6rsPegNXitVbLY3j8eqnkO+9jpl4vvNzY
	7SY3+FKBkKaQX//V4Jj/MyzgzK5rFMjqn7wfLIaDBDmeUmthr53azpTHRzYJHW8NI8Lta0PbApKiK
	d4dKylyVHJhfNV+jjgUSmYj/+uNWjHWGeiJNgQq12bTRwFzoTOwV5eVb6asBD4G2ddeJ3EjOKabuZ
	fvWrjDrBcKzCDxCBdPlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWF-00FJtZ-2g; Wed, 23 Nov 2022 07:50:07 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWD-00FJrt-AT
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:50:06 +0000
Received: by mail-pl1-x636.google.com with SMTP id w4so7142465plp.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I2Xd0gDlZp0b1F7R46Bn1beu0377yVMDIxRd9gxYrRE=;
        b=j4a2IZ4M/RPn02KaaMa7o/DiXf8mhGrp8hO1u8giHS105CGBy7ebnfzwcG4Ysm3Z2K
         kaxfRevnkU72bEifmC5K/ilMeVXZC9kdXRrTFph5Dd+4P+gg5yT0H8eKeBDNCUnZMhtP
         8jmhF5FG90qgX6YdP3X5BzL5dHnPipH0647G5o5q7eTUZ14l9ax7zB8kQD3IOmHSbPAp
         Xrq4yyYFYxZ4ktvd7X0uVK724lPuIJgYS24OpnuTkgzYzkBp76epnP7TMIby91Wvq1aR
         dRCLodWM9m1RMxYDJD4rlsjA9RGAVl8nD3+7Vki373kL62fuNXYaEOdHVl2WpUu1DKjc
         0HTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I2Xd0gDlZp0b1F7R46Bn1beu0377yVMDIxRd9gxYrRE=;
        b=Yx/dPzj3fozcpB2/xLPJ/YR1m8kQDVEzzeC6jfyABl64mfC64m/Z1Wb7Z6Fn6fTg8v
         X+Icc4feCBekVjaijJXUZ5qxkljPjX4dzJsqgQ/8z52N6xT7AHX+kr9+BTiNmbHWL26G
         ivfEVtSnTSYb7cfHAasLWYU8/pZGI7HIQAMLq4XsKlzqPLy6hSu0P5cG/T7DGUS93283
         kWZjBroxiAfxWtjYgKMeokyTLlpyLGE4Bb2JYSqBLbsPyQxk/zNcEZEZA3R5TT+PieLo
         ay6PLB/kc1ha0oVnOd9v5rPDcrU+3Vc7I3zoutrO86LsVvmy+GVTEBw3WVEv3ZRhLGtk
         zyBA==
X-Gm-Message-State: ANoB5pm3fQvPVeniXRf4LJ9CXIxonAiQ7kviHiZIgQXxXatHJSFc7/Yi
	+KWFdpaoDxN1XdPczrRsnbOW
X-Google-Smtp-Source: AA0mqf4EA/xu0LNp5Eeym9s5QmhuOi/k38g2Q5DDLTpsDvRmwE7yo049HbunO3rvytSj8UQTUayfsw==
X-Received: by 2002:a17:902:b184:b0:189:1d01:a4ae with SMTP id s4-20020a170902b18400b001891d01a4aemr8039549plr.93.1669189804266;
        Tue, 22 Nov 2022 23:50:04 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:50:03 -0800 (PST)
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
Subject: [PATCH v3 15/20] scsi: ufs: core: Add reinit_notify() callback
Date: Wed, 23 Nov 2022 13:18:21 +0530
Message-Id: <20221123074826.95369-16-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_235005_422213_30E94974 
X-CRM114-Status: UNSURE (   9.55  )
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

reinit_notify() callback can be used by the UFS controllers to perform
changes required for UFS core reinit.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/core/ufshcd-priv.h | 6 ++++++
 include/ufs/ufshcd.h           | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/ufs/core/ufshcd-priv.h b/drivers/ufs/core/ufshcd-priv.h
index f68ca33f6ac7..37260c1af9f0 100644
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
index 9f28349ebcff..09927a011a84 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -297,6 +297,7 @@ struct ufs_pwr_mode_info {
  * @config_scaling_param: called to configure clock scaling parameters
  * @program_key: program or evict an inline encryption key
  * @event_notify: called to notify important events
+ * @reinit_notify: called to notify UFS core reinit
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
