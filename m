Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C021DC87FCF
	for <linux-phy@archiver.kernel.org>; Sun, 10 Aug 2025 23:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlRtCw9dWElbQQzruXAfrx75YaNKPERZmCv36FhclF4=; b=wGvbswE1Lr44BQ
	x9qolm8al+Dgcib65WbIqKqTLbF5FOZFkWRVhhT2WCPGdCkL3RdvykOn46usu8mIZDnzWlzkkY5Tn
	IJRnJRn5SswtbbhSzlKuTK70Hs5LM5MBHKqoTK0fidik9yIvcMSqDGYfGxPH34ZRa0BRq6FJa81yD
	fiThyPXgaKUqH2ngkYJy/XxHxF443WMPMN8P10s8duUBuIb024u6kMrFYL+TXqCR9HkQxYprZTq5d
	Sisb1wxFgTXqEw1xeYGR5ZhnsWw1vR49Is08jXJYBBq7lwBQtqsVh3z11naP1RRx0a08TTj+UIHhk
	iq+dssfMQErwDeF3Zegg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulFAa-00000006AX7-2HvL;
	Sun, 10 Aug 2025 23:09:40 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEon-000000068HZ-2L7B
	for linux-phy@lists.infradead.org;
	Sun, 10 Aug 2025 22:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866028;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sMcTNy0e5RVfi5VVz1vP+dp2IXm5jO1AgXXTZDV98Gs=;
	b=HBkg4CyQ2zpT0Ripi1XTH2QNOAu+NbaC+Zt5gT38922FZK4r5qkXPqXsZZ0HGNJ1I7TShl
	7yZ5Ki/uKrHBGlTRPumItdbmVt67/bb8lHAxHiftEEg+p0Aa9y4WoitNkP9XWifpKlY/vw
	6qZZWLY7kGWoKAWaAeeOSBUhiKurrfk=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-608-bNGVKWg2OAe3im6olxXXmw-1; Sun, 10 Aug 2025 18:47:07 -0400
X-MC-Unique: bNGVKWg2OAe3im6olxXXmw-1
X-Mimecast-MFC-AGG-ID: bNGVKWg2OAe3im6olxXXmw_1754866027
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4aedd0b5af9so79248351cf.0
        for <linux-phy@lists.infradead.org>; Sun, 10 Aug 2025 15:47:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754866027; x=1755470827;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sMcTNy0e5RVfi5VVz1vP+dp2IXm5jO1AgXXTZDV98Gs=;
        b=emxcIZcM240SIvr32rESA59VDA5UwPbEg80Vsg6QOhStOQAghYxQ6XRprtyRFMxJ+v
         z4/Wx/+nHEhl8rA1cAc/iDTU7bQYBQG2cULwQbPeoEwT7G+W49TCjUmGkrk7njzV2bji
         N2nkErKNTXv4nkBH0X0SDDpX3wKhTOnxRnigLyVaanKYdHjCP59FPwf/HypyZJKx7r3r
         VmqObUddaje9ILTxfHbEvHCZU7TQt6m7HZIWRqZs9ciNmvsDH6kIKw/W6wvLGfN+KOam
         ftmZbFBtJ4rkDw7JDM3yFU3dRo173gvRKm4zYEfMTEnxhU7isF2/T9tSjbBZnERRLA3F
         yjoA==
X-Gm-Message-State: AOJu0Yxi39QsitMNjfqArglURsnSy9+bAjt328x9wLABcR7ew5Ci/C+I
	9uwzSUiIkmeLgsMvwSSmphVJ45s+okBBGzfdgpwPZn1A992ll5xxtJn8AI0c8iF3nHPQnQd/c6o
	nAnTECJvz/Cq40rbADYHoE/s1t2gEEBD9Oqm97itjFZXw7LagsG1jeFv3nYjcNDD7UxQ=
