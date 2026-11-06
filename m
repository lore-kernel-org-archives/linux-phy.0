Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7A8606A33F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 15:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=E9UhEXt7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=V1hwmRD2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BtNgxPIS3toGpUFxZOg6YA9y/0KZq9/PIgvQbMRY8z0=; b=E9UhEXt79+bMKPX20yItjTOyM0
	VphslNlV/Umt6wuV1bs5vXm7ULrsw9FmOJV1FdO+BKFuzmpfo3GAeUlOQJMhPUdduL1wkGIYnrg49
	IQsUZqvflpv3qf6kpZMA150U081kjuorrpH3/IdOKrkKLH8UU1y/63iqyVBXrjt9z9EldcAA6xO5W
	y7TIoQDwLw/P9st7SQEu2om6PzUcMc3nCVZG2WvIAEGaK5pwX+Wfijo00rTY9UzDmGDsCubFxOdak
	iQXLyoYEtiMd22I73AD9iwd/SULPjItfg2cNCKJwOEuGLlPrN5J0CcR8xPsTG4RIxCvKe4uOnwBY6
	0EtlM/QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRT-0000000Clm1-2d7f;
	Fri, 06 Nov 2026 15:01:23 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRO-0000000Clie-0Cf2
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 15:01:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6D44C200B4C;
	Fri, 06 Nov 2026 16:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ztv+TKVPP1AgDahvYqKVGMZreynpb/PIkYakl383jiM=;
	b=V1hwmRD2bpMXgXGcYJChwK62b64YPq7WekgSgeH9kZCrBKjQAVBTKNIPzMqOk0LBiUKES6
	hEz1g5/9w43x/kS9mVYBGGSZQAZ7trU1DXLwPM1UejkXqkRKJ8+/lhv/Vkq/VUKijzfOJB
	HXSQwiSmSk3ExZEQzW8RXTcQ3WVdyt0PCneE6nmrSQpInF/7PejKfnBrtNpfVBLeKy8pTM
	w6hhSZsKQtwM2S5aDoRK6pdPCeUrghslq5U5ou2nH1hhEaDxJKyahxWLmDf0PWaeuj52bW
	GDrSwSTA4A8QNgHFjanourHQs5Ka3xjd/ILA+F+iEg4JhkCnXnn288dV3gQ5rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ztv+TKVPP1AgDahvYqKVGMZreynpb/PIkYakl383jiM=;
	b=MtIucEbQPejsMZXF/v015EWeXX/L0ToZQxb9Z+gY8PWoggx7zJPhAk9C8ooAyBLVc9u43K
	AgtrWtULFFTO2SZaYFPxmSqXG4FgpmthCqisfscDoX5QENCE0EMs1dBg2Ex4mg6UgMxobr
	sKUjFeu7/hheSJNvJES1A5tqld+YZEDwk+VGVWLmQ/IyxRr1scjwZVeSg6+HK76n4cqHED
	zQr0f/Tx6EIwZ50iGyE5LctUo1tbhn4zuCTihP0ixfS4oARopRZDv2aWJ0RJASvByih5iE
	k8k+RGUjoR62rzk5lqi8BZTVFibbinD523uXCY48vsw9ZzbP8zQWvdm460Y5BA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793977274; a=rsa-sha256;
	cv=none;
	b=Pb+Zv7jAHhcVSXeRBG8kXvmj2rs2iuYQHOLdSKdPAuMSk91GIHpAJRZqQRKjQUxoKyDsTg
	WTaO7LNfyHHi7B9lMmouWe42VuX8Cs75ryhqO4nDOpY3/QjdovXaZtLR11yKlp2RVfXYPT
	6epX5PgkSe5Ta3NPg8nOaC0Wx0TTfPtcy6mE9pzffOkRoU8zR/DNf7kIjy1Yf1452ZkIyU
	KpBVpJxB6/iCCL0MYNHe04HTuvdK2FQyMuOD666QjTka9M4GZO2cXLR0Eeata4K9w8zshZ
	fM6C4r2k+pA9tspSsH+qVAVUOTMiIQq/s859VuTH0CJoFdrFrHPGAtFfaPLBMA==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1xPLRK-002v0X-15;
	Fri, 06 Nov 2026 16:01:14 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Fri, 06 Nov 2026 16:01:10 +0100
Subject: [PATCH 2/4] phy: cadence-torrent: Do not request reset by index
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-reset-deindex-phy-v1-2-6a9c9f428be8@pengutronix.de>
References: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
In-Reply-To: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_070118_259550_4ABD181E 
X-CRM114-Status: GOOD (  12.84  )
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

According to the device tree binding document, the PHY reset should be
specified as first reset, with the name "torrent_reset". All in-tree
device trees specify this correctly, but there may be a backwards
compatibility reason for leaving the name unspecified in the driver.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index d446a0f97688..4a021a0838db 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -2790,7 +2790,7 @@ static int cdns_torrent_of_get_reset(struct cdns_torrent_phy *cdns_phy)
 {
 	struct device *dev = cdns_phy->dev;
 
-	cdns_phy->phy_rst = devm_reset_control_get_exclusive_by_index(dev, 0);
+	cdns_phy->phy_rst = devm_reset_control_get_exclusive(dev, NULL);
 	if (IS_ERR(cdns_phy->phy_rst)) {
 		dev_err(dev, "%s: failed to get reset\n",
 			dev->of_node->full_name);

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
