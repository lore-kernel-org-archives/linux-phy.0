Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7762606A32E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 15:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=isJunpq7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=Mo2g717s
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5j/S1TbiVSNvKb8yVcKqZX3XYz0UbFGeqB9h6+nSRhk=; b=isJunpq7TnPFED6E+sSmxqBC2Q
	4hD97xVQujAPSQOHfqpUylDoe1Rluc+ue3Q0FcallNip5JGdzHCRg3lMOzljGdsAkrRwuqbM6FmnS
	0aqxSb33e5XxR2ZSFV5lT9QYeQGNJNWs0k6Ji4zqXcwC+afPRfQ3mGHREvQDMqWM6Zfa+IR3gKolj
	yQdQP/V7eFQ8Lrinvhp2GL6+dN6rujQ8es33bc0DAQbW7yctlH/qn8piSljuDJTUco5HcgpNbXCuX
	U6rOfTXm4wpqizTakmWpchDmKMEgFRdvmKwBaaVKdbopIGqeI0jdlNXNIWNKR9jKv0EZ7sd0aGbQv
	50uSIUKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRR-0000000Clkx-2GMc;
	Fri, 06 Nov 2026 15:01:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRN-0000000Clid-4BKC
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 15:01:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 61B5C2008B8;
	Fri, 06 Nov 2026 16:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mhQwmnf8HrttnxR0+Ej97RjKeJ9pmuRj6GhkgP1FRXA=;
	b=Mo2g717sk+G9vX7lpycruMNoEpOwCsz4et8WKS1bbC4KbCyHUny/vwZ0feaGbd35Al5/N/
	AVFEd15qqCcmvN3BPncxkf3TgKkOe7KAZmN9JRN4qgVpLUmc1KbUAQezgij+p2hbfxgcPj
	B9ACLrmwSNdH7t+x+Q/zkT39uMH2zMATfI+1HwQGkFt6Yq2h3rzjC6bUt8QP2M7ToVg4yJ
	dciDWi4eDTYiu4hVWWE79JgM4KE10pylENUCYCT95At+o1RNMx8Vfz/Fo0l4dsGOgAM/Xy
	1CXN850cVE7f+TTnRI6ymcxWgwXpw2qimaNWsbSYTnvBtduMSikwL77MpwLexA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mhQwmnf8HrttnxR0+Ej97RjKeJ9pmuRj6GhkgP1FRXA=;
	b=A/Lj4EMgQiO9dcsgw6yszkt4cGqxI/rJ7GLX4XsHp1UiA/2ZCqzy/W+0G+X//fWf2WIAfH
	Z3KMMJL09JDiOfsAJBiZuw9Izh5MfF1VKWQzXlRfJexB3frykVewDa6vrIJ3UB6dhrpR/R
	vwyJmiFWgrwZBA6Z/rQ1MnX/RuHoLgcsmZgDI/sMp0kl2AB99qGSWfRNKr7+9NMGNdXeMZ
	z1m1XUYvvOhq0WVJqvh1lkYP6uQ0VYAd86jllfDd8pC88oJZYlGen3dc8IGB8fQhyZQX8M
	FrJtlug1LcUR9Gw0RDBdiJGXcxEomHgfzi57i7+J++fMgVJb98UGWT4B0CKPHA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793977274; a=rsa-sha256;
	cv=none;
	b=V7Bd+g4PDy9GoaWzRPj8noPnZHGXNuA7B7mwtpHMeRDsE2qqDMruvyuI0IXwr3/Uea3DG4
	BIhqhOQB5W9s7BcnJuG9w3d6mg9XKCd/pBR1zly+kQdW9uHzDFvL+DLWspKB7LaoLme7um
	M7NwvTOBFsKIr/eW+tKPbVC90E5nBBhDHrzqLvREoKkut25Qk4AJpiOI7ZJXfmG/r875DC
	fLYouh4Ko1iewZgGqD2F4EYmAx0jOyDRA5yWL+TOpgQxRlurjV1bbhc5M6D/2a0nziU5v4
	7hFO3RnXg5A+NR2D/mr1FfELec32KlfMpteC31CvOd3b9FwJbcyjnw2X4Gw/8Q==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1xPLRK-002v0X-0w;
	Fri, 06 Nov 2026 16:01:14 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Fri, 06 Nov 2026 16:01:09 +0100
Subject: [PATCH 1/4] phy: qcom-qusb2: Do not request reset by index
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-reset-deindex-phy-v1-1-6a9c9f428be8@pengutronix.de>
References: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
In-Reply-To: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_070118_193124_6F5B4C00 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

There is no need to request a single reset by index.
Use devm_reset_control_get_exclusive() to request the first and only
reset.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 2e5fdb620cb2..6476ed0cb815 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -1032,7 +1032,7 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(qphy->iface_clk))
 		return PTR_ERR(qphy->iface_clk);
 
-	qphy->phy_reset = devm_reset_control_get_by_index(&pdev->dev, 0);
+	qphy->phy_reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
 	if (IS_ERR(qphy->phy_reset)) {
 		dev_err(dev, "failed to get phy core reset\n");
 		return PTR_ERR(qphy->phy_reset);

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
