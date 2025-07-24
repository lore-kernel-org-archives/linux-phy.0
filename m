Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B3F0C87FD5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcZJOAcislOzpilsFMTklmqI508ZsHGvudj+hwsMbW4=; b=LD6zPgvhNTZrLO
	j06hK2acWze9e1fuMacpDd5vlQW0MS+Ti84gxruPg/k2DUGfPnklBtcMazjXkIkunVDwDyfclK/iV
	fQ792sDYqbbNLw15RrFYXG6nbDUqgFUSepUwJOJC3PkoD/Szgf0iKSL3saeGFKRlduvex+dtcUNE6
	pEp84YrT68tbMl8K7qOk3i8IEMlJRcVOovCV16Jg+bYq8VjaSsopgEo5IOKfQpeOpz6ZC27rEGeh/
	ayQkCe9wBg+AIV/LZoLsHhB0pSGEgq1OmNV3hB0JBjo8rais86wDvskipRrcxFCzFGmZkc8HCi2+s
	c94adCx/uVslMJ3m7wYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0li-00000008Cuu-0pob;
	Thu, 24 Jul 2025 18:34:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBa-00000007vCZ-0Uc0
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A0BD4676D;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DA4DC4CEED;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372125;
	bh=EwsPyx7dz7vSpeeYkSkzX73MFwyn2UY9p6ctVWyUVJ8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TTfOYXzXn83LMaoSCKQ7FQTrldOsvDJkszbaNyRHLH19Ep//UAGcACCxg6d28dQbl
	 JiNup8Yo6ASaCMf4rgh50vlQig0v/xcBEo97rJw8Eg0pKhk4N/H6ycoz8d43UJVLzM
	 stTH4MqniaNaJMooZs179P1HggFZsG045HVKWc1PYwnlR0nqhbMRBD/zOTvpqraTwS
	 CuB9CBr7RI0jk0gFLZjyMtw3+QeIpQV2meqUk7ej+5Wm3ccjSKrfBKF1vVOvW4GYxU
	 a177XwHZdDmrrKu+T/BALViZ6fK1CxZTi4BCfP8+DBI9eZAFJ5Ya8dtsQZ8Pm7ZI3A
	 tVXX5TcqG2HPg==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBV-000000004BL-0MEm;
	Thu, 24 Jul 2025 17:48:41 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 10/11] phy: ti: dm816x-usb: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:22 +0200
Message-ID: <20250724154823.15998-11-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084846_235335_98B176F1 
X-CRM114-Status: UNSURE (   7.81  )
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

The driver has never supported anything but OF probe so drop the unused
platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/ti/phy-dm816x-usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/ti/phy-dm816x-usb.c b/drivers/phy/ti/phy-dm816x-usb.c
index e8f842d4e841..d274831b731c 100644
--- a/drivers/phy/ti/phy-dm816x-usb.c
+++ b/drivers/phy/ti/phy-dm816x-usb.c
@@ -269,7 +269,6 @@ static struct platform_driver dm816x_usb_phy_driver = {
 
 module_platform_driver(dm816x_usb_phy_driver);
 
-MODULE_ALIAS("platform:dm816x_usb");
 MODULE_AUTHOR("Tony Lindgren <tony@atomide.com>");
 MODULE_DESCRIPTION("dm816x usb phy driver");
 MODULE_LICENSE("GPL v2");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
