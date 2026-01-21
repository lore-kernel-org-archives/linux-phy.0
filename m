Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9D69C44502
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 08:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCuXJoLYS4IIMrwZPcM6Yz19UrtlrAJ20Zav//SWUJk=; b=0d8V+jKehjJCpc
	1CE4WnIPGR+PqltvobavsJdWN0SJhWIagG0SzeKq4JlndDKu0JhDeiwcLRpDqZQbIyd9mlvdOxEyY
	iuQD3Y2/vs8jauWHEIL4WNtW4IeOqAYwaWnx/jQjBg3jf8YT8HWN5Jy7Ff7e6d1vQ6402WpPutS0E
	Lx3tNZRIiNQeR9swgGbeSta0x7JPlQh1sMqv/lyqUoodhDrejvhzQePGPdJFL1/cL1Q2o27e+sE6G
	9WCIx7H5Zmz5L/gPecegst/isLSL8YT8AiBdR19dRZTi1S3rGVPBeSRgXQRXAkuqLMCKSuRR4pn50
	GalwjtSlgB4IHtu0W8RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viTxE-000000057ux-2ADc;
	Wed, 21 Jan 2026 08:52:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viTxC-000000057ta-3uTw
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 08:52:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9516443ED1;
	Wed, 21 Jan 2026 08:52:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0B2CC19422;
	Wed, 21 Jan 2026 08:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768985562;
	bh=7IuyeTBGB9vtwVg0fjXb+TNVGCpGAtkhW8RPfN7komg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bJqvQW8SGmylTnXNovPHWavczfeprMh59Ggezw1TJszWg6jbLyu7DTdJJcaAw80E8
	 TH6UpSk2kTTDummOiISVBfjL8oFtEGMM4ynUpLoJuhIWumJAiXlq07TmzYhExocczA
	 q6bj2feluW+3mXXA5yy8/O2JRXksAUn+fnjd8bQJ7QlogMNGC8zgxBTjLbtJEXMVGW
	 3uIaBpuQitKneqfyaOl+1JfwdfnDFR58TD1rEkd7tpbZzVnBLEkgOZ1ZuqcM9EdV6n
	 6qd0bL9PDJv3CfgpfNrnORHE+y5ZjPvj12vqTx7gee+SWg0P0WUmRR+OYSl4nUGslP
	 CF6vpzLyWKEtw==
From: Vinod Koul <vkoul@kernel.org>
To: tomm.merciai@gmail.com, 
 Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, 
 Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Georgi Djakov <djakov@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Arnd Bergmann <arnd@arndb.de>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <cover.1766405010.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1766405010.git.tommaso.merciai.xr@bp.renesas.com>
Subject: Re: (subset) [PATCH v6 00/14] Add USB2.0 support for RZ/G3E
Message-Id: <176898555102.1268719.14451101267712525788.b4-ty@kernel.org>
Date: Wed, 21 Jan 2026 14:22:31 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_005243_006948_B20FBED9 
X-CRM114-Status: UNSURE (   8.37  )
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


On Mon, 22 Dec 2025 14:43:34 +0100, Tommaso Merciai wrote:
> This patch series adds USB2.0 support for the Renesas
> RZ/G3E (a.k.a R9A09G047) R9A09G047 SoC.
> 
> RZ/G3E has USB2.0 IP that is identical to the one's found into
> the RZ/V2H SoC (R9A09G057).
> 
> Merge strategy, if any:
> 
> [...]

Applied, thanks!

[07/14] dt-bindings: phy: renesas,usb2-phy: Document USB VBUS regulator
        commit: 274038b82f413a754ffc6fbdb771a3ac62d1bb4b
[08/14] dt-bindings: phy: renesas,usb2-phy: Document mux-states property
        commit: cd597ce6460dc01f30f0f4158bbf20624c33c594
[09/14] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3E SoC
        commit: 642c462854bf1f20e4d61a06e880c1b73bf6e542
[10/14] phy: renesas: rcar-gen3-usb2: Factor out VBUS control logic
        commit: d6db3b3af74a26b65d1ec1e86f9738c784e7ae29
[11/14] phy: renesas: rcar-gen3-usb2: Use devm_pm_runtime_enable()
        commit: 230c817a1601af3ac2c9fdf3fbde9a3fee6bd26c
[12/14] phy: renesas: rcar-gen3-usb2: Add regulator for OTG VBUS control
        commit: b6d7dd157763e0c8937f60241fb4af9eb546a7fb
[13/14] phy: renesas: rcar-gen3-usb2: Use mux-state for phyrst management
        commit: 8bb92fd7a04077925c8330f46a6ab44c80ca59f4

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
