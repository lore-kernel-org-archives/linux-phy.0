Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D34CCF2C0
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 18:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dddmhDW7UG0JsjvN4IfwUft82SBHMxSAJuryxukCBS0=; b=WfTyH0PmDPzsCx
	7B9ook73xxDnkLtz6Dn42/Z/cv+i2lTampcl6F56oVQ7ooKVO+KMGhP0UzbpUMXabGYGs2PapXCVy
	akKfwOJO8dqpYm4ZeS1OhExYQK/Ekg1XoxPVH3P30EUg25zW+sTeU9DuEuDPKPMevYpTzyRj6nnpc
	r+C0CPyW4vsVBKZit2NVQDoV1wwVORmKMSy7YtcgnC5+fH8KtDvAduN+37yfdkjiuIh01ZE3/BsNv
	gbsnPt6B7FDesDXprLw3LkiCDNTd7VgHFSTHIXufoPKGNuqxRLnlobDovcZ4eDdm4GLXFx9q+f0lk
	PK7Pko9y7p6S9DzfSM5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmHp-00000003cTO-2P3s;
	Fri, 16 Oct 2026 18:04:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmHn-00000003cSK-3XuE
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 18:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sAzacLDrOWXqvRdVru5AJmYGbd/sfLGea+5qLY8Hrfo=; b=lFfBIIaeqEj6gnqFmuYnoQfpi9
	EjQl1A3xPojw1HBZ9mPOf6cpkSpzsCTQQcC6iulmcfSMofxazjXP51BF+JZAwS292BoJuiPsQUcv6
	eokueaFVHokQhOA3pu7t/iHVV2xsQI5xKzWMtGXtPQOJjXj/wkSE3ZPgriWK7Wg+QRNmoTQ6GWCIr
	I82jUbYhD2vFtqWEz4M54PW8PmlaoyJBTIF4jgzFSEnJiulJjmJksE5XI9DD/EUfxmow+CKjU0wSG
	lMz2QhnL125mab4nCEj/Zvk+okUn2PJ+yr58gt/cgbWXxvNKfE935sVj6vBKUYJ/rG6/ugvC3M+hU
	kTjp/67g==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHmHk-00000001p9F-3tyx
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 18:04:06 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id A67888024B;
	Fri, 16 Oct 2026 20:04:01 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2oi-JMuoN47i; Fri, 16 Oct 2026 20:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1792173840; bh=EkKjMgBUzLOohikYQvDNMu+lE0zSolRB6iMtBrVemmQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=C8DemDUcj5QU0ZSq5watk7GeZwlkegxwwZxJFIuhVL9HdwRGL26+ODfXK7C6C6F/H
	 y4zpL13jKOlLzgaaXosDxj7SjzBo/iR8mn6FHLgVTHMaNpauXPZYdyGRSf3+WHuGFU
	 MvHvs41VODennCdp1upPMnhznteT/lTbVYtjQO/Iu+tPKIU8fxO+cB0pWWnUDHBcay
	 UHFEoUJ5Ekg9vXtyFSWIdbGtTMMscvflTV7y/IlzErEw6TCWWzCZz7bTfKzRrGuadw
	 LmzfxeD9IKn60lGFwtgMdEG4UsUjDbkOMZHhyNnT694ulrgQknxPZHhbzo95P6mVm7
	 CJfphhQQD8o6g==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: [PATCH v9 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Fri, 16 Oct 2026 23:03:12 +0500
Message-ID: <20261016180314.31760-5-adilov@disroot.org>
In-Reply-To: <20261016180314.31760-1-adilov@disroot.org>
References: <20261016180314.31760-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_190405_078482_B27FA763 
X-CRM114-Status: GOOD (  14.29  )
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

In RTL9607C, there is so called "IP Enable Controller" which resemble
reset controller with reset lines and is used for various things like
USB, PCIE, GMAC and such.

Introduce the reset_control struct to this driver to handle deasserting
usb2 phy reset line.

Make use of the function devm_reset_control_get_optional_exclusive()
function to get the reset controller and since existing RTD SoCs don't
specify the resets we can have a cleaner code.

Since the vendor usb driver developed by Realtek doesn't assert the reset
line (or in their case clear the register bit), we can reasonably assume
reset_control_assert is not needed here.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 5e483c853f02..2ddad7be7353 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -17,6 +17,7 @@
 #include <linux/sys_soc.h>
 #include <linux/mfd/syscon.h>
 #include <linux/phy/phy.h>
+#include <linux/reset.h>
 #include <linux/usb.h>
 
 /* GUSB2PHYACCn register */
@@ -128,6 +129,7 @@ struct rtk_phy {
 	struct phy_cfg *phy_cfg;
 	int num_phy;
 	struct phy_parameter *phy_parameter;
+	struct reset_control *phy_rst;
 
 	struct dentry *debug_dir;
 };
@@ -676,6 +678,15 @@ static int rtk_phy_init(struct phy *phy)
 	if (!rtk_phy)
 		return -EINVAL;
 
+	if (rtk_phy->phy_rst) {
+		ret = reset_control_deassert(rtk_phy->phy_rst);
+
+		if (ret)
+			return ret;
+
+		usleep_range(5000, 6000);
+	}
+
 	for (i = 0; i < rtk_phy->num_phy; i++)
 		ret = do_rtk_phy_init(rtk_phy, i);
 
@@ -1055,6 +1066,11 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
 	rtk_phy->num_phy = phy_cfg->num_phy;
 
+	rtk_phy->phy_rst = devm_reset_control_get_optional_exclusive(dev, NULL);
+	if (IS_ERR(rtk_phy->phy_rst))
+		return dev_err_probe(dev, PTR_ERR(rtk_phy->phy_rst),
+				     "usb2 phy reset is not working\n");
+
 	ret = parse_phy_data(rtk_phy);
 	if (ret)
 		goto err;
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
