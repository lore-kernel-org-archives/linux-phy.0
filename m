Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 630C7C7618D
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 07:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRCXIAZBWuRWL/QoCFZS/MmXgkMka5QVw7QXjai+XW8=; b=UuAoN0a4NjX3a0
	VvDlvxUCz98RoOiHOLamVhb66uF0cDK6Y9GbhdtTN7AfUDL6rGlw24/IDrGB11Up/XOKntc47xtjv
	MJxvqfLzfmy482rB/7aFWqCxhUkGQssycFxXvQknitWG8Jm1fmB23YrftlM7N5+dsHcyQszwrikRk
	qd4MoUUKGd8mMbhQyL8q8ErtLmraRsBFvr+n8PKw8mtX/uY8MMQcCpxbZmThMkBOgS+0AdNV+nO+k
	KbFb/ATcwol66QpQKCwy+slZO7fHO1YsEifWGYPMdu6mdLe/rQkVOfl3DAc2BC4Ptf/keFAyh9ZEK
	A+m/wWPIzA2vX4BSaEaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjanC-000GmY-04;
	Tue, 04 Apr 2023 07:09:22 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjan8-000GlV-2j;
	Tue, 04 Apr 2023 07:09:20 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 33479EOR084287;
	Tue, 4 Apr 2023 02:09:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1680592154;
	bh=u4BCaB24TC2VyghbZUO5ivLzLfL5dKk788+RlcY+ciQ=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=VjWIcV1//5z4FGyYxXX+b8curbhZwktatz2JF65IFru5v+Pqf5J3sTVMNS1F3lbDt
	 ILRd6AKiggHL2HPnlY3cA+2tZiEKO8V4jsbB2HMAWB03GEltUYqQVcKCO0aL9U8LMa
	 CGJJ9T+KksOD//0mz39KoDl+dSy0QIfzeUMW6aro=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 33479EWu129146
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Apr 2023 02:09:14 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 4
 Apr 2023 02:09:14 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 4 Apr 2023 02:09:14 -0500
Received: from [172.24.145.61] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 33479Aq6017177;
	Tue, 4 Apr 2023 02:09:11 -0500
Message-ID: <357bb098-0c43-d4d6-8106-484492752e87@ti.com>
Date: Tue, 4 Apr 2023 12:39:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <robh+dt@kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH] dt-bindings: phy: ti: phy-gmii-sel: Add support for
 J784S4 CPSW9G
Content-Language: en-US
To: <vkoul@kernel.org>, <kishon@kernel.org>
References: <20230315092408.1722114-1-s-vadapalli@ti.com>
 <921520a2-e3b5-7317-669f-a7c94895b34d@linaro.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <921520a2-e3b5-7317-669f-a7c94895b34d@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_000918_919206_5B27E3B2 
X-CRM114-Status: GOOD (  11.28  )
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

Can this patch please be merged in case of no concerns?

Regards,
Siddharth.

On 19/03/23 18:15, Krzysztof Kozlowski wrote:
> On 15/03/2023 10:24, Siddharth Vadapalli wrote:
>> The CPSW9G instance of CPSW Ethernet Switch on TI's J784S4 SoC supports
>> additional PHY modes like QSGMII. Add a compatible for it.
>>
>> Enable the use of "ti,qsgmii-main-ports" property for J784S4 CPSW9G.
>>
>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>> ---
>>  Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml | 4 ++++
>>  1 file changed, 4 insertions(+)
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
