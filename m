Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C603C87FCA
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 13:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gkoXCPEptHhxa5y627DbuUq12UKkZv3MtWvJG5za6ZY=; b=4n0bus+TfTUoGP
	niB7uaqTDp9Qi1UxTSJA6NmInzKSCdutf1DG/YF67PjQyRo8JvbTT7mfA8SHm9z6nBXgQL/tCnOGJ
	NgRAWJTzZiZ/MjUs28ifPiE7GJdN4MtLf/tDK1wZyh84JvIrEoVp2B/borsFK54k6tmolIww/g7zM
	9HiLPBVmbGS0vdUlAiaGvyxFJoGqz4iuRwObUJx+95MUE+y+WUgmDxRi2A1TkfkVxPaMn98JgsAjc
	FOzO2dOzyygmR73KD66dY9k33vRd8JJ2BSMS3X+LElrjMaaF5MtMqUfBQvXt+ZeKadKmOMdjNQAdE
	rCzTqhYQ2QvGQ3cWb0jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewNC-00000007ZLn-2MD4;
	Thu, 24 Jul 2025 13:52:38 +0000
Received: from smtpd7.iitb.ac.in ([103.21.126.62] helo=smtp1.iitb.ac.in)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uetIZ-00000007DgB-1vdx
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 10:35:42 +0000
Received: from ldns2.iitb.ac.in (ldns2.iitb.ac.in [10.200.12.2])
	by smtp1.iitb.ac.in (Postfix) with SMTP id CB39E104D00B
	for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 16:05:18 +0530 (IST)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.iitb.ac.in CB39E104D00B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=iitb.ac.in; s=mail;
	t=1753353318; bh=Q40UlhZPTMwNmL/dzpuVETQdSPe/FoRe8QSVbbzoph8=;
	h=Date:From:To:Cc:Subject:From;
	b=dQ2YJQUlAcKlJGvCQ3Q9rAdISwymoTbO9oqqltsUM/PEBo7nkSimTgwdSjo1cppd/
	 IhMdc9U1kzhfy64tgZtgppe23T1lN2r0Rlr8AyzhNmQma+bqwvntdvAhfpLm8Ieqje
	 ivX8LWUoGLgNuEu0lQZXvl9TUOPTMutEKtN0cSDs=
Received: (qmail 20549 invoked by uid 510); 24 Jul 2025 16:05:18 +0530
X-Qmail-Scanner-Diagnostics: from 10.200.1.25 by ldns2 (envelope-from <akhilesh@ee.iitb.ac.in>, uid 501) with qmail-scanner-2.11
 spamassassin: 3.4.1. mhr: 1.0. {clamdscan: 0.100.0/26337} 
 Clear:RC:1(10.200.1.25):SA:0(0.0/7.0):. Processed in 3.945138 secs; 24 Jul 2025 16:05:18 +0530
X-Envelope-From: akhilesh@ee.iitb.ac.in
X-Qmail-Scanner-Mime-Attachments: |
X-Qmail-Scanner-Zip-Files: |
Received: from unknown (HELO ldns2.iitb.ac.in) (10.200.1.25)
  by ldns2.iitb.ac.in with SMTP; 24 Jul 2025 16:05:14 +0530
Received: from bhairav.ee.iitb.ac.in (bhairav.ee.iitb.ac.in [10.107.1.1])
	by ldns2.iitb.ac.in (Postfix) with ESMTP id 64B5C3414EF;
	Thu, 24 Jul 2025 16:05:14 +0530 (IST)
Received: from bhairav-test.ee.iitb.ac.in (bhairav.ee.iitb.ac.in [10.107.1.1])
	(Authenticated sender: akhilesh)
	by bhairav.ee.iitb.ac.in (Postfix) with ESMTPSA id 3D18D1E813C3;
	Thu, 24 Jul 2025 16:05:14 +0530 (IST)
Date: Thu, 24 Jul 2025 16:05:07 +0530
From: Akhilesh Patil <akhilesh@ee.iitb.ac.in>
To: vkoul@kernel.org, kishon@kernel.org, akhilesh@ee.iitb.ac.in,
	a.hajda@samsung.com, aric.pzqi@ingenic.com
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	akhileshpatilvnit@gmail.com, skhan@linuxfoundation.org
Subject: [PATCH] phy: ingenic: use core driver model helper to handle probe
 errors
Message-ID: <aIIMW971BYsIk4As@bhairav-test.ee.iitb.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_033540_260742_F9B2EBDA 
X-CRM114-Status: UNSURE (   9.36  )
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

Use core driver model helper dev_err_probe() defined at
drivers/base/core.c in driver probe path to propagate errors.
standardize and improve the code of deferred probe error handling
using this helper for ingenic usb phy driver.
Inspired by,
commit a787e5400a1ce ("driver core: add device probe log helper")

Signed-off-by: Akhilesh Patil <akhilesh@ee.iitb.ac.in>
Cc: Andrzej Hajda <a.hajda@samsung.com>
---
 drivers/phy/ingenic/phy-ingenic-usb.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/ingenic/phy-ingenic-usb.c b/drivers/phy/ingenic/phy-ingenic-usb.c
index eb2721f72a4c..7e62d46850fd 100644
--- a/drivers/phy/ingenic/phy-ingenic-usb.c
+++ b/drivers/phy/ingenic/phy-ingenic-usb.c
@@ -339,17 +339,13 @@ static int ingenic_usb_phy_probe(struct platform_device *pdev)
 	priv->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(priv->clk)) {
 		err = PTR_ERR(priv->clk);
-		if (err != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get clock\n");
-		return err;
+		return dev_err_probe(dev, err, "Failed to get clock\n");
 	}
 
 	priv->vcc_supply = devm_regulator_get(dev, "vcc");
 	if (IS_ERR(priv->vcc_supply)) {
 		err = PTR_ERR(priv->vcc_supply);
-		if (err != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get regulator\n");
-		return err;
+		return dev_err_probe(dev, err, "Failed to get regulator\n");
 	}
 
 	priv->phy = devm_phy_create(dev, NULL, &ingenic_usb_phy_ops);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
