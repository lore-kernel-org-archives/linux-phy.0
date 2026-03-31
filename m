Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9221010F92E0
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXz4pf82aw7YN90WTYQfa0rNHvZglVWaJOYlEcYhPDg=; b=h6uifVY9Dn5CYw
	pByP8aaoWmuA6HfMeMJHxPnm58OJKPr1TtG4bTKzRmUcZaa3X4nsuVOt2EAQcVjD9QCnhR9xJ5JYV
	Kf3VatC2+O/aP4RklgrL5QJA0GSj4FXShoCn6z9r02hjcMjEpRkvKATrpTKvMuHALWX3HWLBH/QqV
	ni0RIKmxkArOmaygnYipDqVohzq5JeOjtRoNdsYidDvxuTfBTY8SvndVg6vEOjSunAH8vpPwDgZU4
	MAKm4jrf3X/nGgYfO0Oa8+ze+nIynDsY5zTrmVhaPjFoEHA8TFsPGlOCyksKot9BfxjvI4SQJt2rx
	smRae2VZDLnp2WROpW5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7cYH-0000000DIjA-0Jbw;
	Tue, 31 Mar 2026 17:06:53 +0000
Received: from send147.i.mail.ru ([89.221.237.242])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7cYC-0000000DIiK-3uev
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 17:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
	s=mail4; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive:X-Cloud-Ids;
	bh=rAaDBLFGbDgDwpMbp6AM9FCRPRn76HBbM5qhVpKBBIs=; t=1774976809; x=1775066809; 
	b=sWux66V3nd8nmJ5B4qv34Trz1htexvb5BikVsALmbklCgGlg1v06aoCZJogxOai/Ud/7kNwZkNy
	WOoM5P5C2GGQ0EFcAFa+GzguBLeHo0fwuVhaQT1RpZ3r/3kQWFEDQNUqB8y2MEj/P1dCdjaxNdtKB
	lIeWrt7l8BY+CyjQN5c0dpXG++VE/JVDII965LjbS9Twv00Gls502JV2H9C1KGa4Zw2fmcxYgMZrg
	e3ItHxCt9MGpKqqyfJ4TixYkWxF0C4NYN42GGccXGr8aNL0m04eosZzpJBYPrPRov7qajpDWABHhx
	2IPlm+M3/pi+jDvdELyBi5IV13I4MOqw/c1w==;
Received: from [10.113.196.51] (port=51730 helo=send37.i.mail.ru)
	by exim-fallback-85d8c67f99-ddxtr with esmtp (envelope-from <misha.zavertkin@mail.ru>)
	id 1w7cJP-000000009i5-0XUz
	for linux-phy@lists.infradead.org; Tue, 31 Mar 2026 19:51:31 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
	s=mail4; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:From:Sender:Reply-To:To:Cc:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=rAaDBLFGbDgDwpMbp6AM9FCRPRn76HBbM5qhVpKBBIs=; t=1774975891; x=1775065891; 
	b=mxam3ZDBwmk320oL/gs6KaLzbRC2ahuQT7v3f2326oU+6LgG2zNNXJRJGDtAvOZMKPzjS7OYiQA
	OSr8KUGrlJatLR5B8udaC6yIixpA3pjU+r/t+gI4t/2hwDi52h21X0z5ae42nocz8CdZyWIkovj8V
	JDXxNwh0qWdBNITHpPAU6GF/R03nk2l/DicR/aAlg7WT8f6drrLUPx7CqGfTm4CxUnzN0D3i71sKH
	lxahnecE71lDV6LjpoTYtARF9wWW/1ceRHAJp61uHFXZFr8FwPxedO+tWk3UMjNs/BonUv0kmkgvp
	zCOvx4ulvHFH3DkX59yIXOpjARHKbNK2Q6Hg==;
Received: by exim-smtp-68896ccc7f-xrlr4 with esmtpa (envelope-from <misha.zavertkin@mail.ru>)
	id 1w7cJ7-00000000a8Z-2IHS
	for linux-phy@lists.infradead.org; Tue, 31 Mar 2026 19:51:14 +0300
Date: Tue, 31 Mar 2026 23:51:11 +0700
From: Michael Zavertkin <misha.zavertkin@mail.ru>
To: linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/6] phy: realtek: usb2: introduce read and write
 functions to driver data
