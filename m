Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C72A0C5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 18:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=he1jO7eqIaBJ1CT1ggQ6Eq36t/85uXWDYwL7KNYw56M=; b=NHfLfspPiJCXy/
	GbOQTVXDD3exvOsX6X3DaWo53cISrRXN3Zhjo6NaWgr00iiK01FCirJXghDJetI/fCcfEikbQhevK
	NQdSb3kNgll9U7wJaQN8fQNwBNBa8VQNoNuJomOi+Dh3yKDHWltXz0NfD6Rw3dZKHnTtRHS49B8pS
	E8UarA94+SStaZFlXNZQQunL/ukxdOFO47D6e0mxACPb1CZR/ikQAurC0/JDORHwPZq+k7HStw2UP
	A1f/6R5Vj6qMiQb+SYBLB4k9TTo0kk0taw5Pj3/lL20UgqO1CB+vp6ZYuWx1bK3xRVtZcx6fQb26E
	x5xBGdHiMFxeilw/t+pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuDXc-0000000GmJz-21K5;
	Wed, 12 Aug 2026 18:19:04 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuDXa-0000000GmIk-04hg
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 18:19:03 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-7e9ecb1e13cso1474450a34.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 11:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786558741; x=1787163541; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=m0TVCaE8Q+34m7ChzAdVqyf9wcVW6q1366258ZKAIuQ=;
        b=OHZ5FabsCffAuXuDZYg4BYW1TTrAZptZVFEb9xzQwLJQ1yaLQg2VA/9QQbp3swPgeX
         stPpp4CWJPGJKsKc2N6sEhP0U6xQoSIVioBG79LJ5+LVa2IRL0WOb5e+22VeP0e91urX
         0Z+2yT6IggAfiPtz9Msptrhs7iPvkrxQk8LDFiCwnGhpfVVUY4ezDSu+y7psgru7kDWE
         Ns4YLNeGggwr1sM2IM3tHSe4CwBM0q7DsjzjLFssUmfJ+8Ch2ZZ/pr9vED+pVHNzMT6f
         Pbe5lD68033ejJ/GRm/iM4i0QK+o+2oNAxF7+3HWLj4HUGBiMfAnzETak4BlVd6sZNGz
         +rZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786558741; x=1787163541;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m0TVCaE8Q+34m7ChzAdVqyf9wcVW6q1366258ZKAIuQ=;
        b=J6dYUxXG4mJmrHXP39LIrtPPduBqQq2f0KL7bPMkchoeo0kbJJ01DYnXVkVjzrL3by
         4aX2Np3pOSG0Jh0EsZxC0C+kvlrf4gtm4JNcz3QNnmw3H9S1CGr0ZYwuY+toRdWJfBng
         HJ7+M7eDLVxx0cB/MHCVz3sxDQ0tDMVFkohME3rK0/wIhIe/cUXPVSKtO/8vZoRUFHKG
         1qf/QAWYqzWJD2vEa19XEjHH+PtUwS2MAvtaTGGxZJIR0fAgP5zeqqL6XMqYdfSKRBB8
         XPb48GWh4yw5fNH2XfxDSlr7REZ16Skp5Yzfc+G5Z8gR5Ky1ySc3qOwpwar8hZdsdTR+
         0KTg==
X-Gm-Message-State: AOJu0YzcHIsR0ihptvISCjc3zXqtYZBc+ZYln1cm8l4By/2igceqQTjK
	1DcdlsUhv8kCzyjam+3QVhOzaYSy7Td/t20gdVJ56dHL7y17L9jdze+ewCs3GaW9
X-Gm-Gg: AR+sD11km1/Lbe5K/LLmtMkoytkRVzJE8cUQ0oXwh40gOdPDTXwR/464ujQQr27cXbP
	MiilqYFwm9l3WVofjK4FNy7Q0FgV5NbajD0wuyAxWbUfY73+Ur7dBKwjHzGLPqBZprHNIsAgBXC
	ftwrqyTW+lY3Ia1Z9WyotR53nbof/eNd48TbckZNbY5c0yOv2ZDEeR5dz7tajQza+JbNmOEXGTz
	7/YYm7CEkN+oc7q7FBbg4IXUXQhKFL5IU+ey/L847NN6rQ33AhLcZqsscSFczG1rhbjBly6MLjj
	7hsuW6BZwSGnNdcdqHFBk7UWOk7xbU2+CNG8TeAsN39C3smEHKTBkggjUwOIxH+hzZO1yahMjcN
	EDhxDU5C40xZQNa1oDng3Ns3Zje/MciXD9RY+XyEyFvGJCQdhtxtqGQQctpGsnOBo9qNQa0aESs
	CpgOVjGH12QBsVugwTZk00ryadwv+P2LpgNfqklETfonDtlm5WgOuHL6N0Emmmx1E+aGlHwHQgG
	B6eQpQ8xvImTJEioce1aV7mZ/Qq9dgxL1bDiCWb7c0JLHLIQO1HXyvZs8cDAZzBQY7/YvJJZVJZ
	gSd7I4IIoQjwT/D3Fkn3oSJnfsB5fYNpUEEqsg==
X-Received: by 2002:a05:6830:828d:b0:7e6:f582:955e with SMTP id 46e09a7af769-7f3b79a016dmr6963465a34.10.1786558740714;
        Wed, 12 Aug 2026 11:19:00 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e35])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f3b3420373sm3589768a34.19.2026.08.12.11.18.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 11:19:00 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek USB3 PHY DRIVER),
	linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek USB3 PHY DRIVER),
	linux-kernel@vger.kernel.org (open list:ARM/Mediatek SoC support),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be|_ptr)?\b)
Subject: [PATCHv2] phy: mediatek: tphy: simplify main allocation
Date: Wed, 12 Aug 2026 11:18:57 -0700
Message-ID: <20260812181857.64544-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_111902_085264_F655FB01 
X-CRM114-Status: GOOD (  12.22  )
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
 v2: add back NULL check
 drivers/phy/mediatek/phy-mtk-tphy.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index acf506529507..e9b9e667b319 100644
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
+	struct mtk_phy_instance *phys[] __counted_by(nphys);
 };
 
 #if IS_ENABLED(CONFIG_DEBUG_FS)
@@ -1572,22 +1572,19 @@ static int mtk_tphy_probe(struct platform_device *pdev)
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
 	if (!tphy->pdata)
 		return -EINVAL;
 
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
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
