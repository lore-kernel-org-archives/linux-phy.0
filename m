Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECF3ED3B7D0
	for <linux-phy@archiver.kernel.org>; Sat,  6 Dec 2025 16:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoZ89UdLQAaRw3daYcbHZhXYSaJ+S9wCA3+xLP18AAI=; b=Rw92d2QNj9m/uf
	c4r8TZhzT1u9cIwu18OyFRJ39y7dOC9titjkl++YUmqkd7z+QV+/0/S2Bni3JAbPLFpUOG86W3QbV
	MVQdL2eEn6vvVgmtdlNk/4DWrxb3rtMt30YGqnMaLpSpmpCIIPWqOUFTrmxNC9RrZQicdBbeTbhMe
	man6u6XPOKZXy4wGb5F7k71QN3ECLLDHbrGN5SUul2qu+Ym0CtEF27sREE1YVNKKuDETSGAq6q1P3
	kVi6Pvy6dh0lwtnTVOMCyysnjFifQ2hHysRPERXSND/7IptZJOLV8KiC3l3f3N3wlo6q6zf47dzql
	X/3uTgFckaskm5H5yzMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRutU-0000000B3br-2vIY;
	Sat, 06 Dec 2025 16:12:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRutR-0000000B3bS-2NQa
	for linux-phy@lists.infradead.org;
	Sat, 06 Dec 2025 16:12:22 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B6AxKEh3464749
	for <linux-phy@lists.infradead.org>; Sat, 6 Dec 2025 16:12:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OcVXm5JIAcyGqoJflm6whI5XkmDpNUJ6dOT69v0sFpE=; b=SWXYd1btFwoRiND6
	APXPBBWva/xapGbLe6jvCaQoqCg7rFIzguszDcjP5q/VXt+fryuAbBjZoXp/g9v2
	5EPOvmdq8St19MJEzKJ0iQYQygljJBcW2/nI3R/7oa1FKRTSOfKTCZ3zv4n9vgH+
	t3v06kbPSGqzWn2/hNgOmrfPffchqpORgTn2PlFxoiFqaUJKmToHQmiuhkyWffWz
	NfTDkS7/xcmSnoRg+Hv+9BgPw9T1XUWT6BC50xZwZJwNkTFsedX04R2gzjHEGVfT
	1Yrgv3iSVwPSYc3r0CLGlCqPy0C86nGsQGDVtDo2QNwr2kZcjSOupnxdu5x+4dGc
	AUqpng==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avcjv90hy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 06 Dec 2025 16:12:20 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2958a134514so3969315ad.2
        for <linux-phy@lists.infradead.org>; Sat, 06 Dec 2025 08:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765037539; x=1765642339; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OcVXm5JIAcyGqoJflm6whI5XkmDpNUJ6dOT69v0sFpE=;
        b=WBBriWG85iBELnuEfwbfsxX74FT7HRP39tzxAbUhDNrvirn7aA6qzkrRPMV3xFxIFs
         R69hjZbt2b81kJbKSIPwqvENc53uWaaLXGCf+hiAHS/6AkcndEVHxSor3Vy11kp3e5z+
         NnBkqi98wLOiN5uAbW9f0lMql5aqhvN2ZwAjMNVZsWhbHrvhSq57xnjcjFmxK8XD5Gc3
         bR12Vt6KBUEtvUuxmwRHlNk7VedGZwcXhJ1y10X3em/SycBx/Te0ovSG6bKh+IsR6wlj
         m3QIzw3/gb1NTGCL5a2i3d9h4JswgWj0/XZmowQ+r/j9/lovPrdgp4URLcJ3wNDIbToP
         wYpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765037539; x=1765642339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OcVXm5JIAcyGqoJflm6whI5XkmDpNUJ6dOT69v0sFpE=;
        b=XUIHmFfSG7+a7DPKYs+2w+QMkweCxjJ4b++zB44MpywCm9CnmiDnizKCVQAiSeTegb
         NLzlopJtOlrFY8cO1IkqxNQuWSZ0hWWPuYWyDLjY06XuatK1GU41D2qEESfg3Geniycn
         t22jhrhRr99N/DbCVpNQQy+HxQXqkc+Ea/n3CFYRJpUCwhayOcvT3OsuoKKUsU+5GgGb
         fwWBpTYpNlzaV5CnIHPAC2XmPU0krlRYzq95F/QusZH/EmmpWEXoUZiD6Kgx9RspLfkC
         q0G9M+WOTjroA7LJLd9JpiNjjTs1PADPtKN6LTelbBoUzyIYZWKVAaOwo0RxnjzRg/D9
         DT7w==
X-Forwarded-Encrypted: i=1; AJvYcCVCneMsQ+4bDrgdlAs3ZokrDyo9PQ5WB9HpXFegyKnIB5SUKOFwlaI//Pz85VdKc/upZl9/iJC3Mhs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyyl/Ces37ipWQNx1wGuyEw6GOCiEt/AujfoNxrttjqSCDKQH4J
	SH1+JVywsgdVnqCfIf7WmhXJotgYtSgKV1y3iFT4qCfSazfvWEocLZeYFCrmzmegys/RMyqCWwT
	mVgutOqKgk7onWNK0VeHY8OIGqtw4mMgK2IwFjqAb2cNuRG9U4d30RNo3UlXCMFQJL0GbNgAynd
	r7
