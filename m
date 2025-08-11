Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC3E3C87FD2
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 11:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IpnBoRhQCNuHqJKqwfNFxdcyvxN+9PFhB1kb0fd1ng=; b=Xt3budYmiL7DRq
	EMFpWrdNDqIGacuwjyw2cEJpfR+huOWxayimcvLtMVhz7CiuEN7pR2hcrycFK30MPtTYq2bGAe2Pk
	jBHRQnp956bDeBI4stOpLLcHUaDTcBv5yTDKwu/rG/413FxepHj0go0poni+HL78Gr87u1xnMsy0T
	bXZNA10BRLU9vE7M+qT327t1FJ0ASbNfQQuzS1kKGalz6sUMwHV9My5XM0BV+XViyJ5i0oxCgElKX
	2lOytTUePg170AaMX74OWeWkSSKdxmslNwQ3MX0UamnpD/j+3rZnNOmWrWfW9Et2UbQYP8Y5bYNTy
	DqQGGRr+TML+OWwTlX5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulQpT-00000007XvQ-2nij;
	Mon, 11 Aug 2025 11:36:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulQSe-00000007TAm-2DBT
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 11:13:05 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dLVT005444
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 11:13:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	URReqVGPLDf+FTpAoIchtSx7YISeSz/3xo0Fm79Dgds=; b=mHvdNXM4HBdMH7W5
	6CcQL6+te8F8+Dxc6iZqp2RPt6o80vUW8TeoQrZUX1VUM2vnSqCmbDs3E90hkyr1
	YJiHUGxYZsywpV7qVqEhurquMschCcrIVdvk4OLDUdIXU7Qi7PuFiI2r24qwe0cE
	mmL1I7eTgmvINwd5sOF5uhiGB9sZHPM1WJVP79YeqrNskmJ4fKXXPQrhvQZjjw5n
	6i1Nty/cKpbFO+uw7o36YlkA0Zsy7GgoUmjMG3EEDBZ/Glvpy3okNFGpbO7WM7BA
	3wYOsHgDb/GQgwbEIOBk0WWpf50b4rlpBn25JUQooMIFNJ9HUDMECUbALkFEoQsL
	L8tsgA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhx2cnu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 11:13:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4af23fa7c0cso12483831cf.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 04:13:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754910783; x=1755515583;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=URReqVGPLDf+FTpAoIchtSx7YISeSz/3xo0Fm79Dgds=;
        b=Lta1s8WGfvJwO9zHCBHnGZxrZLcPMeBrEBkFKdDKPp/11bnCs15k4AV6zhbxog2a4k
         GiL3pwdZ/Zj97+AUN1XqQ4YUMqamVQvIoAf+DHw8sGmLr0OaHuF6oe/PIZ3qpxM5LRYv
         8YjSZMcmVPidHqBoW7ePaQ5v0XLE1oK9m3L8Ad5m+/NNTGVZDzheHREfWxS7ysRoxR+F
         0vxpNi0jGQUaoEb0Pn7m8ip7Oy5dhq9QU9M2S36kF3ieg4RXTkx8RLuvnoYQizACLxrO
         sAPxLWOV9h7JQ09MP9JprglDDB0LZTZ8swY830zHYrClAk9MCZTkp8FSriFB8VBe2DN3
         oWWQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5cvXGm1GQ8MeWeXbzl4QsqP+SytZ0ECK/v43R72kyDifTlIz267s7dne3iYswnBMZ/54RLl1uuZw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyp546RlFgEI2cOhPh2zModvfSoBkjVY2y6sLyXNoDd8xYK56hb
	H4kKz+f2Zw7yXLcfhf8tVyg3dI+iNjpgbRDA50xi3cPesZ+R/jSKY82HOF777zm4rYHnZCXWlSZ
	P5AIV7rOIzmoY6PlqgHPmijVObEWo+V6ipYscLOIqslVD/ewicZ/KiOeAWBx3/Bhb3uXY
