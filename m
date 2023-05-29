Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25D64C77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 18:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVc9eNdVxZQxcX5J444D4wTQIMKoq3W0zhh9THxJUxU=; b=JMLI9rI0+TOoYd
	076vdFuS2bhBNSWRydcgHrGBpXdlPq71p/zxmEl9caOr0ocXWJX7UW2AOnw1UkTdmlMUunQ0ZRcZF
	VBeeFBTARuMr9DOK8cmB+7l4jQzGo2Zy23x+kG+jYErUvBp0itOAFSVXyZNZiX1CnX4f9ZbdQoQyL
	A+8uWLM3+obGFteDpFfkuyqAQ5iwo4p4vyvEYdVqEGXWh4B/AyUx8S3+h7e45yrasNEPb93U9pKSu
	978z752PUWzZ2JB9ODsyQ2gU5WI6VbxtsjzhlErOZgdRCVIvDeG2PKYz2wycxt1tgkO4ygLvIU/ux
	dZkb0yztgewHN4zOdcbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i4o-00BSd7-2T;
	Mon, 29 May 2023 18:58:42 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i4l-00BSby-24
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 18:58:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685386718;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BQbwFXAVPJpUwaJsW0fx1tAIQkk2NK/3kU2J8xKWCmU=;
	b=G4AJPWuqZueNnkU/EP/FIB120XQ+72mT8JRlCNGTQQJf4rQRiN67C/kxQSUWxIt2/knevP
	5OtgPs476P+Lb6X7Olf1NAwnOpQgUgPUAmAAKWKNtIIwZxCczTbas4ht5mzNYicOza/uUl
	kxU0plUw6/nU8SlM7pxNZvzeCiWPvK0=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-608-tH55MTUKP1-NLzM4bBFIAw-1; Mon, 29 May 2023 14:58:37 -0400
X-MC-Unique: tH55MTUKP1-NLzM4bBFIAw-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-616731c798dso31888386d6.1
        for <linux-phy@lists.infradead.org>; Mon, 29 May 2023 11:58:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685386717; x=1687978717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BQbwFXAVPJpUwaJsW0fx1tAIQkk2NK/3kU2J8xKWCmU=;
        b=RuFS6RQdLVKwtek4Uz0hvtSCS99cpAuDBC9dhxe9smjisDA16v5McsqlWPJlUuLrgk
         Qx9yPqZu2x8HT50AK0qWI1UstjsPJYROTFcHqNKmErarIScowxYofKGoC8RpF8TWWT9S
         dCb2rTBy8G9DLh7UnMI3uT8DpEzpdHqWZKTkcVEtBsi+19UZhnLwcIZKEVjRa+mgn3mE
         RI1sm1pSazeQH9iaerS9fEBz1uM+yzCowkEhPfhwWtrkW4XwGO5DfcoNPaRRH0djMLMW
         nmUW5R4TG7pV79AJkgtd/mDGU2CCh7EPvVzREz4bRcDLCh+1dyuKawo1T5lPwS+eTmse
         wi+A==
X-Gm-Message-State: AC+VfDzMiN7yKlgcSiUnRVT0wcZ4WexJ+OJF6H12RuRorzzKRmfpvCne
	0+8Vr5Szu6p+rnpGTULvV/T0W+SG35CkMh3KYbFFRiiwr98U177TqrCBbKRylbmjv8cowjdpjTK
	ZB27JEwYN0k+ctBetVttUUf3QbQ==
X-Received: by 2002:a37:4656:0:b0:75b:23a1:d84e with SMTP id t83-20020a374656000000b0075b23a1d84emr6839526qka.16.1685386716995;
        Mon, 29 May 2023 11:58:36 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6LvGZqNHOJIqeUUOf/C0cdN/hvdBuc96d2Im2jnpshQGMr/XcJAZ4chW0KTNXbYFMAzvFvBw==
X-Received: by 2002:a37:4656:0:b0:75b:23a1:d84e with SMTP id t83-20020a374656000000b0075b23a1d84emr6839512qka.16.1685386716757;
        Mon, 29 May 2023 11:58:36 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id ez3-20020ad45903000000b0061a0f7fb340sm3957382qvb.6.2023.05.29.11.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 11:58:36 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH RFC 2/2] phy: qcom-snps-femto-v2: Remove AHB2PHY interface clock
Date: Mon, 29 May 2023 14:56:37 -0400
Message-Id: <20230529185638.32376-3-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230529185638.32376-1-athierry@redhat.com>
References: <20230529185638.32376-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_115839_749318_B494EAB7 
X-CRM114-Status: GOOD (  13.54  )
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

The AHB2PHY interface clock cfg_ahb_clk is not assigned anywhere in the
driver. Moreover, it's not used by any device tree, nor is present in
the qcom,usb-snps-femto-v2 bindings. Remove it.

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
I'm not 100% sure if the clock should be removed, or if it should be added
to bindings and device trees that use this PHY. Better informed opinions
on the topic are highly welcome.

 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 20 +------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 8abf482e81a8..2d9c1105e28c 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -113,7 +113,6 @@ struct phy_override_seq {
  * @phy: generic phy
  * @base: iomapped memory space for snps hs phy
  *
- * @cfg_ahb_clk: AHB2PHY interface clock
  * @ref_clk: phy reference clock
  * @phy_reset: phy reset control
  * @vregs: regulator supplies bulk data
@@ -125,7 +124,6 @@ struct qcom_snps_hsphy {
 	struct phy *phy;
 	void __iomem *base;
 
-	struct clk *cfg_ahb_clk;
 	struct clk *ref_clk;
 	struct reset_control *phy_reset;
 	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
@@ -165,7 +163,6 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
 					   0, USB2_AUTO_RESUME);
 	}
 
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
 	clk_disable_unprepare(hsphy->ref_clk);
 	return 0;
 }
@@ -176,12 +173,6 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
 
 	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
 
-	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
-	if (ret) {
-		dev_err(&hsphy->phy->dev, "failed to enable cfg ahb clock\n");
-		return ret;
-	}
-
 	ret = clk_prepare_enable(hsphy->ref_clk);
 	if (ret) {
 		dev_err(&hsphy->phy->dev, "failed to enable ref clock\n");
@@ -381,16 +372,10 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
-	if (ret) {
-		dev_err(&phy->dev, "failed to enable cfg ahb clock, %d\n", ret);
-		goto poweroff_phy;
-	}
-
 	ret = clk_prepare_enable(hsphy->ref_clk);
 	if (ret) {
 		dev_err(&phy->dev, "failed to enable ref clock, %d\n", ret);
-		goto disable_ahb_clk;
+		goto poweroff_phy;
 	}
 
 	ret = reset_control_assert(hsphy->phy_reset);
@@ -463,8 +448,6 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 
 disable_ref_clk:
 	clk_disable_unprepare(hsphy->ref_clk);
-disable_ahb_clk:
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
 poweroff_phy:
 	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 
@@ -476,7 +459,6 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
 
 	reset_control_assert(hsphy->phy_reset);
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
 	clk_disable_unprepare(hsphy->ref_clk);
 	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 	hsphy->phy_initialized = false;
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
