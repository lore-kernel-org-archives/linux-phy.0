Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86BE9CAC5B0
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 07:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qb+SyvEwNSV/r05j/PurzKa6i3q4b43vY8jfojiEoaY=; b=L9OrXorqlU7a7T
	haociiUCky250qusYmnhStUFjKWdDhBRq4xcfb5CNrinW0fkCSflJ/zNfsQHIqAYrm4aOtFLCK/je
	PVJL8UDRbrW4Dqvy4IgWCnP+mYePKxZS6AB5zQssTBZ73HYhVH/aBlLLDyOXJCJ0S/yafr/Do8qVz
	GmCmzBGBCjV3s2AxDbgf+74uiQkPC4j0BJ8DnDwuAZV8NOoLjPmNt7QJLvWPQFLzdEfqdHM5EXdf3
	a3r+wU+gklBCf8CijHi3hlfLaB+C9ryHnAwjjX0o86T/cjjjBxTHONo0e8G1m0kJC6rNy8yXBxQaR
	rER1RDRHFjWfldfrn8xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4DWZ-00000009mAU-0299;
	Thu, 02 Oct 2025 07:14:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4DWV-00000009m9e-2vqd
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 07:14:45 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5925kDb5007785
	for <linux-phy@lists.infradead.org>; Thu, 2 Oct 2025 07:14:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wsrDpj5hUw4YEIy6N4WOTSRjb0/flPiO/cgRAbN+m0U=; b=T0cTGpVkUSK/3Zx/
	w+TJQr4hv4y+243iJyTp4LqSp2ohJ/i4HGZVrMXTEP+nYl3jvG027aNh7YBHzGsb
	/SXP5cyk6AnZ+12zvbXidUjOgNif0mSMtDgKmWJ/zYUpzGrZw9eTdQBmyigv6c0V
	pRhRk7aLnwYa3whwOSvviELvLkdNn0917Rzb/O9HRvm/A42k4kVG3oItY3EeMu3p
	CQmjPiA3weTgP9MsTSNDvRti4254wuTxREynUHA1bht8XaxYZLB9lItZXchoDnGi
	3RInFliwhqgU5Mauu+i9VCWwQJ2avP1jMkJgptqHzFR44TsI6FaxwojynxRyHFNr
	Ct9G0Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49hkhh069m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 07:14:42 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-27356178876so4681075ad.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 00:14:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759389281; x=1759994081;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wsrDpj5hUw4YEIy6N4WOTSRjb0/flPiO/cgRAbN+m0U=;
        b=tvNoKSrYvpWDAuUL22uKbhQVxMT2RKDZxZkU6Eh3zZrWNXRBvBxsDZV9aSW/8276vW
         C08iWoxMAnJaKAWTGI96GLuW4rrWleZWP0HN2Ue2zu5lcjALnmSdg+IGme2r5XnPJ0Be
         Xptbk/0UuR6jjDgF9NOZlg0tSzVhvNxKwroKl9x7VYd5KbjYw9aTb5NRWdLbZXhzeIl+
         +8SUAyqd6hH6kbP/tRu8Gj3ET7x/025zBMFcCbgWvfIEaXfMBaVVa/IZp2xK2jS1Zeuy
         4OGHM5smPWQ09kMBk42+Mf1S+cgmtwhQI1+IIlbBP/1tYiWoBB22kX3AnfAjz7KU9k9n
         S8nQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUYe6/QEGqk8ABchZRJyB/HXLIALIomjM34ddmW8SugzpcyMSRYwzwqIGNJjU30eaDD3hXYUOiXgg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2p/K/e7ICdv6xnmnPNkSmldZzNrFznwSE/OPTTQxHZAVECTzn
	8FYjBSqW4X7+1gg0d38X6fJHd4gGIQuRugZuV7/oWxsxYd/NV7SJc4OFfTpIx7ipW85o4CrzYwY
	VN1eZZjQDsYrmHCXglRj/cuTAc+/ZVMITjsvl7jp8eU4Od2Fr0GPHhJS9DaNsI9CiZlGY
X-Gm-Gg: ASbGnctNXcs+KwdljDVjSUP4Xnr+k6sNU4NV4APeyVfhS9CNqMoArkmSG6JTeIKonsC
	kLL40pj23kLIiXsQRlThDcHB4MdQ65NeG0snp1T2cQ2YtUHr5LUf2zOnp1zL0JY5YIBVpCX6YZ1
	DY3tMWVowVmDtqwTvSXPYqtlbFxtOb94tmqIyTyCQhGgx1Z9I5YjpxegAr3HZe9JjsihV81K7/B
	BW9wjDaMhxqOd0XtzoV879uLI7wm+KHXRU60V+8ufkxxwIj0EVXE84Uh+TUsiSSajuXK/WVhOZo
	qhf+DuedKciHvjyI+hlNNlO8iR+HH2eTRXDjO6tBXIemEEr40veLp0sRWW6bPbkV/+ie7ATJS/Y
	2qrbAA4dy/LKaKPAjZIpi2Y5sj37OURwtEKpc
