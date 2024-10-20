Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C8D1D3C927
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 05:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qD6VNzKF34o+eEOtqDGp2McA39VJOqH+0vbVa25DYuU=; b=VAt/XbHWF10ytr
	EBDk7hNsTTwU2/obtQURpSV9JYVYrXfG6aFmcGDIWXWwwMyF/J4oaG9/N/eQo4XvhFiampoEXRf8r
	n0s5Dsf0RlYFSXStNkz9n7CiokQi5x7vzyPlgJHbaOfPnkCdxQbdX6/x/fHs/3wNqbtu5PSBY01Xf
	cHcIqfP16Sx4xEL63Wkwk3pX8FhbSw4HP1ukCuNwskrz2Vy5mKqOJ1KIJ7fLyRsGWBnkz6MNwySct
	UbUZsRXgNp96G0tlrYxXpzJiAnbuTPNH+BwbjcEwDRjbDgDz3ghugttgOzxabad5McUbAao5vwIW8
	YXAXEAgUWpXG+WQsjoow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUY-00000004RmB-0UVi;
	Sun, 20 Oct 2024 05:28:38 +0000
Received: from pv50p00im-hyfv10021501.me.com ([17.58.6.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUV-00000004Rkp-0ETX
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 05:28:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729402109;
	bh=KnWmUxlYWWRbTvdeYT3kWc/oYa/wGqdAwM1ag6tzhOY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=Yfh2oBZanXoWXjDU7Yt67Qlkt/SaoaBWFzJwQJXGpmjrNQMCsvnd+owTYQVy9mlqY
	 cgavEfm+Oe/uyPfX5gRM1UYXQVjqQbE9GxBzRR8PcJ3dIi6EQPVLfjJq1RDy26eYH9
	 lV7hA8oqs+SS7UM3n+i6Epg3EYUPsYinm5tZW4xH6lqmXqPnLP8Mm9Q71NyOHJNr58
	 lzQFtugZMN93Dnk8t/QmgYqcuLyfFPye3lcV3tDsr9wl+t/45phSrCGcvOAMTkePX8
	 cYmfs6xLMbkaN0CkQK9VVqPSkSQqqUO0pZnYhdUPImepRcemYBb4LK3xbQqV41cG8A
	 dBYc+GcN/PldQ==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10021501.me.com (Postfix) with ESMTPSA id 95ACB2C00F7;
	Sun, 20 Oct 2024 05:28:23 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Sun, 20 Oct 2024 13:27:46 +0800
Subject: [PATCH 1/6] phy: core: Fix API devm_phy_put() can not release the
 phy
MIME-Version: 1.0
Message-Id: <20241020-phy_core_fix-v1-1-078062f7da71@quicinc.com>
References: <20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com>
In-Reply-To: <20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Lee Jones <lee@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, stable@vger.kernel.org, 
 linux-phy@lists.infradead.org, netdev@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.1
X-Proofpoint-ORIG-GUID: gv-M2zT64WpCFnIo56TxGzChfILMIwkn
X-Proofpoint-GUID: gv-M2zT64WpCFnIo56TxGzChfILMIwkn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-20_02,2024-10-17_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2410200032
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_222835_148482_28003BBF 
X-CRM114-Status: GOOD (  11.44  )
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

From: Zijun Hu <quic_zijuhu@quicinc.com>

For devm_phy_put(), its comment says it needs to invoke phy_put() to
release the phy, but it does not do that actually, so it can not fully
undo what the API devm_phy_get() does, that is wrong, fixed by using
devres_release() instead of devres_destroy() within the API.

BTW, the API is directly used by below source files in error handling
path, so also fix relevant issue within these source files:
drivers/pci/controller/cadence/pcie-cadence.c
drivers/net/ethernet/ti/am65-cpsw-nuss.c

Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
Cc: stable@vger.kernel.org
Cc: netdev@vger.kernel.org
Cc: linux-pci@vger.kernel.org
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/phy/phy-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index f053b525ccff..f190d7126613 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -737,7 +737,7 @@ void devm_phy_put(struct device *dev, struct phy *phy)
 	if (!phy)
 		return;
 
-	r = devres_destroy(dev, devm_phy_release, devm_phy_match, phy);
+	r = devres_release(dev, devm_phy_release, devm_phy_match, phy);
 	dev_WARN_ONCE(dev, r, "couldn't find PHY resource\n");
 }
 EXPORT_SYMBOL_GPL(devm_phy_put);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
