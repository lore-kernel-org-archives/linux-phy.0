Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BE33CE8E84
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 14:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tu3vYbUYX65icKdL4ea8jG+CuFvokagO6Ziqk/EiGAw=; b=3UxMtXsaRZgaPZ
	yiLzBjsNFdCmBYHQjQY9LoEJIg99FKDrlekqW0IzQWGBHtnqYWtYt8ewOHl/5+QHujrEOPn7gA+lf
	7KWYD+9fnwtSGAxKbTV8jlJofI2Hq3cd/JnU1HQnIwb5R1oiw7BNdPg6G4hm8g+TAg1QMBZ5eDQHh
	UFvBXHmiMPTfvtqt9ZETFi0ROdRSXpnRJTb0njIsHf/3RQnL0mSt3KzTlI4jIfvzNWpRlqksGbpHM
	6ZSYJZWKAvcoLj54QxI8h9iCyiLZYvZsiaLySWY3bhFfr5779dBFD2d3YvUxDWdolrYXNAgzynDQZ
	GPxNL8mAgxgQ1mSiIF9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z4E-00000000nL0-4BVu;
	Thu, 24 Oct 2024 14:44:03 +0000
Received: from pv50p00im-hyfv10011601.me.com ([17.58.6.43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z0n-00000000mAn-09Sc
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 14:40:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729780823;
	bh=IY7OGHzpIoCsCwScK85J8CO2WsYIPvSqixH8c9pokf4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=k426lwDDQoSxAd4KQQjcHBMp1GyyzoV+SsgcdF4/QW/eHVgQokUXNSlX8r6twXqUV
	 DXAJ/TfRp5ccEuPEc2xAKHsrgcfnG9sayIk1MS4im0Squ1WB8BPBDbVAf/8ZTSmc79
	 jwROAqpAyH5/bhLHZfJHzp1UJlg8DifF5dMsuIYZhOTgSSaGqwE9XDQGfeKHTKQUmi
	 KtiHH6VFuVT77JbNk4Da76627pgJx1ZuYns40q7QCdjXuYQt4pSILR+1Y16pS/Raqh
	 06XqMOo6pnR1InXhmHEPUhPAgU3RIXU5lGVnzNhVDR/ioLPahNanLjI36piojW+N6T
	 c+oKmnxJr/mJQ==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10011601.me.com (Postfix) with ESMTPSA id 4F6E2C8010A;
	Thu, 24 Oct 2024 14:40:17 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 24 Oct 2024 22:39:27 +0800
Subject: [PATCH v2 2/6] phy: core: Fix that API
 devm_of_phy_provider_unregister() fails to unregister the phy provider
MIME-Version: 1.0
Message-Id: <20241024-phy_core_fix-v2-2-fc0c63dbfcf3@quicinc.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
In-Reply-To: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
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
 Zijun Hu <zijun_hu@icloud.com>, stable@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.1
X-Proofpoint-ORIG-GUID: SioPm7yDGhdwDsR-7_Tlo6gC-OHYN77Z
X-Proofpoint-GUID: SioPm7yDGhdwDsR-7_Tlo6gC-OHYN77Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-24_15,2024-10-24_02,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 clxscore=1015
 mlxscore=0 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410240120
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_074029_134825_452AD5C7 
X-CRM114-Status: GOOD (  10.42  )
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

For devm_of_phy_provider_unregister(), its comment says it needs to invoke
of_phy_provider_unregister() to unregister the phy provider, but it does
not invoke the function actually since devres_destroy() will not call
devm_phy_provider_release() at all which will call the function, and the
missing of_phy_provider_unregister() call will case:

- The phy provider fails to be unregistered.
- Leak both memory and the OF node refcount.

Fixed by using devres_release() instead of devres_destroy() within the API.

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
