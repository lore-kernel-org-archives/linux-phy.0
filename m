Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 139EED3E79A
	for <linux-phy@archiver.kernel.org>; Wed,  6 Nov 2024 15:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zf0AwCX0l1YZBxlmyfUPxdyGYh3lLi/oSYba/LCj0Fg=; b=SMtN6tM4mg1Ff1
	1f42FH7RD7OhqG1YFNDTCFqgaMQ5NcsaH5SB3J5KC3+hMBDCBM3eohPom2JWD+iPxeF/BeynAWhab
	KuAuc+nEwIGKJPZR3t7GKtjFyMuQ1TbKv2f45eignZMfgIGD6PcrJINI40CnRxG5pgjwR8ZT4yDsG
	67uofpec1CP8nUlXjzJQIHkoTk9ZH2uzqt7eFO8tM3nvNrC+gEFs7WbiqkjhW347PL6oRb7cpIU2M
	T+oUYYTpZ+XeBvge1OrXJRN49Xcq6usLOOn5LzD4aKQHjJb847v7FUPCDb9RF8f5ZPj0qSFb3HPMU
	C6pYWlxAqUVZYTBRSquA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i37-00000003pyq-3D09;
	Wed, 06 Nov 2024 15:34:25 +0000
Received: from pv50p00im-tydg10021701.me.com ([17.58.6.54])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i0D-00000003pCW-1Gxt
	for linux-phy@lists.infradead.org;
	Wed, 06 Nov 2024 15:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730907084;
	bh=vn7YLlTMs35v/+bzgOIOZMQXRYeYPFiSPDi8rm2sJcM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=E+MspX7WdtzMGksSBtYzuCb3l2CAHvMSFZM2LLyF+T3joqiOZ/rDl5PlWfxbRUHvS
	 oP5y/QQjPOVahyAoGRYDaALJoRVazqjCd+A5jcOmlL7eybgY20DgPeN0WeYqMvXdn/
	 eYasYgV5yfNSbMUVUOqRPdyGDDPqexbJRUYI5X7zyYm1tcttn23HUU+FgeCta6GFOd
	 JA1reKNHhUiveMC6c5AK+nIhRs41A9M8PysGcgRuCSqIyQSRtLAP9h7OPIG5UVU7tf
	 D3xE01op17lutnlWIg0mn+LNRhqzdCCKGK8OXhi2+pVHrTNFH5SO5UbMg0cmVxdszF
	 ZWunrT5nuMGNg==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-tydg10021701.me.com (Postfix) with ESMTPSA id 932873A0A06;
	Wed,  6 Nov 2024 15:31:12 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Wed, 06 Nov 2024 23:29:21 +0800
Subject: [PATCH v5 5/6] phy: core: Fix an OF node refcount leakage in
 of_phy_provider_lookup()
MIME-Version: 1.0
Message-Id: <20241106-phy_core_fix-v5-5-9771652eb88c@quicinc.com>
References: <20241106-phy_core_fix-v5-0-9771652eb88c@quicinc.com>
In-Reply-To: <20241106-phy_core_fix-v5-0-9771652eb88c@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Lee Jones <lee@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Johan Hovold <johan@kernel.org>, Zijun Hu <zijun_hu@icloud.com>, 
 stable@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.1
X-Proofpoint-GUID: sPXWQqURoU3m9fe4K3pZkqREUZjSNIng
X-Proofpoint-ORIG-GUID: sPXWQqURoU3m9fe4K3pZkqREUZjSNIng
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-06_09,2024-11-06_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 mlxscore=0 phishscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2411060121
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_073125_401760_58EF6BDD 
X-CRM114-Status: GOOD (  10.82  )
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

For macro for_each_child_of_node(parent, child), refcount of @child has
been increased before entering its loop body, so normally needs to call
of_node_put(@child) before returning from the loop body to avoid refcount
leakage.

of_phy_provider_lookup() has such usage but does not call of_node_put()
before returning, so cause leakage of the OF node refcount.

Fix by simply calling of_node_put() before returning from the loop body.

The APIs affected by this issue are shown below since they indirectly
invoke problematic of_phy_provider_lookup().
phy_get()
of_phy_get()
devm_phy_get()
devm_of_phy_get()
devm_of_phy_get_by_index()

Fixes: 2a4c37016ca9 ("phy: core: Fix of_phy_provider_lookup to return PHY provider for sub node")
Cc: stable@vger.kernel.org
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
The following kernel mainline commit fixes a similar issue:
Commit: b337cc3ce475 ("backlight: lm3509_bl: Fix early returns in for_each_child_of_node()")
---
 drivers/phy/phy-core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index b88fbda6c046..413f76e2d174 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -145,8 +145,10 @@ static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
 			return phy_provider;
 
 		for_each_child_of_node(phy_provider->children, child)
-			if (child == node)
+			if (child == node) {
+				of_node_put(child);
 				return phy_provider;
+			}
 	}
 
 	return ERR_PTR(-EPROBE_DEFER);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
