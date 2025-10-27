Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6A3BCCF9E0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 11:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1yl67qqNBa0tyym5I70dhzXq+SWv6HGTfaY7No4/SQ=; b=wtTrsY5KHsgHro
	aKtfjDQStF4biZTtVXS6cm2rHV7QM3UA5QiLrXQPzd3ugm6KkPUTsSi/+BHVey+UTY+FP4K7hD9ZY
	GtXiG9HMoxiLJOQywK5lyyQPQczN09wPE0sHIxIECS9Sv1qDz53ecUEYY8QpqXS/3Ae5ga5Mg8iVJ
	urA3GmEEwOW+dKwiMPshFo5dmkEFb3LT3JvONfuD2OQNu3+281zf3ZBBdKsY2xoDBV5Odq5xOXEy1
	9M+iH6YCIPRTjr+XF1E9YJoNgmFdrYYksSIfZ9xAWphdkPD7X1bB5mz0BMzsKLq1ecixslRgXxacY
	jDnyd3A5URBvB0Cx3XXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDL8A-0000000DjYt-2f13;
	Mon, 27 Oct 2025 11:11:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDL87-0000000DjYN-4B7V
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 11:11:17 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R7n1fP581250
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 11:11:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H8WIQT23Q8Zg1BnAz2MWS0UE2kbwz+Q6IEFFa9VNqtA=; b=mLQKwzDyym9IA/DT
	sZZ0SGXb2BUHepEZibF2ZId8fduvszNKie29iwh/sBpQV7ZWCEnCGvIcrWzJBKIM
	HzoJPzC0XIDWKCxohVolVRMjPU12qbLhaYsdxHJFLmNSG3y1XjAJ4cceVK0Eorvt
	JccgRWzlhAU2b2Pc0x3PhQWzUNuA97PJXc+tcSQwbPJfykjXBf0es83C9Tmhtppn
	r5T+VaXR1Hjt2oyR5X/7pWSNXhp+6hxatZnAUL3ZWssHJrfGo8VpSx/8CNzX/jWR
	3IccZfaHG3fgu1sAvhqjPl3JU0Z6jGoNm9aiLPCgxipJCEImU1/NuvaneqQ75d4W
	M/E4+A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nkamcb9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 11:11:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ecf5ea6669so2134751cf.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 04:11:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761563474; x=1762168274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H8WIQT23Q8Zg1BnAz2MWS0UE2kbwz+Q6IEFFa9VNqtA=;
        b=aizhGS8INYmtw7XT+1h9/ONA47UIQJ//VLYD+wcgv4s7Tmcm6X4jSe9mOGKWNuWFJq
         ZGUbxDCBgrAtWyicLY5wSJVfFp9obY6L16XSB2Q/DVfAJMX4vxqgDlzH1wbgfVubq8hY
         miSlyDEBidcfrJYZ0V1n7GmaQYWBokvsIn148+bFPcPSkVbmk4UPCWAtPg6dRroNPpJb
         UiJWweHc/g1QFeROZyId7n+ixN/vkQiRoT6C4lag5cD9I9OYqFCt8Ab1B1syWwVgdhsu
         q9gUdJ0jjVfHPo46Hb6cDKov6/otAfWGYQc7Kr1tF1+ktGWmz7j1Wp/uP00/M7CJcPnO
         fL3w==
X-Forwarded-Encrypted: i=1; AJvYcCVbNhVncadkJovWUFUyWjJPPk/3UR45jg3JIoZQSiYvzTi5fjaIWNLJovVy1MXRuad3dW6iLm9ke2c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8c+du7m8I8n/LPr2M0oUnsvAqwYYWjv29nuVKfDTx6MDb/is/
	HwtZ5wYyCFD0UfhOyd2KB4NAETZmStejGP4q/QuHC7oI2jY1K/YHomvwO/nmRnn6rnWDKydB6O1
	UzymgvSbnH8t0YsTKOZvwFVdJfAAklT9CCaTjlFd9Le8vtScN5BLPsMQZ+Usal1G/H2Iv
X-Gm-Gg: ASbGncvdw5peBwBPgjoT3bg939ZFCItQbAI7Q69th3ib/W0/h/BgAeMD4dTnnZk2OOU
	fwHFojYywDRh78PlThluQ9sDCOISdYuCFMRrHT1RzZO7Pni0GGjxYqyySusyGJysnq9CLM2lrRk
	mUZnRc14bI96u4ifKesxZOSrFJM1PLUS6OxaWPrUR1KckGR152eQZH80Zihbu1AltfH3BhnN7eL
	GXL6aNGb9+lrwTFbcz9Kb5blcYU3aHN6bRRFEOTlmBz2C6QMu9UQk52J2lbf2obGqhK8N00EAFV
	l0W00PDgAbAfk8u7fSVTf7e+y1OLs7ICrcEuUmSVbyu6P4ku8AXnWupW+hxeuCDKacHaKd6eGgJ
	tffEqJpmTQmk8PeKOHzDqaS1xdz/a03lB8BZXbjRE+6pxcI2LnPRbFc92