X-Gm-Gg: ASbGncucNhKciN/l3R55pP+n5A8iXGsoQlxhsMVWg9mziEdqXDhK+T6lQz9Nbi2Vpji
	CizvnrbXBiTqO+Uo/QOr9s6gsGiAEOojoodNN1LsBrwDo1nWyO+lWzvvIFuSABRNpwPuMOGpgyZ
	0toPMV4Un6rKsQuuHASvQx4/kcm3pBqcKueo6oMv1vag0j4kUXzOIHE1BcEAt6v4Imi4I7/w5Gs
	NdccOw59hXumoJimyETGGTKWSgB1GNF+lyth0IKDGQiGuPaXhHwnoMyEm0CDPS9vPnf+SHyDyJR
	FNtb3hq6CB9j0vPmH0ErDP9FWTePa0oNwXrNSe8B9eqZVNFCl2meOjB7JjL0TWmuszYn0HvvBbV
	Dh56YWg==
X-Received: by 2002:ac8:5fc6:0:b0:4af:2139:7721 with SMTP id d75a77b69052e-4b0aed6a5f7mr163617731cf.51.1754866027099;
        Sun, 10 Aug 2025 15:47:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHP5IJU8z9koSl05icwsQuLC7xmNyQP3PO70C+KlxY+wzOdhzlnvRlzStjW1m9tN2vsBSQZA==
X-Received: by 2002:ac8:5fc6:0:b0:4af:2139:7721 with SMTP id d75a77b69052e-4b0aed6a5f7mr163617431cf.51.1754866026637;
        Sun, 10 Aug 2025 15:47:06 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:47:05 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:36 -0400
Subject: [PATCH v2 8/9] phy: rockchip: phy-rockchip-samsung-hdptx: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-8-9162470bb9f2@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
In-Reply-To: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=2424;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=ndDF7+BW9z3oZgdFS9E606ToKp/Oxm2MLZrOcNPZM6U=;
 b=pM8GpM7PgNX1YsF24F8XlkiAdBklsmNw8Y01AAorZPrlImrF+x3wsR7deHwg6cBB+ANx46J6N
 A3zeH3x5Hu0ChDcu4CSeqRjFPm8eSd0GERqlUeKO53YvLSfbTdxsOMF
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zZ66p4_t8cPto1jDxTiw8NH21VD1iVUJTm0kyquAeoI_1754866027
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_154709_672875_EC9302A1 
X-CRM114-Status: GOOD (  13.19  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 79db57ee90d1487b51f4ddadde870a275dd7b17b..0d4e578c8c6a08aad355aa8aa5a1cf75c7d354ed 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1869,8 +1869,8 @@ static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
 	return hdptx->hw_rate;
 }
 
-static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
-					unsigned long *parent_rate)
+static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,
+					   struct clk_rate_request *req)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
 
@@ -1879,9 +1879,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * To be dropped as soon as the RK DW HDMI QP bridge driver
 	 * switches to make use of phy_configure().
 	 */
-	if (!hdptx->restrict_rate_change && rate != hdptx->hdmi_cfg.tmds_char_rate) {
+	if (!hdptx->restrict_rate_change && req->rate != hdptx->hdmi_cfg.tmds_char_rate) {
 		struct phy_configure_opts_hdmi hdmi = {
-			.tmds_char_rate = rate,
+			.tmds_char_rate = req->rate,
 		};
 		int ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &hdmi);
 
@@ -1896,7 +1896,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return hdptx->hdmi_cfg.tmds_char_rate;
+	req->rate = hdptx->hdmi_cfg.tmds_char_rate;
+
+	return 0;
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -1925,7 +1927,7 @@ static const struct clk_ops hdptx_phy_clk_ops = {
 	.prepare = rk_hdptx_phy_clk_prepare,
 	.unprepare = rk_hdptx_phy_clk_unprepare,
 	.recalc_rate = rk_hdptx_phy_clk_recalc_rate,
-	.round_rate = rk_hdptx_phy_clk_round_rate,
+	.determine_rate = rk_hdptx_phy_clk_determine_rate,
 	.set_rate = rk_hdptx_phy_clk_set_rate,
 };
 

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
