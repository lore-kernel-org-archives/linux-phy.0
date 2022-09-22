Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B20C6FA8B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 04:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coTDBnHEbHIYdSAqhS9Ml+OPAxbG/bvLXUo1CdeODrA=; b=ggRGIosnwXh+h7
	k2PSh4qA6kEvyZ2slpydmp24xWUGTGrKzqCc5OResj8wa38eLSjmDRCdGhoT2CSHOdL7ETQcXxIjR
	DWYKNPswjuvRoqMexVP4sy9yGvR5vfzO1Ujt97Bz0xAdBZhmHJDz3mEClaFfZDvSbx5qbmwzS+pg1
	KGFdCpeshzWRO+bRabbbhh7Q8qtSQO2sETIyyMGuOM6rZAt6ifFGmVt8Q1AYlHZ9D8nXqRAljnvBR
	fulnS0HwLjUzckTkeTEjE0aRJGsnTzssNHZ32xUPVxoTUBoMZciDjyuiB8ZiX4TfcYxsI4CFRFdCj
	0WQ4dBsiXhCiIy1XDs+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obDgX-00DJhD-Ux; Thu, 22 Sep 2022 04:19:37 +0000
Received: from eastern.birch.relay.mailchannels.net ([23.83.209.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obDgN-00DJfe-0F; Thu, 22 Sep 2022 04:19:28 +0000
X-Sender-Id: dreamhost|x-authsender|karl.os@veroson.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 26AD13C09D9;
	Thu, 22 Sep 2022 04:19:22 +0000 (UTC)
Received: from pdx1-sub0-mail-a258.dreamhost.com (unknown [127.0.0.6])
	(Authenticated sender: dreamhost)
	by relay.mailchannels.net (Postfix) with ESMTPA id 319973C1403;
	Thu, 22 Sep 2022 04:19:21 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1663820361; a=rsa-sha256;
	cv=none;
	b=TYw2cYGifTDPWrgyFyfgt313iKNm4d/WLn1nR/Kup7mMUGBIUlflillh/0TCYUONW60VlE
	fdxgbb8lGZU+bZA1seDJzjSHIBbIYwWzrUOvEK5muUEDvvPyXfliN1dyKwg+02dHeuFqOH
	7palR6BAFKUEHlccofZdV6gjmz249tvzgp2/7zBhaZpk92EowrVPbZ3vS8jj25Hjkdcdsp
	A5Vowl6tJWQxsVC204rN+F3u7kG6eWEJ4xMnA5AdVYvfE8p8UQs8pAuXuEiTnUzgzdA9f0
	bWGB1Euk3ihOIEip7rBsB8ExV4/1lgASwuzTU8Ugk/A62oGj8x35pU/xRetLQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1663820361;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=vT6bv/WisUBq8m8o70j6fGYTfeF1p35BvwzYIUgbun4=;
	b=z3OeJSoJ3J+TeIuk+PoXhldFdDomO4OHY6hwsYK9aVJd+ZOJOhbW/XJM/De/gdrthmOF/X
	TdZ8MozweuHAYOBtDRdUc2dKdQVHVceT/yqsalpHUwxpO9XJFjZep6HKzDYGgzcKB/Z14D
	F8m7/7NhcqCEu4reoIHA0o1j5NbW5u2kbZfedfQ7/3GGH3tB26veTiapOIKZCTyAt13KCP
	ujf7LbHowTrh2WSck1+kCniHVgpvGlTqk1nVG8raxIjDnQ6ul5WerDfMrfOATLR+trausN
	ODS0vEALWEJ1hY+y9bIQ5f+E4TLCmqTzZH4kRBCS0+3NTRhJl2DrMd11H+3wMg==
ARC-Authentication-Results: i=1;
	rspamd-f776c45b8-2q8n5;
	auth=pass smtp.auth=dreamhost smtp.mailfrom=karl.os@veroson.com
X-Sender-Id: dreamhost|x-authsender|karl.os@veroson.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|karl.os@veroson.com
X-MailChannels-Auth-Id: dreamhost
X-Slimy-Tart: 59bdc4d919ef7503_1663820361943_1131412379
X-MC-Loop-Signature: 1663820361943:2608944700
X-MC-Ingress-Time: 1663820361943
Received: from pdx1-sub0-mail-a258.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.97.77.208 (trex/6.7.1);
	Thu, 22 Sep 2022 04:19:21 +0000
Received: from localhost (unknown [38.15.43.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: karl.os@veroson.com)
	by pdx1-sub0-mail-a258.dreamhost.com (Postfix) with ESMTPSA id 4MY29J35Bvz3K;
	Wed, 21 Sep 2022 21:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=veroson.com;
	s=dreamhost; t=1663820360;
	bh=vT6bv/WisUBq8m8o70j6fGYTfeF1p35BvwzYIUgbun4=;
	h=Date:From:To:Cc:Subject:Content-Type;
	b=PlopfdrLhjlzM3ToPlwPsbjqQc0IEzTTD5Us58EDWXQtNvflNlL0OVp4K6Vh+UcNn
	 6wYs5hWW7kew6OXbeeoiDkXtvsJFPal7HZ2VnFKMbg7vFV5NeRB0q9Bi7BYMmWZ410
	 pXKaGjr1LtHC9iHblQxeICDrn9NLqIb75CDRcOjSxF/hSQokzKE9xBjVK/HQXljzZ6
	 PeAiwR+5EeU/4UNM4mGUySaWw+fC2kzo4QwKxzq7peTt5mz6nRcWOsNySYzr/XylqS
	 1ddL8Qa4SVP+OUCTv5rPRy2hlK8mBm7EeW1FVTvs4n97OfLv+Swrf3mdK0XsdYHpHK
	 QmhdZ5JAlMpJw==
Date: Wed, 21 Sep 2022 22:19:14 -0600
From: Karl Kurbjun <karl.os@veroson.com>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 0/7] arm64: sunxi: h616: Add USB support
Message-ID: <YyviQkLXUX9FuLED@localhost>
References: <20220911235945.6635-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220911235945.6635-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_211927_307478_04D37104 
X-CRM114-Status: UNSURE (   9.46  )
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

On 09/12, Andre Przywara wrote:
<snip>
> Please have a look and test on your hardware, especically on all ports
> exposed on header pins of the OrangePi Zero2 board.

I tested this patch set on an OrangePi Zero 2 with each of the USB ports:

Port 0: I tested this with a UART gadget to make sure I could access a console over the port.
Ports 1-3: I tested these with a USB memory stick - I was able to see the device and mount a partition.

As would be expected: for ports 2-3 I had to enable the ohci and ehci entries in the target dts file to test them.

Tested-By: Karl Kurbjun <karl.os@veroson.com>

Karl

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
