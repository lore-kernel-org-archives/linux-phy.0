Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A1D5C5ACAB
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 13:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jHOw6QWLyOw0IjU6Sz+8DQO1Cynar8x8lpWHMmvTAE=; b=pCTzCWTA/jAC9Y
	FabYPdu6Bsp8J2+xOwawccMbzM+iVbfE6IOtVFJ57ofTs2l3bSPq99I18qCvOViubhD+a+/WZj1Oo
	QsXUuUZrw34BjpBUHrZszBub2MRVKuYiIZb8qzravg3j3RP2eJrJR71aiBMuF2pI/3xPhSjKfF7xe
	Zl2/gGOgdsQb+pVBoq98ro3I8NzLdMaD2rccl7BNBCXyXRnwnRMFNqWcx0qexGsOUENjYtdMpHkMp
	rQxMD7aEZhuw7JAWB9z9hmT2ytjd+t7FXzHplfA4mgIfc+7j5l3ZHacQPSRvQ5kpGF7dg109Z6DN/
	oVIX2pB8eraxeW8qZ0eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKRi-000000086th-2067;
	Fri, 07 Aug 2026 13:17:10 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKRg-000000086sv-3GkN
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 13:17:09 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2d01663d816so30512655ad.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 06:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786108628; x=1786713428; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BfAP8cKuZR4B3rvqlJpAg0XbUtRyqZDyaASjiD5GIjI=;
        b=goAXBJNIOcNdPoS7ppW4vES0S01MGqa5kRDRHM/0yrxpqwPXLCYCOQTStYIZm/f5ng
         obyrtRM8w+OWuFwty8v/lvL071xpur0PlfApcUAizRGwVK10S5+D6JYQHIamMSdtu0Bm
         Z1wPoiu4LpXl8/gciiRJRU+IFtx9UXsM8teb1WBk38QE9BCZuSXiNYC0obGQYjFxEzeB
         k5y5H0xdjLNW+HGr6AGERhq9zJo50BAMm0bdv012Mx9cOChS7F8nVE08+9vyYth2/g8m
         tRjNNSWRqFGRKwUAiV3aeK3BskAQoYwcfNcJdAqndpBkkYkEeQZEYSQBA0mjlxCDsKBw
         lDSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786108628; x=1786713428;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BfAP8cKuZR4B3rvqlJpAg0XbUtRyqZDyaASjiD5GIjI=;
        b=HVIoLjAItK4qrhJPjNKjuYxJac6iTumS1SsmmMhEfBhctcelGIW6ahGof1XmUtDM9Y
         2lyZMbcQQV9/VSClDh9Ou7PAFRw50Hb8vu2BFKG1+0BprvTPciTPRWqU0omePv1dUYI/
         +38eMmXa8oeGb/eMnWhCL6wqxLCwzvXQxb3JntucuJFnb2nyhWFCv/lXhZZ50ZFpzIwN
         q/359ysSQBxHSkAJZKJ/lDWl4cipNoXZwSwvTGa+sVMkdQZE8yZVrohef22omhScCYY5
         OVphdNpYdSNcf9avHZX8c2NcBUfCWR/1tsvQLQm0kS7p4hKqLEJfPKm+WkWpqcTru0kQ
         odFQ==
X-Forwarded-Encrypted: i=1; AHgh+RqkkyL57vzq1JXNILT3czpLcyQQayzRPLV+tUwx9BsN15gNquV2bbvDTpEBTOvDIEKjbOw2KdFa8CM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzGMwg9jDCmYEgtC8qgXgfOUZpOTyDG7OEO5HyxXEumQ9ECFc0Q
	mWMzpmGoZQZU4O6hmbzGCI4wNcZ3PPbP+TbTOpNOR3Ldak9XQn3ZOgTuAH1izw==
X-Gm-Gg: AR+sD13uW5CphLcxravLrsqHK+sLsyOhXJfIGR4pxJLUa6MBt1bfcqpgpxXjTIhAQ0v
	x/FlSt1UGfz42aygYsOnNLX71PJauR9K4Sp7G5sqkgufwVvNKFFCR2/QnjDUvRURrFkdJCjMgzu
	aWQfehV6ZTeHALwGla93sR4MfMFxtxhjYuV6qEQ/ySflJf/4kdyUr2bBWn39R55i9YTLg6lAj5g
	pcnpWGPiUSEKwJA8RBlGxBKLZt8RO1jLEKV+EPhe6055Eyclewe886bX3Ljr3C0RP3dYsLt+brc
	0jjWj/G6j2ukYC/gNi9u7wicvdbozHF5jyBzpPE/CorrN9mztr/gwm2J6ZGCSHOtt/IBvyVrsps
	qt/qpozzx7pTT3wIcY3S+KMNZNh84GIeOgW76vo7Y1icHFEfuQfyt3MCZ23Avh+IcyMmrkgigpB
	yQz3P2XE/cHXINUuFnPHVpnxziwM1O7kzw6g6tEjJvdPMyCIahRgsnKNq/t5GAjPrMj1m7raTXS
	IyPgteX2ET8vjSExEANyg9JNIybfZOqq2qaniIlsxGPClUsC9GOFOvm1WVTYm9+kRE=
X-Received: by 2002:a17:90b:448b:b0:38e:524:8797 with SMTP id 98e67ed59e1d1-3909d8c3b9cmr7639183a91.13.1786108627692;
        Fri, 07 Aug 2026 06:17:07 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.166.246.74])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-390b33225e0sm1300528a91.4.2026.08.07.06.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 06:17:07 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Fri, 07 Aug 2026 21:17:00 +0800
Subject: [PATCH v2 2/2] phy: sunplus: fix ERR_PTR deref in
 update_disc_vol()
MIME-Version: 1.0
Message-Id: <20260807-sunplus-v2-2-d5379c664dfc@gmail.com>
References: <20260807-sunplus-v2-0-d5379c664dfc@gmail.com>
In-Reply-To: <20260807-sunplus-v2-0-d5379c664dfc@gmail.com>
To: Vincent Shih <vincent.sunplus@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786108621; l=1342;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=dKOgLjoQDXNhftfcH1BbDNU8KjD8R9UfFEPr4W0zOdM=;
 b=XBMnxzzMFA7SxO0AkVbnFqri4xCE1jOMRHEQdUYqX6RZqQU+oFWuyefKAeVSfc9S3M4rbY/nm
 wkUvtimBuQVBDj4COof942kze7rLaEyomEOFGHbiBNVszcYb4FlAZOZ
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_061708_821620_BBE6EA7E 
X-CRM114-Status: GOOD (  12.49  )
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

nvmem_cell_get() returns ERR_PTR on failure. For any error other
than -EPROBE_DEFER the code fell through and passed the invalid
pointer to nvmem_cell_read(), which dereferences it.

Skip the read and write the default disconnect voltage when the
lookup fails.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 842087bdfba5..eb834788ea2f 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -84,9 +84,10 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 	u32 val, set = OTP_DISC_LEVEL_DEFAULT;
 
 	cell = nvmem_cell_get(usbphy->dev, disc_name);
-	if (IS_ERR_OR_NULL(cell)) {
+	if (IS_ERR(cell)) {
 		if (PTR_ERR(cell) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
+		goto skip_nvmem_read;
 	}
 
 	otp_v = nvmem_cell_read(cell, &otp_l);
@@ -101,6 +102,7 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 		kfree(otp_v);
 	}
 
+skip_nvmem_read:
 	val = readl(usbphy->phy_regs + CONFIG7);
 	val = (val & ~J_DISC) | set;
 	writel(val, usbphy->phy_regs + CONFIG7);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