X-Gm-Gg: ASbGncuanMrFy4pZ1o8Ck/Mw/iAId6Uv5HCdy7jU4lLvrS1v/g0h1cNEZGJGIWlYkNA
	07MPCnNPvz1qw2wJbbShpI7YAdOCQIl57ZvogGbsLtbPI6ruyETtj4q9azyQyg5wjJcW6ZiCp/A
	9fycb8pVVxpbvlChwikp8/HiyZIQIv/Z6ucbYuVXT3w+k5TiuUknZAggXgb9N3w3mxempKC59kM
	If8lVXACQP91+PKWGt4jXyvr3DvHx1o2atGgjnOmGrkdrm29kf8PGIDKnDV2HC7Xp7ksVaxTPp3
	EViqf6kHI9vL4j1b+mDhOI6sy5uHDVB/FO+Cu+/S1Oxw08BnyaFNGrLE/lXswTyu/rwyGrmX1sS
	sUf4UnuuM7R7XLw8g0mb9E72wwE3g4dUuxuxS/RZgKFMkPg==
X-Received: by 2002:a05:7022:f89:b0:119:e55a:9c04 with SMTP id a92af1059eb24-11e032ac37dmr2065779c88.32.1765037539109;
        Sat, 06 Dec 2025 08:12:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE6Q72hT1tfm6ehPxRu0e2geTtWEprk5QX5IDwHV/oq7L2zAoa9XsSYNu2EY3vjHRgUFdsabA==
X-Received: by 2002:a05:7022:f89:b0:119:e55a:9c04 with SMTP id a92af1059eb24-11e032ac37dmr2065761c88.32.1765037538505;
        Sat, 06 Dec 2025 08:12:18 -0800 (PST)
Received: from [192.168.1.3] ([122.177.243.159])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df7552211sm31523490c88.1.2025.12.06.08.12.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 08:12:18 -0800 (PST)
Message-ID: <b772d61e-ba75-4f45-946d-211a0bb755d0@oss.qualcomm.com>
Date: Sat, 6 Dec 2025 21:42:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-3-krishna.kurapati@oss.qualcomm.com>
 <755b7579-757f-4ced-b3c4-39c20e6b25a7@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <755b7579-757f-4ced-b3c4-39c20e6b25a7@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Dccaa/tW c=1 sm=1 tr=0 ts=693455e4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=mGeNq4HQZpM0LKVKY7z1pw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7OXqrvXZNe0mwyzepZkA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDEzMiBTYWx0ZWRfX7/9dgSOkMDrQ
 4HLoFtB0N85GW8p64IQtLRY8oDNNfLT7o8vL/JSQCKi44IjX3w597KNuPCN/9cZfN8dn3oXKAiw
 C2CZz7tuDQIucAet/v1vmbIfqI2x+8R0LtsQrJA6uC18wwDC42sgU3XXxVsQImM34+YjcO4hI28
 dUauY9qSSeHIkLyzllP8+Ok2/ABpfJlNuHKbJWbESSiH80G5l9ifJoi242uBAyZ6b2e0e0YvvJP
 iep0icyG0MSMj/EQXzRyfg0ysx62OSPM+XHRcKP4YhhfQ2A4hiOl+8ZQSHD3anwqAETkUgH/sbT
 iDwRf5mXQ383xQtOp82P88STUxt2ZMfDGmo8KQXa4z3dNWW/5/0EzEkRF43BYa9jIqj+X1ioU+z
 1Tma2fV7/AhCfqJjYyotYAmVGE4f3w==
X-Proofpoint-ORIG-GUID: _KFAxWQ3m8dj6p_j687alLWycRj_5UqA
X-Proofpoint-GUID: _KFAxWQ3m8dj6p_j687alLWycRj_5UqA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_081221_731412_9278FBFB 
X-CRM114-Status: GOOD (  12.46  )
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



On 12/5/2025 7:01 PM, Konrad Dybcio wrote:
> On 12/4/25 5:46 AM, Krishna Kurapati wrote:
>> Add support for overriding Squelch Detect parameter.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> index 651a12b59bc8..a75b37d4e16d 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> @@ -37,6 +37,17 @@
>>   #define EUSB2_TUNE_EUSB_EQU		0x5A
>>   #define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
>>   
>> +static const int squelch_detector[] = {
>> +	[0] = -6000,
>> +	[1] = -5000,
>> +	[2] = -4000,
>> +	[3] = -3000,
>> +	[4] = -2000,
>> +	[5] = -1000,
>> +	[6] = 0,
>> +	[7] = 1000,
>> +};
> 
> I forgot to ask, do these values apply to all of the supported repeaters?
> 

I checked smb2360/pmih010x_eusb2_repeater and pm8550b repeaters 
(SM8{5/6/7}50/ Kaanapali/ Hamoa). For all of them, the above table is same.

Regards,
Krishna,

> i.e.
> 
> PM8550B
> PMIV0104
> SMB2360
> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
