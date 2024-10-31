Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC8A7D767EF
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 17:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNAkUWQImsEFEVLLoyy1bWfyTEx0rSeFsW3iIi5/P7U=; b=GMQQPBBbCun/X8
	ugz08RCFUvdAz9pm48jD551vo9nY1Nv50eY7SkylfuH/0Z4un/RNON2JgvgV9e310+S0hROnRP4NA
	iUa9XdybWAZxB8mD6Yiezj8xzIcFCAyvrAJlfugM28+0WYYeGiql69byo8QZSIQwRtGkKBnxFTIaC
	3gAZqj9MXZwRNFhRm5c1T1keLQzC/PJ0kI3MTY6f3Fv4i1kChu0Px5Xee21jajzta+FgsqmOIbG4O
	zymJpnxolZCbdqpR0Rx9/VSNGJMqNB+12IkhAhQIi0zXIgI3i95u07QqDK07oLUORkQYXU1QxHtjq
	FQPBNYi9hew4zvimo0Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Ylr-00000004JiC-1v8j;
	Thu, 31 Oct 2024 17:15:43 +0000
Received: from mout.web.de ([212.227.15.4])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Ylo-00000004Jhh-0tQ3
	for linux-phy@lists.infradead.org;
	Thu, 31 Oct 2024 17:15:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1730394911; x=1730999711; i=markus.elfring@web.de;
	bh=B1CSh4Cm103BFDPCBBTFOksDQ82+a3zIReW8/PLgDoY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=XY4vibq8Hus01LyWjefv1I+EDhFHYuqIh82qdNA/p7N24F1ujrdugZDxou/fQF2x
	 84p7CHC7Q1hBU3KaBHmaIPC3pGiICSndvFzBelHSaxhIUIaVi8v/txQLL13iGX6xA
	 koiBEOakk8BYW8Dp/ZhIzs5AKkYc10i+eyxfl6+tAeTS2hHblJKL2AiWCLSVwpS+q
	 vYSCB2txaPSib0VA0+AQbLEZM/UarfuY7xt3PB089evrJahSB7JMj9l927NWDk63K
	 OQOjMP/Ly8ZhhHkQqVrkIY5bA5A9U0VvTJoGTn5gPHLlFyxDOXaaSo41Ssj1L50Zy
	 VE+fb6L7Rok/PSsKNg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1N7QUL-1tvrAR3vLR-00sgnX; Thu, 31
 Oct 2024 18:15:10 +0100
Message-ID: <28bef742-84ca-4d52-8d19-258f1a3d695b@web.de>
Date: Thu, 31 Oct 2024 18:15:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Colin Foster <colin.foster@in-advantage.com>,
 Jinjie Ruan <ruanjinjie@huawei.com>, linux-phy@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Thierry Reding
 <treding@nvidia.com>, Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <ZyOUr7iDa9nFBxgq@colin-ia-desktop>
Subject: Re: phy: ocelot-serdes: Fix IS_ERR vs NULL bug in serdes_probe()
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <ZyOUr7iDa9nFBxgq@colin-ia-desktop>
X-Provags-ID: V03:K1:kRQHuVs3K5EjHho7YbJO9j8vWGW9sKgDS1nd4EG36/HnIv1JBqJ
 xjujs+P3C1tmYi634zE+v9dzLab53BAdhTFipxaILSIW+sSD7zxOg4l415YJeyv8jEbBTrZ
 IBxsidofwYus9ovyzNfUYOwx4Xk/D2w8k/1RUHKQwZndbl/uK6jr3tDU9ZBzkIfU3q6/z3J
 QU7gzb5DJa1LKsIEBs0tg==
UI-OutboundReport: notjunk:1;M01:P0:Pb3yaMw5tqA=;piYEI9d1pD3ipPRhzlz3VlAZFl4
 nXqUdLULYhjKalNTRJ0vpi4rxgzceHLM55cDCf0M4+rDhWG8L8MAzhNJdyqJkGOWYL0gvqP6l
 uykJMgX+XDM9i02y2wOzvzFEMzD2tY+zBCkn918uqJwBU6ls0UaYMRpVXAT38Q+d4CQ9Q8Hxx
 0LVqEdTw4MWJJZJ5IREB6PCVqNLvuNmndzVoY+A7XbgfBQuZRXYceNHiyMswr/lVcJR4xLdkt
 Ox1sWxDzMaN+wgaF79NLhj/C5H9QGM9rmsh+gqbISvaflH0KTQnsbTK6t9R1VRLmPIOBNazcx
 7ORr4bh7MYVitDB8k3cfe/k7u8S4AGAgyYKQNEHm4363eoadmYlms1ELygTIT98dibjXETth4
 bVFHAiXlDaRsw3mrS6//WIB6dcDk755GS9zBZRNx/9M+B4RFhnzYgSXQQWlnli7MquJfZNldJ
 FMLUeSBc0kGHQ241CkMXwWY2eW5djCewl9xPY/J710Q6xzgwmv+6szT0XiEPjiQbYKKHj+DQj
 HpZTSI0/X9rLNfcARPaHsdCUCtBE8OGTRPaThK8uSmW1Xq4b6b+u8SJirjK6VK70o0upslkLC
 Pf0zZOKn8riaUcc18KqwvBHw5nFCk/y2Wo1kStlR7nxVKpJtOVWbd06pNUoCGn3a64hAMI5Ik
 rNOQOssRpc8XFoqz8prEhzY1PO/Mp6QJN47xDG+X+Tm79WIjo8vy/KQwTjZijy2ufyt1+6ynz
 xaaKQ/cxMpB/V42pirge6+rGSsX+DgXGqjsT5XfhTHeSW+re+RII9zZBIfA3lHJiFeNnfaWkL
 2FC6oHeEC74/+z5swVsv0vWQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_101540_563910_63FF44C1 
X-CRM114-Status: UNSURE (   3.77  )
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

> Good find.
>
> Acked-by: colin.foster@in-advantage.com
> Revieved-by: colin.foster@in-advantage.com

Please reconsider the usage of these tags once more.

* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?h=v6.12-rc5#n456

* Should a personal name be mentioned (besides the email address)?


Regards,
Markus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
