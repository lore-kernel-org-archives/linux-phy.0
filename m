Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E54D3A692
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 19:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RArAzENJhWcDhu1LIJA1SZ0nEIm4sGFcBOwDpsBXcxc=; b=BAY7vS7Pk8+KaP
	f4bQMZcRDDo9rIyEi9rTPKKM8wNrsYjUMO1Ril+ro6rwiNmYiiflkuBhbH7dsu1RAkYX0LxRMcIMV
	598GhA/Tkm1NwxXEeEKzkXF3bgGBeLxIKBPF/NcEcMOfE2K83hWHQ1aoZy7bjz3pfUs6fFH0TK2b7
	mnxYzL5v9AAet1REhyad9YWqMA3yWob4CqBMlvsxpJwulGJXcYa5KTwRE47nEzyCsPAt8bBngbXNE
	CYLXjPH7IiLAReX1ZxxlkTdBx41dRl6zBprx80TdZ86BotBRy/IlQvXiF6/BI4UmP2Mv0gBI/kU1g
	9QSao1Ps45A7kbF7R+6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5roQ-0000000Fela-3lRJ;
	Tue, 29 Oct 2024 19:23:30 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5rmE-0000000FeNf-0uCr
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 19:21:15 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4315e9e9642so53267115e9.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Oct 2024 12:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730229672; x=1730834472; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x0XI8AhmhnWxIwBb5nhzbNedpBYemfsEhJh3VU8fjT4=;
        b=w0X0RTejWYm238lAxaUAH4W7OhJnPUCB/03LLdU8WfuBuVc0ePH2bvWu31l9lcqTVu
         Z9t9remv7GSAZZmjw6HgooM59Nf1yeRsalzoJ59lnKuHFvjmYQq8EP9pK5T2Fr4Jo/JJ
         ex2+nfApPgqxXOr40qP4Alq1t/vLCkYv8laY3cZ2256OuGu/NCg3IbEsWO5z5HOamXl7
         mYkLLJaW5xvg9mqHMaPasEU4demZkN5Vaywnp6Y3IUcsldMmY8j9v+2bodW7tTztz7nU
         xUgWdjNtH9x1TbSz4emBgJX25sSeTnCtAwZk8uRG3lekJFZ9EkhrI7rT9OptbHpViCnt
         MYuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730229672; x=1730834472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x0XI8AhmhnWxIwBb5nhzbNedpBYemfsEhJh3VU8fjT4=;
        b=OPmpAtw47r13QxaCpqJKILq78gNmmsnz5HYRFNMjNi/HfmsqJb7nFsc9uhrsTp1WIq
         wLC4+BRfNGbPjMe/XDea/JF6cJCTb41qQ/Ss+qFf9sYGNqw/K4Ol5j/VW55CUe5vMV1n
         I3+k80wuFKODUP+9K3x97fE4K+YPcu87+NhKE0ot5hU8B22UXMlE8k8ZEmPSaPTRCdst
         XhUUkkmFxd9dvjZLnS3ktTdWnE4FjUvwD62GxAZ2RjCyWnaZ2QiBFSd2yDpt9G6tMTj/
         E4JGYjmZt7kjzu2wkyFEiLi/aUvkp8rd4ncuhlwIqpSJoBsJDH0zvq6hi4StQukyJ/Yy
         YrCA==
X-Forwarded-Encrypted: i=1; AJvYcCU6CSrVIkcpV/0FLPnvSWORPBwtuDA0M3p3yYwg7QI16wbaTvhLwuY+Fm+ST+S6FNWKeR70n0+27lg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxkZb+bpA9PU9GXVHPOGbeW8HIU3YHtVfD5uF02jyUf3g+ZXOD+
	jI6yqUwp8Zb/UrFXaIhru4sjy6MrwmIsH8lkXCki6wvjCKMSei9lU0KvOMba6NzZnY8cjvf4s10
	TxSk=
X-Google-Smtp-Source: AGHT+IGHMHqNaQuwakaAsQmPTNJ5IJ7w2nk9odL/D7VFnJmp9SBayW4GuwAbU+nObFDT/w1xv3DyDA==
X-Received: by 2002:adf:fcd1:0:b0:37d:4cd5:fff2 with SMTP id ffacd0b85a97d-380610f4961mr9250210f8f.6.1730229671917;
        Tue, 29 Oct 2024 12:21:11 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.65.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058981ae4sm13436572f8f.0.2024.10.29.12.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 12:21:10 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com
Cc: tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH] phy: samsung-ufs: switch back to syscon_regmap_lookup_by_phandle()
Date: Tue, 29 Oct 2024 19:21:07 +0000
Message-ID: <20241029192107.2344279-1-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_122114_283244_5DCE725D 
X-CRM114-Status: GOOD (  12.51  )
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

Now exynos-pmu can register its custom regmap for gs101 via
of_syscon_register_regmap() we can switch back to the standard
syscon_regmap_lookup_by_phandle() api for obtaining the regmap.

Additionally add a Kconfig dependency for MFD_SYSCON.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/samsung/Kconfig           | 1 +
 drivers/phy/samsung/phy-samsung-ufs.c | 6 +++---
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index f10afa3d7ff5..e2330b0894d6 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -33,6 +33,7 @@ config PHY_SAMSUNG_UFS
 	tristate "Exynos SoC series UFS PHY driver"
 	depends on OF && (ARCH_EXYNOS || COMPILE_TEST)
 	select GENERIC_PHY
+	select MFD_SYSCON
 	help
 	  Enable this to support the Samsung Exynos SoC UFS PHY driver for
 	  Samsung Exynos SoCs. This driver provides the interface for UFS host
diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index 6c5d41552649..8e9ccd39f97e 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -13,11 +13,11 @@
 #include <linux/of.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
-#include <linux/soc/samsung/exynos-pmu.h>
 
 #include "phy-samsung-ufs.h"
 
@@ -268,8 +268,8 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
 		goto out;
 	}
 
-	phy->reg_pmu = exynos_get_pmu_regmap_by_phandle(dev->of_node,
-							"samsung,pmu-syscon");
+	phy->reg_pmu = syscon_regmap_lookup_by_phandle(dev->of_node,
+						       "samsung,pmu-syscon");
 	if (IS_ERR(phy->reg_pmu)) {
 		err = PTR_ERR(phy->reg_pmu);
 		dev_err(dev, "failed syscon remap for pmu\n");
-- 
2.47.0.163.g1226f6d8fa-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
