Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F213606A330
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 20:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ThmVzDaB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ZqJwLEzn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=N/tbwZAV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=janjJfbM0jih0hlcE53aVy9PXO4LRYULAfxpaRReF8c=; b=ThmVzDaBIJLgkMXvKjRZWuLKLQ
	Nv9KNd7FaIKfwRJXvRB77r1CNa0inCX7OpWpHu1PTVcgRZ11cjk1q1t980+MiRPsfSAa38frivpnC
	nJ925mmnpmgrKe41MsaBWDmIAjd/Im1R9NBw93GvwGp6nrM3npVoEfMMuLBdygX75NYNwWVc8T63E
	t81mCObUa9+9mjB424+IG990shVK6YjM8FgBONGMOAeAmefazEuIYzbts1/C/oawrky66XZq37tho
	k4F6WZOJ2TvT+Jy9gTjISq/a0455DoRiYC/dM0Q4uzyOMk1utefuImqNi0ur94ePei4aYGeN489wB
	N3ATmNNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTPyT-000000071zI-2MT8;
	Tue, 17 Nov 2026 20:40:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTPyQ-000000071yq-2mGR
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 20:40:15 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AHJ6CTb1419611
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 20:40:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6EdTFJwYriIb4IdCOT1qSEgGV4PWIdtBBRJW54ecre8=; b=ZqJwLEznxyO5/+t9
	dNksUVKxE4vWPKKN0pfkdNvMjGadFAsLAucDT7lWDgUjXtN2fAurs11GjG4SsaFb
	4d5VSun5AOUeKU6IoL65fgo77p6jlB+vMsHkSGZPISXK8CGzbaYhhjRtTgom2YYX
	FmX0aqO5UD+Q5CE6LQ/EwDBxiqjiswmSggaboV8+trVAVXmz22a8EukWSdmbnhLH
	a2Zfy+vlPHfc7Yw6GRrKcCUXw3UdP3y1f78F3Doh0IxuOUdfw3hMSg6pM/vn+47l
	HM/T44CYjvXHPM3ToYlkr3lTvegCqxlFJeOXHRROHUsUzEo0MxN9L2QjM03O9B/A
	aB18XQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0qms20kt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 20:40:13 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3821eb27024so350819eec.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 12:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794948013; x=1795552813; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6EdTFJwYriIb4IdCOT1qSEgGV4PWIdtBBRJW54ecre8=;
        b=N/tbwZAVJHZE+584Z7Qx/l+qETZb5RCJ78/E5GPONJoyfSAh02EZvvEcq30iZ1avxb
         Wc/vhLE/QUhEQzljSXCcraL8KF0li84ycYd1SvyeSGLQWdL+f/Zl1AiwP5vNFN9+UuMb
         qvv0fmJAdPqTGgNRmCOJHVet9eXPVBOtwwcG79gkmJROT4gLT9NWSAnXQ6tjMwrEEosH
         4JM7Aba4i2QX4BA8Zq2w92TqxkJBmc3+QmxRj9F5nvZlXC827ESn8spxZ2CWtDqJXNhF
         +WzaqyLV2biPJYg9aWz0hRGctqJaWicfPX87OPNSHn4XZWDXFOr3tAZeYt/f36+mzsa0
         AEtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794948013; x=1795552813;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6EdTFJwYriIb4IdCOT1qSEgGV4PWIdtBBRJW54ecre8=;
        b=DxS0Fm7O2j17aDtztLHBLj4HSt61Jl/WoHH0A5ceI0GZ80mgsO5mIRvK1YmtL0yVyB
         cH9c4mXJ6ECLZxOARRxBxOZmVYpaXD9HC0ktNUtNiqbkWEWQaIlLeEUwS2vVJmFjYWzZ
         YpYzOCh7fVxPyDv1QWuwuNq2uarSMbLdZrs0nkZYrVMEJN0hKKd/RxsJemNklVYSs8BS
         bZqMJeSeLN9KVLHOb9mhFkKwnMz9tacVNrHgnqKHlhzsAZ2W9VYgQGlZuQbShWf41Gqv
         J29fPe10PPxWiXbX/4tQ9aRa+xJQ+uyCkdRdfDN5MKCd5nQoDLygrBjcTIM+l2i3dFKE
         ix8w==
X-Forwarded-Encrypted: i=1; AL+hErH3uQEyRCebh57fWCuhX5+dLWi/cEIsYGolJk+zSjD3HsRI94Jk1zYcE9TJo1/F8rtf5qYNJ/juFME=@lists.infradead.org
X-Gm-Message-State: APuU4Z9dIu7EbOb/FJEuKR6fRunHP/udml3/NFe5Q/DOXuDGA1R11TRW
	bIbEQyibdSIqN63Dj+LwoIRlsUmuZEx4pVlnHDkl9YDWG2rOreSWeZ2/uMHOXaqKhD3PXDlVAnG
	vx5ItsUnmvQXkeZQOGtBSoJl7eDYMDBaDtTUU3YjGwcmR6UhoPOsMVWhXGpl9KDau4/YYMkPDfA
	xp
X-Gm-Gg: AZFdTZeHUXpgo+i1n1xoGQ2ZszluUSt8MAJZT5YdW3RyWunvjLQ4ty9WRXFlj1eBChA
	3mIQ9MtQy4qH7o8S4JVim/JQoUvSoJ+eTLytyeB1wFuFoKRjLGgYwPnfXeUDsiQeetqLpGbJPkj
	Yqamai+ZhuILm7wOM5rOWkGsdFtan8bG1bUr+OuNlAjYA7oZ/n+W3GugBK9MACf+Mr/j6lReOza
	Sp+iGh3Cpie/AhhPL+s5N3KJdp0rK28YXMlXtTRCrTgXze89UpP4Otem6K2wJyCcZefAhmPafiq
	0q8tHE/roocX00acO0kFTPdpbEHxruwaS7HHMPUSDpSY4YF9tTU0VhHXTFv6RYRXtE/bfvLLiKR
	SNun6pIHMZOchNuDllZYIxHoW+nMs7Zgc//WL7G5l/LsE9lt5fn34T0TsT4Zi0XdnihVJWTrm9X
	8tU/1Z/9uGFHeLjyrnC6pRFQ==
