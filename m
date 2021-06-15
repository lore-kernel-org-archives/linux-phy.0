Return-Path: <SRS0=aWzV=LJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0197BC48BDF
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 20:07:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AAFF360FDA
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 20:06:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AAFF360FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJhWxHA1TdRdM8cavCyr8vUpaZsTsvQVhZ7uu/8R2vs=; b=brzRXsEA6PM1ee
	N4LEJsDxLwxQeTdpSRNTdh2em9s3L2plqfCm+ocqpFYsxA3K6hdBXiaJ6zWinaVfkbBA2OdRfHJkh
	Ljg4yc3GYXIi4pDzZ71rAaXK9609ZLdwfC+ort91R+mY8JHek4Yp6H6shtyurfI1UjtExcGEpE8A9
	T71CUh47HGfaHuKI6uY3o5fv+Bps6Q8ZhcMZNBlMu9pyR8Gwa35+rhIIjDeTH5Od0h1/aIFk2V/IP
	F3WV/FqGO++PS+exxoTt0VuoOkD3pZidj9qN2A2eBv9sTyiuTmCEtNUuaX+FVdnbeeSrvRFlCTrfS
	2mqq51ytu3JKayFrHSYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltFKt-002ftd-2Z; Tue, 15 Jun 2021 20:06:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltBJk-0016DR-Bg; Tue, 15 Jun 2021 15:49:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=eVYwBOAOTAkGv39WLZJnWJZXfM5fxMMj7Ycz5FsIarI=; b=OwO68xYKoks2eZMeURZqdRJkkj
 +BJAU5TbKpOGmaV2k5Y8N+1ZZS/lbCVko+SeHOBtFA2eBshSuP4rTQsNjiIPFnY4zrXHsPV87ijyr
 ZxLAgq4rK8ftlyuvBr1BgGoUxQ2XB7JgvTJ1uOASLnKqfgpFsg9wLEtBnJMo9OUiUi9Qi76MTTmmu
 JE+ebgQ8inGT4xx/QhMKCrTSJKjELEsOA6zEKOI1QuWgvivvx5y5nKX6PL8da8SWjvlBFu2sI9KiZ
 WE3AWHby/HNk3RcddudkCj9VnVU/RrBdijxkt7/dX51H0k+paDmaCfn9NGziG/Z73jJbWvCXy50L/
 tGhcP0QQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltBJZ-0081Sx-JX; Tue, 15 Jun 2021 15:49:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5088661926;
 Tue, 15 Jun 2021 15:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623772156;
 bh=/4qA9Gz7Yw2MDT2xfMW43+5+10S3nLL/FwGV37M7M2k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FIn/RbUPsjkA+HKgV1T8ZmJOVX2tgsBXIA1k2nNfaprLRCYEJMDcuKlXpTEeHbwT9
 UQK90cetYKqHlpLCutndtIzHnQmTa977AY+nls/gJe270xyWdT6Inz5DO2Nvl7ZeJW
 Bdk7o99xaz/ekLTUGBt6edQJ1GZcJW6p4xP0MHGnbUMot9QoLeCSoEQAzskRZBqC8+
 6RiWTwn6jmD+fqUN/JH2dOgO8bnYnUPSdKA7UfO0hvi+hE/TmwDZCN2vbOzhxz7QFb
 1rGaxX3GbAG5cGWIV0zYJMhKE85TcM5/VMTx0M0AyJC9C8808y+4Yy2pKcPUFYvgd8
 q2cOVBQGnYAMA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tiezhu Yang <yangtiezhu@loongson.cn>, kernel test robot <lkp@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Sasha Levin <sashal@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 06/30] phy: phy-mtk-tphy: Fix some resource leaks
 in mtk_phy_init()
Date: Tue, 15 Jun 2021 11:48:43 -0400
Message-Id: <20210615154908.62388-6-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210615154908.62388-1-sashal@kernel.org>
References: <20210615154908.62388-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_164928_760712_784C2026 
X-CRM114-Status: UNSURE (   7.05  )
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

From: Tiezhu Yang <yangtiezhu@loongson.cn>

[ Upstream commit aaac9a1bd370338ce372669eb9a6059d16b929aa ]

Use clk_disable_unprepare() in the error path of mtk_phy_init() to fix
some resource leaks.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Reviewed-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Link: https://lore.kernel.org/r/1621420659-15858-1-git-send-email-yangtiezhu@loongson.cn
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index cdbcc49f7115..731c483a04de 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -949,6 +949,8 @@ static int mtk_phy_init(struct phy *phy)
 		break;
 	default:
 		dev_err(tphy->dev, "incompatible PHY type\n");
+		clk_disable_unprepare(instance->ref_clk);
+		clk_disable_unprepare(instance->da_ref_clk);
 		return -EINVAL;
 	}
 
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
