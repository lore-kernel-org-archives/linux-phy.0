Return-Path: <SRS0=DVIa=OF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FF56C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Sep 2021 15:13:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8E9161029
	for <linux-phy@archiver.kernel.org>; Wed, 15 Sep 2021 15:13:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C8E9161029
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OkkMgjIfEedTJdGdcJ0Xq3Fk0zQMHjAzCOW+UqVPsp0=; b=Ny7aWR3YfiYSAri3qC5kJKGTvK
	W8AsI8VNKBdHwgYQAlply3C5ATTxmNOfBUi1uyQUXYEllnD/iL/kOEaRmkbaO41Szsbcjyf4QvaFF
	GejaGMvaKxBNys/riC5r/qYsN/bcrryUAdDj2ZWcx0qQl6LLqF0ufR98DoIJ/JVXJCrtNoHzgB9Oh
	BJGBUq/sRhqMW4n8NLMfmteST+rM1vBoLu7qcqx+m20xacddgot8aWtrDLzaqPdz8yok997W9cJyZ
	YkECbKdFVneNCWl7b8OSGpfpfdavALAqBmUd23C5FOtZzlCA9NDWm0rIV9XOCWUd9XOiNQhCHfZFI
	GADUMjmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQWbd-009Nln-DA; Wed, 15 Sep 2021 15:13:49 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQWbZ-009Njg-5d
 for linux-phy@lists.infradead.org; Wed, 15 Sep 2021 15:13:48 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 18FFDgfu010872;
 Wed, 15 Sep 2021 10:13:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1631718822;
 bh=SlLW5Xj9oEORlw+AqDDG6RwUyumDe2hRBZ/TEGWdrAk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oW+UKS9jUXsaPDuvtDIvrmYFBC0Mbko/rPwKdslsIrPnVMTrHt2EI2Ji8oP9BvWBD
 lHJihiWrRf8p42J/BKScYw+ZbZyyvEoS2jm3a/b/TqNuYlqaA8TMOoXI14D/w7kz5J
 x+V/GGO9BdoUIMguesLi0W3VWSaeDtRhSQaicUrs=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 18FFDfPW069214
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 15 Sep 2021 10:13:41 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Wed, 15
 Sep 2021 10:13:41 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Wed, 15 Sep 2021 10:13:41 -0500
Received: from [10.250.232.51] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 18FFDbjn106503;
 Wed, 15 Sep 2021 10:13:38 -0500
Subject: Re: [PATCH v2 00/15] PHY: Add support for multilink configurations in
 Cadence Sierra PHY driver
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <kishon@ti.com>, <robh+dt@kernel.org>, <p.zabel@pengutronix.de>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>
References: <20210908122930.10224-1-sjakhade@cadence.com>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <23a8f4d9-3467-1cf5-eec7-a4d33fe03458@ti.com>
Date: Wed, 15 Sep 2021 20:43:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210908122930.10224-1-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_081345_359417_912EFC1C 
X-CRM114-Status: GOOD (  18.23  )
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


On 08/09/21 5:59 pm, Swapnil Jakhade wrote:
> Cadence Sierra PHY is a multiprotocol PHY supporting different multilink
> PHY configurations. This patch series extends functionality of Sierra PHY
> driver by adding features like support for multilink multiprotocol
> configurations, derived reference clock etc.
> 
> The changes have been validated on TI J721E platform.
> 
> Version History:
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

for the complete series,

Reviewed-by: Aswath Govindraju <a-govindraju@ti.com>

Thanks,
Aswath

>  .../bindings/phy/phy-cadence-sierra.yaml      |    9 +
>  .../bindings/phy/phy-cadence-torrent.yaml     |    4 +-
>  drivers/phy/cadence/phy-cadence-sierra.c      | 1299 +++++++++++++++--
>  include/dt-bindings/phy/phy-cadence.h         |    9 +-
>  4 files changed, 1226 insertions(+), 95 deletions(-)
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