X-Received: by 2002:a05:7300:de4c:b0:36a:1f4f:3e9 with SMTP id 5a478bee46e88-3828101de20mr538647eec.20.1794948012316;
        Tue, 17 Nov 2026 12:40:12 -0800 (PST)
X-Received: by 2002:a05:7300:de4c:b0:36a:1f4f:3e9 with SMTP id 5a478bee46e88-3828101de20mr538610eec.20.1794948011623;
        Tue, 17 Nov 2026 12:40:11 -0800 (PST)
Received: from [10.73.198.203] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-382a6304ff2sm456352eec.6.2026.11.17.12.40.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2026 12:40:11 -0800 (PST)
Message-ID: <c3a45db8-43a5-4aaa-9251-5f6231e83d59@oss.qualcomm.com>
Date: Tue, 17 Nov 2026 12:40:10 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: Differentiate clocks related to
 the USB block
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, jason.pettit@oss.qualcomm.com
References: <20260930-qmp_phy_usb_clks_v1-v1-1-d4dccc9eb263@oss.qualcomm.com>
 <c1abd9d4-98ef-4469-b4f3-94a8dcad9d0b@oss.qualcomm.com>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <c1abd9d4-98ef-4469-b4f3-94a8dcad9d0b@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE3MDA4MiBTYWx0ZWRfX4u6jJrezs/Ak
 T7vfKE7H74ZYRguUEzHoMWkMndd33Y7oyckazLPBy7f8sMvEfZf3cXZAsT9NN3AtfwSDpWQ03fo
 v4ugjbMZk3xI8qFlF2aimzV7S1fyftI=
X-Proofpoint-ORIG-GUID: NMsmgAnKDsICxjCBb3XpZrOBfxTVVCEO
X-Proofpoint-GUID: NMsmgAnKDsICxjCBb3XpZrOBfxTVVCEO
X-Authority-Analysis: v=2.4 cv=BIEmP1QG c=1 sm=1 tr=0 ts=6afcbbad cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=_nty3mnF_QhVk_yABmMA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE3MDA4MiBTYWx0ZWRfXyxkj7uXxHmrX
 w6zmjyKRASE0Y2ZwsE2Ygg20dH9owYrhIb9w4WF9CrN/zh+Mlver7QxuOxbnTzT0YX2JXZ0z5oS
 vMkXbseNarK46aPeL+qbbWJGXmDGYpCobQdSEr9JZiuvw/gvD7sRgwJCrCMQsSdEapFZVVMc4ZK
 ISAHx8tcW1pec/JrCOx5jcepd7guXtgXgSQH/uRn3lP9J0DysDIOQSaKnUrNdOcpyZai/SnUTlU
 YNWLFzrnhtPkvDsyeUvCZoGDFzDQA4JC/uuS5VL6jQWh/4q4h0Fhj6hPte2UUQts44SrSu9lrOp
 8sMkywBkTxAmUW2psVcblTODkcqXxsNkplCGZyuLIOnNjATDsNuUZN5mQheekXWTOtlrl3D3sGp
 GB/568FiWYPbcs13FJPpwVxgEcrYHCSd1SOZXqIpHBN4UCuU+zoVeDy1J5B8BM8cpC+gVdK1qO6
 K1ZJYBq15ZRRrB7d5JQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-17_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 phishscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611170082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_124014_743599_130F76F4 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 10/16/2026 5:13 AM, Konrad Dybcio wrote:
> On 10/1/26 3:16 AM, Wesley Cheng wrote:
>> The Qualcomm QMP combo PHY has a USB and Displayport block that is
>> sourced with different clocks.  In situations where the USB path is not
>> utilized, and only Displayport is active, unnecessary clocks are enabled
>> and not used.  Split the current clock list into USB specific clocks,
>> which will be enabled whenever the USB initialization routine is
>> executed.
>>
>> In addition, move autonomous mode control specifically when USB is
>> active, as its primary purpose is to detect RX detection and LFPS
>> signals, which occurs only when USB is active.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
> 
> GPT has the following concerns:
> 
> [P1] Don't disable USB clocks that USB init didn't acquire
> drivers/phy/qualcomm/phy-qcom-qmp-combo.c: USB init/runtime suspend
> 
> When USB4 is active, `qmp_combo_usb_init()` takes its early return and
> increments `usb_init_count` before the new clock-enable call. Runtime
> suspend then uses that count to disable `usb_clks`, although that path
> didn't acquire them. This can unbalance clock references; the count
> needs to reflect actual clock ownership, or the USB4 case needs
> separate handling.
> 
> => the USB4 state machinery is a bit fragile.. but perhaps an if or
>     two will solve things

Sorry, didn't get back to you in a long time.  I think this should be fine 
once I add the proper enable path in the USB4 init routine as well, since 
it is required for USB4 to work.  So now, when usb4 init runs, the usb_clks 
are enabled.

> 
> [P2] Unwind clocks if USB-clock resume fails
> drivers/phy/qualcomm/phy-qcom-qmp-combo.c: runtime resume
> 
> The patch enables the common clocks and `pipe_clk` before enabling
> `usb_clks`. If the latter enable fails, it returns without disabling
> the earlier clocks, leaving them enabled after a failed resume.

ACK.

Thanks
Wesley Cheng


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
