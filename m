Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 895DCE6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ewWPspvOhA70AR2BUjvl084RudLTbY5iXpZDhOkjHk=; b=2eyDXAeRt69mB8
	Z5fsKRDSbC1b++8v3i9H340BkTzibY+FklWuCAy7rM0VLaFcMprBhj+D6ePY2JHbSg3TiXBGNZvMK
	QeND6FYVWDK1BHGHhxR8dDH8a9M4L6prwAI0vTn8keKsqeHOv7wfCAw4en/5+kOmuCv7lVdBQPw0F
	uPKDd4tzigTkKwRtU72wf27seDDPR+1rCh93Bcoye0hOa5NXZdgeTHlh36TLXux0G409QJq2QDOcD
	+EcxlHfoNlDj3mkX5u1KRP56CKU7zHj/vEZpHUg2eQiKuPg05sVs3NrUpGMhAa9I2AYnDwUPfUTWj
	dEDcHjd71PQLzdvMmFNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6R8-0000000FqtH-1Lsd;
	Tue, 23 Dec 2025 17:44:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6R3-0000000Fqrd-26nf;
	Tue, 23 Dec 2025 17:44:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B1B7F60141;
	Tue, 23 Dec 2025 17:44:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C169BC116B1;
	Tue, 23 Dec 2025 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511876;
	bh=IAcDB8EBKY8JVjS5RfhxZ7Lpy5Hv7UbwPlli3EbI6zs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VyXW6wT2pUXDxacv69qquj9G3+p2p7Drymo6p3/ufGLCA568I2m8xMpUeMWKwmQfO
	 wV7TAtGMEUZllstAKxQ0K3d5/6Qr6LjZn1DsoE3UVxIYoJWrcG/CWLOehtBDe2RMwz
	 6qri75yaBgqV7OGjent8f/r8Bpk7esdfJ+iXO91W567O8c5jEdtutqiRHgAB+abkY5
	 ZORBlxHk2TYCVctkUZECDwkR2WTiuwXpuqGcNItad9gTGLqWFP1rIHFpTlTr6a8KcH
	 Tenq3jFS2i45ESJAiKdh8VUDbTmJAWUJ5VesLhsz0cI1GNbSr2nyqiOjXXTMQXUW/F
	 W/mBLYJfe3VHQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Derek Foreman <derek.foreman@collabora.com>
In-Reply-To: <20251221-phy-hdptx-pll-fix-v2-0-ae4abf7f75a1@collabora.com>
References: <20251221-phy-hdptx-pll-fix-v2-0-ae4abf7f75a1@collabora.com>
Subject: Re: [PATCH v2 0/2] Fixup HDMI PLL for phy-rockchip-samsung-hdptx
Message-Id: <176651187342.759340.7650219710991415977.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:14:33 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Sun, 21 Dec 2025 12:36:22 +0200, Cristian Ciocaltea wrote:
> The Samsung HDMI/eDP TX PHY is currently not able to provide an accurate
> enough PLL output frequency to match the TMDS rate of a 1080p@120Hz
> display mode, when used with 10 bpc RGB.
> 
> This patch set adds a new entry to the TMDS configuration table,
> providing the necessary frequency division coefficients for the PHY PLL
> to generate the expected 461.101250 MHz output.
> 
> [...]

Applied, thanks!

[1/2] phy: rockchip: samsung-hdptx: Pre-compute HDMI PLL config for 461.10125 MHz output
      commit: f2daf0c67a1767ff6536aa3e96599afb42ca42e7
[2/2] phy: rockchip: samsung-hdptx: Cleanup TMDS PLL config table
      commit: 3be8131ee936abb6ff56ca9ec9d38c911251410b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
