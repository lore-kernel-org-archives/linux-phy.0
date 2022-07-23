Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EF16C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 23 Jul 2022 03:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nsVsumCRex/zb2Ei3A6DqhqalST+oVjCCQB40rUOkgY=; b=d4g6pxmCCmbaFv
	fmwbuLTjEGdDaVXOg8GuWf/xelMvyaxYJhxGi2aal5DpKPGE/zi7+lpn/7I4G527xoWV46ZlX1mCs
	LYk1IDeNrfNBIycfq8g9LA99tDY1bvBQcRW8HVu/xxHfPf+naphKvdL9S+KNyeOuTqfcfKbuX5WZg
	NXvEC85q84FoaAi1EZzVKmWvJ5wKeS+Y/9tjB49pLj9A+9VRkMonlzbiQBaKUf+UyIeg0JBKuMZAi
	dudf4bVtZPql9vWwRDY/sBJ+NgsXfKdIgrVc/Mp5pxzK3lVhuxpiRecIQ3//Y2DNyXirfESkm6h1x
	UOPW75VDZeuG1MitV73Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oF61T-00FPNp-Fx; Sat, 23 Jul 2022 03:41:47 +0000
Received: from mail-m972.mail.163.com ([123.126.97.2])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oF61Q-00FPN8-IZ
	for linux-phy@lists.infradead.org; Sat, 23 Jul 2022 03:41:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=E5bSd
	3wPwM3u95WU8fODTOt0SYOO2PuBYzObYqAQDrI=; b=iRv+6pW8Hr3VHiGikm4HG
	R+lmJR6UlD6EMcerIkQENZMupg+rll2pmRbQfTP6sjOlPGaAVMn7DeuBgoSiSh4s
	SZT9E0WQnB2POkS2luRvVTbFtgJWD3spN3dNCoTgGw3XQ7W/6HGRTucBaEpUV+Ol
	s3u8lmdK/WvELVbGrOan7Q=
Received: from localhost.localdomain (unknown [123.58.221.99])
	by smtp2 (Coremail) with SMTP id GtxpCgD3sQvrbdtiiq_7Qg--.36884S2;
	Sat, 23 Jul 2022 11:41:33 +0800 (CST)
From: williamsukatube@163.com
To: linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: jckuo@nvidia.com,
	kishon@ti.com,
	vkoul@kernel.org,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com,
	William Dean <williamsukatube@gmail.com>,
	Hacash Robot <hacashRobot@santino.com>
Subject: [PATCH] phy: tegra: xusb: check the return value of devm_kzalloc() in tegra_xusb_setup_usb_role_switch()
Date: Sat, 23 Jul 2022 11:41:30 +0800
Message-Id: <20220723034130.2952016-1-williamsukatube@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: GtxpCgD3sQvrbdtiiq_7Qg--.36884S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtFWrZrWftw17Cw1kKw1ftFb_yoWDXrg_uw
	s5Zr97Xw4qgFy7Cw1jyrsxZrWSyrW0qF1IgFsYqFy3CrW09F40yrWDZFy3u3yxC3Z5GFZr
	G34kZF1Fvr13GjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU5tsqJUUUUU==
X-Originating-IP: [123.58.221.99]
X-CM-SenderInfo: xzlozx5dpv3yxdwxuvi6rwjhhfrp/xtbBew1Hg2AZAZahXgAAsj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220722_204144_988346_70A6F732 
X-CRM114-Status: UNSURE (   5.97  )
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

From: William Dean <williamsukatube@gmail.com>

The function devm_kzalloc() in tegra_xusb_setup_usb_role_switch()
can fail, so its return value should be checked.

Fixes: f67213cee2b35 ("phy: tegra: xusb: Add usb-role-switch support")
Reported-by: Hacash Robot <hacashRobot@santino.com>
Signed-off-by: William Dean <williamsukatube@gmail.com>
---
 drivers/phy/tegra/xusb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index aa5237eacd29..e3611fb4c779 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -668,6 +668,8 @@ static int tegra_xusb_setup_usb_role_switch(struct tegra_xusb_port *port)
 	port->dev.driver = devm_kzalloc(&port->dev,
 					sizeof(struct device_driver),
 					GFP_KERNEL);
+	if (!port->dev.driver)
+		return -ENOMEM;
 	port->dev.driver->owner	 = THIS_MODULE;
 
 	port->usb_role_sw = usb_role_switch_register(&port->dev,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
