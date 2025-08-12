Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6D2EC87FCB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 06:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDZcdWEoPkVvWDTnmoJK3Tuh+F0MygW1q69249sQ7Dg=; b=ieeEyD2ry86vBh
	E5/xCayi/uPbeXgd39IQDVnMRTVMF/gxmrTlQSoO8dTwZ1WugVOe2tl9Gpv3gGB3hHWIgUeZA8I3f
	V1LZosJeDCLNp+V6k/fqoGbY5FM17mZRnTMgrHNwYqQIkB6u8sgE75bdLXdLu59hCuud+g4ZLkWqr
	R8xvJz6rukZA+hn6ooaapmOe+s9l+sf55S/96SC1782k2BjsKS+doT+sGPXCos6yUx/SGtEe+90f4
	AknXIP/B9AObMP8NTQsfFNnr/+amKuouUVPG/dFRCOrgCEB68iI2ItCMCI/+Y1UT5ce6FEtHUsi5P
	kYQb0xLz4yDr7AbDqV6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uli69-00000009z4O-1qAP;
	Tue, 12 Aug 2025 06:03:01 +0000
Received: from lelvem-ot02.ext.ti.com ([198.47.23.235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uli65-00000009z3f-3cNY
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 06:02:59 +0000
Received: from lelvem-sh02.itg.ti.com ([10.180.78.226])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57C62No81813763;
	Tue, 12 Aug 2025 01:02:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1754978543;
	bh=LKxlbDvFLQZ0H4jE21FQwtxVpoVXTA6dd8wgZE2a5v8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=WZIFBMLo0CW8OoHP906jfiQSuaM7Sj+4uKbiiPUuVlJtg9tAZ17Kzpk4qiKitNAvt
	 mc+M5PkSW4r2BO5cJj4Kt/T/Qk9Oa1zVFCeM3Qlk3lc1ozhpAcXgZeC4gnhL8KmGac
	 jWJtuSKJrDSSYKhCyftfvbe72jrXq8/8xK+JER3k=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelvem-sh02.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57C62Ncl023237
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Tue, 12 Aug 2025 01:02:23 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Tue, 12
 Aug 2025 01:02:22 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Tue, 12 Aug 2025 01:02:22 -0500
Received: from [10.249.145.16] ([10.249.145.16])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57C62ISw182509;
	Tue, 12 Aug 2025 01:02:19 -0500
Message-ID: <cac3d853-11aa-481b-90bb-aeb2cd4608f8@ti.com>
Date: Tue, 12 Aug 2025 11:32:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] phy: cdns-dphy: hs-clk improvement and a cleanup
To: Vinod Koul <vkoul@kernel.org>,
        Tomi Valkeinen
	<tomi.valkeinen@ideasonboard.com>, <kishon@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Parth
 Pancholi <parth.pancholi@toradex.com>,
        Francesco Dolcini
	<francesco@dolcini.it>,
        Aradhya Bhatia <aradhya.bhatia@linux.dev>,
        Jayesh
 Choudhary <j-choudhary@ti.com>
References: <20250723-cdns-dphy-hs-clk-rate-fix-v1-0-d4539d44cbe7@ideasonboard.com>
 <cc0e4cf5-1bd9-4ae3-a130-0483dbfc6335@ideasonboard.com>
 <aJM0WPVDUkte9E_D@vaman>
Content-Language: en-US
From: devarsh <devarsht@ti.com>
In-Reply-To: <aJM0WPVDUkte9E_D@vaman>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_230258_091438_D8399794 
X-CRM114-Status: GOOD (  11.80  )
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

Hi Vinod, Kishon,

On 06/08/25 16:24, Vinod Koul wrote:
> On 05-08-25, 15:03, Tomi Valkeinen wrote:
>> Hi Vinod, Kishon,
>>
>> On 23/07/2025 13:01, Tomi Valkeinen wrote:
>>> A cdns-dphy improvement to return the actual hs clock rate, and a
>>> cleanup to remove leftover code.
>>>
>>> These were part of a Cadence DSI series:
>>>
>>> https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02%40ideasonboard.com/
>>>
>>> but are now separately here for easier merging.
>>>
>>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
>>> ---
>>> Tomi Valkeinen (2):
>>>       phy: cdns-dphy: Store hs_clk_rate and return it
>>>       phy: cdns-dphy: Remove leftover code
>>>
>>>  drivers/phy/cadence/cdns-dphy.c | 24 +++++++++---------------
>>>  1 file changed, 9 insertions(+), 15 deletions(-)
>>> ---
>>> base-commit: 89be9a83ccf1f88522317ce02f854f30d6115c41
>>> change-id: 20250723-cdns-dphy-hs-clk-rate-fix-a8857a5789dd
>>
>> Is this good to merge, and if so, do you have any estimate when? While
>> this is independent from the DSI series, I'd rather push the DSI series
>> into drm-misc about the same time, so both would appear in linux-next
>> relatively together.
> 
> I will start taking patches after merge window closes next monday, so
> next week should be a good estimate

On top of this series [1], we have the cadence DPHY fixes for fixing PLL
lockup timeout [2] and one more patch which enables lower resolutions
[3], both have been reviewed and tested too.

Would it be possible for you too merge all 3 together in below order ?

[1]:
https://lore.kernel.org/all/cc0e4cf5-1bd9-4ae3-a130-0483dbfc6335@ideasonboard.com/
[2]: https://lore.kernel.org/all/20250704125915.1224738-1-devarsht@ti.com/
[3]: https://lore.kernel.org/all/20250807052002.717807-1-h-shenoy@ti.com/

Kindly let us know if anything required from our side.

Regards
Devarsh


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
