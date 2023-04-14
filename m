Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC7F0C77B72
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 16:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cCp9NSfdf+7ChiJ1PpatLdqrZqq0JxWI1cNKlTvpyc=; b=CQU6bI52tYFITe
	3Pnq9Nhaf7EI3JCFnE2fCtTnbp2Q2HgFNOUVWuKfX6pNb4as4gRI/7Yzbl8xFs+7Jg9N0EBpRrjIj
	ySK2e5xWcFWUZgwBtmhiCj4TjIYql7bASrh+lL1yBAQGFTbcqc5z4g3XGyvbfnMjEkcCcCdDTAxWs
	VtNAeIYFYnBK7c5iPmmSIEqvwHU6QvJjAkutrqbloF/6jLlQAnoyQGTOVzDD/UeysrtSDuRKMKN5T
	Jwtpw2efH6CRGEmIDxX9By4EhHK8pBZpJv14CMbaYe6d8PxFlWpnQoBrV4gJ2ZrXl9HBFnziGefEk
	gENTzHP3m9ImjAiu9n9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnM2u-00A4Tk-1k;
	Fri, 14 Apr 2023 16:13:08 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnM2p-00A4PU-36
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 16:13:06 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-504fce3d7fbso2148978a12.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 09:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681488782; x=1684080782;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zYQcygXwpJtgvQS6PifePVs7bdptrcY70QQxe9GzfcI=;
        b=rQKGZqU143eN5We3KUXtGaJ9yIwyR38GoLyQ3zVVsNqkRfSQCVYSKrETwwWmrnjCTD
         /HL34ojcvfMZJbZ0Sl4svlgeAwoPZ3WUMJnQ3v6WfZkUsNd/EQIxX5eqKIPnCQwgNh6C
         vanXFx1ea4YdiPmkcDLjAg4k7fhKXybGahBHX3QAKqJw5d2OFaWJB9c8hx/mHdDgEnpR
         DgKJ4i9oZ7gMXUfue3BL2X4MHalODcpeL40PUcrwQ2GTaM7IpJ3vsgaJpVbqbusNGx99
         77enZYwgNFesCZGInlKblO0YU/FzpVHd0nkJ/h1X+lg1lnlLycaYycrPuHlZ3rrlON6W
         yH9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681488782; x=1684080782;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zYQcygXwpJtgvQS6PifePVs7bdptrcY70QQxe9GzfcI=;
        b=ctXCYV4UqCyjR0tOv/Z05lgX2IcvysN8pMJMYkp1QubkGxCoU/TWiel23bNJwgDti9
         N61IYLGE9M9P8m34tf/rd9hUcGz69JRshsEN/uywV5ylQFsaNDxy5HTck7kcKDCJjwER
         jdTLBjK30rnoVex9U5xUmgOXgt/Gp91aJJJ6qLKizm6YcKk4Qy/P7vmujKEUMoA8XKch
         T+r9vV32KbR2D6oBSj2yQJCMltK+2UXbo7yIQlsli8EF+8PWfyl0S8yneJaNsa6/kS7X
         hoEMqJ62+oq/I8apE3HLEX8jvshxhQfS+xwwO3Vn4B6N1hsLVgYepD/vd3YUxyar3z9+
         F5Tg==
X-Gm-Message-State: AAQBX9eAFrQgcMbNddt+sVP71u6Ts459NjV0zkrPegVCILecYkLhyLGi
	QHGFhRS9ql3J+9d687tBOD3hfA==
X-Google-Smtp-Source: AKy350ZwPnR35MbzJwWg/cyopvybTKJ6He8maInl0W5V/A8A8m41PdLFb40JKrxf0JIz/8Mq7iEGrw==
X-Received: by 2002:a05:6402:100d:b0:504:80a4:d019 with SMTP id c13-20020a056402100d00b0050480a4d019mr7138523edu.12.1681488781860;
        Fri, 14 Apr 2023 09:13:01 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-d20f-2c76-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:d20f:2c76:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id h23-20020aa7c957000000b005066ca60b2csm2242687edt.63.2023.04.14.09.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Apr 2023 09:13:01 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 14 Apr 2023 18:07:46 +0200
Subject: [PATCH v2 1/2] phy: mediatek: hdmi: mt8195: fix uninitialized
 variable usage in pll_calc
MIME-Version: 1.0
Message-Id: <20230413-fixes-for-mt8195-hdmi-phy-v2-1-bbad62e64321@baylibre.com>
References: <20230413-fixes-for-mt8195-hdmi-phy-v2-0-bbad62e64321@baylibre.com>
In-Reply-To: <20230413-fixes-for-mt8195-hdmi-phy-v2-0-bbad62e64321@baylibre.com>
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
X-CRM114-CacheID: sfid-20230414_091303_999180_0ABFCD56 
X-CRM114-Status: GOOD (  11.13  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index abfc077fb0a8..054b73cb31ee 100644
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
@@ -292,13 +292,9 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	if (!(digital_div <= 32 && digital_div >= 1))
 		return -EINVAL;
 
-	mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
+	return mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
 			    PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
 			    txposdiv, digital_div);
-	if (ret)
-		return -EINVAL;
-
-	return 0;
 }
 
 static int mtk_hdmi_pll_drv_setting(struct clk_hw *hw)

-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
