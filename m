Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81064E7718B
	for <linux-phy@archiver.kernel.org>; Sun, 29 Dec 2024 14:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CM9k2TqxhyCoS3qL+r2t2m5vV8Vl1z0x1Vpp5jTKsSw=; b=27+uz+lcv1EKsx
	mHmvFgiQGjSYdVNy2dzgBFPkKj1j8jkQ7zYEDMLCPZ7IOcf3Okdm/KtmhnI+3PDrITBk6WtcYkyBB
	jicMQuxThwzovqiOq+3Hb/pUqwWPBSYk4La+JLuHYLbEayAaCaxZkSCLbMUYRvaRLeMuvVnANGYjU
	Nm0mNYQIVJ/GY9AAJ04pjoZG3lL0NmhNH+1fF9nzdw2nOz92xg+BISaXCFnvuMMoaj+bpVWxmHydW
	08sX8KfwALdvN3Y3W11K4lBcbdaTpby7xWRBOfgcCn6XFccqIYjDIpsRHwImpqS6vwSl8MucVYSTt
	RXsjUR1IGT1mtgXzacGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRuCN-00000003UIo-1VKw;
	Sun, 29 Dec 2024 14:23:19 +0000
Received: from mo4-p01-ob.smtp.rzone.de ([85.215.255.52])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRuCJ-00000003UGg-3qsv
	for linux-phy@lists.infradead.org;
	Sun, 29 Dec 2024 14:23:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1735482154; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=K4YIbJHAzBn2Aibtebd4/z1tOjsnt2ugXwv7YYeWJf1w6aTII0+Ax8jjM9oTBJnJhp
    /eLtsCQ3pxIo0wVp0MzdxJiQGtu7yn5Va9nZXbJoFE5TZ1YAHztJAulE3KowrNQFPM6p
    us5KNiIE1xSrUDtM86/456Ggvs/fSgGzVMaTSaOjn7TBwP7cKX9/BzDImKkfwUtABSAC
    WOi4PRjqpV5Ym7+WUIhvSJ+mhONy1C4gr2J59rfutidk7q+QSxkQw8uSp09m9i2Y/W1Y
    B2D0oxaKBdU4V6R3dPpgYgDrC/sWuLtUQ3GvdWUCt+CIQmtpPXKXVzoCNSkG8IEkyalr
    WlRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1735482154;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Date:Subject:Cc:To:From:Cc:Date:From:Subject:Sender;
    bh=MxFHb0sA2rG1su7Y5qk0VowaQ6c5RnogIDqizas084M=;
    b=eUxzQtHk0JX5t/sek41TAFhqK5hKngWmY8vtKZmQaaqFPOEAqZrxEivqSsPX2x6fw2
    4CuiocAx70hPXv350A8qlppNI0PQdCaqnRbSbXN7kKKhln2m447Tqc6tD0/q4GQhE19S
    w0pj/GVMONF2K51M18YEHVeXcUPC0KQSDr3A8JOevn2sWXtqAI9kvwxWNpzNAX4DvrGM
    f+e8gACmB4EoHusKuyoP6ZpHnQ340SIgL2WDI1QP6VGe/yJ1Q2+LzQIDfPiDDepHSoJw
    ZJ2E85yB7flzuKSMYOxPAjIghbiRBqmSgxjiCUeBkabv+sp60Qyal4i3vlPrNc96fkrb
    u/mQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1735482154;
    s=strato-dkim-0002; d=goldelico.com;
    h=Message-ID:Date:Subject:Cc:To:From:Cc:Date:From:Subject:Sender;
    bh=MxFHb0sA2rG1su7Y5qk0VowaQ6c5RnogIDqizas084M=;
    b=ZF9fHw6uWFEnqTqMdrYbMW9DSUKTTw7mcwwG7WFZ+oWYD2kKCesvz8OjvEbz1CUIQp
    hY91Bk+FNoXE93n8FGgpgfu2n704h90yGRS2aoSrBJzg64oktEIhdrvEcTt+31CfGpFX
    Y+oPXIPOYZqp9PdPEfjEVU6V8MX3wzvqWwbQ/6p8Kvj+TisLke6szXV4WtuvdgOvLvwB
    6zTPy90v75/9coERyqcGHhl+GXA+i7XhUBOa40ip8CRmzqeELz4T0/1oyTRDF0qYUli5
    vnL+wzbLLZ+2i9pi03jUQHCHuU55TQK0Y2S+kRBHZVgHo3g9iB+ef4/mwexYWT/ywjhX
    enMA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1735482154;
    s=strato-dkim-0003; d=goldelico.com;
    h=Message-ID:Date:Subject:Cc:To:From:Cc:Date:From:Subject:Sender;
    bh=MxFHb0sA2rG1su7Y5qk0VowaQ6c5RnogIDqizas084M=;
    b=sDNdeB15WLnNfCxAul2311Icb2DLOiVqbWzCzoOXUiYdxSzdO7u5DEpDEUUuaCwm2a
    xzl/ff17H4+Pjd7rwyBA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o12DNOsPj0lFzL1yeDsZ"
