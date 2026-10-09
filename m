Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED050CA601D
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 17:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcPYrmsKGkALUpCjD62GEMxRIjeBv6EnkeAVyecSPiI=; b=Kyh0mI7W42KiXt
	6in6ncvsdGP/Aq5EZDbsS8rCgZuPBNgAkxoF8dXQOZV5XYyOQOY9IiBNRN+b+jmaknxoOBQyveEIw
	ZHE1fWbXXsQ+Jjs3YCqBWwYSK2k/fRoIukyiMgCI/Eg62ynBqphfmsXoF9lZ4/SKd++bqZoYdTjYF
	RMZN9A4iI7B6hfD0a30WrK6fps+qBYOh+qWxvm9Iukpa77RtIC9S2/mqXXZGyPF9n93qHTaNr9jtl
	5QZF88mD8pM02vkhOs174dqv7p7A+vje62hCDCsY3JK+NWMc0GbFl3C0QW8b5cpuRdg8cryFGXOeg
	2uqzp54HkKzRiLaOQkaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFDx4-00000006k6i-21VC;
	Fri, 09 Oct 2026 17:00:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFDx1-00000006k4a-11X1
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 17:00:08 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 699GbJsu2841481
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 17:00:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xsMlwv29UHJ/iYsm6gVY/2H7g6IrA01pTEowYzyQ57E=; b=DRdR7Sx94OAR5rKQ
	GpSjlI3Et0TCCMsP/se5dpCAJnMz9quWray0E0ed0GMKSPyH3sdiMHPw52vGvrNN
	K2idutEA4pSTiUDjOw4gJlrfu085cjCzHZnKUqWy/L9M15fF0yMEBf3SPuHb69Tb
	/qRchcrGQowVYP2AaGPRakqGMveRXEE3t9MBxOMMwZl90VVVyE9eNBdAdQk7zsoM
	gye+n5p9+877nlqHwNnj4HuxkjzfyF1lHXPZZ+KvcMymLvdhPf8h0HbhCrnE5N+k
	v1RIVU+CUW9hUA6Wcfmi/Szea7zLZuKc9MWZCKV8mIrRpudOx1AhNGrJqHjWUgk8
	d6KvIQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h72ty0df2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 17:00:05 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-88c768885b4so8293062b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 10:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791565204; x=1792170004; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xsMlwv29UHJ/iYsm6gVY/2H7g6IrA01pTEowYzyQ57E=;
        b=gwzwfBte2itwUogPDu2p8WoVjvTCSNlrmdIFRJi06Q9Bmh9eAQ0QZB/yeEY5ipRZ8y
         huJqBVtMoxN8Kp9BeZ5Qza8Nb01bBFH+YosN4Q6g85WVYaBGK5eyNheUxwn5TdlwE/4l
         ZwKFOyV+fqT4pBsQt5WQYTRgVa+RmTLfofLbzYfzooIAJPW1GvqG2Gi+dx+1Wi624gJL
         r8HQm0m2RR0iiYgztOWEoFS7P67UcWlAirZjRJ2100nLvknGrrBArxHEyEIpuwnhvtT5
         tNX1f709DhKX4n5tXYnR/8yQeBGXsYNsgJMUevhL4ooVhqys5lR0RM/UsiLXxDVZnE3t
         OZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791565204; x=1792170004;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xsMlwv29UHJ/iYsm6gVY/2H7g6IrA01pTEowYzyQ57E=;
        b=UWLKPJH75PgeLndp9A9tvd1G+HOWjhMB3DUfakE7n+da5wCo9ZLn0QIbzLT5oV8Sr/
         tKBxM4/X2LG04rf+/sZe0RYSyFRYfoZkBHM0+cJmjEgWTD2iJycVTFQ8u4+ttQjPJkaX
         CBLtMyfGcB4Rz8i3DImO2yySOQFQbGai2pLUvfkj4bTMCwt8A4mga0j5pgSRQmuKc1eN
         /Dt/Z2XD5SeeIcId+zPu/0qVd/gXeHHahZzy/cKJnMrZTMMvnASbhsI0mwuBBXwfVVkh
         hmdZNEInqD0NSKZhWH/8FRrb6xx7V9zP4RypeQAnYqd+2Th1gJ5wBO1Jcwr2ig2N9rCJ
         I6rg==
