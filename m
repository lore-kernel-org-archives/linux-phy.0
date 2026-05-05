Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98C5DCD3427
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 18:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5qU8cUId6U4Rb13JebycHq+12SO0mT5Lfeh/aK6kiE=; b=3M/8m31idPGXYe
	9HPErs7F7k0UQoyR6/sxLEyx+8YPmtIf2P1FDAJHRAAeP753SYij+ayPBD+NV/xHGA3E8LRZMZOSt
	r+fPoSYK0CV14+UmU/e+XRr5+QMyQvElvKIJc90SFk00gZKUmMgA2X1Bm3hYqy6NAlu4s4LxwY+TJ
	YZNQT7lGPIgiiqL4NOWhgaz/DJft3IGGSPgmN7ItVVt/STZp6kUMgqf7RYDFykpM3xj5nrRo7LV6T
	5x78FtKmIRshHqHML3vMsunf9cVtc42Pk4oRr5QjyBZPPpIxjBPolF5ONb7lkDSQrPFv64kJGZodX
	4WpxVtZ+MOvfjmzthb3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKEN-0000000H8LL-0Ble;
	Tue, 05 May 2026 18:10:51 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKEK-0000000H8KO-02Xj
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 18:10:49 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E55A027131;
	Tue,  5 May 2026 20:10:42 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AIWZhtpxwpGs; Tue,  5 May 2026 20:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1778004642; bh=QftOI+uL3NSXDiQJ4xlx2cTriJ118BztrE1iKu5XB34=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Q8SZQKvRjYWkapLVRpN6pDVHuJILmO+k6UXGAvTJRjkrDnUZSl6lg7aVewQ39Lz28
	 Ta9ynvTw3Am/1w2szGhesIVuVGLqvJBbOL5T6AGCQ4IbtThFZZ4DFGuxAgoVV0CJrN
	 PpsZik3HmPouVW1KfBAQCnjppzi5Crrd3t3EDYfvFrowRUP7QpV/wEsvXePE5Wop23
	 qQg5vdXvbNotdbxh5yHNlveM5hZG+2rOUPjGlqNndPXFIFqVyRa4F+J424Mb3Qa196
	 H2mqqoaaGEkeLkBUsR4RRwuyNatZGtXFuHfvFPGNyky66rvGlbWMxFkzQET8GswP0L
	 AmcnlNoTC/6qg==
MIME-Version: 1.0
Date: Tue, 05 May 2026 18:10:42 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Michael Zavertkin
 <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v5 5/6] phy: realtek: usb2: add support for RTL9607C USB2
 PHY
In-Reply-To: <20260505113001.idgj7ssikjgcypa2@skbuf>
References: <20260420191941.81834-1-adilov@disroot.org>
 <20260420191941.81834-6-adilov@disroot.org>
 <20260505113001.idgj7ssikjgcypa2@skbuf>
Message-ID: <9de0dcc209eab02d2a4e5fcec25e7711@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_111048_480160_2A90D2FA 
X-CRM114-Status: GOOD (  11.06  )
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

On 2026-05-05 11:30, Vladimir Oltean wrote:
> On Tue, Apr 21, 2026 at 12:19:40AM +0500, Rustam Adilov wrote:
>> Add support for the usb2 phy of RTL9607C series based SoCs.
>> Add the macros and phy config struct for rtl9607.
>> 
>> RTL9607C requires to clear a "force host disconnect" bit in the
>> specific register (which is at an offset from reg_wrap_vstatus)
>> before proceeding with phy parameter writes. Since it belongs into
>> the vstatus register region, it doesn't need bytes swapping.
>> 
>> Add the bool variable to the driver data struct and hide this whole
>> procedure under the if statement that checks this new variable.
>> 
>> Add the appropriate little endian read and write functions for rtl9607
>> and assign them to its phy config struct.
>> 
>> As mentioned earlier, the readl/writel are native endian on MIPS arch
>> if SWAP_IO_SPACE is not enabled. Since enabling SWAP_IO_SPACE results
>> in boot hang on RTL9607C machine, wrapping le32 around readl/writel
>> should be a good compromise, but swab32 could be also work.
>> 
>> Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
>> Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
>> Signed-off-by: Rustam Adilov <adilov@disroot.org>
>> ---
> 
> Have you considered ioread32() instead of wrapping le32 around readl()?

I think you meant ioread32be() and yes i have considered it. If this is what
it takes to get rid of le32 warning you mentioned from an earlier email then
so be it.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
