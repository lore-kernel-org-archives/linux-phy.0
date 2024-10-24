Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A16BACE8E84
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 14:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebKC7ftwcFMXQV6Fu+yz+G9CZTuFMlfbkEJgiWMZT5g=; b=uY6H+SfyXmsJzU
	JlehKfavyUxsTtzS1mW627uSyo85o/iiNb+GVeRovdqRvVG3cVLknjitnSPVFzvHHMJ5nEdHHjcfN
	pqfsRiElDkbl/h0shnYW3O+K+vhpi7cAyGiT9pN5Wq5NZJNOdlB1GvgqrcocTZTSQYYesyZc7j688
	gxhb4iqEP6jiHxa9FwchaLkCq6vNw1X15XSQLAB3oIObQ8lVNg98kXgvaR5uRGu5FbDhue9v5+R+t
	vK5L/Q1I8zkR2LhZ0quCAYr4lGYK8InmWtm0VWdssG7BiJ+SctmwZzUDdk4X/G0Rspdol7cLwMguh
	mWRN+5ShWkXyp/KR6CRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z5l-00000000nYB-1NCi;
	Thu, 24 Oct 2024 14:45:37 +0000
Received: from pv50p00im-hyfv10011601.me.com ([17.58.6.43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z0r-00000000mDS-1cv3
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 14:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729780831;
	bh=6mqxkWzrEpyKrm2lpF26RrivIenk/tZDn/SIHzzqvlg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=0cta08Hk5UECwqRpw5sluAfg5bJQ6gK0HPTl9zMqQxM/V7njFvXlIb+fxlfYW+n9g
	 8aHVK2PtPjAV9FtP2sfCaCVJdJ3YEu6yJWYV7sW/CC3f2WV4eckB2rcbB9lF2L0CZI
	 6ZBtYp90HX8ZSycHjgNbbuNaaeJwjFxzSEPa1GxQFOUBhCSfMhXt1umDrX9i0WJzAP
	 B8VQybrGH6mrcbVlEwxFHSc9W4fcZmP0pWOStZ3UYQQed6WE0e/L+S8tyqOYO403UX
	 uylJ+x54W+NaG7vVrdwai1nmzw4WLunIA0m6L/VF00cGW0i8PVahs30cmYAROR/Wnf
	 8BKxKf6KBwQug==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10011601.me.com (Postfix) with ESMTPSA id 53724C8019D;
	Thu, 24 Oct 2024 14:40:24 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 24 Oct 2024 22:39:28 +0800
Subject: [PATCH v2 3/6] phy: core: Fix that API devm_phy_destroy() fails to
 destroy the phy
MIME-Version: 1.0
Message-Id: <20241024-phy_core_fix-v2-3-fc0c63dbfcf3@quicinc.com>
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
X-Proofpoint-ORIG-GUID: suBrFoxD-WoAD9TMyXHHqMf0w4lir4hd
X-Proofpoint-GUID: suBrFoxD-WoAD9TMyXHHqMf0w4lir4hd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-24_15,2024-10-24_02,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 clxscore=1015
 mlxscore=0 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410240120
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_074033_508455_F59702DD 
X-CRM114-Status: GOOD (  11.08  )
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
to destroy the phy, but it does not invoke the function actually since
devres_destroy() will not call devm_phy_consume() at all which will call
the function, and the missing phy_destroy() call will case that the phy
fails to be destroyed.

Fixed by using devres_release() instead of devres_destroy() within the API.

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