X-Forwarded-Encrypted: i=1; AKwUvBwQH3hF6LpKLBKIFh4hk0JPCns0auRiPrwALrVgDTLBb7qYeRTP6+ogs07/iYWLVdScEIh3SANnirM=@lists.infradead.org
X-Gm-Message-State: AFuF++mkkSjOzaPv4RtIfZJ7vWWhxiFKLplXJ3BOdEExfIFz7e5Qm0MG
	O6TvPsGkpzT2jEc2IhRQ+EnTTmKOGSFhb8ksuSJDeAskzQECHUsx+bLs9lvd9WhPz6yMgqFcYMs
	TRvlvA+UvuALcrRmxY0nDs/ZErC7xRuXcnt8+7d5xavhqMxUlIFbD8+7cTHdJu38t9zg3
X-Gm-Gg: AYBFou0J2c6GyS4ajDOVNfZwMhiAnVWrpMhNzgIdH9e7/eGCUzIHPVRqqg+J3ZTGCE1
	guf8BQZe/hmt96LLyeBbsPDX5pL2pxM1dmiM8yxRsXG2uoXr/F7en7pcoBbEoRdEJp2KgdmrO+H
	KphH3596MwfMU5vfTx/ZbLdWmY1TMFnp4FASpCNyBnVYbW1xz8wUP1Qtx2dbwrMPVxOMJsua1XC
	VS2dXdwDhFpnfbwYPXs1ba8YxN1ySuNlFnSkonfDS/2EJsad1eJx/MwPv6C18IwpCDwfryLi8ys
	Ut9H7Ke0RT0RbdN4vPfFy67w3A/RcdJrEvlKYVKGcuGDpshz47OVIp1leJYarjae7aApIUvV2kQ
	PkZFbABBFnZi7Fi6GyT1p4/1GhTjA+IYvAeqZB07Ar1SqBuYsyfDXZVeNF9IWw/h6NNHf
X-Received: by 2002:a05:6a20:3d06:b0:3e0:b9ec:7c64 with SMTP id adf61e73a8af0-3e16bd85989mr2589979637.18.1791565204192;
        Fri, 09 Oct 2026 10:00:04 -0700 (PDT)
X-Received: by 2002:a05:6a20:3d06:b0:3e0:b9ec:7c64 with SMTP id adf61e73a8af0-3e16bd85989mr2589960637.18.1791565203736;
        Fri, 09 Oct 2026 10:00:03 -0700 (PDT)
Received: from [192.168.0.106] ([49.205.100.237])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd3da0596f9sm1395220a12.31.2026.10.09.09.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2026 10:00:03 -0700 (PDT)
Message-ID: <3a3cf540-816f-41a3-b31d-2902e7f4cf01@oss.qualcomm.com>
Date: Fri, 9 Oct 2026 22:29:56 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
 <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
 <asNji2_GUda8x245@parshuram>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <asNji2_GUda8x245@parshuram>
X-Proofpoint-ORIG-GUID: 66sM6EcZ7AwUb8s4-1hioXuaCELnP9lv
X-Authority-Analysis: v=2.4 cv=Zvd4uN7G c=1 sm=1 tr=0 ts=6ac91d95 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=jBUYxde0W5cEf5DRjetLAw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=a43HgpfhDiYDw8gHJIcA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDA2NyBTYWx0ZWRfX7BPnPP53tsyI
 7iFuy9ODkmUo89x1FDnobFxsF71KhUbTetMmR5O3QOEEY4flV2JQdJJ96DZDV1eb9r1etlOYI4C
 PSf5TzPchCzdNL9CgPCMLACn8an9xEI=
X-Proofpoint-GUID: 66sM6EcZ7AwUb8s4-1hioXuaCELnP9lv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDA2NyBTYWx0ZWRfX/e3I01fKkJeC
 wOo4RxgDVRuNjdjEetbYK8VZdnUvE0ktgfMVrBuPEKSH2aEv42v0g9og55YdKgNshH7NXMxKmXs
 j96Ugukl9evEIkKV69sgRu8yWa2TrPyoZC99Bo3R4zuDq9AmlJ28OHBK3Yb1uQAHhq/l2agoBMm
 I4vw3xmMa2nDNbqPIR7YQH/3+AOMmyf/L7n+QwPt8wpbDxuLT+lYOEGtvc6UUdorC9LSztldAHV
 rhyUkSW5T8wJDwOm+tlqZ0Ns8dN//E0REWD84EiWlu2tNQ/TELaNDTDbNTQN1boF8NWsjuJ7Cyc
 AqmPW+coqcsReCqsmgt5WnaIlLpCQY3T0jvNifNPEY/0rYFYmAyPJTV5pc/ZuOtqTUDDdGl6OTn
 YarSJnFXQkHMMvnGQdlPOHY0SlmWqjVJaeuUx5Ct1Z4pyj1GeHUngsST7s2LpzJDpY0Vc6ymoig
 X3GaUHLZZIj+RspgOPQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_100007_418151_D74CF3A2 
