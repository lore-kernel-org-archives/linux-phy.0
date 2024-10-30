Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0885AD5CCAF
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 14:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dn4JgJiCufJvGFDJaEIGBZ58NecVtpxDHtZQguNWSAA=; b=ZEi6LhZbUgnpcW
	rk856SxfCluLZwWT2b2Sb1szx62PedhzBtz4TXtnGmyW29OkLBH3cPvVDtfKUOa/qsFaRb2mzlmYW
	pHQIo+l3pOOXl/pEPG6KBTsG9fkLsq29H8EKjYXKMak/XX3O940LmPdEs092cJSrqFlW6ayQcOG3D
	O63SiamTChXiTd6kvma8qIiJ3Vx0G5i54icoRMfuHkPLeqzQvHpn8xg7xb3ccV3y6biQMLmvJ/iNx
	Bpl8+sbNsl9QJryLuWIVISNOpJRPGSan77S8pOcr5x0MaWU7niLDXM2mcukRpNXfQ0xyVUB+4B/5c
	HKZQw2RcLu4nun9Y/eEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t69Xy-00000000dHl-2wqe;
	Wed, 30 Oct 2024 14:19:42 +0000
Received: from ms11p00im-qufo17291901.me.com ([17.58.38.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t69Xw-00000000dFl-0Z9y
	for linux-phy@lists.infradead.org;
	Wed, 30 Oct 2024 14:19:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730297979;
	bh=/xDAp1FMKoohjXNf6SYzu0enHw6XyaRJMqxsvwCqpAY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=Metiyj5IKVLX/zrRoiXllbJJ4DhNnCW8yfTOLr646yz0UZAxaOvwoTEaOQ7wqpkjw
	 3wn+SKMKV6Qx5iEAUdfULzdsprdx8xXtPOGQynlzn/ymO6gFoO5pyeWP8XVNRbC+kq
	 NFeib8/8TBwEA4G//DNQgYZWA5aaUiFQ8LQNNmZiYOqMVw/VwnoqnQTYWo/IQXMYVC
	 SM2hgheyo7xA4aBGDfrOlopQu+aIsvb38r3PZ5WQYbCARQx1Hhgzio7dAATW1l95aG
	 ee/XngyU90hWspxg+VdwD86XneM497wyw5SUUjUbaqjgDVNRHaQci+9H2r9zVhZdUf
	 Ke+FrWb74f08A==
Received: from [192.168.1.26] (ms11p00im-dlb-asmtpmailmevip.me.com [17.57.154.19])
	by ms11p00im-qufo17291901.me.com (Postfix) with ESMTPSA id 5AA1EBC02C7;
	Wed, 30 Oct 2024 14:19:29 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Wed, 30 Oct 2024 22:18:28 +0800
Subject: [PATCH v3 5/6] phy: core: Fix an OF node refcount leakage in
 of_phy_provider_lookup()
MIME-Version: 1.0
Message-Id: <20241030-phy_core_fix-v3-5-19b97c3ec917@quicinc.com>
References: <20241030-phy_core_fix-v3-0-19b97c3ec917@quicinc.com>
In-Reply-To: <20241030-phy_core_fix-v3-0-19b97c3ec917@quicinc.com>
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
X-Proofpoint-GUID: tSsirJfjP54u_Uwxo2IEOrLjozEYSnVS
X-Proofpoint-ORIG-GUID: tSsirJfjP54u_Uwxo2IEOrLjozEYSnVS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-30_12,2024-10-30_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 clxscore=1015
 adultscore=0 malwarescore=0 mlxlogscore=999 phishscore=0 bulkscore=0
 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410300113
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_071940_239387_450437F2 
X-CRM114-Status: GOOD (  10.75  )
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

Fixed by simply calling of_node_put() before returning from the loop body.

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
index 3127c5d9c637..9d4cc64a0865 100644
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
