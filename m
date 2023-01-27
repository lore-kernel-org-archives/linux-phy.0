Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C9A1C54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 17:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7iOmFmOuD+Pp84/hGIDg//mUOB0n8zvg7lg0LAS6gk=; b=dZF0LsT3IKGEK8
	CpUNOoaKkqyJ8WmM4E801SVUe4F3Blhfe+5Vf8o1WnNlH4vZwLcVx1b/Jfin4a8BQGeW/muunLdR6
	ZGx6MlQ9FvZNCr8/0QRfua1tpIjG+uHEIpLjZfTgTC2YlEdPRXbULI8lP6t4YCK+KG5JBlGFXYQ0g
	wykgFfbhxpJaxNDp/lHNjuIXBiccw40qJQB/WzvcawVLNWYAlPplFniJSoFSXGrkRkLwCXc1q4J1q
	LnZBM5WZ7JiHLfoTYRbkqsODgfuyS4aG9YY8qEMy2A+cBDlqRycGioOPeEYebFItc6lJMuBh9nfzC
	6eR41JXe8a+vBSnlKHEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLS72-00FrNI-MW; Fri, 27 Jan 2023 17:02:04 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLS6y-00FrM4-JL; Fri, 27 Jan 2023 17:02:02 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30REGmZ8019692;
	Fri, 27 Jan 2023 18:01:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=QNH1ux7cYrF5KW+Ey5DCbKnkWudemJAed1CdOisOzwU=;
 b=aWrFglN6WN9lJ9UfkuNRCOf+eZLqOK/K/MwebDvkvlJ9BbraR7IaDQjfWJsuxG3qEl+w
 /zcbla1ATkb34/cgfv+jY98hV15W4tnl5ImuyPNlwMV+YJAdJjbH1aopG15aLRkh8wmM
 l4dhdDRjV+hC6xAWQteP9ugkWvZRUn+2SbiSOelz6JrhmEzzjMybo5hBxA3Bcimg9qnY
 zdsENVEPxj6CymobQqyNOE70uQpKyrM9lu7NqbOzhejcg3jASSLXeSHG2+UOFLtTC114
 gDpaZ6/KFUEeQG46+8MaDOHr4QDhzeheFE/3snJXRXDYFzO0erPQuMETrlvse78cpBw2 ww== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3n89chde7x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Jan 2023 18:01:06 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8FD5D100039;
	Fri, 27 Jan 2023 18:00:43 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6F28D21F0C6;
	Fri, 27 Jan 2023 18:00:43 +0100 (CET)
Received: from [10.201.21.177] (10.201.21.177) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.13; Fri, 27 Jan
 2023 18:00:40 +0100
Message-ID: <179fe90c-0ac9-bb43-6e49-8b1d7ec520df@foss.st.com>
Date: Fri, 27 Jan 2023 18:00:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/6] dt-bindings: Document common device controller
 bindings
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <alexandre.torgue@foss.st.com>, <vkoul@kernel.org>, <jic23@kernel.org>,
        <olivier.moysan@foss.st.com>, <arnaud.pouliquen@foss.st.com>,
        <mchehab@kernel.org>, <fabrice.gasnier@foss.st.com>,
        <ulf.hansson@linaro.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>
CC: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20230127164040.1047583-1-gatien.chevallier@foss.st.com>
 <20230127164040.1047583-2-gatien.chevallier@foss.st.com>
 <1e498b93-d3bd-bd12-e991-e3f4bedf632d@linaro.org>
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
In-Reply-To: <1e498b93-d3bd-bd12-e991-e3f4bedf632d@linaro.org>
X-Originating-IP: [10.201.21.177]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-27_10,2023-01-27_01,2022-06-22_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_090200_934637_BCDCF78B 
X-CRM114-Status: GOOD (  18.55  )
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

Hello Krzysztof,

On 1/27/23 17:49, Krzysztof Kozlowski wrote:
> On 27/01/2023 17:40, Gatien Chevallier wrote:
>> From: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
>>
>> Introducing of the common device controller bindings for the controller
>> provider and consumer devices. Those bindings are intended to allow
>> divided system on chip into muliple domains, that can be used to
>> configure hardware permissions.
>>
>> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
>> ---
>>
>> No change since V1. I'm letting this patch for dependency with bindings to
>> avoid noise with dt/bindings checks. Therefore, it should be reviewed on the
>> appropriate thread.
> 
> There was a v6 already, this is v3 and I don't understand this comment.
> What do you let? Whom? If it is not for review and not for merging,
> please annotate it in the title ([IGNORE PATCH] or something).
> 

Sorry for not being clear in the previous comment.

I meant I'm letting this patch in this patch set so the dependencies on 
the feature-domain-controller.yaml file are satisfied.

I will annotate it with [IGNORE PATCH], as you suggest.

> Best regards,
> Krzysztof
> 

Best regards,
Gatien

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
