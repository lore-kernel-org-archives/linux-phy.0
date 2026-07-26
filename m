Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE83C531C9
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jul 2026 17:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8wJGBcPEKivK7TDlCGM2o0vwRuakFtpY+9jSEpJB7Y=; b=rjPBydk0RuyL5I
	Jrrd/oekBZxFAnmt71x/6DujCIogmGciqM42OSzAJQe0ZT4rLQVOBZX7Sa9qa9bum3+27u/sjU8Ah
	ChzW4NrmeAxN0gKQadAgY9DboJQEPd+oNzwez7JiDkkJOw5f3jkBSZ6zGchS4b+LN+/aEJKqSCsiM
	rt0QYStHrmKSv80EQZICBUSm9dmTZ5U3KieeeZU/aHjMTBZi3kaSpAAX/T8V4WkmUoS7rSgz5o48R
	FEBbJLqNVIEFMcD6CFelF7y+assK8XqpL5FdHjHvmsoZBd/Ylxa7GECWv2/BhDUs+dk2Nk6h1m55G
	DshE5jUwSUb1VJH1c+rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo2LS-00000001PPN-2Tqc;
	Sun, 26 Jul 2026 17:08:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo2LQ-00000001POu-0v9u
	for linux-phy@lists.infradead.org;
	Sun, 26 Jul 2026 17:08:57 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66QH769P1191707
	for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 17:08:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wf5PgZtlT70Em21ycU9Ff2GtlKLobB73OXMoqmEXkMc=; b=lq8foyBX9L6drq12
	ZuDookkAaOfZkS5kKuhL3iugpv12GkKl2Y23VadUuboRqfqaEKH2v37Eo5PZBQnV
	szKo0Q1EAJeNWGr2yidPbBQD1y/kb2LUMd4ZAIYKujKQ9Hd8cD15OAlTfzV1qZPm
	BNBi1bfByifqcABh7vBKw+2rWVs1HXfKd6dhyuYX0PuO2tTrrWUxrOwp7rRB/NtK
	36aPa7UJpvqsKTMiW5Tm77HAmMtt7TIklU68meS+kSG9Z1kGJAMTbF1PxTkdCj0T
	tBNH9KM5C9Lfss2DpBR7iE6kLtOE5jCCgqNc4iifXuxtmfk6pp8yRGq/p5jDJrIo
	tm/7eg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fmjgn3s9v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 17:08:54 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2cacf17c7e0so27273175ad.0
        for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 10:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785085733; x=1785690533; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Wf5PgZtlT70Em21ycU9Ff2GtlKLobB73OXMoqmEXkMc=;
        b=ROd9EutFLgBuciZ/StOAWBEE5f7nIq2T+o32sRGkrGDmXhcAJOge7OlmU6Tc/1kgZz
         P4C9fAtUHI9gv79w6di0vmIuSyr9FG48n7dzxuC1PQNOzN6UsoL1psiLoZDt2Ym6PwKf
         gPm3R1IbfBQrHVy6oUxNrQ3nVc+bmgaIg5zkKi2p+13FAuMBWY5Ma4V+W2KrCPf45EIN
         OXCzuV3aVAYRLeT8Dpsjlqcf/dVuaPylzvIkVdZO4wOtNixTH8lh8emyrZi3ybTmxKEf
         1rmVYoQ5/nVaKcIOsHH55x4ma2CKVfScSMbYU8Y/fSnowSIt69jItxkKBT59rK2jAy56
         DE1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785085733; x=1785690533;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wf5PgZtlT70Em21ycU9Ff2GtlKLobB73OXMoqmEXkMc=;
        b=pwz9ciaskX2Xf0Ct5U5cE9sadTMN0KNHywBM+an7bR3gQHc9xRCQdHOf9HwHmqC/Wh
         hAArwn1zW8q8JFDvtQus1CSZDqVNQbXfgYOw4G/CSoO7puFUg8NmEg/+1YQO7x1e/rV4
         XgcPkEcdkmtb5NdMW4Ua3pnmsSshU+PF99DXYLWc635TCsXP44ZTbR+VlKEALbnI40S+
         q/NWiR1kgSfq0qICNkXAMo0FQZJrpKzJTl2m9oIPEVjD4rhBJAAQPnfy5Rf6y38WwMGM
         3OtMfDd6V4mUVeSkMTJenTdkkNnwl2LSk+GzSgyklvE+MWNih/nTCxcyeL20RoiVmebw
         SqDg==