X-Received: by 2002:ac8:5704:0:b0:4ec:eef1:52f7 with SMTP id d75a77b69052e-4eceef16c1emr45626221cf.11.1761563474280;
        Mon, 27 Oct 2025 04:11:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHp0McDYH82cpews6krOwb1okYKKV12xKV/8IeClVI/HE450oM4Yo+OS37OfzZ2SELE5qFANQ==
X-Received: by 2002:ac8:5704:0:b0:4ec:eef1:52f7 with SMTP id d75a77b69052e-4eceef16c1emr45625791cf.11.1761563473633;
        Mon, 27 Oct 2025 04:11:13 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef833besm5896053a12.15.2025.10.27.04.11.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 04:11:13 -0700 (PDT)
Message-ID: <e4f33bf0-05d9-4aad-b00e-fb7cc2c2633b@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 12:11:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: m31-eusb2: Add runtime pm ops
To: Prashanth K <prashanth.k@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
 <daf0055b-7caf-4ace-8a06-071468273a37@oss.qualcomm.com>
 <1c52e759-15fd-462b-a9fd-ad620da099f5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1c52e759-15fd-462b-a9fd-ad620da099f5@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=AYW83nXG c=1 sm=1 tr=0 ts=68ff5353 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=TkFh0mFV8F8mC-raymcA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: fC3Iaq27LTWuJXvlCZxpC5ZPzNtPc5RD
X-Proofpoint-GUID: fC3Iaq27LTWuJXvlCZxpC5ZPzNtPc5RD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEwNCBTYWx0ZWRfX4c08Eg0VWOCg
 xkWPMuzxim8uqliigXvpUb+fMrPApOGXMGRy5k5nhmuPEGH0yiXpec2NU1TZPuq9xphbTYuBlD9
 ocRcNvgMshJ+CDxNde2vlVx3Utk31zllktUtfCG38z9TuCQgrE8qPDCle1HPANqoeNZM4hw4o/W
 YylQ9YJgP/SQSg3HXrmUvWb8CBooMJp2fvGht/jIPpYbgz6bz7+LahfrIaTEkj+PBPnTftznIHy
 AY6xHtzzN1nqSMNlIMCyegWp8/qlNuFV80+pRVNiQNN99r9pfVkHQ3s8CyBh8shbn0wuxafdUEF
 XEWLIS1yBnfmd1ctMQRQtNFV8QXMiO6tF0XYxTAgNbbYz3OLH1KalnBlxQOjkRQE4z01ZWMLfOu
 u1Bw/6KBzmpg3wbwbYWSdP6naiH14Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_041116_175937_D3AA7D20 
X-CRM114-Status: GOOD (  15.82  )
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

On 10/27/25 12:09 PM, Prashanth K wrote:
> 
> 
> On 10/27/2025 1:55 PM, Konrad Dybcio wrote:
>> On 10/27/25 7:24 AM, Prashanth K wrote:
>>> Add runtime power management operation callbacks for M31 EUSB2 PHY.
>>> Enable/disable the clocks based on the runtime suspend/resume calls.
>>>
>>> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>>  static int m31eusb2_phy_probe(struct platform_device *pdev)
>>>  {
>>>  	struct phy_provider *phy_provider;
>>> @@ -270,6 +298,17 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>>>  		return dev_err_probe(dev, PTR_ERR(phy->clk),
>>>  				     "failed to get clk\n");
>>>  
>>> +	dev_set_drvdata(dev, phy);
>>> +	pm_runtime_set_active(dev);
>>> +	pm_runtime_enable(dev);
>>> +
>>> +	/*
>>> +	 * Prevent runtime pm from being ON by default. Users can enable
>>> +	 * it using power/control in sysfs.
>>> +	 */
>>> +	pm_runtime_forbid(dev);
>>
>> This screams "this patch is broken" or "there are bad issues" which
>> you did not describe at all.
>>
>> Konrad
> 
> Hi Konrad, I was followed the same sequence from other phy drivers
> containing pm_ops. I assume the runtime_forbid is added to control
> runtime pm from userspace.

Other drivers call runtime_forbid() because the implementation doesn't
work.. Or at least historically the usb3 part hasn't been able to sus/
res properly

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
