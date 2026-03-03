Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88256EDEBF1
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 21:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0IBjI5qPTyendXf746x0IZ1KElH0jy5nPwjK74aHcU=; b=cq413x3kPG8oY8
	QA9X6KisHJENH74YVwvlEYSOpo/C9Ahnb0h4+YhlptWOkxIgkOopqObCLD5HPwTr8V3o7XLxuubNC
	A8k6gTgKgh2EzhO9wOFk3s8BPq6xh3uZZbHJMhYBmeTntK2LwwnG9eoj65OgG0wijrsdRTd6BzwEG
	ydqgIgJ5qDGj5a3m+nzb0MItDqi5GBgaZtnCnZiJqXm44RVphyk7Xc+QvRZSmbE4TacEWntSjjwWw
	dIOMcZZUrzWyY7EoA5GEsAZ0V1zb3VnB/Qe7rk8LSzW3z3ILBzxv0TjFafHIbx4/jmUfSv4+g2xFW
	WtAlPFT8jl1/jwSYM1Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxXGq-0000000FyzK-0wIR;
	Tue, 03 Mar 2026 21:27:12 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxXGm-0000000Fyxx-3ATm;
	Tue, 03 Mar 2026 21:27:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CFAB3210772;
	Tue,  3 Mar 2026 22:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1772573224; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=2/q+M61ThWrUL9W5bwo/JApl1XxHEem/u8YUfZWLSNw=;
	b=HrJmbjezSP6ngMfLTAW0SZoHsU1ydwVeUVW9DpzOxL2USyUX9peUd9ro1Q0whJ7ehiehTE
	KJPS7hvnUUarvoDQT7wiyKPJcKYcGPohyqBkKf57c6M9yNaSP+DVzMVVizVCk+GFVLm9W5
	BrM33FTnTx8ggqS241jZKafXutuS51bwgO8YV0ReVZAqzQf0gC8+I+kmZGbhIjVDpTMTzZ
	pyk5rtJhvIFiUZiua/qZ+NjfpoylEWzjdb+aN5WD6zJbc3p42S6iBP1yvDAubOeI1NvELN
	4CK03mzH7WLTgPU4fEyG4gQsuJ01aCzl022oLqo3qgNYIO8Tcz9FaG9QyLYHxQ==
Message-ID: <cf24fd8a-bc73-4d30-80b1-460bbb860bfd@cjdns.fr>
Date: Tue, 3 Mar 2026 22:26:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 7/8] PCI: Skip bridge window reads when window is not
 supported
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-mips@vger.kernel.org, naseefkm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tsbogend@alpha.franken.de, ryder.lee@mediatek.com,
 jianjun.wang@mediatek.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, bhelgaas@google.com, vkoul@kernel.org,
 neil.armstrong@linaro.org, p.zabel@pengutronix.de, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, nbd@nbd.name, ansuelsmth@gmail.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20260303212345.GA4074959@bhelgaas>
Content-Language: en-US
From: Caleb James DeLisle <cjd@cjdns.fr>
In-Reply-To: <20260303212345.GA4074959@bhelgaas>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_132708_995673_6CD5C567 
X-CRM114-Status: GOOD (  13.66  )
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


On 03/03/2026 22:23, Bjorn Helgaas wrote:
> On Tue, Mar 03, 2026 at 07:09:47PM +0000, Caleb James DeLisle wrote:
>> pci_read_bridge_io() and pci_read_bridge_mmio_pref() read bridge window
>> registers unconditionally. If the registers are hardwired to zero
>> (not implemented), both base and limit will be 0. Since (0 <= 0) is
>> true, a bogus window [mem 0x00000000-0x000fffff] or [io 0x0000-0x0fff]
>> gets created.
>>
>> pci_read_bridge_windows() already detects unsupported windows by
>> testing register writability and sets io_window/pref_window flags
>> accordingly. Check these flags at the start of pci_read_bridge_io()
>> and pci_read_bridge_mmio_pref() to skip reading registers when the
>> window is not supported.
>>
>> Suggested-by: Bjorn Helgaas <helgaas@kernel.org>
> I think this refers to the conversation at:
>
>    https://lore.kernel.org/r/20260113210259.GA715789@bhelgaas/
>
> Can you include that URL for reference?


Sure thing, I'll resend with a Link: (I guess that's the appropriate 
method) after a few days.

Thanks,

Caleb


>
>> Signed-off-by: Ahmed Naseef <naseefkm@gmail.com>
>> Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
>
>> ---
>>   drivers/pci/probe.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
>> index bccc7a4bdd79..4eacb741b4ec 100644
>> --- a/drivers/pci/probe.c
>> +++ b/drivers/pci/probe.c
>> @@ -395,6 +395,9 @@ static void pci_read_bridge_io(struct pci_dev *dev, struct resource *res,
>>   	unsigned long io_mask, io_granularity, base, limit;
>>   	struct pci_bus_region region;
>>   
>> +	if (!dev->io_window)
>> +		return;
>> +
>>   	io_mask = PCI_IO_RANGE_MASK;
>>   	io_granularity = 0x1000;
>>   	if (dev->io_window_1k) {
>> @@ -465,6 +468,9 @@ static void pci_read_bridge_mmio_pref(struct pci_dev *dev, struct resource *res,
>>   	pci_bus_addr_t base, limit;
>>   	struct pci_bus_region region;
>>   
>> +	if (!dev->pref_window)
>> +		return;
>> +
>>   	pci_read_config_word(dev, PCI_PREF_MEMORY_BASE, &mem_base_lo);
>>   	pci_read_config_word(dev, PCI_PREF_MEMORY_LIMIT, &mem_limit_lo);
>>   	base64 = (mem_base_lo & PCI_PREF_RANGE_MASK) << 16;
>> -- 
>> 2.39.5
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
