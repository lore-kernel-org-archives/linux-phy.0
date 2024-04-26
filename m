Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FFE9C4345F
	for <linux-phy@archiver.kernel.org>; Fri, 26 Apr 2024 10:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTpxDMwEUduSnAETw4e0EOlFVpISBxk6hiR9QT6wUTQ=; b=LwLgI3NJYorgEE
	uPPtYymtIG2C8lovJZ8YEtlcLSqAZcIP1NZFVBbiWxH7F0JeDlrv9IY/smRUzuumBdMZMUjbyaGUu
	v7aDfRcIwnFRu9hOx0Mk+2uQLErd1+hAsMddYs2ecHXWO3jfO5D6x+I3N3mPLg6r+pUfte8rIXSQl
	MLd7XMcEvpoaevn0o6A23mHdfT8PbPCbRTmwa1/InpND82KX8H/0zZkBkI8W6/xhNMKn+VdRmeaBV
	7icMvHikLBniTfSM+RyZ5g+UMtiv8tGZrAaB0nybO9okQIEw1TBdDTFWu3q6+p9GTxEpyw/JvFi6m
	AVRBHMxOkv5mHit21nJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0J1P-0000000CBH0-2pzM;
	Fri, 26 Apr 2024 10:41:39 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0J1L-0000000CBFm-2lcw
	for linux-phy@lists.infradead.org;
	Fri, 26 Apr 2024 10:41:37 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4196c62bb4eso15021435e9.2
        for <linux-phy@lists.infradead.org>; Fri, 26 Apr 2024 03:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714128094; x=1714732894; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InFnIY+p533KdBP4NACQo0sZ0V7hrv1Ldx+BeIELt2w=;
        b=ctAjxm8WfBANM2FCkHkttzi/0p4iNkpXe9Qbv41hH5J8AZz7wFut2Zgtn56Z1PFaKz
         rrBm9vuCTAPNdLNFCvHF2k7HeivdKpMIQsh42Cwey5ph/1QEMoT5ir32r1kDS1UI1nR7
         8UW1O1nzb7EBNoS7ANNnZYb0N5nm8+MHV8w2eX6h49UHz5skXDCNJEK8gHVCY5B8V+/V
         bGyY/ceOVSadu/Fe/4yuijj0sZMZ2C4PS2ToWoDS6FHSshFXPTjuaMbvfNSE325MKOof
         XT1/kXgNHFKDNHGfyC4zt0QEBm2fiwQMNU5WGBuxXp7kB4dsErzecYVzyUWE8FVD0pZ6
         BgDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714128094; x=1714732894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=InFnIY+p533KdBP4NACQo0sZ0V7hrv1Ldx+BeIELt2w=;
        b=BzwriemphxE65A3yomFV0HoXzD4h4EcMyH34bV5heX6ooloyzpXCvTvAZ9PPjGCl2y
         burj+2NYROflgnpWCRjqLI8+dtSOOPnKJb9AySdKIqGPg1UipnfZuFOoNxSWv9+Wnn4o
         4AIvSuUN+crkMqBgvsOKduLrdhQWWHhaipeE8WKL5AVXsJKZjL1HOY2BVkoX9QHS0yQ/
         bHFrHyR53/+jgS6ISpm37cZyFbtMCHUod+xozqwadWd9O57yT8ubQHB3xVzmu1jN2YNx
         s4Rf+RmcYZY6p9kFnpXyogBayRCkI444iKx8b2xeCp8wdjvAHnnX/WrvrdpcTlTHy+vX
         sR+w==
X-Gm-Message-State: AOJu0YyKfJxKf3qAAIouA8rBLjO/jX7MHxctia6nFnn+742qAmAAMDkC
	Z3h5EEgzHqRVG11+yLqSleXs/0H49Q7xD7zUQ0tHPDw237AxC+vqQ9E60ykFnS4=
X-Google-Smtp-Source: AGHT+IGzmmRcHxE+Swjg/ipOCc8mvlarSR/aWtWq2ae9ZhH60fFvijHKf6xSwV9kvZ7WJacR0rfTkA==
X-Received: by 2002:a05:600c:1986:b0:41a:903a:d2f4 with SMTP id t6-20020a05600c198600b0041a903ad2f4mr1778459wmq.2.1714128094263;
        Fri, 26 Apr 2024 03:41:34 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:63cc:9bae:f542:50e4])
        by smtp.gmail.com with ESMTPSA id o14-20020a05600c510e00b00419f572671dsm22035335wms.20.2024.04.26.03.41.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:41:33 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	krzysztof.kozlowski@linaro.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 1/2] phy: samsung-ufs: ufs: remove superfluous mfd/syscon.h header
Date: Fri, 26 Apr 2024 11:41:28 +0100
Message-ID: <20240426104129.2211949-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240426104129.2211949-1-peter.griffin@linaro.org>
References: <20240426104129.2211949-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_034135_727979_F2770D6E 
X-CRM114-Status: UNSURE (   8.24  )
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

mfd/syscon.h header is no longer required since the update to
exynos_get_pmu_regmap_by_phandle() api.

Fixes: f2c6d0fa197a ("phy: samsung-ufs: use exynos_get_pmu_regmap_by_phandle() to obtain PMU regmap")
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/samsung/phy-samsung-ufs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index 813bce47121d..ffc46c953ed6 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -13,7 +13,6 @@
 #include <linux/of.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
-#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
