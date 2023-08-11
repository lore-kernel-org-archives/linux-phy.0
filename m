Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04A19C0015E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Aug 2023 12:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/QITGLMBIyDGQoPKYWsWOUeiJNTOSKEPoVwDpFMjmE=; b=Xk0RVQNoH34Lz9
	OpnoqoTZMQbMmc0ScA4AD2TZVoKKumStUKG7Kuch9wzhGcxo3sCk+tEWpWdOCmuuWZA7Ko68FdVSN
	eX90oIAi+ApnHI2fPYHB7VwgYEufhrMYzI2eJ5yNBYTivrmXyVvKIEvAEdgijtRFhOJ9DTiXHEM9q
	h5coB546B1c2XnUfpRgbhASYWstMl2BvJuzOLMaX+siro1iXj1GdN6ojvoEjS4ev8SA2ZM+TpGBwx
	2iheXuyZhb1zHhTsCjzaJD8jnCv8Smv2t++bMmHs0qwEsKCYkPHdgSjyf6dQ0EqPp3VLDGpaXDEwV
	Uzih8a/sivM1L9t9vRLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUQp6-00AWPK-1x;
	Fri, 11 Aug 2023 12:00:56 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUQp3-00AWNl-1C;
	Fri, 11 Aug 2023 12:00:55 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37B88G8v008911;
	Fri, 11 Aug 2023 14:00:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=YFHcudHf3KpEu6VK+Oi7sDZa7u7aRH57T4p90BFxYt4=; b=kU
	O35PwDwyu9KjgW31K5h+6ypqbjSO6SxBadYITZWgPgbjcx7JybnAtEPYUufCNZ1c
	UmcJYsfb4v5cYrhDkibKKDxm5TpRLh/usyV9eplTbzPk8FWxlpA11SMe+tWFoHtE
	nXPAN596HtBzcvDnDHR0ekdCH486R0r+TxPzL9tozmYQYoPWnnLGInYl3MRzO4Ve
	mX/GHIkPAIGcQsdV9V/wrcIE3MhSv5JVpUfvddbdbHMcOV/6LpEQ9KIuJdAz19XH
	RJctqFi0wSAJ+BRNaqX/iLjVk/ggN6VW/unTU9UDPsJ6xBkOROMcl3YQW+ceqGTb
	HV30OC1Vqh+PAlrRr7vg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3sdh74h9vb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Aug 2023 14:00:29 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 64D9710004F;
	Fri, 11 Aug 2023 14:00:27 +0200 (CEST)
Received: from Webmail-eu.st.com (eqndag1node4.st.com [10.75.129.133])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 287D02171E0;
	Fri, 11 Aug 2023 14:00:27 +0200 (CEST)
Received: from [10.201.21.121] (10.201.21.121) by EQNDAG1NODE4.st.com
 (10.75.129.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Fri, 11 Aug
 2023 14:00:25 +0200
Message-ID: <4f0f9d6c-ce4d-73a2-60bf-801c1a1d6cc3@foss.st.com>
Date: Fri, 11 Aug 2023 14:00:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [IGNORE][PATCH v4 01/11] dt-bindings: Document common device
 controller bindings
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
CC: <Oleksii_Moisieiev@epam.com>, <herbert@gondor.apana.org.au>,
        <davem@davemloft.net>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <alexandre.torgue@foss.st.com>, <vkoul@kernel.org>, <jic23@kernel.org>,
        <olivier.moysan@foss.st.com>, <arnaud.pouliquen@foss.st.com>,
        <mchehab@kernel.org>, <fabrice.gasnier@foss.st.com>,
        <andi.shyti@kernel.org>, <ulf.hansson@linaro.org>,
        <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
        <hugues.fruchet@foss.st.com>, <lee@kernel.org>, <will@kernel.org>,
        <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>, <linux-crypto@vger.kernel.org>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20230811100731.108145-1-gatien.chevallier@foss.st.com>
 <20230811100731.108145-2-gatien.chevallier@foss.st.com>
 <2023081117-sprout-cruncher-862c@gregkh>
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
In-Reply-To: <2023081117-sprout-cruncher-862c@gregkh>
X-Originating-IP: [10.201.21.121]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To EQNDAG1NODE4.st.com
 (10.75.129.133)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-11_02,2023-08-10_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_050053_728494_4F4FE4C8 
X-CRM114-Status: GOOD (  18.18  )
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



On 8/11/23 12:16, Greg KH wrote:
> On Fri, Aug 11, 2023 at 12:07:21PM +0200, Gatien Chevallier wrote:
>> From: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
>>
>> Introducing of the common device controller bindings for the controller
>> provider and consumer devices. Those bindings are intended to allow
>> divided system on chip into multiple domains, that can be used to
>> configure hardware permissions.
>>
>> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
>> [Gatien: Fix typos and YAML error]
>> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
>> ---
>>
>> Changes in V4:
>> 	Corrected typos and YAML errors	
> 
> Why are we supposed to ignore the first patch in this series, but pay
> attention to the 10 after this that depend on it?
> 
> totally confused,
> 
> greg k-h

Hello Greg,

I'm sorry that this tag troubles your review. It was first suggested
in [1]. The "IGNORE" means ignore review on this thread, as it is still
under review in another thread (Link in the cover letter). It does not
mean that the content should be ignored for the series. I will change
this to something else as this is obviously confusing the review.

@Oleksii, can we imagine integrating this patch to this series or do
you prefer to keep it apart?

Should I consider a resend with another tag if Oleksii prefers to keep
this patch apart?

[1] 
https://lore.kernel.org/all/1e498b93-d3bd-bd12-e991-e3f4bedf632d@linaro.org/

Best regards,
Gatien

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
