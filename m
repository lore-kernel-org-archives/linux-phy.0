Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F28DFC77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 08:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=grnJNEwL3QM5ZBxuuC5H9Fh2dz6SOK3T4I7n5dfkmqI=; b=fy2wDe//S6tJ+9
	DfUfL6srpAUjlxDLm9p59YT99I/k7lBNV/HLiQDSUorQVmscztP4xXvHtt5KcZd9Mickj07ukeAxG
	5CLHQhM/lPnt1tsWciLb7fKrT2ZSMVGU1PfHtBNCaf1pBGeIYL0r2NGCwo8cNKDqwIsvYAo/Ka+kq
	OCtmzdw9wukzGs2YFnCMa13E4TaZK85dh1jtcuIdejpzMqNVjANnY1Ru6I99UECnfurYsgTFylHkC
	tfb/yfRDADeXRduL2AQkAM67cE/i13bN5do/AfiZDsq0yXJZDOLn4UOUpVutKQXOzm0i/+jKRq190
	ciXRaA7MYZBRj1Pz5mfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3v2B-00D1CX-25;
	Tue, 30 May 2023 08:48:51 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3v29-00D1C2-0K
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 08:48:51 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-96f850b32caso814075766b.3
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 01:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685436527; x=1688028527;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MHqfhex4k1JTsYeEXGwpls18ioPjTIAYp2acOWIwgpo=;
        b=jWN+niVahYUW4XDuO6u4d+X15sRRNP6SJBklfervz8Tj+qXTI+jXKJ+uQM7EcZQvDB
         7aYOkUoJhTiiHkrPR1+Tjnk3vmJiiV7J29hC56MkxepJPprIzQk53KUerZwrzBPAY6PK
         z8fbMj5psQ7L1lzIGy5m5ybnAGq9V0H9019phHEnsMkU0JizrpZaGwvwRYU8+G8v8TLH
         dh0VfcpmKDFtAHx3rviOnbpKTRY9W9UTXOMN6bfOarCqXKlRQmb2lCcJkyhicXovGBlq
         u3JqSL16vqcDRk/x11BExLTf4Amho7k2reV2m1V9o+P6Lblw0KZ1GSxyBac8zlfSYz3c
         rdoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685436527; x=1688028527;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MHqfhex4k1JTsYeEXGwpls18ioPjTIAYp2acOWIwgpo=;
        b=dCbxKly48NPTBNMReobPLjGB44cLvEJOh9WLBv945cRdX6KraasXvtdnIepYp80rM5
         BM2U8drTvp5tNYHd4BlaHn4vhRa6fJr1QuB/zlUlcwAGItGLcTQkBBaoyt8yXZLvkJZU
         Pyxm7eyLHxoQxC0wj5GIIZErgOwOow7WBN7JsasOSqfHa3S8gnlVxv5fG5fIYxEh9f9b
         2IvhmzCant0ps5ji+isYk7NC/2OD9cjP5dj93NQq7xe/WVKm4Kxv15UsLTLcElRpAUTQ
         E/BfaP4CfxF3euWIbzFnszBqA6mCGHikxLyTe++JtYINTWFiPCCHQRnxFDN3pEONQI/P
         XhVw==
X-Gm-Message-State: AC+VfDzUqyEtxwXYfBSHv8ZD1sQgIxsrIL66fCSFxuQJGC5qMaaRA5/L
	okFmQqrgxTpDemKcxiaFSk1zNw==
X-Google-Smtp-Source: ACHHUZ6TKXLrgG6JwuYw1Kzs78NP4b4Q0MqE5vN2rgVaizDAED6lGqcpPitCI+esTvabbTHyjvPpow==
X-Received: by 2002:a17:907:961e:b0:971:fa86:27e with SMTP id gb30-20020a170907961e00b00971fa86027emr1524138ejc.16.1685436527350;
        Tue, 30 May 2023 01:48:47 -0700 (PDT)
Received: from [127.0.0.1] (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id k7-20020a170906054700b0096f675ce45csm6959686eja.182.2023.05.30.01.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 01:48:46 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Tue, 30 May 2023 10:43:07 +0200
Subject: [PATCH] phy: mediatek: hdmi: mt8195: fix prediv bad upper limit
 test
MIME-Version: 1.0
Message-Id: <20230529-hdmi_phy_fix-v1-1-bf65f53af533@baylibre.com>
X-B4-Tracking: v=1; b=H4sIABq3dWQC/zWNQQqDMBBFryKzNqipWuxVpISMGc0smkoCYgnev
 aPg8n3e42dIFJkSvIoMkTZO/A0CTVnA5G1YSLETBl3rR93pQXn3YbP6n5l5V4Oz2BO2muYnSII
 2kcJow+TPCNtKLHMnp7FGkuk6HN/H8QdvJZG6gAAAAA==
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Guillaume Ranquet <granquet@baylibre.com>
X-Mailer: b4 0.13-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_014849_165962_3B9F0553 
X-CRM114-Status: GOOD (  11.78  )
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

The pll prediv calculus searchs for the smallest prediv that gets
the ns_hdmipll_ck in the range of 5 GHz to 12 GHz.

A typo in the upper bound test was testing for 5Ghz to 1Ghz

Fixes: 45810d486bb44 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index 8aa7251de4a9..bbfe11d6a69d 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -253,7 +253,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	for (i = 0; i < ARRAY_SIZE(txpredivs); i++) {
 		ns_hdmipll_ck = 5 * tmds_clk * txposdiv * txpredivs[i];
 		if (ns_hdmipll_ck >= 5 * GIGA &&
-		    ns_hdmipll_ck <= 1 * GIGA)
+		    ns_hdmipll_ck <= 12 * GIGA)
 			break;
 	}
 	if (i == (ARRAY_SIZE(txpredivs) - 1) &&

---
base-commit: 9f925874281f7e8855855d6210d6e29d844e4307
change-id: 20230529-hdmi_phy_fix-9dab6eb42ef7

Best regards,
-- 
Guillaume Ranquet <granquet@baylibre.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
