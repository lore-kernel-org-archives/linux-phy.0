Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A46DBE784AF
	for <linux-phy@archiver.kernel.org>; Mon,  2 Oct 2023 09:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAbdMq4jqP8vdRymXsu4GoUniYLNuJzHXWEneGLrD8M=; b=B+PXzihytxnoZL
	/zgRbhX0gRg7qDTAfmEdZSGJiUZHl9tJr8vSTrfwssNRxirH3a6fAQznawUViofWOdsskJnUqjUnV
	Og+tAc4uIzkB7/QvBa+mOlzndy+8A6JoIhzBc4eIqqROfzMLuo10SyhN4DTdqZoUJ7slrt7Ep29EK
	cxYqWiJVNCiXMs3BdSLjJcgmOMwJw+W1gjhvLPDXCYFBqlq//98qikHduvqj7Aos6EoQoPbByG+ux
	c7AqNYT+LEtjogAypZbNe14EXJhGAsGpbdWlhf08WUCeL/3fGQ5H+uCj4/3FFYglr3An+eF9pfu77
	ScXGnw5X6Na0zYOEaXXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnEx0-00CCzJ-14;
	Mon, 02 Oct 2023 09:10:50 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnEwx-00CCyB-12;
	Mon, 02 Oct 2023 09:10:49 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3928E3qR022118;
	Mon, 2 Oct 2023 11:10:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=E01OcOCHWhP/6+N5KY2PJxe8Vqf5B2GZBRHXsK7b/ZI=; b=aA
	egtRg/HZV5z61BlbQRmw/xhKB5/NOvXNbEABAWfThJ4zPTHndz302pa5QVjGM+sM
	3J8B5ueo8i4iRhw3Pi7HwaWlrkqWsy58TBUitGYwlxhFctZH+p7nxHxKyjmiDHP0
	gunyUnqWwhUVh8dpDShiYuX54yeB8rEzvnWdNJYWKBCqzgkrTC+zGteyX1b5Pb5j
	Rf6xRjDsxe+C3FBAdS36hxq9MRrXNisC3EZbZEbT4TzCJ6MY1lbLR6cryXr1bkaw
	d59gty15vIlgDcfiUoAb0YziosPbln43LGmK99GlHY0DfgQb6OF9EUVre9tgoPIq
	Z+Sxdr7e5cMYwyIcmVVA==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tew80bymt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Oct 2023 11:10:14 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B9C5F100059;
	Mon,  2 Oct 2023 11:10:12 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6252F211F22;
	Mon,  2 Oct 2023 11:10:12 +0200 (CEST)
Received: from [10.201.20.32] (10.201.20.32) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 2 Oct
 2023 11:10:10 +0200
Message-ID: <f3dbcd84-1320-9efb-f715-71b6bb4c7bdb@foss.st.com>
Date: Mon, 2 Oct 2023 11:10:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 01/11] dt-bindings: document generic access controller
To: Rob Herring <robh@kernel.org>
CC: <arnd@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-mmc@vger.kernel.org>, <dmaengine@vger.kernel.org>,
        <robh+dt@kernel.org>, <jic23@kernel.org>, <davem@davemloft.net>,
        <kuba@kernel.org>, <pabeni@redhat.com>, <linux-spi@vger.kernel.org>,
        <linux-i2c@vger.kernel.org>, <olivier.moysan@foss.st.com>,
        <linux-media@vger.kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        Oleksii
 Moisieiev <oleksii_moisieiev@epam.com>, <edumazet@google.com>,
        <linux-stm32@st-md-mailman.stormreply.com>, <ulf.hansson@linaro.org>,
        <richardcochran@gmail.com>, <will@kernel.org>,
        <linux-crypto@vger.kernel.org>, <netdev@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <arnaud.pouliquen@foss.st.com>,
        <linux-serial@vger.kernel.org>, <alexandre.torgue@foss.st.com>,
        Frank Rowand
	<frowand.list@gmail.com>, <andi.shyti@kernel.org>,
        <linux-usb@vger.kernel.org>, <peng.fan@oss.nxp.com>, <lee@kernel.org>,
        <fabrice.gasnier@foss.st.com>, <conor+dt@kernel.org>,
        <herbert@gondor.apana.org.au>, <linux-arm-kernel@lists.infradead.org>,
        <catalin.marinas@arm.com>, <al.sa-devel@alsa-project.org>,
        <hugues.fruchet@foss.st.com>, <devicetree@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <mchehab@kernel.org>, <vkoul@kernel.org>,
        <gregkh@linuxfoundation.org>
