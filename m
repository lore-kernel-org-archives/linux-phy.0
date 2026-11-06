Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8F9606A331
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 15:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TTAsD74v;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=Fmoh+HBL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=s1UbujcG4w3BZNFwIJ+BFAbimrSM7SVs3/bcmJOERw8=; b=TTAsD74vADfIhCf9YTEO1qC8ed
	L+Y1rUXluOxRPc2gTGshe0oCJJOKXuWgFyM1Tfd9SOvj3NY9r7+uwc6yehWuw2W5q508Ngt+ARr5/
	9RS/yZFh2f/yrdXbNs1je7LVTzqD5bCkAvAvsHsdYpLXcW/8vIYjl1fJeKsscgQuyYu6dU9pi0tTK
	XE05N7jXSHZnc5PKa6wNYf2CCQcO7PIhh0vQB67WM67XxKD2D69D92JUB6aW7OieMePwFIZKhRlll
	zfwEUfgGaA6iCkgf7gVA1NqiE6HfflsJVDdzitzhztJCTf9cQ6JZMxKnPfGgSIV7KXQa29qXALktZ
	8YsMiHOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRR-0000000Clkr-1zFW;
	Fri, 06 Nov 2026 15:01:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLRN-0000000Clig-4Bna
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 15:01:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7EB4D201771;
	Fri, 06 Nov 2026 16:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZWuGgqxAtKH+EtPZvSAXFitmEXgOStbgXJxX9R5SGY4=;
	b=Fmoh+HBLLhwMur6fdXEBliRwQdfzfL0nw5rGfRc1mViCIY+QIXse8xzGGDmItYN8+YlflU
	E9ICPRI+xFM5nQ6XHDp0Ux8R37A51RfP29a4tt8XizNDN/ch2LXikVZ5qR0QVH3yzzUtsz
	oG10dM+9L3N5OYv9i5uIoHo+8H+JQkFo03j1mRaD81xsWn4Rpvnfid/WnK8/fa7ofrscKd
	Zl6LYWV3bVCMDMo8907jDMesGcxa3BTG3MmiLJKfk+wK3cc8+yGUKsfnr3/Yy+OiYjSS8F
	uXxBDxRLCcEY1e5XUZj8vGbEAIQGClxrtdnPR6qsBdM0nxUHZRx7f867NY3PkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793977274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZWuGgqxAtKH+EtPZvSAXFitmEXgOStbgXJxX9R5SGY4=;
	b=Y2R3+WoT8ml3DtFu5KeTptw4kgb6loxWi1S/4PNN9C5fc2qvEWY0sWQSlmt1eN7y1i8iFn
	YcAn7Scpwdpe3wURMztbjqfrmmd48I2F7X3yAlO0nw8PPbr0mGzdTwafta1+uVFv/5766b
	MOBFRuyFenuWkUAW7RXdsyYx24tIx9Gz/fRCcIMieqAwR6CdY0mKGTRDrAU4qhUMhkqV8X
	mG4shi05BE35UUxb8mE/Ea/ZiNvlaBxJlH03jhVnUjeTnk0OXypBig+sFTe29KonlzWWMZ
	cS3uNLVKTVyySjFvHwKd2Y3l7QwGUsTq9FSDjV/JGn41zDDLf2nMHXybIS25Xw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793977274; a=rsa-sha256;
	cv=none;
	b=en+3GzgC+p3FC6IQrHOBk/yXXiBopdNSw9Ddc3lONaXGl3ryGJF74LYIaDmGWwZkjSuv/t
	g0TjNE0giyV0EhYLlN/yb2qfUBjgmX5q4Wz2wLUyIQQ+mEn+Cd52CwdPX5qaf2yGwPUtPI
	UY9+gOjUZ4cnTv11B7AOUJoLW492EMGtlPV64ZvwFL8SsUN1LQq3eJGne61Kcpv5HVkrdE
	jBdzhbHPtLN1xbn1n55tk/6d+f8Wa78Q8Tol1a13HB372wTRND10bPVx+6+ZQvs9TqL6Rv
	ES7kgXr41cWcbMUG6cSWFNPXoDz5VeQFqSPPIiPIobCsyXiSifteG6CPumUX9A==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1xPLRK-002v0X-1O;
	Fri, 06 Nov 2026 16:01:14 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Fri, 06 Nov 2026 16:01:12 +0100
Subject: [PATCH 4/4] phy: qualcomm: qcom-m31: Do not request reset by index
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-reset-deindex-phy-v1-4-6a9c9f428be8@pengutronix.de>
References: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
In-Reply-To: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_070118_193398_0F18B50F 
X-CRM114-Status: GOOD (  10.61  )
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
 drivers/phy/qualcomm/phy-qcom-m31.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index 168ea980fda0..b38c3f40b85f 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -284,7 +284,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(qphy->base))
 		return PTR_ERR(qphy->base);
 
-	qphy->reset = devm_reset_control_get_exclusive_by_index(dev, 0);
+	qphy->reset = devm_reset_control_get_exclusive(dev, NULL);
 	if (IS_ERR(qphy->reset))
 		return PTR_ERR(qphy->reset);
 

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
