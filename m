Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26DBEC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y5HyzYGwaW40ActHoQlRi+6Y536dpXlPqeh1pin6zP4=; b=WhAHQ4WwLtdPIg
	g/JqO3RAkIDBTuE692cKGqMTi1QYlCFKbU95nhxAGeZt77YuwaEMrE6E5KhkvHj3xZczwOXunki8S
	LAyLhrrMKQydCz87vXdCoG1Z2w+EXg7eQPDF5iEyMXGyZx2pQFAfxDawwwIrSl3ESAiV5oFeHJjZu
	7j8T6byoxTXnj+BVCd5GAB7RN/uTxac60y6DIpXAL1JccLY19EsvCIAU2MiHMKk23ZbsDv+N93wB1
	H38GUqDVJvWoqYalgu8FHYRb35H/6W1VwngUdtswFLsY4G/egBWjVFHLNzsi0LdY5fUPlfyM11GYR
	cFBhick15ph6B2UTB51Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPQ44-0030Ss-JL; Wed, 02 Mar 2022 14:34:52 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPQ3s-0030QB-Rt; Wed, 02 Mar 2022 14:34:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 8D3A7B81FF5;
 Wed,  2 Mar 2022 14:34:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EAF9C004E1;
 Wed,  2 Mar 2022 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646231678;
 bh=DsddKgliXpWgfbTSJqq6vbfVEJXlCc5yzM7GOjfvd2k=;
 h=From:To:Cc:Subject:Date:From;
 b=pgvWETVkoFF4pAglxqhxWAalhLE20E45W4S3hMYrAS0UkvtR/ilZ/bwXabiyQHKdh
 DkBwFr3SelME5V7IvbwCnNJKk93hKZvCvK+LK1CJm/xGN9gPqnDVHBKgAuPoDCxEQ9
 szrC6UgcMzmHmVxu2cgzuq59ZehMe5+R8laoL1ZyBq10HZGCIt+ca4R5vKUb7y3ELg
 v1OhxNNIl8dD6sHgTtBRCF3G25UVhlE5k7B4su+CngT3wVha5eVE1cu+7bB7DaB0U/
 CuDLGxh5ZtwyVOXpKgwFotwQtv/8crf8uIvBs5xGLsayYjNMGaUYNT5VLj0pwS+U8g
 nAlxiD78cWkqA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Peter Geis <pgwipeout@gmail.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 Tobias Schramm <t.schramm@manjaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: Revert "dt-bindings: soc: grf: add naneng combo
 phy register compatible"
Date: Wed,  2 Mar 2022 20:04:27 +0530
Message-Id: <20220302143427.447748-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_063441_048867_85378108 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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

This reverts commit b3df807e1fb0 ("dt-bindings: soc: grf: add naneng
combo phy register compatible") as that was wrongly merged, so better to
drop the wrong patch

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
I am applying this to phy-next to fix the issue

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index fe68e22efce0..dfebf425ca49 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -38,8 +38,6 @@ properties:
               - rockchip,rk3399-grf
               - rockchip,rk3399-pmugrf
               - rockchip,rk3568-grf
-              - rockchip,rk3568-pipe-grf
-              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
