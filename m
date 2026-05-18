Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 664CACD4F49
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 14:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pPzGCRbUL91D8tuNvJ4ul6xrYR+b6AIyZKh0M7wPR00=; b=TJpjC8vZ8d9I3K
	64qV3q68eIx3s6VcDyYvaifrgN1qrGlX0kjocDJkHDloyebmDQwmpj4/jepTtRz3673ZuQkMKuF1k
	pHmnCUldviDVHQ3qK1xYsK1910cmjBgl3mltkfZBsmq28r0o8XT2CjAspO/qIiKHvMmdTJp5nM1od
	BNZ5B4+kWuuypNGGYxfuqbge+UWN73VFXZS5ro6SN0vicB/QpS8pMQ+UESdWG4wkr5fYbCTPxCKBI
	U2+PpnYiujg6619LIgsJyqHB6wewe+Tldv7Fnsj7U9rPl/Z2Kcn5U802m7lENoh/Y507ERATQ8szu
	ueOVESZKM/+b8TO4vXow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOyjI-0000000FwWP-48dK;
	Mon, 18 May 2026 14:14:01 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOyjF-0000000FwUa-3d0M
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 14:13:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 08DDC411FE1;
	Mon, 18 May 2026 16:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1779113631; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=rfFFQuODuaTYtZSsyNaLADFkxWwAuLJW9UKSGomhD64=;
	b=sFzYYcFAxp5pKWjsKUVnhP6MZyu9mHflIrRhDc6vBvpJnGrKhEg7c1aAOHekjLjzxbmxmG
	C2DoFGNESfj6bBkWZuej73Pv2F9bDcu8DBM3jBjhAvoLGpQReYGuYVDoqAuF0wZwxPN1oE
	b86gxAsFVE2vbztpu9wd6VFTtMVX+c7Fr3b4Hb+qntabdBcCGxIVCJTF8ZoK1tIqNQuiyy
	CfoDY9CmSYJN2nd1zNsO/W+KR5i/5yyRLCxVga3Ldpa6ypuv1ZN1leaownml/BSBMjdRjl
	QwfvI3FWKyDGi14AzkCFOz2HAzL7M1u6nJzLPOJ6hQTS/O9tBpO/HvAR3/rG5A==
From: Caleb James DeLisle <cjd@cjdns.fr>
To: linux-mips@vger.kernel.org
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Caleb James DeLisle <cjd@cjdns.fr>
Subject: [PATCH 0/2] Add support for EcoNet USB PHY
Date: Mon, 18 May 2026 14:13:41 +0000
Message-Id: <20260518141343.401555-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_071358_123741_94B58609 
X-CRM114-Status: UNSURE (   5.33  )
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

Add support for the USB PHY found on EcoNet EN751221, EN751627, and
EN7528.

Caleb James DeLisle (2):
  dt-bindings: phy: econet: Document EN751221 USB PHY
  phy: econet: Add EcoNet USB PHY

 .../bindings/phy/econet,en751221-usb-phy.yaml | 128 ++++
 MAINTAINERS                                   |   7 +
 drivers/phy/Kconfig                           |  13 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-econet-usb.c                  | 558 ++++++++++++++++++
 5 files changed, 707 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml
 create mode 100644 drivers/phy/phy-econet-usb.c


base-commit: e98d21c170b01ddef366f023bbfcf6b31509fa83
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
