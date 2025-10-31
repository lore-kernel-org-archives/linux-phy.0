Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5DCFCCF9FE
	for <linux-phy@archiver.kernel.org>; Fri, 31 Oct 2025 13:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCE/4vWDjbbmD9tHaa4LWmQmzH6ktk3/YMroy3Z+p14=; b=P+wljeHRkmYw3f
	VWdlgA91apIVl1yvsP/a6zyOppjfm0sEjCoGzwaoOWYyedrZFh7tfxhaZjON47QIBlzJurCFyG7ac
	qf+W9eY69O8CTymvG/tBLSbM3rGRTM1783dPPr5JIHQTFx4KdY4sXL4ypo5plEKDddEF91AJ/jdMK
	AQFJYeU6szK2Z0sce2bY6Re4t9ObgUivZGkKjdX8z/mGeY+L5SqC6BklyEL385T4Z0lmqjKdAcCtX
	Ny+By5/lJnoBhhC06le/nhGcgKSObtLPvNZMpU/JhnzrgqrHHO8CgfiVCXPP1mu/6M8eMXE85TabM
	XnQzLHPJ5KlNc7MaQeWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEpKW-00000006AF2-0bY8;
	Fri, 31 Oct 2025 13:38:12 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEpKT-00000006AEI-1eIW
	for linux-phy@lists.infradead.org;
	Fri, 31 Oct 2025 13:38:11 +0000
Received: by mail-io1-xd44.google.com with SMTP id ca18e2360f4ac-92aee734585so95768939f.3
        for <linux-phy@lists.infradead.org>; Fri, 31 Oct 2025 06:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761917888; x=1762522688; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yzRowIyyZmKGcUOSb4RASNAB36lhMpiLxSTkV7xgA5w=;
        b=HUQbqWAz7DdjleFQ+MrLS8X7y1CQEkBv0wn79vAE610FpnlaAYccn8YMg4O4iY47OC
         9otnhANUY6Ap68F4qUDcaskaSYkaE8Mx0vOyMkNJ0l3GOpyQTnX+lcnOXe6FxaeWvP6S
         P87YniLVbwrwsd/FqBlmHLTKiOrRAhqbwF3li8bd0cdSJ6nNn7y6rF07byYKDxG+7XHi
         FaQNxIMybjAbm86OxQ/OUNDY4zP8juaAIKrhuK0WCWiB7A+6udyMlvFBfGe2pakyDWBa
         jVkePhYGbc4y1lXyFOWgsQOd/pTTrsd7bKJaRNCN3fuEODNE5pUTKIloDBr6G8eO2nXi
         pl+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761917888; x=1762522688;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yzRowIyyZmKGcUOSb4RASNAB36lhMpiLxSTkV7xgA5w=;
        b=LE8EYMAvytj7Gk9cOFOVzTNVADY7B/8RDN4LZCliu2do6cCrgfLFBUU+WD42aXJITH
         5/wSdvGHYVpnUdz0cyCg0JRLwQfxctZTuZDD6cxV4LYA6I2LSqn3P6UnlEjJQvOFSVJr
         N0DGSqVEA1nLdzz0hC79fDca1N/773Z9usX9K4Yq/5YLVqt9lHH/z8VJxLRx0McIllzm
         glJidwpLsStkmI1Uz1/b6bdUlEp5FeqBebCl7nrGcqAQlYHEBtg9oCCJuGBYk1lIcVYq
         MSzCWQxz90b3E5xdNC3WuPPnK1NU0dUw0bbDbpxu/6yrjFsSnaV9CjfN9eAWAZ9VMaTP
         31Pg==
X-Forwarded-Encrypted: i=1; AJvYcCVBWxA0Bs0vas6TUteHXMkQg+m+ZpZGaKKeLQw0bM179+Fe3ThrxLVb9FNA/wIimOC0GThpGCu4Ufk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwwmYGumgMdDJwlsfaAWyol3NfjT+YrirZ8BViuQevR1qv+2IZM
	tHa/sfNlZjOP4eRoIv87/7Z1eJCh1esyqf5X1yEUr0+N6adt8SCSSNoFdzLz9BatP5s=