X-Forwarded-Encrypted: i=1; AHgh+RqY3dkqcqcbrttWadYJXZn4muQ3praC+nXKjfC1oSWJR8GaVNbYLEvcZNCkBQVt/2jxJqk0lbH0lB4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyjgbAPKR+IKElCpxtK8pLpTg8t6rMBY9ke+YeIvc1B1xzUInw7
	tLoMt1E8Oei6V2XTmnyJ9B0aUr21eGQ6lQYjeR2ZgVxza55ai7qNaE3mjiv/k0OddqUSzrojfl7
	BzNpBTA8VuwxoCQZkNnVFEFICfVkXo8JZpdx04i2qT72NpC5VrtSmlVlP1U436wXLTJP0
X-Gm-Gg: AR+sD12z5/kimcyIXfkepvgHEK/ZHJxfDvlS2LT5uVVmI6tg1GawMfELf6PI1tR6DBX
	vGGMlkWWgaSxX3TqW6GS4pLxItupN+L0SGAbYREav01US4eqbiN5TxX4/wWd5PVMLA3wbm0H8bR
	aZhx38Ctkl7LKVvAXF6+wlhCjAbbey7VGmFeNwRvSH5gFTE9wizokw+vhY7L9GPKgHgMqnIato4
	CtlHWjbRkRkgDJa/3rG5c7JcoQL9OaoDRKM+lHcJF8oTlqN14ISWP9DdzrUVdl+yM2OgfDXQNAG
	0TeRqTixq4m2ldLmYyK9J020Vg4aBcXzgtGRppQYNlSlImaEX596onD3MYm3f9W69n4nQWP5Xr9
	nt5hQfe2w4myg/DDugjHCLFe2BGgwPtqjIlAGbluYY6a6e5fIvNcFEB07RYdPqH6irhtq
X-Received: by 2002:a17:902:ce83:b0:2cc:777f:d67c with SMTP id d9443c01a7336-2cfde795576mr52293845ad.13.1785085733527;
        Sun, 26 Jul 2026 10:08:53 -0700 (PDT)
X-Received: by 2002:a17:902:ce83:b0:2cc:777f:d67c with SMTP id d9443c01a7336-2cfde795576mr52293705ad.13.1785085733122;
        Sun, 26 Jul 2026 10:08:53 -0700 (PDT)
Received: from [192.168.1.9] ([122.177.243.104])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cfde7f442bsm21570895ad.65.2026.07.26.10.08.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jul 2026 10:08:51 -0700 (PDT)
Message-ID: <49d0e412-4561-4f4f-b00b-b77dc9cf143b@oss.qualcomm.com>
Date: Sun, 26 Jul 2026 22:38:43 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] phy: snps-eusb2: Set phy type to EUSB2
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
 <20260723-eusb2-int-handling-v5-v5-3-f32ea6c1a318@oss.qualcomm.com>
 <amPdeL2GWkNhPoal@venus>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <amPdeL2GWkNhPoal@venus>
