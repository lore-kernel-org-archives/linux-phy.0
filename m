Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87593CD98FD
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 08:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3S0XMh7Gm8M8uTKGjmwx0ue9ZqVKa1LunBevSiFzb6c=; b=sdex/i66WqepQH
	38cB7nMiHnC5QxFcT9txvaPlozjTlwiOvq8pnkE5YWgr53tueM9gj0cSiowZfNtMDec1AaVlVRRhJ
	e+xVT3npcju9dLlvn+fp8YC3DWn2CItkMkAw45md2ikKYzSlFea1FgfSEDk3EORF8pfq9ycqR8Tli
	KadtJZkEGge+LIUXbd/I/ZDNdP91D6B3JvjSU2dzPwboHzTS9gyOmlXMGw8v2SXxWE1uKuHFcQVtk
	Ij+uc35IcQXZfR5g3cuA72cZGI7vkQE/g5B8Wr6g1wvdkCQ5dNrHNxk9TaNVxwWqUbBN4mlorYfze
	smV+t4ys5T9AyCfDiMtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUQN-00FDJM-0f;
	Wed, 11 Oct 2023 08:18:35 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUQL-00FDIF-00
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 08:18:34 +0000
X-IronPort-AV: E=Sophos;i="6.03,214,1694703600"; 
   d="scan'208";a="182677690"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 11 Oct 2023 17:18:24 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 85B6A400F79B;
	Wed, 11 Oct 2023 17:18:24 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH 0/2] phy: renesas: r8a779f0-ether-serdes: Add Re-initialize code
Date: Wed, 11 Oct 2023 17:18:15 +0900
Message-Id: <20231011081817.257113-1-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_011833_182505_6A4EEC31 
X-CRM114-Status: UNSURE (   4.12  )
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

This patch series can re-initialize this PHY after called phy_exit() and
phy_init() again. Such re-initializing the PHY will be needed for system
suspend/resume.

Yoshihiro Shimoda (2):
  phy: renesas: r8a779f0-ether-serdes: Reset in .init()
  phy: renesas: r8a779f0-ether-serdes: Add .exit() ops

 drivers/phy/renesas/r8a779f0-ether-serdes.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
