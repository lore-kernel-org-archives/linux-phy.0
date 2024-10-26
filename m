Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EF4BD10BF7
	for <linux-phy@archiver.kernel.org>; Sat, 26 Oct 2024 13:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yLN+yDI5x7LVpxCArai5BeiJI8uA29cqV8hbySNFsck=; b=UMENq0arNEnLJa
	t5jNGM99mlFk4tBTng6T2zTQfqIUuD8KxHl24BkNYI7AFwjoRJEM/GJmHFA0RFUDPggQIerf+NjRk
	mZ1VryXpsqa0c+krxIXAzix05q+MlFQiv/6oBz/wmRkYOQZOCG6SHgAFqcuj+NjGoHXugyFZDJeaz
	A5/TxDX/W7m1R7Msl7iQKNJ0pU6qKuIfbhJifzDwK1QaZt9QFGY9zh42ENpB78GjtNqqGKPwFMA73
	0e/MzKkoRd9G1VDh3qMVzJOy9Y65c41QVTh7B0sJp/zqA6fMmZDX1yG2ODg2tnLXTmXRYaCZxpJeR
	Vn/bUWdybKKEQ/DOSjsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4gie-00000006gTX-0e4S;
	Sat, 26 Oct 2024 13:20:40 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4gic-00000006gTC-0eQw
	for linux-phy@lists.infradead.org;
	Sat, 26 Oct 2024 13:20:39 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-460c1ba306bso18724291cf.2
        for <linux-phy@lists.infradead.org>; Sat, 26 Oct 2024 06:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729948836; x=1730553636; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uanSZJQklmRmS033W3BHPfWcyF9MpcVddO3gFoIl8So=;
        b=ALafD+eDFQvMh6tH5h7UVOCxm6FDh+rqWwnsJpr68gNeprCQ4/Jr9bIiPDMOFrdlXs
         7P0HDCqid+ib04n3EEVG782yh0dF9EX9jBu5T0xSykR2dihkH2qEkoq53PsmuWW6piTA
         xfscMlQt0gHkCnAcwf236jqHrY4Hh3ayzoQX+qAQl0Lvn8nMyNxChIGqbsFETFQTFKlZ
         D4m4wnKaHBe2Zd0lRC7q4FCGCOdRwAzWkIqIkVR0fGVgcHzv2gQs1bMfM+kmIpR57dpa
         PpawM9GrKitskecUhoE1dynOdT87K21/E/dWPCcQzFVD6kqvuCpb4s9uRNpx8Be30iX9
         ZBoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729948836; x=1730553636;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uanSZJQklmRmS033W3BHPfWcyF9MpcVddO3gFoIl8So=;
        b=tb43hq46M2lWCIYRDveCUdgyWwmudJ3nnhUt9VZYcUclceEdbIvncK/67hlOEHmXAf
         9L6oZZJKHrhoHQZMqprvWd6bywc7aBu1fm9oaNesdobX/OP3tASRi5QxgxpMph9Jb/s9
         EF9gaSXre0d0uzoliKTYpT8BxaohvEq8h7XTNZadukT85LYLBo5h2flEiPGxurOZBiyq
         flWWE8BUakhGZFfd8dIsINxlPIww3ZQlzch5yCGtY4ul9QZbJlMRmk7gTK0b9/B1PWRt
         +aeyhgqzMQzWkOyJ0o6nAOcJMkRRo91edkS7XB1DQiWHU/Xy5RPx7KxtJta7qXurRng+
         eyug==
X-Gm-Message-State: AOJu0YyqjjBKUJs7lWcF5cyc7snXLtW50hlBsefH8pCuGiV857PMpRaV
	VAxZmM6CaoZB0+xq2Z/PkJBPbpFW01x/Ihdc8hwdv/eJmaXJQLTInv5LFA==
X-Google-Smtp-Source: AGHT+IEn9n2HjtCV52Y/1LDU/GvFsvByPZwyUUanUzueyZ+W9E7vF3ceWB70i2LUB7RZuEYbi4EJdA==
X-Received: by 2002:ac8:598f:0:b0:461:18fb:f0a2 with SMTP id d75a77b69052e-4613c1ba78amr42735431cf.52.1729948835938;
        Sat, 26 Oct 2024 06:20:35 -0700 (PDT)
Received: from aford-System-Version.. (c-75-72-162-184.hsd1.mn.comcast.net. [75.72.162.184])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4613211a1b2sm16372741cf.12.2024.10.26.06.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 06:20:34 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dominique Martinet <dominique.martinet@atmark-techno.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/3] phy: freescale: fsl-samsung-hdmi: Expand Integer divider range
Date: Sat, 26 Oct 2024 08:19:57 -0500
Message-ID: <20241026132014.73050-1-aford173@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_062038_220431_E96BD8CF 
X-CRM114-Status: UNSURE (   9.88  )
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

The Integer divder uses values of P,M, and S to determine the PLL
rate.  Currently, the range of M was set based on a series of
table entries where the range was limited.  Since the ref manual
shows it is 8-bit wide, expand the range to be up to 255.

Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
V2:  Fix typo in comment

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 2c8038864357..412c03b7dcd6 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -406,16 +406,15 @@ static unsigned long fsl_samsung_hdmi_phy_find_pms(unsigned long fout, u8 *p, u1
 				continue;
 
 			/*
-			 * TODO: Ref Manual doesn't state the range of _m
-			 * so this should be further refined if possible.
-			 * This range was set based on the original values
-			 * in the lookup table
+			 * The Ref manual doesn't explicitly state the range of M,
+			 * but it does show it as an 8-bit value, so reject
+			 * any value above 255.
 			 */
 			tmp = (u64)fout * (_p * _s);
 			do_div(tmp, 24 * MHZ);
-			_m = tmp;
-			if (_m < 0x30 || _m > 0x7b)
+			if (tmp > 255)
 				continue;
+			_m = tmp;
 
 			/*
 			 * Rev 2 of the Ref Manual states the
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
