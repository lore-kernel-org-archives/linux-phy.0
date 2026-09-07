Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B593CC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 06:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iZrYn5p0OIv/eKHZAM7rc+OTB58L8CWqoNk4Vy84JhQ=; b=kLbQLyF/hkc3oM
	ezYsRxEWbTkDpOuLCa2PCJTE0kbZugidoc41PxwcKKYG4zaNjjcHI4wxmw8us4hMYfOFn3YgRJseT
	v4lRUFYakKIFYVh5WbsnhQGkoKSy5EdZ/9jw29uAN+tMxU3wRrXVfxx3yWZTcgAJYyL5il6wqh/v6
	dQfNPSUzIjLgkh43EX9lGCLPpElWBU/wLnY1IstPoi2QSlHfd57SIfXMisLMI9YDXKkSewpCxvjO8
	H8K22Mdt4FtgHsjE7q98OggBA6gbks10ScyRCr+Hd83fOHTpeDRCin1PTaQTUhACzFCohVFxZKZqB
	YaZb6RNxIalMf1hs9rfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3SnJ-000000060pm-19XR;
	Mon, 07 Sep 2026 06:25:29 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3SnE-000000060pK-06an
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 06:25:25 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2cc891373e0so33420005ad.2
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 23:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788762323; x=1789367123; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=wI0uSnUHEptNkyfibbrbcQ+UzBygohHJaJzYhS8sUvE=;
        b=ST1lafBaGp+MvRV3vzs/1P8KNQQ97tEFNVytg7zlzW09GzN0F+OhHhrQucBiv+ntY4
         3Wpy7wmtxIIwlWeN06m882xd/8MILuttRj9d8LLQ+NhZZ+sjHud/+8ID7KclSQieRPkv
         56quoxntiqFvg1lyGRAgsdlwYRSdFqmDs4AQmjduzCBEHh2DvYZ+H4ievuUAyMxQSsaf
         S81mBiQeoXjEpjlYkjwpRz8zqLr4yWSlpLvTs9xZK03PPJH3c8WnKZv5BXP81yryR6qZ
         UX1ZTPPcPHrQSqHqYDfZyoEp4A2nKFEt+gV5EAOfi0nmGNGQqL1+i8Zlmo5+O0Z0ev//
         Wv1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788762323; x=1789367123;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wI0uSnUHEptNkyfibbrbcQ+UzBygohHJaJzYhS8sUvE=;
        b=NjVtK5bqzFAMUMxxDNSMComNNxaj7EQOInMzlGQzKVjhce3eIqddczZ8v+U8IjPkur
         HlY70RxwzncCFCoWp0sO/uD3ljFwdoDgBFmJnBsPcozqlASouJfAuGVv3poe9lBGm8Jx
         sBV82RQESiLDPXghPxk0qVsMcQer3R7bkvp367rH4gfDRt+a5gZ3t7M0+tyOE244bt+b
         azDP8hZqVRtMSntE4dtGp1tm5h/yYTfheY1Lad3UIWlA4R0tpxW1FXMkoon+XD1B4Co0
         WQzyhxmH0zWMsMc2UX9WKkBAR3Rk8GbC1wRN0kpxVEpc57MVJkOeZDWNB0syshTT+4a9
         +HOQ==
X-Gm-Message-State: AFuF++nWokNuSQ7OKKMRAEqHVvrci55HxjP8R0t1CsC7s8Gz1aUih9Cf
	79ky9ZJ5EaLiDDfdNlNLHZ5CxnRxWJLK/LgAZg+mASc0CR2JYNVLWdc4
X-Gm-Gg: AYBFou1sOCyRcpq3r1A+va0xiSecNLwrmmNkwQC3uQz5H6TnfQV1/mgTWDxmXF9rFU1
	mlw4Utk30u3wNVduQ7/B68svvssrsfUpGbMBS7r8wOT9ZkZ2jI/p/fAf6Hs2LqA16qH8NIuFRfN
	DOT15ps14uBEDO+tWaLy6I3jYKXggqqZ6ZuSd9KqCOaYroCK6mfl3EZ2z9b+UHSjdsjWiRtw0sd
	K3IQP2ojlQxpzu1BVcblx5qQId15NP7NUWTHedc2U+5J/BqVdABUiP11bF3N2t+10kLFn5IYbUR
	aet22rmCE6WM0QAz1rhIZ46KIHXalER0urYqc5IPaEPyfBCADov3cTY9ZXK7+tw/SLBDZl7WZRl
	fACKuYpVsQaLehuBCARqFlPYHX7TUrLfMHB4ADUFmAVBioCNbXVkHkj/XVcqUE3Mk4P7hbneZd2
	cw8xJ51++st+aUS0SmvVOtbic2RVdi0Hr1FA4TdepgbXTERTOukJrtZJCZivBwIAkEBN444FDvi
	nv7EalMfyWYK3iOOOsz15fR
