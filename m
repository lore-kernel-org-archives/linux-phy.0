Return-Path: <SRS0=e0/A=OJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F428C433F5
	for <linux-phy@archiver.kernel.org>; Sun, 19 Sep 2021 03:11:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 15A8A610E9
	for <linux-phy@archiver.kernel.org>; Sun, 19 Sep 2021 03:11:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 15A8A610E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2surSxRYf1JVq370jB4zALHQzlfP7gW24BuSIWDur9w=; b=nn/18oJwQktjOx
	GPZ6pRgb3zcyN0ZG9UEkeoX80rPAMiKrlTfgC6MC1H+QDd2muQJB5cmLMyMOeCXBC7st5acjwqn1g
	SK8QiHn2yoGp30enemjauEy2DMvBsRvLjWU7WeuaONDj0bmh40PKC7nND65iTx+V/VFpb2I1AvDh8
	L1jXWIObvHD4lfcnynYU11T/r0MnfYliszCkJpVlXapNibio1ndbWzDHsbq8AfBx2ZqzS8bgViFfh
	weBv1rvTY12qC2wNaXtHgGAcLxrx/dsoJdT41SUd/AQpmZKF8zhVx52cX5M8snvHIll+LjivNahIy
	5MtSmOcIKGL9YoTQSlBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRnEo-00GeiP-Fy; Sun, 19 Sep 2021 03:11:30 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRnEm-00Gehp-2R
 for linux-phy@lists.infradead.org; Sun, 19 Sep 2021 03:11:29 +0000
Received: by mail-pl1-x62a.google.com with SMTP id n18so8809334plp.7
 for <linux-phy@lists.infradead.org>; Sat, 18 Sep 2021 20:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oPqupYvWeeM6Lwb6PK6UvVXuUOXRPg/zPprNicPOHWg=;
 b=k+g8OKL/o1sOLr3m0r/7nP/kYz+ye3X4ipmAUJIdKOOLuurPPY78Lr0dn+Sai4L9bH
 PbpM+GfvQzOYWEgr0sZ8n0OOphksRDWQqXDjaHNJDuFTfWh5TgqfBwV5J5oU08oIsqvS
 KMT5GZoie47r/pkp6bB085e9bkbIfYoHyMOjGUfLSPHL73kENnwcGsyW9LcQneFDinKN
 VoYuanWmaFiBj3kruzvlC4TDtPZyP51G4lRlYCKorowpL7vuP1RPgosks5TX0QYnG0Mw
 kNQqh6wyNAPYRHGNoNj/osejns0r2HpMdVZE6IE3MHd2KnPNRwUekd3ReiZXGNBBzXTc
 U9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oPqupYvWeeM6Lwb6PK6UvVXuUOXRPg/zPprNicPOHWg=;
 b=1zpFW+TWsia783EVlJ11QYWtWr/xUTjkdT7Dx2M/pDcNFjunskzaNP+YrfiH37MtCy
 THNhzdX4Ce21El5Eau0oi4EiVs3d33tZ+kVM7HU2X27PNJjo20+bUcstVt0hywNi0CuM
 g0iUk3G9ty2Ci+7NFPrF7qHjLeip5YDyD1XE9S8fBJf6k9I9QQiCtkDWGPKY4lQBYFZn
 fbgLgUsik3HYuWcQAMELPt8RxSlET9sxynubA4YbSxL9sOsRFgzC+5WYo+wQOueiOSEn
 J0Gq3/z1XcONdQoMlo7f6d06HPIh4T3Pm5slVW7K5XaNEXtDoazco90iZ4PiOSFOJSda
 91Wg==
X-Gm-Message-State: AOAM532DKdL4ySMU+3ZZE81YF9nxX+rwUYVlcFMhlTNPraRgSt/mFNET
 7zsJJQtrtR2ge5ilfj5ropPxew==
X-Google-Smtp-Source: ABdhPJwJQkcDr6YFBErGRS8giww3miLjQuT0rU6PoonKewdgt+yaVE7VYJp/AbGkxrglgV0nx2IrVg==
X-Received: by 2002:a17:902:7fc6:b0:13c:a855:6b76 with SMTP id
 t6-20020a1709027fc600b0013ca8556b76mr12851817plb.61.1632021085507; 
 Sat, 18 Sep 2021 20:11:25 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id 132sm10224931pfy.190.2021.09.18.20.11.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Sep 2021 20:11:25 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Manu Gautam <mgautam@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 2/2] phy: qcom-qusb2: Add compatible for QCM2290
Date: Sun, 19 Sep 2021 11:11:10 +0800
Message-Id: <20210919031110.25064-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210919031110.25064-1-shawn.guo@linaro.org>
References: <20210919031110.25064-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210918_201128_151279_494B3B3D 
X-CRM114-Status: GOOD (  10.33  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add compatible for QCM2290 QUSB2 device which reuses SM6115
configuration.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 3c1d3b71c825..ae063a8b3e28 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -913,6 +913,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
 	}, {
 		.compatible	= "qcom,msm8998-qusb2-phy",
 		.data		= &msm8998_phy_cfg,
+	}, {
+		.compatible	= "qcom,qcm2290-qusb2-phy",
+		.data		= &sm6115_phy_cfg,
 	}, {
 		.compatible	= "qcom,sdm660-qusb2-phy",
 		.data		= &sdm660_phy_cfg,
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
