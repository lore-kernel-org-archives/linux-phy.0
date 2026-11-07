Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9757B606A335
	for <linux-phy@archiver.kernel.org>; Sat,  7 Nov 2026 00:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VTIWmqQV;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=aEwBouLs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=w/g0tKFUhPjOtEt2yWdTgHm8GQQwRmLsZtPfQOjO8xI=; b=VTIWmqQVZcn7ErZZaft6rjFXjB
	9Pc21ZpmXf1cq3D4FLiYd/xG3SN13Wr9gTXvI84qdVx6XIJ8Z3GabT0siVw0zcakKrxnJZUrTp7N4
	thksZ8vcvIjzQ2+XrbNCaxVb1mSypyaJnciBModC7RPFNeI9dlRiOmj4Katxdd7Nank9jh84kIbrV
	5opRNK+iMjlvah8LGZOV8bNsRf93pyZk6faCpwKl2YYbBXp0Llp63bRf8Q9U3oJ0ibYnQudTKm6Bo
	6h0bdUPrAF67n0OYNvmI3iT4yYD0YsOtOaoA9YlnLqctm8pxFCwPTVEl1XfOD7KuqDzUzKu3RyyBr
	M5UCs+Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPUHa-0000000Dv8R-0cwv;
	Sat, 07 Nov 2026 00:27:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPUFZ-0000000DuzR-2PJG
	for linux-phy@lists.infradead.org;
	Sat, 07 Nov 2026 00:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1794011140;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hj9ZwmouCpMroTFxCx7j3amaFop7D3wBW0J4aQmdNLY=;
	b=aEwBouLsPQtd/dh6Ro7I6wEmzEmEMJN39Nr0Jj9wmnkMM69M4s6dfdW1jrozzKWPzhB07S
	4V7cnQeIf21XvNnjXWf6Qy2zoeQU+gdPG913Db961rHt80UyNiyD7ybuZjaDpzJkk+TfQc
	07AxmRrwRgwOa9eCFnUMPWKne06UKJQ=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-650-uxe11aFHPDSuGkHYE9d6JQ-1; Fri, 06 Nov 2026 19:25:39 -0500
X-MC-Unique: uxe11aFHPDSuGkHYE9d6JQ-1
X-Mimecast-MFC-AGG-ID: uxe11aFHPDSuGkHYE9d6JQ_1794011139
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91eb7d1472cso10372476d6.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 16:25:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794011139; x=1794615939;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hj9ZwmouCpMroTFxCx7j3amaFop7D3wBW0J4aQmdNLY=;
        b=CsMgCOFGhNGco4gCryqcMW+qIFrNsPn5Zo9a9JAkMlvF0xkw85emOM5OsPj95Ht49F
         PyMpM+c5qywFYqGJBK7y0r9SD5vVCUE43yDSl3480kzfPZXjU3EKKUQIQ1a0fguLKrEm
         riHLgOxhILs5+Cs9dh4fgKMNVip9mrEAnZpFdVYPzP0Wv5q/z5PgVnHBVcqzO16Y89d5
         bSDXIcgzjet39FZnaNLgnBcKo11Klcf+k+syiH03dAiOhxqF0sMt9qktqbC1exg/qhS+
         nf4T0jNbEU9dFhOLT8/gEGjTivDQeDyaAEbnseTMzBC2MNd2LrtwH4R2FwPhVq1M3Azc
         NXsg==
X-Gm-Message-State: APuU4Z8yHq7PNDsfh7hJUvzwroYCUzNhWWdkt4UyCO87Vmb8FcJ0u6CA
	F0Jw3/+rTgbMLNaID6ink37IpAP55/tb1NcbMiBEKhmR29bo3Wdtd/nTtzdMCjc/yLhtp713UKH
	HloByzFl/KqprNkL4j2lJl7/XMlWVxbtLp1ETkUJVE5GGLLgFUTMP0VGj754DC1BY2Jc=
