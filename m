Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EE9EE77181
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NF7koLfGK7vfkzMgYOkXMLeIf4IN+IVt0fhaZRTeSw8=; b=GWmBtEv4VomFSH
	TdLqoqfrxof9APLn12v27zW2hY3Do1DqAESGkLri0mFXTzPzoT0Ur/CXIt1fcxOXbqDxpz/mUC0iv
	u2qYONXauc9dckPDn86VT2Xaowh29KfRBR8kNK+gS76PV9HGkm0861+P85bbgl5G5D638df/yiWFm
	R0oAu4sK1iEtcnEEONQzv2atWwTDJN1obLPNqxTXvZL4AgYDqSK1qt72yP+GL4PlyYAMNBWmJZJFz
	06LycwWqTWz41IySe2CKPc9zH0xDTXe3EkmEl0xr3pnzJ0koKoXWG6Vn+UJHBy6t0B6OVaWJdyQAf
	dWV5aZ5wKEFnZDuIM1Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKhC-00000005c3J-0c2t;
	Sun, 08 Dec 2024 17:03:50 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKgN-00000005bnp-05Fc
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 17:03:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A268BA40C45;
	Sun,  8 Dec 2024 17:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14883C4CED2;
	Sun,  8 Dec 2024 17:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677378;
	bh=Yj+pgAR8shJSNEyI78vmqdR4SR1lJHoF/1keS1AQU6c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bBlumy808xRVfANPPX1aJJf5cNC3/WG0x6lVsLhojohe068iELVH82pzyrkJmnqyw
	 0G3ESz+edFlqEIMnq9XjxY0NiFwkf+DnctIYdWgYeg3sXxPPIv3ERCY6+7/aHgWLAa
	 OZCPMqBam/ih33OGzdJJhWZxRbnix8aF4hhTf8Xc6pp/x4g7qTs8whlz7D5AIpmK0f
	 ZgRVLsm2qo27EH3rTjghjsxyp6xAqv9AJj/vjWWjr0bNlPjtvpCvjYtYFfyxxZu2rc
	 Y6l1ifvH3zPHzy6EDjNI8kTEBsvVAbGQ3h/7rtjXxFkrd6s0JQ+d8x0yraqZmJFEZq
	 K3V7wZBO2EtfQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Thierry Reding <treding@nvidia.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Stefan Eichenberger <eichest@gmail.com>, 
 Advait Dhamorikar <advaitdhamorikar@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241127104333.18944-1-advaitdhamorikar@gmail.com>
References: <20241127104333.18944-1-advaitdhamorikar@gmail.com>
Subject: Re: [PATCH] phy: marvell: Fix spelling mistake "exlicitly" ->
 "explicitly"
Message-Id: <173367737467.1042266.16446493563282944059.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:32:54 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_090259_121747_DAE25D2A 
X-CRM114-Status: UNSURE (   3.45  )
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


On Wed, 27 Nov 2024 16:13:33 +0530, Advait Dhamorikar wrote:
> Fix spelling mistake in mvebu_comphy_ethernet_init_reset
> comments.
> 
> 

Applied, thanks!

[1/1] phy: marvell: Fix spelling mistake "exlicitly" -> "explicitly"
      commit: 691cdb40d521809bec03788c29dcf8f7a4f9cf76

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
