Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 543C4CAC5AA
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 01:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ohFwP/hg+NmFjw02Wp9GLqY2fb2LOH804YuPjXptPQ=; b=NhgGXjB+Q7HaOt
	3CaNvbqr3zQzSP8SBRuJIQQZT7DL1rm6aRScxqPlUuLvSONMXVEtNKsKb/aBSsF9//cmzURXT+h4c
	atSLcvBlptJUkyXrpDIDOQ0Rc8sx+NHiTKiI1w605O9/cnmV4rTV9P0dfAvfFQ/qwM4uIbOgP0fUM
	o8iDwsDhsoz7+eD0JWIG2Qtl2yXJ+SqTjsFzbG6vAnapizP5MZOEugeDCsZDqlE5+3VuCpRovE+mi
	vGv3EYaOubhR8UclOLpMu9ayIBPJscUqA9nerxlUY7C596z/e9VRJ/1hIW++Na3rP4y3EaT+0SEEQ
	o1O504oAe9qKc0U05rXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rRp-0000000BxgD-0RIk;
	Tue, 23 Sep 2025 01:04:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rRm-0000000Bxfm-0izN
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 01:03:59 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MHa5FY022012
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 01:03:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3r2gyH2o9KM3Y4VR/nSiqz6V1kwzJFKLhM9PNywxZ9M=; b=U2g7pwnx7X8Zkxz2
	z+R+FuWVj9i6fTjNhzSitDitg/0dKOsNgygJTVMxGczOSmW4fa/yp1tuZTSf09FV
	geRntp4WiiFIei/DNOpNVcvDXmvNSQSZYkjWFgKioptWGMniAb63x8pXLKrDtVLf
	UPBah2saDNqTLVn6h1RxHyuRa8ePxH6aOkXSpHospDU719xiWAK/mw8jZIafmXmp
	J6gZeOpKqxXfCMGp2l9wZb4Fsl2hl5vOnbU23h/Uzy/9k2Hq8wgvNeL1kpssCtFn
	T29DoN5oVUhwUJRkdd2l/zNMMyWbCDcVWHHNSu7ZUQuxO+14ZYvNKZcOOOYjJMuB
	vAXjrg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fejq7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 01:03:57 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77e76a04e42so2919199b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 18:03:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758589437; x=1759194237;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3r2gyH2o9KM3Y4VR/nSiqz6V1kwzJFKLhM9PNywxZ9M=;
        b=ZsymDQ8+Zy/je9O6wc01JYLqplYDqwMYLuFhzyLt4BeC826G8qS6ckYSOIjIqfPN+i
         8qYYoPDD/It6FZ9KbLpi2NYQGKZcvn3hQLFZCSOr3ECQrzMgL6YSEwzYVOpgsKSetibE
         th654o007NO6HV1n1fcv2VrdPphl2RwwSxQdQ6617llBA8CrrcVc9I6OIhPTTkHUbxIx
         y0ca7fxB3q3MaqB+TuZOFu5COThB0sghr9/cVBufUF6S4RFNL+fftk0LJLFus2dNZ7DK
         VuAaGQTMLTUQ2jeBT4LZe+vbPsKhVle9+MFkjAbYabz+GRD6cUji9zHZnBu4YBzfd6+o
         Ij6w==
X-Forwarded-Encrypted: i=1; AJvYcCUEiNUUQ49q6zqtSsh3bkcYlRO8rLULOV5YtuPRdRQdIiVV7MUqCUQsgyS49DZZGYYm1wrhpawlIUQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzk8fR1ZD/o1GEPDm3eeKTLUA8GTF5FtVASoXYBEcHRUSlUj6U1
	zz+nfpn3Qil+olZpEqX5rDsuIDabOt0eDgrRht8PjDKQ4+mZFGI2cuqiJkBs43jeUoOUYEol6V/
	FhyNfeWpOA5SvfQ36THEwUY7+JsusrlJhLrEDOlCbuFweSnBwSZvZUMZCpUOVO1BLB0e/
X-Gm-Gg: ASbGnct3HtJ34p9SoDnoy2DVJU9ll6LyhT92BP5GCQlYCUBrY2aQ/nKv6bHI9585XlQ
	U4QF5yI363o7Uezg9vaascHSB+LNusy5j00yGtkXRWmQF25cGWQpT4p9GN3PvcFAQfF/nkT6hgR
	+oiZ3tDU+KhfUBsuqGjnpIwWOSCdq9OnFadArzzvKVJFmr7MfsMSvvf9uWJ1Al/RKe7biaPUvnV
	tBPQO4hM4olMQmVoXKvzO2e0xLCzKtas9ntbCMp6x6PRJyDbvee95TKbDhF3jHGVJQVxZQTrllY
	U2YIxz2kfmc2wUeseksyq2P+eVU20PUxSNsxZSXkfkSfLkrUGKXGLPDqLDwRyi4rTFCGFV8N9mf
	D7S8RUf1a7Jx/CrbTsgZGKqp97dP1uQY=