X-Gm-Gg: ASbGnctzz0dVX4zKzjXGR45uGj7QqCPaMJou8302rzAjomUn863vgMm2LrnkOsF5Nj5
	LVWo8N5AyHzg5DarmmlMC5b10y++c32te81YgOCsVhexyydY2wM55NNcCllYBOGhvX2FHVBBnCt
	hD4yMhdzHB0zv/+WOGEn958n31stv0dSInwZ/T0Iawc65bGfZFCG4EFQvoBd7YaDwjueOXx+KhD
	jrXrYWa1gcmmKTae2r3fpyUNTt/n+V15oWmN56He13A5NB4Tqf44pZfb9BrIJSmpQsLqvKLNvw4
	ha1c3pWcOmeGUEFxBz+V0UA+RBRcucNhbepRXqEGNyeiJ/tVFIBI1hYcD9QvFzqwqi4yeCvclE/
	kro5tK+vIyCjmczdMSCJ7+kBM1vJH3as6dV+8qNn+AO1pJVKwnZ3kSo4ZXfKFpKW9pu1aeVhXIy
	eUgsUGHpLlGdUVWRlsyNNbPPhko+Vw6+hbf+usRqW7Bv9ksY8Pci8=
X-Google-Smtp-Source: AGHT+IFy2z/iuNwWKERvSpYZtZ5ZpYZ1zRomo2K0p0GcYWw60cslj3gZCJmO6Q+O9lj169DxL5GitQ==
X-Received: by 2002:a05:6602:140c:b0:943:5c83:d68e with SMTP id ca18e2360f4ac-948229124fbmr219775639f.1.1761917888019;
        Fri, 31 Oct 2025 06:38:08 -0700 (PDT)
Received: from [172.22.22.234] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94827b96fb0sm57705539f.7.2025.10.31.06.38.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 06:38:07 -0700 (PDT)
Message-ID: <d5d44b8b-94a5-4830-8f61-0b8cbd72889c@riscstar.com>
Date: Fri, 31 Oct 2025 08:38:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] PCI: spacemit: introduce SpacemiT PCIe host driver
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org, guodong@riscstar.com,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, christian.bruel@foss.st.com, shradha.t@samsung.com,
 krishna.chundru@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
 namcao@linutronix.de, thippeswamy.havalige@amd.com, inochiama@gmail.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251013153526.2276556-1-elder@riscstar.com>
 <20251013153526.2276556-6-elder@riscstar.com>
 <274772thveml3xq2yc7477b7lywzzwelbjtq3hiy4louc6cqom@o5zq66mqa27h>
 <4027609d-6396-44c0-a514-11d7fe8a5b58@riscstar.com>
 <paxtbwlvndtsmllhsdiovwqoes7aqwiltac6ah4ehrpkz554y6@uj5k3w5jxeln>
 <9bebde96-485f-4f30-b54c-be9e6c16f2d6@riscstar.com>
 <546kfkmfkndae32mmculbgacuni4raqwpgmeb4xnhvsuavjl3w@3pjtpmblmril>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <546kfkmfkndae32mmculbgacuni4raqwpgmeb4xnhvsuavjl3w@3pjtpmblmril>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_063809_698181_B80B664E 
X-CRM114-Status: GOOD (  63.53  )
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

