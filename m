Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC9F1E6FE41
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 19:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GBMLKp9CcRnGk4+Tt370O04MUtRKHIGlbY4j6N5slCU=; b=4xREYfMmCU7EEP
	70SR/YodiakOo65NWXv1umplPRBFMYPwaiCBPjeb7TlIncS3m1/o0KizEeIHoLEOIFmP8mTqb81N4
	IAL7AoDu7KlnvPpeiZ5ARqr5+JQ2f8oGJd5m4YjVWSUZMZ90e/SkJoG3YEHeUWDdlUxnlrooSmTnb
	acduO0U0IxJhRxmnes2Fxaquu++SI9LvR2/OvZC1YEJlWrKGvHjiEib23KS8QIuRXgRpBbnsb3dL+
	bSY3yhsy6E2RCW0KIVFIunvcVcU9hDP0yE34JyjBEMgfFP4CSbZxCRimkDEqng2/9t+FLpjW87BVj
	qNbsq64B/01xK+n75azw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smf5k-0000000DU2h-1U8s;
	Fri, 06 Sep 2024 19:58:00 +0000
Received: from smtp-23.smtpout.orange.fr ([80.12.242.23] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smf5h-0000000DU24-18Ru
	for linux-phy@lists.infradead.org;
	Fri, 06 Sep 2024 19:57:58 +0000
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id mf5asaRIOjDE7mf5asHg0n; Fri, 06 Sep 2024 21:57:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1725652674;
	bh=xYR3kPiysp0DAu3hHTCdnVZ7J5OM+i5euxXxIpGksJ4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=UKRALhwGsYTuYigKVxKoo0JZ69+DDjBvnn6qfJcKI3njUqRapI3Rh51o8+diJHjuE
	 MhgHF9HQnh1G5UdkHXe+Ijsp4HwEphBpO9KK5OVMJFcd1p0m1Pev8lY98FjLHnsM6f
	 14VKjI/kFW9y/n/yw4te7mKEm3UoVH3om1zmYXAzE5RkqmUOR1DrZpSaEDSD0NMSMp
	 eejwB1pfMfRrESQd9sqWBRs0d/TIwnau3gBlyaEzdY2962egpIlD+AW0VPde039ebG
	 vvN3mh6SEx9MoGRI1HzwpCnk8TLGWyHyaCnwki82Fl13TdSFCPotd6vRaQjmVzARAG
	 bK5cf5AD8YdUA==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 06 Sep 2024 21:57:54 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Fri,  6 Sep 2024 21:57:47 +0200
Message-ID: <fc9f7b444f0ca645411868992bbe16514aeccfed.1725652654.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_125757_467649_BE434213 
X-CRM114-Status: GOOD (  10.13  )
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

If an error occurs after the rcar_gen3_phy_usb2_init_bus(),
reset_control_assert() must be called, as already done in the remove
function.

Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 58e123305152..8577056491de 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -770,7 +770,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		if (IS_ERR(channel->rphys[i].phy)) {
 			dev_err(dev, "Failed to create USB2 PHY\n");
 			ret = PTR_ERR(channel->rphys[i].phy);
-			goto error;
+			goto err_control_assert;
 		}
 		channel->rphys[i].ch = channel;
 		channel->rphys[i].int_enable_bits = rcar_gen3_int_enable[i];
@@ -784,7 +784,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	if (IS_ERR(channel->vbus)) {
 		if (PTR_ERR(channel->vbus) == -EPROBE_DEFER) {
 			ret = PTR_ERR(channel->vbus);
-			goto error;
+			goto err_control_assert;
 		}
 		channel->vbus = NULL;
 	}
@@ -793,15 +793,17 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	if (IS_ERR(provider)) {
 		dev_err(dev, "Failed to register PHY provider\n");
 		ret = PTR_ERR(provider);
-		goto error;
+		goto err_control_assert;
 	} else if (channel->is_otg_channel) {
 		ret = device_create_file(dev, &dev_attr_role);
 		if (ret < 0)
-			goto error;
+			goto err_control_assert;
 	}
 
 	return 0;
 
+err_control_assert:
+	reset_control_assert(channel->rstc);
 error:
 	pm_runtime_disable(dev);
 
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
