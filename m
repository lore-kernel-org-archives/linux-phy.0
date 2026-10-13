Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DEBBCC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 08:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8I0crVIHOHoHxOkeDKOdPqDtsduCE/Y+Tb/YZQ72VvY=; b=PzzQxUhXNqw2zT
	YP5/BKDRsZQxMHD3f1Qv+kzJ1PkTwDvnNpxQnFpnkceo3O0us7sNK/3NidfFegBgZDB+fkfpunLhD
	EupMcy3qPskjtiintRycLFfOLiItuTzrA8WfDzGPNY+OcANFV8iuleoQP7+0MGlfcTfHIETdSOC+z
	XX+B3dO/TNCTST26e5zbyDKU8TMoFiFCU1uVyDEGxxF/Snl6S31j/z57St801j+u9UfdH26MA2nTt
	WY6bUl3W8O3s+YP1uz2t2iRDOPUrkCcuPR+I3ivFUB8ymVH+czqzR70Myvqfk7wIdTyCgOT/xV8aF
	3M7jFHKo4AXZ4kwcFhrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGY1I-0000000CLP6-1R7l;
	Tue, 13 Oct 2026 08:38:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGY1E-0000000CLNl-06au
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 08:37:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8HCLc3908182
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:37:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gT4Yf0815a57DxLWlTv+fE/fuapLIrnYK/QuztKTzJA=; b=AKdgvEQXQTYGVSQq
	KXeymLujLv+pD/vbsYher74ikIa8ojC3xfLuNqYcNIVKRdtbX0qDNTn3VTkvb26F
	YnXSbO8GNadQ3GAPjgXE0lxsNI9dkuHc1PJsBvXxD/nL2R6hE7cAfaBnOJHZ5gpL
	q/v09KSKm8YD8+AE+mOjjjBou0fpgb4ObWx0xY8hZMaM8/blWyeWGVTJOZ5XSC85
	qDHdgBc2poq5otuvnQnSypBmPRF/AVI/sUHlYtgYUAoXDMx7cfsIgZZeu408paIp
	RYUMeg+qVIX30yYX0DYzN7OQsF4Vaqt59dxo71nSaWfcBhwVQ+oJ7Y8oByZ3NNzp
	W5kENA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h95xqtj9j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:37:54 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-341eff9e381so7751180eec.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 01:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791880673; x=1792485473; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gT4Yf0815a57DxLWlTv+fE/fuapLIrnYK/QuztKTzJA=;
        b=S4FRy2Fgrioz1sorI36G+XYDwESluT08DiNQYN7B/xouDHJOGMcOCK+Rr6GMiHaY4W
         6RGXmNWW0txBuoWjNjdCMkh5F0a2XBx8o6S6zLObp9VQF5eUe0Qw3NUCrDXxgHmUQxcB
         6yJGE1ykJp+usuJgAYv8pWGnE7YOb8jAq84PngAoz7zv6nKO9DqxQvbAs8qbXykCfyIu
         F6P9xQbbk4Aazsmu1R7HqAAmulKCHjFgSfW9LuCjEcFld0feyx0ilLU9PWII6aDHmOKm
         0UZUOJ7yirjRaIl52fEEW0702QtubPog9heXx+ZfhtnbE9IHpv18lxK+9EusZ9gaupFC
         gI9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791880673; x=1792485473;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gT4Yf0815a57DxLWlTv+fE/fuapLIrnYK/QuztKTzJA=;
        b=zafd1bx7/E2PirnxoigKNmUP3vFPiG7rDRuqcsx0N6QKxwEHlRK3UYrBb0r66Evx1n
         Ab9L4hWBLlJwulfkdMGruBVvFGJmK7grTYP5+DyIVs8WAONL0/aZkeCTS+EOwImPr5iF
         VlgMGfmV+GwucXGxJA0HRgGybmzK0N8z1NEbVp1dZHi02uBKkgtlFpTo6npFXfozYUcT
         3xjKeeDran12K5zrUOLcYrRQg3gc1QLvjG/l+qNef4POUPOgreIuhUkLJzQVjwkYckAI
         eZaV1kptyCQPUJXJ2YEnxNa5feSCqy8YNWZS4/6cFcPhJIOGlGBbU6KrbmyKtl+Edn0U
         P/Yw==
X-Forwarded-Encrypted: i=1; AKwUvBySYKG4ArFE7kURMKBpcDSkIj6wC/QpOE1UUxqsAlTPwQYqGLE8xp+GHqo6u6L8THMwPjZcU5m9r+s=@lists.infradead.org
X-Gm-Message-State: AFq9FYKHwgc79t5yLcQ8yKIu+atJk+78ToqYLcYYEpsThGYkmdKuBHLk
	AUkmHIkreKjL5ZJla/kgNqag5Fcm+g30hvFKJffIyoJftCc8es7d4kunvJw27BJ6mzs7CvqVItr
	5bPuJKD4MS7Z0BhXETpb4AM90IAlYEu6g80WwIrewhn8PFnXuD97GFyuBdQpApbZhVFaU
