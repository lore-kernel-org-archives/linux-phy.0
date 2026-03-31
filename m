Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1AB910F92E5
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 16:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8r26nO3fKRip2EsYx76ymVFP8tr7sqh+FhqXXeVZLN8=; b=fZlFRDoF73EJZu
	Uax7KRMJsdM+ugZIG0ddgD2k72uDUaG4LLIsmUbsHgYyzJxxDgoIvyAWlneKrGhdCWogjR9GPqM7g
	f6hqimszhhYiTUMFAkm0D5OxAxjPMP1tVFdSHq9K0I7fsgnSeCI2PleI0+dzATT0l3QJo7vFF9/8c
	CwNGKQeVsnW1yaz7IGr7O+X6kI7UchmWjX4UeunC/qidmYYmXpEH0h4HrdiwB7qFwU06Xn9q+pDin
	7AazlWNvQR4UKgbsIxovdLvXE9NcgGdDqcO4v7KOQWF//8lSSdICGOqjLoZBxQasRvOQK+4VK91SD
	gphb/eHvDbJkGGizTmlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7bvb-0000000DFx5-1OvV;
	Tue, 31 Mar 2026 16:26:55 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7bvY-0000000DFwk-0bFO
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 16:26:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 0546225F3F;
	Tue, 31 Mar 2026 18:26:50 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yEFNASaRFbob; Tue, 31 Mar 2026 18:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774974409; bh=4/KOV5r9948VYhuiUcfo+u6YJ2ubFSTwMYYsK55YSNI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=mkl841Yf5Uzpm0YCBamFprdHBM9aPwhUAhzqkP7JGPqLeP92X4/qMAoRmqvZEIZQZ
	 n7LMpw6OHGQN5JV/Uw2qDbfoE+q1deCWNtflgVJJ5SlkUVA5LnkC0oFpn8rFMfGrla
	 sDGyhyO3NJ4JGc/IR5A/7Niw6Fdr7pLn/nZEQngg9z4dvpYoSs7B42Pg8Zp5laeliz
	 lIPdM8bx5T5UWBlTB4aURf3JhBrZQGberYWaQ49ZSrqyF1kxqnvgfE+b7Z3992bnug
	 AGtF2QhvGQXxAY/broksmc+3uG6Uk0jxTqdakr3/7F+jOe8NSZWwdwMqRFiKfxS4Zr
	 ffLn2fZyAvstw==
MIME-Version: 1.0
Date: Tue, 31 Mar 2026 16:26:48 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Michael Zavertkin
 <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v2 2/6] phy: realtek: usb2: introduce read and write
 functions to driver data
In-Reply-To: <20260330213227.zujvcvsxdfknzltz@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-3-adilov@disroot.org>
 <20260330211918.y7su36j47e3uelcv@skbuf>
 <20260330213227.zujvcvsxdfknzltz@skbuf>
Message-ID: <4663266d3a7d428d9d28edb96227cb8c@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_092652_478001_9196654B 
X-CRM114-Status: GOOD (  27.77  )
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

On 2026-03-30 21:32, Vladimir Oltean wrote:
> On Tue, Mar 31, 2026 at 12:19:18AM +0300, Vladimir Oltean wrote:
>> On Fri, Mar 27, 2026 at 09:06:34PM +0500, Rustam Adilov wrote:
>> > +static inline u32 phy_read(void __iomem *reg)
>> > +{
>> > +	return readl(reg);
>> > +}
>> > +
>> > +static inline u32 phy_read_le(void __iomem *reg)
>> > +{
>> > +	return le32_to_cpu(readl(reg));
>> > +}
>> > +
>> > +static inline void phy_write(u32 val, void __iomem *reg)
>> > +{
>> > +	writel(val, reg);
>> > +}
>> > +
>> > +static inline void phy_write_le(u32 val, void __iomem *reg)
>> > +{
>> > +	writel(cpu_to_le32(val), reg);
>> > +}
>> 
>> Please don't name driver-level functions phy_read() and phy_write().
>> That will collide with networking API functions of the same name and
>> will make grep-based code searching more difficult.
>> 
>> Also, have you looked at regmap? It has native support for endianness;
>> it supports regmap_field_read()/regmap_field_write() for abstracting
>> registers which may be found at different places for different HW;
>> it offers regmap_read_poll_timeout() so you don't have to pass the
>> function pointer to utmi_wait_register(). It seems the result would be a
>> bit more elegant.
> 
> Even if you decide not to use regmap. I thought I should let you know
> that LLM review says:
> 
>   Are these double byte-swaps intentional?
> 
>   Since readl() and writel() inherently perform little-endian memory accesses
>   and handle byte-swapping on big-endian architectures automatically, won't
>   wrapping them in le32_to_cpu() and cpu_to_le32() apply a second, redundant
>   byte-swap?

