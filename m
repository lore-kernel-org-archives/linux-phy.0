Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0750D3C934
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 05:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWa8e2lgb9iDjBn2v7j1sNbkE/47yJN+/uZDM1GR0iY=; b=j52diVkA/jnByW
	QhRnEWfIaNc9VHKtwIh1Ieotl9OjFpGQJbbaPobzILuTxO4Oz2KuKd3yf6h5zFRV4ozh26jvSUnhB
	jCSmf/Gq+QjSaggyLyV1A6sIVo23pnJMFQZbzDqtKsemElJy7SlMyMb8anYiwIXRy8tdcU9YXYXIp
	WGHltq6moqxYCdSQhVFFpEhEET+C+KsYWzxnA1qCffIQnozmszpkLPk6MaZ7dSNU/4nGjW82Cnkd2
	T5kME0Gz8dr/nmzwUbSlGcOEsFEErHhx9NWZ/4hwSt5QcasqACCXdahLnF9j9vftkvKFiBu1oKesz
	iICapoWSy45uXlUHBzFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUy-00000004Ruz-2h6E;
	Sun, 20 Oct 2024 05:29:04 +0000
Received: from pv50p00im-hyfv10021501.me.com ([17.58.6.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUv-00000004RtU-0wQi
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 05:29:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729402140;
	bh=Pzj4HJoWnL6JTLVf/LzhBRoFLqsQjjCajmU0HHRJmCM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=FzsUprEnaIdjyWcgh24n4owqgCzwCEevOvHP5TBSaiI+GpFyVFF48q7MSLp5srmER
	 49VkFoBQ5XoQpE1j98Fz9ev9yh+BpUPjVvlh2BafPiLQAfKq2SsJQ07ku9Ojbg/XP2
	 qQjJHhxdEPOqQNcrLMXTrx5ZDPZaVo46b169DrWuHQ7/ae1Hvj/yoA0J4KYc6WN3H5
	 jtMwQfYBRhwhSywsNxKuMi4qXJ3zMT5IUD10mNexJhH0YpjHb6B0tjQL/CKMBbFHoH
	 a5N7/J7iztEt7vk1VaMooWxFcs+nn+rmK9i3u80xPHGABylS8yFXBCxdO4oGvU8vqs
	 Vz/Asg70Uh8Zg==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10021501.me.com (Postfix) with ESMTPSA id 24D4C2C0141;
	Sun, 20 Oct 2024 05:28:54 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Sun, 20 Oct 2024 13:27:51 +0800
Subject: [PATCH 6/6] phy: core: Simplify API of_phy_simple_xlate()
 implementation
MIME-Version: 1.0
Message-Id: <20241020-phy_core_fix-v1-6-078062f7da71@quicinc.com>
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
X-Proofpoint-ORIG-GUID: 0V1SomLf6-r1ySnqSOHR_zWePw_E5J9r
X-Proofpoint-GUID: 0V1SomLf6-r1ySnqSOHR_zWePw_E5J9r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-20_02,2024-10-17_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2410200032
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_222901_320120_EB8144CA 
X-CRM114-Status: GOOD (  10.11  )
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

Simplify of_phy_simple_xlate() implementation by API
class_find_device_by_of_node() which is also safer since it
subsys_get() @phy_class subsystem firstly then iterates devices.

Also comment its parameter @dev with unused in passing since the parameter
provides no available input info but acts as an auto variable.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/phy/phy-core.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 24bd619a33dd..102fc6b6ff71 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -748,7 +748,7 @@ EXPORT_SYMBOL_GPL(devm_phy_put);
 
 /**
  * of_phy_simple_xlate() - returns the phy instance from phy provider
- * @dev: the PHY provider device
+ * @dev: the PHY provider device unused
  * @args: of_phandle_args (not used here)
  *
  * Intended to be used by phy provider for the common case where #phy-cells is
@@ -759,20 +759,13 @@ EXPORT_SYMBOL_GPL(devm_phy_put);
 struct phy *of_phy_simple_xlate(struct device *dev,
 				const struct of_phandle_args *args)
 {
-	struct phy *phy;
-	struct class_dev_iter iter;
-
-	class_dev_iter_init(&iter, &phy_class, NULL, NULL);
-	while ((dev = class_dev_iter_next(&iter))) {
-		phy = to_phy(dev);
-		if (args->np != phy->dev.of_node)
-			continue;
+	struct device *target_dev;
 
-		class_dev_iter_exit(&iter);
-		return phy;
+	target_dev = class_find_device_by_of_node(&phy_class, args->np);
+	if (target_dev) {
+		put_device(target_dev);
+		return to_phy(target_dev);
 	}
-
-	class_dev_iter_exit(&iter);
 	return ERR_PTR(-ENODEV);
 }
 EXPORT_SYMBOL_GPL(of_phy_simple_xlate);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