X-Received: by 2002:a17:902:ce0f:b0:27e:f16f:618b with SMTP id d9443c01a7336-28e7f2a6437mr75646255ad.24.1759389280947;
        Thu, 02 Oct 2025 00:14:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBqcQoIzfkxTOkZwP9SZ5axnu1siGWGEzipZSpgfQ+MGK5IUYqzt2bTf5JM9Q+kuHEuFeBsQ==
X-Received: by 2002:a17:902:ce0f:b0:27e:f16f:618b with SMTP id d9443c01a7336-28e7f2a6437mr75645935ad.24.1759389280423;
        Thu, 02 Oct 2025 00:14:40 -0700 (PDT)
Received: from [192.168.1.239] (syn-075-080-180-230.res.spectrum.com. [75.80.180.230])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1d5680sm15167845ad.96.2025.10.02.00.14.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 00:14:39 -0700 (PDT)
Message-ID: <8996bd96-0660-70ba-63f4-51111219d146@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 00:14:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
 <20251001220534.3166401-8-wesley.cheng@oss.qualcomm.com>
 <ra3bq7guxunk2n7mbrjlefxvxu45clmwzp74vq7bqd2xvp2fv5@z5skxjxs4yxp>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <ra3bq7guxunk2n7mbrjlefxvxu45clmwzp74vq7bqd2xvp2fv5@z5skxjxs4yxp>
X-Proofpoint-GUID: 9pYNW_GtGak7H2vWGtRFgFeeKlrmtfrJ
X-Authority-Analysis: v=2.4 cv=cILtc1eN c=1 sm=1 tr=0 ts=68de2662 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=agQD+r7xwyS+FYqxhQjztw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8
 a=INxguLwuHvTa_v7rZvUA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAyMDA0NyBTYWx0ZWRfX7uFC/uh1+vL/
 9ZtO4NscBLSJtctZ2Kei2uaWvFK4sxyVArRh2h1dgpERu+ohHyc/AefYhdPC+Kfo/ot9YgIjsb5
 +vJRn/5JcgqVlw9qWgoiyZCUrg22ww5aL5rnUGkRyYcEfy4Op+Tt6uD41mJ0zcEd72yTlJfSOyy
 PWmxOAq0znHBh8SkpCdcaerFhl9yChVNxuXiYMdB+anl+stk42tcbj2IFFJpro2EMMh29+ApeR3
 NoeiQLZy8kyIFUKX3lxXPcmiQfObUT2AgL+lNSSf4r0oQULJ7f/qyy6g3AiCnxiHt0w30LdjhFO
 MlRxfxVVerLBvNwrQZJc6o7wKOnXbtNuNA6zym4aD5p3d+ZkrYWPwsrwH7fMqhNsR0d1HVZlEXy
 ljZCD2axTfovSZx4jT5aVnnC2iLiAw==
X-Proofpoint-ORIG-GUID: 9pYNW_GtGak7H2vWGtRFgFeeKlrmtfrJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 clxscore=1015 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510020047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_001443_865471_1267E0A7 
X-CRM114-Status: GOOD (  24.51  )
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



On 10/1/2025 5:58 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 01, 2025 at 03:05:31PM -0700, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
>>
>> There are also some PHY init updates to modify the PCS MISC register space.
>> Without these, the QMP PHY PLL locking fails.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 312 ++++++++-
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
>>   .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>>   .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>>   .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
>>   7 files changed, 1240 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
>> index da2a7ad2cdcc..7211c71fe68c 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
>> @@ -32,7 +32,9 @@
>>   #include "phy-qcom-qmp-qserdes-txrx-v7.h"
>>   
>>   #include "phy-qcom-qmp-qserdes-com-v8.h"
>> +#include "phy-qcom-qmp-usb43-qserdes-com-v8.h"
>>   #include "phy-qcom-qmp-qserdes-txrx-v8.h"
>> +#include "phy-qcom-qmp-qserdes-lalb-v8.h"
>>   
>>   #include "phy-qcom-qmp-qserdes-pll.h"
>>   
>> @@ -60,6 +62,8 @@
>>   
>>   #include "phy-qcom-qmp-pcs-v8_50.h"
>>   
>> +#include "phy-qcom-qmp-usb43-pcs-v8.h"
> 
> Let's not include USB-specific header into the generic header.

Hi Dmitry,

This is actually referring to the QMP PCS register set for the USB43 
based PHYs.  Even though it is a QMP PHY v8 (ie phy-qcom-qmp-pcs-v8), 
there are some offset differences between the existing one and the one 
being added.  In that case, should we still have it in the USB specific 
QMP combo driver?  I guess it might make sense to have it there, as 
technically the usb43 based phy is only really going to be there for 
USB4 capable cores, and I don't think there's much that is common 
between usb43 and other HW that utilize/share the QMP PHY.

Thanks
Wesley Cheng

> 
> With that fixed:
> 
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> 
> 
>> +
>>   /* QPHY_SW_RESET bit */
>>   #define SW_RESET				BIT(0)
>>   /* QPHY_POWER_DOWN_CONTROL */
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
