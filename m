Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94A9FC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVZ11CiDjxBomKVNzgpqMeA26ASKH9rZk3DLYgyjL+c=; b=wxgTf6Y92TX7vg
	qsue6p5e1233OUCL4LPDze2jgMQs5py0gYEzXPPMyBCxBsFkEGNGX4CXnS43inOZ4CfDD61JDg1ao
	c/Ya29ADaC7VLq7nRGabs+u1dq5Wq3cm6IIrBC1iFgUmQTqiWr43eApGH+Dg33OJOCYf/ZiW5zy1K
	sYSDv01bXO6XcmX3YvVkYILjcEvvd2vk3wujQFvQNWh5LFMbkESpm+zz2BLVUhTCqJIQe/DENsFmt
	xicBzA/ftYVczmsO4Nm0CrM3FkkDxG60lspfEELti/hhvZMH0IU97axLv8IGDketzK0TtnwGO6RWm
	TamxhCJQfup6jx1ncvaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MgA-00D2La-TA; Thu, 22 Dec 2022 14:36:14 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MJv-00CpOC-Ag
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:13:17 +0000
Received: by mail-pj1-x102c.google.com with SMTP id gv5-20020a17090b11c500b00223f01c73c3so5537875pjb.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+9vMWr+QReiCFTMChXS+VaiIVai5hcXHpa8PnZ2xGs0=;
        b=CdISaZLIaDAiejs3ebXWfckHizcdGNVuYMECOILk4yH8xwZVwxG4rqfNknKiQ9bMxv
         K6t7qbFpxglLraOezwuKyzjqE8CILTiYQ8fqC9spqWBaWJemqGlFl9HcxUr/IKp4GiVs
         lmvYjvo5Xsua2Dr3Hikt0B9Qgo+BR+9rdhHGiGch3nEldEUjjhkJEPBqpNEJNmNBWlR7
         afSp0RPecbEl4ZEjX8yxe7ItSy8y0659l6Vht++AZTi1zjiu/7I/OJvwdg/hfknwmO05
         fKeR62Njz+K0Ku39QJtMu4hAR3KOVexrkaHShOcxUgXcwsBT/pNtnOm1BuGm8aBWvH1H
         26Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+9vMWr+QReiCFTMChXS+VaiIVai5hcXHpa8PnZ2xGs0=;
        b=YaJOUiOxS9OwpdVmnKo92yXI6Yj2uUSxjhhD+Z+CPS92QettwR5kR731hIju+kQYzK
         jOxGbmn7griAPTZuhP2+q53z1qzPl0h3A2qXWWMZrzbE2FZ8CcJgnaNYFEbOtHknqOnD
         6gZIBXw3WS5gagl2RX88Fs5OK8MK2Xyy0xKsY9dcf6Clq/wOTaRZlYtzJDJLRU5XCPXd
         pOX+dxjaxCfMla08lYGiQZfqBdbWbiKRIVbuPMTZylki8FEcirCqGt57tpMYIHbSpjtv
         6rOdSpg/siHRli6tAcvhOKcShOBpdpjU0DvnQtA8WDiC0olqwciymnmiDLSQj5PEUbtr
         V+7Q==
X-Gm-Message-State: AFqh2kqknBMp+SpHGKYoXO18dgfoQei8Zv129l+qlK9YjALVwFVXT3x5
	VImndfGYXk3SPfEfBry199Tc
X-Google-Smtp-Source: AMrXdXsteySjBHCQNu+U2EA0Z9ki5BDJhCG3tehQDYHTLHrsEX/9rNG3ICW7RmKBQP2Yjf+3ELN7ag==
X-Received: by 2002:a17:90b:3712:b0:223:ceed:ef6f with SMTP id mg18-20020a17090b371200b00223ceedef6fmr6803083pjb.10.1671718382131;
        Thu, 22 Dec 2022 06:13:02 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:13:01 -0800 (PST)
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
Subject: [PATCH v5 23/23] MAINTAINERS: Add myself as the maintainer for Qcom UFS drivers
Date: Thu, 22 Dec 2022 19:40:01 +0530
Message-Id: <20221222141001.54849-24-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061315_719109_ED31BAD2 
X-CRM114-Status: UNSURE (   8.18  )
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

Qcom UFS drivers are left un-maintained till now. I'd like to step up to
maintain the drivers and the binding.

Acked-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7729a30b9609..7638c749a63f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21411,6 +21411,14 @@ L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/ufs/host/ufs-mediatek*
 
+UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER QUALCOMM HOOKS
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-arm-msm@vger.kernel.org
+L:	linux-scsi@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+F:	drivers/ufs/host/ufs-qcom*
+
 UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
 M:	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
 L:	linux-renesas-soc@vger.kernel.org
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