On 10/31/25 1:05 AM, Manivannan Sadhasivam wrote:
> On Wed, Oct 29, 2025 at 07:10:10PM -0500, Alex Elder wrote:
>> On 10/28/25 2:06 AM, Manivannan Sadhasivam wrote:
>>> On Mon, Oct 27, 2025 at 05:24:38PM -0500, Alex Elder wrote:
>>>> On 10/26/25 11:55 AM, Manivannan Sadhasivam wrote:
>>>>> On Mon, Oct 13, 2025 at 10:35:22AM -0500, Alex Elder wrote:
>>>>>> Introduce a driver for the PCIe host controller found in the SpacemiT
>>>>>> K1 SoC.  The hardware is derived from the Synopsys DesignWare PCIe IP.
>>>>>> The driver supports three PCIe ports that operate at PCIe gen2 transfer
>>>>>> rates (5 GT/sec).  The first port uses a combo PHY, which may be
>>>>>> configured for use for USB 3 instead.
>>>>>>
>>>>>> Signed-off-by: Alex Elder <elder@riscstar.com>
>>>>>> ---
>>
>> . . .
>>
>>>>>> +	ret = devm_regulator_get_enable(dev, "vpcie3v3-supply");
>>>>>> +	if (ret)
>>>>>> +		return dev_err_probe(dev, ret,
>>>>>> +				     "failed to get \"vpcie3v3\" supply\n");
>>>>>
>>>>> As mentioned in the bindings patch, you should rely on the PWRCTRL_SLOT driver
>>>>> to handle the power supplies. It is not yet handling the PERST#, but I have a
>>>>> series floating for that:
>>>>> https://lore.kernel.org/linux-pci/20250912-pci-pwrctrl-perst-v3-0-3c0ac62b032c@oss.qualcomm.com/
>>>>
>>>> I think that just means that I'll define a DT node compatible with
>>>> "pciclass,0604", and in that node I'll specify the vpcie3v3-supply
>>>> property.  That will cause that (pwrctrl) device to get and enable
>>>> the supply before the "real" PCIe device probes.
>>>>
>>>
>>> Right.
>>>
>>>> And once your PERST work gets merged into the PCI power control
>>>> framework, a callback will allow that to assert PERST# as needed
>>>> surrounding power transitions.  (But I won't worry about that
>>>> for now.)
>>>>
>>>
>>> I'm still nervous to say that you should not worry about it (about not
>>> deasserting PERST# at the right time) as it goes against the PCIe spec.
>>> Current pwrctrl platforms supporting PERST# are working fine due to sheer luck.
>>>
>>> So it would be better to leave the pwrctrl driver out of the equation now and
>>> enable the supply in this driver itself. Later, once my pwrctrl rework gets
>>> merged, I will try to switch this driver to use it.
>>
>> As I understand it, PERST# should be only be deasserted after
>> all power rails are known to be stable.
>>
> 
> Yes
> 
>> This driver enables the regulator during probe, shortly
>> before calling dw_pcie_host_init().  That function calls
>> back to k1_pcie_init(), which enables clocks, deasserts
>> resets, and initializes the PHY before it changes the
>> PERST# state.
>>
>> By "changing the PERST# state" I mean it is asserted
>> (driven low), then deasserted after 100 milliseconds
>> (PCIE_T_PVPERL_MS).
>>
>> I have two questions on this:
>> - You say the PCI spec talks about the "right time" to
>>    deassert PERST# (relative to power).  Is that at all
>>    related to PCIE_T_PVPERL_MS?
> 
> The PCI CEM spec says that PERST# should be deasserted atleast 100ms after the
> power becomes stable. But with the current pwrctrl design, the host controller

So it *is* related to that delay, but the concern you have is about
the pwrctrl design.  Simply probing the pwrctrl device enables all
its regulators, but that probe is not synchronized with the host
controller driver.  In this driver, PERST# is deasserted in the
dw_pcie_host_ops->init callback, which could be called *before*
the pwrctrl probe, and we want it to occur only *after* it.

I find on my system that (at least based on printk() time stamps)
the PERST# is deasserted *before* regulator_bulk_enable() in
pci_pwrctrl_slot_probe() has completed.  So you're absolutely
right about the problem.  The NVMe device doesn't probe until
at least 5 seconds later.

