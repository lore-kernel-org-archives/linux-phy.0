Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29668D12694
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 11:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqz3EpV81NIaRgU2ifI1IJ7YK9MxMryU/75vc/Ly08Y=; b=E6SVVbnyCJJqml
	H/WnM8osSIyeYnHDJbMwD9xad6s87eLQa94gVKn1glsnYUIhlTktAOLkcTQomqdTtzGtmwwcR1VA4
	MzL1LKqDLdfktuRC8eOzkzJXdtlKJDdctMK4KU4Yn3JDYI6keJalrc8DooNFtZpG3HEB4+kMPxsl5
	NdHHSGFS/oPBNEwymQX2yj6t37IXbah3pnW9ye2vUh4TKlal/7o8CHkhZ2SdpZYyhGcaRHqJ9Isjy
	D4Ljkc6SLnSe5ZOnSsrcVS1AsLM4UNS8iIji3hBAF00d/M30OWAkbmIPV1rVkxE4Km/FA5oWxiVPP
	DmW+eCm8yQlM6WBLUBQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQkzI-00000006Uv8-3B7A;
	Wed, 03 Dec 2025 11:25:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQkzG-00000006Uul-3hBh
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 11:25:36 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B38Jd8G404430
	for <linux-phy@lists.infradead.org>; Wed, 3 Dec 2025 11:25:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YnBs8xgaZI8/pV93gl0GGKO1Scw+YUhAr0Btx4ZPdWA=; b=azXeYlNl1H37BdXN
	WDijZVQZ7aPlJk1vpkp+rOqR+TqBMeo88CY97KEpXMYVYD9FAGIivzWaIj7d+F5A
	Voq7C4aUmft5Kx0TKaii8wZcRheW+aETcLKVjNVJYEUBmi1/9N9HJGEnLBxENfTT
	3PaHlJn+0WzTDRjQnpUPdwwziHVAYwobtJoHrSQQB2ceLaluYm9VrxKNieqYC1j+
	P0UPZ8bRlhojEwaQCRy3t6qDyIPz5QUfjhk7a1QV1hHASchJ6GtkJvtLrgBh8b2Y
	iH0q3lLVn2LNotePE2NgGO+sQjNdEQFzyIwIUotZ2+WMvu/Hc06ukGgz4uydjGHf
	+au5GA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at9fca2j3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 11:25:34 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b99763210e5so10927289a12.3
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 03:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764761134; x=1765365934; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YnBs8xgaZI8/pV93gl0GGKO1Scw+YUhAr0Btx4ZPdWA=;
        b=Q+2rvMeJ/OvG3vk4KLwJ/+Tf0UhN/Ck00G6/8FYT9fZvV1Po2NyN2JJWjkLewmdLfs
         E9Jx21SIatg6ozBUYEeOnxTbBU+BAnVW7XOUqHMHHAkNTXIxQmu4ehoxEqqucWW7dEWO
         ez5ZoTQGxFhW8PgTQoXDTvgQ/D8K2eWRMna8+EO0dRmoL0ckY0dJCLkqctQSRQEWHlPf
         JImCoo6fDtfAxrJIFGC0NOTu66WlPd3wg7Ku5deb5CSUqRaRlMHTSAB5O4EJ+zfi8pN6
         qCMCeFaJKg1G6faVkk4amxC+ENmSQslC7cPfzBGCEYbZLcmhPH41nt21LF4heAvi5tOa
         Md6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764761134; x=1765365934;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YnBs8xgaZI8/pV93gl0GGKO1Scw+YUhAr0Btx4ZPdWA=;
        b=m86cPu/F4RE1ulBYH34rL7BSpH3BcU1LPB0b60sSzS2McuPsnMPxELA8uqC34buvV2
         yCeWmEOBhQqiHVB8rfY1HPsZ43k9hqoS+cw0dSK7bRYS8wJ6xFs+mDczcldkkJpVBour
         j1fWoC+QT+TOfX96TYjFakoPcIqtrt4SXGUiuTgFj0renKDkhAt/PTHJGx28PhRUXM21
         WFZT5by018cI1BVGJKpXgSThNsRrT8gMS++SRFVXQm29IBD1fzXK1Mzh32bGpu0M9s7b
         NugD2OvmRnpbkMry36vW3Rwh01rA+xJfTBvzH/nnmM2pB3SUZ82cmiYtJzde0A0/PpZ+
         6saw==
X-Forwarded-Encrypted: i=1; AJvYcCWBp17FuX/Ywzmq6rP92LUdXHxDYdEW0LloR0j/ctqIQXTQEzIBJo9SbhsTl7EIUi9P0gRcQ7kZMBY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1P8EybJBw2LsExE0qlwhYcl58DJwmLfv5JGZpLMgIr+AIVyOz
	vtJrfhCRiUSRuUNPNxqXa3XePve1NdB+drSH+T+Fy+WaV0+SNaJmcxsVBeKZ1OQRJwKNVIIkS8L
	FXHaDdQfI2pGBkJ0KaPe+KuYq/3ZGca1jOzBxY/6neHz/FoOuHPlddV19SUl1lcq/qMn1
