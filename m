Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3D49C54E58
	for <linux-phy@archiver.kernel.org>; Mon, 25 Mar 2024 20:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TAwSVdRwnGTKtLqy2/F3BVGbfYIHFAa0V1Ao2OeTyv8=; b=Jp03olEEKJJ/mU
	4/eInHIkzGIl1wzPdq5VYJ6flqnzbOyHUg+iyBeMILMygGQKbl/WNraBHhTAIlyIxg5LD80Fx4aJ1
	cu2q4+ibQn6Jj5RXRN9nOgwhZBdJ0+BSFF82sTfZodmSWoytU6BRecvGKbeyQeYA/y93vWwUDBlM3
	DvlsWIuJaHVgzvjay6xfGW33YTpdC3NsF4yKnvvArZteUrfIIVL1w17ZAnYuizuE3O5US5b2GSJl+
	LdOTeKRveyKqQYXFYwkzPY3VGG+EoaCXaYcJuTwi7pa3p1ByfbwKut4I4vxL6GSz4xvfB3mkj5guL
	Ij1I0DB+CxSio6uclejw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roqrU-00000001moT-0heK;
	Mon, 25 Mar 2024 20:24:04 +0000
Received: from mail.ispras.ru ([83.149.199.84])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roqrQ-00000001mn7-0t2b
	for linux-phy@lists.infradead.org;
	Mon, 25 Mar 2024 20:24:02 +0000
Received: from tundra.lovozera (unknown [31.173.84.243])
	by mail.ispras.ru (Postfix) with ESMTPSA id 9973740737D6;
	Mon, 25 Mar 2024 20:12:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 9973740737D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
	s=default; t=1711397572;
	bh=70xDSlODvyErA/E79roNIAXAkZo47twuiyaYdPOjtsw=;
	h=From:To:Cc:Subject:Date:From;
	b=ChieTWp3TPNQnCP/+2QKtq7t8L/iCJiLaXFfdyO+lAD9Y1VIY1VmH40KiJ6/HL3Ma
	 4cH9D/HhVN8V+v+ElozCXGHTFf3+nZndy9n52ukCYumoIeSw2HbTBO8HIVi8BhklPx
	 EMDUWRlNaOrGOhsgNYZioF6cyQuP/FeG7JM13fmc=
From: Mikhail Kobuk <m.kobuk@ispras.ru>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Mikhail Kobuk <m.kobuk@ispras.ru>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	lvc-project@linuxtesting.org,
	Alexey Khoroshilov <khoroshilov@ispras.ru>
Subject: [PATCH v2 0/2] phy: marvell: a3700-comphy: Minor fixes
Date: Mon, 25 Mar 2024 23:12:48 +0300
Message-ID: <20240325201254.54445-1-m.kobuk@ispras.ru>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_132400_450859_BECB8601 
X-CRM114-Status: UNSURE (   5.56  )
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

Changes in v2:
- Replace hardcode and ARRAY_SIZE() with definition
- Link to v1: https://lore.kernel.org/linux-phy/20240321164734.49273-1-m.kobuk@ispras.ru/

---
Mikhail Kobuk (2):
  phy: marvell: a3700-comphy: Fix out of bounds read
  phy: marvell: a3700-comphy: Fix hardcoded array size

 drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