I don't want to rely on this sketchy behavior, so here is what
I plan to do (please tell me whether you agree).

I will back out the change that moves the regulator into the
root port.  I will still use the pwrctrl model--meaning the
root port will still be compatible with "pciclass,0604"--but
because it will define no regulators or clocks, it just won't
do anything of value for now.

Later, when you add the callback to the pwrctrl framework,
we can implement that callback and then move the regulator
definitions into the root port, and no longer enable them
in the host controller driver.

> deasserts the PERST# even before the pwrctrl probe. So this is in violation of
> the spec. But depending on the endpoint device design, this might not cause any
> issue as PERST# is a level triggered signal. So once the endpoint boots up, it
> will see the PERST# deassert and will start working. I'm not justifying the
> current design, but just mentioning that you might not see any issue.

I'm not seeing any issue, but it's true, the sequence of events
is not compliant with what you describe from the spec.

> That being said, we are going to submit a series that reworks pwrctrl framework
> such that each controller can call an API to probe pwrctrl drivers. This way,
> host controller driver can make sure that the device will get powered ON before
> it deasserts the PERST#.

For DesignWare-based devices that might mean a new dw_pcie_host_ops
callback function, or maybe it can just defer calling its ->init
callback until it knows power is enabled and stable.

>> - I notice that PERST# is in a deasserted state at the
>>    time I assert it in this sequence.  Do you see any
>>    reason I should assert it early as an initialization
>>    step, or is asserting it and holding it there for
>>    100 msec sufficient?
>>
> 
> You should assert PERST# before doing any controller initialization sequence as
> that may affect the endpoint. Once PERST# is asserted, it will cause the
> endpoint to 'reset'. So you do your initialization sequence and deassert it once
> done.

Basically the probe function does basic setup, then calls
dw_pcie_host_init().  The next thing that's expected is
the ->init callback from the DesignWare core code, and
that's where PERST# is asserted, then deasserted after
some other actions.

I think I'll assert PERST# (and delay 100 msec) a little
earlier though.

. . .

