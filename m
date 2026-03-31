Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 640861061B21
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 10:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIAKP7+DoE3wQ1hHR75y1DB7e1MG+s8mvjZ4xUfUArE=; b=ID+BeSpdYXxHJK
	8fRQnlAgdZm7rDIJhVqB07kDkrynkhqChTpxmpICK7UD+iJqppEAFXDpjZ58jrhfQqyKk4EBLHuHN
	OUKhpCcC65TkHg8iqvzGYpPJrjrPtsHb0SFYXMUZqHqDnjb6WILybXKNFCkN+UvD3Wa0M/MQBA3Qs
	sbDzlbq9MkWWEpJqpQdGMHuEu2vfFiOue7xhG5VJY96Lanfimh5uNbXeA7Edzow+VdWK4rWRQXGoK
	4Kaw8kJHHvEDnbf8wf1ChVYSYisDazJuAv8kbT1rD3eF0iozj/Af81vHU9Ts17hRNmtAxnLj8dml9
	7yGiW7c60aAJ5gdR8cKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7WLx-0000000Cmol-47ZL;
	Tue, 31 Mar 2026 10:29:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7WLv-0000000Cmnz-3KSe
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 10:29:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 119F4418F3;
	Tue, 31 Mar 2026 10:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30A1DC19423;
	Tue, 31 Mar 2026 10:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774952982;
	bh=Sb7+YT5MlZJy3yCTsyHBgr+LrhrODBwZbdlcoutQ1nw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=vJ9FIk/Ll0EXNGBCluxgxPor0U2/hwdbzW2L893wEEKHUVwai7LIFwGuoPHKx/2Xk
	 tIUzLJFX3eGbHWTC17sI92TDNei63m2WFyCVchSA4wM18LgbbL4NO5YHMGHP3NcaUR
	 hS4HeQJ9sry3fcQBW8cky5JeF/ZF6Q1GS5P75y4ou9zjxQ3gPXn4w4dKE74zyasx0d
	 z2tmHSq5VLMfWJf3YGnK5kXmTpxorfM2Z+Y4GvYlrdjhGQEQOogS7Fn/mNXmDeeiZM
	 Dd28P/M9qNBOmIT2l5CL7Ss9icBNMu8Qp+wuReaKHX1sOQiwmxqxrIypiJz6gNJFpI
	 CzqyNanidwx3g==
From: Lee Jones <lee@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Moritz Fischer <mdf@kernel.org>, 
 Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, 
 linux-leds@vger.kernel.org, linux-fpga@vger.kernel.org, 
 driver-core@lists.linux.dev
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-5-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-5-b72eb22a1215@gmail.com>
Subject: Re: (subset) [PATCH 05/10] leds: led-class: switch to using
 class_find_device_by_fwnode()
Message-Id: <177495297689.3815589.6859873475520670878.b4-ty@b4>
Date: Tue, 31 Mar 2026 11:29:36 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev-ad80c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_032943_845776_A34864EF 
X-CRM114-Status: UNSURE (   5.67  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gU3VuLCAyMiBNYXIgMjAyNiAxODo1NDoyMyAtMDcwMCwgRG1pdHJ5IFRvcm9raG92IHdyb3Rl
Ogo+IEluIHByZXBhcmF0aW9uIHRvIGNsYXNzX2ZpbmRfZGV2aWNlX2J5X29mX25vZGUoKSBnb2lu
ZyBhd2F5IHN3aXRjaCB0bwo+IHVzaW5nIGNsYXNzX2ZpbmRfZGV2aWNlX2J5X2Z3bm9kZSgpLgoK
QXBwbGllZCwgdGhhbmtzIQoKWzA1LzEwXSBsZWRzOiBsZWQtY2xhc3M6IHN3aXRjaCB0byB1c2lu
ZyBjbGFzc19maW5kX2RldmljZV9ieV9md25vZGUoKQogICAgICAgIGNvbW1pdDogYjZkZTQ0MWY4
Y2UyMmUzZWFkM2I4NTgzNDJmZTU2NTI1OThhMzU3MgoKLS0KTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
