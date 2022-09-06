Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D9FDC6FA83
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 06:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZU83YJ1/Ue936f09f5qYIMK1eJPUKJ+Td0mExXtpgUQ=; b=NB90TSuWB26Zwm
	Slv3gIZgdBXdyOn5fWvaGoruoMvCTqoF66wFAXd29UEXljkP2dmbFQglvLXFOp2/GzeKU1e1NQHSI
	jlYEk5v2h9MegLiIU1gQMUq72/3d23ndcRrDUi32/d7/5aGHmK2g157qhzpsVLy7ClBrQisd6Ms9E
	Ny6jjaZpPqhOzAqGIsQ2cbQnwUFkMCQXH4ODM7E7SJJDCk/fHyvX1uBUcnBSvz/oajd1G/RWhZVLF
	1ZLV22NVzQKHbwOFicFSY8U7NdA9lUkGQCQ9cxEqt+g4KFeHRyFDpzEv/DZ1Livr7jWzM8zcRWUac
	cvXPQYZF4R9UXwUw9NLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVS04-00ANGo-JH; Tue, 06 Sep 2022 06:23:59 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVRzy-00ANDe-Mx
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 06:23:52 +0000
Received: by mail-pj1-x1031.google.com with SMTP id mj6so10259031pjb.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Sep 2022 23:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=OjOO2eTxjzUgiDmCCyRIaBy3rv+D3YVNkyt3aCr9uz4=;
        b=CAlmmmdLxymOcqdT4s8jUfswfQ8/xKoClYmcg7f1QXN5jMkUuoMI1OkN5Ymf1tKjfF
         PpmRGH1b8Zqre5hBIiK+4FKLLfsv8sb7IiuzoXN8vGKErYsMrueGIDmoJ2f8k7u0NADu
         2SbhXSLsl/b7odYPc4NXcbcFNWE9hMGrYNgF2E/i2Wg0YQOD9A0qE0+vrZUzJI1ELf1O
         SuC9v8p1sQR2thBYp9pZQLHoP1jSK8vIAG/Y7CuFpTfvNSNj90L/I6hbjIGQWbUmj5V3
         68BXNc6xdj+zwsHzWG3V7BoJdn2XfnhWfAK/HifsnJa4iqEbsfLIsesAlRI0jvh40KUY
         ozAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=OjOO2eTxjzUgiDmCCyRIaBy3rv+D3YVNkyt3aCr9uz4=;
        b=jgrNp2svQCRJ6NhJ63vhkhgbS5NLFZjuiEXDgi8gOgXe9JbpAz0aCw5h4qU3RdnRtk
         BixfXyXBZqAVJWW9XDAiaVFTBoYTEAGOJ4srmYW3Cxb6s+o1xrhxVlYjBa/VpJh4IqFT
         pV304jhIsY6YKvhIrjIxIkXCKYRRaS94/kibx8vN13KSPrT3Qe31arLRKTuH5Mcs/OLr
         +rD/KEQ0BuJYBSbEze4bDmOMwPowTZy4w3w5taQ9BcgxC2kRVqLHgTOFRGKNK/1QJE1M
         URgOaLHqQVYP6Y4hyeqr9+wqET4S98Ro3c64LwwYTPsaDuipMxA+L6IyO5fT9Ix4hQXN
         cXKw==
X-Gm-Message-State: ACgBeo21znkFJ1Xw3WOgS60Sr07Nv/Q2XxrKbQPoUtUNJ+PB5T+E4280
	mY658bXiT32ELaQPJrZssg4=
X-Google-Smtp-Source: AA6agR75et+nHC4NSvO2cAENtR680aqE+PjQF1X4ZsAZGVwMuNgnB4w1YlXRbCXU3pk8Z61IHgODLw==
X-Received: by 2002:a17:902:7204:b0:172:663f:80b7 with SMTP id ba4-20020a170902720400b00172663f80b7mr53258432plb.115.1662445428175;
        Mon, 05 Sep 2022 23:23:48 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id c16-20020a17090ab29000b002000d577cc3sm6154952pjr.55.2022.09.05.23.23.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Sep 2022 23:23:47 -0700 (PDT)
From: Vincent Shih <vincent.sunplus@gmail.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	wells.lu@sunplus.com
Cc: Vincent Shih <vincent.sunplus@gmail.com>
Subject: [PATCH] phy: usb: free the buffer after reading a given nvmem cell
Date: Tue,  6 Sep 2022 14:23:02 +0800
Message-Id: <1662445382-29879-1-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_232350_884229_70829463 
X-CRM114-Status: GOOD (  11.37  )
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

Use kfree() to free the buffer after calling nvmem_cell_read() to
read a given nvmem cell.

Fixes:99d9ccd97385("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 5269968..c8540e1 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -13,6 +13,7 @@
 #include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/err.h>
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/nvmem-consumer.h>
@@ -92,13 +93,15 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 	otp_v = nvmem_cell_read(cell, &otp_l);
 	nvmem_cell_put(cell);
 
-	if (otp_v) {
+	if (!IS_ERR(otp_v)) {
 		set = *(otp_v + 1);
 		set = (set << (sizeof(char) * 8)) | *otp_v;
 		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
+		
+		kfree(otp_v);
 	}
-
-	if (!otp_v || set == 0)
+	
+	if (IS_ERR(otp_v) || (set == 0))
 		set = OTP_DISC_LEVEL_DEFAULT;
 
 	val = readl(usbphy->phy_regs + CONFIG7);
@@ -294,3 +297,4 @@ module_platform_driver(sunplus_usb_phy_driver);
 MODULE_AUTHOR("Vincent Shih <vincent.shih@sunplus.com>");
 MODULE_DESCRIPTION("Sunplus USB 2.0 phy driver");
 MODULE_LICENSE("GPL");
+
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
