Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC6A2C001E0
	for <linux-phy@archiver.kernel.org>; Mon, 23 Oct 2023 06:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgZqPiB3jhQvIxXODGzVJUBhvCBhW5F3bbZVtcd3HkI=; b=cLLfY3f6Ns+Rlm
	jUiIE1Lkqq6xHZ9mkL8rvMUW4L/qNNnGvr/wWm1rngvRutyCO1YOeYm65ErhbXqEXtc1WZ3PBI/R3
	xoMMrUHLS3arYWojCg6gaYt5u6IL18FoZCO2DN4ppOBmCXx2k29B4HhN/BdIa/DycsOe2vkcSEvks
	efz8VTdOnv03m28PqPKLAzt0YLVVOAuorGiAQ5PiIB7JYFGgKh/xM+Ph/NYtkDf+BvZR8JvgD4Xsi
	iRJd9s/iDPJBpMN5AKZs19hkOFmsMoTg9RKomIRX6Lmmgp6Tz4+/1vmXMqa6EUF0+HZQffLYwQ4J2
	tWtUwnNgkSraZf3RQaMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quoR1-006XCE-1P;
	Mon, 23 Oct 2023 06:29:07 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quoQy-006XBG-2V
	for linux-phy@lists.infradead.org;
	Mon, 23 Oct 2023 06:29:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 704D1CE1DA1;
	Mon, 23 Oct 2023 06:29:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B6D4C433C7;
	Mon, 23 Oct 2023 06:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698042541;
	bh=9FFTyA/IN+1usMt39XOMXypfgiatVLpJUUWPvSRYpQE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=edZHsRJIbpx8t6abh7Ur86OpCFb8ExmK5+NSkbA4yoXq+dJq56GoOzZIiZEjuG1iu
	 MT9K0GntLc9aE1J6gKd8/h2Ylg3xe3vKeQbrnZi61NSP5BOw9aRT6OCksEbqTSgEPW
	 JmJVNRbJWSNpcyr9rfHkHU9IeD+9p+PHrnGvFCdxO/ykoBfcUORvwj663F2VP1AAYE
	 N0wcPoua109WYEElsHfTNnjCV0PjXLrkfk8UnPhelNzrhWQUCXomsw7JlgmES1krC2
	 be9ERESrE9SSO9GYQ9mEMZfMhDRHdUitmIdEm/7873Hm1xtpT12nXpTau7eIACl175
	 4HKBx3vlOQGzA==
From: Vinod Koul <vkoul@kernel.org>
To: devicetree@vger.kernel.org, 
 Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: kishon@kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20231022163006.803800-1-sergio.paracuellos@gmail.com>
References: <20231022163006.803800-1-sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: phy: ralink-usb-phy: convert to
 dtschema
Message-Id: <169804253768.383714.5625853416046934960.b4-ty@kernel.org>
Date: Mon, 23 Oct 2023 11:58:57 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_232905_008554_FAD7A92A 
X-CRM114-Status: UNSURE (   4.03  )
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


On Sun, 22 Oct 2023 18:30:06 +0200, Sergio Paracuellos wrote:
> Convert the ralink-usb-phy bindings to DT schema.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: ralink-usb-phy: convert to dtschema
      commit: f5d5a0b5553aa1a4e165e6fc6c582db487768846

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
