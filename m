Return-Path: <SRS0=Pm1K=PO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F85BC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 26 Oct 2021 15:50:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CAC3C61090
	for <linux-phy@archiver.kernel.org>; Tue, 26 Oct 2021 15:50:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CAC3C61090
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hD46/5llsm9Na+CDzdrJfltE4hWU8XFpp89UYSUhmO0=; b=DJ/LNpSa423v5khD5ymkmc4hU+
	s4KnGlryquVR75G5MXOK7dnHxuuwC7yX++ZaYo6MbIcz1odfitgrZM1RN+ZHqbB9MEeyawIMmGR3m
	1itpwjgcdqkvh6aeezPKfwkMD41S6QLgioxQYxegf4cF9FOD2RY7uzibAcfuVTri1SUHM0lDNcuRx
	Gpc53F/N7dwYL0GgE90kzosPSoEkZREYnCSD4CJCfFx3Kr5JiIaBNGLqkI0DjJNVIHbP6mutyzRQg
	MUe/fqX9KikYYiVhClBbgJHm5zxizDOIiXYQySO7gZMLS8Jfz9QmY7ccttIMNn3kYOiHyYI/335L9
	15hha5Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfOj4-002FZe-Al; Tue, 26 Oct 2021 15:50:58 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfOiz-002FY2-1o; Tue, 26 Oct 2021 15:50:56 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19QFCEqe015340; 
 Tue, 26 Oct 2021 17:50:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=7SmDFUSVTJc6gIboFqRZL9sKdd+gL2b7ycoA8OY5yt0=;
 b=ta8zWYEwI1d9XDIyPUFgtxWZ6yCFHN7mfZVd4dq8x+PxBBU3HsEpbwZt5YogTFs17ezb
 II9PWCR+ZARca3pDBxmVypNeRPNJ1uNXoMmgs3K4MyDfRbqmSgOpQzbGQHn5QY+ujBSA
 K6Oi5jhn0dfu7db4alUdNmiPmDcXtNnIzptNj4slmjq6OhjzpGWgl8/mqOES8jpGPVfN
 krQqFur3CFcHmVOU+jpgkXTJ6CfN1HVrDJy4J2qLORha4Brh29XfcQZivkio8leDt48P
 kPEwEknR2vbCf+um1VSLe5dZmk0WLyFVokACsX6K416wyoI0+mI+UK7id2Tynv7+rmkt qQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3bxm40r967-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 Oct 2021 17:50:49 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E0A0F100034;
 Tue, 26 Oct 2021 17:50:48 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D8EA8221DC0;
 Tue, 26 Oct 2021 17:50:48 +0200 (CEST)
Received: from lmecxl0995.lme.st.com (10.75.127.48) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 26 Oct
 2021 17:50:48 +0200
Subject: Re: [PATCH] phy: stm32: adopt dev_err_probe for regulators
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>, <vkoul@kernel.org>,
 <kishon@ti.com>
CC: <alexandre.torgue@foss.st.com>, <linux-phy@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <1635172265-26219-1-git-send-email-fabrice.gasnier@foss.st.com>
From: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Message-ID: <0d889ca2-2538-ea17-5bfd-a3d137115223@foss.st.com>
Date: Tue, 26 Oct 2021 17:50:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1635172265-26219-1-git-send-email-fabrice.gasnier@foss.st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-26_04,2021-10-26_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211026_085053_420358_4F5268DB 
X-CRM114-Status: GOOD (  20.88  )
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

Hi Fabrice,

Thanks for your patch.

On 10/25/21 4:31 PM, Fabrice Gasnier wrote:
> Change stm32-usbphyc driver to use dev_err_probe(), to benefit of
> devices_deferred debugfs in case of probe deferral.
>  > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>

Reviewed-by: Amelie Delaunay <amelie.delaunay@foss.st.com>

> ---
>   drivers/phy/st/phy-stm32-usbphyc.c | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
> index 7df6a63..115be0e 100644
> --- a/drivers/phy/st/phy-stm32-usbphyc.c
> +++ b/drivers/phy/st/phy-stm32-usbphyc.c
> @@ -672,17 +672,15 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
>   
>   	usbphyc->vdda1v1 = devm_regulator_get(dev, "vdda1v1");
>   	if (IS_ERR(usbphyc->vdda1v1)) {
> -		ret = PTR_ERR(usbphyc->vdda1v1);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to get vdda1v1 supply: %d\n", ret);
> +		ret = dev_err_probe(dev, PTR_ERR(usbphyc->vdda1v1),
> +				    "failed to get vdda1v1 supply\n");
>   		goto clk_disable;
>   	}
>   
>   	usbphyc->vdda1v8 = devm_regulator_get(dev, "vdda1v8");
>   	if (IS_ERR(usbphyc->vdda1v8)) {
> -		ret = PTR_ERR(usbphyc->vdda1v8);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to get vdda1v8 supply: %d\n", ret);
> +		ret = dev_err_probe(dev, PTR_ERR(usbphyc->vdda1v8),
> +				    "failed to get vdda1v8 supply\n");
>   		goto clk_disable;
>   	}
>   
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
