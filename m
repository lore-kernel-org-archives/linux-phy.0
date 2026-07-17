Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E500CC44507
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 06:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8EUYsFD5jMhklGaLHlyNwgh20NQfWMH2b+lK0qbFRY=; b=Sw2/E8YYJAKo+s
	EuHQb/x/Rg8h9Rw2kU768n+PW0W5zop48niwJ0TS3lG6jn/v/C/oZaZVYvsrBIrHC562QNxeDSzUR
	uIoA0ful0PPGKSMBZ5rFwkqqknxsaSYQRj2rl682xx4b4ilaKgGhziO8AFT3vCGQxewV8OrxXMLpP
	Jm8Nyzk1g6psWB8CkkBNY/yKNL/MFKB0ZTBj1Yv3AenN8FC16MmdCSjOhNGpuUCQzHcvfJMhZ9l0p
	3N/FKVHANgG5Opv79GclvkKP5vhdCJ1OJ+yX22Uj2VX55j8HsfhJwdz3RT8a+NjxXjHekXXWA800l
	Ew1d6bwlmhttCiCS1M1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkcCW-00000001I2Q-2TOX;
	Fri, 17 Jul 2026 06:37:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkcCV-00000001I21-1SME;
	Fri, 17 Jul 2026 06:37:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C691A60204;
	Fri, 17 Jul 2026 06:37:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FCAC1F000E9;
	Fri, 17 Jul 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784270254;
	bh=xCuquY/F6jRPOIqXiEYxfkYbky36x8A0G994F705RxA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mwiE0MNqTye8d8JrDqSXXN7XMhLkFoVdHa65K4dvMEXBUsuupnxYeuQ/s6QI53Hhh
	 K5iDaFtKk2OyhK49xsGZzFINm6+2yA556i05NSeNUjjpVYY18REINwX+yb/SGsP17b
	 Sp+1jRISRyydKjy3YViqFHWZTfDXUYf7eCdHX9nC185lbJXjiYH8ht9g7JXDMVubYU
	 BNRKBVaAptkkiNexoZVcU1jinxsZFZv137ACnpHcfxuB/IrGi7qJ1ggUbchOrC4xAM
	 NZEQjs1R+ZPhxbj17Ba96ILna9ReqyIxtOW18fK0Z+Jyod29o48HORqEwkateUFrhC
	 2MA0IDR72VGRQ==
Date: Fri, 17 Jul 2026 08:37:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stefan =?utf-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 00/13] ZTE zx297520v3 clock bindings and driver
Message-ID: <20260717-positive-terrier-of-realization-0e2a95@quoll>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdWwgMTcsIDIwMjYgYXQgMTI6MzU6MzZBTSArMDMwMCwgU3RlZmFuIETDtnNpbmdl
ciB3cm90ZToKPiBIaSwKPiAKCldoZXJlIGRpZCB5b3UgZXhwbGFpbiBtZXJnaW5nIGRlcGVuZGVu
Y2llcz8gUGF0Y2ggMiAob3IgMykgZGVwZW5kcyBvbgpwYXRjaCAxLCBzbyBkbyBub3QgZXhwZWN0
IG1haW50YWluZXJzIHRvIGd1ZXNzIHRoYXQuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
