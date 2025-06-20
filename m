Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7989CC71155
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 14:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jOZe9UQpLfRpso+UD5jS2+QDrCXf8coiM4czuKKgrc=; b=QYXn88yAGZGrWc
	UYPExdsolE1dqPMswOFKSAW4+I4Jsn0QcQBmBOt0gPJZNi+BOz4GfKfV4zHyYpBIrpGsEDabYeQxx
	tfVCoJZE2pMfVqRLAqdnDtYuuNmDIpVJt3tRJVKJtoGFoi+AtlOJKtdj7LwzDu9rSQRX3BJiw39hf
	UiljbNiDbEkXWWCpoOrbBxAvQN9DgRW4LPGVWY/ur+XXvByK7VvqYpqPCKpngZmJ6emhqkn74zkLj
	JL7H4fVjM67abtOfv1wm/QG1XeexAWIQB8y5WB0RgQMkfjbMEM0SkFJs0nPsi9u8sxFPGDr/t6w4T
	8RHaOOzRgkW5cyfrnI8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScqj-0000000FrnP-0ndy;
	Fri, 20 Jun 2025 14:36:13 +0000
Received: from lelvem-ot02.ext.ti.com ([198.47.23.235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScqg-0000000Frlb-2EAi
	for linux-phy@lists.infradead.org;
	Fri, 20 Jun 2025 14:36:12 +0000
Received: from lelvem-sh02.itg.ti.com ([10.180.78.226])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 55KEZlNh900250;
	Fri, 20 Jun 2025 09:35:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1750430147;
	bh=1CysPQerepJjr850ECkw08XLPztFR9ZfmkgyYFlOgY8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=MqYWPyYFv2v6dhfdUouCo/C+tTXSRQcRDhKZ6ayGsPRwiWsHgFx/Zwwrv4tfYE38q
	 u3EyVO8WOpIkUxSdchgCeOfVqV2AxKpbzAEaT/T1+mD+eAbhjXRNvKXEGJhfH61/Ei
	 MmTadYPHZuPskyYmolhEVKcXulT79SW8y/hfr1kw=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelvem-sh02.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 55KEZlAx2340418
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 20 Jun 2025 09:35:47 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 20
 Jun 2025 09:35:46 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 20 Jun 2025 09:35:46 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 55KEZgfU3349160;
	Fri, 20 Jun 2025 09:35:43 -0500
Message-ID: <2237e887-eb0c-406d-a528-a135d62fbb0d@ti.com>
Date: Fri, 20 Jun 2025 20:05:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: cadence: cdns-dphy: Fix PLL lock and
 O_CMN_READY polling
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
CC: <sakari.ailus@linux.intel.com>, <u.kleine-koenig@baylibre.com>,
        <vigneshr@ti.com>, <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>,
        <r-donadkar@ti.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mripard@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250502033451.2291330-1-devarsht@ti.com>
 <20250502033451.2291330-2-devarsht@ti.com>
 <b94facde-7591-41de-bc6f-b26cb46e100a@ideasonboard.com>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <b94facde-7591-41de-bc6f-b26cb46e100a@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_073610_730516_B026DAD3 
X-CRM114-Status: GOOD (  18.86  )
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

Hi Tomi,

Thanks for the review.

On 26/05/25 16:29, Tomi Valkeinen wrote:
> Hi,
> 
> On 02/05/2025 06:34, Devarsh Thakkar wrote:
>> PLL lockup and O_CMN_READY assertion can only happen after common state
>> machine gets enabled (by programming DPHY_CMN_SSM register), but driver was
>> polling them before the common state machine was enabled. To fix this :
>>
>> - Add new function callbacks for polling on PLL lock and O_CMN_READY
>>    assertion.
>> - As state machine and clocks get enabled in power_on callback only, move
>>    the clock related programming part from configure callback to power_on
>>    callback and poll for the PLL lockup and O_CMN_READY assertion after
>>    state machine gets enabled.
>> - The configure callback only saves the PLL configuration received from the
>>    client driver which will be applied later on in power_on callback.
>> - Add checks to ensure configure is called before power_on and state
>>    machine is in disabled state before power_on callback is called.
>> - Disable state machine in power_off so that client driver can
>>    re-configure the PLL by following up a power_off, configure, power_on
>>    sequence.
> 
> Is the DPHY & PLL documented in the TRM somewhere?
> 

I had got this information from cadence support. But I think it is also 
documented in J721E TRM [1]. DPHY Tx startup sequence is same as DPHY Tx 
and there is a initialization diagram for the same in J721E TRM [1] 
referenced at 12.7.2.4.1.2.1 Start-up Sequence Timing Diagram. It shows 
O_CMN_READY polling at the end after common configuration pin setup and 
Table 12-1533. Common Configuration-Related Setup mentions state machine 
enable part under the common configuration setup which happens before 
the polling. And the observations with this patch do sync with 
understanding as we see PLL locking up faster without any timeout which 
was the case before this patch.

> I just find the sequence a bit odd. For example, you wait for the PLL to
> lock, and after that, you enable the PLL ref clock. Maybe I'm missing
> something here, but... that should not work.

I think it's my bad, but it works somehow. But it makes sense to enable 
the clock before we start polling for PLL lock, so will update it in 
next revision.

> 
>   Tomi
> 
Regards
Devarsh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
