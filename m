Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC50C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96/bJ9q0cBjPg1MQm9WHCochWo/AmKOOwni9rpoPzFA=; b=oZ+z4IBUPYmuIg
	kNVKl+9fRvvn0tFMMXW1hsJUBVPAPIp8XebZogllPP+EQKjDle1PKwqpJP8g5rQQJiYNde+LbKdWT
	fEGC4cGOTPBA0tn9Ew/eoRu8GXkCTsARcMzxJbgs9MKotbKyg3qxrizSE1s4UkimfPLw41RDd8JAO
	hLwiKGKawOaqWWXJfScvA8SO4/ELBLkPpVApljoQeQ1f2jrnAYc3pvvJudcrwBbxIajw6mNcBEqsq
	UdWBDOOr22dduPO15ss2zCV0l7nOsDkMD37jDwXB+5XCxfs9O67La2EP5TEnCUvq0eS2i4KkMExlZ
	gIkZx/Z8nfFM429RjsHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkVs-00FJdN-By; Wed, 23 Nov 2022 07:49:44 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkVp-00FJbe-E1
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:49:42 +0000
Received: by mail-pj1-x102c.google.com with SMTP id a22-20020a17090a6d9600b0021896eb5554so1219521pjk.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RgfrCdEhXykVwBp3nVTN7WEjo711kZc0QKngTjXB/aU=;
        b=AtlYAIpauMotfnGl9jZIW/bs4OXPXsjqMu/t5z9waPiXFr+ZLGRbncdtrZ+xccgL4+
         ZmWoyRIerO0JwGuCWf/VI+7gQqE+MUj6zBip/uqsxxDyg1qsczhyP3aMIAMszq6wr1uT
         bvFGr/B3cXBhK3TwmA+4nva6/xx/GXYIuAotU4KTZD+L1N7ZnEmkpTwSY5Jn06EOxKzb
         P4q0Zq5/Poxrkm9YwDjFn6nmkNumTkGb4plFjP2kDx/4Yfk2B7wD59uFzzwxettvuGnU
         SYP7ZrQWuuFm/kC+Wpxd02pJmDrp07ZWFVYLe5Qo3gZUy2xUNnZcqj4WWJFO6OSX5TJZ
         M8eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RgfrCdEhXykVwBp3nVTN7WEjo711kZc0QKngTjXB/aU=;
        b=mLvBUfDjk2cK6LUczbwMy79a6SWi7JmI6gAUUXToFWiXM6TcqrvT08weQoEwAT+Pay
         yexY8i9vr6mmzwBisYsL7Y1KYe5yy9+z2m5ZzZzMxTpr8luFwUfabEQ+gQTcAsaHvlGt
         1bShHTKrgD3wHcxySSqKEvq0bNV9yCbS2d25S9XwTU8H4Hp2S5gZgCqyhOKlNB7dEU/b
         Ygi6rLnMvIAWeQ+dXn3twnkgss5z+MHXmGP3KO6gqL0X8G67K4D2554X9WcbE96RA+Tr
         IO4auXL5nev6MLjVKlr7MrUwjqI90woYTyoU9u2ZNGlv07rJ3UzsLww8+6jYvmQIe7+R
         GgvA==
X-Gm-Message-State: ANoB5plfu0xOn8SMhBISTwX4hfEKQvQZn8/LXqP+CqqhJxy5ZRpfr1BN
	n8mzCEQYnFv4EpMdfAGIpvDm
X-Google-Smtp-Source: AA0mqf7MKZeCvXf5M5XLWkX+Fqjhqr3Su01CfEQgrc8qo0XLX61I+9/B/AjkA+tkBnMTRD/m+311Tg==
X-Received: by 2002:a17:90a:e2c2:b0:218:825e:17f8 with SMTP id fr2-20020a17090ae2c200b00218825e17f8mr25546559pjb.129.1669189780946;
        Tue, 22 Nov 2022 23:49:40 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:49:40 -0800 (PST)
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
Subject: [PATCH v3 11/20] scsi: ufs: ufs-qcom: Remove un-necessary WARN_ON()
Date: Wed, 23 Nov 2022 13:18:17 +0530
Message-Id: <20221123074826.95369-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_234941_491273_9BBE445C 
X-CRM114-Status: GOOD (  11.24  )
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
