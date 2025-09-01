Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E53D5CA1007
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 23:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/2Auoa/GoYS4gLUOfsFNugGRG6sJOjJBB1eBDeRw0w=; b=TLlv/UPnY9tVgD
	IMdaZwzUHrfWXF6pXhHWcpBI+gKHVjDATLNvvFn3ffW43LVaqCwURX6s5ljW+Ds2sa3IpxyB9o+Or
	38AhnKdI8mYV5r5HChKP6D0R5MYaj8l7Fl2j3k2bSWFVNaVdzdrST3c8+88fwTvWvEjO2LEZIuUd4
	cmhpwNODv4HuGtM4LXwyskR8udFs3DrwWjGDNBxEgbMdSXU1J1qNHyL7fN0/l8g1+qtra851V8YpQ
	GWjtVaQV8wUj3oEwxmlPdB7qOB/CucG+vYqSbqSMf1GiIA79DVMqNTPgEorfg3+NIbBPpFU8aCTZm
	z27/XkqR7qpD07thmlIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utDiX-0000000EGOF-2F9x;
	Mon, 01 Sep 2025 23:13:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut818-0000000DPVm-2wyU
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 17:08:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 27858601EB;
	Mon,  1 Sep 2025 17:08:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 252AFC4CEF0;
	Mon,  1 Sep 2025 17:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756746509;
	bh=zD2cqAHxzinu1xqZSy9fx1UkGEK00Mem1gE1dgsjZrs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=YFq9HdROE7xurb3UnkwvAxcAkCzWDFW+THL1nvdjEUpikcG2YwGU8qMcoJwcqoaay
	 MUrgdpYvbDtzXtvWsnfzJvoIOY/RtOxXjh9tjnYyHxTAAcEUsVDiAf+k1pxirp/2ta
	 MCmKmPodJMBOAB4kCuj2cDsYjI4CzQxP0zO+04Wri7nOVd0zoaIBydITiyXWjwYNpq
	 xZR6tBta41plEbUU8laQqU31JYOmmyueUR5JHoJZ69qBbiPU50gAdNDkU1YDyRp18s
	 12W+4X/B7BXVu3h1sqzjiQw+V+KTs7OzKx0Ft5XhaNo8skZ0DPWyqkeXutJPF3EBj1
	 W6iJkpDZtcYPQ==
From: Vinod Koul <vkoul@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250821155957.1088337-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250821155957.1088337-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Fix ID check logic with
 VBUS valid
Message-Id: <175674650567.186496.17960330116402166478.b4-ty@kernel.org>
Date: Mon, 01 Sep 2025 22:38:25 +0530
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


On Thu, 21 Aug 2025 16:59:57 +0100, Prabhakar wrote:
> The existing ID detection logic returned false when both IDDIG and
> VBUSVALID were set, which caused incorrect role determination in some
> cases. The condition:
> 
>     !(device && !vbus_valid)
> 
> did not properly reflect the intended relationship between IDDIG and
> VBUSVALID signals.
> 
> [...]

Applied, thanks!

[1/1] phy: renesas: rcar-gen3-usb2: Fix ID check logic with VBUS valid
      commit: 356590cd61cf89e2420d5628e35b6e73c6b6a770

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
