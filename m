Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDB9FCA0EE8
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 08:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTlqaS3a7EmhvzXYjvgfiIQKrQU46P3q9VCoWqYMWqA=; b=G4+jo+a7FuebEU
	Xo+qJCZvFKU/RuzSCsvNw4nWrH/9R8Slb21t92DWGFPX4kSfYhNausc/fd/pa0Jd1HQhJ0z2BPwl/
	Ox1EIA9/sNMY/RQHJ+0HABuKOzu4ehV+u8cPSAp9psZn9HB3HWeSMvhW1/NYU9xqhj1mKz6Nnve9V
	rnukLTlqck/IFX/A62lIbHBskQg91sQu8L09bGrGrVJ2SXefm9E3HmUaS3LKyTnH4+tcUGjWrn2b5
	FRoozlM+5TdmzVWlwEK40qS5oJMrHsXYp5QpMeseMAzwfexKNowyJCRYD1219ALBEVzzulbpoau6E
	zcNKk+YbgoWeuQ0M53Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwkp-00000005HKm-2TAW;
	Fri, 30 Aug 2024 08:13:11 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwig-00000005Gbj-0U9s;
	Fri, 30 Aug 2024 08:10:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2692EA4417E;
	Fri, 30 Aug 2024 08:10:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2E7EC4CEC2;
	Fri, 30 Aug 2024 08:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725005456;
	bh=3ydTwNGyIXL6fFISp1v27alYYBcjKlkwV1nvJ+LgMmQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nx8CkU61PYK7Ada7KKWaqejI8FCF8TStl2f+Lw5+1n4UDd90SM5ZBa3jvhEHSaR75
	 KdGvTylNPwJRnzbGXeaBtrK6ruDB289UA0oHbFmAP0TNeWHoZp3uSW3b/LSkvNEBYp
	 VJ4q/jMCAnOZ1UMBUlpS00GJ0iJVQWH0wunSHU8zK/mIE2QJ3XwN0tHd7KrVphxUxO
	 kvTAjnQTR1j8louOu9sUpRx/2B0jVU//KySTJ8fl/qd4UdmBTpitZM+bL9oWT1gw7a
	 85fp//ihugYz2QqYkXOKyFNwEHYg0ghd19VjmGf3BEkjBwUkIIBA8Ymp3RfgoqV0OB
	 oKHX9w1cnrk/g==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com, 
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com, 
 biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org, 
 Claudiu <claudiu.beznea@tuxon.dev>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, 
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
Subject: Re: (subset) [PATCH 00/16] Add initial USB support for the Renesas
 RZ/G3S SoC
Message-Id: <172500545045.434293.2799164142138573835.b4-ty@kernel.org>
Date: Fri, 30 Aug 2024 13:40:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_011058_259718_CFF60455 
X-CRM114-Status: UNSURE (   8.19  )
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


On Thu, 22 Aug 2024 18:27:45 +0300, Claudiu wrote:
> Series adds initial USB support for the Renesas RZ/G3S SoC.
> 
> Series is split as follows:
> 
> - patch 01/16		- add clock reset and power domain support for USB
> - patch 02-04/16	- add reset control support for a USB signal
> 			  that need to be controlled before/after
> 			  the power to USB area is turned on/off.
> 
> [...]

Applied, thanks!

[10/16] phy: renesas: rcar-gen3-usb2: Add support to initialize the bus
        commit: 4eae16375357a2a7e8501be5469532f7636064b3
[11/16] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings
        commit: f3c8498551146dfb014be0d85d3a7df98be16aa2
[12/16] phy: renesas: rcar-gen3-usb2: Add support for the RZ/G3S SoC
        commit: 3c2ea12a625dbf5a864f4920235fa1c739d06e7d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
