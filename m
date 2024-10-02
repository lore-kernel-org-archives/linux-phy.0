Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7F2DCF31B9
	for <linux-phy@archiver.kernel.org>; Wed,  2 Oct 2024 20:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbGimrSlv6crqZgYYJAs8/hT/LUHQz+4uC82RN/ENMc=; b=ZDOlIMGhz5WKIx
	fDOZY3ONVxKOFowYXf3M7nvQWWz18xtKI6YsVei+FOuTgRMAOK6dS8974CbuZmmozdPeFP1KpFse1
	i7ZV0oXYUVpRETScnKyLafo6hiEBVHbnoqmd7psSkZplsSnNxQRfsDJlPxmoz5Qauabkdk1QXp0C+
	mDFG6u2CBz+G/FoB+tgk/OvFSrFvCVhJagxwi7zR/1NyWZyvNrscNS9Fj0fIp5SS7oOBj9QzDeMxq
	wx0hGIUha8oMtFQztwD3zu/vIgYl/vE0QAIgiTctWoqAa+3o/t19IKCxYGBdn5egpOFRgoZJ6yWqG
	DXISOMrFdC/rdPuyZu8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5qX-00000007OPr-2Tb7;
	Wed, 02 Oct 2024 20:21:17 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5li-00000007NpA-2QSn
	for linux-phy@lists.infradead.org;
	Wed, 02 Oct 2024 20:16:20 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-42cba6cdf32so1345635e9.1
        for <linux-phy@lists.infradead.org>; Wed, 02 Oct 2024 13:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727900177; x=1728504977; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkN9NRYd/noXKwaQRmVmIrVpTjpJo3NEqWIDvcUXohk=;
        b=psrp5afpGznNGkBqoBWA0Lr/AGwZKPHnO6MOGY6LlOuqBQKXmyEqC2DU8Z19wdVlgc
         lDhDqnSnXyMY5d+5XAxnctYQH9m5l9Z0aRwZYZQ/i/J11kIJZUv5HP/RnCWmU6/SPXCg
         VXssnv5yURnMKvmeJmxmHWj9Z0F221vdROM+PGVwTEISsVMnW7wzO03TfhlW1zLqGlnS
         hLfcIpn/R6dr71ZVKgxElZDF8svYX1qPCgIiCJJbDMrkilN+EZANuJRaMr37tMMh+TS/
         IGsuPveSFEuqL/smI62MTBMzEEgpHOwLiC3kQKqjoaWD575H36OMymAKnC39uogfu+aD
         2bBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727900177; x=1728504977;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CkN9NRYd/noXKwaQRmVmIrVpTjpJo3NEqWIDvcUXohk=;
        b=HSRK0ZfAzMtCdv18lVWtib5g26UKXBU4yBLfL26p0rjESFQpqAMK0LsQ5I+Xe3JU2t
         8dB+cddwsK++jMsaoRo/gL5qO0eo4DWCk1cHygb3TM7GR3VthqjaozSSwl+NLDGK5nee
         egd5P6Ue0qPaX2VhWp1mwM3vifJhG/d2XyCYn7NokOpZdT+vlIlqoHQaKlQAj+ykPaLG
         pBcPPKxRdfMwHDOLpMCiopLsG7u3uhZhJTpQC6iUPV8VAUFc8myfoJFDo/5xTqbkWAKF
         4SbbCrxp0SpCu9qw07imlQZkcDfev5iTJ1CFhAcnd7Z2N3ZC5JR/n4aQJG83mRHK07qM
         EEUw==
X-Forwarded-Encrypted: i=1; AJvYcCUpn0txlixXNK+9lkAw5qWo7B3sY5H+qg1TWwXLRlFuMYyxXhVdHFFevizEzvKolPQ/FqU+PRJtek4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2KitlPxv03jomUp2Vj7T/JubG0f36q4U1UMZMChva1kGwUvqE
	mXytsFZk3/6TWeqXkSWlc1Uul/hmPmUml4uR5s1lAyNf2zzkxhQ4vHP/rVjeXC8=
X-Google-Smtp-Source: AGHT+IFwyFuXYth7A8vslCHMAnUaIkp4wEUm+Zkv+c4fkaTohWk+qBC9lfK+MVzuhuapcRpBsdVkkA==
X-Received: by 2002:adf:eac9:0:b0:374:b6f3:728d with SMTP id ffacd0b85a97d-37cfba07ac2mr2755315f8f.46.1727900176783;
        Wed, 02 Oct 2024 13:16:16 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.66.77])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd564d2e8sm14850600f8f.18.2024.10.02.13.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 13:16:16 -0700 (PDT)
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
Subject: [PATCH 3/3] phy: samsung: gs101-ufs: Add hibern8 enter and exit specific tuning values
Date: Wed,  2 Oct 2024 21:15:55 +0100
Message-ID: <20241002201555.3332138-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241002201555.3332138-1-peter.griffin@linaro.org>
References: <20241002201555.3332138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_131618_642220_7F87FAE7 
X-CRM114-Status: UNSURE (   9.83  )
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

Add the gs101 specific phy calibration values that need to be programmed
when entering and exiting hibern8 state.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/samsung/phy-gs101-ufs.c | 31 ++++++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/samsung/phy-gs101-ufs.c b/drivers/phy/samsung/phy-gs101-ufs.c
index 17b798da5b57..5363d8be6c76 100644
--- a/drivers/phy/samsung/phy-gs101-ufs.c
+++ b/drivers/phy/samsung/phy-gs101-ufs.c
@@ -108,10 +108,35 @@ static const struct samsung_ufs_phy_cfg tensor_gs101_post_pwr_hs_config[] = {
 	END_UFS_PHY_CFG,
 };
 
+static const struct samsung_ufs_phy_cfg tensor_gs101_post_h8_enter[] = {
+	PHY_TRSV_REG_CFG_GS101(0x262, 0x08, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x265, 0x0A, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x1, 0x8,  PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x0, 0x86,  PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x8, 0x60,  PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x222, 0x08, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x246, 0x01, PWR_MODE_HS_ANY),
+	END_UFS_PHY_CFG,
+};
+
+static const struct samsung_ufs_phy_cfg tensor_gs101_pre_h8_exit[] = {
+	PHY_COMN_REG_CFG(0x0, 0xC6,  PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x1, 0x0C,  PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x262, 0x00, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x265, 0x00, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x8, 0xE0,  PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x246, 0x03, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x222, 0x18, PWR_MODE_HS_ANY),
+	END_UFS_PHY_CFG,
+};
+
+
 static const struct samsung_ufs_phy_cfg *tensor_gs101_ufs_phy_cfgs[CFG_TAG_MAX] = {
-	[CFG_PRE_INIT]		= tensor_gs101_pre_init_cfg,
-	[CFG_PRE_PWR_HS]	= tensor_gs101_pre_pwr_hs_config,
-	[CFG_POST_PWR_HS]	= tensor_gs101_post_pwr_hs_config,
+	[CFG_PRE_INIT]			= tensor_gs101_pre_init_cfg,
+	[CFG_PRE_PWR_HS]		= tensor_gs101_pre_pwr_hs_config,
+	[CFG_POST_PWR_HS]		= tensor_gs101_post_pwr_hs_config,
+	[CFG_POST_HIBERN8_ENTER]	= tensor_gs101_post_h8_enter,
+	[CFG_PRE_HIBERN8_EXIT]		= tensor_gs101_pre_h8_exit,
 };
 
 static const char * const tensor_gs101_ufs_phy_clks[] = {
-- 
2.46.1.824.gd892dcdcdd-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
