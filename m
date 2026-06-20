Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 745E4CDB46B
	for <linux-phy@archiver.kernel.org>; Sat, 20 Jun 2026 11:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEtYqksfBEcKWzbFcZPAyQtM2h8sYYKnlV1v9+lNgsA=; b=tnbfH9As/+aPTB
	Bn24Fzw3G5kiOrGDhc5LbiAzmtofmPm+aQ+KSOpHwq3vRQ+Eru2b16f1gHyB4BhlTlzKo+QEn4mMZ
	8wKKZ1DC2sgvSrJwr6198b/t2yl63dtx/ofqO9wiQGOL9Y1Al/EDFSDwpdqaBzvYcc+u1T1j+A4tf
	U1A/mlliEe6z6Qc6pWtNN2769uMeH6ZfOf57HLDb7rAHN44XBTax52RklCczm/X8ed6E0/28MmRAe
	iE26ANesyc5IAKPUvXFa11PymEt6WdytRzbmKsgRH2Zx6u9lyypust6fVLO7Fd0hvqYrgwmz1DbAp
	0jsgh9As84ASrdkp2+rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wauCZ-00000003MTc-1SDo;
	Sat, 20 Jun 2026 11:49:31 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wauCV-00000003MSy-2rYM
	for linux-phy@lists.infradead.org;
	Sat, 20 Jun 2026 11:49:29 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id AA5092767D;
	Sat, 20 Jun 2026 13:49:15 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HXuWGNteZpvQ; Sat, 20 Jun 2026 13:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1781956155; bh=DXXU4HtLN2x/Zg/aHJpUs5YpYCcdyHAW+G14zqHmT+c=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=QB6YpFHAp+xwyMiN2MmmfEOcEOQgap3emCKFZXosC3gwuGQQ/HfUEWev4G6ZxQDgi
	 vHzDQdNFsZcTQtebfAA99s4OkhZ9coelnU+b/QPsv8fsYrfvLY0jCDF6zYBiCbTRRf
	 1M3mKgT+FZiKIM5lULh3LqABPjh7MkiFHFtW7wWDfzsGvdaI7zXX7FNSNM3HDdbTkz
	 MhuSSa25FIe4zjEiss5ImYb0Ph09QrZpnqoqv50pLYNYNsU2lDgKeuJ1GlbynlWnuI
	 enstLmS2sAlb8JA0/fBSpYG2IrnJYijtLqsfDRcawSCzASK3q/LWf3kD6asq4YDg7j
	 3GFnFltYpF/Ew==
MIME-Version: 1.0
Date: Sat, 20 Jun 2026 11:49:14 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/6] phy: realtek: usb2: support for RTL9607C USB2 PHY
In-Reply-To: <20260520175728.720877-1-adilov@disroot.org>
References: <20260520175728.720877-1-adilov@disroot.org>
Message-ID: <ad45accb8136605d3b28f4ab4992336e@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260620_044927_871502_D1CE0930 
X-CRM114-Status: UNSURE (   5.73  )
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

Hello,

Just a gentle reminder as this patch series has been sitting idle
for month already. I do know there are a couple of reviews sent
by sashiko AI but they are only about pre-existing issues which
has nothing to do with this patch series.

And the issue about "[High] - The driver attempts to access the 
PHY's memory-mapped registers in `probe()` before the newly introduced
reset control is deasserted" is not the case because rtl9607_phy_cfg
contains the [4] = {0xe4, 0x6a} in page0 and thus doesn't trigger
phy memory reads during probe (in update_dc_driving_level).

Best,
Rustam

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
