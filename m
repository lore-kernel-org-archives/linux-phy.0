Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DBA5109B489
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 15:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6kb7q95qZdEREJQsqrhiav8emC6GxJVMsuFMF9ImTY=; b=Xx29m+6eyOPWXO
	E+YnVutrsAZQ758axFtSEB9j0WNaUIN7RudC4R4wNabVaUG0a21boGFO1v0lqRq/aLBKU7ljNQU6F
	FwHOrL7EIfXvAtzBa9i2NI5boCr1bro5xTZmFFDNDYzakq6Mk4RKM+uNi/TucZ3MRC9dcCuAoCEqh
	r3xIihZ8N9Akpmm36BhEhZ5lumYQCeh1wWVsEdwvvFhn89gn870r3+1xISoxBDJUr0tdAirHbxbYA
	rbyR1adCNo7QHeoU+dYlr/UAt9+J30mbbHpMqFNvOSb1P7HvGpQfZxLsOINCFGorj+FbFacqyyINX
	0nLjRl0SscwqvD0X6kmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7bHz-0000000DCiq-0tx9;
	Tue, 31 Mar 2026 15:45:59 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7bHw-0000000DCiO-1jvR
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 15:45:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id C976425D82;
	Tue, 31 Mar 2026 17:45:50 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SELuN0x1nHuE; Tue, 31 Mar 2026 17:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774971950; bh=ZDCn/arx4W/a11XMkqZDI4Vf4ZYts8W1le/qsfEE6Ps=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Qd8GLtInbREtHipVmG7gb0Qlni7/NYrdRvdJhyi0Z4j5wFO/tQPwrdeGnxDt8yLfc
	 dwpf1ln+1bblry1/92LiX/f335TrQ4OLEE9jkDduCn1xGF/P1SYC8Rfpz1pkoE7b5O
	 PEoAec3U2upWvdm17a7u/qK8phqzNEQ+lkBIk+5zAT76lFV/11DaxyTJXTqengfniS
	 hC0yvQN4vJbLLm7jfAmLjM7RdcmiBAnYl5itjyaDfIJK6EVmrG53k6Z7gqxMeINonp
	 0VKy9QwSb3BkJ9gRcC4FnSsmQNzEuA4ky9YrKa7oFu4I0iWRDRcYh79sAmv+CMT1xX
	 2oIZyKFeD31wg==
MIME-Version: 1.0
Date: Tue, 31 Mar 2026 15:45:49 +0000
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
In-Reply-To: <20260330211918.y7su36j47e3uelcv@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-3-adilov@disroot.org>
 <20260330211918.y7su36j47e3uelcv@skbuf>
Message-ID: <bd7475a1702711073b7fa7e8034eb8d3@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_084556_917677_9FA60A82 
X-CRM114-Status: GOOD (  12.83  )
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

Hello,
On 2026-03-30 21:19, Vladimir Oltean wrote:
> On Fri, Mar 27, 2026 at 09:06:34PM +0500, Rustam Adilov wrote:
>> +static inline u32 phy_read(void __iomem *reg)
>> +{
>> +	return readl(reg);
>> +}
>> +
>> +static inline u32 phy_read_le(void __iomem *reg)
>> +{
>> +	return le32_to_cpu(readl(reg));
>> +}
>> +
>> +static inline void phy_write(u32 val, void __iomem *reg)
>> +{
>> +	writel(val, reg);
>> +}
>> +
>> +static inline void phy_write_le(u32 val, void __iomem *reg)
>> +{
>> +	writel(cpu_to_le32(val), reg);
>> +}
> 
> Please don't name driver-level functions phy_read() and phy_write().
> That will collide with networking API functions of the same name and
> will make grep-based code searching more difficult.

I can change it to something like "rtk_phy_read" or "usb2phy_read" then.

> Also, have you looked at regmap? It has native support for endianness;
> it supports regmap_field_read()/regmap_field_write() for abstracting
> registers which may be found at different places for different HW;
> it offers regmap_read_poll_timeout() so you don't have to pass the
> function pointer to utmi_wait_register(). It seems the result would be a
> bit more elegant.

In fact, I did not because it would involve in way more refactoring for patch 
series that is supposed to simply add RTL9607C support. And unfortunately, 
the regmap is not going to the solve the issue, which i will explain in the
later email to your LLM review on readl/writel.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
