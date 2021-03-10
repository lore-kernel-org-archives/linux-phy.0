Return-Path: <SRS0=wP85=II=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF79C433E0
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 14:28:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A48F64FF4
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 14:28:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A48F64FF4
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J/6EvdpS27uyfYh74vr6V+2hMxlAFI1j7JsKZY8Bo8A=; b=N1+em/13FUYLgjtLnsGWFtSQK
	4TC5s4xDil7upK1sksNBma/90qWZCE+7yUO+22C/sFr2HRu1Wjo+ALCIGePRQ7Mx0CsVsertrGjUx
	rY/6VZYUapNGEJYs+HMt0ap1JkaCO3MmsQKI6AcKIcRxbgVPw+JhXcf7QNXuN9pUwb/btIFRLF5we
	YSUvG7vHqgoUwtvwTrGjb9GGIJ9p8OKRlzZ7/4imwKbZJ3FIB+MCEfei859HgfY9qyq0A8AbYl48L
	hjSBH+R5tDn+nXqtoQQsTluZOqjLQisolTERetBaqYbTIrA3ekpmybkxaHxrBgista9/oww2TAUFY
	EeN09HgkA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJzpB-0071yc-IA; Wed, 10 Mar 2021 14:28:33 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJzp6-0071yI-Lu
 for linux-phy@lists.infradead.org; Wed, 10 Mar 2021 14:28:31 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12AESNVV034268;
 Wed, 10 Mar 2021 08:28:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1615386503;
 bh=Ogn0xVb6dwmxMRp0lIh9bxOOLk54puRSbS4w99YlzL4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=cm7ivHJLEXTXoQxYNtkJILNmKKAfpvJmEgm002ovd/vGK128X0WN61K0RxVbM9Sn3
 PNRhZ4EyVx1VJrYXr5MIsj0LKdQ8J8Ox08wu141DGOT2AKEOOw6nwd49YzCX3r0z9u
 hgm7ICySW3lfzCOFUbK9wDGGs/jWQoa41vVh0re4=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12AESNHi041077
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Mar 2021 08:28:23 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 10
 Mar 2021 08:28:23 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 10 Mar 2021 08:28:23 -0600
Received: from [10.250.234.4] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12AESKwu041015;
 Wed, 10 Mar 2021 08:28:21 -0600
Subject: Re: [PATCH v3 0/6] AM64: Add SERDES driver support
To: Vinod Koul <vkoul@kernel.org>, Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>, Lokesh
 Vutla <lokeshvutla@ti.com>
References: <20210310120840.16447-1-kishon@ti.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <c5b107ca-efb7-61d7-09ec-2a66bb1a7e91@ti.com>
Date: Wed, 10 Mar 2021 19:58:20 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210310120840.16447-1-kishon@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_142829_207535_2988FA61 
X-CRM114-Status: GOOD (  19.94  )
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

Hi,

On 10/03/21 5:38 pm, Kishon Vijay Abraham I wrote:
> AM64 uses the same SERDES as in J7200, however AM642 EVM doesn't
> have a clock generator (unlike J7200 base board). Here the clock from
> the SERDES has to be routed to the PCIE connector. This series adds
> support to drive reference clock output from SERDES and also adds
> SERDES (torrent) and SERDES wrapper (WIZ) bindings.
> 
> v1 of the patch series can be found @ [1]
> v2 of the patch series can be found @ [3]

Failed to note the dependency here. This series depends on
http://lore.kernel.org/r/20210310112745.3445-1-kishon@ti.com

As mentioned in the cover letter of that patch series, that series
should be merged and an immutable tag should be provided and used both
in phy tree and DT tree maintained by Nishanth.

Thanks
Kishon

> 
> Changes from v2:
> *) Sent the DT bindings as a separate series [4]
> *) Remove enabling PHY output clock in isolation mode
> 
> Changes from v1:
> *) Model the internal clocks without device tree input (Add #clock-cells
>    to SERDES DT nodes for getting a reference to the clock using index
>    to phandle). This is in accordance with comment given by Rob [2].
>    However the existing method to model clocks from device tree is not
>    removed to support upstreamed device tree.
> *) Included a patch to fix modifying static data by instance specific
>    initializations.
> *) Added a fix to delete "clk_div_sel" clk provider during cleanup
> 
> [1] -> https://lore.kernel.org/r/20201224114250.1083-1-kishon@ti.com
> [2] -> http://lore.kernel.org/r/20210108025943.GA1790601@robh.at.kernel.org
> [3] -> http://lore.kernel.org/r/20210222112314.10772-1-kishon@ti.com
> [4] -> http://lore.kernel.org/r/20210310112745.3445-1-kishon@ti.com
> 
> Kishon Vijay Abraham I (6):
>   phy: ti: j721e-wiz: Remove "regmap_field" from wiz_clk_{mux|div}_sel
>   phy: ti: j721e-wiz: Delete "clk_div_sel" clk provider during cleanup
>   phy: ti: j721e-wiz: Configure full rate divider for AM64
>   phy: ti: j721e-wiz: Model the internal clocks without device tree
>     input
>   phy: ti: j721e-wiz: Enable reference clock output in cmn_refclk_<p/m>
>   phy: cadence-torrent: Add support to drive refclk out
> 
>  drivers/phy/cadence/Kconfig               |   1 +
>  drivers/phy/cadence/phy-cadence-torrent.c | 188 +++++++++++-
>  drivers/phy/ti/phy-j721e-wiz.c            | 349 +++++++++++++++++++---
>  3 files changed, 488 insertions(+), 50 deletions(-)
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
