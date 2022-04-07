Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A856C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 10:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCRkm4+FIZHV1hBETjBWbGNeL4mT22mBeFuwoP4zkKg=; b=HswfAHgd9decEd
	3cqmKq5dnDzEnmy/ilepgYPC4ShGYWYrReqjPW1UCiqjsPj3DJBimkCe8gM1RTyHjlmXCuI3DMqVp
	Q1RDfzo8Eh6XMhXukgQ7TVJ3sZRROx5Uf6HLG//dMQIoX1jVBHWQr6bO8LNzmwnA72+hVX9H4LfXl
	5jLktDp3T0uwYdK/29qDRMLuSGAbpTiJ2MVzVMwjrYvHuoNmh62AilwHjNfVE8oITTbuuwQHWjfPj
	OKPtNcNLTRh5lBRkRcgd8dprnM52UtQjwpRnc47Gmf57IFDy4dTixPfj1jKwGC3pniNNZAOWol/gM
	DwYgG9lhsExelB+yKQDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncPGd-00BCGE-0u; Thu, 07 Apr 2022 10:21:31 +0000
Received: from smtpout30.security-mail.net ([85.31.212.35]
 helo=fx305.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncPGX-00BCAt-IZ
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 10:21:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx305.security-mail.net (Postfix) with ESMTP id 66EBA30FDEF
 for <linux-phy@lists.infradead.org>; Thu,  7 Apr 2022 12:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1649326880;
 bh=2leB9N9MVO1isCk23h+tI5TUBCZFTqNDEKraPyTS3tI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=WiRpawPxoFGAm+vM5jCu3MRtsmlDtvcjqyH52aRHONEi4EIUmvBOYJy3ruGD+AtdV
 LsQVBS+ElIyEsXAs2lugHscP+vGFwv8PBVqPzfsZ5ExFioqicVuinxj4t35v7HcTn+
 uenUPLLFzJxofdag4XAtBMjIlemC22VQekUnI6nc=
Received: from fx305 (localhost [127.0.0.1])
 by fx305.security-mail.net (Postfix) with ESMTP id 247D730FD36;
 Thu,  7 Apr 2022 12:21:19 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <13a18.624ebb1c.cdc68.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx305.security-mail.net (Postfix) with ESMTPS id 8314D30FD53;
 Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 9DCF927E044F;
 Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 87EE727E044D;
 Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 87EE727E044D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1649326876;
 bh=9IM9Pd49M0jFhF7iENBzRLSpXjLX1rGW2MgcQSst3IU=;
 h=From:To:Date:Message-Id;
 b=IdX8uYYwjaFAjT0p0mKvde9rm56N1wrTLce4TQ7+tgGjKbuT7lmWHuc1FjKk+2tiR
 zwHrHN1iU5vKialopUMwQoR5K02MOSkH6OkHyQMLq+qaTU0XnoHGg23u7s+LAOXcJg
 B0L8L4oECeLV78az/wtpUvIeRNI26g2iuRVVQ8nU=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Bg-8kJbaERwh; Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6AB8C27E0443;
 Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: linux-phy@lists.infradead.org
Cc: linux-usb@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Amelie DELAUNAY <amelie.delaunay@foss.st.com>,
 Yann Sionneau <ysionneau@kalray.eu>,
 Michael Grzeschik <mgr@pengutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 Jules Maselbas <jmaselbas@kalray.eu>
Subject: [PATCH RESEND v3 3/3] phy: core: Warn when phy_power_on is called
 before phy_init
Date: Thu,  7 Apr 2022 12:21:08 +0200
Message-Id: <20220407102108.24211-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220407102108.24211-1-jmaselbas@kalray.eu>
References: <20220407102108.24211-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_032125_804494_996E3506 
X-CRM114-Status: UNSURE (   8.61  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

A warning when the order of phy operation is mixed up by drivers,
this is an atempt to make the phy usage more uniform across (usb)
drivers.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Cc: Minas Harutyunyan <hminas@synopsys.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/phy-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index d11b517e283a..90f589563a60 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -253,6 +253,9 @@ int phy_init(struct phy *phy)
 	ret = 0; /* Override possible ret == -ENOTSUPP */
 
 	mutex_lock(&phy->mutex);
+	if (phy->power_count > phy->init_count)
+		dev_warn(&phy->dev, "phy_power_on was called before phy_init\n");
+
 	if (phy->init_count == 0 && phy->ops->init) {
 		ret = phy->ops->init(phy);
 		if (ret < 0) {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
