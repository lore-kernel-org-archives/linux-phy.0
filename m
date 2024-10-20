Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02E8ED3C935
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 05:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cU4dexSOR9V08J1lsbbUSiz5ixar1AadtUas8IU1kgs=; b=o4AiibpN8xtwFJ
	WlUPgKo/cFpnVc4ATuVnwRqKTnKA2qEU4NyIb2We0ScsPvylMYtQ5c3uSxbWy2AVzFUvU1hCnhJ4u
	0D/6JYq3z8AnA+NZkJHN5FxAvn1NC4sEXcTmtUD2r2IG/QiS2fUZjAGOufetpCpfXCWZQDQaS9iXc
	RJ16wI8bN63jyypRmFm1FOqiWBLH22CKjQED9I6H0NsqCpt+Gh8oDmrpEtgsbWWzqRiQQFW/h6km0
	NVnjIGdOkOzz1yiTrmWmWru+aFLghEbrXvzDgN6zzLCnKTYXcX0VEk7cNJBSvTiaI1YXnzsuxwFYF
	Zua7Ek5XbS3UiBdkhzqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUY-00000004RmR-24c3;
	Sun, 20 Oct 2024 05:28:38 +0000
Received: from pv50p00im-hyfv10021501.me.com ([17.58.6.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUW-00000004RlI-1iH2
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 05:28:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729402115;
	bh=/56WqmOxBRcMrRRa1vGi/MoooLtUKmliYmk1pSnTxZg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=Q63jTXseUlZM5zGMoEAcD3TCLGKT4z1uctoS3tY42/SWQMCODg1fSeWrmtsTCNzEg
	 omfKpnFSannVfDGabpksUdpRiWec6dAMe//2WObN5hmGKqEWEnEepeTv3tUyeLhVqb
	 JBiLEZrU4MQ9j34cIzab57GqaXoVCzInghDlWCz+7umB8v6ckVrZKJsPAGnwAKzbGY
	 FkWiAeBkcJylCxxoGexq227OnoVajqG4GiqfQjA3Jm2ZDueBoK98JH2oydMsUAI1ny
	 3RTPsQMshZYlR9II7p5op2bfczG2TJ5apWXvYBkFYLHajgEAqKFmuxj8aBCMo7SZxc
	 ol0y+3rlnKrtA==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10021501.me.com (Postfix) with ESMTPSA id E90132C00D3;
	Sun, 20 Oct 2024 05:28:29 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Sun, 20 Oct 2024 13:27:47 +0800
Subject: [PATCH 2/6] phy: core: Fix API devm_of_phy_provider_unregister()
 can not unregister the phy provider
MIME-Version: 1.0
Message-Id: <20241020-phy_core_fix-v1-2-078062f7da71@quicinc.com>
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
X-Proofpoint-ORIG-GUID: hazZhiyjtEeOvE2ZPoxwF1ec4un2usrl
X-Proofpoint-GUID: hazZhiyjtEeOvE2ZPoxwF1ec4un2usrl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-20_02,2024-10-17_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2410200032
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_222836_500345_513E80F9 
X-CRM114-Status: GOOD (  10.12  )
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

For devm_of_phy_provider_unregister(), its comment says it needs to
invoke of_phy_provider_unregister() to unregister the phy provider
but it does not do that actually, so it can not fully undo what the
API devm_of_phy_provider_register() does, that is wrong, fixed by
using devres_release() instead of devres_destroy() within the API.

Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
Cc: stable@vger.kernel.org
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/phy/phy-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index f190d7126613..de07e1616b34 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1259,12 +1259,12 @@ EXPORT_SYMBOL_GPL(of_phy_provider_unregister);
  * of_phy_provider_unregister to unregister the phy provider.
  */
 void devm_of_phy_provider_unregister(struct device *dev,
-	struct phy_provider *phy_provider)
+				     struct phy_provider *phy_provider)
 {
 	int r;
 
-	r = devres_destroy(dev, devm_phy_provider_release, devm_phy_match,
-		phy_provider);
+	r = devres_release(dev, devm_phy_provider_release, devm_phy_match,
+			   phy_provider);
 	dev_WARN_ONCE(dev, r, "couldn't find PHY provider device resource\n");
 }
 EXPORT_SYMBOL_GPL(devm_of_phy_provider_unregister);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
