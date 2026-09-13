Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C4C5C88E56
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7s4QSlFCbueNO3rmvH4/8cFbTye2ch10n+ETBh3m7I=; b=GhxA30OkYSf3B2
	JRXLuAp3e4lN8l68tAegw2xJhUgvxMa2Dlm67toAeSeunb4Ut/njELJBjteqgO9oss5tPxBaSBypd
	Ja4+PuS3GwwHI4G8ZALg7V9R4MTI8upwrsC2e8BUaO0QOEHf2S7grV0be4kq/vxaI0nN/ph2o+asE
	mQfU1BvBQ1BSeFhXmw0Y/AWuiwDcqrNLGcQIehiuy6mY+fQVVN6gm+MrHeINDvN1x91eVUTf/3t1k
	IEDJF2v4LU9kHKFa4Tjn6lk4FetCWDUR/ld1yACOSjWX3UWaSbOi1mckA/OF0E8sysUhaFSpQ2INo
	5/31bfeeB9B0Tx2QBv/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hh6-00000001b7l-0xfg;
	Sun, 13 Sep 2026 10:44:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hh4-00000001b7d-1D9D
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:44:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6A9B860DD4;
	Sun, 13 Sep 2026 10:44:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76EFF1F000FF;
	Sun, 13 Sep 2026 10:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789296257;
	bh=cS1Ju2GfKqEA/FP9zJHnQJwF6JmphHpLlloN1nGWOQo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=djcJx+TlSn6dwlhznxWXYMpg0j3ZzKupXcM4XcdsbX954BAsSfnM7DO6mf+ug5sbE
	 3pk9f3ZGOCsDG/tBpL2eqrSq0iAisZnZidiB3WIMYvz6d6q4rnetQd2wjIYBnlkp4P
	 Rjwt+KFcl0wrv/VtEgBYuz1yDLTWj2KVre2rO7wVU8VFzSl+cLLaZ4rNfqcsEdrFNa
	 vNt9x7a0ROJK4rdc/hHg2eKENGsFtdf02yeWmRRbmsNhmgTjvnJYTQGsQlkSlTmpcA
	 hx8oQsSyVpLbRyA4TTDQWnHeIghwSXZMGgrQR3H/oIvYeobJ30ikpMQmzCMr5oDocw
	 wRXutpvjPQrug==
From: Vinod Koul <vkoul@kernel.org>
To: yoshihiro.shimoda.uh@renesas.com, neil.armstrong@linaro.org, 
 geert+renesas@glider.be, magnus.damm@gmail.com, 
 prabhakar.mahadev-lad.rj@bp.renesas.com, 
 Claudiu Beznea <claudiu.beznea+renesas@tuxon.dev>
Cc: claudiu.beznea@tuxon.dev, linux-renesas-soc@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org, 
 Pavel Machek <pavel@nabladev.com>, Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
In-Reply-To: <20260716183246.3183877-1-claudiu.beznea+renesas@tuxon.dev>
References: <20260716183246.3183877-1-claudiu.beznea+renesas@tuxon.dev>
Subject: Re: [PATCH v5] phy: renesas: rcar-gen3-usb2: Avoid long delay in
 atomic context
Message-Id: <178929625199.194170.14605036307704113858.b4-ty@kernel.org>
Date: Sun, 13 Sep 2026 16:14:11 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Thu, 16 Jul 2026 21:32:46 +0300, Claudiu Beznea wrote:
> The OTG PHY initialization sequence needs to wait for 20 ms at a specific
> step, as described in commit 72c0339c115b ("phy: renesas:
> rcar-gen3-usb2: follow the hardware manual procedure").
> 
> Commit 55a387ebb921 ("phy: renesas: rcar-gen3-usb2: Lock around hardware
> registers and driver data") tried to address various problems in the
> rcar-gen3-usb2 driver and converted the mutex protecting HW register
> accesses to a spin lock, leaving, however, a long delay in the critical
> section protected by the spin lock. This may become a problem,
> especially on RT kernels.
> 
> [...]

Applied, thanks!

[1/1] phy: renesas: rcar-gen3-usb2: Avoid long delay in atomic context
      commit: 48e97c59a49c9e90270f5e3d221db253b76de5da

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