Message-ID: <acv7f50cEXtqZVLW@gamepc>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-3-adilov@disroot.org>
 <20260330211918.y7su36j47e3uelcv@skbuf>
 <20260330213227.zujvcvsxdfknzltz@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260330213227.zujvcvsxdfknzltz@skbuf>
X-Mailru-Src: smtp
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD93432C92265B16DE37988ABAD2A88CBB5CFCF7836476A12DC182A05F5380850402FE8C194688DEEA43DE06ABAFEAF6705778EB42CA21374C3A9CFB3392B90C4FD80ACAB8EAC650A75
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE757F64E7FD849EB4FEA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637AC83A81C8FD4AD23D82A6BABE6F325AC2E85FA5F3EDFCBAA7353EFBB55337566B07F865632A725848586745D9A1BE7B045C25463D6A6568CE0F7BCF038C238538EEF46B7454FC60B9742502CCDD46D0D1E1736EDDE8D4790F6B57BC7E64490618DEB871D839B73339E8FC8737B5C2249197FFA0EFC27E0ACA471835C12D1D9774AD6D5ED66289B52BA9C0B312567BB23117882F446042972877693876707352026055571C92BF10F618001F51B5FD3F9D2E47CDBA5A96583BA9C0B312567BB2376E601842F6C81A19E625A9149C048EE4B6963042765DA4BC8623B8F170C382FD8FC6C240DEA76429C9F4D5AE37F343AA9539A8B242431040A6AB1C7CE11FEE30085B890FD2717DA6136E347CC761E07C4224003CC836476E2F48590F00D11D6E2021AF6380DFAD1A18204E546F3947C2FFDA4F57982C5F42E808ACE2090B5E1725E5C173C3A84C3C5EA940A35A165FF2DBA43225CD8A89F4D6F856617528FC2089D37D7C0E48F6C5571747095F342E88FB05168BE4CE3AF
X-C1DE0DAB: 0D63561A33F958A53838BB9C0714EDAE5002B1117B3ED696C18A22EB778592A41E49B01306B5E3AD823CB91A9FED034534781492E4B8EEAD27E9584FBD6BDD31BDAD6C7F3747799A
X-C8649E89: 1C3962B70DF3F0AD73CAD6646DEDE1918E10F71CB4DF9F9677DD89D51EBB774225B6776AC983F447FC0B9F89525902EE6F57B2FD27647F25E66C117BDB76D65975E4AABDD25FC00429104C0354BD85653875F558B95EC2B311F705F0514A01C44D6741388894635BB8341EE9D5BE9A0AA7283362683D2C95E75BD6005BFA07A5503FA7476A6711EC52EE4E5D9E54FDA44C41F94D744909CE2D653CA06E969CEAC4926F5095E487D6D64CFEF34022E96A964550E41902C4E4
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu53w8ahmwBjZKM/YPHZyZHvz5uv+WouB9+ObcCpyrx6l7KImUglyhkEat/+ysWwi0gdhEs0JGjl6ggRWTy1haxBpVdbIX1nthFXMZebaIdHP2ghjoIc/363UZI6Kf1ptIMVdx/hWl0/CTm4lWqQZ6MtJw=
X-Mailru-Sender: 53225E476262CDFB4708A4528C9D2A7BB122AE0849EA46D63DE06ABAFEAF6705778EB42CA21374C3F544F87C5664B7A31DBC9D26A80DBF048AFC883BAD50DDC9AB8642342C2B65EBADBD92A00C77E0473057BA2287F227EE22B820C1B2086D890DA7A0AF5A3A8387
X-Mras: Ok
X-Mailru-Src: fallback
X-7564579A: 646B95376F6C166E
X-77F55803: 6242723A09DB00B45B7BC1C949D967D8793E282ADEB5EC081A9688FCEEAA9E1E049FFFDB7839CE9E3DD1BFC800EE732FBEDF93AC06B3DF40C996645818696764D2D59D77A436958C04E70781C2E39A38
X-7FA49CB5: 0D63561A33F958A52DAFBC9E89C165655002B1117B3ED696566A04863EDBCE1C4E82D2634811542802ED4CEA229C1FA827C277FBC8AE2E8B822E944600CE7B7C
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu53w8ahmwBjZKM/YPHZyZHvz5uv+WouB9+OYcBso8Zm+oliTz8oZwnDrFsY77LZRcHyw5ht0smWrfSeTW5FiI8avd9v29gUBslpEZ9wIMwqVP4jLQVQ+dVm7x9BpDHadBV9RMjI809PraZTJr1aN7stYWwltzaqDrn8w==
X-Mailru-MI: 20000080020000000000000800
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_100649_543310_24B6B40C 
X-CRM114-Status: GOOD (  27.84  )
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

