Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ED11CCD1BF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 11:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrZhQda2Yc4wdN3vnR9rqnEWFWmdYKBnM9C27sof/NU=; b=dYwxQEEiU7BnRq
	9bVZjb6bh278cvc6OGFLlpJADILxJ2jDaaLK7P/IwqTnyEwcX0rM8fBW56osoO+PdvyCKDzu3hSf0
	DbJV+/sUyxCBlVLJHIb3YgGbj9ilcZyFi9R/0eQwECiwhDmifNG+rQH5OwnaSF2A7BlOYCUB9FQ/C
	l1RT0vkWCeq/4GaGYAbLVyV+uCYrgD6YiMNanJiLq4tsBDEb2CDpbBdMfheu98+WKYGg9PPXetXBL
	Qhj9mzmyqyySk4Ruml51wCijl2/KNS7kD0ZlKMx2EyqIQPqAgmEROaQIRjEvyZ1QB2E5v/oVDK59i
	LZq4f48ijZAixuFv6InA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDhcK-0000000Fp7l-0pDF;
	Tue, 28 Oct 2025 11:11:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDhcI-0000000Fp77-01Ac
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 11:11:55 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S8rjBR2881785
	for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 11:11:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	opUtdQf4QfMq9eW5ijzGVRszcOjE71sRMPdyYjws57U=; b=RYXB6v26+vYPhlCW
	KKF4VCCEITpKOLNrnI1gTw4AV5aIiQj+sirAXsZ6mD8RPXAPXPeQY4FOrCfaSD8h
	ICKkft255d0UpDS7qABN2w8koXf3skvpcuw6repqcQwO3Flc+ueYVJIwhp6O4/o2
	W2bdn2mWWlNQh/bQfAa6W3gj2NDNfLMN2jwYsJKwB+kVPXa7+HgMtjnUM/Cm3L3k
	WjHzTscfOSpnQUy9NvZIQDIzCcx7wniuBZZ0psIt8SBdmYNSkWCAq/ekd1fmUouW
	ucgzIp24JLig6RQeoy8gOK7zSChbzE9rHeIwxxOyL/ZY6PkqV1F+BlUM56/kdRUu
	NaDdVw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a29uhbjus-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 11:11:51 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6ceeea4addso4490999a12.1
        for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 04:11:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761649911; x=1762254711;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=opUtdQf4QfMq9eW5ijzGVRszcOjE71sRMPdyYjws57U=;
        b=gm0f/Z1wnfBUZT/4DrSse/otepjeNIrt2EaNo5IMkrh30g8qDqJXoPBVmUWgqZwVdj
         3QHUeXE/HcFI0J7LzEJtDc50MNh1Lp/T8u4dJHP7cLJRKxgRQxcZbEKTIFYxPU7OUULD
         EAzBIzFmZOHXET6X/qq+D7jXR39uPpvaLDHSPM9TFcwnswSXqqYUjoww3huXYZj0JigQ
         UPFAxhGRwJlhRmiMZP1ovUaa8TiMZ5DAfvnJxcVZoTNfnHZCcgPCfK/H9JLTdL0W6l+6
         jM0pOWsYAR5HJObUOuldFv4Owdxs9Av9oHav7hXJku1xnjFBeUq7ZXT0bIu/gNTw+SSy
         qtVA==
X-Forwarded-Encrypted: i=1; AJvYcCWOsaxvGyYofi9rhvr+TxwaOUBI1PoHlbrxMcygKX6uFujZ+y3R8Gr6yY2HA0dsOp0FObKG3d6YuZs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0Nz8bcgclqYIOAapk4fehvjDF3GdghRZ1Y05UpIX3jltfI1ka
	n7id+CpqLplF0KB2xXDVE08R0HFt31KEkUsKWH6nA4E3YwevnLZogYjGqBIjbcRmysTIcvjf9q7
	AMG3wNuKwZwtxlEVUBpASV9GLyfAmd8xgx7naEImkhujVwe72NgbxKiuvdx+DCVXgwjER
X-Gm-Gg: ASbGncuVadjHghfMDUZ6ohOqkkF1kcd+UJiphiguOx9+jPmSKBbL5vd1Vsmu1c37TcT
	Q4FTnrJIOSOc/e4Aj8uln2dCV9urIZCvvALoYidotY5TxU8B+6yOBj4z5T+juIyPa5O5t55NaS3
	ePJch0l7Yt+tPmevQ0jGuyW6RXtPUUfXcu8QCzLnrp87v6aEDVH4t1j2X7l3JgIsjZQMK6p4Ixe
	bqZvFdVRZmiDF+fAjQFw58uYDsI2PbiNutP93VmEwC8Ln2MYdoAaQhGbj0Yu+j7guNZoHpO2gA0
	IMkAd776rUm2N9hyrtYXevgIrWsKgr5ci1CssCpNWuQcLTR4e/6v33OmD1Zg+YCk1fFqZCqB9LL
	lkVwjXZyxZ2BcBkX2bCYWmAPgIiA=