>>>> In dw_handle_msi_irq(), "num_ctrls" is computed based on
>>>> num_vectors / MAX_MSI_IRQS_PER_CTRL=32.  A loop then
>>>> iterates over those "controllers"(?) to handle each bit
>>>> set in their corresponding register.
>>>>
>>>> This seems OK.  Can you explain why you think it's wrong?
>>>>
>>>
>>> So both 'ctrl' and 'msi' IRQs are interrelated. Each 'ctrl' can have upto 32 MSI
>>> vectors only. If your platform supports more than 32 MSI vectors, like 256, then
>>> the platform DT should provide 8 'msi' IRQs.
>>
>> I have asked SpacemiT about this, specifically whether there
>> are additional interrupts (I don't think there are), or if
>> not that, additional registers to support MSI 32+ (see
>> below).  In their downstream driver they handle interrupts
>> differently.  I suspect num_vectors needs to be set to 32
>> (or I'll leave it unset and take the default).

This was changed to use the default (32 MSI vectors) in v4
of this series.  I haven't heard back from SpacemiT but I'm
pretty sure this is correct.

>> In the DesignWare driver, there are up to 8 "ctrls", and each
>> ctrl has 32 bit positions representing 32 MSI vectors.  Each
>> can have an msi_irq defined.  An msi_irq is always set up for
>> ctrl 0.
>>
>> For any ctrl with an msi_irq assigned, dw_pcie_msi_host_init()
>> sets its interrupt handler to dw_chained_msi_isr(), which just
>> calls dw_handle_msi_irq().
>>
>> The way dw_handle_msi_irq() works, a single ctrl apparently can
>> handle up to 256 MSI vectors, as long as the block of 3 registers
>> that manage the ctrl (ENABLE, MASK, and STATUS presumably) are
>> consecutive in I/O memory for consecutive ctrls.
>>
> 
> I'm not sure how you came up with this observation. dw_handle_msi_irq() loops
> over the 'status' using find_next_bit() of size MAX_MSI_IRQS_PER_CTRL, which is
> 32. So I don't see how a single ctrl can handle up to 256 vectors.

This doesn't matter, because you say it's not correct, but I'll
explain what I meant.

I'm saying *if* there were 8 consecutive sets of 3 registers for
these ctrls:

           ----------
ctrl0:    | ENABLE |
           |--------|
           | STATUS |
           |--------|
           |  MASK  |
           |--------|
ctrl1:    | ENABLE |
           |--------|
           | STATUS |
           |--------|
           |  MASK  |
           |--------|
              ...

then they could all be handled by a single interrupt, based on
the way the loop works.

If every ctrl has its own interrupt, then the interrupt handler
could just handle the one ctrl's 32 possible interrupts.

This loop structure is why I thought it was OK to have 256 MSI
vectors with the one handler.

>> I looked for other examples.  I see that "pcie-fu740.c", which
>> supports compatible "sifive,fu740-pcie", sets num_vectors to
>> MAX_MSI_IRQS, but "fu740-c000.dtsi" defines just one "msi"
>> interrupt.  And "pci-dra7xx.c" seems to do something similar,
>> and maybe "pcie-rcar-gen4.c" too.
>>
> 
> Yes. But I think those are mistakes. I will submit patches to fix them.
OK.  They reinforced my thought that this was doing the right
thing.  The warning you added makes it clear it is not.

Thank you very much for your explanation Mani.

					-Alex

>>> Currently the driver is not strict about this requirement. I will send a patch
>>> to print an error message if this requirement is not satisfied.
>>>
>>>>>> +
>>>>>> +	platform_set_drvdata(pdev, k1);
>>>>>> +
>>>>>
>>>>> For setting the correct runtime PM state of the controller, you should do:
>>>>>
>>>>> pm_runtime_set_active()
>>>>> pm_runtime_no_callbacks()
>>>>> devm_pm_runtime_enable()
>>>>
>>>> OK, that's easy enough.
>>>>
>>>>> This will fix the runtime PM hierarchy of PCIe chain (from host controller to
>>>>> client drivers). Otherwise, it will be broken.
>>>> Is this documented somewhere?  (It wouldn't surprise me if it
>>>> is and I just missed it.)
>>>>
>>>
>>> Sorry no. It is on my todo list. But I'm getting motivation now.
>>>
>>>> This driver has as its origins some vendor code, and I simply
>>>> removed the runtime PM calls.  I didn't realize something would
>>>> be broken without making pm_runtime*() calls.
>>>>
>>>
>>> It is the PM framework requirement to mark the device as 'active' to allow it to
>>> participate in runtime PM. If you do not mark it as 'active' and 'enable' it,
>>> the framework will not allow propagating the runtime PM changes before *this*
>>> device. For instance, consider the generic PCI topology:
>>>
>>> PCI controller (platform device)
>>> 	|
>>> PCI host bridge
>>> 	|
>>> PCI Root Port
>>> 	|
>>> PCI endpoint device
>>>
>>> If the runtime PM is not enabled for the PCI Root Port, then if the PCI endpoint
>>> device runtime suspends, it will not trigger runtime suspend for the Root Port
>>> and also for the PCI controller. Also, since the runtime PM framework doesn't
>>> have the visibility of the devices underneath the bus (like endpoint), it may
>>> assume that no devices (children) are currently active and may trigger runtime
>>> suspend of the Root Port (parent) even though the endpoint device could be
>>> 'active'.
>>
>> So this basically marks this controller as a pass-through device that
>> doesn't itself change state for runtime PM, but still communicates that
>> somewhere at or below it there might be devices that do participate.
> 
> Yes.
> 
> - Mani

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
