Return-Path: <SRS0=OBTU=OO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 775D8C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 24 Sep 2021 13:28:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 33FB361029
	for <linux-phy@archiver.kernel.org>; Fri, 24 Sep 2021 13:28:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 33FB361029
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gNnWuvchcanMnfeVb/Mey2P0tUhqF+IhBYpTkMRstmM=; b=BXDgW4hu9kP1Yr
	YU8ca3/VKgNhkKpBf71VKyvbmIS+hHRws8Axm7v0ohnQyshr76YP51bdEvoqy5Hf/IKk0RZBWuBL6
	9DkUJWUzCwQouDbJfKZvpIF0By0PdQOEpeZBtMtBch+jvp+ngPxQ9hbbAJJrnibw+rAr+g9/eeIsq
	fFBTjQ3LdzwhY8+maQWtd0nGb1B6nMHCJG0qYQz430MmGbNWSmWNk3epsPsJ5zasooVgHf/Qdf5sE
	pdMkSgqvfQFvBgohlJkWQP2/bO96yJAhfZbKDSYXB5bXsz+Itzu4O7IRRO0ncc9jIemOCChwR90od
	2NEq4bLozqHd3UfDkSlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTlFR-00EaLr-Ll; Fri, 24 Sep 2021 13:28:17 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTlEu-00Ea7m-2K
 for linux-phy@lists.infradead.org; Fri, 24 Sep 2021 13:27:46 +0000
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EFE9B4079F
 for <linux-phy@lists.infradead.org>; Fri, 24 Sep 2021 13:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1632490058;
 bh=9lxNX9SoiwZF5dcOxctnI5jIG4IwRTL7ipvDb0MgSb8=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=v8CpYBEPpAENeXtFgA21wA/RtdkDHBM46CTyL+PJTmAzB3tqTLjRj+gFU8uv/A0uv
 8wIjIkUT/lw2VHeaWVQgROkT8UHY0uVGqjaay8dOF+71oZ8kXqeh5L6B9oy6u6RSGc
 re/NZCRX6V7nOPVqLYbHkCsReftHa/lufvPJIzeTgFMLZi3erkwAjhAu9K37J++BVw
 47wU3rvjM5AN5f85B4U+jPytLiTeGUEHP033LCWtwxvUAzM1ytCUmUlhMYFsL4neF+
 WJ0MFKnATiyA2D0qhMGIhvr9g1eNRBkCw1IfCNHl4/10F3unOa2A+ItEgBFZaIxZmR
 TI+aQl1iUlxjg==
Received: by mail-wr1-f69.google.com with SMTP id
 f11-20020adfc98b000000b0015fedc2a8d4so8148934wrh.0
 for <linux-phy@lists.infradead.org>; Fri, 24 Sep 2021 06:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9lxNX9SoiwZF5dcOxctnI5jIG4IwRTL7ipvDb0MgSb8=;
 b=z7mFvuyTEoP3oOp/XV0k2vaTpbuffx9XCMHBSkt/tfrY8AT12/J18FKjZmNFZJS2IM
 m4lXG1q+pEzViQK7yz1qok5PhQw1OKrxazCu75E9acsuUMRt332AeoLYMBrzN64AxMjx
 IOC/Nz7mLjCRiDoYJxhXJbFA47JndeNe21f6Mvgdbc9vXwAmdFApOdI05wBnZvo0ek3k
 vba3ICoEc/B+04ynI0+5siXPWNHVY04FoJ/DicqRBxJqZjUdLZBYGHSenrE87exje+kh
 B+WvZtYBZyrSJUSMMaDp3UAY6yw/HZMyBl3U4bAKi1+r6JB23THzreqV2fnl2x0KPag4
 XGgA==
X-Gm-Message-State: AOAM532MoA90UFc+9atjbf++7iKzEo82zGZmFnOg2SjG1qo7bYQOxcTK
 v5gGUMD2wNbsAtycNinjIrUH1iH4ZOxDa0XzUb85eWWb6eXSGN/fybk4SjPEHgzT1NRw8RKZw45
 WDPCrAqXjbv7LaQQiIKXAokfBRpVB6l5Ndpf08wYxsq8=
X-Received: by 2002:a5d:58cd:: with SMTP id o13mr11753126wrf.416.1632490058489; 
 Fri, 24 Sep 2021 06:27:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjGdcj1FCIMyVG6GWQ+ezHpaSa3jvvTO0U6+mzqQ5umN+Qve67heywragH63BpP0dQDzzy9w==
X-Received: by 2002:a5d:58cd:: with SMTP id o13mr11753098wrf.416.1632490058315; 
 Fri, 24 Sep 2021 06:27:38 -0700 (PDT)
Received: from localhost.localdomain
 (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
 by smtp.gmail.com with ESMTPSA id s2sm30386wru.3.2021.09.24.06.27.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 06:27:37 -0700 (PDT)
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
Subject: [PATCH 1/2] phy: samsung: unify naming and describe driver in KConfig
Date: Fri, 24 Sep 2021 15:26:57 +0200
Message-Id: <20210924132658.109814-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210924_062744_281248_3FBDE524 
X-CRM114-Status: GOOD (  12.97  )
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
Describe better which driver applies to which SoC, to make configuring
kernel for Samsung SoC easier.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 drivers/phy/samsung/Kconfig | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index e20d2fcc9fe7..3ccaabf2850a 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -30,16 +30,16 @@ config PHY_EXYNOS_PCIE
 	  This driver provides PHY interface for Exynos PCIe controller.
 
 config PHY_SAMSUNG_UFS
-	tristate "SAMSUNG SoC series UFS PHY driver"
+	tristate "Exynos SoC series UFS PHY driver"
 	depends on OF && (ARCH_EXYNOS || COMPILE_TEST)
 	select GENERIC_PHY
 	help
-	  Enable this to support the Samsung UFS PHY driver for
-	  Samsung SoCs. This driver provides the interface for UFS
-	  host controller to do PHY related programming.
+	  Enable this to support the Samsung Exynos SoC UFS PHY driver for
+	  Samsung Exynos SoCs. This driver provides the interface for UFS host
+	  controller to do PHY related programming.
 
 config PHY_SAMSUNG_USB2
-	tristate "Samsung USB 2.0 PHY driver"
+	tristate "S5P/Exynos SoC series USB 2.0 PHY driver"
 	depends on HAS_IOMEM
 	depends on USB_EHCI_EXYNOS || USB_OHCI_EXYNOS || USB_DWC2 || COMPILE_TEST
 	select GENERIC_PHY
@@ -47,9 +47,9 @@ config PHY_SAMSUNG_USB2
 	default ARCH_EXYNOS
 	help
 	  Enable this to support the Samsung USB 2.0 PHY driver for Samsung
-	  SoCs. This driver provides the interface for USB 2.0 PHY. Support
-	  for particular PHYs will be enabled based on the SoC type in addition
-	  to this driver.
+	  S5Pv210 and Exynos SoCs. This driver provides the interface for USB
+	  2.0 PHY. Support for particular PHYs will be enabled based on the SoC
+	  type in addition to this driver.
 
 config PHY_EXYNOS4210_USB2
 	bool
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