X-Received: by 2002:a05:6a20:9389:b0:334:a681:389c with SMTP id adf61e73a8af0-344d1e9d6f7mr4082418637.15.1761649911249;
        Tue, 28 Oct 2025 04:11:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEir10gLmpuIQM7ApflZtUrLLZhaDCqOjyulYgaRdAjRBHf/P6MEgnu6ky/ldUcH5shRkkc9A==
X-Received: by 2002:a05:6a20:9389:b0:334:a681:389c with SMTP id adf61e73a8af0-344d1e9d6f7mr4082378637.15.1761649910755;
        Tue, 28 Oct 2025 04:11:50 -0700 (PDT)
Received: from [10.218.10.142] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b712791576dsm10053265a12.12.2025.10.28.04.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 04:11:49 -0700 (PDT)
Message-ID: <17995927-b7fb-458a-a863-b03bd15e6073@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 16:41:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: m31-eusb2: Add runtime pm ops
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
 <daf0055b-7caf-4ace-8a06-071468273a37@oss.qualcomm.com>
 <1c52e759-15fd-462b-a9fd-ad620da099f5@oss.qualcomm.com>
 <e4f33bf0-05d9-4aad-b00e-fb7cc2c2633b@oss.qualcomm.com>
Content-Language: en-US
From: Prashanth K <prashanth.k@oss.qualcomm.com>
In-Reply-To: <e4f33bf0-05d9-4aad-b00e-fb7cc2c2633b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: FbZiCWrJRt3xmqA7uWNDmLSIPve_UkpY
X-Proofpoint-GUID: FbZiCWrJRt3xmqA7uWNDmLSIPve_UkpY
X-Authority-Analysis: v=2.4 cv=QuFTHFyd c=1 sm=1 tr=0 ts=6900a4f9 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_xMILRQ3MvDrwl_WGjgA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA5NSBTYWx0ZWRfX9PSi2pKGPMYY
 dC66ygkvHvW5xug2o0OolorhUYcC3YP31R3W6/prpb4WmgYEJLRy25OKoJlenFF+J1AsV8A2JRX
 3GexKwkTQkLy1CqWWsGM+ARvlBQDePG/IwQBPrarFnjJpnrx9eJgMoPven6sGfI79112pcASkvP
 qIwdHOFiR13d3R1FVIv70Drx5lRq6SbIJQ+bGTdDTvtXspOUE2i1NO7J/pIlPusq5jXfT0Cquka
 k4BOnk8Bj0MtT8bkuB7CUsIcrcPaPY5owRuuFdPW++Acw/eZ2UrsI2QkjViQYs/KDMvasmVZMD6
 zlb52r9+NnQ30fMe+WDQaQerwOW6O1yMi8hRh5yY0xi4VRQBzuRrf9iIyD5jj1jesN4c6gFHs+9
 pNpYQHd0ldNKPTCzfAr2HE64ffiBDA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_041154_058030_F93DD75D 
X-CRM114-Status: GOOD (  14.96  )
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



On 10/27/2025 4:41 PM, Konrad Dybcio wrote:
> On 10/27/25 12:09 PM, Prashanth K wrote:
>>
>>
>> On 10/27/2025 1:55 PM, Konrad Dybcio wrote:
>>> On 10/27/25 7:24 AM, Prashanth K wrote:
>>>> Add runtime power management operation callbacks for M31 EUSB2 PHY.
>>>> Enable/disable the clocks based on the runtime suspend/resume calls.
>>>>
>>>> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
>>>> ---
>>>
>>> [...]
>>>
>>>>  static int m31eusb2_phy_probe(struct platform_device *pdev)
>>>>  {
>>>>  	struct phy_provider *phy_provider;
>>>> @@ -270,6 +298,17 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>>>>  		return dev_err_probe(dev, PTR_ERR(phy->clk),
>>>>  				     "failed to get clk\n");
>>>>  
>>>> +	dev_set_drvdata(dev, phy);
>>>> +	pm_runtime_set_active(dev);
>>>> +	pm_runtime_enable(dev);
>>>> +
>>>> +	/*
>>>> +	 * Prevent runtime pm from being ON by default. Users can enable
>>>> +	 * it using power/control in sysfs.
>>>> +	 */
>>>> +	pm_runtime_forbid(dev);
>>>
>>> This screams "this patch is broken" or "there are bad issues" which
>>> you did not describe at all.
>>>
>>> Konrad
>>
>> Hi Konrad, I was followed the same sequence from other phy drivers
>> containing pm_ops. I assume the runtime_forbid is added to control
>> runtime pm from userspace.
> 
> Other drivers call runtime_forbid() because the implementation doesn't
> work.. Or at least historically the usb3 part hasn't been able to sus/
> res properly
> 
> Konrad

Sure, I'll remove the runtime_forbid call and send v2. Let me know if
there's anything else.

Thanks in advance,
Prashanth K

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
