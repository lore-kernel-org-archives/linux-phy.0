Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEB69C6FD18
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1IeughV8Hd6sfeCFrku/WzBu1uJ8zUgP71nrNSEFv4=; b=j8yi4etDqvv6tV
	cZ9HhPDSgDyzs3poG14k2DNi/1BhHTQ2wxIBgmYjs/NMayX/NoQXMWiwcImxLD05sDW9GZijx4s+7
	frW/EB/aLWTxKeShJyc/ra3wRkblhOoAQdmBfODGkxZ3tpfFimcNVP6gFXzfpPftl4AjQ4Q3Gxs+7
	09WbA6qZoJLyRxWxrpt4Xp5OpCkuk05sgoB1uZCnqqZOxcDFKdIfnZn2nNz+td/d9/OIdTOl+UiPZ
	yVu4dUciQeOcIkJ7ABN4cdN+Z7ja7cvWm2yxo5Nc4/oZ5aMYerLXsMuEDCe5/NefV1CL9mEnqYO1O
	Fx/0VUsFsxAwBuRsYPsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9Vi-006EMW-1C;
	Fri, 31 Mar 2023 07:49:22 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9Ve-006EKT-05;
	Fri, 31 Mar 2023 07:49:19 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 32V7nC89032086;
	Fri, 31 Mar 2023 02:49:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1680248952;
	bh=M9rGFzZVAKQIHFo+6Vrn0/FJ6eEqdHqLhsMOa8+fA2g=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=i+p210SuKELCHvyTRorWzQJSGHo4Nglx39hmKW2uZZNPiaSfJBLEudFl5jocVGgaZ
	 aKzj93o2mr9EIE6gQkX3YxqcAEieRAQ0pqCASd+dYS5j9UkmpCPGubRmUDW444aFNZ
	 nF8w5fIw7ctpmHqhWJxzITaei0WvNjA6nMJoNxUs=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 32V7nCb1116419
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 31 Mar 2023 02:49:12 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Fri, 31
 Mar 2023 02:49:12 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Fri, 31 Mar 2023 02:49:12 -0500
Received: from [172.24.145.61] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 32V7n9xx084053;
	Fri, 31 Mar 2023 02:49:10 -0500
Message-ID: <b5e426fb-8af9-c372-1076-63194e4de781@ti.com>
Date: Fri, 31 Mar 2023 13:19:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH 1/2] phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in
 J784S4
To: Roger Quadros <rogerq@kernel.org>
References: <20230331062521.529005-1-s-vadapalli@ti.com>
 <20230331062521.529005-2-s-vadapalli@ti.com>
 <cfcdb25b-5426-2532-ab8c-224a5e33baf3@kernel.org>
Content-Language: en-US
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <cfcdb25b-5426-2532-ab8c-224a5e33baf3@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_004918_212575_6BAC816C 
X-CRM114-Status: GOOD (  13.14  )
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

Hello Roger,

On 31/03/23 13:15, Roger Quadros wrote:
> 
> 
> On 31/03/2023 09:25, Siddharth Vadapalli wrote:
>> Each of the CPSW9G ports in TI's J784S4 SoC support modes such as QSGMII.
>>
>> Add a new compatible for it and allow the usage of "ti,qsgmii-main-ports"
>> property for J784S4.
>>
>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>> ---
>>  drivers/phy/ti/phy-gmii-sel.c | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>
>> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
>> index c87118cb2af9..fba5c0c0771c 100644
>> --- a/drivers/phy/ti/phy-gmii-sel.c
>> +++ b/drivers/phy/ti/phy-gmii-sel.c
>> @@ -235,6 +235,15 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
>>  	.num_qsgmii_main_ports = 2,
>>  };
>>  
>> +static const
>> +struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j784s4 = {
> 
> Please make it into one line

I was simply following the convention used for other SoC data structs in the
same file. Please let me know why this has to be an exception and I will post
the v2 series with the change accordingly.

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
