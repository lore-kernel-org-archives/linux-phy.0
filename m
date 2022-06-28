Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB42CCCA47F
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Et4NLBCpf75cG3CnkpeS2B91l69CXCOJ/e7lcjFG/YQ=; b=mRxwvGlAGGTRkk
	M8vXepIDC/9WBKaNzQqp1Nqt4yLN4z3DvEAtIChQiaabTBlxRsn1KRSasmhV7COMFKa4VM0TAZegq
	fE0YEAvSwYGsj4hvpKy56+KdcLkYHNTnCXy/9SUYTvbWGHaCOya/uVQfl6jNgOy6ahy5iPl54w7ti
	CNI3d8nQuOT/AX6Zoj1wk29CigKyvRtcr21Ck4fCu/Bcp6jR13EmPqpIzGGOJe9Kb5FAT/MXow0fD
	gnoRhSb9Jp2gVhdGg74DtUR5y+P9kalDWwYp9Yv9jCE+AbWq27ts/qiYKj/30nBqFtIdFOV+CYHW4
	yjMNIfuUhlWWSrqY/sgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aau-006Dp4-1M; Tue, 28 Jun 2022 12:45:28 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aao-006DlE-Mv
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:23 +0000
Received: by mail-ed1-x534.google.com with SMTP id fd6so17391007edb.5
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OC/Q0ZHSYivrSfFoAF8zUByQ32IP+ZgOcCZoC0yMQAM=;
        b=MHL34CI71jL8wxvfIo3kffmm6/Bzw/zxa4CCePVNSukTsqOG4zJCqZbR4IQ1WfSXda
         23Cw8J9CMbGMEBKxBYOSkHrh3hqgyXrY2wjsTguu+bx9/hVf6/bJrHYeZXa//qVQAvqV
         ixOQEP8JPKMDauiCghdNu0zNGLPYfXSyVxJzTG0BI5K63EPR/gAhM5dKetJkrJmW/fR9
         xXurrBhZHaOiYR2QC+De+xa+UbtcJk1Vv+rUmi8kSfu/3lv0L0DqWmkiwQzRfrTednpo
         fLbWFah/u1N234w0DqNvtk3UE/yt7Eh6z8M3ei1Pd0f5l51wej/FKIhVZyDeaIarLQh3
         r7gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OC/Q0ZHSYivrSfFoAF8zUByQ32IP+ZgOcCZoC0yMQAM=;
        b=S+ulXWIlv7Nxz3t7eet9yxkIDwOTUxpdvnEcyLp1JnC5k2kZnTXC1lD4YPRYk6ZU6g
         Xrdyr3KeM8LxcS4H6Sg0SbIBshl6O9SZf35bo6GRoPxjzCYS8aE1UKYtSE7lRo/YUuwZ
         EBIQI6v8tvZjMJY2BHv+O8zZv4+qYdlf82KL/ssN1FrpyIhTm968u+v4cOUy4IxcBvLe
         T+Qktw5vi+SPeNuhbb21Ae5l023Qfwvw+5ZDrUNH3+/oD5U+XUdBy9okVDm6KKR5xgbl
         bHih3vCWsQMrNgbhI+Ya4reTeZu9vhohWZwRqXQiOfnqKsVl74zyLUp5Z78E6Crnucq4
         VpIQ==
X-Gm-Message-State: AJIora990xTdS1InoTwntCXBLE1+tPrBaOOdYh7Tc1FSXdmVYYEgdkqL
	JteRHC96PZgPJ9+zSK5pkwQz9lo9o4o=
X-Google-Smtp-Source: AGRyM1vqBRQVrT6TUJUFUK5kgHWfZrgH/Pox3xpk7zeJlTAV5RZe6o1hdfy1TmD9IPFIQ71bSiek+Q==
X-Received: by 2002:a05:6402:5306:b0:437:8bbd:b313 with SMTP id eo6-20020a056402530600b004378bbdb313mr14675188edb.123.1656420321414;
        Tue, 28 Jun 2022 05:45:21 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:21 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de
Cc: linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	rtanwar@maxlinear.com,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1 5/9] reset: intel: Allow enabling the driver on "LANTIQ" (MIPS) platforms
Date: Tue, 28 Jun 2022 14:44:37 +0200
Message-Id: <20220628124441.2385023-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054522_793066_83330E65 
X-CRM114-Status: GOOD (  12.83  )
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

Lantiq MIPS SoC use CONFIG_LANTIQ. Allow enabling the Intel GW reset
driver there as well so we can get rid of the reset-lantiq driver in
future.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/reset/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 93c8d07ee328..68a5ea44612e 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -84,7 +84,7 @@ config RESET_IMX7
 
 config RESET_INTEL_GW
 	bool "Intel Reset Controller Driver"
-	depends on X86 || COMPILE_TEST
+	depends on X86 || LANTIQ || COMPILE_TEST
 	depends on OF && HAS_IOMEM
 	select REGMAP_MMIO
 	help
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