X-Proofpoint-GUID: wQITbnHQm-tGOtNv9E-SS1ZXvoiKPX48
X-Authority-Analysis: v=2.4 cv=HMHz0Itv c=1 sm=1 tr=0 ts=6a663f26 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=SscvhSW7bbCibxPycpFs8Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=gCZJ6Er7C-9YbjHnqbwA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI2MDE3NCBTYWx0ZWRfX0Wwue/YDXdit
 8AhV0uST/Gzz9NVIjKf/NJ3/ne1zCTCyR2Np2U4gDXRsAZ0Bmc7ou/RXRyWE0vYcLH4BrqQKdPY
 LJpSW0FNusTuTp6VeqAb5sE+LGOPxiv8XwgYED9h2p5pg/LMQRMiKgW0Q/q4thdwgYmO0/IOdoH
 xMaei2v52Mj4NXXjOfcFOZULMec1R14G/dF7VeN/J2ii0lKkB03ONCvGbpwiUEsHHdob1EmCGrg
 Ld3EjpN8UxQ1PpqiriO3DprWudwhOPrwoPPwPjIGxYICWci0TpSB+YBF5dRNVmZF907dFXMv+cF
 quidPfj8Xs5yrKEY2dLMWecwrsTpYy4zF7TL0+0txWX8eHXHUdshEXOrQQ3CegxiyzQ1xuL3eoD
 kFXWSK0do1g9dig2xpTw+k6ctCcCf2KfySeClmE2SPgXSiZkSPRqxwX8E3ApaJkCSJfA+pFVTrY
 ixrOlSB3u9SdhOUOXcA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI2MDE3NCBTYWx0ZWRfXyYpOG85VJbxt
 2FWdHMeUQorlzgAf9KS2B4iZwa+vKdZMSK9LKLYJj8GLW7G95TvN0/fhKR7wtA7Myj/gtf5JsCq
 Xd4pCvn83BLUVMBzwp2fK5piyxJFN38=
X-Proofpoint-ORIG-GUID: wQITbnHQm-tGOtNv9E-SS1ZXvoiKPX48
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-26_05,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607260174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_100856_412461_07BBDD0F 
X-CRM114-Status: GOOD (  19.05  )
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



On 7/25/2026 3:21 AM, Sebastian Reichel wrote:
> Hi,
> 
> On Thu, Jul 23, 2026 at 04:09:06PM +0530, Krishna Kurapati wrote:
>> USB controllers like DWC3 are agnostic of the kind of phy (USB2/eUSB2)
>> connected to it. Set the phy type to EUSB2 to let the controller know
>> the phy type when queried during its probe.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   drivers/phy/phy-snps-eusb2.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
>> index f90bf7e95463..e139b17bcda5 100644
>> --- a/drivers/phy/phy-snps-eusb2.c
>> +++ b/drivers/phy/phy-snps-eusb2.c
>> @@ -13,6 +13,8 @@
>>   #include <linux/regulator/consumer.h>
>>   #include <linux/reset.h>
>>   
>> +#include <dt-bindings/phy/phy.h>
>> +
>>   #define EXYNOS_USB_PHY_HS_PHY_CTRL_RST	(0x0)
>>   #define USB_PHY_RST_MASK		GENMASK(1, 0)
>>   #define UTMI_PORT_RST_MASK		GENMASK(5, 4)
>> @@ -597,6 +599,8 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>>   		return PTR_ERR(generic_phy);
>>   	}
>>   
>> +	phy_set_type(generic_phy, PHY_TYPE_EUSB2);
> 
> Isn't there a potential race condition if it's handled in this way?
> 
> 1. phy-snps-eusb2 probe: PHY is registered
> 2. dwc3 probes
> 3. phy-snps-eusb2 probe: PHY type is set
> 

How about we do this get_type call after dwc3_probe call during 
dwc3_qcom_probe. That way we can ensure phy is up for sure since core 
init has to happen as part of dwc3_probe.

Regards,
Krishna,

> Greetings,
> 
> -- Sebastian
> 
>> +
>>   	dev_set_drvdata(dev, phy);
>>   	phy_set_drvdata(generic_phy, phy);
>>   
>>
>> -- 
>> 2.34.1
>>
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