X-Gm-Gg: AYBFou3ja0dT0Owb73XbxXSmjh95gSqk+LIiHShgEDnKdAVFTq9OG2bkPxN5bnGDZEF
	5TY3Rs1gvipMrvvntHV6/TzGbrNpSiftOfO8VAJDCyu13Ba9r6O5w4cDSPLfAIZrshK2qfLel18
	A68s4hETVvCczUbtmzA6gKYt/0ETfGw0KgtZ6iCds6yrJ7mqEb+tBJPVxdjuNyRXeZALpqQR1+u
	X7/NIsKCALDlxTkFSKnqdZlNVk+0lCIFCd960R6phZt0nBKXPK8j0NbpcXOL4GDKu6wF1yQZW27
	AJWJawRwPj/Bhdy9eli/41l6eeDyVuDgLXtKB1/Kxens0JB05bCVl6wKE5Xi6GRpmc3FD5FJTB1
	rlVM1iKhqD03X3hGpWQsWmqZjpbE3CQDmAA6dpS0H9EkN2cMOxIdd9Dfc3kNefl6AiDQSeKVjc0
	0D9+PL1mBvoO9Fc9yl
X-Received: by 2002:a05:6214:43c1:b0:91e:a476:1117 with SMTP id 6a1803df08f44-91ea9282be3mr63164206d6.8.1794011139032;
        Fri, 06 Nov 2026 16:25:39 -0800 (PST)
X-Received: by 2002:a05:6214:43c1:b0:91e:a476:1117 with SMTP id 6a1803df08f44-91ea9282be3mr63163896d6.8.1794011138393;
        Fri, 06 Nov 2026 16:25:38 -0800 (PST)
Received: from bmasney-x1.rmtuswv.csb ([69.43.42.202])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ea6ab543csm32089856d6.39.2026.11.06.16.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 16:25:37 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 06 Nov 2026 19:25:21 -0500
Subject: [PATCH 2/2] phy: ti: phy-twl4030-usb: convert to
 subsys_platform_driver()
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-phy-subsys-v1-2-9a443422e563@redhat.com>
References: <20261106-phy-subsys-v1-0-9a443422e563@redhat.com>
In-Reply-To: <20261106-phy-subsys-v1-0-9a443422e563@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.17-dev-d96cb
X-Developer-Signature: v=1; a=openpgp-sha256; l=1009; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=R6c0upgxMnhNhVwmId++8F/tWpVwHZnybYHMR5t1NBk=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGLLe5f/JX9du9+LnhuTTrz+mRqQtfCVioHPZYfs8Oev7j
 zdeZdR37yhlYRDjYpAVU2RZkmtUEJG6yvbeHU0WmDmsTCBDGLg4BWAivOYM/11KtQPD3uxYKdRz
 MeiDsErA5ax/r+bLS8oZmz/STH+8soyRYasHs59b3aKw7ZrrE3/MEOAp05LPX3xrQaYMj3VQyL5
 tLAA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _oNEiJm97pI2G2Ty4YtIY_MJPonepBq24XlAR2ub3Vs_1794011139
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_162603_862921_4AB86693 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
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

Reduce boilerplate code in this driver and convert it over to use
the macro subsys_platform_driver().

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/ti/phy-twl4030-usb.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
index a26aec3ab29e..08aaf0f8712b 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -841,17 +841,7 @@ static struct platform_driver twl4030_usb_driver = {
 	},
 };
 
-static int __init twl4030_usb_init(void)
-{
-	return platform_driver_register(&twl4030_usb_driver);
-}
-subsys_initcall(twl4030_usb_init);
-
-static void __exit twl4030_usb_exit(void)
-{
-	platform_driver_unregister(&twl4030_usb_driver);
-}
-module_exit(twl4030_usb_exit);
+subsys_platform_driver(twl4030_usb_driver);
 
 MODULE_ALIAS("platform:twl4030_usb");
 MODULE_AUTHOR("Texas Instruments, Inc, Nokia Corporation");

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
