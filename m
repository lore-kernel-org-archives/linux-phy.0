Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B79B606A321
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 12:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UlfYHf5k;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=mail.sdu.edu.cn header.i=@mail.sdu.edu.cn header.a=rsa-sha256 header.s=default header.b=eXPMLLQI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=FJKOg6q1PGb7CsOV8acY6kc+kdXlDVSWmxONt8Fekcc=; b=UlfYHf5k/NnhXd4GCPhz5YBPwY
	jEIqtFEZs1Y7HZkAf1cWeHMPIu1l6CzpKkRPKnHxLtijp7Ad0JERtQIqDWL+WcNGEqecB2qAm3URJ
	N9SY55hSmTsMW8E+0pVbTgMdzdAxw6Gg+BI+IFOq11MR/4LnyBspL+DxJsS42mNyohDrzbAXwcL9n
	/BufURigibidrFh25djYUGsnOYe/qcUTh9WHAROkYYfu431/b3tj0K1fEOC2kQaTZ4vb0vcsr3l+h
	Vn114Um9o2nyyDgZdXY2i8PL6unzEJy3PLT0Ap1bTKBJg58RBDa5n79cciyvepfkvx3gLIFfIAEVa
	mJiivowg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWY9p-0000000D69p-2w8S;
	Thu, 26 Nov 2026 12:00:57 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWY9m-0000000D66G-2O1X;
	Thu, 26 Nov 2026 12:00:56 +0000
Received: from user.localdomain (unknown [223.80.110.101])
	by smtp.qiye.163.com (Hmail) with ESMTP id 561dabdfe;
	Thu, 26 Nov 2026 20:00:40 +0800 (GMT+08:00)
From: Tian Xuechen <202300460064@mail.sdu.edu.cn>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	jie.qiu@mediatek.com,
	junzhi.zhao@mediatek.com
Cc: neil.armstrong@linaro.org,
	mani@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	liguangshuo@mail.sdu.edu.cn
Subject: [PATCH] phy: mediatek: hdmi: Fix potential stale PLL provider on unbind
Date: Thu, 26 Nov 2026 20:00:39 +0800
Message-Id: <20261126120039.4049943-1-202300460064@mail.sdu.edu.cn>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa217baadfd03a2kunm6834bc74359e8a
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTkpIVhpNTh9DHR5LQ0IaGFYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlJSUhVQ0tVSkpLVUpLSllXWRYaDxIVHRRZQVlLVUtVS1VLWQ
	Y+
DKIM-Signature: a=rsa-sha256;
	b=eXPMLLQI+lhb816WAFKexCyQTaPrpLTT51kzqu3SQespGmRTCTBIud/pSiVNR05EzF4ZWGOBa2ezlp0kwjJPlKpqoUWVnlJqLVa+uSl6Jtll0Mhf17d85dsH3USb+xKb5wt0JE+ZgqZoLxWGkkltQhVBnUbyzZ1N4gI+o9vabRE=; s=default; c=relaxed/relaxed; d=mail.sdu.edu.cn; v=1;
	bh=Wo8gr7WxxCAAD6ElcLjXd3fdhLktIq01023AeY93blE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_040054_869739_274EF596 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FROM_LOCAL_DIGITS,FROM_LOCAL_HEX,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Guangshuo Li <liguangshuo@mail.sdu.edu.cn>

The HDMI PHY registers its PLL with devres but leaves the OF clock
provider registered on unbind. Publish the PLL hardware through a
managed provider so it is withdrawn before the PLL is unregistered.

This issue was found by our static analysis tool under development.

Fixes: 8f83f26891e1 ("drm/mediatek: Add HDMI support")
Signed-off-by: Tian Xuechen <202300460064@mail.sdu.edu.cn>
---
 drivers/phy/mediatek/phy-mtk-hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi.c b/drivers/phy/mediatek/phy-mtk-hdmi.c
index d063fc787c28..06784393b0ef 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi.c
@@ -178,8 +178,8 @@ static int mtk_hdmi_phy_probe(struct platform_device *pdev)
 			return ret;
 	}
 
-	return of_clk_add_provider(dev->of_node, of_clk_src_simple_get,
-				   hdmi_phy->pll);
+	return devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
+					   &hdmi_phy->pll_hw);
 }
 
 static const struct of_device_id mtk_hdmi_phy_match[] = {

base-commit: 4dce97c6c265544342e716e62fd24bbb232590c5
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
