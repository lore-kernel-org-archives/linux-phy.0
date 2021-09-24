Return-Path: <SRS0=OBTU=OO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9848CC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 24 Sep 2021 13:27:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A1B660F4C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Sep 2021 13:27:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4A1B660F4C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVkAxb7H66y90K7iga41o1VYQy2m5/5+Oyzl9RuQN/E=; b=tMqyLGH5SidQER
	Zk3WprQ0znpegYHZhmUYaaUzj5Nr2SETLky3dZuNVEGIU1fdZ+rMRPRjmuuTE2hGN4K37s40fN3dy
	kbVhotv0tNzikkqt0/cSzNCn/hPmbQHS3ak/7Aj9pyj2WZ/WMjejyttt+gB3vBEuFBFMxpUjSQ868
	lfkYfJSd4YH01ejsT8M78S2L+nP3JFKAOvjMtb3tEroLUQFSMPPNJkwbfoKib9AKkO+j8gafdLGoS
	jdW6Q3YLVeeKRc+Ak4FQATVP/p1kRUzVD7+FDBiu0SP+1jP07H6QDZAJgPRa1jnmJNYoTEQpMd3vx
	0nQfMLnwKiCpxAeuxMpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTlEx-00EaBS-ER; Fri, 24 Sep 2021 13:27:47 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTlEu-00Ea7n-10
 for linux-phy@lists.infradead.org; Fri, 24 Sep 2021 13:27:45 +0000
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2627C40820
 for <linux-phy@lists.infradead.org>; Fri, 24 Sep 2021 13:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1632490060;
 bh=Yduh3EuPKF8pEjpWRTy33G3o5bhDuVyJYzIS4FssiFw=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=ceck0YRo9yrTB1m86Phc3zWHRXquEMKT5qXI7OckV7hOJ+wf2n71K7xtm5PTzT914
 oRmuSx1Jyu2rTkp9Od8+8/VR3lMQML5bKoMD8423nfnmFMh82spjyegc2neqBvQku5
 iHjeCTckh6uxgCOFHJFPtnPHiKk7FSqJRiqd/OQSoukI3Rojj+DhTq+sP+N1RZN1Hq
 oI609QlNdocvCl265+/7fnU4MzCrwqcksiWlQUgv/4c5Ibrk1cmlBrH2bqKfTstWC4
 0UQH4VlnPVXwxf0mAtAUMWQbd/KYHkwLemW6gvTfE3MreJch0c6dXiOssgTgB/HlfR
 j8s3xmfF/07mA==
Received: by mail-wr1-f72.google.com with SMTP id
 r9-20020a5d4989000000b0015d0fbb8823so8042609wrq.18
 for <linux-phy@lists.infradead.org>; Fri, 24 Sep 2021 06:27:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yduh3EuPKF8pEjpWRTy33G3o5bhDuVyJYzIS4FssiFw=;
 b=vI4gFTLXwfMQHsOJGPkWTC0qzGEUNsZ0az4LpkQFpa4hg/LCy6Kp1A53ImaNE6W4U7
 kd/q7w8nduevjxGUV9Tt3gQA8KRU8+RG4zw65ajLBEzpYVwP9ZQePJdrzRPNY6a1Mq0F
 IKQqnbiZCyAE/5ZI4whJAPLmVbbHwoFi59qt8x+2UbO1G8Uozeh0Us4vxkfxPLbHIYt6
 UXWeFoK47a0vb6qSBsT65uqichS9oIfHnG5KFT4dxD3qMwLmf2A21M61IHbgEJWxWuBh
 0gg3ShxWbqpCF7sGoCZJiUaywjzMrpwFyq5XdVseUqKsMP5CahLO1bBpEEhGrt1ilg8R
 l/Sw==
X-Gm-Message-State: AOAM530IKLkbK6dlenLqEDTbh+IfV4Goxv2Wl1MxYAsvMFr+v4F075Vi
 xuHiER1w4XHC67Qm2hc0ZjkUU5ktNJzx/wegZRrT/Kg7URwb+VlMUb42kfMPsETSz6tZ+6L84rl
 COXHpWAXL4uq5IVMWtAFR/3kddSkXusZljwEsOY44uVU=
X-Received: by 2002:a5d:6545:: with SMTP id z5mr11455579wrv.51.1632490059711; 
 Fri, 24 Sep 2021 06:27:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5S/UeS56vFgo1ZCJhSJ4phgoKPfDX2Y+OA8xv8ibUzmyYGx+lfLXUHLOGyC+XxWzMQL4icA==
X-Received: by 2002:a5d:6545:: with SMTP id z5mr11455561wrv.51.1632490059558; 
 Fri, 24 Sep 2021 06:27:39 -0700 (PDT)
Received: from localhost.localdomain
 (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
 by smtp.gmail.com with ESMTPSA id s2sm30386wru.3.2021.09.24.06.27.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 06:27:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 Chanho Park <chanho61.park@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH 2/2] scsi: ufs: exynos: unify naming
Date: Fri, 24 Sep 2021 15:26:58 +0200
Message-Id: <20210924132658.109814-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210924132658.109814-1-krzysztof.kozlowski@canonical.com>
References: <20210924132658.109814-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210924_062744_252062_795B0DB0 
X-CRM114-Status: GOOD (  12.09  )
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

We use everywhere "Samsung" and "Exynos", not the uppercase versions.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 drivers/scsi/ufs/Kconfig | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/ufs/Kconfig b/drivers/scsi/ufs/Kconfig
index 565e8aa6319d..af66cb3634a8 100644
--- a/drivers/scsi/ufs/Kconfig
+++ b/drivers/scsi/ufs/Kconfig
@@ -165,14 +165,14 @@ config SCSI_UFS_BSG
 	  If unsure, say N.
 
 config SCSI_UFS_EXYNOS
-	tristate "EXYNOS specific hooks to UFS controller platform driver"
+	tristate "Exynos specific hooks to UFS controller platform driver"
 	depends on SCSI_UFSHCD_PLATFORM && (ARCH_EXYNOS || COMPILE_TEST)
 	help
-	  This selects the EXYNOS specific additions to UFSHCD platform driver.
-	  UFS host on EXYNOS includes HCI and UNIPRO layer, and associates with
-	  UFS-PHY driver.
+	  This selects the Samsung Exynos SoC specific additions to UFSHCD
+	  platform driver.  UFS host on Samsung Exynos SoC includes HCI and
+	  UNIPRO layer, and associates with UFS-PHY driver.
 
-	  Select this if you have UFS host controller on EXYNOS chipset.
+	  Select this if you have UFS host controller on Samsung Exynos SoC.
 	  If unsure, say N.
 
 config SCSI_UFS_CRYPTO
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
