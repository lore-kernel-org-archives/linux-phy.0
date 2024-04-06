Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C076CD1284
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 09:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoYUPSEbKAaPgcA0HmJCR7cpFcjtrHfr0Mlv25VAK7Q=; b=LwF6reZD+sDmnK
	j3rxzJKtporshXibQjO+SnUPKiXm0Age1a3WRs1julNbNS2NCim1GPgkLZmWhA2LMcutX8KWdAzbi
	fPpW4EpGoHz7nWzW2apETMh6oDvyCGUhlra5bXSppuNzYO92djjDUKxIoUpbKE+f5EwLpiCQtHiuz
	N16okKVPYRlftGA8yvxxs+nIYzG6+1USyN0mLyKaB+HQi2dz6jQR60Ngv4XMWC3gCkfbrTLaZEVf+
	OZQocOVtAXpfkdX9IZTy2qfwznhnC8IrpIr8sWpfMgzaAWWkdjblvAwWTEmemy3E3cKaoNoYZD4qa
	CYHpppoz9+pvNk02wV4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CI-0000000A1QV-01xK;
	Sat, 06 Apr 2024 09:18:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CC-0000000A1Nz-4C8b
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 09:18:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F12E360A77;
	Sat,  6 Apr 2024 09:18:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8D55C433C7;
	Sat,  6 Apr 2024 09:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395123;
	bh=YyCtD5bY6qKKre4mnsu4Pdof0IXCK0AKuOli174B4NU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=g5s7UWv/UWJVuBFCUSzT+7pId1kAojSHZo0FCo7V6USxrTQLz0CuiwIYRTwWH54GL
	 X5lgnPM5SP5Z+bkH+Gl/IhL9xmGDXCBouMoxS05J2eyIUDtYKPNsS+jpFgnFazbEdN
	 Wu6QKmWvuolOK+cgHc0ZgtzgaixUIoavwyYdhXXfRqi3vhY+qlNqknhvqfctmVX1/j
	 Kzds3NO251uJ3Klv9Y+lbsn4zcYyt0RVSwmevLrmGmR03V5RmRA9SfU/f5i3SpvMeU
	 KIBpP8qV0zJpbNuVhsN91/AodDkyLkNu18fo4cY/Y0YFvqGQ062v5HgBHOcixkgCex
	 PTwdVggZwCSNw==
From: Vinod Koul <vkoul@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Mikhail Kobuk <m.kobuk@ispras.ru>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
 =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 lvc-project@linuxtesting.org, Alexey Khoroshilov <khoroshilov@ispras.ru>
In-Reply-To: <20240325201254.54445-1-m.kobuk@ispras.ru>
References: <20240325201254.54445-1-m.kobuk@ispras.ru>
Subject: Re: [PATCH v2 0/2] phy: marvell: a3700-comphy: Minor fixes
Message-Id: <171239512055.352254.16901134806366326703.b4-ty@kernel.org>
Date: Sat, 06 Apr 2024 14:48:40 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_021845_116065_42CA837E 
X-CRM114-Status: UNSURE (   4.18  )
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


On Mon, 25 Mar 2024 23:12:48 +0300, Mikhail Kobuk wrote:
> Changes in v2:
> - Replace hardcode and ARRAY_SIZE() with definition
> - Link to v1: https://lore.kernel.org/linux-phy/20240321164734.49273-1-m.kobuk@ispras.ru/
> 

Applied, thanks!

[1/2] phy: marvell: a3700-comphy: Fix out of bounds read
      commit: e4308bc22b9d46cf33165c9dfaeebcf29cd56f04
[2/2] phy: marvell: a3700-comphy: Fix hardcoded array size
      commit: 627207703b73615653eea5ab7a841d5b478d961e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
