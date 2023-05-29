Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1476C77B7E
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 18:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVEPWRa5Ii6oJ98WqE2ub3reh1DCDMo5WmvONKQ0Awc=; b=h/XzgMQbsVk4WQ
	hz7pwSjKHM7hX2P8a5aa7gDRmXJonD6lR0vOpqGegIzE01bXEv43Zu4UVSiQzrnJFQQu+oi2XnkGv
	1inbQTSxC6HirNr/kV8uPFrdii3NtTKX+OAHhdjhoj3yH+rL78fM015+7lsZMF0Q0s2ZE0HExYYiz
	PdWk2hGhQAsYygyw6Ou4xoJLeU0Pvz404XwHJ0N1Fm/vCyA6HpzTzSocyCX7jYASAKPE+byl3xP7G
	bJj1/jK9ZnzPJpVOvEjLehzK4tba7zthh8MJmXtJcWyQ0OWGWsu2uvDUevZyTBzp/+9kYovffhzlo
	B1bpKaAL8ZkR0ekikrzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i4n-00BScs-1Q;
	Mon, 29 May 2023 18:58:41 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i4k-00BSbX-1o
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 18:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685386715;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wBYm+hGGLRIhF5wIdv9fJibDGsy7JSq4UPGzeqrhYq4=;
	b=S0CgFw/GbB+PyXRKiV/bPeLqCTzG7PM4D8u3KUgQSO6yvSSbgE2Nx9fU3/Xt3XvaYaxH6j
	GV0J0pQ+6l1Nu6/3QN9H8F9xVZ1CavM5qLXT8pCmw69wELglwAN+m/VTP51nfu7aCALWnO
	Ywuylg6VfV44VJ5adwVfe8jlHmRgmUM=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-614-XafZmIVVNB2BLvpY6a05VQ-1; Mon, 29 May 2023 14:58:33 -0400
X-MC-Unique: XafZmIVVNB2BLvpY6a05VQ-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-626253ba086so5929586d6.2
        for <linux-phy@lists.infradead.org>; Mon, 29 May 2023 11:58:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685386713; x=1687978713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wBYm+hGGLRIhF5wIdv9fJibDGsy7JSq4UPGzeqrhYq4=;
        b=F9ZHeEY6gTCCqsPc4lYZRJZZG/CmTgHtsgOU/LcFGgFsL1g8+kGpxjPgYUbUdu60ZP
         ft117yM3UGnzmHiuO56KevEGX97xxuZIoVy5mJHVrJnhldzajVI8I2Td0bZxFPL4gCcq
         op0u0lZWikSi/aKOaVorllyeLoQTLohWcTMu1ice22uhVFogRKPewlrAySv45UtFjpcJ
         iywq0zi83JFC2j85BEoNDNd56vp/VGdq8hdlFDpMCgVWn88LdUW+YYrqqm118SVyyCnQ
         +J9As2mHSmnZKzSJpoTRdfUTK+rEb4kE/NWNNW0dssG8J+B5YCjqalOHLOEy7umX00Tz
         7gBA==
X-Gm-Message-State: AC+VfDyQjXGkA9Z94vpwZiiEw1w+61BytcAh2Bu9vJY/pjtokWSlkgfA
	g7bDuz69ov1e8qs36OHqtGQ7z2ZjGbfRquZOnBdNIApZHfn0Z+Y64M3CrnqVdpDu6VG8TNXQ94L
	UhjuY43wUDrjczHsB7Sw/tWYfNg==
X-Received: by 2002:ad4:5be4:0:b0:623:66ee:79b2 with SMTP id k4-20020ad45be4000000b0062366ee79b2mr12079382qvc.36.1685386713434;
        Mon, 29 May 2023 11:58:33 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7zMMRC+sAg8/Xx+RaG88s1qHywf9AqVsg2V+HJ5BgLpCWqfUhPru2gfhOxS1xeVpIxW7ezDw==
X-Received: by 2002:ad4:5be4:0:b0:623:66ee:79b2 with SMTP id k4-20020ad45be4000000b0062366ee79b2mr12079366qvc.36.1685386713210;
        Mon, 29 May 2023 11:58:33 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id ez3-20020ad45903000000b0061a0f7fb340sm3957382qvb.6.2023.05.29.11.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 11:58:32 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH RFC 1/2] phy: qcom-snps-femto-v2: properly enable ref clock
Date: Mon, 29 May 2023 14:56:36 -0400
Message-Id: <20230529185638.32376-2-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230529185638.32376-1-athierry@redhat.com>
References: <20230529185638.32376-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_115838_947917_EA45DF5B 
X-CRM114-Status: GOOD (  12.84  )
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

The driver is not enabling the ref clock, which thus gets disabled by
the clk_disable_unused initcall. This leads to the dwc3 controller
failing to initialize if probed after clk_disable_unused is called, for
instance when the driver is built as a module.

To fix this, add calls to clk_prepare_enable/clk_disable_unprepare at
the proper places.

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 20 +++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 6c237f3cc66d..8abf482e81a8 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -166,6 +166,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
 	}
 
 	clk_disable_unprepare(hsphy->cfg_ahb_clk);
+	clk_disable_unprepare(hsphy->ref_clk);
 	return 0;
 }
 
@@ -181,6 +182,12 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
 		return ret;
 	}
 
+	ret = clk_prepare_enable(hsphy->ref_clk);
+	if (ret) {
+		dev_err(&hsphy->phy->dev, "failed to enable ref clock\n");
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -380,10 +387,16 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 		goto poweroff_phy;
 	}
 
+	ret = clk_prepare_enable(hsphy->ref_clk);
+	if (ret) {
+		dev_err(&phy->dev, "failed to enable ref clock, %d\n", ret);
+		goto disable_ahb_clk;
+	}
+
 	ret = reset_control_assert(hsphy->phy_reset);
 	if (ret) {
 		dev_err(&phy->dev, "failed to assert phy_reset, %d\n", ret);
-		goto disable_ahb_clk;
+		goto disable_ref_clk;
 	}
 
 	usleep_range(100, 150);
@@ -391,7 +404,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 	ret = reset_control_deassert(hsphy->phy_reset);
 	if (ret) {
 		dev_err(&phy->dev, "failed to de-assert phy_reset, %d\n", ret);
-		goto disable_ahb_clk;
+		goto disable_ref_clk;
 	}
 
 	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
@@ -448,6 +461,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 
 	return 0;
 
+disable_ref_clk:
+	clk_disable_unprepare(hsphy->ref_clk);
 disable_ahb_clk:
 	clk_disable_unprepare(hsphy->cfg_ahb_clk);
 poweroff_phy:
@@ -462,6 +477,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
 
 	reset_control_assert(hsphy->phy_reset);
 	clk_disable_unprepare(hsphy->cfg_ahb_clk);
+	clk_disable_unprepare(hsphy->ref_clk);
 	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 	hsphy->phy_initialized = false;
 
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