Received: from localhost.localdomain
    by smtp.strato.de (RZmta 51.2.16 DYNA|AUTH)
    with ESMTPSA id Q7e0790BTEMXjRn
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sun, 29 Dec 2024 15:22:33 +0100 (CET)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Zhou Yanjie <zhouyanjie@wanyeetech.com>,
	Paul Cercueil <paul@crapouillou.net>,
	"H. Nikolaus Schaller" <hns@goldelico.com>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	letux-kernel@openphoenux.org,
	kernel@pyra-handheld.com,
	linux-mips@vger.kernel.org
Subject: [PATCH RESEND] phy: ingenic: fix unbalanced regulator_disable() warning
Date: Sun, 29 Dec 2024 15:22:27 +0100
Message-ID: <96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_062316_108993_ACD9831F 
X-CRM114-Status: UNSURE (   8.27  )
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

if ingenic_usb_phy_exit is called the regulator is already disabled
through ingenic_usb_phy_power_off() leading to

[    5.367301] WARNING: CPU: 0 PID: 20 at drivers/regulator/core.c:2953 _regulator_disable+0x200/0x230
[    5.368209] unbalanced disables for regulator-dummy
[    5.370364] Modules linked in: phy_ingenic_usb
...
[    5.373441] [<8054601c>] regulator_disable+0x40/0x80
[    5.372952] [<c02450f8>] ingenic_usb_phy_exit+0x48/0x60 [phy_ingenic_usb]
[    5.374283] [<8050839c>] phy_exit+0xd8/0x104
[    5.373104] [<80657a24>] __dwc2_lowlevel_hw_disable+0xe0/0xe8
[    5.373393] [<80658ad4>] dwc2_driver_probe+0x818/0x834
...

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---

Notes:
    Resent because linux-mips@vger.kernel.org was not automatically added by
    get_maintainer.pl (drivers/phy/ingenic missing in MAINTAINERS record?)

 drivers/phy/ingenic/phy-ingenic-usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/ingenic/phy-ingenic-usb.c b/drivers/phy/ingenic/phy-ingenic-usb.c
index eb2721f72a4c1..35984dd8a1bd7 100644
--- a/drivers/phy/ingenic/phy-ingenic-usb.c
+++ b/drivers/phy/ingenic/phy-ingenic-usb.c
@@ -124,7 +124,6 @@ static int ingenic_usb_phy_exit(struct phy *phy)
 	struct ingenic_usb_phy *priv = phy_get_drvdata(phy);
 
 	clk_disable_unprepare(priv->clk);
-	regulator_disable(priv->vcc_supply);
 
 	return 0;
 }
-- 
2.47.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
