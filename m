Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41F4CCD8C85
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 04:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCMvUa7cFQGFt2hx9jFsgHAiWSFqfN1SDxKTm69sWD4=; b=XdJ/ZerQSIMGJV
	TLUOQ5lekzbmmrDROkfNvzJngIc08PaEohRhG5YdP2ASA8fApC86lWzbZW8mj0jN3Q2FAsLqmkP+6
	0o5qr6ZjbJUj83FpIGV+2qzvG5qvER23wutLUkP4/n4lIXTpnpd+Q7T/HwgVsa0A7XE6bjy+74nRZ
	C3LyqYB62Z4Gz8AvxaddRGInkxRyrySUDLEpU5m5/jn9bXnQZ+H12IrLCJmyHKPxXmotYNU+Damgt
	nbes4SxBtX7AGRrvUnBaVd6mkLe7oBjCO9/7uD6m3ZhLzij20XNltnyLn7Vgi88bw5szXr3iDGbv/
	CwoJcMU697WJBuOlSq9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWnuI-00000004iGK-2qDr;
	Tue, 09 Jun 2026 04:17:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWnuH-00000004iG4-08ve;
	Tue, 09 Jun 2026 04:17:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CFB9E601FC;
	Tue,  9 Jun 2026 04:17:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 251481F00893;
	Tue,  9 Jun 2026 04:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780978659;
	bh=4/Ifnzy+i2GJg0cvs6T4Vau8bHcoPyc7f0xcmVw8DhE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PjG9L5kIoMIxAs+d4+r0Rr3uPbfTciXU4Ls0+SI6JF3tAJudlSpLAopxQHkjE0ebe
	 YAxBDaUPs492cLN3lFx9sL+8+LWKPoe2VbO8zq8v+RthKELA0CFUqBBwy0usR7mFfg
	 OstadHjKQQ6VIDpeoqXg5Ps4i3Y4lXVrHra7sO7QdKKXo1NfPt/OzPADXQFJEpthsK
	 gtaWg9Gf78U4XLRFCztpDPnP1ZwEAuA1sTWotC0aMcNmB5BSXxkg9bSUvGHm+OMwaq
	 BhKoFqf/rlyb/BSoF/NlKVQjwAEBdBML68q25jard/X4ZfOBia5CCzbz1Oh/OU6tvs
	 s7QaPVz/NOL0A==
Date: Mon, 8 Jun 2026 21:17:37 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Jisheng Zhang <jszhang@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 00/12] Add TH1520 USB support
Message-ID: <aieT4WmWK9416M9E@thelio>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
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

On Thu, May 07, 2026 at 04:16:58PM +0800, Icenowy Zheng wrote:
> This patchset adds support for T-Head TH1520's USB functionality, and
> enabled it on the Lichee Pi 4A board.
> 
> The first 3 patches add support for the MISC subsystem clock
> contrtoller, which contains some USB clocks.
> 
> The next 2 patches add support for the USB PHY of T-Head TH1520, which
> is a wrapped Synopsys USB3.0 FemtoPHY with a little integration quirk;
> the controller itself is a properly configured DWC3 controller with sane
> default register values set.
> 
> Then one patch adds the USB PHY and controller nodes to the TH1520 DTSI
> file.
> 
> The remaining half of this patchset dedicates to enablement of USB on
> TH1520, because of the onboard hub of that board -- its USB2 signals are
> behind a switch that needs to be toggled on, and Vbus supplies for both
> the hub itself and downstream ports are managed via I2C-expanded GPIOs
> (because the SoC does not have enough GPIO pins).

Hi, thanks for working on USB. I tried to apply it to next-20260601 and
several of the dts patches no longer apply cleanly. Could you rebase?

In the meantime, I'll apply to 7.1-rc7 for testing.

Thanks,
Drew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