X-Received: by 2002:a17:90b:4d87:b0:380:540:d499 with SMTP id 98e67ed59e1d1-39b26100bfdmr28827492a91.6.1788762323074;
        Sun, 06 Sep 2026 23:25:23 -0700 (PDT)
Received: from volcano9f6e-hostos.amd.com ([165.204.217.251])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339ac24d7esm39007594eec.15.2026.09.06.23.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 23:25:22 -0700 (PDT)
From: Hemanth Selam <hemanth.selam@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: fix typos in comments
Date: Mon,  7 Sep 2026 11:55:18 +0530
Message-ID: <20260907062518.12810-1-hemanth.selam@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_232524_068638_A1AA141B 
X-CRM114-Status: GOOD (  11.80  )
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

Fix typos in comments, reported by scripts/checkpatch.pl using the
misspelling list in scripts/spelling.txt.  Only touches comments, no code
changes.

Assisted-by: Cursor:claude-opus-5
Signed-off-by: Hemanth Selam <hemanth.selam@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-sata.c | 2 +-
 drivers/phy/phy-xgene.c              | 2 +-
 include/linux/phy/omap_control_phy.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-sata.c b/drivers/phy/broadcom/phy-brcm-sata.c
index fb69e21a0292..43b287a25e7a 100644
--- a/drivers/phy/broadcom/phy-brcm-sata.c
+++ b/drivers/phy/broadcom/phy-brcm-sata.c
@@ -334,7 +334,7 @@ static int brcm_stb_sata_16nm_ssc_init(struct brcm_sata_port *port)
 	brcm_sata_phy_wr(port, RXPMD_REG_BANK, RXPMD_RX_CDR_CONTROL1,
 			 ~RXPMD_RX_PPM_VAL_MASK, value);
 
-	/* Set proportional loop bandwith Gen1/2/3 */
+	/* Set proportional loop bandwidth Gen1/2/3 */
 	tmp = RXPMD_G_CDR_PROP_BW_MASK << RXPMD_G1_CDR_PROP_BW_SHIFT |
 	      RXPMD_G_CDR_PROP_BW_MASK << RXPMD_G2_CDR_PROP_BW_SHIFT |
 	      RXPMD_G_CDR_PROP_BW_MASK << RXPMD_G3_CDR_PROB_BW_SHIFT;
diff --git a/drivers/phy/phy-xgene.c b/drivers/phy/phy-xgene.c
index 5007dc7a357c..59f18e16bbbb 100644
--- a/drivers/phy/phy-xgene.c
+++ b/drivers/phy/phy-xgene.c
@@ -1669,7 +1669,7 @@ static int xgene_phy_probe(struct platform_device *pdev)
 	/* Retrieve optional clock */
 	ctx->clk = clk_get(&pdev->dev, NULL);
 
-	/* Load override paramaters */
+	/* Load override parameters */
 	xgene_phy_get_param(pdev, "apm,tx-eye-tuning",
 		ctx->sata_param.txeyetuning, 6, default_txeye_tuning, 1);
 	xgene_phy_get_param(pdev, "apm,tx-eye-direction",
diff --git a/include/linux/phy/omap_control_phy.h b/include/linux/phy/omap_control_phy.h
index aec57dd784f7..5652aa2f4915 100644
--- a/include/linux/phy/omap_control_phy.h
+++ b/include/linux/phy/omap_control_phy.h
@@ -12,7 +12,7 @@
 enum omap_control_phy_type {
 	OMAP_CTRL_TYPE_OTGHS = 1,	/* Mailbox OTGHS_CONTROL */
 	OMAP_CTRL_TYPE_USB2,	/* USB2_PHY, power down in CONTROL_DEV_CONF */
-	OMAP_CTRL_TYPE_PIPE3,	/* PIPE3 PHY, DPLL & seperate Rx/Tx power */
+	OMAP_CTRL_TYPE_PIPE3,	/* PIPE3 PHY, DPLL & separate Rx/Tx power */
 	OMAP_CTRL_TYPE_PCIE,	/* RX TX control of ACSPCIE */
 	OMAP_CTRL_TYPE_DRA7USB2, /* USB2 PHY, power and power_aux e.g. DRA7 */
 	OMAP_CTRL_TYPE_AM437USB2, /* USB2 PHY, power e.g. AM437x */
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
