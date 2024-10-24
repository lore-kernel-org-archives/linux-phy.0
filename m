Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 029E1CE8E80
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 14:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=es/Gnqqbr494DKEOLI4Yjh7lkPqyqHkW+z5XhWYpXrE=; b=ltVP0zU0wofNjN
	WOCaR83xQJmbgdtgPgXrZOmFMnIzxXLfqsO6HvgncBG/SQOHX/mvyBIdKlyIUQJPirClxcHJ0U3+9
	+U9u6NXCLb0DZhj/lL9ZLGsgm1QZx0X8FlUR6rynPsg9Zd/rr5edefWXZ0gC2sTecJ8+lS9yfAi9g
	RGtUZ7Ua1OH0JR9BCDZ9mfIzxxd2MZ4+NVoqHBnrOsW45c5J/0rrvMPG3hVSfJN8YR6ICYXvu6apL
	sEqDLR9bzhY5Ge7xW9pmwtGAV6lbfcS1d1zUdG3H4Oqc1dprEZr/gDTSACtEGWHeqgHjUOwozCa2j
	6652ntrCkNrfva/H445A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z5l-00000000nYN-2bAs;
	Thu, 24 Oct 2024 14:45:37 +0000
Received: from pv50p00im-hyfv10011601.me.com ([17.58.6.43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z12-00000000mG6-1e4M
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 14:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729780838;
	bh=7SUVDbgSA2VfVZU2rqgQuLCciZm9GwyAD6JqO4qnFgM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=0+NSNjFn68dgCW5i+v659pv1usu51fd/8QHQfjydDrEI8ejVud+tearBU0ObxZTVf
	 JpNieaL0NLuqvGSOw/15WMy26cetH4U/OujVejp+bEe1+iSRkZxTvLJnX1jeIGCFF4
	 ZglqrvNS9Lagq+8K5LqGe+yTTdI9gEg4iCExgDAuNA3FVxh/7aCxzquFFfDtS0wwMG
	 28XxVJR6ciRKinzYnBgNYhOMR4sOTQFGPd0oLj5snh6yP2LMvWF1Ik5zLaa5+NhwBp
	 khLKBDAESVRkVZO6OPu5NHVlqiDQb+uomDxmo39lD0beHHGS4/C9XJmP56DWWuysEN
	 LexEakwQIrZUA==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10011601.me.com (Postfix) with ESMTPSA id A1A1FC80102;
	Thu, 24 Oct 2024 14:40:31 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 24 Oct 2024 22:39:29 +0800
Subject: [PATCH v2 4/6] phy: core: Fix an OF node refcount leakage in
 _of_phy_get()
MIME-Version: 1.0
Message-Id: <20241024-phy_core_fix-v2-4-fc0c63dbfcf3@quicinc.com>
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
X-Proofpoint-ORIG-GUID: A5fzWN84D0-VXZjY7cEVmNuokoA0ioi1
X-Proofpoint-GUID: A5fzWN84D0-VXZjY7cEVmNuokoA0ioi1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-24_15,2024-10-24_02,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 clxscore=1015
 mlxscore=0 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410240120
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_074044_612270_F51FFB08 
X-CRM114-Status: GOOD (  10.96  )
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

It will leak refcount of OF node @args.np for _of_phy_get() not to
decrease refcount increased by previous of_parse_phandle_with_args()
when returns due to of_device_is_compatible() error.

Fix by adding of_node_put() before the error return.

Fixes: b7563e2796f8 ("phy: work around 'phys' references to usb-nop-xceiv devices")
Cc: stable@vger.kernel.org
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/phy/phy-core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 52ca590a58b9..967878b78797 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -629,8 +629,11 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 		return ERR_PTR(-ENODEV);
 
 	/* This phy type handled by the usb-phy subsystem for now */
-	if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
+	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
+		/* Put refcount above of_parse_phandle_with_args() got */
+		of_node_put(args.np);
 		return ERR_PTR(-ENODEV);
+	}
 
 	mutex_lock(&phy_provider_mutex);
 	phy_provider = of_phy_provider_lookup(args.np);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