X-Gm-Gg: ASbGncvOyuyZ5MUOABn7zE8zH6ZOhCBbMM7rMdGYmwQ6rHLdhfqlbyDlYACPjra+ENo
	B+wK2BVHfswzulO5S3IRYPrabr5CFivyAD2xPSdL5o/p2R96LNbXSBLU33ijNUMhTLLklV18WBf
	zjGK2kPoD6Iyz0unlIgrtkaTmcEfzHE5cszZJVkA5Pjrb+M5R7Ksqjs894nQ3rMiT+Hs7oBdoAC
	gkWFhXjruUBaCn1pgFCxHf5q6VmHUo453IOI1q6IFhwx9lEhjk5QY2Nk4sN3nSUXz2jfE+KDgRB
	UeE36ngx0xXIh85tmggCWobEcup/w0frUM8aMUoHuvTtmEzj9R/TQ/SFULYSVAjeTMxg+UbQPN7
	6pKyJMn2XAa78UruhYw==
X-Received: by 2002:a05:622a:24e:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0c18feedemr57354691cf.3.1754910782610;
        Mon, 11 Aug 2025 04:13:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7A0+Y98Xy74689qvBQIGVL869VUV1Q2Mn0tA1F9GaDJPsmzmzsKoUL0ebMPuxgorWRDYqVQ==
X-Received: by 2002:a05:622a:24e:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0c18feedemr57354411cf.3.1754910782197;
        Mon, 11 Aug 2025 04:13:02 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a076620sm1997071666b.10.2025.08.11.04.13.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 04:13:01 -0700 (PDT)
Message-ID: <4f6a7dc5-b0f8-491b-aa12-78be5f47ef2b@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 13:12:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
 <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
 <619efc83-37f3-4b4e-b756-c53ecd2f6867@oss.qualcomm.com>
 <y4yiyokoo7fclwlpyhct4o7mt6swustuciigqnte5pruust26q@ryvuwpd6h4qm>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <y4yiyokoo7fclwlpyhct4o7mt6swustuciigqnte5pruust26q@ryvuwpd6h4qm>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX8io66Uj0AG6B
 VuTnnEdfqYZ7otfpmUVN3CllQcdz0oXwqdp1cdYGBFQPR12mqN/AJMBscf+DeHuXomi4s/SMzLv
 ie0dSjo7/yNI7TXoAebYhiQNszW+DmL5ukQcR/T/UhqZN/ImJmw7OLOc0A+dRlUVbPwYdXD0yJ7
 Ox8uXY8rfppCt42/5BQCKIsN+12Ja/YUvT4SpOxMZ+x26D+HRTc2yoMHCCJLUzNXDYZ5kVKhhTB
 UmHZ5OYwtv7vQthmH0BodYnhTryTgrSs7DjfjOJEqnpjIX0fxZyB1bPBkN/KxSjuc98Wv7qzMEJ
 pFk4QeK046/IhRQDihxEfXJn/jxH1wNMaZ6fmW0SbPIyLF37AuGXj5YTr4+h/yKyw/uFa3S8F08
 I/9CXNfr
X-Proofpoint-GUID: eq0N0TuiLIDwoJBci8_lUVcVQ7szjju5
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=6899d03f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=l4QWMBroLdz4_K-1UwwA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: eq0N0TuiLIDwoJBci8_lUVcVQ7szjju5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_041304_690146_9C0B7FF2 
X-CRM114-Status: GOOD (  18.03  )
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

On 8/11/25 12:55 PM, Dmitry Baryshkov wrote:
> On Mon, Aug 11, 2025 at 12:37:00PM +0200, Konrad Dybcio wrote:
>> On 8/9/25 10:13 AM, Dmitry Baryshkov wrote:
>>> On Thu, Aug 07, 2025 at 06:33:23PM +0200, Konrad Dybcio wrote:
>>>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>>>
>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>
>>>> The DisplayPort phy should be left enabled if is still powered on
>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>> PHY is not powered off.
>>>>
>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>> this will leave enough time to the DRM DisplayPort controller to
>>>> turn of the DisplayPort PHY.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> [konrad: renaming, rewording, bug fixes]
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 118 ++++++++++++++++++++++++++++--
>>>>  1 file changed, 113 insertions(+), 5 deletions(-)
>>>>
>>>> +
>>>> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
>>>> +		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
>>>> +		return 0;
>>>> +	}
>>>
>>> I can't say that I'm fully happy about it, nevertheless:
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>
>> IIUC we'll be able to get rid of it after the dp rework?
> 
> Which one? The HPD? not really. My unhappiness is about the sync between
> USB and DP. I'm unsure whether we need higher level of sync for
> USB-or-DP PHYs.

Unfortunately it'll only get worse with usb4, where the DP PLL may
need to be online (or not) for when we're tunneling DP data :(

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
