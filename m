Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC84DC3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 07:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grMBQIXaVzX6Z+jM2Rwr7nntOj/bcOnvPYAZCSf1QqM=; b=NPxuQUBA+MCyf7
	jczN1swc9WTbfcVYEpaaV8sBZxL/pggalG8F3AZt2YmdlCVtlSDu2sUw6sK0l0SvP2/8I5+TddDFD
	fbvDBRVZv02O/DnYVmvokXtavQKOiuLriT+ggthbo1IkasD/VsBWAV/W2zRVbd6w/Dt5KpHMptAoH
	lqPIN6KyU1sxK8lGRUXdvejTNmevbCFq4LdWjmYNPSfZn3KSQB3g9JrA5Bm/0sVU2Xrb7opO19KUW
	cLzNOBESPn7wNdAQ9jLdgZ83eIhxEtnyJLiXO1A3ZZ/ntrqLhS/ac8iowBBQIfpJG8VMnSTao+bwe
	y/TwTSSh06RRTz7EN+cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKBHw-0000000CRSS-19O5;
	Wed, 28 May 2025 07:33:24 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKBHt-0000000CRRn-3mVG
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 07:33:23 +0000
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 54S7WXXu3194667;
	Wed, 28 May 2025 02:32:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1748417553;
	bh=4xV4o/RHd3QDyMg98SNoIXBaQ+hUKdFjfdMlNfIY4SI=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=IqU4Q/ogEjZyHrET17F68VdMeaZfxak/zn2UdOX3Jjb0W3LcoYbNncdovxAkr8qhZ
	 gvICj3A1mNldnarFMdbcOh9WZLJhiU73WBlNrpIKBZa+FCnlQnUhfE6CmNgPL/03gj
	 99+iUVpZT8fSkAKJXVjwBiJR3umpOjPrUsvIlNGU=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 54S7WXx53262049
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Wed, 28 May 2025 02:32:33 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 28
 May 2025 02:32:32 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 28 May 2025 02:32:32 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 54S7WQC44110467;
	Wed, 28 May 2025 02:32:27 -0500
Message-ID: <ab5f27ac-6bbe-4746-a2bd-e5f1a667ae91@ti.com>
Date: Wed, 28 May 2025 13:02:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/18] drm/tidss: Adjust the pclk based on the HW
 capabilities
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Michael Walle
	<mwalle@kernel.org>,
        Aradhya Bhatia <aradhya.bhatia@linux.dev>
CC: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Francesco Dolcini <francesco@dolcini.it>,
        Jyri Sarha <jyri.sarha@iki.fi>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay
 Abraham I <kishon@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil
 Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman
	<jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
References: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
 <20250402-cdns-dsi-impro-v2-3-4a093eaa5e27@ideasonboard.com>
 <DA6TT575Z82D.3MPK8HG5GRL8U@kernel.org>
 <8fc0c880-0809-43d6-b03a-1a5728f5d0d4@ideasonboard.com>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <8fc0c880-0809-43d6-b03a-1a5728f5d0d4@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_003322_112837_0C57732B 
X-CRM114-Status: GOOD (  25.57  )
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

Hi Michael, Tomi,

On 27/05/25 18:03, Tomi Valkeinen wrote:
> Hi Michael (and Aradhya, Devarsh),
> 
> On 27/05/2025 12:13, Michael Walle wrote:
>> Hi Tomi,
>>
>> While testing Aardhya's OLDI support patches [1], I've noticed that
>> the resulting LVDS clock is wrong if this patch is applied.
>>
>>> In practice, with the current K3 SoCs, the display PLL is capable of
>>> producing very exact clocks, so most likely the rounded rate is the same
>>> as the original one.
>>

Yes, display PLL is flexible and device manager should set exact 
frequency. Please note that there was a bug in device manager in earlier 
releases which would prevent setting it to exact clocks. You should try 
with latest SDK release firmware binaries (11.0...(10.1 should also work 
though)) if seeing any misbehaviour in that regard.

>> This is now what I'm seeing. Most SoCs have that fixed clock thingy
>> for (some?) VPs, e.g. [2]. And clk_round_rate() will return the
>> fixed clock rate for this clock, which will then result in an LVDS
>> clock which is way off.
>>
>> I'm testing on an AM67A (J722S) and I've backported some of the
>> patches as well as dtsi fragmets from downstream. Thus, it might be
>> as well the case that the fixed-factor-clock node is wrong here.
>> OTOH other K3 SoCs do this in mainline as well.
> 
> Thanks for findings this (It's not a fixed clock, but a (fixed)
> divider). I can reproduce on my AM62 SK's OLDI output.
> 
> I didn't see AM625 TRM explaining the DSS + OLDI clocking. I remember it
> was a bit "interesting". Afaics from testing, the VP clock is derived
> from the OLDI serial clock divided by 7. To change the VP clock, we need
> to set the OLDI clock's rate. But the code we have at the moment is
> using clk_round_rate/set_rate to the VP clock.
> 

This is correct. The pixel clock is derived as OLDI clock/7 when OLDI is 
enabled.

> And we get the crtc atomic_check called before setting the OLDI clock
> rate, so it doesn't even work by luck (i.e. if the OLDI clock was set
> earlier, the VP clock would already have the right rate, and it would
> seem that everything is ok). In the atomic_check we see the OLDI bypass
> clock (25 MHz), which results in 3571428 Hz VP clock.
> 
> And with this patch, the code then decides that 3571428 Hz is what the
> HW can do, and uses it as the pixel clock.
> 
> Aradhya, Devarsh, do you remember how the clocking goes here? Or if it's
> in the TRM, please point me to it...
> 

I think what you described is correct, if any specific questions I can 
help check. But any misbehaviour you are seeing w.r.t clock setting 
(i.e. what driver is trying to set versus what actually is getting set)
then please dump the dss clock tree along with relevant details of test 
done:

k3conf dump clock <display_device_id>

You can get the device ID via TISCI Doc [1]

[1]: 
https://downloads.ti.com/tisci/esd/latest/5_soc_doc/am62x/clocks.html#clock-for-am62x-device

Regards
Devarsh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
