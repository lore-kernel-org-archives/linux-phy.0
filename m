Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026A9D10BF7
	for <linux-phy@archiver.kernel.org>; Sat, 26 Oct 2024 13:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djroLgSzOavDCG1TF8NIYd5b7RSr3m9KKmjTl5Ox2b0=; b=B7qxWqfFsMp/Kx
	IR7lpk/OW2XHXnN+jZsZt7LkzJVNzxd2ElRoFBpmrAQ4U+QdQ4m7dbk/uitgGcjTA4alqtRfpKAVv
	qDVapgJL+N8DWKvG8PG1B3ekBPvVppfbofloKRC4cMHjK8ztwA/tTbztLYPSvAVi4nqwFDzEuBPAi
	ArB6jtY0tTRH9JFlEf6l51q8YfD3UwqXbbnVbldTKZk/Q1g1GWAXuDvOizGajVdfM2B0d3L/pNq9i
	laQ67DAVBS1vMGsBKaZR9NrmlnFBwouePbS8Omh1xyyJ3T9xUo25LcW7gRymXJ2l912hmFwIIZfJB
	lAw2qHlfu9uLy90RZFpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4gik-00000006gUe-32Ev;
	Sat, 26 Oct 2024 13:20:46 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4gii-00000006gTt-1DHa
	for linux-phy@lists.infradead.org;
	Sat, 26 Oct 2024 13:20:45 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-4609beb631aso20517811cf.2
        for <linux-phy@lists.infradead.org>; Sat, 26 Oct 2024 06:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729948842; x=1730553642; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IZv8I36kWC6/J2DlG1AGKo0oUQ6LOxCOA4JeVAxdYxo=;
        b=O5sDfDcqCA+Xjp4uyB3VrSnU9Pon0Chk0MUbrzkeUz7Xne2nb8eXoWXgV+p8zm7ywp
         05m8GzDM7T9p1nLiGP28Fy7ktK8JovxCnhajunkyrPceKss++SAJGdveTZrvFBQbEepZ
         3sgHH3fqonoIfE34kFLImbX1JhJPuI77OcG7/XuPDe1M9DqDZnyPQRLK9lgvpLAfS0uN
         dRDgF5S0qWnHEz6sFQmnkSBX+2A44hAIsk8YMbQxffdIwXjggIUh8KvsR5hhujWYVN01
         rtghd1uf4dEEFs8eqxoF3zBCEoiJc+2cJt5/gOAt5FGj40YP9rKORwWBPT8H74N2ItC8
         EI2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729948842; x=1730553642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IZv8I36kWC6/J2DlG1AGKo0oUQ6LOxCOA4JeVAxdYxo=;
        b=SZMhuAu3dXdPYz5K9X13x5RDpsdNiMZSyCdUm3lurzEW18RzDx4XWNopZzupt6821W
         I3j5o9ZHOy1hR9Q2iyqPxX9jSP5FjOj+jxpV4liV7lZ/T3G2ZKm0UTMOu1tBQzQqz0ts
         MCzj7BqHK+B5KNSZR0UNdoGlTzzFG5sd2ha9L0CoqarfYxZxFXjA/tDFNBNEYFPHciRg
         FPSABpLwt0ynfZRuHUstn10WE7K7+ewC5VKbrdhR4tepnzG5yTs4/KMzP/qR9aSOhKWV
         90yte+c2/KSLRMebTfcS0cQvuQ0SX8mPzz4BPvI+FSLiJYB9oxOHEhy0SvOzVd/HCdlj
         Jw2A==
X-Gm-Message-State: AOJu0Yxj6huZFN/6qLHrehtGGubxqTF8PoNaAqlVSkD+1E3EjvAJjHth
	fU6EGEsV4j1rlELV0OfRkrZSa5p1dJYgVrGg1fUsNwvRdPFUk5q8RSke3A==
X-Google-Smtp-Source: AGHT+IHPI2RVPdbW/ih/p6cee6z8h93uWBx4fzfT592gJDHi3Jb3aeqMbYKbdKADAzmiW3s2JC0xtw==
X-Received: by 2002:ac8:584f:0:b0:460:a730:3176 with SMTP id d75a77b69052e-4613bfb6ce8mr40284151cf.11.1729948842179;
        Sat, 26 Oct 2024 06:20:42 -0700 (PDT)
Received: from aford-System-Version.. (c-75-72-162-184.hsd1.mn.comcast.net. [75.72.162.184])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4613211a1b2sm16372741cf.12.2024.10.26.06.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 06:20:41 -0700 (PDT)
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
Subject: [PATCH V2 2/3] phy: freescale: fsl-samsung-hdmi: Stop searching when exact match is found
Date: Sat, 26 Oct 2024 08:19:58 -0500
Message-ID: <20241026132014.73050-2-aford173@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241026132014.73050-1-aford173@gmail.com>
References: <20241026132014.73050-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_062044_352478_AA13E405 
X-CRM114-Status: GOOD (  10.16  )
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

There are a series of for-loops which check various values of P and S
for the integer divder PLL.  The for loops search all entries and use
the one closest to the nominal, but it continues to searches through
all for loops even after the nominal is achieved.  Ending when the
nominal value is found stops wasting time, since it will not find
a better value than a deviation of 0 Hz.

Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
V2:  No Change
diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 412c03b7dcd6..121f67455cec 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -440,9 +440,13 @@ static unsigned long fsl_samsung_hdmi_phy_find_pms(unsigned long fout, u8 *p, u1
 				min_delta = delta;
 				best_freq = tmp;
 			}
+
+			/* If we have an exact match, stop looking for a better value */
+			if (!delta)
+				goto done;
 		}
 	}
-
+done:
 	if (best_freq) {
 		*p = best_p;
 		*m = best_m;
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