References: <20230929142852.578394-1-gatien.chevallier@foss.st.com>
 <20230929142852.578394-2-gatien.chevallier@foss.st.com>
 <169600172184.3601218.2121908606358610119.robh@kernel.org>
Content-Language: en-US
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
In-Reply-To: <169600172184.3601218.2121908606358610119.robh@kernel.org>
X-Originating-IP: [10.201.20.32]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-02_03,2023-09-28_03,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_021047_743858_C6E66B73 
X-CRM114-Status: GOOD (  24.40  )
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



On 9/29/23 17:35, Rob Herring wrote:
> 
> On Fri, 29 Sep 2023 16:28:42 +0200, Gatien Chevallier wrote:
>> From: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
>>
>> Introducing of the generic access controller bindings for the
>> access controller provider and consumer devices. Those bindings are
>> intended to allow a better handling of accesses to resources in a
>> hardware architecture supporting several compartments.
>>
>> This patch is based on [1]. It is integrated in this patchset as it
>> provides a use-case for it.
>>
>> Diffs with [1]:
>> 	- Rename feature-domain* properties to access-control* to narrow
>> 	  down the scope of the binding
>> 	- YAML errors and typos corrected.
>> 	- Example updated
>> 	- Some rephrasing in the binding description
>>
>> [1]: https://lore.kernel.org/lkml/0c0a82bb-18ae-d057-562b
>>
>> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
>> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
>>
>> ---
>> Changes in V5:
>> 	- Diffs with [1]
>> 	- Discarded the [IGNORE] tag as the patch is now part of the
>> 	  patchset
>>
>>   .../access-controllers/access-controller.yaml | 90 +++++++++++++++++++
>>   1 file changed, 90 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/access-controllers/access-controller.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/access-controllers/access-controller.yaml: access-control-provider: missing type definition
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230929142852.578394-2-gatien.chevallier@foss.st.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 

Hi Rob,

Running:
1- make dt_binding_check | grep access-control
2- make dt_binding_check 
DT_SCHEMA_FILES=Documentation/devicetree/bindings/access-controllers/access-controller.yaml
from Krzysztof's slideset

with

pip3 show dtschema
Name: dtschema
Version: 2023.9

and

pip3 show yamllint
Name: yamllint
Version: 1.32.0

I don't see any of the errors reported by the robot. I have to clone
your repository to reproduce it.

Should I resubmit with a clean dt-check using the latest dtschema?

***********
However, I get:
warning: ignoring duplicate '$id' value 
'http://devicetree.org/schemas/reserved-memory/framebuffer.yaml#
warning: ignoring duplicate '$id' value 
'http://devicetree.org/schemas/reserved-memory/memory-region.yaml#
warning: ignoring duplicate '$id' value 
'http://devicetree.org/schemas/reserved-memory/shared-dma-pool.yaml#
warning: ignoring duplicate '$id' value 
'http://devicetree.org/schemas/reserved-memory/reserved-memory.yaml

Above warnings disappears when switching to:
pip3 show dtschema
Name: dtschema
Version: 2023.7

The above YAMLs seem to be duplicated in dtschema's latest version.
I guess it's a synchro that needs to be done since:
https://lore.kernel.org/all/20230830231758.2561402-2-sjg@chromium.org/
***********

Best regards,
Gatien

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
