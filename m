Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6137C5B572
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMHuVljLGovyyrRgwKOxwS1TQNyHTFs9GviIq0H5Xls=; b=NLaKfO6fYtAQE1
	dfz28hQXOmTmfqQhFEXVK3ZU/I5169+Xt/jYzCDn4yVv15IaeYIJvz/17pagpvB/SeMZzIhPuVfwM
	9/Dc+6nrly+gudIgs8ddrK1HC0EOIH8RSQZnOWk+x6jyN5SeP18KJK6q2um9x5k10W4NaY+DA0Mfb
	9S4id+DGXsRU96A/vw6b12R3PImE9lCReeRznzuLohHMJXE3+4qnJSG4fnbCy6GI28CQUe9TkMgYt
	Z2S9UDVN8DmJQ0J5vXIA0erY1TL8mzOXfTmTwYESqJa3HAbmEzgfvgO5NLa9CrsVbSz696pBZJYuf
	uT679HdIFVCQMfrKC6xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQFB-000000003UT-0q0S;
	Thu, 13 Aug 2026 07:52:53 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQF7-000000003Tg-2HZN
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 07:52:51 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3022188245;
	Thu, 13 Aug 2026 09:43:01 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cjodt6I4clMI; Thu, 13 Aug 2026 09:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1786606980; bh=o7oQ120cRKz8pQDmV4rpfvZOecYhDm/Tder6gaKxyUg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ko6zBtWtelktE8JEZ2WCoSsDSKHGJh8sIUBdIRmYP+8EU4oJgB/KcRZkthSXEFUvX
	 Nou0iPXPibDnaq9pPM88d2TFWZ4ctgdZuE/2pvJiVbkwgSxOyGdn1hUl75EaAFUP8m
	 FnyehN0DhNynpKm+/x5dOWJr18XsK6Ph7+9/JVnbEtXTglGZWqtr8V3wMeaBMxHd+z
	 YB/4C2Jo10C6N9kZwO/AwS+QvMKNGispUuVsy+lItcl6SRMz8pjMzAkTUnKtws42uX
	 RNFzZkFBX04Id0RWcukygDAERv2bvJvBhuIXRdh2pyJktu8MIuP3qXqLQyxX0F1bzj
	 WkpBc+Isw9Feg==
MIME-Version: 1.0
Date: Thu, 13 Aug 2026 07:43:00 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v6 5/6] phy: realtek: usb2: add support for RTL9607C USB2
 PHY
In-Reply-To: <pu3724you4tqsnuewo2uwqsubtwpf5t7kdd4of33awodjunfb4@cfzd3cmvlpjb>
References: <20260520175728.720877-1-adilov@disroot.org>
 <20260520175728.720877-6-adilov@disroot.org>
 <pu3724you4tqsnuewo2uwqsubtwpf5t7kdd4of33awodjunfb4@cfzd3cmvlpjb>
Message-ID: <0a4470dbaa381d068f25ebf8041b3f6f@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_005249_729210_F50E144E 
X-CRM114-Status: GOOD (  20.79  )
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


On 2026-08-12 15:05, Manivannan Sadhasivam wrote:
> On Wed, May 20, 2026 at 10:57:27PM +0500, Rustam Adilov wrote:
>> Add support for the usb2 phy of RTL9607C series based SoCs.
>> Add the macros and phy config struct for rtl9607.
>> 
>> RTL9607C requires to clear a "force host disconnect" bit in the
>> specific register (which is at an offset from reg_wrap_vstatus)
>> before proceeding with phy parameter writes. Since it belongs into
>> the vstatus register region, it requires the use of added read and
>> write helper functions.
>> 
>> Add the bool variable to the driver data struct and hide this whole
>> procedure under the if statement that checks this new variable.
>> 
>> Add the appropriate big endian read and write functions for rtl9607
>> and assign them to its phy config struct.
>> 
>> Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
>> Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
>> Signed-off-by: Rustam Adilov <adilov@disroot.org>
>> ---
>>  drivers/phy/realtek/phy-rtk-usb2.c | 58 ++++++++++++++++++++++++++++++
>>  1 file changed, 58 insertions(+)
>> 
>> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
>> index 16c5fc3191de..69f0f5279b5e 100644
>> --- a/drivers/phy/realtek/phy-rtk-usb2.c
>> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
>> @@ -26,6 +26,12 @@
>>  #define PHY_VCTRL_SHIFT 8
>>  #define PHY_REG_DATA_MASK 0xff
>>  
>> +#define PHY_9607_VSTS_BUSY BIT(17)
>> +#define PHY_9607_NEW_REG_REQ BIT(13)
>> +
>> +#define PHY_9607_FORCE_DISCONNECT_REG 0x10
>> +#define PHY_9607_FORCE_DISCONNECT_BIT BIT(5)
>> +
>>  #define GET_LOW_NIBBLE(addr) ((addr) & 0x0f)
>>  #define GET_HIGH_NIBBLE(addr) (((addr) & 0xf0) >> 4)
>>  
>> @@ -109,6 +115,7 @@ struct phy_cfg {
>>  
>>  	u32 (*read)(void __iomem *reg);
>>  	void (*write)(u32 val, void __iomem *reg);
>> +	bool force_host_disconnect;
>>  };
>>  
>>  struct phy_parameter {
>> @@ -146,6 +153,16 @@ static void rtk_usb2phy_write(u32 val, void __iomem *reg)
>>  	writel(val, reg);
>>  }
>>  
>> +static u32 rtk_usb2phy_read_be(void __iomem *reg)
>> +{
>> +	return ioread32be(reg);
>> +}
>> +
>> +static void rtk_usb2phy_write_be(u32 val, void __iomem *reg)
>> +{
>> +	iowrite32be(val, reg);
>> +}
>> +
>>  /* mapping 0xE0 to 0 ... 0xE7 to 7, 0xF0 to 8 ,,, 0xF7 to 15 */
>>  static inline int page_addr_to_array_index(u8 addr)
>>  {
>> @@ -600,6 +617,19 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
>>  		goto do_toggle;
>>  	}
>>  
>> +	if (phy_cfg->force_host_disconnect) {
>> +		/* disable force-host-disconnect */
>> +		void __iomem *vstatus = phy_reg->reg_wrap_vstatus;
>> +		u32 temp;
>> +
>> +		temp = phy_reg->read(vstatus + PHY_9607_FORCE_DISCONNECT_REG);
>> +
>> +		temp &= ~PHY_9607_FORCE_DISCONNECT_BIT;
>> +		phy_reg->write(temp, vstatus + PHY_9607_FORCE_DISCONNECT_REG);
>> +
>> +		usleep_range(10000, 11000);
> 
> If you really want to make sure the delay gets completed within this if()
> condition, then add a read.
> 
> - Mani

Hey,

Thanks for reviews, i have already seen the other comments but i have a question
about this one. What do you mean by adding a read? As far as i know, it is just
time to "allow IP to startup" and not like a status bit i have to continuously
read if that is what you were referring to.

Best,
Rustam

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
