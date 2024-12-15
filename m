Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF568E7716A
	for <linux-phy@archiver.kernel.org>; Sun, 15 Dec 2024 22:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z76VL/psAPSue/0ek/h4cHR4TQzH4X7wwn0BYeizfyg=; b=FJicXUgJXu9dMz
	6gTOvGdsGgk6ESmPZa5QS5unm3YOilwbKjZbTMLAXTgKD+M20+noNtDVy0QmfQaPrxJiVpUU/7hcK
	tVQE+S6carZlnPipG49u2ITgYNUsIJet/nY5tQkWVetEciCPMXseyg6a4zUJ/5fumgR2qtd7ySRgP
	R9iMW74FAr9frxnAbuQUCvO/ZRrSNS3Ko/7mO5mczJgQ4LbFzsmxqPgRiHpgbKxlP5shi3gu3aO5F
	Lnr2XNxhGpxxXZE8gg0JxQ+pRCjXIEP+e5sa+LNueGXmycgqH2HGNf6BDT93ObymLB7cRAthQF30/
	y54Ce2oYjLStqQ+8mmAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMwki-00000008XNA-2t18;
	Sun, 15 Dec 2024 22:06:16 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMwkb-00000008XMZ-3uhp
	for linux-phy@lists.infradead.org;
	Sun, 15 Dec 2024 22:06:14 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-844eb33827eso75811039f.2
        for <linux-phy@lists.infradead.org>; Sun, 15 Dec 2024 14:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734300368; x=1734905168; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZDIMOewigJmHzzSRfwlsgnwekYZKGWmSYwk2FpU4fjA=;
        b=ZZJafTRIH4Z85QHiIBbkqvr3uqBE8JrK9lIhu5iZMM3IyY/KTnw0vwj4B6Nh7xn7Yf
         6Md5YDSNgRQZIMC5Tg9F+VWdJch0yJhb5DA9yEDB0PmOTUmrBwgXEud+f5EDjVNWhIlQ
         fDWSBnpkbJIkvtNKBJ5y/Ceff1t1ABAE9W+USkKNtrxPfo5tE3UVW94qkHJ9PogVlW5z
         LA7Xu/fX/s59Q4fE2FoApufEi0+t/1O2bpnB207AoHljY07UGwVAGD3kCZcegmEiYQP7
         O2Fv5ummeZ+yBFWdaBgIFvdyXVIUigYYKXFriooeDo+6NGizJDEvA2UNUu98cTXkMKOw
         KD+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734300368; x=1734905168;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZDIMOewigJmHzzSRfwlsgnwekYZKGWmSYwk2FpU4fjA=;
        b=EYlRvSZPMlGmW4IZAchiDJeujqOXOPKRxCIDnDembA7jDOCqEXkHt5NP0Xz0ATC0As
         ecqb08WrM3B3+jazS3APNTdYsACStEcMlsBFCk3kny/c8ZyxY6ofsQCdPpZt2cuH7T/G
         LBoLPVQK4KYpNfbryyTewou60RsAiA8VN0GQ9jO68QCLrFEchaX4eYUTD1mHIaVHT9FQ
         bcM2l5xcg5SevoNhbHypjFZnuvDhIuv9GHg9/5CHNw7fxJ4QkxTA622lY7PD9ROH7Gwr
         BbUSnWhYMtZ0cxBJam8MEWvOeOnNz6tnsWLBP/PmoQ6g4HCyfIZul05dQF1sEHPBjP09
         UJMA==
X-Gm-Message-State: AOJu0Ywu6iA1PsNJEXP8rSmjcjdfVnF4yJfCpvCLwZKnyyGS10uHxKh4
	SMDSAfydW9BuHcZkQb3nzNyhbn7WnLBfnkwJCJF9c54yb1tUZtrX40rg+Q==
X-Gm-Gg: ASbGnctdyf+4KdrPEDt6hYxG86UZSi9T8blcLyDay6b0Qip7GQ3s95pjt3dCQFi89og
	E4ckED7Kz/sP4NNZXxEfNQzKyFWy3YdSq2sVVnR0diq5ROCWknhpJIgRDMJVsqy7oj3veBTDVqN
	TfUf76c1tJwlXeseXjuTJZ+DjQI3GXyc2tv7e5zeuV98u1ySL39ZmJqoebOPqH9Tnd3st4xlmTb
	nbLkdkNMDC2tJZAgiTdCb38nIzCRAK3EkxRhsCXE2wM3RDV3vqpLCjI/GjEreaSzpfkj6FlTTR6
	4WrxCa2T2IcNKgh2L38vCP7ym81gj/I=
X-Google-Smtp-Source: AGHT+IGpINEcA+1pBG6zS0mOq03qQ8d8/19Mh3Uf0RVNgHnIkRC5K4eTEFoLX5i2z93RtAGzoRv2WA==
X-Received: by 2002:a05:6602:1644:b0:83a:b8aa:ec0 with SMTP id ca18e2360f4ac-844e88ef8a1mr832233139f.13.1734300366217;
        Sun, 15 Dec 2024 14:06:06 -0800 (PST)
Received: from aford-System-Version.. (c-75-72-162-184.hsd1.mn.comcast.net. [75.72.162.184])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4e5e03685ecsm914303173.2.2024.12.15.14.06.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Dec 2024 14:06:05 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	kernel test robot <lkp@intel.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Dominique Martinet <dominique.martinet@atmark-techno.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: freescale: fsl-samsung-hdmi: Fix 64-by-32 division cocci warnings
Date: Sun, 15 Dec 2024 16:05:55 -0600
Message-ID: <20241215220555.99113-1-aford173@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_140609_976385_D4886213 
X-CRM114-Status: UNSURE (   5.61  )
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

The Kernel test robot returns the following warning:
 do_div() does a 64-by-32 division, please consider using div64_ul instead.

To prevent the 64-by-32 divsion, consolidate both the multiplication
and the do_div into one line which explicitly uses u64 sizes.

Fixes: 1951dbb41d1d ("phy: freescale: fsl-samsung-hdmi: Support dynamic integer")
Signed-off-by: Adam Ford <aford173@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202412091243.fSObwwPi-lkp@intel.com/

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 2c8038864357..d3ccf547ba1c 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -424,8 +424,7 @@ static unsigned long fsl_samsung_hdmi_phy_find_pms(unsigned long fout, u8 *p, u1
 			 * Fvco = (M * f_ref) / P,
 			 * where f_ref is 24MHz.
 			 */
-			tmp = (u64)_m * 24 * MHZ;
-			do_div(tmp, _p);
+			tmp = div64_ul((u64)_m * 24 * MHZ, _p);
 			if (tmp < 750 * MHZ ||
 			    tmp > 3000 * MHZ)
 				continue;
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
