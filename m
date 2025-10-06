Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5582FCAC5B8
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 16:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iINkWPczs7IoBHKGnugidrd5aU1RnqQRA/AbVU3kShE=; b=PkQfiqEw6viK8x
	kgcoPG+GUi61HbXlUpaR9GRN/DP3YpACfBjQ3QOhAcw7SDrvDF8htD1z3aiLUTry1oR6je8l4hspk
	bkClUyfJ2dhBCk6uPDqYa2Hpmu+wrHbPjQ2KNf8MgBCLhKexS86CTJCZUdlwqAOibOXGbu56kVpop
	uy2/pSJazu3WQA2gNsbFo5lRm0unldiqBzp4LWYorQ6z16zqsmLgVMSB0EJ/UME2ysdxbiTN9juoS
	vSyeAJpBl3abpRsWRJWyuDmKKd8JC+6DJrQkD1clS9JLStHLSTssbTs523Eo2MhGIi0bo8tQxYONo
	7BwdoZT86uAwunbifX+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5nqY-00000000MZV-0RnP;
	Mon, 06 Oct 2025 16:13:58 +0000
Received: from out-174.mta0.migadu.com ([2001:41d0:1004:224b::ae])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5nqV-00000000MXs-1BrD
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 16:13:57 +0000
Message-ID: <2564cdec-9726-4efa-ba07-a2f2646168c6@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1759767230;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oXidAQDLxmoPTgrGv7pYlMirqlSYDUPqKshvVJjRl/U=;
	b=ULvoXn2NmM9A547Ta6cpDp3p7vf06JYkkubX/G15oFdb/s4IuGCeAWJFjGXcBpGrCmVZxe
	PJW9epfxlOxoPlOFpnxr9hi7JuXAvem9IqqJK0zHIdqzgsMoksVqSpmKpddtKtRwBOK6q1
	8HMc/ExFVs9AbpORmMPfOdDYf3mENwDn5idIzBqZ90dkvrJU7E8pbKAh1XZxUXA/HlIERF
	pZm3NmI3oMjYgSsLluxOOzdDIBSyTgwXkh8MmvH7OJqdbsUzSFLIW57croeCG9vin13SCG
	HuGZ5njg7qSFs85Ua0g121AfUt+5HUZqcQBd1vsbKlaygScKR/YQETgWBnXoLA==
Date: Mon, 6 Oct 2025 13:13:42 -0300
MIME-Version: 1.0
Subject: Re: [PATCH] phy: qcom: qmp-combo: Move pipe_clk on/off to common
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250927093915.45124-2-val@packett.cool>
 <e6754738-76c9-4080-bbed-17f02e6535bf@oss.qualcomm.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <e6754738-76c9-4080-bbed-17f02e6535bf@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_091355_678624_08E1F41A 
X-CRM114-Status: GOOD (  26.27  )
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


On 10/6/25 11:44 AM, Konrad Dybcio wrote:
> On 9/27/25 11:17 AM, Val Packett wrote:
>> Keep the USB pipe clock working when the phy is in DP-only mode, because
>> the dwc controller still needs it for USB 2.0 over the same Type-C port.
>> [..]
>>
>> In [1] Konrad mentioned that "the hardware disagrees" with keeping the USB
>> PLL always on. I'm not sure what exactly was meant by disagreement there,
>> and I didn't find any specific code that touches that PLL in the driver,
>> so I decided to just try it anyway.
> So what I did was playing around with the RESET_OVRD settings, which
> dictate what parts of the PHY (and their associated PLLs) are kept online..
> but I totally forgot that there is a branch/gate clock in GCC that sits
> inbetween!
>
>> [..]
>> I'm sure it might not be that simple but from my limited and uninformed
>> understanding without any internal knowledge, the "sneaky workaround"
>> might actually be the intended way to do things?
> Normally the clock which you're enabling is sourced from the QMPPHY.
> The other option (bar some debug outputs) is for it to be driven by
> the 19.2 MHz always-on crystal (instead of $lots_of_mhz from the PHY).
>
> For USB hosts without a USB3 phy connected to them, there's an option
> to mux the controller's PIPE clock to be sourced from the UTMI clock
> input. In those cases, the UTMI (and therefore PIPE) clock runs at..
> well, 19.2 MHz!
>
> (you can actually do that on USB3-phy-connected hosts too, at the cost
> of.. USB3, probably)
>
> So I'm not sure how much of that is well thought-out design and how
> much is luck, but this ends up working for us anyway, with seemingly
> no downsides.
>
> At least that's my understanding of the situation.

I wonder how Windows drivers handle this.

The ability to use the UTMI clock sounds more appropriate for when only 
a legacy USB2 device is plugged in and the entirety of QMPPHY is 
unnecessary and can be shut down to save power.

BTW I'm still seeing USB2 functionality die if I boot with the monitor 
cable *already* plugged in, but that sounds like a very different issue 
(the host controller starting to touch the bus before the PIPE clock is 
up? something something probe order?)

> The suspend logic is broken and unused anyway, but that's a nice catch,
> the PIPE clock in question is even conveniently called "usb3_pipe" in DT

Hmm. Is it unused? Oh, you mean the pm_runtime_forbid(), right.

Do you have any pointers about what exactly is broken there? I've been 
poking at the runtime PM stuff too 
(https://gitlab.com/Linaro/arm64-laptops/linux/-/issues/14 for USB), the 
PHYs are the biggest missing piece there overall..

>> [..]
>> @@ -3103,6 +3110,7 @@ static int qmp_combo_com_exit(struct qmp_combo *qmp, bool force)
>>   	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>>   
>>   	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
>> +	clk_disable_unprepare(qmp->pipe_clk);
> Let's disable this one first, to preserve existing behavior (and it
> makes sense logically - if the PHY doesn't have its clocks, it can't
> really generate one either)

Sure, nice catch. Will send a V2 with this fixed.

Thanks,
~val


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
