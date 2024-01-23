Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34B4DC47DDB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 14:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sg1M6rmFEfq2AB+2BPc87CaSr8uahENhJR/Z6HXPsNs=; b=s+xGPu5w2w/hl9
	mUqzTyuuGr70hmNVmkQjdoEwfpapHAcYfWUPI4m+09JxmBgmiICY2n96WcGOVogDtsxls+tkRtnWo
	XeOZBvhn8ZIXw0A/xqFTCUKuFDOErbwAgryVtMsopEb8koLQ0sMegW5dJajxjHuRsM1b4SDp6l2CB
	Kx2ijQp3K3F2XDhhIX+ga27lyedgG2iMpG+dq/1VF0rQyM8NCu86PW3nVHW8dl1zm+uhw1rdBDhm5
	Td8TPyTPC+EVWONnI2trNB1fvy21QFdbbUMnWPqDqfYy3MR2PJM+KuoSHAvYK3BW9QwQiEA5Bkv/J
	wyz8t6bhcS+X2GgmZ4Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHNA-00Gj3r-2S;
	Tue, 23 Jan 2024 14:03:28 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHN8-00Gj2Q-03;
	Tue, 23 Jan 2024 14:03:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 82D41CE2A66;
	Tue, 23 Jan 2024 14:03:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E53B4C43390;
	Tue, 23 Jan 2024 14:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706018578;
	bh=07J5vk8WrZtMUgfX9yUoEbt1L1ydDJvsXfEiWtN8rKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l6lL8PmEhiPnkg3AaFYGvj4tEwYmxSUxj/M9olDGO5c+2bydQkvUmIdqo825Gr4Ge
	 r9Dji7LWBvIzsKzsw8ivu/rtRyeT6upVnAmsdFdw5F7fAdO1UOH3M4yFvGEwqsbY2w
	 edkV42ClQlkuaeU6BiHNs9RMb0RNl+a99g0Usyfr6WX7X+J428aYct34DXH56asG7R
	 2Qk0okBICHwgmhLN1EM3igCXkPbTkW7u/BXbaZXgAoLxjVuVDDfXUwc7NmgOBhgMXq
	 310/wBYOzv7hSleYDkp46A3WVSHgZoTKYM8+GCyq1u1wJb8H+1vUC9Z5II9ueFg/JC
	 D9NZ5HjbldLLw==
Date: Tue, 23 Jan 2024 19:32:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Tom Joseph <tjoseph@cadence.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH 05/14] phy: ti: phy-j721e-wiz: make wiz_clock_init
 callable multiple times
Message-ID: <Za_HDoBeUC9sbh35@matsya>
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-5-84e55da52400@bootlin.com>
 <Za9oR8BpoufCRNIw@matsya>
 <d005e3c5-08b3-4a4f-b1ed-e02bde82c2f9@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d005e3c5-08b3-4a4f-b1ed-e02bde82c2f9@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_060326_230067_F4474D9A 
X-CRM114-Status: UNSURE (   9.25  )
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

On 23-01-24, 09:20, Thomas Richard wrote:
> >>  
> >> -	ret = wiz_clock_init(wiz, node);
> >> +	ret = wiz_clock_init(wiz, node, true);
> > 
> > You are calling it one once? So what am I missing
> 
> In patch 6/14, wiz_clock_init is called in resume_noirq callback:
> 
> ret = wiz_clock_init(wiz, node, false);

noticed later, I think this would be useful to mention in changelog

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
