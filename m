Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50851EDEC04
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 04:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YZ+Q+pev2hS+Op981LArO2I58dAXptz6StMBdB+6BI4=; b=Oj8nQPWoUU/4QC
	j9SD7d8GZ/M0T3JmiAa2kwv1v0vpqVNapJ944MhxMqHHGpJxbA74tAfOaCsQDAGTBmgF8CJ3GS2Xr
	e+g9BO4q/3g6YxY2QKhS9Zt3rPwu91B9th75nZnAoa5P2olVb8f5xISRgwkDdkU14rCUybvGdy0eL
	BATotxBw7DnEX9h9W6jrl/xQSZ1V9aAKJQmeka/R3h0vuMPNWxdBLhYwG0Fue5BvSde45Do5qjeMg
	0JTWRPH8VBw2mWjzlxY1Zv3PqIBuIV4KTiAyjc1PEpDvNg8QhPAuY1eE6/OVr4IlBKlZQ8KbFjapB
	SWcCeu/Hj0LilwsH9+9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxdcs-0000000GQR7-3ZNv;
	Wed, 04 Mar 2026 04:14:22 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxdcp-0000000GQPn-3pvs
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 04:14:21 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-c70bfef17a4so3808142a12.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 20:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772597658; x=1773202458; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YNQEOfz/uaj72zFc2OfYhyedqZgPJsuVowB3OOH5Yjk=;
        b=AQqf7dOmBBfPUXmpeHJsT2O26DuOGwUmCIKXK/DzS+/etgaDbkb1tiop1b9/01ATcB
         GEaEmOEu7x0Ouu6srA73MPPmZMgEQI3siHsTQntJ+e/y/JTfMRtfgQZ1J2QDAakO6Rr0
         oqIr5BnAs5fAa90as/5FkzMMY9AoAbWEACnt3j4a8KcGYbxwDDOZDghgUGVoeXFrdMmQ
         aBCoEIDv+fE0rgrNDHpF1x3MYVetdm2wFr5Udu9g/awTcyskkxSWaoDsCx1KAnnQXZma
         CQyXBaCz6ryJz9/dzAL3FkZ/VAs+vP0k9jeYliuSirRC9fexhSt94ktWEle+CSYfm6Nr
         IgUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772597658; x=1773202458;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YNQEOfz/uaj72zFc2OfYhyedqZgPJsuVowB3OOH5Yjk=;
        b=BYZT8CpV8D0TZqdqmR0KapICdVoHd5Tvg34w2J19cutSqHVLS6lPDChbHYdHI0bW6N
         zlFHqUj1b3tXAkW8nIVJZvLIhOtsVL2FACoxdMdDZMAcFncQH2N2QNwQ3slMZjo04S/r
         eFTnW6E9lNLcBpG6SNu2ocgBax+OM0ExTXgMjC75vLbx72JWLnVvVZGa7nPlRCqeHbh8
         FZY0PKdc31fSICQHKlvNL0x2K2xiIqJXQRJzCIWL+rbHMwfxan6NVoYyiARaeH+z0lwk
         ZRDzhwsvmZFbpG03uNa9kIebnCpk79uHGJAY9EwnKQMM61KLSv9rmQoGMB9sBgoj2BN9
         VMxw==
X-Gm-Message-State: AOJu0Yyq3/VEiYHexPGxTqGGbUvpGPCC2N1JWZP0uh/tTYq51OJZdbX2
	7/E/xFWJoauizs9YPAevd+bJY/XJh6w/30FR0n4WSR8zjpPGMzFQei9LQdDJZLiL+2s=
X-Gm-Gg: ATEYQzySx/pMbk2AcB+jKwWoKMReAkcf9In4z0mU1YxCliNH7R1V5D/nDnSZSwnGxGv
	t76+HLMM+OjyIc4g515WolH2IDX0vPFPWYzMSuAreGIDXTWvS1+smXC2hBbYS2bBTCEFXv/5YSi
	JpIb5Yv1jzjmOBycZ9wwGiMpiRA6/iMGcxNo6Vfuf7tM4GwfePCucsDfPseInBH/bHE3aweYqII
	hZl/1a66UXijlIarkkxYGSslJs587MA1tKVN05hKbJKGcYkf19+w68oNdufNVOJ36Jt89aPNIos
	GXMqrWiRwEdR/oaUaSuOET2oHqw5tP9jx2+fdvZLwyaMr4NpJ+Yrzk4rtelqKjhLS9thc/EzUYb
	I+8XHoXmJfAbqDfd8pgPpUmQRH+sFquOcq/M7Ns8pCKMprLI9tZY6TlPAeiG9r4oKFOXnpYCtIE
	D+o/l0V0Fq4b2y8T5LPlGs9OSTfE7nTlPPPYFFY8cvNYjx10JahwErfA==
X-Received: by 2002:a17:902:d50e:b0:2ae:673b:6a3 with SMTP id d9443c01a7336-2ae6ab8e78emr8091365ad.49.1772597658095;
        Tue, 03 Mar 2026 20:14:18 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c183bsm188270585ad.24.2026.03.03.20.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 20:14:17 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek USB3 PHY DRIVER),
	linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek USB3 PHY DRIVER),
	linux-kernel@vger.kernel.org (open list:ARM/Mediatek SoC support),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be)?\b)
Subject: [PATCH] phy: mediatek: tphy: simplify main allocation
Date: Tue,  3 Mar 2026 20:14:00 -0800
Message-ID: <20260304041400.7236-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_201419_947920_5206DAAD 
X-CRM114-Status: GOOD (  11.93  )
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

Use a flexible array member to replace kzalloc + kcalloc with a single
kzalloc.

Shuffled some code around as __counted_by requires the counting variable
to be assigned first.

Removed NULL check from of_get_match_data as it's never NULL per the
device table.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index acf506529507..3a6d61cf1cd0 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -340,10 +340,10 @@ struct mtk_tphy {
 	struct device *dev;
 	void __iomem *sif_base;	/* only shared sif */
 	const struct mtk_phy_pdata *pdata;
-	struct mtk_phy_instance **phys;
-	int nphys;
 	int src_ref_clk; /* MHZ, reference clock for slew rate calibrate */
 	int src_coef; /* coefficient for slew rate calibrate */
+	int nphys;
+	struct mtk_phy_instance *phys[]  __counted_by(nphys);
 };
 
 #if IS_ENABLED(CONFIG_DEBUG_FS)
@@ -1572,22 +1572,17 @@ static int mtk_tphy_probe(struct platform_device *pdev)
 	struct mtk_tphy *tphy;
 	struct resource res;
 	int port, ret;
+	size_t nphys;
 
-	tphy = devm_kzalloc(dev, sizeof(*tphy), GFP_KERNEL);
+	nphys = of_get_child_count(np);
+	tphy = devm_kzalloc(dev, struct_size(tphy, phys, nphys), GFP_KERNEL);
 	if (!tphy)
 		return -ENOMEM;
 
+	tphy->nphys = nphys;
+	tphy->dev = dev;
 	tphy->pdata = of_device_get_match_data(dev);
-	if (!tphy->pdata)
-		return -EINVAL;
 
-	tphy->nphys = of_get_child_count(np);
-	tphy->phys = devm_kcalloc(dev, tphy->nphys,
-				       sizeof(*tphy->phys), GFP_KERNEL);
-	if (!tphy->phys)
-		return -ENOMEM;
-
-	tphy->dev = dev;
 	platform_set_drvdata(pdev, tphy);
 
 	sif_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
