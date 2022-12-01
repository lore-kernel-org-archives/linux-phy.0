Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E00A7C4321E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BQmrPvgarDXqWNKvsuJSN22ijlhOpZuy/23/N6Beng=; b=BeW08GaS+HVUex
	bQ9Y9gKNgWlk54b8K7uj+9FiUUZRxNK9Y+BfvvpgQR8AsL8Hr/XopVgocAXFKccw/KH3HEDWGxwsG
	sPAYz10bXo2aOzt0A9XalR4CNKP6wrr2HIGynqTdc0s/w/y3APTplw72pcQCm/xzHjZlR1u1ppo7S
	V6cn7H1OdKLhi2XCriHV3yTTOIOo/v7z6CMz+iIABR7fTnULtSUqy+ecPSC4KSkMJERsDzUxeZRob
	y90uiA9Zjrfdy8yOfjsGprS+MFMDDcNDvaA6mRXXxn9iN89gSlh/Zet/6jKAzs4dR5kQWJt2JpxI3
	EU7+wQZfAehYmAUkc7fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nej-009CWW-66; Thu, 01 Dec 2022 17:47:29 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nd4-009ABn-96
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:45:47 +0000
Received: by mail-pf1-x431.google.com with SMTP id q12so2536878pfn.10
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L8CMRsJAWw5Kl2y6C4bQ/udAroFdc5lkzkoFkDtAV0k=;
        b=L9ZGHIuIN4pPpIQ02mKvPDbt7rsp+sys+Lik1R2XQTVkFu+uRC89PbR+dZwc52D8Q7
         g11NpkjDgJTJiTpWG/PbIwmXqJ22q/CAgB0sdJB4kjkpmvKdGsfzPUJFka0G9hBGXSka
         qfMUADxnUudncW+CM4fhFdPDrOiQuhVjxu4Fx8YZPXJuni6pnL07h9Y4l9+cyKgoJz23
         CEUnpzZoPOyMDeBy9l5ALrJI/57dx03ck+PieN6055E5ZoB9AR7kZ5Gum8iHrUAah0RB
         Qxn2i9gkfZe4YxEgUpH2qSa9m/9fqpxXD5UuKg0mY4EY8J+PGfD0JHGQu12n0WhzJJyL
         z7pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8CMRsJAWw5Kl2y6C4bQ/udAroFdc5lkzkoFkDtAV0k=;
        b=IygJkEYJEPrscP3+yHsOAmxAhhO2sgrBW0NTZVdfzK1bcaXWI+KkYQPlAwQsL2Ni7j
         KfPRKuh5jNXVA0MrJqyJOeLlRS2nLpYwEhfx0/Zc8WnAujFLGEZMOeImFuyGJ1OqXDei
         469FFC95+LFsexmyhniuDp3iX6Mnk2VRcbEmWSzy19g1cXXWIYnl5jXe5O9UI+oTkr6d
         Iq1OSFZBrbHtEdpMMTjMxSpBoo65Y0NINtFqi+gBG15TKQ7EkJfDPVSvkKJEyha+xCmd
         2BZCSPS3HAAizGkq8++oD99Pye8wRQ7+eNsC7O+FpJybpl+xCGyhfx+owXtaBqP82Ni+
         WX8w==
X-Gm-Message-State: ANoB5pnCl863qKpx7ssd+8iaORWbwdXcAAb5vxJ6xU6bb0EyKSwjx5YK
	iom/whXFElF18ylfesyps+Gd
X-Google-Smtp-Source: AA0mqf7y7AzxCwbyVg7CsylxaJhKbOLur7jj9QPpD1O9t/GU02NyTqdu+AdHJk3FLBpzUInJiq6H1w==
X-Received: by 2002:a63:2361:0:b0:477:b603:f683 with SMTP id u33-20020a632361000000b00477b603f683mr39094258pgm.93.1669916745385;
        Thu, 01 Dec 2022 09:45:45 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:45:44 -0800 (PST)
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
Subject: [PATCH v4 18/23] scsi: ufs: core: Add reinit_notify() callback
Date: Thu,  1 Dec 2022 23:13:23 +0530
Message-Id: <20221201174328.870152-19-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094546_351572_6756ED83 
X-CRM114-Status: UNSURE (   9.23  )
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
index 5cf81dff60aa..af8c95077d96 100644
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
