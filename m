Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38835C64ED6
	for <linux-phy@archiver.kernel.org>; Mon, 27 Feb 2023 15:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeaXeJKNY62dQkO0/ephl5eWXUhqtOILLnGshvog6Wg=; b=10LoUBAjmYuU3j
	9NS2DbkEuZGVUJJ/EsPB9aYIiWGauO8Dtg4gMj69xEg0hEW5pPtCjaQAoy7ffH+L/JaKbqkWdbEyp
	/DCGTAQ/ZhaGAKrDaLJcKe4pFMY5yKKwiapg6bvKrc6s9VdwoWx+UZf7Gjjz7x5Q6tUzjHThDZiQh
	pCJv61DMSCbRlsxLgyaP54z+q0VDePiqA/O2JG1WHuiTUFkDwrgHi+ncL8/leVgQLcgOPwyrc7a/Z
	l/PPWT0UbX9t1b/riwYLlNOrYT5ppvzkq8OecMLdeOIkf5ehTHp9hMJxkpbBMzdL/AGSSW6C1lpM9
	qLF+Hj4pCwoWdn0f3OJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWfCq-00AAUF-GS; Mon, 27 Feb 2023 15:14:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWfCn-00AAT9-HN
	for linux-phy@lists.infradead.org; Mon, 27 Feb 2023 15:14:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pWfCh-00082t-00; Mon, 27 Feb 2023 16:14:15 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pWfCe-000exp-R1; Mon, 27 Feb 2023 16:14:12 +0100
Received: from mgr by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pWfCe-007x7a-0a; Mon, 27 Feb 2023 16:14:12 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Cc: fabrice.gasnier@foss.st.com,
	linux-phy@lists.infradead.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	error27@gmail.com,
	kernel@pengutronix.de,
	linux-stm32@st-md-mailman.stormreply.com,
	amelie.delaunay@foss.st.com
Subject: [PATCH v2] phy: stm32-usphyc: add 200 to 300 us delay to fix timeout on some machines
Date: Mon, 27 Feb 2023 16:13:19 +0100
Message-Id: <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <1869feff-06b1-17f1-4628-b433c858ad79@foss.st.com>
References: <1869feff-06b1-17f1-4628-b433c858ad79@foss.st.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_071421_594353_2501CFD4 
X-CRM114-Status: GOOD (  11.56  )
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

An minimum udelay of 200 us seems to be necessary on some machines. After
the setup of the pll, which needs about 100 us to be locked there seem
to be additional 100 us to get the phy really functional. Without this
delay the usb runs not functional. With this additional short udelay
this issue was not reported again.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

---
v1 -> v2: - changed the mdelay to udelay_range(200, 300), like suggested by fabrice
          - moved the delay to pll enable so it will only be triggered once

 drivers/phy/st/phy-stm32-usbphyc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index 5bb9647b078f12..dd469f57fba7eb 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -317,6 +317,9 @@ static int stm32_usbphyc_pll_enable(struct stm32_usbphyc *usbphyc)
 
 	stm32_usbphyc_set_bits(pll_reg, PLLEN);
 
+	/* Wait for maximum lock time */
+	usleep_range(200, 300);
+
 	return 0;
 
 reg_disable:
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
