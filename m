Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253EEE77179
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 14:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ptkqp1hxHFmNWOFAC8X3Jur3au3ZvYg/xwQuPmLTnIA=; b=IEromWcOwaJpMa
	eiUn31SaBmk8OwlBFXvc3SqsHcs7GTiSs6mbBgMXf0GBMUecHlaLays4R5p6sc89eiuovxraGAc17
	eCs/YdmKCG9bNjord59faPkoA/91Tcc42buxjwCaJOTVHZo+zw8IrBwge980wKAInYBT8CMmut+X4
	4pPL1qhkDGkV3lsQEuauinfNPN1w2dT2xylmDDmeIp2K9X69gIL1QQ7y28T5i1KJm7Mcdxmjtgj/F
	TjIOy7mlagBusueHeVJnSeRhf2eHfrYkIBiDfuNExQ8lFsSkNJ+kB9y8eyZoW4pqIOMP9m3RaeUsg
	4Amt1sgIR6CFenwHL82g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJZ7t-00000001qNV-3nh4;
	Fri, 06 Dec 2024 14:16:13 +0000
Received: from mo4-p00-ob.smtp.rzone.de ([81.169.146.220])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJZ7n-00000001qKM-1CBb
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 14:16:12 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1733494542; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=mft91VMrMqOPpdW0b7SKcYchr31zgpbOJbCOA8X3Xh0ho3mQ6rFCeTyhOmlj4P+jEg
    L1ym/j3TRPnqhSie82hwfMv76MC5DOFKt00iZXKxrtWMXyx48eEkj+CyC7HQR0sYVW1V
    2MI/llLJ/7J9LL0svlvGn5bHYqauos40Eyu+DHDK+ZHdIsi702/EKiDj6+2pOG5oLobY
    bTCp1ym2Jj9fHNRKqz+3cY38l+xXDw8iu84zh5Rar1QMfR8v1mBm+4q1Bd6rwvsuDAJC
    53q5BHHC5bXXeVHAondQHBbfWTvK4oiDuq5RlRqE5quppwE1reTHLiVDAn8tdBFKhbhC
    mK1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1733494542;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Date:Subject:Cc:To:From:Cc:Date:From:Subject:Sender;
    bh=Z58+uiVgBPQkke6BcCMA/Ak1YSRMhYCJjTVUw2AGcec=;
    b=BnIdCibFXMZRPq+3fq+O2RFDeCenveNeStzpF93r2YTbwQ4jOMRbpUxP6uyjeR7crU
    XshCGcJT6++qNzV2icUYG5fg0UyQDvQg3aTXYP1aDiCed7eksPyOx+vne0rnQQob3F84
    v38e8UiqYQZuF5YxBmwr3wSaGtZvMJxcWxrkr0qTAq06mqhjf71NJTDV3LUfFNLZGk7g
    cHryS5FpfOihFLbOn1PAAyfb4n8wEJSwOGSjrehrXkfJgWPugv5tAvHUAfqaNniF6LAc
    pS0dyWFoOrNs8FLyNOpC2YduFxbrNO/iqmNbJXA8iwTPbxJnjgg8CyYyxu+JALhVo4LA
    fzuw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1733494542;
    s=strato-dkim-0002; d=goldelico.com;
    h=Message-ID:Date:Subject:Cc:To:From:Cc:Date:From:Subject:Sender;
    bh=Z58+uiVgBPQkke6BcCMA/Ak1YSRMhYCJjTVUw2AGcec=;
    b=jFvcutz6RXCyfYwhyGr1jkrRUgx+SIgtsF/kbalTLUYAMVAFvpbV7D1/i1xaDboTTs
    sWUVs/4bwEykV5eX8AZCEosnONtdJePeXLZURq1wOFvQjez9Tpf0RqCgEDIvUlIkUQv6
    puH+AjlxpVhTBa3x+5zxSlo6d4srY/m1aS8tHs+dWCRSGe3mv8sMh5RF5rU1DSuR76yA
    bSRoTK4sV/gY6xcLItxKSM3uGCtCmFKio8hxNHsrlHTtlANP36rLImjcI5IfYVWKJPp+
    U/9LB27Tzcw2KuiooANHXmpVMukVE7nvPiArwJqPAxdQ16SWeDvdMAD7+otK4bzsXl/t
    mEng==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1733494542;
    s=strato-dkim-0003; d=goldelico.com;
    h=Message-ID:Date:Subject:Cc:To:From:Cc:Date:From:Subject:Sender;
    bh=Z58+uiVgBPQkke6BcCMA/Ak1YSRMhYCJjTVUw2AGcec=;
    b=1yoHfBetc6222DtH2uP7I5kP8ZnzeQaoCUA2ardu61p2bVDHAHQYiNBLI5M2OL5tl2
    g0mZk1jQSyrnZuH+XaDg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o12DNOsPj0lFzL1yfjEZ"
Received: from localhost.localdomain
    by smtp.strato.de (RZmta 51.2.11 DYNA|AUTH)
    with ESMTPSA id Qb7e400B6EFfkqc
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Fri, 6 Dec 2024 15:15:41 +0100 (CET)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Zhou Yanjie <zhouyanjie@wanyeetech.com>,
	Paul Cercueil <paul@crapouillou.net>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	letux-kernel@openphoenux.org,
	"H. Nikolaus Schaller" <hns@goldelico.com>
Subject: [PATCH] phy: ingenic: fix unbalanced regulator_disable() warning
Date: Fri,  6 Dec 2024 15:15:34 +0100
Message-ID: <52768c120a6999ce9275bcb15d74a4255f2ef790.1733494534.git.hns@goldelico.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_061607_583039_98FAF5B2 
X-CRM114-Status: UNSURE (   8.11  )
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
