Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04D28D3C934
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 05:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5tDFTmfEATjWy/3Y3OQllZKU6DYtngKz7A/Dn7KDCy4=; b=bAOWQuU7B529+7
	OHR//aW3m/lW9KpVC29Nm/1zamrvjTOAovFAJS3YTn6vV8598Ir8R+G589/51866xc0J9cTtR34vf
	6aCym4W0XjNQWwqgiGZjiWMWkjWhJJf7+AIpAAlp3VOM7QhZaIOlz0sLi5HZGn6DyiYzAOq0G20YK
	mIQ5lMLrow7n0AtaOHd8Zdxs9cWupTqIFpwuVRc4AjI8ps+juWfQpSIkCSvKDfEdNaBK0EwQzZ7/n
	eO6ONonbDVWhXfNhmDq4dkvwieLzNv/Q/ccKUd5kDukLrD0vbX91sjTmR9KdbPPqge46XMB7aN6Ld
	TbKn+46c8MzfNUdYCreA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUQ-00000004Rjk-2hLi;
	Sun, 20 Oct 2024 05:28:30 +0000
Received: from pv50p00im-hyfv10021501.me.com ([17.58.6.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUO-00000004RjB-04VS
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 05:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729402102;
	bh=+3UjV7BU0TIkt4Lhwy86UL8JylbnLsp4ODES3JsnJc0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To;
	b=rjcm4E9be/d88baHvpjEDFn5al/Fz/NXhsYtKGzKnafVfMRwuJdWdaetj2P298Uol
	 TTjVNcX4qkwkOuO2C5BiGI5I2wGfoc0zs4c1cIUIpLvkIGG3DowwSWqEgEkzsDi2iz
	 QnGnkHDTsXLBUiIKEAcHctWo9CDJRdYITP/6k6r1usb+LdEniQeLKz6herCHFcRu+q
	 JM1CHMn+QvmHDDojbnjvnQkSKWBPEDASEqMufPPBrATP5w1XuU6w0Xlmnp04eIRBAi
	 VnwOewVctf8wtkcUAlcNflBPxT8gHwsJJqv1N65Ls8/D9+DM469oRyzZDOlrRUxvIf
	 6+1IYBnTg2ybw==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10021501.me.com (Postfix) with ESMTPSA id 515E72C0141;
	Sun, 20 Oct 2024 05:28:16 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH 0/6] phy: core: Fix bugs for several APIs and simplify an
 API
Date: Sun, 20 Oct 2024 13:27:45 +0800
Message-Id: <20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANGUFGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDAyMD3YKMyvjk/KLU+LTMCt1U48QUM9OUJEuLNHMloJaColSgMNi46Nj
 aWgDfOHg9XgAAAA==
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
X-Proofpoint-ORIG-GUID: cUMa0O_M1qQTEfDmNyMtrVfExnK6Tj1_
X-Proofpoint-GUID: cUMa0O_M1qQTEfDmNyMtrVfExnK6Tj1_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-20_02,2024-10-17_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 adultscore=0 bulkscore=0
 mlxlogscore=574 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2410200032
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_222828_110480_80998049 
X-CRM114-Status: UNSURE (   5.66  )
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
devm_of_phy_get_by_index()

And simplify API of_phy_simple_xlate().

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
Zijun Hu (6):
      phy: core: Fix API devm_phy_put() can not release the phy
      phy: core: Fix API devm_of_phy_provider_unregister() can not unregister the phy provider
      phy: core: Fix API devm_phy_destroy() can not destroy the phy
      phy: core: Add missing of_node_put() for an error handling path of _of_phy_get()
      phy: core: Add missing of_node_put() in of_phy_provider_lookup()
      phy: core: Simplify API of_phy_simple_xlate() implementation

 drivers/phy/phy-core.c | 39 ++++++++++++++++++---------------------
 1 file changed, 18 insertions(+), 21 deletions(-)
---
base-commit: d8f9d6d826fc15780451802796bb88ec52978f17
change-id: 20241020-phy_core_fix-e3ad65db98f7

Best regards,
-- 
Zijun Hu <quic_zijuhu@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
