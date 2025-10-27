Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71423CCF9E0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 08:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Al8sMYVYyv5I3W++FsHC1o2Ug1RiJWsYE5dx9c+XzKc=; b=bxD/thM69RgdE6
	/6Gz4dcXnamiOasaj2odvkMg66ayXVu/44gM4H8rRW8pXsJdRhnVmiBiVHei/DN/O9fQlMOH8Bc18
	3aGyo3+yUS57my6livu182fbTGZozuOMiT0x2Fzjxk4G0cPHakp+XNhDh8Qr+jKIt6QkMjlfiF6zp
	mixNHQegjM1MYqOlwn9YqISRyvL1skZzANEtmy1QFCm/EP5TT3FVS/A/1rsT0VAq90RqeKQ3BghYQ
	3an/isfjPP1JHAcQcVd9Fyam7C7cZXJ5EPEXQUgL+XmjzWSkLTjQSr6g+TLnr5Q8rFL1Rnyuc2pSJ
	4vaSVGaY59TLj0MSxN9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDIXx-0000000DLUz-4AoO;
	Mon, 27 Oct 2025 08:25:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDIXv-0000000DLTz-47TZ
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 08:25:45 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R7p6KP888691
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 08:25:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rsb5IoKjQNN5TuHEex46Q/ZW+nK+3INVuz35ePkitGI=; b=mfUx5/xtkaV10vGm
	8STGARjNiwYeRqX0bwBI6nbAxM1A0AsGAuM5ibwEdS3wHqDp56/oQMXN56nSVWMI
	I6x4oEnzNHDHxrQxp/mpGIBJJFbbr1lpJrzzbJMU4n3MkwmOYorWC05mvEU7NVOp
	W+BTO0vjq9MDUsCzpAHIGoB8Ee783w59+dU0t5Sq8eaOz1ihkQgkUWKDnjxBy7/S
	QzQoMbfCxcAiE7xu25oUYgwBv1UqWOMjG0oqBbFj1W1eR8bP9/4lChyZcri5lEwI
	Bm0elhYmdACDw/b6xCBLRxZZt4ab8gjLOkaHqVudwBJNVzphNAhI+bs1CX5BzWF4
	9/zZ9Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nnb3wmh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 08:25:41 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-87c0e043c87so13074246d6.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 01:25:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761553541; x=1762158341;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rsb5IoKjQNN5TuHEex46Q/ZW+nK+3INVuz35ePkitGI=;
        b=DoXcDxzGbyYBKIxGL4sSp7wOmh3nOI6eBf5YHcl6Ptd/vUa5OdOzI14gUqBDIF3qjE
         1eLCXwnETYY208tpaIFTEHyrm3AMDg3c/HcOHSGxtQ4IIatVFd4JZ4P//Noqy9ti3On0
         +PsvrCqUDYCFNJL4FTjUXRJVXy7QdaTEP4/MZq3XCVeGHgguHyz6PYpwxdYe3CgpIJzA
         VY1gln0xVBn+zDw4fe/WIAF2DqpD6rE+W0UoD8FPyFE8pSRanHApFCeTCBaAdlrcjVLK
         ARR/bRvSerzQ/Kt926YTwrPw76SVlwxgzu2UqAVKYFE7f8kaRRC6My4tOFwznOZv34PN
         /1JQ==
X-Forwarded-Encrypted: i=1; AJvYcCWW7K/oWHuG/03CoDmVl3YoNUlc65oeuaEAa9a4xCEooeQQG7zoZU7WdDc9sd1d3DK9m7k3RNruwKg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6JoSfeIfgetBf95Q5gHj//h2ET3Xrj6zJzfHtaow+ZosgBjty
	aHKOMpgEWOXF9jpQZn5NYZK/1WJlxkflYdLZPo/jQuen+JfTcv8AcF9u8UHaXLUaaR8N2X/zA6U
	76+eZ4w3boYJIeZ3e5g7DIUK/QnKWc29kQnvsfJvnWz2zIEyB2+gOHxHYAtm36XVk/Cpy
