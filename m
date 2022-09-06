Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C245EECAAA1
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 10:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMQs5oIEu361OqVGByRc7BOKxy/k01Lb4dE11gF2Fy4=; b=PCXvQzhac8D/Qv
	jzsZG496WEGU/5ZVUpB8XBpM+4n9g7QqVMuh8YzZsj5pEXxQzwCOjhAxB4IGGcxojzMz552IKxJi3
	3nTqgLkR4kqp91NwZs06g3K0xVyHM5fUN+m6uHWPJaCluPwbwNmZu5qY2LJ1WZCCczlKNHkQpxXA5
	YpVNIG8DYZr9wHd5lOB7quXThdfdHYCXjs7J+sRgHandWXgOvdzYqk7XJ7UjhclxKCZKX3Uo8X+3f
	BdQbDlEMdHdY2RxuGGSa/8kwu9EQoeq7MYQdHgjZ3J0anltI7qt2qvOcsb/UuqaPHon3rLrlnD6qG
	XuEviT+dPwX7733yuUoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVVqc-00CSSW-10; Tue, 06 Sep 2022 10:30:26 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVVqK-00CSJb-MO; Tue, 06 Sep 2022 10:30:11 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 286AU28L084731;
	Tue, 6 Sep 2022 05:30:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1662460202;
	bh=NcoemCXH05TY9ODveI/RTyU7+TLIkOHYkpTRhi9iocQ=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=earOJCEJxSh7heXTUJ1w73TdC+nrjoFIkLqLle32pQAZlBqzgyX8o0AFKeIGjgce9
	 WRGwQ2ccQNkf0OnW4X8s/azozWBi3CzIRvECKslZzNis4x/6HOIpDyAg5QVHFmEkhI
	 Pkq2qcmRyvrE12I6f2oFcF7oKzQH48DHqPdrZxxM=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 286AU1YJ010551
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 6 Sep 2022 05:30:02 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 6 Sep
 2022 05:30:00 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 6 Sep 2022 05:30:00 -0500
Received: from [10.24.69.241] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 286ATuM5105135;
	Tue, 6 Sep 2022 05:29:57 -0500
Message-ID: <4c34dcba-0a30-164f-49bb-1cf22781a4b2@ti.com>
Date: Tue, 6 Sep 2022 15:59:55 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
CC: <robh+dt@kernel.org>, <lee.jones@linaro.org>, <kishon@ti.com>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>
References: <20220901085506.138633-1-s-vadapalli@ti.com>
 <20220901085506.138633-2-s-vadapalli@ti.com>
 <4b681c03-7f5a-0234-2276-316e0bad1de5@linaro.org>
 <44339382-c4e2-26db-de5d-263ae5a585b8@ti.com>
 <4e61b63b-74ac-1682-968f-17e5d8db7ce6@linaro.org>
 <dfa9e613-054e-cffc-747f-27842e825cc8@ti.com>
 <93600263-0211-9286-9043-fae5b017d15b@linaro.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <93600263-0211-9286-9043-fae5b017d15b@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_033009_073347_D6DEDC31 
X-CRM114-Status: GOOD (  14.28  )
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

Hello Krzysztof,

On 06/09/22 12:33, Krzysztof Kozlowski wrote:
> On 06/09/2022 07:02, Siddharth Vadapalli wrote:
>>>>
>>>> Please let me know if the above description is fine.
>>>
>>> Hm, but that's a phy node, not address of register... Isn't this a phy
>>> node representing the phy of the CPSW MAC ports?
>>
>> Despite it being a phy node, the phy-gmii-sel driver actually uses this
>> node to obtain the address of the CTRLMMR_ENETx_CTRL registers which
>> correspond to the CPSW MAC configuration and are therefore unrelated to
>> the PHY. Please let me know if my suggested description would be fine.
> 
> Either I miss some more pieces or this is wrong design. The phy node
> should not be used to pass some addresses somewhere. It is used to
> define a device which will be instantiated (as parent is simple-mfd). If
> you use it only to obtain some address, not to describe child device,
> then this is wrong property type.

Sorry for describing it incompletely, and at some places incorrectly.
Yes, you were right when you initially mentioned that the phy node
corresponds to the phy of the ethernet MAC ports. I had incorrectly
understood the term "phy" there as the external Layer-1 ethernet phy.The
phy node corresponds to the phy used by the ethernet MAC, based on the
phy-mode configured. The am65-cpsw-nuss driver which is responsible for
ethernet MAC, requires the ethernet MAC's phy to be configured by the
phy-gmii-sel driver. Thus, the phy node corresponds to an actual phy
(ethernet MAC's PHY).

I plan on updating the description for the phy pattern property to the
following:
"The phy node corresponding to the ethernet MAC."

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
