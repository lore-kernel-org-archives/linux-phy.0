Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D0C3C43334
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 07:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/yzzCuHZJv0vIQO40YOJ/zakRZC8v8XtQOkEAdyg01g=; b=cj7GY/CRFBcoVDpvkKZTIgHuEm
	D3FjltKkTsJ4vkKfcclrlpEh22HJcehSShUI3yIhiP9w+xTj7JyEXwaXvfNHr7/OtmOTtA6Ba4LLY
	Ei+50ShdP05/SWsolkeilRSw7+cGqKY9f1IdhF4Mb+n51na3QidqMRjJoCpMV6tmg6GF9jGVcTGGc
	Vba+cOX4ie0Esp91QLo7OnEjSwTkVwKqgpfStR0xmhZ/VtTN7w+804KPjQaKLW0QrvhkMl9kFwvYJ
	Vi9KAFl/7//GEOQWtnHQiGjcSiIDLS8GpgDU/F/F6w5Q/On+gZ7gnnVhFKjzpPlce1K+6A1WpHsSQ
	Or+RIH2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEQe9-001sZW-MB; Thu, 21 Jul 2022 07:30:57 +0000
Received: from 1.mo583.mail-out.ovh.net ([188.165.57.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEQdu-001sI7-Mg
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 07:30:44 +0000
Received: from player730.ha.ovh.net (unknown [10.108.1.68])
	by mo583.mail-out.ovh.net (Postfix) with ESMTP id 1EFA0245F6
	for <linux-phy@lists.infradead.org>; Thu, 21 Jul 2022 07:30:37 +0000 (UTC)
Received: from RCM-web2.webmail.mail.ovh.net (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
	(Authenticated sender: rafal@milecki.pl)
	by player730.ha.ovh.net (Postfix) with ESMTPSA id 07AC42CA88489;
	Thu, 21 Jul 2022 07:30:13 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 21 Jul 2022 09:30:12 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: William Zhang <william.zhang@broadcom.com>
Cc: Linux ARM List <linux-arm-kernel@lists.infradead.org>,
 joel.peshkin@broadcom.com, dan.beygelman@broadcom.com, Miquel Raynal
 <miquel.raynal@bootlin.com>, "David S. Miller" <davem@davemloft.net>, Rob
 Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, Florian
 Fainelli <f.fainelli@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-gpio@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [RESEND PATCH 6/9] arm64: bcmbca: Make BCM4908 drivers depend on
 ARCH_BCMBCA
In-Reply-To: <20220721000740.29624-1-william.zhang@broadcom.com>
References: <20220721000740.29624-1-william.zhang@broadcom.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <67a913c5cc1672152a34370f952b93eb@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 44191571924659028
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrudelkedgvdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvvefujghffgfkgihitgfgsehtjehjtddtredvnecuhfhrohhmpeftrghfrghlpgfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeegvdffjeelvdeggeetheegveejieetgeeiiefggeelveejffehieekhfduueelhfenucfkpheptddrtddrtddrtddpudelgedrudekjedrjeegrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehplhgrhigvrhejfedtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqphhhhieslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdpoffvtefjohhsthepmhhoheekfe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_003042_889698_9E1EDC84 
X-CRM114-Status: UNSURE (   5.15  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2022-07-21 02:07, William Zhang wrote:
> Replace ARCH_BCM4908 with ARCH_BCMBCA in subsystem Kconfig files.

Commit messages should generally answer *why* instead of *what*.

That helps subsystem maintainers review/approve your change without
having to walk through the whole series.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