X-CRM114-Status: GOOD (  23.38  )
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



On 10/5/2026 2:14 PM, Vinod Koul wrote:
> On 13-09-26, 20:10, Krishna Kurapati wrote:
>> In cases like USB High-speed phys which can be either USB2 or EUSB2, it is
>> required to know the type of phy (rather than the operating mode) because
>> DP and DM interrupt lines need to be configured differently for each of
>> them.
> 
> Does the controller care? In preceding patch you defined the EUSB2 in dt
> type, so this describes the hardware. So phy knows it is usb or eusb...
>>

Controller is agnostic of whether the phy is usb2 or eusb2. Phy does now 
its type, but it needs to communicate the same to controller.

>> Add support to cache the PHY_TYPE and add the following helpers:
>>
>> - phy_set_type() for the phy drivers (like m31_eusb2 or snps-eusb2) to
>> declare what type of PHY they are (in this case PHY_TYPE_EUSB2).
>>
>> - phy_get_type() for the consumers (like USB controllers) to query the
>> type of phy connected to them.
> 
> I am not convinced that this is the way to go... Driver already knows
> the type and should use it...
> we alreayd have mode, i am inclined to not say yes to adding type here
> 

"Mode" attribute describes the current operating scenario of the phy 
(device mode, host mode, high speed, super speed etc.,). But it doesn't 
describe the type of hardware and hence a new attribute.

Regards,
Krishna,

>>
>> Reviewed-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
>> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   include/linux/phy/phy.h | 27 +++++++++++++++++++++++++++
>>   1 file changed, 27 insertions(+)
>>
>> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
>> index ea47975e288a..038c2b58bbe1 100644
>> --- a/include/linux/phy/phy.h
>> +++ b/include/linux/phy/phy.h
>> @@ -21,6 +21,8 @@
>>   #include <linux/phy/phy-lvds.h>
>>   #include <linux/phy/phy-mipi-dphy.h>
>>   
>> +#include <dt-bindings/phy/phy.h>
>> +
>>   struct phy;
>>   
>>   enum phy_mode {
>> @@ -152,11 +154,13 @@ struct phy_ops {
>>    * @bus_width: Data path width implemented by PHY
>>    * @max_link_rate: Maximum link rate supported by PHY (units to be decided by producer and consumer)
>>    * @mode: PHY mode
>> + * @type: PHY type
>>    */
>>   struct phy_attrs {
>>   	u32			bus_width;
>>   	u32			max_link_rate;
>>   	enum phy_mode		mode;
>> +	int			type;
>>   };
>>   
>>   /**
>> @@ -262,6 +266,20 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
>>   {
>>   	return phy->attrs.mode;
>>   }
>> +
>> +static inline int phy_get_type(struct phy *phy)
>> +{
>> +	if (phy)
>> +		return phy->attrs.type;
>> +
>> +	return PHY_NONE;
>> +}
>> +
>> +static inline void phy_set_type(struct phy *phy, int type)
>> +{
>> +	phy->attrs.type = type;
>> +}
>> +
>>   int phy_reset(struct phy *phy);
>>   int phy_calibrate(struct phy *phy);
>>   int phy_notify_connect(struct phy *phy, int port);
>> @@ -393,6 +411,15 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
>>   	return PHY_MODE_INVALID;
>>   }
>>   
>> +static inline int phy_get_type(struct phy *phy)
>> +{
>> +	return PHY_NONE;
>> +}
>> +
>> +static inline void phy_set_type(struct phy *phy, int type)
>> +{
>> +}
>> +
>>   static inline int phy_reset(struct phy *phy)
>>   {
>>   	if (!phy)
>>
>> -- 
>> 2.34.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
