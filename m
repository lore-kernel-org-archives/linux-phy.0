Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33C5EC04FFE
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzvVbd4A7YXAhCmVYUaiH+Z1omTdZE6Ceu3BlLWMWAE=; b=UZZbd/sKHpci8z
	GFqmuxXlWo3BAZSbTGY6p1rbONmBAlUbzn5B9eKRMRbQBo/7XnM7dEdvG5Ivd9gcBZAKPOaVSPPfh
	i4CwwJA0ctABMLLGWqsrt/dCaQLnJ71dcaKONyj4TggRePx5QnqBBbrCI7FSLxkuGXoq4dDOKEybF
	g5wif8eSAgwZia9APsrU9pkEZoX36m99A2+5GWboLuOCwLFa6prGl6CU5k1aql/sDKC8zdDwGSbA2
	xxZvIo7bHL/+2hiEq9A5L4fFKSjM4cvcYTxrdJYyiX8ZPZEv5mPRceKMwtMk4xJUi095dfIHV6Qs5
	a1jNPhuvBf96xj/gtnXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN6r-00000001TLd-0zHq;
	Tue, 23 Apr 2024 20:51:25 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN62-00000001Skc-0ZZo
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:36 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-41af6701806so863235e9.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905428; x=1714510228; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cGiBT+3rLHUSe0fCpI84iZd1Y9xr9GwhBK0cp1D0rYM=;
        b=GL+XumlgWoder4dCIgzZYtksbOxyIA06FPRmuU1Ntkb6rc8mlybjc9XpAegspLhyMi
         zz8wU4FeB4K9NHFOJLpmyQxFCATfkW/bYdGKiQ0IQrg6v9MAwt0DdXe5VlEXVtIgY/OW
         d04kD8jpGPVn11WZZ59JP795ENCdgFJuf6EJlom5cxyFBlmNgE30LO5wXK4pTu4a17vo
         egyPK88wusuDdOh8Uf/T68df27SvRFqyfIGOhd0v2PhLR8/EiIL9S6llJqiMKX1SP4Ag
         lhg969Qy77Y7GDGoW7akyh4RQFM0zcRcEm7kFUk5nrYShoeSEZZir2caPHAOsRprD/ni
         qL/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905428; x=1714510228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cGiBT+3rLHUSe0fCpI84iZd1Y9xr9GwhBK0cp1D0rYM=;
        b=cULq1bpWzqhFunas8aMLamfUfJ4r1mcpey8ujePZ/4dt/EfvV7mZ3/0Dpv6xKulwXY
         2utWYyQn8r9N6P2iPtObTd89DIZoYJ9AATYeeq4ZFr/qHlfiXKWq9vxk7ayt4lG9BQB3
         vmd6Q5UJJVLpRaokFsQs0a3apwuaqBWgxpYExgU6lEDBuYyt924VutY8nmCP0c91lxnk
         WBaBHivH3dZc+LGZNT2osnnB5Gq6vJXOiloxziOqgbvTiy5Rs3fiJDVAgJXlY7WqYFgH
         wxtQY2F065iXP0plaxjX0ellnhIUrYL6bUOkWqMnZiwcIpwDic2jFUhiHnlmfGvCacP6
         x4HQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4foKKOHzwyhmxLJJigJ+sTAo9yBX/5uYJ5YPNGJgV4FjSlniTnaM8Me23k5owHbPVZmiSrJpXemE0TBj/13m6t0IbbUA8bVMHPCsn2w==
X-Gm-Message-State: AOJu0YzOysXJxWrDFXwbxlyup1ZN7hmkNjCesfoRfcA9IOdAdvAbqj7J
	WWtZBmNKCKKcEp483pKvw9vBbpT9Xe20eotlfEyxsEY2W3d3cbtokniZMUZ/X7w=
X-Google-Smtp-Source: AGHT+IHL5mvuUbvGZCICktnlBYSl7cADXkVWAtFQLYnmF6fq8UpOV1K4GnltJAFNCSkRygYaDLCnRg==
X-Received: by 2002:a05:600c:3ca4:b0:418:427e:21f0 with SMTP id bg36-20020a05600c3ca400b00418427e21f0mr321679wmb.8.1713905428013;
        Tue, 23 Apr 2024 13:50:28 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:27 -0700 (PDT)
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
	James.Bottomley@HansenPartnership.com,
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
	Peter Griffin <peter.griffin@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 08/14] scsi: ufs: host: ufs-exynos: Add EXYNOS_UFS_OPT_UFSPR_SECURE option
Date: Tue, 23 Apr 2024 21:50:00 +0100
Message-ID: <20240423205006.1785138-9-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135034_245781_8FAF6143 
X-CRM114-Status: GOOD (  11.20  )
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Will McVicker <willmcvicker@google.com>
---
 drivers/ufs/host/ufs-exynos.c | 4 +++-
 drivers/ufs/host/ufs-exynos.h | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index e8d3302f6df0..66e52c3607e2 100644
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
 
 	hba->host->dma_alignment = SZ_4K - 1;
 	return 0;
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
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