On Tue, Mar 31, 2026 at 12:32:27AM +0300, Vladimir Oltean wrote:
> On Tue, Mar 31, 2026 at 12:19:18AM +0300, Vladimir Oltean wrote:
> > On Fri, Mar 27, 2026 at 09:06:34PM +0500, Rustam Adilov wrote:
> > > +static inline u32 phy_read(void __iomem *reg)
> > > +{
> > > +	return readl(reg);
> > > +}
> > > +
> > > +static inline u32 phy_read_le(void __iomem *reg)
> > > +{
> > > +	return le32_to_cpu(readl(reg));
> > > +}
> > > +
> > > +static inline void phy_write(u32 val, void __iomem *reg)
> > > +{
> > > +	writel(val, reg);
> > > +}
> > > +
> > > +static inline void phy_write_le(u32 val, void __iomem *reg)
> > > +{
> > > +	writel(cpu_to_le32(val), reg);
> > > +}
> > 
> > Please don't name driver-level functions phy_read() and phy_write().
> > That will collide with networking API functions of the same name and
> > will make grep-based code searching more difficult.
> > 
> > Also, have you looked at regmap? It has native support for endianness;
> > it supports regmap_field_read()/regmap_field_write() for abstracting
> > registers which may be found at different places for different HW;
> > it offers regmap_read_poll_timeout() so you don't have to pass the
> > function pointer to utmi_wait_register(). It seems the result would be a
> > bit more elegant.
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
> 
>   On big-endian systems, wouldn't these double swaps cancel each other out
>   and result in a native big-endian access instead of the intended
>   little-endian access? If the SoC bus bridge implicitly swaps and requires
>   a native access, should __raw_readl() and __raw_writel() (or ioread32be /
>   iowrite32be) be used instead to avoid obfuscating it with double-swaps?
> 
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
There is readl() (and family) function. For most hosts it returns native
endian value (because most systems LE nowadays).
I don't know all context, and don't know exactly why... but for MIPS readl()
returns value in native endianess.
Reference - https://elixir.bootlin.com/linux/v6.19.10/source/arch/mips/include/asm/io.h

So we are in interesting situation, when readl() returns native-endian values (BE in our case),
readl_be() returns BE too, because cpu_to_be32() does nothing on BE system, ioread32() returns BE,
but ioread32be() returns LE because of unconditional swab32(). Using *be
to get LE value... kinda weird. That's why we ended up with these two
functions.

Not a perfect solution, so it would be good to hear others opinions and
come to a more proper solution.
UPD. regmap looks like a pretty good solution for endianess stuff, but
it seems to interfere with current register handling (using struct
offsets as register addresses). So it has to be a big work.

For example, Realtek solves this issue that way -
https://github.com/jameywine/GPL-for-GP3000/blob/5090fbcb6ba743dd7b1314811ef557bad0460147/linux-5.10.x/drivers/usb/host/ehci.h#L742
> 
> and yes, your patch does trigger sparse warnings:
> ../drivers/phy/realtek/phy-rtk-usb2.c:153:16: warning: cast to restricted __le32
> ../drivers/phy/realtek/phy-rtk-usb2.c:163:16: warning: incorrect type in argument 1 (different base types)
> ../drivers/phy/realtek/phy-rtk-usb2.c:163:16:    expected unsigned int val
> ../drivers/phy/realtek/phy-rtk-usb2.c:163:16:    got restricted __le32 [usertype]
> 
> Furthermore, please drop the 'inline' keyword from C files and let the
> compiler decide. Your use of this keyword has no value - you declare
> phy_read(), phy_read_le() etc as inline but then assign function
> pointers to them. How can the compiler inline the indirect calls?

Thanks for all other review comments, going to be fixed in next patch
series version.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
