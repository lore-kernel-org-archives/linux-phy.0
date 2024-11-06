Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B033D3E789
	for <linux-phy@archiver.kernel.org>; Wed,  6 Nov 2024 15:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ajWpT70XVe7kC8zzkHUW9N8+tCycnYbDqrQ5jSQvZE=; b=DtWGWKLhESweWq
	EkUJzLVjNAJQW6Hc2fkyyb7Z+jfBR+IYYkLpTU+M0deJPmKqwjkLP9uXvmc0WgmkGRqPE9JyPIOEP
	KS+lFGYxD+H0c474gbKG/lX5UaMy/FdBvOB8jtZ4bIBeScGiUpEe7Jqv3uG+ZEQiiUfyhtaH5VCCP
	44e/KjsSjE33F+cDThRVcey/ha0xrED232TaJ08vdE0dsmhjgPNZPgCeTAO8kC+NAZSw6tPM5oiXG
	FG7JuCCU+8X8FRIjlwTkm3M11jNbtcEPO+dD6yIIkEjrXmtyRWvpbkSaDn49T/7Q3eQfYzQt3Ogxz
	Fk0U6O55+5TnYp8S4MPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i37-00000003py5-0J2J;
	Wed, 06 Nov 2024 15:34:25 +0000
Received: from pv50p00im-tydg10021701.me.com ([17.58.6.54])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8hzn-00000003p55-08Ar
	for linux-phy@lists.infradead.org;
	Wed, 06 Nov 2024 15:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730907058;
	bh=D4p/ONPwsChgPFkyQAZ67fVmHAM1m6iVzlq7cFn+C6Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=fr3HZQ017dFCBGKqttkIsUH2i3owsFsG+7gLZMNXsBYZ6xXhGy1yl47UdUlea9o+i
	 SS97zM/WqTgmQyJdYA4IcPffxaBC4vYN+GBtVGU3Jg9XE0zQvBN/vCenJA+Vko+3NL
	 nAhSmKNpW7tRrvaj56rNGr/Y0EOILd6vBAs9D+vq6DohmC+aCalDqYasiRYoKlxuM+
	 oXQ7mBd/49q5AoyJP342heXsninLXoChVvECmbwtfEU+uH1LmtkjqxFILH2LOPK4He
	 OAzdE5i63FqwQIoXdL8v8V/WLDXVefW2vQBikf6ZrQ2oG6Im/XZvIwTiJPd0Bk3gv6
	 LvNNbV7npFOEQ==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-tydg10021701.me.com (Postfix) with ESMTPSA id A9D853A1115;
	Wed,  6 Nov 2024 15:30:46 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Wed, 06 Nov 2024 23:29:19 +0800
Subject: [PATCH v5 3/6] phy: core: Fix that API devm_phy_destroy() fails to
 destroy the phy
MIME-Version: 1.0
Message-Id: <20241106-phy_core_fix-v5-3-9771652eb88c@quicinc.com>
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
X-Proofpoint-GUID: IspyCmIlreuz43qiXRwdWu5eepWx8eoK
X-Proofpoint-ORIG-GUID: IspyCmIlreuz43qiXRwdWu5eepWx8eoK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-06_09,2024-11-06_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 mlxscore=0 phishscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2411060121
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_073059_123449_1CDDB0DE 
X-CRM114-Status: GOOD (  13.96  )
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

For devm_phy_destroy(), its comment says it needs to invoke phy_destroy()
to destroy the phy, but it will not actually invoke the function since
devres_destroy() does not call devm_phy_consume(), and the missing
phy_destroy() call will cause that the phy fails to be destroyed.

Fortunately, the faulty API has not been used by current kernel tree.
Fix by using devres_release() instead of devres_destroy() within the API.

Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
Cc: stable@vger.kernel.org
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
Why to fix the API here instead of directly deleting it?

1) it is simpler, just one line change.
2) it may be used in future.
3) ensure this restored API right if need to restore it in future
   after deleting.

Anyone may remove such APIs separately later if he/she cares.
---
 drivers/phy/phy-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index de07e1616b34..52ca590a58b9 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1121,7 +1121,7 @@ void devm_phy_destroy(struct device *dev, struct phy *phy)
 {
 	int r;
 
-	r = devres_destroy(dev, devm_phy_consume, devm_phy_match, phy);
+	r = devres_release(dev, devm_phy_consume, devm_phy_match, phy);
 	dev_WARN_ONCE(dev, r, "couldn't find PHY resource\n");
 }
 EXPORT_SYMBOL_GPL(devm_phy_destroy);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
