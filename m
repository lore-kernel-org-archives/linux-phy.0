Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C265C433ED
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 06:50:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4C4F6120E
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 06:50:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4C4F6120E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HsE4RQXVIk+AMzXDxzqooQqpWFZFH3BKw62zH+zk4Wo=; b=WwqW9FWp4hJjg9UKeFshtRxu/
	AHMzGgEGQKz4p7lf86pt3vDgRZwcjvMbmXvsugFO+TzDxMmGy1eqGxzO35EGfwSiXWJ8Mojbs9b6k
	FDJ2Su4xofQ2qQhiG/v5rHc/pnOaAeb5zbf4wjJOkjK5BVlTw6fs5OFY6Xd//Kqf1a9++rQO9GGHT
	qCIaNyeMi+7SPsttFl2F1cSsuqj5EXIS7ZMk8ClZaCOrHgfrCioNOdhevBwV5ZPiztDf8J33CW2x0
	l0gO3meyiAiVatKyORrsjU4mzxx4BwZB/NqqVH+J1BTEp7jSBV4KC97I30TDEaaE1/nniWJ0y3sz7
	8T2ZvJuew==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWZLg-00BjJu-8S; Wed, 14 Apr 2021 06:50:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZLe-00BjJc-FG
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 06:50:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=7cU4D04kdyILGRVSuThWUQaMOQqDRIEfWPmylp2Mimk=; b=yn4hTY6ratNBlVSViFaDK5xkfS
 CFrxjyVNEZ8t8xUkNYoD/E13aTl2ChAxV+uMYOM5IRid0JS3rjCKwe98TGEcep4dkB1qr6qraTNAz
 zNfHXuk//wqSRErPf9Y8jCdVg7CjEItDMFlFIOjyJUcML3y8rs95sYdKbESONq6RRbJ75t3safSvg
 EabpKmOxh0XsVMtn+54HFb2KiWjlhH229A32xrELuX0z5ASQ44DxvhQLel3cwXH2h/TIL0oLO1Izd
 QRjl/rLuyt2T6uXrjEhbQWv9oEo6PxvW/GG53P9IeoS15Mq8n3/RU/JmPxjPcG9s5REw4PpFT9k5e
 CjzHjkdQ==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZLb-007Xn5-O8
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 06:50:01 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13E6nopT097466;
 Wed, 14 Apr 2021 01:49:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618382990;
 bh=7cU4D04kdyILGRVSuThWUQaMOQqDRIEfWPmylp2Mimk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TkCt8oYzhmi/2AzqPsmlu89Y6ETx+rlasl/2DF/qR5gVqRtBRRqfxzr7yg0EfBgZ3
 U9cpaq+7Fw5W/zyrXLDLiBD2XDOLj9W06c+iTCCaQ+Jt3fQIFm4FH2W8i56bLn6iWC
 xixX7Pq56mhw5sksre/jPjqRSJ0nvlxduMR2qpwI=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13E6noWE035897
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 14 Apr 2021 01:49:50 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 14
 Apr 2021 01:49:50 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 14 Apr 2021 01:49:50 -0500
Received: from [172.24.145.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13E6niiC127386;
 Wed, 14 Apr 2021 01:49:45 -0500
Subject: Re: [PATCH 3/4] dt-bindings: net: can: Document transceiver
 implementation as phy
To: Rob Herring <robh@kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, Grygorii Strashko
 <grygorii.strashko@ti.com>, Faiz Abbas <faiz_abbas@ti.com>, Chandrasekar
 Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Vinod Koul
 <vkoul@kernel.org>,
 Sriram Dash <sriram.dash@samsung.com>, <linux-can@vger.kernel.org>,
 <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20210409134056.18740-1-a-govindraju@ti.com>
 <20210409134056.18740-4-a-govindraju@ti.com>
 <20210412175134.GA4109207@robh.at.kernel.org>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <e1c2b752-5a2b-e973-c188-5916d8a2e31f@ti.com>
Date: Wed, 14 Apr 2021 12:19:43 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210412175134.GA4109207@robh.at.kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_234959_896232_CEE66DC7 
X-CRM114-Status: GOOD (  19.26  )
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

Hi Rob,

On 12/04/21 11:21 pm, Rob Herring wrote:
> On Fri, Apr 09, 2021 at 07:10:53PM +0530, Aswath Govindraju wrote:
>> From: Faiz Abbas <faiz_abbas@ti.com>
>>
>> Some transceivers need a configuration step (for example, pulling the
>> standby or enable lines) for them to start sending messages. The
>> transceiver can be implemented as a phy with the configuration done in the
>> phy driver. The bit rate limitation can the be obtained by the driver using
>> the phy node.
>>
>> Document the above implementation in the bosch mcan bindings
>>
>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>> ---
>>  Documentation/devicetree/bindings/net/can/bosch,m_can.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
>> index 798fa5fb7bb2..2c01899b1a3e 100644
>> --- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
>> +++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
>> @@ -109,6 +109,12 @@ properties:
>>    can-transceiver:
>>      $ref: can-transceiver.yaml#
>>  
>> +  phys:
>> +    minItems: 1
> 
> maxItems: 1

Will add this in the respin.

> 
>> +
>> +  phy-names:
>> +    const: can_transceiver
> 
> Kind of a pointless name. You don't really need a name if there's a 
> single entry.
> 

This name used by devm_phy_optional_get() in m_can driver to get the phy
data structure.

Thank you for the review.

Regards,
Aswath

>> +
>>  required:
>>    - compatible
>>    - reg
>> -- 
>> 2.17.1
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
