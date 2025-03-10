Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E302C28B28
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 01:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ssQAx1nqxlgYxUrQQjGvuvu3aSTIOMhSid0Pqfivrxw=; b=s8vUbEpA7Sy+F2
	MgFq1kpCVUjCrEHDzkdvCQ4f9Q1uZCR8rhy9vuHYCoaKCBUETWH8A329jHqlez5yFKwJKvqn8lLRa
	34VqfUTRXeAtuapDq8S8xsRV6AT/nOLG39stz5ELv67JGmAoUhDPXQSfz+WNfpG+H1vdKbCI9xbRm
	qxekxLcYA1ZwsThEYVlTdsBDkeA++XnwPHd5V4vzFWOFCCvSHV00qlhuhcV8tqHwtSgmVTBkBHHAG
	fTwpYhqAruVTtK4LaGaqel2H8AHQjSVbUn/HiGp894poxkTq9pVM/h+0Reykk5TWMgCg1bb0OE8hV
	Mmn8hs+weFuvxcYKur+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trRq4-00000001N0p-2lXP;
	Mon, 10 Mar 2025 01:21:52 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trRq1-00000001N0Q-3jq5
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 01:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1741569706;
	bh=jxcp/I6qRoVojrFqHPEejhsnoYO+OFk/768yTckJ3WY=;
	h=From:Date:Subject:To:Cc:From;
	b=DAplPc40YuYE2ugSiaMFi1i/E9wsKj1YrYF/uAip+36rGjuJB5gvHSkQyDb/fbGZt
	 GDip7IjYpb/h/SwW3ou8d/cjASYyEci5ilgG4TR9j1Y94Ljy5Sd3DU2d/lwi9n27MC
	 2agQAs4wIZiotTIMoYSpyf/DyjNt/PquN17TqhNMEuNfOxInjbsGP5ewYP+larusKW
	 KlBIa7uu3K+t7BmHrX1zduvQmfVOtG+9NSum6UWF/mQw5Zj1j3/qEnfAzoEmhgdwfJ
	 0j3aOw/qPV4uEDZjT/tNZU3RUwAjPCUndvwiSRp4iTjW/7gDMbwPA4j1MywXrqk7Yb
	 7zbJK2X7oub6Q==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id 8EBFB93A
	for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 10:21:46 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=gIkVxZ7h;
	dkim-atps=neutral
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id B7AA73AD
	for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 10:21:44 +0900 (JST)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2254e500a73so16486145ad.0
        for <linux-phy@lists.infradead.org>; Sun, 09 Mar 2025 18:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1741569704; x=1742174504; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QhiAMviavNTKHdOoETHF5AIQD1QwdQW7edH3CF15XWA=;
        b=gIkVxZ7h3Hh0j+1WtpG5XusVWaatnN3nkB31CZnNOMM+YN98ipLqKe9QlRnmIqas9x
         yxwfPBbTSUYvz5VFPP9ai4x6dvYHHo+7mHPc0t8MKQSo+/ZUxr9pMPxpOuVRgsdtmlmt
         gMi4jzplRVBVbRU+RksbcINLvzVGVEi23DQkQbx/PhXj38lpsNBTZ7z2/qlIPN4quPGK
         Cnl1GWdd0AOUrouuW9epLVOr/kr2TDf8zY7HuQ463tNZuUCnZZ7/fXSXfO0qtuLd7RUY
         Co60ca5xXG6KxCa9cVkJ8ES0jer7H5YJoiLx2YK3jDwlB7hg9zzbrDA8xoI/x8Nr13N8
         WvDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741569704; x=1742174504;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QhiAMviavNTKHdOoETHF5AIQD1QwdQW7edH3CF15XWA=;
        b=P02xNT92U6NrhODm+1B9sTJyRt+DfMgMEbeIYcCLL0z5BnRLXALk0O90rxbwPbJI5V
         yc7XyretSyEBgnft9S3UdDbUN+6hr8PAOmtCxtz+MdaaJl0aSqWHdn8tzHjGu09yexLh
         Lkwimd/IPdG/gbbEf/jfAViP5tfi7HBWEpRL7gI9TtvvFPxLcPZt2dN8XvXqVf6eJKdh
         K14w3qgY2s1U/FPNlaguf+yr1/usRLJwLogvLQ3E4IvbxARf9n6bOAeOtAbYVApu4OKd
         hO/Y5CyuP9/r2NyhPrPNY6pKoo6HjVnJGFCFHUesYLOl8UHb4lZXFph9dX+d/e3Ec+B0
         3zqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXb44jfqDuL5jsKhhxV8HWK6uIPvAr66pkU0hUl0JmSXvKSfpaJRCu2rXIU+cGzBj/z4/72bvR5Cd4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzoxdX3dOxS/00iCFIwTmc9g5PRwIQ9xkbkR4YTVObX83VhIDDx
	fPMsNSm4U2e7PfUEKFapweFE5zgeb9eOXObg7n6egY6W238V7EJSk/AH3TRYI9QzFwIc+XBRtsr
	f3wEOAXGVYP/hZCXSyl0hrBToRqF1OFIgUusq2TPSq+FCEsMyiQgzZZ/pWHQ0vQe3
