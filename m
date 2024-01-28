Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D301C47258
	for <linux-phy@archiver.kernel.org>; Sun, 28 Jan 2024 08:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=12Jl+qI/ZLh5M9tPSxHJOuqQYinIbI7MKjZ6PTTqJOg=; b=UNxPCrKOmG6+9S
	WSlzQNPZ08KSN3Nzqt6y2VdcKilKi69WPdEexii1VjVcuKS/SbHaCnLzfvciLvPIq54vBL2S2yB3E
	30erw06cHUfiYgq8+oJTJH7RJ9J9zkuGapSfB8O09f1r/EJnLIjNh4oVIxBFwKG7rtmkmTn5R0790
	ROD7FZYr8qxNMUA2OtF0UBijEQE5SQ3y/Q4CFmHwCuliZWzHyUB9djhpYBv5wjRlynvKMJTN2q7wq
	QtWX9Yq25lFPXptjB32vw3vJrIbMbqvboHdvjCqZOrIBmC25RUt9nd5V/S98zOybhtTslrDwVpiy0
	/n1S2DJzX/sfH/CEw2Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU0pc-000000095H0-3B9S;
	Sun, 28 Jan 2024 08:48:00 +0000
Received: from smtp-25.smtpout.orange.fr ([80.12.242.25] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU0pZ-000000095GX-3kbA
	for linux-phy@lists.infradead.org;
	Sun, 28 Jan 2024 08:47:59 +0000
Received: from fedora.home ([92.140.202.140])
	by smtp.orange.fr with ESMTPA
	id U0pVr3FypwnxGU0pVrvuNg; Sun, 28 Jan 2024 09:47:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1706431674;
	bh=PvDm6o18p5eO0SWxCbyfOmNYdKnWHShtEZV/Rr+hpA0=;
	h=From:To:Cc:Subject:Date;
	b=W+py6fgAl++QyAGnzSJQDzXdfdUMFcFYkCcv8rH5F4Eg4+VXXpMT3kYKQ3mfhJEjS
	 TaOSsATcd+8sYIuP+u+qulReV4NmA9genmKpQUU9DFEHDCk7mmr5gppFKDyRLZwOmB
	 Jww+7z0j3FpXmbKGfgZ8Uy/oibBSwsoydYaL1OlRm0E13wUo1EoG3ApS5Iq4a9fR+T
	 3ff52tj4Liw18qCZqo1o5pweEvls3R8mJNcF3rOc4Vt43YpDHmFIx3QFhTx0r3nuQC
	 IVRNADMv7qp6c0F2ANawb1j1jeNXC/+noCFxYTHTyhZ9zBzNvLv01BPFETpMiUgo7G
	 nmBceHbN0Ez6g==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 28 Jan 2024 09:47:54 +0100
X-ME-IP: 92.140.202.140
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Vincent Shih <vincent.sunplus@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: sunplus: Fix a memory leak in update_disc_vol()
Date: Sun, 28 Jan 2024 09:47:50 +0100
Message-ID: <451016052782f18c8b52ed0f836d7ab5c69bac3d.1706431643.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_004758_090751_04F58C4F 
X-CRM114-Status: UNSURE (   8.87  )
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

'otp_v', allocated by nvmem_cell_read(), is leaking.
It must be freed before leaving the function to avoid a leak.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
This patch is speculative and based on comparison on the usage of
nvmem_cell_read() in other driver.

Review with care.
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 637a5fbae6d9..50f1f91ac052 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -105,6 +105,8 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 	val = (val & ~J_DISC) | set;
 	writel(val, usbphy->phy_regs + CONFIG7);
 
+	kfree(otp_v);
+
 	return 0;
 }
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