X-Gm-Gg: ASbGncuGZ4gbYdqk4I21YQkMtVIwa0wc6rFIgNpEU6QSS7qbSY1Xgslgxg2BPDhbcqr
	VC3x8HZgrz0EQ2jp0ShqOhguT8hXrYhKA04+W0rA6cyuIoXUryUVLByXatEXvJMq/8mRQ4YYtP9
	z88PZvv/oJaSK7Vf8VKY1z2+FCT0ZEL85XnkQCJCob+JdylaYCsKLg6vRrOYGJpPcIQpaZPRRFM
	le1e2tcW95i0LCC6VuOJ2TT5w3Pb/PU3V8OaQSUHs4OpirTMCkTLmc9Pwx4NjLJfUguZ9W3VNZC
	4hBsRBfVAG0mug7sbPeeR6Hgcx+7K5ZXE9yQG1bepAZrAC1PEvPlvatKvSUSckrhJuzCTuKu5Pf
	825VRk3VPFPyiMtg6fbXY49+TczndFN+etqNNFux4bNVmhQ==
X-Received: by 2002:a05:7301:b0a:b0:2a6:d0bd:4a07 with SMTP id 5a478bee46e88-2ab92e52960mr970672eec.18.1764761133597;
        Wed, 03 Dec 2025 03:25:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5V7ZXy9Y8/CV+ditSdoy+4q/BB9igg/hRdHJxnpEofPC3YDQwwxJk6gz2wtunaJHJ7ab1gw==
X-Received: by 2002:a05:7301:b0a:b0:2a6:d0bd:4a07 with SMTP id 5a478bee46e88-2ab92e52960mr970652eec.18.1764761133106;
        Wed, 03 Dec 2025 03:25:33 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a965ae9d06sm64456209eec.4.2025.12.03.03.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:25:32 -0800 (PST)
Message-ID: <4de408ba-c6ed-42ba-8f68-fa342ee670a4@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 16:55:26 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch
 detect param update
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
 <20251203083629.2395451-3-krishna.kurapati@oss.qualcomm.com>
 <fe15827d-c15c-4b4e-973e-3cc379714467@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <fe15827d-c15c-4b4e-973e-3cc379714467@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA5MCBTYWx0ZWRfXy9EtobwWgqUs
 ZGHfWT9HzWD2hg8S9jfKCv2mjjNV2fkeI2kkNKxkhckBXKzkhACwsj7iWLnCY4N4nvQ/pV3PcX8
 ciYi9YWOEQvWv2xBwzXDqF2m3ihT+AesFjW1yX/YoUyw/V1q52i12YuYTUEqc+9PT6uvtWCdnZF
 rtrzoYLuy7fDHWbYrMKoMkVY/0ES/0qdZBEOGXsO/fxOXP7JbnFb48yMejJtCVHNuiWZqe+MaYD
 jFT7mgqpOoar6qkM+3qu8CbtFV34bqKgIsz7FoSDEY74QQdwi7UG5i9B7AuewiLk9v9J9KyNCBv
 rtaXTA4zjh2H6A+kMVWs3OFyEMiaiObLW0zj/D3JPXtteNhdMeyfLnBeK2YDK4KfG4ofnHTyzEi
 k6AqtcMyGsOFicqTEeJpVwsXTmYesw==
X-Authority-Analysis: v=2.4 cv=Qblrf8bv c=1 sm=1 tr=0 ts=69301e2e cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ZzE7xM72-ti_z1JB6dEA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: GS6yWE0xtc3Mz-Fze1PcWQFKlFLzvEC2
X-Proofpoint-ORIG-GUID: GS6yWE0xtc3Mz-Fze1PcWQFKlFLzvEC2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 adultscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_032534_954985_D952B1A2 
X-CRM114-Status: GOOD (  17.57  )
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



On 12/3/2025 4:45 PM, Konrad Dybcio wrote:
> On 12/3/25 9:36 AM, Krishna Kurapati wrote:
>> Add support for overriding Squelch Detect parameter.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>>   struct eusb2_repeater_init_tbl_reg {
>>   	unsigned int reg;
>>   	unsigned int value;
>> @@ -120,7 +131,9 @@ static int eusb2_repeater_init(struct phy *phy)
>>   	struct regmap *regmap = rptr->regmap;
>>   	u32 base = rptr->base;
>>   	u32 poll_val;
>> +	s32 dt_val;
>>   	int ret;
>> +	int i;
>>   	u8 val;
>>   
>>   	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
>> @@ -147,6 +160,14 @@ static int eusb2_repeater_init(struct phy *phy)
>>   	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
>>   		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
>>   
>> +	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
>> +		for (i = 0; i < 8; i++) {
>> +			if (squelch_detector[i] == dt_val)
>> +				val = i;
>> +		}
>> +		regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, val);
> 
> 
> How about:
> 
> if (!of_property..) {
> 	for (i = 0; i < ARRAY_SIZE(squelch_detector); i++) {
> 		if (squelch_detector[i] == dt_val) {
> 			regmap_write()
> 			break;
> 		}
> 	}
> }
> 
> We could also validate the value (if none found but property present, error
> out), but the dt checker already lists all the available values so that may
> not be necessary
> 

Thanks for the review Konrad.

Will make changes accordingly.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
