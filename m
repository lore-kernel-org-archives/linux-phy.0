Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87286C64EC7
	for <linux-phy@archiver.kernel.org>; Tue, 28 Feb 2023 17:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMnFoECgEqcY4LOxGXYdAFg5OFfjl6xeGXADng3Gfzc=; b=guH5gLvb++fsdb
	beV0Yv60A7ByUsoCDJeWzM70y5JV4EEW1EKz7nCtdY7eKVZ5Rpy7IZ9Z1w6zOXCdTc6JFCxyhP0cf
	ij9AGPX1kXNmb1atSlsWANHOdiunfr50GwPu5a71H8EEtpLYIivQduBgGU6I4lin2zS4qc+ojbdNo
	0weAYrDEKmuNx/0wWOUJITH9YUMEEyAHdBjn1dmPQioblyl7ock8+Q8y75HOBt9n2FjTG+Y7ky8ut
	Ufj680qezKuDvq1uMMVaccpiPgwZar6QhpUngr+KQmM9XJFwaow9Ouz0KmdJ/0OBnBn5OLy45M5DL
	b7ADMrVFdtCPT8P1csVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX3mQ-00DsSM-UL; Tue, 28 Feb 2023 17:28:46 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX3mO-00DsRS-0f; Tue, 28 Feb 2023 17:28:45 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31SDbjhD009965;
	Tue, 28 Feb 2023 18:28:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=5sU1MYw+h2bs1Kph7VN54clioQ5rOSLy/OOrJb/uFh4=;
 b=OyPmh8DgcXRNN/QBmFY7y6jcAOMIMksQSBwfdnKZhgzKmV5+KYYz/LIdu1WMTAs+mP5h
 X9BuyUD7neC/nkXnCl+fxwF4vihksf6lAdc8mIR/m2E3rP868x7qVQ+izCoTzf0P3rf/
 cyjmvghBIif9RZxgCZAC9PxWcYWaizDhTdkH8aXLWVLY8QKJOUSSFWLNZhSCCGaGn0sb
 QdNpxVEwvD0E8x2ft4iLx9V7TDnf22uB4iSQr9FCtVqZbb/PfmbAr15Eu1eKZzOC5sEA
 hN5vlnQ1Xy6bVOvVMi9z1UI5e8lg1P638xh2IijenuBv7K5AdvSbCsc6JJFtoqaXuVHg FA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ny8mr3a3x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Feb 2023 18:28:25 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9AAB410002A;
	Tue, 28 Feb 2023 18:28:23 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 93D942291A1;
	Tue, 28 Feb 2023 18:28:23 +0100 (CET)
Received: from [10.48.1.102] (10.48.1.102) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Tue, 28 Feb
 2023 18:28:22 +0100
Message-ID: <27b9e057-bdd7-b4e6-445c-8da700423600@foss.st.com>
Date: Tue, 28 Feb 2023 18:28:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2] phy: stm32-usphyc: add 200 to 300 us delay to fix
 timeout on some machines
Content-Language: en-US
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
        <linux-arm-kernel@lists.infradead.org>
CC: <linux-phy@lists.infradead.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>,
        <error27@gmail.com>, <kernel@pengutronix.de>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <amelie.delaunay@foss.st.com>
References: <1869feff-06b1-17f1-4628-b433c858ad79@foss.st.com>
 <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
From: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
X-Originating-IP: [10.48.1.102]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-02-28_15,2023-02-28_03,2023-02-09_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_092844_619430_956ECE6B 
X-CRM114-Status: GOOD (  20.96  )
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

On 2/27/23 16:13, Michael Grzeschik wrote:
> An minimum udelay of 200 us seems to be necessary on some machines. After
> the setup of the pll, which needs about 100 us to be locked there seem
> to be additional 100 us to get the phy really functional. Without this
> delay the usb runs not functional. With this additional short udelay
> this issue was not reported again.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> 

Hi Michael,

Thank you for the updates,

Fell free to add my:
Reviewed-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>

Best Regards,
Fabrice

> ---
> v1 -> v2: - changed the mdelay to udelay_range(200, 300), like suggested by fabrice
>           - moved the delay to pll enable so it will only be triggered once
> 
>  drivers/phy/st/phy-stm32-usbphyc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
> index 5bb9647b078f12..dd469f57fba7eb 100644
> --- a/drivers/phy/st/phy-stm32-usbphyc.c
> +++ b/drivers/phy/st/phy-stm32-usbphyc.c
> @@ -317,6 +317,9 @@ static int stm32_usbphyc_pll_enable(struct stm32_usbphyc *usbphyc)
>  
>  	stm32_usbphyc_set_bits(pll_reg, PLLEN);
>  
> +	/* Wait for maximum lock time */
> +	usleep_range(200, 300);
> +
>  	return 0;
>  
>  reg_disable:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
