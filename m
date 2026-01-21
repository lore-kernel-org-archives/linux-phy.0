Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0556CC44506
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 17:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OUAEmODXqrhPS28LXb8g29+D7ix+cuU0Ir1DksdFEzk=; b=WDJW4i6v/BKgNh
	jMmHNB76N6bsY80HfSXmEI3eZVsHHbQJrNSJvIxiwXVqhUKnJf+L52gEy1NCDZGmK7hbqZZ+GbS4X
	issnc11q/eIy8t1ljQ9AH9FfVlWBkCVZHTb6j3dC9nw4es0rCHXhuF8slKZkztdMBtg7OrZAXEvSX
	nOhIaf9SYU485vpWoUW0Kc7mVLdLyskds/D/fkSWrNuq9tIdF3BZCaUjfy8LSW7drkOoJZgzeQjuv
	Hp0CDxlkXOdlZ2sSe58dGqCcfUa0VwDT33l6YvI3lD5kxNkJ+MC70n+MYfnC8GKTQVUujWoZIM1As
	0Z6MHo+6SeXZlUj1aDyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vibqt-00000005rXh-20uo;
	Wed, 21 Jan 2026 17:18:43 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vibqq-00000005rXA-0yE7
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 17:18:41 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-81e9d0cd082so114806b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 09:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769015919; x=1769620719; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=il9ScNaZ/4lvJ8pqBzNVyrIlC8QNAqPRN5DcAZnyMcI=;
        b=M4rnGr2cpnMXbTXJwHkjRGCga6BpSWY4P8/BApZglqo9AdBry4eFMWx7gh1olfQYMZ
         AWe575NNtNejPAMOpu1bvu8HMr3cfCBIsrpeIZO62VA+prwKgSEzc9Yxs1Z1pU26iSNz
         3TwZMsy8f5nBieZ4KYA5KOotpKw51jH+HrivHDDmhqxil5ONjfVF7uiQVshMZD8Os2OH
         3zjN1gVtfoVNPJRoByw9ArcdDyKWKDEpa9I+1pxcxH02BZqaAS2XlEYh7x9n/Irrq/nw
         DG6TpzdEwd5TqKK/ObU/Y2yJeHLUctnmlk8tjiwQ0AST5BDuXX0LATk9X19GrGgJ+Xa/
         MEPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769015919; x=1769620719;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=il9ScNaZ/4lvJ8pqBzNVyrIlC8QNAqPRN5DcAZnyMcI=;
        b=mBIAWqMQvIZMv28VmkKiBaDzTxn7Cd4QMCfJYilaUlniWUXUHHrfGq5t2S/hd0hgxI
         Oj3usnJPZmF/GPBv+reEYEX11YT+6ri2oYIHFEDz1nYL3YxxaLW/3yMd9FtSuw3sxxtc
         aoqNuR/+g/5demGDSa4zV13GxCQjK+bEyAb8MclHIU98J2nBBrkId9GYpOI97BczedMf
         fNzQAAdrPmoe1c+xhFR8C9qcQ/1k5rneTTjKRq5YHHNTsFHfPZBgWJd4580r1/mMIUIm
         mW44dYRvefX6SJXyr08hJfso3Itmmc60uvwwB+76iaRdPPagWHuPJryUwTClzZohTtSG
         NT3g==
X-Gm-Message-State: AOJu0YznDah4F+rOSFZJOWctIAZ51zsfYR5rRo8cmAcSjHM+ySxyZytE
	Nx7KKkktQ09D3vqDIeC+lZv/nVSAxVUpx/YkUseXCkNa19HQRpiX+MGn
X-Gm-Gg: AZuq6aJg28jUZhR5ZBikvcym0on6gK2U+5GZZKodtweVSvUb4cMOiTDlIhaJd7/wLkL
	7dcNMc/aJGr2ASSifQj7LWwDK3YLvpjaN0QE51tCywFbTLAtIK0hDxV4rvpAoeW4VRqwjvsxe+x
	HDiMAxFlZrhBY+hfBDSvAIZtnBFC4XzwZ38JIbElYN8dGMSch7H1yAt+eXegILQXY7WHsVxXAc4
	F5zVTI7KBUyBz9/TRBko1MiuRSCbNNBpcasEQtTf2pc/ydbBX5lvWRRXNKsSqhlTBFLbJAgO6JA
	O/qaNdUAM15lPGO8seZQA/EcQtdjdI0YCKSPhxOYuVaPBLlFNUj/ML7CIqvg53scPTsVsfl0f+J
	2z+Tffz4E+SSru2AqrHxUM+ZGpcuLpM9mWEx4Es61p6tlPnLOq2sV310wjl8GqNt9fZhcfahPqH
	qAMLKI9FxPsskhL8346UZ0Fbw4
X-Received: by 2002:a05:6a20:6a0d:b0:320:3da8:34d7 with SMTP id adf61e73a8af0-38e00c2eedamr17438423637.22.1769015918821;
        Wed, 21 Jan 2026 09:18:38 -0800 (PST)
Received: from junjungu-PC.localdomain ([188.253.124.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190ce6a9sm162768155ad.34.2026.01.21.09.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 09:18:38 -0800 (PST)
From: Felix Gu <ustc.gu@gmail.com>
Date: Thu, 22 Jan 2026 01:18:32 +0800
Subject: [PATCH] phy: ti: phy-omap-usb2: Fix a reference leak in
 omap_usb2_probe()
MIME-Version: 1.0
Message-Id: <20260122-phy-omap-usb2-v1-1-a7018b48d740@gmail.com>
X-B4-Tracking: v=1; b=H4sIAGcKcWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyMj3YKMSt383MQC3dLiJCNdg5S0NPMkA1PTFBNDJaCegqLUtMwKsHn
 RsbW1AOeyPdZfAAAA
X-Change-ID: 20260122-phy-omap-usb2-0dff7b055d41
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769015914; l=1037;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=nYu1/dfOfVBU2rwbGD34zzyA3Zt3fXvN6gq2sAHbYo0=;
 b=E5x+hNjrALNhxU70MAlQzSa7D6r9sMCfIQw4ehEEzZKwC7L9UYpmx3ooFJDOmOPWtzpuASF6V
 QiytzWAxvL5AOhmDrAM7B1HmkgWOSRORXinIbQW/nd34Idny7Gc/63l
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_091840_276401_52565005 
X-CRM114-Status: UNSURE (   8.67  )
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

In omap_usb2_probe(), control_node is obtained via of_parse_phandle(),
which increments the refcount.
Add a missing of_node_put() after of_find_device_by_node() to prevent
a reference leak.

Fixes: 478b6c7436c2 ("usb: phy: omap-usb2: Don't use omap_get_control_dev()")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/ti/phy-omap-usb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index 1eb252604441..660df3181e4f 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -426,6 +426,7 @@ static int omap_usb2_probe(struct platform_device *pdev)
 		}
 
 		control_pdev = of_find_device_by_node(control_node);
+		of_node_put(control_node);
 		if (!control_pdev) {
 			dev_err(&pdev->dev, "Failed to get control device\n");
 			return -EINVAL;

---
base-commit: 053966c344dbd346e71305f530e91ea77916189f
change-id: 20260122-phy-omap-usb2-0dff7b055d41

Best regards,
-- 
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
