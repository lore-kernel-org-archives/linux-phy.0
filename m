Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A4B2D59F41
	for <linux-phy@archiver.kernel.org>; Wed,  6 Nov 2024 15:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtOIfUH0puXHttsS+0DshZfWPYPYKydR7VYPWl31au0=; b=o6AzRCJoRGNup6
	/Ry4tHCM/l3usaT2Wr4X6qSZh31pFZ6KkYPNxJl50ixz2TRGxFdrQ/192pjSZJzEkfOzNtahVUYXN
	+ojyc3iuz+XhgIKUvOztgtesHa1lrzaLa5mgLydqr+WJWCn4gdOPjG9JUbttzmchN+9CBs7bnOqMI
	C/LBMq8fksOvYaoIqKAEdMiuycoQzJWjDKVf6+tZQAaQ96vbX/kF67o6O6F5pLvGU3J9C+Y99jZkp
	VglRgi1ny30sZf2QSteaG18V3YW7CtfHD+M9zQFQJTawse+j4MPu9gsXlPUyCU3jPzMG/thZpl7ii
	HuxqcGXd0hohLoN8geiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i38-00000003pzE-0Swj;
	Wed, 06 Nov 2024 15:34:26 +0000
Received: from pv50p00im-tydg10021701.me.com ([17.58.6.54])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i0P-00000003pGn-3R3I
	for linux-phy@lists.infradead.org;
	Wed, 06 Nov 2024 15:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730907097;
	bh=SyatfIV8TYuY4KBrfs0SWiSBpZQ2QH8QB6djYTU8Jpc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=PPNC1YMJJZheWJEXr7hFXaJvYx12jTX11+AiqxIoWfpiyRDWf8b6Zn8qhDYt4W8bJ
	 XMRxsmPdWip/GMN8wiREpHiurL8lF+Uplbd+yuEqxRqTcsMaotIb984+Oa/JNqZUF5
	 TD+r6kQ0fpIydMPPbAsG9kimntUytQ8vFYeGC6WgjxORjEeEFF+NqR+xhwFwmrV7RC
	 VQ9WLC1nbi+xRwChBF4EGxbnckMqL2DgOKPdSzBgFmuI7gYDbnzfswd6o0pY97nziE
	 WxI3LC4VDTkuYpXf1l/E156ZkweAL0gU1GYGQgSwQH6gWVWi/i3yfqGJQ2d4gr5hXk
	 rRWJjXdOcts9A==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-tydg10021701.me.com (Postfix) with ESMTPSA id 77F483A10B8;
	Wed,  6 Nov 2024 15:31:24 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Wed, 06 Nov 2024 23:29:22 +0800
Subject: [PATCH v5 6/6] phy: core: Simplify API of_phy_simple_xlate()
 implementation
MIME-Version: 1.0
Message-Id: <20241106-phy_core_fix-v5-6-9771652eb88c@quicinc.com>
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
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.1
X-Proofpoint-GUID: zwvertWuy8IcK0I14C7v_mzF4MXFQOMu
X-Proofpoint-ORIG-GUID: zwvertWuy8IcK0I14C7v_mzF4MXFQOMu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-06_09,2024-11-06_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 mlxscore=0 phishscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2411060121
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_073137_993677_DD483D3D 
X-CRM114-Status: GOOD (  11.05  )
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
class_find_device_by_of_node().

Also correct comments to mark its parameter @dev as unused instead of
@args in passing.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/phy/phy-core.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 413f76e2d174..1dbb854672d3 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -749,8 +749,8 @@ EXPORT_SYMBOL_GPL(devm_phy_put);
 
 /**
  * of_phy_simple_xlate() - returns the phy instance from phy provider
- * @dev: the PHY provider device
- * @args: of_phandle_args (not used here)
+ * @dev: the PHY provider device (not used here)
+ * @args: of_phandle_args
  *
  * Intended to be used by phy provider for the common case where #phy-cells is
  * 0. For other cases where #phy-cells is greater than '0', the phy provider
@@ -760,20 +760,14 @@ EXPORT_SYMBOL_GPL(devm_phy_put);
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