X-Gm-Gg: AYBFou0/Mo191eOYH0n/l6x90N63bmML58pNaGpjbF18t4eVqlpSGctQY4D8bq9VPm6
	qZxlRk0mBVqZyCMVqaxmfWhmkkdiR/mmeWX549OCV/ZzHraa2xmtxsz+JAEvKGK99T0Asgz6Rsk
	htNwk5rPBshbY7EyfCDIb0tBleAlYhlu7BJttsebvH9n4l2LYQ5E9o7wf37N8IKuc8skR5RPD5w
	I2uhnXWCV4oR5tKoe9+Cc+gkHkFMc3oymaz9LOxNXWa+kaP4qRqZbBHQhn4KjlHg1oseRHiwY5C
	jGsZ0fOI7n3M3gRoWNHoUEaOd6mydpsXD8LMYzTlOQcKr8Xq6DHi0pnttvXU4kpS9yKdC8DXfIu
	ztSiOYWqYrxkcohzdtYsBvXrOfyiuvA3VenW2bF3p+9xKtr3aax/tvxUU26iBrhpg
X-Received: by 2002:a05:693c:8099:b0:358:c755:81a9 with SMTP id 5a478bee46e88-358c75589d0mr11619419eec.11.1791880672821;
        Tue, 13 Oct 2026 01:37:52 -0700 (PDT)
X-Received: by 2002:a05:693c:8099:b0:358:c755:81a9 with SMTP id 5a478bee46e88-358c75589d0mr11619395eec.11.1791880672202;
        Tue, 13 Oct 2026 01:37:52 -0700 (PDT)
Received: from [10.218.1.199] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537cb2fd33sm40467132eec.28.2026.10.13.01.37.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2026 01:37:51 -0700 (PDT)
Message-ID: <ff46d549-a766-4263-9bcf-caf3ec17be3a@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 14:07:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
 <as0BPGd_BJivizEW@debian>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <as0BPGd_BJivizEW@debian>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfX32bHkeRJ4LWu
 +c7rZ4UqTYDzTPsDpZx4zzw8CmYoG26680q+SPDGWaE2/Ogr6C2MBzB40ifYeyw9mV7xaJB8RZK
 V/1JlGYQILkeuEfe+5Fw21LquG63jVXlgOXp1SuTkoREob1Ii5RF2vgcmKVVgrHhBnT2iwGyO47
 uQy8qMUFHiUb8U5YuKYOzZv8DDzR1+55fRmHFqs3x0I8KEmVqQCKU2DBX/wW8eDpC3thDQG6Y8K
 FIlHxYcHgc3AnLQnj/D6aTo+T/n1aerynh1qLq7qUmBUU6fchhqx3j04no8ITwEwUOb6oFPRFVj
 J97urFpldLgh69xwsqj6K9lvIcVVYqlqbrnxaNZIwA/0RK5ITyNDv7FifeLQAdFyGxG4uzTjEqB
 1NJZpt6RwqLumtGIJ4t6ubfzrWV4kcc8zrhjIltF/5wi9FfHs4k0qLmTbCge0hY4x4MElnJbTRt
 E38NFIgQ5+LqwOD2cjw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfX3JAYDXyluUnY
 8FTJN14vu0nc24c4o8NSViFx4PFaN0o5no7ZOnWzEfIzMhAIzIhFMvmAAKtuhkG7WwHUdsZi3VR
 2j1A81lcNRoUaWoKp/uf1eIGqADubP4=
X-Proofpoint-ORIG-GUID: UJCMWjigs8Yi6aCVcBI7fN_1NsBCM4ne
X-Authority-Analysis: v=2.4 cv=EP+TQFZC c=1 sm=1 tr=0 ts=6acdede2 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=8xOz2izvBwbMBXgYhnkA:9 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: UJCMWjigs8Yi6aCVcBI7fN_1NsBCM4ne
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015 spamscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_013756_184413_8EA743FB 
X-CRM114-Status: GOOD (  15.56  )
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



On 10/12/2026 9:20 PM, Manivannan Sadhasivam wrote:
> On Thu, Sep 17, 2026 at 03:10:09PM +0530, Krishna Kurapati wrote:
>> On Glymur, it is observed that although the exit call is done, there is a
>> power leakage seen on SMB2370 charger (which embeds the eUSB2 module as
>> well). As per recommendation of HW team, disable the repeater during the
>> exit call to prevent this power leakage.
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>> RB tag from Konrad received on an internal reivew.
>> ---
>>   drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> index efeec4709a15..7db2fbff6163 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> @@ -229,7 +229,10 @@ static int eusb2_repeater_set_mode(struct phy *phy,
>>   static int eusb2_repeater_exit(struct phy *phy)
>>   {
>>   	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
>> +	struct regmap *regmap = rptr->regmap;
>> +	u32 base = rptr->base;
>>   
>> +	regmap_write(regmap, base + EUSB2_EN_CTL1, 0);
> 
> Can you safely write 0 to this register? Since init() just sets EUSB2_RPTR_EN,
> wondering if you need to clear that bit only.
> 
As per the HW spec, only one bit is exposed and the reset value of this 
register is 0x00. So writing 0x00 to this register is valid.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
