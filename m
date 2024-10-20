Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D90ED3C927
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 05:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwd+43hM50DB79lY0TlTCXeR26aAHmqn+u2R1ihDplg=; b=S3UxR6c/y8I/kB
	Z1abgcsvwSpYtfDzxYnxcAQ29RTncYrLu7IiNHDGR0H5t+GDvKTIKC9kPGSPe3QvGuHt6H033c36n
	GHfrVmByI+DmBqzcWVAxZACKlSHSw7uPEPqVgk1wtF5TY8afR4DCDUErqBU1jktlVZroKkEnJpE0j
	RY6KDd7WBSGqWr1/VT9Tfe/q6/ts1EII+p3Sd/WADVImHD5IOx3TiFl08Gb28qhdBI6FZ19vcUtwD
	5zzP4QH/gjLEO6/4s8wfrK0gSqCnavGViP1wT/c6qHXhvKQVGXB/1/21JWBE2DEhoKNIqOFIF4uMu
	LMZJo7hhsQpjzPYlI07w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUg-00000004RpM-0AAI;
	Sun, 20 Oct 2024 05:28:46 +0000
Received: from pv50p00im-hyfv10021501.me.com ([17.58.6.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUd-00000004Ro4-0f4v
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 05:28:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729402121;
	bh=4UkJl6ESTHl0MKzkJU4NiOf/LCaIG4/FzrobNoV6pGo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=agl/5G5aRiA/jFm9Z5d6jJMG/1kcv7KbHcP1dOJ30kvE9JiD6zhw22+qXm3HiR7ps
	 Wy2Wh0ZdOeP2xGhQYTTsxqfDQrpBorcxcjs0mi1EzdW4uSEmwsE2pTIjOfb7T+jLmB
	 tohHnrKZ6m0KxnHZO3hIUwK0ZLKmYY7/lDP9LKtc6h2EgpjeG61ZsxkmZTCU1l1RxO
	 YBU7LTQT/G3D2VxNdDC/MXLKV2XLw/8RZDgeAbCF5csG6U87xZhT4sQCXD8U3S1U4E
	 KI7UAvMi1Gn+yVFWW5RwGV3QwQMPbN6oAvOWKs2en5yJYJCBn3cGHM+8Ui/hpTt7i+
	 VdDEGYC/OvQwA==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10021501.me.com (Postfix) with ESMTPSA id 3E7BC2C0130;
	Sun, 20 Oct 2024 05:28:35 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Sun, 20 Oct 2024 13:27:48 +0800
Subject: [PATCH 3/6] phy: core: Fix API devm_phy_destroy() can not destroy
 the phy
MIME-Version: 1.0
Message-Id: <20241020-phy_core_fix-v1-3-078062f7da71@quicinc.com>
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
X-Proofpoint-ORIG-GUID: U-x97Lqmim6E_t_TfbzbHgSP6RIq63vt
X-Proofpoint-GUID: U-x97Lqmim6E_t_TfbzbHgSP6RIq63vt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-20_02,2024-10-17_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2410200032
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_222843_248277_922890DC 
X-CRM114-Status: GOOD (  10.72  )
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
to destroy the phy, but it does not do that actually, so it can not fully
undo what the API devm_phy_create() does, that is wrong, fixed by using
devres_release() instead of devres_destroy() within the API.

Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
Cc: stable@vger.kernel.org
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
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