X-Gm-Gg: ASbGncvOFnrgAhdLjK7U+npHmAWBzR3DBhrdw7RM9vNPzQOfesAy7EsrmwrIs/lD429
	cLFs2VKMTHxtJ2sAIJhidu87Hi2cnzz+2usykDcV/CyDEiyf+amPeYV6UzkuGtIf7npM5DPNhRC
	fXmSnQSg5+2ctCG/LehO2Wd5dVs9bdiXPhI7ANHUauE7s3Y5mT6vmLnL8bCXEay1YPMAU+klfhw
	3koJSYhpS5QBh+15owW4D6fHTqBWrvUzsix1t0mYZC6SwIGIwmV0fMaZdGRPSuE2Clv1Rlkc9Qb
	/q6z99zDM/8wLrXzyEksBSPGwW8jFH7/E6OVxbK3LEIoMamlqRyUrtt57MqInXll5Z+gnWrdpzh
	WSoabjJdQieen7KLs2e6wvbjsRRncb4Jd97yrLP3f+0MFbpmKFri8m5x9
X-Received: by 2002:a05:6214:f05:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-87c206aa6f8mr294428536d6.8.1761553540628;
        Mon, 27 Oct 2025 01:25:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWO4UfxTU1BX5oTeeqL0Gs4K66cPeHuRqQeCNBm97cuVqGohCsQt/0ok7E7/fOVHrIRAJiJg==
X-Received: by 2002:a05:6214:f05:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-87c206aa6f8mr294428506d6.8.1761553540138;
        Mon, 27 Oct 2025 01:25:40 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85359c0bsm704420366b.24.2025.10.27.01.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 01:25:39 -0700 (PDT)
Message-ID: <daf0055b-7caf-4ace-8a06-071468273a37@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 09:25:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: m31-eusb2: Add runtime pm ops
To: Prashanth K <prashanth.k@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
X-Proofpoint-GUID: 5TiKVFHcgaA_LebOye5l4sl79QN0nSUa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDA3NyBTYWx0ZWRfX9b/JkurliR6/
 gAlYZaJKvCXSO74lyB24ZJkamZvCuVWolNIWGs1VvCJcPvY0HQgL/+h+xQSNnA9ew3S/EW2PAAZ
 U9kB93Nj1o5gm/+zol4Mia32aQ2/1TIcq5cA5v7S4JcI9H9LtObq6dqSQykSna/sVDikF+AmM4D
 Hh/XbAeF95dY8Jts/cExi5ga3KUTO72tIt1mwKOAe9XXJLGybKfcK+zO/jDd477qZYsu1HH6d9+
 FTqAN50kWoophXkWYJybR6+vqnV7PsMts8wRU7Ds5Rq18Pq1HDnnZbrmtl0C6HyJiOzNY1Qt7NQ
 M3zpHbzbd3Ps/M5QFwS/ujNtCcLXnw6PG0FHpv4Epqg4lBcLbNQZsQ6t1AS2JkvBKECbkP2j3H5
 RNeTL/lelNJ+eob/mkMttJJ1Pp4ANw==
X-Authority-Analysis: v=2.4 cv=AJoZt3K7 c=1 sm=1 tr=0 ts=68ff2c85 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=k3wdqr90-_sLWsnx9DcA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 5TiKVFHcgaA_LebOye5l4sl79QN0nSUa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 phishscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_012544_050229_DE86E3A6 
X-CRM114-Status: GOOD (  13.45  )
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

On 10/27/25 7:24 AM, Prashanth K wrote:
> Add runtime power management operation callbacks for M31 EUSB2 PHY.
> Enable/disable the clocks based on the runtime suspend/resume calls.
> 
> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
> ---

[...]

>  static int m31eusb2_phy_probe(struct platform_device *pdev)
>  {
>  	struct phy_provider *phy_provider;
> @@ -270,6 +298,17 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(phy->clk),
>  				     "failed to get clk\n");
>  
> +	dev_set_drvdata(dev, phy);
> +	pm_runtime_set_active(dev);
> +	pm_runtime_enable(dev);
> +
> +	/*
> +	 * Prevent runtime pm from being ON by default. Users can enable
> +	 * it using power/control in sysfs.
> +	 */
> +	pm_runtime_forbid(dev);

This screams "this patch is broken" or "there are bad issues" which
you did not describe at all.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
