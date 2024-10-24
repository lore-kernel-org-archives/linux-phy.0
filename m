Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90122CE8E83
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 14:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UPmEIvLNoeOBZkdRZ+1t7F2J4McvxkUYEjoUI2q+ZQk=; b=hBiLSm1nWDnePx
	KQbKhsFPz5hs+5M0OM0QQZoNfdNAXA5FxfdhpilbPmo/XljOIp6wwn3PKBjoYUPQaosgxX2iBJyzK
	lm0SeA+jTBy5zwKo++WQ8FDXxoeCCWbpHS7lHoIIpgUyqv7+UiBpSNzYvzHvfJIR0YfU844x5W2sH
	YYodnNRDasijiIrz9d9NC8sXLWI/RjQfr76KZZ088cHBJeD/CLr5Wq9saJoY6FHfmyz6V4XnVYRRd
	YghuRC5x+YqJWxs7P8JGlrddDXRUPi2/GQFBzTLTci1NtepI8O5pX8fQ4WpU4b1c6rHqZXZQZdg/T
	stGmKirrS+RsTA7m5Lag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z4E-00000000nKQ-1KFQ;
	Thu, 24 Oct 2024 14:44:02 +0000
Received: from pv50p00im-hyfv10011601.me.com ([17.58.6.43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z0h-00000000m7J-1tAR
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 14:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729780806;
	bh=ElEUXfsmj+BGFWeZ+4fY2pT8AL/H58IUKyHjLlkrc24=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To;
	b=SOyz2ggUisFgCRAISxeuflGhAWUdYDibnEcSe2fLViYcwdcLBUsm0gngWCzf76JFY
	 3/zkx1p/7gXKY3gDwpeQNV2tWOpJHmpX8GZy7J3SjqxBzCH0ZIRNpCvcjm3kgCZbiN
	 FxSOfUsu74IktD+xLB/jiK6pFZ8XyazGKnwMMJvtgj4Fac5wCaiqKULrlXEm+PjHno
	 oO4htjxXKMrs/vWd7sHflKTDclbOJyPxef7QvooGMrTORo/S3IzZdeLP8OVJEPB2nT
	 Fb5TaByocIkgdIyuuoX1BLmEAOS9UkaWGjoBTVYC2YtND977+3krTufz+XsBeVE1Dg
	 DPhqeS/EZS9Bw==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10011601.me.com (Postfix) with ESMTPSA id DD8D3C8018B;
	Thu, 24 Oct 2024 14:39:59 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH v2 0/6] phy: core: Fix bugs for several APIs and simplify
 an API
Date: Thu, 24 Oct 2024 22:39:25 +0800
Message-Id: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAB1cGmcC/3WMQQ7CIBAAv9LsWQygltqT/zBNg7DIHiwVlNg0/
 F3s3eNMMrNCwkiYoG9WiJgpUZgqyF0DxuvpjoxsZZBcHgWXnM1+GU2IODr6MDxo257s7dw5BTW
 ZI1a97a5DZU/pFeKy3bP42T+jLBhnXHW8lU5ZrcTl+SZDk9mb8IChlPIF43ttYKoAAAA=
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
X-Proofpoint-ORIG-GUID: 9n3-w7T1ahFC5qSBvrhN7QQIjqgA1PEY
X-Proofpoint-GUID: 9n3-w7T1ahFC5qSBvrhN7QQIjqgA1PEY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-24_15,2024-10-24_02,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=631 clxscore=1011
 mlxscore=0 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410240120
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_074023_510053_7BD250A2 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
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

This patch series is to fix bugs for below APIs:

devm_phy_put()
devm_of_phy_provider_unregister()
devm_phy_destroy()
phy_get()
of_phy_get()
devm_phy_get()
devm_of_phy_get()
devm_of_phy_get_by_index()

And simplify below API:

of_phy_simple_xlate().

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
Changes in v2:
- Correct title, commit message, and inline comments.
- Link to v1: https://lore.kernel.org/r/20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com

---
Zijun Hu (6):
      phy: core: Fix that API devm_phy_put() fails to release the phy
      phy: core: Fix that API devm_of_phy_provider_unregister() fails to unregister the phy provider
      phy: core: Fix that API devm_phy_destroy() fails to destroy the phy
      phy: core: Fix an OF node refcount leakage in _of_phy_get()
      phy: core: Fix an OF node refcount leakage in of_phy_provider_lookup()
      phy: core: Simplify API of_phy_simple_xlate() implementation

 drivers/phy/phy-core.c | 39 +++++++++++++++++++--------------------
 1 file changed, 19 insertions(+), 20 deletions(-)
---
base-commit: e70d2677ef4088d59158739d72b67ac36d1b132b
change-id: 20241020-phy_core_fix-e3ad65db98f7

Best regards,
-- 
Zijun Hu <quic_zijuhu@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
