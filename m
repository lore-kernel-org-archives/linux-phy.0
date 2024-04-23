Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5AD6C04FFE
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbC9QoQlnC0Q1OgzmaleW9xx93+z6mTylDbjvumTrgs=; b=KVsp0iEf7/ACUT
	Yaut6r8R70RwhIHXNofrjoPQgqmyClVP82JCOZnn26kGWfzTdks6lVu4cUqkzVoyhHoZvSMngxcCF
	lQrDWPM35iX1Do82alfJxGqMz5TTRkue/KRa9G2GYDgtw9Y3XuDE7UqW0KtQTSoXhFCbYBrK1W9nR
	MePlR/R51JTGLU15NBZ0/SXTRp1U/kyQ+HR8mYFLnVbk4DasVyF4wx5WX1w3h6H7RWiIFVWsdGIku
	tQ99v9Darrfkj2NfFR3gqNmMICLLNTiVvw8WhYXlyEUsIt+CtDF84Zf9FZP9yU5TGFbLCGHMzwQGa
	R+fMe9j7Uxr4/bG+skrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN6l-00000001TGO-0qzw;
	Tue, 23 Apr 2024 20:51:19 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5z-00000001Sli-2Tdx
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:33 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-41a5b68eceeso20031665e9.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905430; x=1714510230; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WCHTamsKWOa2PSWA2iiAOyEQMuVi7F/H9xo5LBfeSLo=;
        b=tUfZ0PUZsqIQ1hPR2YUYMm5/Afdu18m1GT3TUtJElTidDG9cKaANHZPdKZHadcdSni
         T4Pyyerpyz72la6fE0/YmRPMVBJ8fVmsE3QZ7i9OXZK5MQ9TGRFNfpfisGFn1y7rvQcg
         n0BSyfDtUiEJlyRXVaEnxc1ZLU5VBLPdr0E+dU6OXwvu30nkU86J46y3ncLoas36fWg0
         /g54CMdWIWoPWhe+OiVLCZLK/LHnehiwq+n7pIJc0dzIPZLwAkE6iJ7QbClUkmkAza4h
         HQSZoHeyGnQbaORe/KBWAG6CvSQHDI3znRRXwikiWQTDnB4OZ1tDiBBsq3Ax50D7vg5B
         KcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905430; x=1714510230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WCHTamsKWOa2PSWA2iiAOyEQMuVi7F/H9xo5LBfeSLo=;
        b=QNQE0cSjD4KbshWMd5Fomx1Czrfx3HtNzddjgy3/JT0fmShUgIT/w8srh2qv+h0d2D
         Ivm6r1g/LeaLLRDqfR0bKGKOeDYQ0YYntHxj4kGgjKqFu+CUjMf012+HKYCA6MSQBV+n
         GnKhoadttOK1BiJm2OSZx9t9lRc5v8mAzWaaOyCWuuxOht/7nGmBzXHP77GeUzvxFGGT
         Ar5n+PRvz1v0d2Lyf3Bwg+zGbLxRRzyM/e6dEvI9f+zD9kEtb8nF70TUwNCRm2BB0/j5
         9GF5ESGXXEKeXUYNhKxfuHNq7+7SY3kUDczCjoMm9WSX6B1e5CJ5ohCij8c1fpJS8Q0D
         mGvg==
X-Forwarded-Encrypted: i=1; AJvYcCUHbVveULrBVFOnNKfQDTS1eebRU3La+ZARUY0TprV8OvSLKGzzdBWqJS5Ects4JlgwOYBDifoDo3KiTCxrnF+qT5QDfEdH7t6MY5jsoQ==
X-Gm-Message-State: AOJu0YzhjZarG/NhXAV1Ga99wcwvvNqHVhuqKrbgZsT9nlPfELLclMzC
	zf9AJdczgWY5qvQ+xY6r4ScTptsuNA+tF/TJAYvd4pHpkKCbiXMGW3dw0BJcOn0=
X-Google-Smtp-Source: AGHT+IGaC6Vi359eexueF4iWi9nmGX5wxuCM1Fm/OruWavgWB268ofzG0ipJO8D32PKK0SvENR0WUA==
X-Received: by 2002:a05:600c:2991:b0:418:9d5a:f680 with SMTP id r17-20020a05600c299100b004189d5af680mr254261wmd.25.1713905429971;
        Tue, 23 Apr 2024 13:50:29 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:29 -0700 (PDT)
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
Subject: [PATCH v2 09/14] scsi: ufs: host: ufs-exynos: add EXYNOS_UFS_OPT_TIMER_TICK_SELECT option
Date: Tue, 23 Apr 2024 21:50:01 +0100
Message-ID: <20240423205006.1785138-10-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135031_713933_B7D2E19D 
X-CRM114-Status: GOOD (  10.29  )
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

This option is intended to be set for SoCs that have HCI_V2P1_CTRL
register and can select their tick source via IA_TICK_SEL bit.

Source clock selection for timer tick
0x0 = Bus clock (aclk)
0x1 = Function clock (mclk)

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Will McVicker <willmcvicker@google.com>
---
 drivers/ufs/host/ufs-exynos.c | 9 +++++++++
 drivers/ufs/host/ufs-exynos.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 66e52c3607e2..66093a905986 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -50,6 +50,8 @@
 #define HCI_ERR_EN_N_LAYER	0x80
 #define HCI_ERR_EN_T_LAYER	0x84
 #define HCI_ERR_EN_DME_LAYER	0x88
+#define HCI_V2P1_CTRL		0x8C
+#define IA_TICK_SEL		BIT(16)
 #define HCI_CLKSTOP_CTRL	0xB0
 #define REFCLKOUT_STOP		BIT(4)
 #define MPHY_APBCLK_STOP	BIT(3)
@@ -1005,6 +1007,13 @@ static void exynos_ufs_fit_aggr_timeout(struct exynos_ufs *ufs)
 {
 	u32 val;
 
+	/* Select function clock (mclk) for timer tick */
+	if (ufs->opts & EXYNOS_UFS_OPT_TIMER_TICK_SELECT) {
+		val = hci_readl(ufs, HCI_V2P1_CTRL);
+		val |= IA_TICK_SEL;
+		hci_writel(ufs, val, HCI_V2P1_CTRL);
+	}
+
 	val = exynos_ufs_calc_time_cntr(ufs, IATOVAL_NSEC / CNTR_DIV_VAL);
 	hci_writel(ufs, val & CNT_VAL_1US_MASK, HCI_1US_TO_CNT_VAL);
 }
diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
index 0fc21b6bbfcd..acf07cc54684 100644
--- a/drivers/ufs/host/ufs-exynos.h
+++ b/drivers/ufs/host/ufs-exynos.h
@@ -222,6 +222,7 @@ struct exynos_ufs {
 #define EXYNOS_UFS_OPT_USE_SW_HIBERN8_TIMER	BIT(4)
 #define EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR	BIT(5)
 #define EXYNOS_UFS_OPT_UFSPR_SECURE		BIT(6)
+#define EXYNOS_UFS_OPT_TIMER_TICK_SELECT	BIT(7)
 };
 
 #define for_each_ufs_rx_lane(ufs, i) \
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