X-Gm-Gg: ASbGncsfDnbGR9wbh0V3LSLOmUqsRhXNWEz9+QG/xeO4uZEFHrL1CLmUIIuwASU/0eM
	A/3tXGh/WQcvUfYQojSiprf59vcdkGNUS3xrI5XbkawNf0dugYWOfl/Uzl/h67ZP3DQpJOUeARH
	c96HFe/Fa8IitIGqKJ7nwz4qwqxigxunw5qNpFOxFbVcp+rm08iysZiiE5Y7HR66Hc6mDSz7MZO
	5i+1QBb0ZFqX9i4UHXKgucyZFWRM0lccOcH3tBMjffLLE4ZGyLXvtQTagMSta2qrUda9cMkeIJy
	o11eHhHFJU3A2bPYaSDRw7z9BTkWZPDmKu0uDNibTJ7nwYf1VmRvNGpQT1hSwP8oNzm6D/W1Wyo
	=
X-Received: by 2002:a17:903:41c3:b0:220:e9ac:e746 with SMTP id d9443c01a7336-22428c049fdmr204603295ad.53.1741569704001;
        Sun, 09 Mar 2025 18:21:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQqkpr0NSHHa6VrwkkUEh0/PFpr5MlZHcBta7OOIN7lH6y2dABiyFXHjv0xMS7H2ahRBN2yg==
X-Received: by 2002:a17:903:41c3:b0:220:e9ac:e746 with SMTP id d9443c01a7336-22428c049fdmr204602905ad.53.1741569703668;
        Sun, 09 Mar 2025 18:21:43 -0700 (PDT)