From my experience (and also understanding), readl returns value in native endian
and doesn't do byte swapping. The same goes writel.
Thus wrapping le32_to_cpu() and cpu_to_le32() around them correctly swaps the
bytes from big endian to little endian, without the double byte-swaps.

The comment even mentions it "{read,write}{b,w,l,q}() access little endian memory
and return result in native endianness." which was provided for reference later on.

>   On big-endian systems, wouldn't these double swaps cancel each other out
>   and result in a native big-endian access instead of the intended
>   little-endian access? If the SoC bus bridge implicitly swaps and requires
>   a native access, should __raw_readl() and __raw_writel() (or ioread32be /
>   iowrite32be) be used instead to avoid obfuscating it with double-swaps?

The __raw_readl() and __raw_writel() are indeed in native endian, and for
RTL9607C SoC it is in big endian.

The way Realtek did it is by using the volatile and wrapping them around
le32_to_cpu() and cpu_to_le32() respectively, which is certainly hacky.

 static inline unsigned int ehci_readl(const struct ehci_hcd *ehci,
 		__u32 __iomem *regs)
 {
+#if defined(CONFIG_RTK_MIPS_SOC)
+	return (le32_to_cpu((*(volatile unsigned long *)(regs))));
+#else
[...]

 static inline void ehci_writel(const struct ehci_hcd *ehci,
 		const unsigned int val, __u32 __iomem *regs)
 {
+#if defined(CONFIG_RTK_MIPS_SOC)
+	((*(volatile unsigned long *)(regs))=cpu_to_le32(val));
+#else

We did a bit of debugging with usb some time ago and and printed the value
of the readl result from the base usb address and got this
[    1.327473] ehci_setup:694 ehci caps: 0xb8021000, value: 0x10000001
[    1.334478] ehci_setup:695 ehci regs: 0xb8021001
[    1.339706] ehci_halt:187 ehci regs: 0xb8021001

"0x10000001" is supposed to be "0x01000010". Otherwise, it would take 0x01
for the cap length and result in immediate halt from timeout.

Even though it is for linux-usb and not the phy subsystem, it was worth
mentioning as it is very much related to this issue.

What is surprising, the ioread32be and iowrite32be functions actually do
swap bytes, thus resulting in little endian (ironic). But using it here
would be just incorrect as it is intended for accessing big endian mmio, 
not for big endian CPU and its little endian USB phy/host.

So, that is a conundrum we have here. Let me know if what you think of it
and maybe even how to better solve it.

Will hold on posting v3 until this hopefully is more or less solved..

>   Also, does passing the __le32 restricted type returned by cpu_to_le32()
>   into writel() (which expects a native u32) trigger Sparse static analysis
>   warnings for an incorrect type in argument?
> 
> For reference:
> https://elixir.bootlin.com/linux/v6.19.10/source/include/asm-generic/io.h#L184
> /*
>  * {read,write}{b,w,l,q}() access little endian memory and return result in
>  * native endianness.
>  */
> 
> and yes, your patch does trigger sparse warnings:
> ../drivers/phy/realtek/phy-rtk-usb2.c:153:16: warning: cast to restricted __le32
> ../drivers/phy/realtek/phy-rtk-usb2.c:163:16: warning: incorrect type in argument 1 (different base types)
> ../drivers/phy/realtek/phy-rtk-usb2.c:163:16:    expected unsigned int val
> ../drivers/phy/realtek/phy-rtk-usb2.c:163:16:    got restricted __le32 [usertype]

I can alleviate it by creating a temp u32 variable to hold the cpu_to_le32() and then
using that temp variable for writel.

> Furthermore, please drop the 'inline' keyword from C files and let the
> compiler decide. Your use of this keyword has no value - you declare
> phy_read(), phy_read_le() etc as inline but then assign function
> pointers to them. How can the compiler inline the indirect calls?

Will drop these.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
