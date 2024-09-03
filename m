Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 372DACD37B5
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 21:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRp1dgWiOpFDRsbyF/Uu+fJhvQZ1fzjv/JtT3W0sGEc=; b=jn2yzREJfL7UwS
	UqSDvLqtKrM5Y6quyHYuZ8pcrVew3rEP2S0guizBs4tAyuvY8r2wAmB4FqMweK2gbWqLMrz3krumV
	bhIv3FQb4cE34SMbu21U9mg9ho5s+9QRG5YxArBSqcEd/qPEfZltSOy53yKDZU34wvMrmosAapi4H
	S9QzMC1Q4NyAk9W0uYxJO0W9exRBDtUH+QXX1r6zNsnugK+tB3AO5FFyCnakYQ23c5VNIOw3bYG+D
	7Gz+qCoFg4s1OgLpe04YsE3oNnjZONWeSqBAaLdg0bIbboiVGc7l2bN5h4pEY6AKYr2DLCyprOFny
	qEVS4b0DQKrqo2SaX3yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbYD-000000024J8-3bu6;
	Tue, 03 Sep 2024 21:59:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbXG-0000000243t-1qie
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 21:58:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7CADB5C56A7;
	Tue,  3 Sep 2024 21:57:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BF40C4CEC5;
	Tue,  3 Sep 2024 21:58:00 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 37B6B10604AA; Tue, 03 Sep 2024 23:57:58 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Enric Balletbo i Serra <eballetbo@kernel.org>
In-Reply-To: <20240831142039.28830-1-hdegoede@redhat.com>
References: <20240831142039.28830-1-hdegoede@redhat.com>
Subject: Re: [PATCH 0/6] power: supply: Change usb_types from an array into
 a bitmask
Message-Id: <172540067821.972525.3472424402904819549.b4-ty@collabora.com>
Date: Tue, 03 Sep 2024 23:57:58 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_145802_577665_B4B9FD78 
X-CRM114-Status: UNSURE (   9.89  )
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


On Sat, 31 Aug 2024 16:20:33 +0200, Hans de Goede wrote:
> When support for the "charge_behaviour" property was added the list of
> available values was made a bitmask in power_supply_desc.
> 
> "usb_types" is very similar in that:
> 1. It is an enum
> 2. The list of available values is stored in power_supply_desc
> 3. When shown it shows all available values, with the active one surrounded
>    by square brackets.
> 
> [...]

Applied, thanks!

[1/6] power: supply: "usb_type" property may be written to
      commit: 0d9af1e1c93b6a89f3fb6dcbafa5bc78892cb94f
[2/6] power: supply: ucs1002: Adjust ucs1002_set_usb_type() to accept string values
      commit: 83a4c42df75e8f6ff671fa9fbe7d4c79b98626de
[3/6] power: supply: rt9467-charger: Remove "usb_type" property write support
      commit: 03ec41c1670aedfbd126f541c4acbb8e69d4cd0c
[4/6] power: supply: sysfs: Add power_supply_show_enum_with_available() helper
      commit: a6456d43e9abebb5d7866e5edae3024188273306
[5/6] power: supply: sysfs: Move power_supply_show_enum_with_available() up
      commit: 322900ac7d82be0475466f81946b6484cd1936bd
[6/6] power: supply: Change usb_types from an array into a bitmask
      commit: 364ea7ccaef917a3068236a19a4b31a0623b561a

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
