Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17D26C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 08:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZXu/qvMglGNB63dE9krSS0HlbQh/U3Jye238QQgGr0=; b=iJyTAoHv+SwK1Y
	JPPc/CGMTAeqSyReCsc6S9M+hLbTZUxTi2/viWlccjL0VRoEUY9i49FPJf04/0mRIw1lhCB1ntX5C
	NShNIJRNNKCIP08USkQMUBXh738yDMVzExnU4jcZ6E/OMtlzqJ4XmgiAcby6HgbFVXEUab42vJmJq
	qwH4wOZ5BhhoAC9J1WyWFnEecM3QeS33VRO0FrpcYPxoq3bBXyY8RAZWGNP+4dlrET/SGpRVBmu4B
	f8kWg7F07snplQrAJ/z9Cwu67RuKQ2mdTVTs9sDztnHDGhDfjkDpvLgym3+hTM3fY1INi4EM2xxbL
	J4VI3vj0Ty9mZs9lF1nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfzk-002BKU-3S; Thu, 02 Jun 2022 08:15:52 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexV-001xUH-9j
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:30 +0000
Received: by mail-lf1-x12a.google.com with SMTP id a15so6372824lfb.9
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ggm8dWwn5n77WnxXMd/mDAhNCR7LWkn6U+IjNJRGUe8=;
        b=R7o0vs0vgZ5K+zF03ljsPHwO+/UmM03P3aXFYm9vweKxlMnmQfh5YMQKPGjZeD3pSr
         HBOSciK5cW6Fy4SeaPdhSXclEBi8SlKL7sTpEkh4a9+YNYf27w9IXIrSleguJ0WvzyvQ
         D7S4oKKd/DDEecMo/vd10St92rV/KdN6lXkuLuzHj0HdG2sVaL7F85wXnyCMAuEjYPlK
         1iAhrnn9fTxCkAoZUQZnx2RKyleXdu/7YiSZtcc/DKVB1ZYyIeeHyw+aNKudjadcOXoT
         9h91TSKeIRNEF5y4bsqI9wyTnI0zdHns3a3X1QunlHt3uEQN5OeKvKS71xw/6HaoB6Pv
         YFHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ggm8dWwn5n77WnxXMd/mDAhNCR7LWkn6U+IjNJRGUe8=;
        b=40nA1A4RbU0BYx+57gkyZ7D4veiZCZEh51IHZttpPE87CNJ+0nofSLSVG4MIZEWKuA
         hhmCWhsirGxsd+Rv1VrQQyGCPGMYm8B2gG6i87lsYIxcxpX3i1skMm/8NRhIWv/yeyZX
         hKFmJAVWRpcdWJ3o+EJ9rmVeWc+LdseboNY/6sesHmmaSk3ghiAzGfB6xeA0UPFqBkma
         88IaR5lGpsfRQMXNrVqwUVBF68wIkzIoqsd8wR8D188SmBD3F7gWe7ME43n5HX4vTbeE
         Q3YViMtOvXNB7T+3+myE5zipWer/RHZPd8mpvNKEUCshJ4LVJ3KOESd0t3ljjA9+pAmc
         lMRg==
X-Gm-Message-State: AOAM530obgGDvuTxX72+jAQXEEetzB4KPlqh98cHYt4mkTOeqRp7ciwB
	EJE94s8ImDiryBUMs69VnrPaug==
X-Google-Smtp-Source: ABdhPJxSiJQAWZgB9U27d9V54c8sjMGlX/4SU2bKIzeqAdXgJCmIRP9ngvUYd6KdlaiXDiBc0WpzkQ==
X-Received: by 2002:a05:6512:545:b0:479:b15:6671 with SMTP id h5-20020a056512054500b004790b156671mr2500660lfl.579.1654153762374;
        Thu, 02 Jun 2022 00:09:22 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 12/30] phy: qcom-qmp: switch to new split QMP PHY driver
Date: Thu,  2 Jun 2022 10:08:51 +0300
Message-Id: <20220602070909.1666068-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_000929_439876_E592C3A2 
X-CRM114-Status: UNSURE (   8.17  )
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

Use new split QMP PHY driver and remove all monolith phy-qcom-qmp
driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/Makefile | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index e9e3b1a4dbb0..65f6c30a3e93 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -5,7 +5,13 @@ obj-$(CONFIG_PHY_QCOM_EDP)		+= phy-qcom-edp.o
 obj-$(CONFIG_PHY_QCOM_IPQ4019_USB)	+= phy-qcom-ipq4019-usb.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
 obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
-obj-$(CONFIG_PHY_QCOM_QMP)		+= phy-qcom-qmp.o
+obj-$(CONFIG_PHY_QCOM_QMP)		+= \
+	phy-qcom-qmp-combo.o \
+	phy-qcom-qmp-pcie.o \
+	phy-qcom-qmp-pcie-msm8996.o \
+	phy-qcom-qmp-ufs.o \
+	phy-qcom-qmp-usb.o
+
 obj-$(CONFIG_PHY_QCOM_QUSB2)		+= phy-qcom-qusb2.o
 obj-$(CONFIG_PHY_QCOM_USB_HS) 		+= phy-qcom-usb-hs.o
 obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
