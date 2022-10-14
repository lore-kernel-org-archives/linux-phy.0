Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EED2C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 11:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AYHY7Ih9Q8GeYkL7lSORftGrBWCjZoKSEZorH7vCvQ=; b=Qb7YgnIm4DOrnW
	agvwBQspA02B5EOBvbmKD0XLu6XUkwJD65xCJB6ChZHzJ6ETqdFjUu/XU1vxi92V8F0vCpzWEPWLT
	liKsaSLcOzIhmnsZjy3y9Snlbl3FE9NHxtwsZ9pUovFUGnbYfc7BOhZQOh8Vmpce7OkELuOtPdUHL
	FTEZcsFJDbr26ftsdUg0yNXUwc1faiiiUO7DNcEYJiI2SB+IshyVbLb7ceuPqNE+djhFVaHlADAA0
	K4R/InLUUb0m4E4qDC3nsZVYOXDy+/CZV7LJXLbmikcsZVSJHeQxLM2s3Wx4XisFFZGIAtTZXqAlA
	33JyArGHc0YPb1Oceg9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojIWI-00EUTc-Tp; Fri, 14 Oct 2022 11:06:26 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojIWF-00EURb-Q3
	for linux-phy@lists.infradead.org; Fri, 14 Oct 2022 11:06:25 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 29EA9xHV019178;
	Fri, 14 Oct 2022 13:06:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=MX4vQzooU9FWmgeS4cufdErYDqEDeethW/UcWxF6rlw=;
 b=X1QxtzFRW+kZ5TDf7e1M95lKCBFPkGKvMY/nCzG5mLCW9uOkKNIznPdVD5cTmi57s1Qv
 47zk4XNQDkiW2K/KCd4sWazrIV+z6av5X01Oo1+NtZ1IiS0iRkTOQuC0Y4V4zZFZ0QRe
 Aqc8pbIwYzOpq7zUqOxIyqmeZ5YpiFtV65aloDBDPpObceVm11fddD5n2DLb0zELiZRI
 WU8j7QQnjkceXMlXkOpjf0MG+md1pFv5uR4RJpv/zBi7hCVAdYR5hdzwJs42yaOzCt9p
 W2RRpdqykl2aFfJ3omKsJDsbmXoGO+noL46GXmeRN0rdaNJDYjiOl/Huc/2gEEyn4w4m 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3k75sd8d64-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Oct 2022 13:06:09 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4995410002A;
	Fri, 14 Oct 2022 13:06:04 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 43CA821FEBE;
	Fri, 14 Oct 2022 13:06:04 +0200 (CEST)
Received: from [10.252.26.147] (10.75.127.121) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2375.31; Fri, 14 Oct
 2022 13:06:01 +0200
Message-ID: <53b35e0b-799b-c404-66cb-4ce4307b4970@foss.st.com>
Date: Fri, 14 Oct 2022 13:05:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] phy: stm32: fix an error code in probe
To: Dan Carpenter <dan.carpenter@oracle.com>,
        Kishon Vijay Abraham I
	<kishon@ti.com>
CC: Vinod Koul <vkoul@kernel.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        <linux-phy@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <kernel-janitors@vger.kernel.org>
References: <Y0kq8j6S+5nDdMpr@kili>
Content-Language: en-US
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
In-Reply-To: <Y0kq8j6S+5nDdMpr@kili>
X-Originating-IP: [10.75.127.121]
X-ClientProxiedBy: GPXDAG2NODE4.st.com (10.75.127.68) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-14_06,2022-10-14_01,2022-06-22_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_040624_382516_A901E6D4 
X-CRM114-Status: GOOD (  16.59  )
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



On 10/14/22 11:25, Dan Carpenter wrote:
> If "index > usbphyc->nphys" is true then this returns success but it
> should return -EINVAL.
> 
> Fixes: 94c358da3a05 ("phy: stm32: add support for STM32 USB PHY Controller (USBPHYC)")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks Dan,

Reviewed-by: Amelie Delaunay <amelie.delaunay@foss.st.com>

> ---
>   drivers/phy/st/phy-stm32-usbphyc.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
> index a98c911cc37a..5bb9647b078f 100644
> --- a/drivers/phy/st/phy-stm32-usbphyc.c
> +++ b/drivers/phy/st/phy-stm32-usbphyc.c
> @@ -710,6 +710,8 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
>   		ret = of_property_read_u32(child, "reg", &index);
>   		if (ret || index > usbphyc->nphys) {
>   			dev_err(&phy->dev, "invalid reg property: %d\n", ret);
> +			if (!ret)
> +				ret = -EINVAL;
>   			goto put_child;
>   		}
>   

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
