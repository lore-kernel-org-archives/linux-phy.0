Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ECC3C77B6F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 12:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+yX2HicZkBoZV3yipr8VfdJJ9ShciDoj3UW6Nse/po=; b=GasJ5F2VnaZPL9
	ROQSbsaKDN9ew0f2Bxts8G6kieIvB5dywB17NNzzlQ50SXrDti+pwkrF44+xkHhb7clGdUh+DNXH+
	GO9vtoSdYoi12Gz3wPRpj4sqE/WhFpy1uaL/68jRxKd7fMEcqY7iszE1G6AeRC+QSwQ9zGD1+pO1T
	ujH7IizwCtO7aUeE7ZYgf1yYBrlsKVXdsuuRwliq2MWKkBeYeFtzih8ygYy5S7HYjCeVc1ckJtpWj
	qdG/x1Vv7Ul9WKOwqPUqqB2SxdC1tw490GQ5QysCqSmYvK05juNIC6tza/9fzqL7BcSf/SjOffpsS
	rg2DScXOJfbhTDp+n27w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmwQX-006Aej-2k;
	Thu, 13 Apr 2023 12:51:49 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmwQS-006Ab5-0t
	for linux-phy@lists.infradead.org;
	Thu, 13 Apr 2023 12:51:47 +0000
Received: by mail-wm1-x32f.google.com with SMTP id i8-20020a05600c354800b003ee93d2c914so9670524wmq.2
        for <linux-phy@lists.infradead.org>; Thu, 13 Apr 2023 05:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681390300; x=1683982300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pfiB0dyNF5IN+dDnQ49hhgOP3vgf9O+J5xAGBbme+xg=;
        b=jt9lPv4lNrVGnYs0/3pm0ZbWLL22vClDmV9Mi1AjKNPGPhp2Z1qGKvnTZxfZ2IH6Va
         kdWB9Vni+Q2YbR5aVEZCe1q10+kzpEoLsR96keXGahTbBCxs1Gw4Rf4FvtwtSZ7HVKN3
         C81hq4PEchuYqdXF9E0329vVtPniqlkTwnJJ+uxVfTuZcKBHUJIiO6LOLKb21khCxIfq
         KaSXyJEqR4mqIBxAuPCklrrhmsA+bnWVtMAjwFperuNLjMPZ2+tDlEdIBc5Io+l0ofVe
         E9obFN/51kCQ1pDsVpsDL0sTjweGDhw6VzcDBOGCHtbPxDwugox0FApsENkM9nt4vwjQ
         tf2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681390300; x=1683982300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pfiB0dyNF5IN+dDnQ49hhgOP3vgf9O+J5xAGBbme+xg=;
        b=ZK8DU7+jVaEYI4Fj3ZKNwmhf1TrDiZoY67EZ8n79Pa4BqY4rS2KdvmV3bPm+cuToz+
         YNx/KcZyOZcCoyLdUF28b8nFHpVnLOYa0Zta0orwzuwqUdrBiz8UQ1OlZesQq826vJ7K
         UE9oYWPPbQ3eu8Uz9gIqILnCpRZp7lgD6bIBG25vHzouCty5G2PHqQ18vATZ3Lo0SbO/
         E5I547/iQS8tpdX0lYKUqE3hNd6OmIArZ0jjMSgh2uKks7NX+meknCxOi8XcTzIPANLf
         s3ZA+m6gPYsl219HvZcKPR8NCiMY6AScKFmNRkMcS63oXd1b/Ksfkpp4MNZql/4XsnM3
         8exQ==
X-Gm-Message-State: AAQBX9d7OfZVKSC6QVeRvpdIkzDmhmkho0NZBU9sd07UNdypOB0nqTE+
	hUe4oWIcMv1EDZ2Ib3MxEcveDQ==
X-Google-Smtp-Source: AKy350ZhM3KTvTuJ+Clczlm2zRYmzA4Al3yjFIK+ApB//dgCEkIZNS4r1rOYNFbWtYCj5wo3UmI1kQ==
X-Received: by 2002:a7b:ca57:0:b0:3ed:4685:4618 with SMTP id m23-20020a7bca57000000b003ed46854618mr1728570wml.34.1681390300370;
        Thu, 13 Apr 2023 05:51:40 -0700 (PDT)
Received: from [127.0.0.1] ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d66d1000000b002f67e4d1c63sm156356wrw.12.2023.04.13.05.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 05:51:40 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Thu, 13 Apr 2023 14:46:25 +0200
Subject: [PATCH 1/2] phy: mediatek: hdmi: mt8195: fix uninitialized
 variable usage in pll_calc
MIME-Version: 1.0
Message-Id: <20230413-fixes-for-mt8195-hdmi-phy-v1-1-b8482458df0d@baylibre.com>
References: <20230413-fixes-for-mt8195-hdmi-phy-v1-0-b8482458df0d@baylibre.com>
In-Reply-To: <20230413-fixes-for-mt8195-hdmi-phy-v1-0-b8482458df0d@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Guillaume Ranquet <granquet@baylibre.com>, 
 kernel test robot <lkp@intel.com>
X-Mailer: b4 0.13-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_055144_402727_A2D514CA 
X-CRM114-Status: GOOD (  10.88  )
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

The ret variable in mtk_hdmi_pll_calc() was used unitialized as reported
by the kernel test robot.

Fix the issue by removing the variable altogether and testing out the
return value of mtk_hdmi_pll_set_hw()

Fixes: 45810d486bb44 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index abfc077fb0a8..e10da6c4147e 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -213,7 +213,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	u64 tmds_clk, pixel_clk, da_hdmitx21_ref_ck, ns_hdmipll_ck, pcw;
 	u8 txpredivs[4] = { 2, 4, 6, 12 };
 	u32 fbkdiv_low;
-	int i, ret;
+	int i;
 
 	pixel_clk = rate;
 	tmds_clk = pixel_clk;
@@ -292,10 +292,9 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	if (!(digital_div <= 32 && digital_div >= 1))
 		return -EINVAL;
 
-	mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
+	if (mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
 			    PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
-			    txposdiv, digital_div);
-	if (ret)
+			    txposdiv, digital_div))
 		return -EINVAL;
 
 	return 0;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
