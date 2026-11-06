Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB96606A31B
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 01:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CRbZLZC+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=okKp8fFz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=RDA2LEHjtGAX4/YYs5qw0d00yUWNjMXG8nqev/oOkqg=; b=CRbZLZC+ci7/WBnufr2ETaNuvc
	VMBSFb5UZPYEtBOGWF9V1HLnFYSZHTQUPo3CijYFEzaXgmQJZoU162aQjdajv5UF3bhZKfOd+6EmC
	6TF99UgepgVTz47ouk6q/mK5a/N1yN52DygKCGGTc8koLx5T8+g4WCVbqk1wprdYJbeJO0xTIn00A
	tn5bHOPEf30rOecC7zhAFJDOOzbNnWRK1s7s13Wyzx2hZ9cH6UbXFh9j5lZeNrEBd6iARSdbIqlBX
	W6y/1PbGJ5PlaGXx3e6Sdc8KI7RzrtDPXGBEFmu+7gbyy74HxITABn3+/0EZvc96j0HmPpvfXb+l+
	z+AyWWtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP8Ug-0000000Axra-12ir;
	Fri, 06 Nov 2026 01:11:50 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP8Ud-0000000AxrF-1wHz
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 01:11:48 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-cdb684859cbso72625a12.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 17:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793927506; x=1794532306; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=GZL5lqTjC1Jgati4iALvSiAWsRwqBkhnaBmu9SndnLg=;
        b=okKp8fFzYmqq9CUmiZsRgzZ3x9cPunjzMugqTZBcmshMDnsHcQDHS1z2hoKluh2kZz
         zGK3DCMI7eTQxRW1Ve0gCTNTqNzCHZCf9JVjkLFLrO+05rDpnrY4Bq0XMhRgtggKAX+t
         Kzi4DH1Pyio8A+va0p3SFAiXXI+b7mEodCao6CvmkMmDyTMAhQ4jMn4JqSnSwrVDHIik
         JQzOHrRAZiaAd2krW/VJgy+gmog/9QMYvAzUhfe1SKB0tLDMqG7MwgsG0hcBYf0tOM7E
         5r7wgc3izowj5faC9ii1MtDk6WbgcGQ6Plz7VyBrWQbw4TUcw9RQXc2mGPM7udFSmi7Z
         Ij+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793927506; x=1794532306;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GZL5lqTjC1Jgati4iALvSiAWsRwqBkhnaBmu9SndnLg=;
        b=i0DiHHzWxJscFMG2Ixo9z2L0gLL7DJ+t+DYjup2+ym7j5EWfM/f9rRVWAC1nqOUHv7
         4914gmMegrp0sBfL4qlgdtN2ocm6MtQauQRZuXss1yqQs5A2OBnyWLcNdTirNU3URIhe
         nEd3FDhGgUUpsNvaKVOfFlnzDeyMoefxFFMSu+Gx3/gMQTXjb28TKEtPUBHprPD9Zltn
         9ZcqY5LyCRXKZxwTpFNIL66JSxOWginrT6oREtW9JJnxAw9mHJzFrk9xBTR7o0dvM/QJ
         WOMSoRqnY7tDIggRJ3C6eT23L6FlLVwsQ7J9Zyz/U0szAoJlJQG0Wb6CYXPHbHvszlTW
         91Ng==
X-Gm-Message-State: APuU4Z+SXkMsnAg+odlB10W96D2NmEWiI0Ni89WA3VHE9GgJ3GDsp+kh
	FCF0tBbDaD5SuwF4m5jgLDnhjnYsNaIMwGXkWev/mOePkxN9GzMf2n4lbvnr4w==
X-Gm-Gg: AYBFou0OTeErgzotlPk80GxodceHoVIMz1OiurDTWZf81jlHtvcg1+fMVQHWbSCnVOU
	IEDFC/2ho3GYwjUW2PF5BD6mJq0h3h1ju0cEbzkW4JM5+dn0heiEOwIhWTUBkgffob1YZHQGbsd
	PZa3CLxUfOX8Jq09g4YP+I9g6MJbPeuIMsxi5mT5v4jpI1/ECPZu+S+wLMvZaHHAeZVH2GtutlA
	2hWJtWzcyRGt4JljrwwtMKm5kolHuxBZjS4N8xn9SGIvOLa2Boe61y0+aZH9zHabC2CWELq1iBJ
	A4AzTIR1AgdFKdo209ppG9B94s05CN8KIshQCGDrBxFtbpZ5AgNYqchEKyKwOp7TKxqIas/daeB
	8aEHaYAqdbsEV4xAPEmj4roDw49EBVFaHMLtvE2HIRjH4iiWtH/rqSxiOI9do1kDcFxGWCSw0rX
	M1+5m+5kNaPdN0vHECePHE0Nn2XmBBMnUOcdw03De8UUdH1eKktnoJjs3nn9HlBZKR9rrSd0HE8
	6O0Vi+iU3Us7xwcRY/SEtkozNkSGhrN3jDhogP8l9m9MoVg3ftD/qRkZQJsK4ofYAtoMHdLZ4Ul
	NGeD3lGkOZ7kXyh28pwMcnE4PkVzgisuCrFLO1PmXjk8DXHyZWmLaGnk74cw21dqNeMvLqdRi6Y
	p4+qdznFLaJFuhjbMuWVnuXrml3yyHViuVbKhXgjjG9Bserv3eDEXovuaKgnYnRBh2etuqx+brU
	mYQw==
X-Received: by 2002:a05:6372:a746:b0:3e1:d13f:5fa9 with SMTP id adf61e73a8af0-3ebb2adb8d8mr1125325637.73.1793927505756;
        Thu, 05 Nov 2026 17:11:45 -0800 (PST)
Received: from ryzen.lan ([2601:644:8000:37f::e34])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdb70a78837sm58427a12.23.2026.11.05.17.11.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 17:11:45 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Alban Bedel <albeu@free.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM MAILING LIST),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] phy: ath79-usb: fix the suspend override reset name
Date: Thu,  5 Nov 2026 17:11:42 -0800
Message-ID: <20261106011142.516478-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_171147_506521_1F81AF25 
X-CRM114-Status: GOOD (  12.88  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The driver gets the suspend override reset as "usb-suspend-override",
but the binding and both device trees that use it call it
"suspend-override". The reset is optional, so the lookup silently comes
back empty and the suspend override has never been used.

This is the same binding update that commit 827cb0323928 ("phy:
ath79-usb: Fix the main reset name to match the DT binding") followed
for the main reset. Follow it for the suspend override as well.

Fixes: cd3bf368aa7a ("phy: Add a driver for the ATH79 USB phy")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/qualcomm/phy-ath79-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-ath79-usb.c b/drivers/phy/qualcomm/phy-ath79-usb.c
index 09a77e556ece..8e9565846b2f 100644
--- a/drivers/phy/qualcomm/phy-ath79-usb.c
+++ b/drivers/phy/qualcomm/phy-ath79-usb.c
@@ -74,7 +74,7 @@ static int ath79_usb_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(priv->reset);
 
 	priv->no_suspend_override = devm_reset_control_get_optional(
-		&pdev->dev, "usb-suspend-override");
+		&pdev->dev, "suspend-override");
 	if (IS_ERR(priv->no_suspend_override))
 		return PTR_ERR(priv->no_suspend_override);
 
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
