Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40C31C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 10:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAXzmz4JjHcPZWndICTrkDY6tJstzLzz+FAZOy4Qem4=; b=in4dlxAJG7hsVd
	GmjG1Nn4HdmXNMphsB2FPlTvbvOYwAMUw0UdZwqD3+nLhDxqbkyJ30topInoeUes5br4zciPKWpfe
	xjaOtw7W3FpFG68mICrvRN7m0vyvkQ8Rse4jLEkSKmHOZxa+BoAExiCCCn4J0biNxw3wCCPM5VS/c
	GgoI9H+R/9QEqeff5n2ZVZ5km0EpkSW/t+CB5xUQGT5YNfh2+c4HXvnWopdxUAhiOJRT5tP8F3sKu
	Bap8+a8jIsnrEW/qufq1b0Sx1N3IXIUv9MxByt31tBdJThqThTaqmSqjMsXnxhwrJFrC3a94Awicb
	yAWLrYClrc6lcDmLG03g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncPGa-00BCFO-MC; Thu, 07 Apr 2022 10:21:28 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncPGU-00BC8f-SL
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 10:21:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 3886324BD093
 for <linux-phy@lists.infradead.org>; Thu,  7 Apr 2022 12:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1649326877;
 bh=yqZkgoLIliahw54bhuOwqAtHS1QM7mDnzTPGUCJAZLA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Key5QeUk52dfAehA2AQqxDDwuibIZ63CLDp3ki7bhXyFKcZD31AlFuzK9bx4CRTu4
 fVSxcNrV3RDDa66Un79suZiEGZyoVh3xRmdssrxfoNaGHTksdSgpIkx0KaBhOgJXVt
 vVXWUqKsSZMG/NJEY+/ho+w+RDb4sxK+EOY1gBbs=
Received: from fx301 (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 46AD224BD08B;
 Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <8e12.624ebb1b.b522d.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx301.security-mail.net (Postfix) with ESMTPS id B58F924BD080;
 Thu,  7 Apr 2022 12:21:15 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 96E9E27E044F;
 Thu,  7 Apr 2022 12:21:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 7FE9927E044D;
 Thu,  7 Apr 2022 12:21:15 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 7FE9927E044D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1649326875;
 bh=tYjU0VyJFwe7OSSRp1Yty55z6lsZNfkFYLTMM5Cxjhw=;
 h=From:To:Date:Message-Id;
 b=PNEiforYv9jEllNVZmAfsgS2+X24vZqP7StpA3ypfvqIEvd+OtmMTfg/4y8+amzkF
 oNizW+CrkIKrAHSqbiVsmVdFOsyNdyHZSo5qHhF/rHbEHXumNIVq9tjYIekXopMdti
 QkSL2maoAGZVifE+Los+38D+VqQjY/2cGfFwa1II=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id U4URVFnSMH9N; Thu,  7 Apr 2022 12:21:15 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6CED527E0443;
 Thu,  7 Apr 2022 12:21:15 +0200 (CEST)
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
Subject: [PATCH RESEND v3 1/3] phy: core: Add documentation of phy operation
 order
Date: Thu,  7 Apr 2022 12:21:06 +0200
Message-Id: <20220407102108.24211-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220407102108.24211-1-jmaselbas@kalray.eu>
References: <20220407102108.24211-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_032123_240550_2E02418A 
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add documentation on phy function usage: init function must be
called before power_on; power_off must be called before exit.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Cc: Minas Harutyunyan <hminas@synopsys.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
---
v2: Update the documentation syntax for returned value

 drivers/phy/phy-core.c | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index b3f45dbdc681..d1817a0f2d09 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -229,6 +229,17 @@ void phy_pm_runtime_forbid(struct phy *phy)
 }
 EXPORT_SYMBOL_GPL(phy_pm_runtime_forbid);
 
+/**
+ * phy_init - phy internal initialization before phy operation
+ * @phy: the phy returned by phy_get()
+ *
+ * Used to allow phy's driver to perform phy internal initialization,
+ * such as PLL block powering, clock initialization or anything that's
+ * is required by the phy to perform the start of operation.
+ * Must be called before phy_power_on().
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
 int phy_init(struct phy *phy)
 {
 	int ret;
@@ -258,6 +269,14 @@ int phy_init(struct phy *phy)
 }
 EXPORT_SYMBOL_GPL(phy_init);
 
+/**
+ * phy_exit - Phy internal un-initialization
+ * @phy: the phy returned by phy_get()
+ *
+ * Must be called after phy_power_off().
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
 int phy_exit(struct phy *phy)
 {
 	int ret;
@@ -287,6 +306,14 @@ int phy_exit(struct phy *phy)
 }
 EXPORT_SYMBOL_GPL(phy_exit);
 
+/**
+ * phy_power_on - Enable the phy and enter proper operation
+ * @phy: the phy returned by phy_get()
+ *
+ * Must be called after phy_init().
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
 int phy_power_on(struct phy *phy)
 {
 	int ret = 0;
@@ -329,6 +356,14 @@ int phy_power_on(struct phy *phy)
 }
 EXPORT_SYMBOL_GPL(phy_power_on);
 
+/**
+ * phy_power_off - Disable the phy.
+ * @phy: the phy returned by phy_get()
+ *
+ * Must be called before phy_exit().
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
 int phy_power_off(struct phy *phy)
 {
 	int ret;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
