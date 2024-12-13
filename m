Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2666E7717F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 12:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNcitrMV0cSQVJnE0EhQGeea3nliuKxO5hS47p6CB14=; b=Jzc+nllV7IpARL
	daophm+iyRA/u4QGRr0lZS1jtl/v0D8c8kUaaqcqFhiZAmLK4b+y1a3uS8qfa4eeJ+ddJOA6AEDZF
	GaPXQpitQ5Ym6l+PTuSoZYtObjwVJdx4NJDCglWvSuZ0wWSf7kI//6HGTXmsu/U2tEq6aBIt2JZKW
	/y2bEq/4p2A6JC8vcvqqZzr88dOqrupxtAL0dBnecPM1/cnnuXS4ewGSEuhF7GNCA5GIxEXOoEy6z
	+fVEAOpwEULKUJVJ5W7zIOGgUBCzOGrXimAjUW543zGdtjPpIaEJrwN5WBRMSoa/UDeIyEgUsnK3C
	u9BpAsEF2Sb0OwKpc2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4vX-00000003jj0-2JZd;
	Fri, 13 Dec 2024 12:37:51 +0000
Received: from mr85p00im-zteg06021501.me.com ([17.58.23.183])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4vU-00000003ji0-2g6o
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 12:37:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1734093468;
	bh=wyxreJ8ZOeQ11pLqAphuyUs2BXs2kHLB0q1+hs7nobY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=JdwMQie476kqVi74Ijs0Ss090VYMx6tic88LobqilcAt3RITK8waA2pkp5mEP5S3A
	 YFtfXESe51cCYKEoM2YBQZHlq62VKEAaIQt8a56F5cISDJ4+AhH4x0Qlm1PILREY3w
	 6/nrS3GD7btp/WZhkuPTfUOl6gPyfuSmDgcZyKalGk2GvvwvZOseDHAiNkAZmdEUWo
	 paJjCHcyGZix9I6MmoQgLd+xP3OWcA3HS+adQq3BMBwkCYg6DftlebYynQfn/7pV1w
	 sVKV9q8WF9LdY4e2++BDeR3uJofpG5KU/1JlKCzSaIMVh6o0xnaHHkbmWd6JO+3G2B
	 cONLFD2EqodtA==
Received: from [192.168.1.26] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-zteg06021501.me.com (Postfix) with ESMTPSA id 2C22A2793DC6;
	Fri, 13 Dec 2024 12:37:39 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Fri, 13 Dec 2024 20:36:44 +0800
Subject: [PATCH v6 4/6] phy: core: Fix an OF node refcount leakage in
 _of_phy_get()
MIME-Version: 1.0
Message-Id: <20241213-phy_core_fix-v6-4-40ae28f5015a@quicinc.com>
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
X-Proofpoint-ORIG-GUID: JD-pS1O41hgJIkTIlLV-MtOWkkjA_jIb
X-Proofpoint-GUID: JD-pS1O41hgJIkTIlLV-MtOWkkjA_jIb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-13_05,2024-12-12_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=999 adultscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412130089
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_043748_689197_89697245 
X-CRM114-Status: GOOD (  11.09  )
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
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/phy/phy-core.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 52ca590a58b9c303b21bf892565612a7ab92c095..b88fbda6c046174b7abd0a0435ec54763e9f42bc 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -629,8 +629,10 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
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
