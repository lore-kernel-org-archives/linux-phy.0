Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 951F7E77173
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YVUIPPSQT+diqVBlX3inOgZhTXVcvs0uLnJ6cpvexmo=; b=PRtNHf2y0C847w
	/aBgD9TL0DRkYfWgzaZPev8OyXdv/+Y0rp4jue7bm8SReBCXGkCIKdCZOCdhOxv9HL+XEfgfxsaO2
	a14RJr3tgkBHWgorhmZG9+6tT4O8rbn7QefM07P/nXDNMgPcEf6RkzsCxF3qt2hpbJiE+/IM+OmbP
	eThndIksCsb0gBjLq7lw+42bn+olPolBYt1PDf1om/R861aFXe1pMIvYcTInKf/eLPoO+Vg1KsE9G
	tDnsVA5I/qd0co0f+5sROfKJMrkQqzdz/3MCDvsp8e/HrV+Ea+cEZGBztH1eNfOwi333wpfFeQand
	ItsRPD6NuThg9iZDbF+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKfT-00000005bdl-1XL8;
	Sun, 08 Dec 2024 17:02:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKcc-00000005b9f-397V;
	Sun, 08 Dec 2024 16:59:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9F05E5C4A42;
	Sun,  8 Dec 2024 16:58:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A92D3C4CED2;
	Sun,  8 Dec 2024 16:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677146;
	bh=csE7uy0VuBahmgf5oPd1u9Pm9Uuc0fog2i/ia7R4hUU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Htw7HIZdEhe2LScDIEdOM+f1t+IatbxgCkTl9b3LP718mi7na7alIiOpLSxG+JICo
	 umt8rYK0wr+amLvDz8KOXr7b7jOe3uiCD37W7IAQSUDBdYQ9sa3q+otw9UelCNoAsu
	 xYuX2h9qNRv77t3X3GHauTM1+BW4C+IvD3Gg1yoYlVriNAoVtBrCBwXbjSHTPNX+wh
	 L+oSYYouNXI/08BOwkm/zqExYNCBz03HM1gqceE1BocBGzjqb6y3YYOdIFe5XOERJ8
	 T3QC5YX75OTcz8d9hAQYJkk6UWTPD0ZHsfNOKxDckN8TkDMDuwxTFrOgpclIYdO3NJ
	 B8d8lrUdUiaqQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20241023-phy-sam-hdptx-rpm-fix-v1-1-87f4c994e346@collabora.com>
References: <20241023-phy-sam-hdptx-rpm-fix-v1-1-87f4c994e346@collabora.com>
Subject: Re: [PATCH] phy: rockchip: samsung-hdptx: Set drvdata before
 enabling runtime PM
Message-Id: <173367714219.1031947.13630149874442977785.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:29:02 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_085906_840792_70055F84 
X-CRM114-Status: UNSURE (   5.79  )
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


On Wed, 23 Oct 2024 20:29:54 +0300, Cristian Ciocaltea wrote:
> In some cases, rk_hdptx_phy_runtime_resume() may be invoked before
> platform_set_drvdata() is executed in ->probe(), leading to a NULL
> pointer dereference when using the return of dev_get_drvdata().
> 
> Ensure platform_set_drvdata() is called before devm_pm_runtime_enable().
> 
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: samsung-hdptx: Set drvdata before enabling runtime PM
      commit: 9d23e48654620fdccfcc74cc2cef04eaf7353d07

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