Received: from localhost (162.198.187.35.bc.googleusercontent.com. [35.187.198.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22410a91e66sm65375475ad.202.2025.03.09.18.21.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Mar 2025 18:21:43 -0700 (PDT)
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
Date: Mon, 10 Mar 2025 10:21:32 +0900
Subject: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
MIME-Version: 1.0
Message-Id: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
X-B4-Tracking: v=1; b=H4sIAJs+zmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDY0MDXYvSnIL4jJTcTN00i5TUxGQDCzNDw1QloPqCotS0zAqwWdGxtbU
 AhJP88lsAAAA=
X-Change-ID: 20250310-8ulp_hdmi-f8deac08611e
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Adam Ford <aford173@gmail.com>, 
 Frieder Schrempf <frieder.schrempf@kontron.de>, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 Lucas Stach <l.stach@pengutronix.de>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Makoto Sato <makoto.sato@atmark-techno.com>, 
 Dominique Martinet <dominique.martinet@atmark-techno.com>
X-Mailer: b4 0.15-dev-7be4f
X-Developer-Signature: v=1; a=openpgp-sha256; l=2114;
 i=dominique.martinet@atmark-techno.com; h=from:subject:message-id;
 bh=+BkAbmxwkkZRS2paZjf0xa+4nJdGfyFk5BqqRZG7pzs=;
 b=owEBbQKS/ZANAwAKAfKKYH/WjHEHAcsmYgBnzj6l3RdsRbF+c/GvCGKDXJwbHib3terbsEXgN
 byeN8msZO2JAjMEAAEKAB0WIQQoFSiLMD+txr0veJbyimB/1oxxBwUCZ84+pQAKCRDyimB/1oxx
 B2UtD/9R1iVRZmgD5Tb+gMvQ/nDGlLcskD5UK/yduZOjTZRZwMPFZ2RvtScAE8iOGBxNzt6//D2
 E9RwEFhIBQvI3C47DsVW34luv9LLoqeaK/eC+RgGMGpqv+HmaD8TxMCGlnmfkOTNV5OF3xMWZ+4
 T1C7TPRaS5+Rh6xvJxNs400cfCmC3+nZOgZbBoQHzpxoh21i4lsoWwyTV7i2r8wK+K7NwgplaIY
 sP3OeuzF3usSHZ3n7xlFtkMzqt8t48qCxGXlFwytqGGMYb1FN7xQxIOjyn27I+8f+y5FEHORjk2
 8JtZMExcQjhOtQbeLw8M1cxOB0RO9RyuIfb7DB4CX6FFGdt6EENAKyANP9ks+32aM0urj46evWl
 zknWqqMY6X6FqqHFWtnUvgIBM8mUVKe4i6JfWHHZyBgVuRnrgZCdce05AImVjhtq87OCpt14ft3
 27opVCEaK1gIG8ZthbRKHz1hEaiemkCopL6sCLLSep+C8Q0iOFQJ/n5DgLDJ7qZQAAewsRw7xL3
 czdcXE40y6nqbhYvcQYRMkjvBbUYgtqlE+Of28u2uJu6yGmC7izQIdhIeudrm+IYeHWWzNO7rwr
 1rqxmTFU85n2rRpPT7tIBMJT0AhPYIESm7zQRXfNkOfEs27U0pro2iQGf66cj7owLEJVv/CbXRn
 F1F8n8dtZpKjeBg==
X-Developer-Key: i=dominique.martinet@atmark-techno.com; a=openpgp;
 fpr=2815288B303FADC6BD2F7896F28A607FD68C7107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_182150_059456_4977C164 
X-CRM114-Status: GOOD (  13.62  )
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

From: Makoto Sato <makoto.sato@atmark-techno.com>

If the requested rate is not an exact match of the integer divider
phy_clk_round_rate() would return the look up table value,
but phy_clk_set_rate() can still use the integer divider if it results
in a frequency that is closer than the look up table.

In particular, not returning the actually used value here made the hdmi
bridge driver reject a frequency that has an integer divider rate
within 0.5% of the target:
for 83.5mHz, the integer divider generates 83.2mHz (-0.36%), but the
next LUT value (82.5mHz) is 1.2% off which incorrectly rejects modes
requiring this frequency.

This commit updates phy_clk_round_rate() to use the same logic as the
set operation.

Signed-off-by: Makoto Sato <makoto.sato@atmark-techno.com>
Signed-off-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
---
We're finally using this rewrite in our (outdated) tree and noticed the
"best" mode missing on one of our picky displays.
It all looks good with this fix, thanks again!
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index e4c0a82d16d9ef0f64ebf9e505b8620423cdc416..91c4d27a31f48fc49f1e8417d7089f5519b8a0a2 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -557,8 +557,9 @@ static long phy_clk_round_rate(struct clk_hw *hw,
 	if (int_div_clk == rate)
 		return int_div_clk;
 
-	/* If neither rate is an exact match, use the value from the LUT */
-	return fract_div_phy->pixclk;
+	/* If neither rate is an exact match, use the closest value */
+	return fsl_samsung_hdmi_phy_get_closest_rate(rate, int_div_clk,
+						     fract_div_phy->pixclk);
 }
 
 static int phy_use_fract_div(struct fsl_samsung_hdmi_phy *phy, const struct phy_config *fract_div_phy)

---
base-commit: 80e54e84911a923c40d7bee33a34c1b4be148d7a
change-id: 20250310-8ulp_hdmi-f8deac08611e

Best regards,
-- 
Dominique Martinet <dominique.martinet@atmark-techno.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
