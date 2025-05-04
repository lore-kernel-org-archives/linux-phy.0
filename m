Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A2FC369DC
	for <linux-phy@archiver.kernel.org>; Sun,  4 May 2025 20:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fC907V196kuJIjjNsFkwPw/fSuV7MpAq7PP9f8YjK2Q=; b=ruEqqRsF3unHKI
	MUP4GKu4gVqHpqJJ0CqZgByj7JzEpa/l4/NOo7h+SbNDXqdcs9ETMHWyuQgf60FULmmYFP53k17vr
	BoHo+8PCOYlJkLip37NSMSQ48CuI7qqWRvuDVQiCK/EHkQ+NqY/8MpTkgf+aTd9hJV8S0BCcxNf0A
	nDhlhpy1jIdfv4iZoJj5eEJ31ax1fRDKI4399wARVksJniL/WuljmfVtzYVnjOgjHyOMH5i8KB3Hy
	UHJ14aP//ZvbHHGfOzw/tPUzcFUCGbGMPQiUq5I4r2OTi8TY75+2ySN2gXrYC9SjAjrSs/IrOKalI
	vbYpUkffOuFIMcbxvfrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBg8y-00000005vir-3Yj1;
	Sun, 04 May 2025 20:41:00 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBg8w-00000005vhi-0Bgs
	for linux-phy@lists.infradead.org;
	Sun, 04 May 2025 20:40:59 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-6ed16ce246bso23303836d6.3
        for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 13:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746391256; x=1746996056; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXxJtyvGot6HJbUxi0ulWkcHmKm54VWCVqBH5FJjijk=;
        b=DfhyqcMSjVhPVj3CuyDTVTY1a9/pyyM492zgsKuEFg3GZr8UWtwIXTfOpktpnuF2F5
         M6PiJ3kKy9lSHNvxliRBrG+OGMjkN/9iur6oOzAuo76f7Q/qcm25wbE5lhXlZEPVP4Fe
         P+bdJ2PlXlOJajxlHoSCuYZkXPeuRs9xp+YpmpVSB6i3b95hJsX4QQT5mOP5KovMX6Y9
         BswZMA7rxU7RiT0Xz37YP3Kd5UF4l4tjMNWLuTlfY31ljfF54/X+MUhrytHtbCrN3bTU
         FC5J968Pi9J9nyT9lteabPAghKwGf1IIwUfksY0Gcom4JbR5PGdbBPbTI9sKxGM/IcPz
         lJOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746391256; x=1746996056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cXxJtyvGot6HJbUxi0ulWkcHmKm54VWCVqBH5FJjijk=;
        b=f/ICUHHdZlcELka3nxSaltK0KXoRZNOMt+7tfEW6seNg6WtBOjofoTwV+CUUhyqBZM
         yJeKWJUCOJd0d7fkI9PZaYvNoYhI7XmIeVNrRA14D66JdsMeQnvUaB6VQO0Eoc1bOOGy
         kd5K9E2DvhO8BOrMcQ2NUdoJrN4zF/imVUzweeUsfJ0sAmSr4Ry10wwzE8S+aGghwSZ0
         w+G0M0D4STzslT6CZVYGExpzwnAhyx4pL7+1Ko7yRGAHuNnw3kD2qinnDkw0ykOGPNH+
         I9DX//4lRwOrRWG2Y1ZdmPBOc0t8riQZtRqVdTz818mgNsCEiPDZX65E5CsYIw20AcNf
         8rUA==
X-Gm-Message-State: AOJu0YzqveNYaQNmOWST3G1x4Zt5f6vMtqovKTt1QM9HEOP6mJX9TP9o
	qZ5zMcf73CD35JZ0l+Ao0oWZBCSCiWPpPJvhu8wj0DvC2FqDWbFtiOhsdg==
X-Gm-Gg: ASbGncvB0AVPbkHU2+dc1zeIUTtx5NAq0yf4PPVZmQ+bM5zzV31xooJY7uM2Pn0AGdO
	9E2cvN1wTsgp6Qrkf7UsnU2tc2ki22z8dsyiivlM7RA5aTYDyZv6KieS2RvA0iA2MkIAr+RLXe1
	rBqKZgEd4U+sQtR/E5vG4Wu71/paVUllvk7tqYVab+IcEIFJc961RpI0s/oKHt3X++h73DmrHw6
	klr3QsDrhXIbVVszjVaup/2nqwpgEORTCHh2WeupUgmbhkQx6bRG6CYkxzZeB34B2+5tB4zL8oR
	m2oTCYwD0fsIBh/oL07MHnMRffrXOTW6+LEBPBozHw7uo2kwiClRTEnTP5/Vaf0ZlzPnHF2UcJi
	/8xfDnmmT2lJfLKQ=
X-Google-Smtp-Source: AGHT+IFX9vMTFxIiEctPJs7CoAN51UPQJJgA2OWsY5C5sbMOHT2NenXH8JAv6Nc+cQKxpNnAmbibUQ==
X-Received: by 2002:ad4:5c4c:0:b0:6f4:c237:9709 with SMTP id 6a1803df08f44-6f528c9ca62mr102800546d6.25.1746391256486;
        Sun, 04 May 2025 13:40:56 -0700 (PDT)
Received: from aford-System-Version.. (c-75-72-162-184.hsd1.mn.comcast.net. [75.72.162.184])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f50f3c3892sm46286516d6.34.2025.05.04.13.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 13:40:55 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	frieder.schrempf@kontron.de,
	u.kleine-koenig@baylibre.com,
	aford@beaonembedded.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] phy: freescale: fsl-samsung-hdmi: Improve LUT search for best clock
Date: Sun,  4 May 2025 15:40:42 -0500
Message-ID: <20250504204043.418924-3-aford173@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250504204043.418924-1-aford173@gmail.com>
References: <20250504204043.418924-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_134058_087993_3F2D6450 
X-CRM114-Status: GOOD (  13.13  )
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

Searching the look-up-table runs so long as the frequency in the
table is at or below the desired rate.  This works well in most
cases, but the next entry in the LUT might be closer to the
nominal value than the lower one.  Add some logic to check
the higer value is any closer to the nominal value and use it.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index a081f07681db..191c282246d9 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -510,7 +510,14 @@ static const struct phy_config *fsl_samsung_hdmi_phy_lookup_rate(unsigned long r
 		if (phy_pll_cfg[i].pixclk <= rate)
 			break;
 
-	return &phy_pll_cfg[i];
+	/* If there is an exact match, or the array has been searched, return the value*/
+	if (phy_pll_cfg[i].pixclk == rate || i + 1 > ARRAY_SIZE(phy_pll_cfg) - 1)
+		return &phy_pll_cfg[i];
+
+	/* See if the next entry is closer to nominal than this one */
+	return (abs((long) rate - (long) phy_pll_cfg[i].pixclk) <
+		abs((long) rate - (long) phy_pll_cfg[i+1].pixclk) ?
+		&phy_pll_cfg[i] : &phy_pll_cfg[i+1]);
 }
 
 static void fsl_samsung_hdmi_calculate_phy(struct phy_config *cal_phy, unsigned long rate,
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
