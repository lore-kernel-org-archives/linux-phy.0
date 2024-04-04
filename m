Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D89EFCD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 12:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o88hjUTU4xN4wrQbA15VaooqkmVUA/0lw4+A+Bcy47Q=; b=xWdoT+Y4PHJcyf
	Ilm2oQYUmXrhBzkI7QzKcOEXsT9aEZSdUQdYFXGL+uCJwu3ajy7UahOh3UxQahhBPkyCPQ1TpR0FU
	JnZR9pR+cVGlyQ4dHJfu/EQ5bW5G+UCwspXqWV/YcSLV829w8WCaQbnLxU1qxpgGBHQnN4P+QPlsp
	fMeY/ggYajKBxwWpIuH29tKyKKwVwO022kmIL0nvvU6WnR8Rikb3U68dQ2yr0CJ0snN1XAz0LnbUH
	YEGQodXSjw4RrupoGF3u7TRs59cqFGKDrqJyyjemCsQkwHuJySw5u2UHKfNMuFIwIpVAEkHKCpsmn
	nd+HVzP1zuNsVs3y5sXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBr-00000002bLU-0Nyh;
	Thu, 04 Apr 2024 12:27:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBk-00000002bGg-1GDb
	for linux-phy@bombadil.infradead.org;
	Thu, 04 Apr 2024 12:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iyUUQp6WOxRvluHXSIvI5EfrW3GeehtIyQz6Nkgdpu8=; b=CRKFB9TCqBb+cnkS3k3baXzBqt
	1LeE/IsdYWH1rsciVecI/s4X2pVhkYkiIVH/ygHhBg+7TZPowPQt7u0r/QEOwLrN1OSram+PXAv/S
	mrj3uM0MqnhS1ZpvEr+k09YqElFNGXKm8a3cDsOhnIt/KHMIfJNS9hTUxED2lV5fNvodppIUXrViC
	C7LFK1eV0P20GMJp6+P0vQkxFST0JsaHjhcEiQHRazRmEr+FMkb3SYq0KJcNkef49c3K0M0lPd1Cy
	776cyrZvUj0TqGS4rp2zrMwjqKiZMlLJN0ZWKVlYnlo3koX/PUdLjqDwZAEZnagscsWStevt9Tnc+
	4uMP5VeQ==;
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBg-000000052IU-1DXd
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:27:27 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4148c6132b4so12268255e9.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233641; x=1712838441; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iyUUQp6WOxRvluHXSIvI5EfrW3GeehtIyQz6Nkgdpu8=;
        b=wTupl8+q46RkAwTsYcpgpT0J5v8aZeWIQtrDhMBtk3XcgNXjU7J6ZtXhzVqz3wPnmR
         1dbvm4cYmLnqwBEdGoblRQKmKY+V0ZwGmG7Fn2zroqdSgNuWYGMM0LxRhPUGanKig+RM
         vX0QmYGicFI8dPI0v4LV5ATD1KAQxym1Jja+DEo8HU6ct8hhZX3b2L9yJDYXAhwD/MaC
         tiupDE8ehwaCwEDYKFr51BXLFoAcJTCy8gWf7i5wrPcTrvl33T48DHtZsCODhiNZoJOS
         E87EW60xXs6th0rBo2mUfGqgXW14Y7j25dWGmM9kXp1BK71UToqZPkt6GGxlGs11tkRO
         GlUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233641; x=1712838441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iyUUQp6WOxRvluHXSIvI5EfrW3GeehtIyQz6Nkgdpu8=;
        b=iXYGmkhBHZPTyCPgSJVX2pFASymqZd6GcqbUY/rfmm6fzYg3ZdRzp5YVezfOwWwfh4
         l6kTdIbwWioaNas+fTY5nwdOBC5m1qmuNiHR5KvfSeaz+uEgHBmm4XVrWAwHjMTGfmzJ
         VuZkpNLeKhAmtiYHl2uqVRX9TFs4t0zKIGb1wmfMqVH1h3cphKAyqfCBFt0ONrt0pgAI
         eRGU2KuqDRRVL26dmhOzOdYBLr3Duku/t2gz7zE7oSvSYr+42fl2sXPu5hdLENkvydXq
         6IL7NAodE3tmgxJmN5l+6soINl003ug4M49emQmBRANtXt+zsD+J+t2ysptLlUuX24j9
         qlAw==
X-Forwarded-Encrypted: i=1; AJvYcCVs38BUv9XMG7pSWEbb/hTpPUleIhFQ/ALY6yDpfYw/K/HSoZEDtxgOLdDUhCpf14ZYZJWaG/1CX0apmpO7xM6Xpx8c34SHr2+dqPV3lw==
X-Gm-Message-State: AOJu0Yx2oH0jTsj5g4s6caeRud6UkIGT7gQIAXMwKfK7bm9wdpfX6hYP
	o9cw0ouLji2Ruy9x8lnEeLpk1LMOEgiWIPEMdTaO8shsFfnfj/W4hkuHrOI4n5k=
X-Google-Smtp-Source: AGHT+IEMnaWns3sPAMJ91nDBk0kRT98vdLD6EXIhsFu+f4lEueXgTLnJxBfN0OJHTHTi8CWqnrfg8Q==
X-Received: by 2002:a05:600c:1f84:b0:415:6cd7:9967 with SMTP id je4-20020a05600c1f8400b004156cd79967mr4750373wmb.10.1712233641601;
        Thu, 04 Apr 2024 05:27:21 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:20 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 12/17] scsi: ufs: host: ufs-exynos: Add EXYNOS_UFS_OPT_UFSPR_SECURE option
Date: Thu,  4 Apr 2024 13:25:54 +0100
Message-ID: <20240404122559.898930-13-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_132725_314601_960ACD4C 
X-CRM114-Status: GOOD (  11.08  )
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

This option is intended to be set on platforms whose ufspr
registers are only accessible via smc call (such as gs101).

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 4 +++-
 drivers/ufs/host/ufs-exynos.h | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 734d40f99e31..7b68229f6264 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -1186,7 +1186,9 @@ static int exynos_ufs_init(struct ufs_hba *hba)
 	if (ret)
 		goto out;
 	exynos_ufs_specify_phy_time_attr(ufs);
-	exynos_ufs_config_smu(ufs);
+
+	if (!(ufs->opts & EXYNOS_UFS_OPT_UFSPR_SECURE))
+		exynos_ufs_config_smu(ufs);
 	return 0;
 
 out:
diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
index a4bd6646d7f1..0fc21b6bbfcd 100644
--- a/drivers/ufs/host/ufs-exynos.h
+++ b/drivers/ufs/host/ufs-exynos.h
@@ -221,6 +221,7 @@ struct exynos_ufs {
 #define EXYNOS_UFS_OPT_BROKEN_RX_SEL_IDX	BIT(3)
 #define EXYNOS_UFS_OPT_USE_SW_HIBERN8_TIMER	BIT(4)
 #define EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR	BIT(5)
+#define EXYNOS_UFS_OPT_UFSPR_SECURE		BIT(6)
 };
 
 #define for_each_ufs_rx_lane(ufs, i) \
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
