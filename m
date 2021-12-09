Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E5DCC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  9 Dec 2021 07:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iqBNGf1uLbklOqOZaxpNURzxHUiFndkuAvWYbbpMENM=; b=r997zByJkXAp2Po5ZEPrqa2QFV
	pUsBWLIsQABdwqSvjrv+LGEhNxScvdyDEekHb+hrwtpZ6W68/7LHHSCgr+FrUqos8mPlYi59ybVPi
	lQzt6C7uJ29LYSHvMkv+kpznA//dbJaU8lG8HlWsMKrMP3bikv+xIwkd1QoflSEXAOZnP+0vyurm3
	YSC5cvg7dvKN5zv1s9mQVN78uQGgEuIl1+Avkgpfw/gte9khJZebMkXjs6uPFaVUU8TL015TFMYJk
	F/gSMcmMmevw97xOuNByAgwG1Sg3a+JUvJx+aTtxb2GgBqzXpp+8VKiHWMYuxAD7kERTaIH+MpAH1
	Hc76Jybg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvEHP-00FBzq-J7; Thu, 09 Dec 2021 07:55:51 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvEHM-00FBzP-GR
 for linux-phy@lists.infradead.org; Thu, 09 Dec 2021 07:55:50 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1B97tZMm107101;
 Thu, 9 Dec 2021 01:55:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1639036535;
 bh=cMgn4zULeSCEApO9TOGbdrs14+ZsXacG70vfjkhTOjA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=iOBcYiqcCDr8lSufp93SM6IzDP3g0i9XrDDCqx+hK4QUYC1egJBjmjvkslnpwL1Pf
 +JuvMGKFekr3gskSlzRbNgaMUZ79mbP/wNkg+U6jIGXzkmQnA9qiN9Cmf2rezXSQTl
 V+P9h/2m3DCMhqJCWlfFGiOvb8tWa7sQ3lUK4MMA=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1B97tZkj087937
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 9 Dec 2021 01:55:35 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 9
 Dec 2021 01:55:35 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 9 Dec 2021 01:55:35 -0600
Received: from [10.250.234.105] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1B97tUfM126723;
 Thu, 9 Dec 2021 01:55:31 -0600
Subject: Re: [PATCH v3 00/15] PHY: Add support for multilink configurations in
 Cadence Sierra PHY driver
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <p.zabel@pengutronix.de>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <a-govindraju@ti.com>
References: <20211022170236.18839-1-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <4a9bdad2-9d5a-baf8-5a9c-aa0854505e5d@ti.com>
Date: Thu, 9 Dec 2021 13:25:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20211022170236.18839-1-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_235548_711451_B7663CED 
X-CRM114-Status: GOOD (  17.32  )
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



On 22/10/21 10:32 pm, Swapnil Jakhade wrote:
> Cadence Sierra PHY is a multiprotocol PHY supporting different multilink
> PHY configurations. This patch series extends functionality of Sierra PHY
> driver by adding features like support for multilink multiprotocol
> configurations, derived reference clock etc.
> 
> The changes have been validated on TI J721E platform.
> 
> Version History:
> 
> v3:
>    - Rebased on latest PHY next
>    - Added Reviewed-by and Acked-by tags
> 
> v2:
>    - Added a new patch 3/15 to rename the SSC macros for dt-bindings
>      to use generic names. These macros are not yet used in any DTS file.
> 
> Swapnil Jakhade (15):
>   phy: cadence: Sierra: Use of_device_get_match_data() to get driver
>     data
>   phy: cadence: Sierra: Prepare driver to add support for multilink
>     configurations
>   dt-bindings: phy: cadence-torrent: Rename SSC macros to use generic
>     names
>   dt-bindings: phy: cadence-sierra: Add binding to specify SSC mode
>   phy: cadence: Sierra: Add support to get SSC type from device tree
>   phy: cadence: Sierra: Rename some regmap variables to be in sync with
>     Sierra documentation
>   phy: cadence: Sierra: Add PHY PCS common register configurations
>   phy: cadence: Sierra: Check cmn_ready assertion during PHY power on
>   phy: cadence: Sierra: Check PIPE mode PHY status to be ready for
>     operation
>   phy: cadence: Sierra: Update single link PCIe register configuration
>   phy: cadence: Sierra: Fix to get correct parent for mux clocks
>   phy: cadence: Sierra: Add support for PHY multilink configurations
>   phy: cadence: Sierra: Add PCIe + QSGMII PHY multilink configuration
>   dt-bindings: phy: cadence-sierra: Add clock ID for derived reference
>     clock
>   phy: cadence: Sierra: Add support for derived reference clock output
> 
>  .../bindings/phy/phy-cadence-sierra.yaml      |    9 +
>  .../bindings/phy/phy-cadence-torrent.yaml     |    4 +-
>  drivers/phy/cadence/phy-cadence-sierra.c      | 1299 +++++++++++++++--
>  include/dt-bindings/phy/phy-cadence.h         |    9 +-
>  4 files changed, 1226 insertions(+), 95 deletions(-)


Reviewed-by: Kishon Vijay Abraham I <kishon@ti.com>
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
