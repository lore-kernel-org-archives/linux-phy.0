Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EA25E7717D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 12:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uukcSZGmOH4gz99LsBkg/fTGRK/9F1HqWvkTVKl8xsQ=; b=jszlOtzjwjVmZh
	v/6fVV4uCRe4nD3CThN3aBFi0PV9aL6G5YlyClSWYvGmugGJ+6Y7GBLKkVKJMFlvwii113dDao6Vz
	uwFmWL3eis+ItN/UuH/T/jHs7s+uWcITGIPfg0dzAfaZ1YLSPaZ3nX08gs2qJn9oxyo2Lfe661BXM
	SrLU4CRuzsG1K3qjnBhSESjnO6VRivysUqkaF2HPImcpBoGjesT/iGCrD6bAuitqxO7fRRZhYv4Ip
	tjINOn1uaPpZNXK43z0nhKCkwqwlJcse6IE9jTr7WtOXM8JTkXzSQ5syAFaNJ8yaU0ie1gCKd1D/D
	gfeWI9Ofj1LR/V4lHMSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4vP-00000003jhG-1A7x;
	Fri, 13 Dec 2024 12:37:43 +0000
Received: from mr85p00im-zteg06021501.me.com ([17.58.23.183])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4vN-00000003jgY-0XGQ
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 12:37:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1734093459;
	bh=FvdkTxRCCic+u0D/ycct2THNC9tLn/b6kR+RvY6/y70=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=Kguba0Y1C6F46s7WdKWywICv38W8N8PtDGmQtRxPtc5+qWaQjRC2O0rtt1WO3dG79
	 C1K2p5t/MGXU7iDvNY2iNyZ6opvZ6M3+zKusBnKk9rS0dTyf4CpaBsdh2Te+om+rIB
	 KqNrY2o3/zpgfCY+oyiczelwN65iNXhKcqzgTcNepmBnItWMK4oSeo7PZcFI5fKQv6
	 f0il8yCzLZZYEF1w9XepuZi+KgOgXFMc7vOcXoKla6pBK8SWJeISSvFQcgtD8prX72
	 Ibacxu5uJxshzMK/lcLALsPw/jN2jyfejSFlikCiElATaRzuAbB5ClCsjZjw8Uri/M
	 igqXxMR3fttww==
Received: from [192.168.1.26] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-zteg06021501.me.com (Postfix) with ESMTPSA id 3E0392793CF8;
	Fri, 13 Dec 2024 12:37:30 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Fri, 13 Dec 2024 20:36:43 +0800
Subject: [PATCH v6 3/6] phy: core: Fix that API devm_phy_destroy() fails to
 destroy the phy
MIME-Version: 1.0
Message-Id: <20241213-phy_core_fix-v6-3-40ae28f5015a@quicinc.com>
References: <20241213-phy_core_fix-v6-0-40ae28f5015a@quicinc.com>
In-Reply-To: <20241213-phy_core_fix-v6-0-40ae28f5015a@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Lee Jones <lee@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Johan Hovold <johan@kernel.org>, Zijun Hu <zijun_hu@icloud.com>, 
 stable@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: 3rcy8yTyNCAggnrEPM8caX2FB31AkD2D
X-Proofpoint-GUID: 3rcy8yTyNCAggnrEPM8caX2FB31AkD2D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-13_05,2024-12-12_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=999 adultscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412130089
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_043741_179834_0785051C 
X-CRM114-Status: GOOD (  14.02  )
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
index de07e1616b34d12056024558124f3ea2469c0323..52ca590a58b9c303b21bf892565612a7ab92c095 100644
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
