Return-Path: <SRS0=ueBc=MC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7224C07E99
	for <linux-phy@archiver.kernel.org>; Sat, 10 Jul 2021 02:34:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA2A1613B7
	for <linux-phy@archiver.kernel.org>; Sat, 10 Jul 2021 02:34:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BA2A1613B7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsvvQcXe1KCTKh+YVfkNKdcwCVsfRU4drQMv5KZiiQo=; b=WjweXkqHikaGii
	tjmc8I1GN8er2j3yJRSj7sl57y+w5or2FXofjwIHdQuAHjm3IIcVMC+I+vgR/7zZpz0TaVkTsHuP9
	HhKWqW4ra5hMG9JEJ5F7dXUUE+Kzjzrii/2tpCxbgz01IyDgRoOcMayUq8smjZcTMKmpn0IkM7AF7
	gkQjU6e08n4Vj7yul3gZTM5SPUfT+s2/lDDsl7Svd+ww+sSH0MoiZ/orW4xqrvkUSC9Pk/foVcLKz
	g4OD2YRcE6ViaVh+6DWzZR7Qq587F0mnHnjzn+hx0keuLTJAwbfZzEAFxrz/cUMy7npyXV4aUKuTn
	DY4j0Rof71+dc/tU6NfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m22pA-002uaL-02; Sat, 10 Jul 2021 02:34:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m22hq-002pjv-Cr
 for linux-phy@lists.infradead.org; Sat, 10 Jul 2021 02:27:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1353A613DF;
 Sat, 10 Jul 2021 02:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625884021;
 bh=nro3MGa7h3qaKoTs4yw4efAa7zU3Ahe3U9SERvsOMXQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PZaRvaPjZgKB7LWVnHcqjfNykrKAhY5LsNL/tSs6RuyncCFhJ8Q+tObvKS8NcIafB
 cSNplMDAKLp7AH/mHUJ7WpAbHA4cbb5dmTiQ7E2kUjwSyCGUvGH9XeSlqL+GPnBJGk
 P+fEYcMBEJ28VgPxcpWrW/lOEXBCChuX/E1F6YHPq2EMmJhDYL07CK6Rn1rqLoWByY
 1Ja1v5uaYYQE7UHE56Y2aI/ffJ21Fwu2ugj7gJ19hYIO7lKqcvvYD8RLtpHkriR4Yq
 LNufWWGzs85++g6fgpHZNUPVaKd4XBFhIP2E3KCEYxvzkAjunjS6BcOWXVuFOb1dMq
 4MzLR3Qn0ZD2A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Rashmi A <rashmi.a@intel.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Sasha Levin <sashal@kernel.org>, linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 91/93] phy: intel: Fix for warnings due to EMMC
 clock 175Mhz change in FIP
Date: Fri,  9 Jul 2021 22:24:25 -0400
Message-Id: <20210710022428.3169839-91-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022428.3169839-1-sashal@kernel.org>
References: <20210710022428.3169839-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_192702_492333_24EA8D2F 
X-CRM114-Status: UNSURE (   9.34  )
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

From: Rashmi A <rashmi.a@intel.com>

[ Upstream commit 2f2b73a29d2aabf5ad0150856c3e5cb6e04dcfc1 ]

Since the EMMC clock was changed from 200Mhz to 175Mhz in FIP,
there were some warnings introduced, as the frequency values
being checked was still wrt 200Mhz in code. Hence, the frequency
checks are now updated based on the current 175Mhz EMMC clock changed
in FIP.

Spamming kernel log msg:
"phy phy-20290000.mmc_phy.2: Unsupported rate: 43750000"

Signed-off-by: Rashmi A <rashmi.a@intel.com>
Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>
Acked-By: Vinod Koul <vkoul@kernel.org>
Link: https://lore.kernel.org/r/20210603182242.25733-3-rashmi.a@intel.com
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/intel/phy-intel-keembay-emmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/intel/phy-intel-keembay-emmc.c b/drivers/phy/intel/phy-intel-keembay-emmc.c
index eb7c635ed89a..0eb11ac7c2e2 100644
--- a/drivers/phy/intel/phy-intel-keembay-emmc.c
+++ b/drivers/phy/intel/phy-intel-keembay-emmc.c
@@ -95,7 +95,8 @@ static int keembay_emmc_phy_power(struct phy *phy, bool on_off)
 	else
 		freqsel = 0x0;
 
-	if (mhz < 50 || mhz > 200)
+	/* Check for EMMC clock rate*/
+	if (mhz > 175)
 		dev_warn(&phy->dev, "Unsupported rate: %d MHz\n", mhz);
 
 	/*
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
