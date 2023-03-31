Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47BE9C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZl+OQJOjEmyGihErH6LThA8hf0/XQNFF1p1D1xA7+M=; b=rtkda88hNRWAzT
	1QtqP6OtQLzgC0P8ulDlBNTvjPbvLEYlxIfJmnYxPDhG6zSpDbAyarBjoPak2lqNRMoPKODxH0STw
	KUVWVzLCh5aTlkR08FnhcqG1RDRwuiKZFH2USJHAgfsU2sETpV9xVC3M/6DoOXArB1IlvuoEyz3z6
	AtraFwQgjLXrT4pGN7hpUjGqh9KRjqKFuXdI3iGW6ndl8G9dDfxPld6Ux2tdjIm521WRWgFK2wcSb
	LNwD2XuC4zKVX4F1kB4u1KJ7I/g/kcKzs3cVO0HiXqFnbkA3y5WCLmM4AxCZCbzLHjWWsdJDeXQ9l
	k9yjnFf+zXFnqJN29KVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piF8f-007aS7-2S;
	Fri, 31 Mar 2023 13:49:57 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piF8a-007aPO-1E;
	Fri, 31 Mar 2023 13:49:54 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 32VDnixC040131;
	Fri, 31 Mar 2023 08:49:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1680270584;
	bh=uK/BZ8vvuLt9v6L5D7PoCE7Fv3S2Fmo8V17g5twWkB0=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=QrgGhiClByg4PBMAGfzEJ+l1Bf/kx/giV51UCkg5YqRFsMebkwubtcTInOXLJN6lM
	 96zUdSMfofE3IBgLlbV5N2mQDoD1dBws6vXclNckCizNJT2UA6pF2N9845xZwzqsrU
	 8rZf1kTG8+98IE6bwA7K5VrcRfMn5zYmkK5zKJPg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 32VDnief037525
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 31 Mar 2023 08:49:44 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Fri, 31
 Mar 2023 08:49:44 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Fri, 31 Mar 2023 08:49:44 -0500
Received: from [10.249.131.130] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 32VDneU1110616;
	Fri, 31 Mar 2023 08:49:41 -0500
Message-ID: <8d159cc9-ecdb-b96f-052a-42377a549839@ti.com>
Date: Fri, 31 Mar 2023 19:19:40 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
CC: <kishon@kernel.org>, <rogerq@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH 0/2] PHY-GMII-SEL: Add support for J784S4 SoC
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
References: <20230331062521.529005-1-s-vadapalli@ti.com>
 <ZCbhRQ2B8+RrSh5z@matsya>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <ZCbhRQ2B8+RrSh5z@matsya>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_064952_499660_979E356B 
X-CRM114-Status: GOOD (  11.65  )
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

Hello Vinod,

On 31-03-2023 19:03, Vinod Koul wrote:
> On 31-03-23, 11:55, Siddharth Vadapalli wrote:
>> Hello,
>>
>> This series TI's J784S4 SoC. A new compatible is added for the J784S4 SoC,
>> with QSGMII mode enabled. Also, the CPSW9G instance of J784S4 SoC supports
>> USXGMII mode. Thus, add support to configure USXGMII mode.
> 
> Sorry this fails to apply for me, pls rebase and send

This series has to be applied after the following series:
https://lore.kernel.org/r/20230309063514.398705-1-s-vadapalli@ti.com/
as mentioned below.

Regards,
Siddharth.
> 
>>
>> Note:
>> This series is based on top of the following series:
>> https://lore.kernel.org/r/20230309063514.398705-1-s-vadapalli@ti.com/
>>
>> The patch corresponding to the device-tree bindings for the compatible
>> "ti,j784s4-cpsw9g-phy-gmii-sel" is posted at:
>> https://lore.kernel.org/r/20230315092408.1722114-1-s-vadapalli@ti.com
>> Since the above patch has received an Acked-by from Krzysztof Kozlowski,
>> I am posting this series using the compatible.
>>
>> Regards,
>> Siddharth.
>>
>> Siddharth Vadapalli (2):
>>   phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in J784S4
>>   phy: ti: gmii-sel: Enable USXGMII mode for J784S4
>>
>>  drivers/phy/ti/phy-gmii-sel.c | 22 ++++++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>>
>> -- 
>> 2.25.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
