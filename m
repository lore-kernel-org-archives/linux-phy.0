Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E9E5E6894B
	for <linux-phy@archiver.kernel.org>; Sat,  2 Nov 2024 03:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoxo67qT5GC4UOGsjIm/u9dH7lYW6dCVw4g8VSe9DOA=; b=EeyC9/mdMIQC25
	tSltnd/6+bF4UhHku5yJdFAa8Ryws2LsInlQK4Dw7LUmIe+KFKfwCvTlucF7S+h0P8Z4YVB766f4y
	HSfQoOk0RKy3puu/21q1GQE5VlGMK3fi6uRXgFbc9SHLx+KxGknKyZJSkc5jeLO7QoQvZpzaPLThM
	MsZ7/iVB6T+xACwFRufap6g14KtLW7BIo8AbXTQUJ41xWVuJ+A3PySf3KMAiuyQxdmafbjNgte6DB
	Xzf/TBIdKy6+PuP9V1p6frGv6jskUj/8KRDsS/1tkUYC+ZEGSlo02JWg6BixxSNkdbWemAnICMd3R
	F5U+g2KBm8JZMecQ5bIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t75EA-00000008ytt-04T7;
	Sat, 02 Nov 2024 03:55:06 +0000
Received: from pv50p00im-zteg10021401.me.com ([17.58.6.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t75E6-00000008ysn-2yaN
	for linux-phy@lists.infradead.org;
	Sat, 02 Nov 2024 03:55:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730519697;
	bh=toeSTG1G9vSODnOMlPD25srU4vchWguh6NSK6vYSJnE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=gEE+Q0BHmF3IKQcGGBCumeTFjOc551M5gvwK+Yu/S2alOeDlJzqN/ouaLOCHHcKcD
	 xUHHi6z5C9muTKRuMsFZ63ox+2Wj7Y4T/cQRSrnXdRBAKRDtOniWl/KaUngHl+vdKx
	 jLTSSqoMCmdodw09InlTw6CU+XIOJ4nwP89xns7p//ok48BEYlMWAyNDwXShcYMJ7R
	 fFLg16kifKSkLFODpL69BFCm1+rw5V9Mr13icAcxDS1ExhDsqzmObWGHU1EMwB+3JU
	 wN/2AfQUMUZ65tF7zBeOhSo1Cma3XXpAueQLsoGgdmgPOe42LyQ07Ng2YaVlxC0n/L
	 M0pG/rkR5bokw==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10021401.me.com (Postfix) with ESMTPSA id E7A938E0088;
	Sat,  2 Nov 2024 03:54:46 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Sat, 02 Nov 2024 11:53:46 +0800
Subject: [PATCH v4 4/6] phy: core: Fix an OF node refcount leakage in
 _of_phy_get()
MIME-Version: 1.0
Message-Id: <20241102-phy_core_fix-v4-4-4f06439f61b1@quicinc.com>
References: <20241102-phy_core_fix-v4-0-4f06439f61b1@quicinc.com>
In-Reply-To: <20241102-phy_core_fix-v4-0-4f06439f61b1@quicinc.com>
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
X-Proofpoint-ORIG-GUID: kcVLdLswlu9IQ1-VEEHCLvzb46GQ7BY0
X-Proofpoint-GUID: kcVLdLswlu9IQ1-VEEHCLvzb46GQ7BY0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-02_02,2024-11-01_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 clxscore=1015
 mlxlogscore=999 malwarescore=0 adultscore=0 mlxscore=0 phishscore=0
 suspectscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2411020031
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_205502_969167_98BF77A2 
X-CRM114-Status: GOOD (  11.12  )
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

_of_phy_get() will directly return when suffers of_device_is_compatible()
error, but it forgets to decrease refcount of OF node @args.np before error
return, the refcount was increased by previous of_parse_phandle_with_args()
so causes the OF node's refcount leakage.

Fix by decreasing the refcount via of_node_put() before the error return.

Fixes: b7563e2796f8 ("phy: work around 'phys' references to usb-nop-xceiv devices")
Cc: stable@vger.kernel.org
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/phy/phy-core.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 52ca590a58b9..3127c5d9c637 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -624,13 +624,15 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 	struct of_phandle_args args;
 
 	ret = of_parse_phandle_with_args(np, "phys", "#phy-cells",
-		index, &args);
+					 index, &args);
 	if (ret)
 		return ERR_PTR(-ENODEV);
 
 	/* This phy type handled by the usb-phy subsystem for now */
-	if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
-		return ERR_PTR(-ENODEV);
+	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
+		phy = ERR_PTR(-ENODEV);
+		goto out_put_node;
+	}
 
 	mutex_lock(&phy_provider_mutex);
 	phy_provider = of_phy_provider_lookup(args.np);
@@ -652,6 +654,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 
 out_unlock:
 	mutex_unlock(&phy_provider_mutex);
+out_put_node:
 	of_node_put(args.np);
 
 	return phy;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