X-Received: by 2002:a05:6a20:a10f:b0:246:3a6:3e47 with SMTP id adf61e73a8af0-2d10ea02f65mr823592637.12.1758589436704;
        Mon, 22 Sep 2025 18:03:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZu5szyIQ3+/h2P8RAeWjsUwtJhLpq8SVRmJe1NhdUsMWX4SpcQc49bQMtqaOjrR0EYSzmzw==
X-Received: by 2002:a05:6a20:a10f:b0:246:3a6:3e47 with SMTP id adf61e73a8af0-2d10ea02f65mr823558637.12.1758589436149;
        Mon, 22 Sep 2025 18:03:56 -0700 (PDT)
Received: from [192.168.1.239] (syn-075-080-180-230.res.spectrum.com. [75.80.180.230])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f2deca77asm5515903b3a.98.2025.09.22.18.03.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 18:03:55 -0700 (PDT)
Message-ID: <95c59ba6-fd9c-ef59-c5c5-33cb2fb5db8e@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:03:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 9/9] phy: qualcomm: m31-eusb2: Make USB repeater optional
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-10-wesley.cheng@oss.qualcomm.com>
 <umoo45pmamr3qraaiommpqh37tgmqidylmtjh3iamlxs34s7wf@ouug53aqvdfd>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <umoo45pmamr3qraaiommpqh37tgmqidylmtjh3iamlxs34s7wf@ouug53aqvdfd>
X-Proofpoint-ORIG-GUID: qHmfgdM6-VUzAT8vTtLmMrSItn8QJjhV
X-Proofpoint-GUID: qHmfgdM6-VUzAT8vTtLmMrSItn8QJjhV
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d1f1fd cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=agQD+r7xwyS+FYqxhQjztw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2H1wgwkl3dmy4IbtCtkA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfXzbPIW42KCR72
 D2QjXTC/0xX98cLz8uSwxd95MGMsx02yXXC/zcA82mEWb3ZDEspMJrxqEyoMNAc7JxdiNwVaMoQ
 CZPm0iAmzzrsK/Tf4NZ8KGS1NZAQFS2RIYSG19/T4AaWkJdJGIBEaznFv7XVRdNlI5b1RdFCzOD
 GsvoQC9tRpby/kRgc6DTzH8xRto6duz+hqETPLMEmiCXJU7VdEvnaPJ5GjVzgtpCMUzHKT8GdpM
 G6Kwpnm9vFjaW2PpDYb1WLcxrKnXBcamxw/fTSCJRPHgq1u5/YYo5mIP2+XmCbwDgti8jKrcSYv
 aCSgx6T54h66lr5IS3PTDv6TVphckTROb2oKT22xt+4UALjfne0iVYF4I/Q7pwpItt8Nvj81BcM
 czf1QxKe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_180358_218734_E0FA0482 
X-CRM114-Status: GOOD (  19.19  )
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



On 9/20/2025 8:42 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 08:21:08PM -0700, Wesley Cheng wrote:
>> Change the notation of making the USB repeater a required DT parameter.
>> Issues were seen when supporting USB2 across different form
>> factor/platforms, which led to enumeration issues due to improper eUSB2
>> repeater tuning.  By making the repeater optional, for SMB/QC PMIC based
>> repeaters, it can utilize repeater settings done in the bootloader,
>> which cover a wider range of platforms.
> 
> No, please don't depend on the bootloader settings. Instead we need to
> implement proper prgramming / tuning for eUSB2 repeaters
> 

Hi Dmitry,

Will update the next rev with the entries to support the SM2370 repeater.

Thanks
Wesley Cheng

>>
>> For other repeater vendors outside of the SMB/QC PMICs the repeater
>> should be defined and managed within the kernel.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
>> index f4355d38aad9..b8ddadf78c53 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
>> @@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>>   
>>   	phy_set_drvdata(phy->phy, phy);
>>   
>> -	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
>> +	phy->repeater = devm_phy_optional_get(dev, NULL);
>>   	if (IS_ERR(phy->repeater))
>>   		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>>   				     "failed to get repeater\n");
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
