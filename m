Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E4FDCAC597
	for <linux-phy@archiver.kernel.org>; Mon, 15 Sep 2025 10:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkyeP7d4bCDhsfkEfTduyo38O+6i9DnREDAi6PUm2HU=; b=qa6i+HdMqwvbg+
	4fBX3U8Ouu6WabBfiI8mdsYd7w3//F+7HouHfc2Znqxf3wbzWEy/kHtnvjFUvUOUACvjwZSO4k2R0
	IIHhBcO4hAi6ohwN1ZtPDu24BHAtStF21dxM6uagwvMdVHj1HHViZH3Ro0ykkXvgfGQzzEO9kThKW
	sSeu2fj3msQNdD2CXQWg2ww9Hq/7iginOw44wOu0+xrbHuSDsaTEnakrA4RhfRv94G+8qn3fG5MA0
	rLbUE13LN3gk7fHbOohAoAoVl1aUK3aE5ajGybXjEuQkfPlF5rCdoGZCh9/Rbl75XoCfHmfwMvTHY
	DGgzeuaFDWD4fFGBl7FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy6hz-00000003knJ-0VTy;
	Mon, 15 Sep 2025 10:45:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy6hw-00000003kmI-1Cbp
	for linux-phy@lists.infradead.org;
	Mon, 15 Sep 2025 10:45:17 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FAQPCB017534
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 10:45:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3q9UHllEUzo7emL0csxSsit2MUCrJ9I6itNrb0wCCSE=; b=FZz7aImcq32G0kDj
	Oa/v2b1+4ho8TvoVx33/+DXzLu6BhQ+T0y2fU2AyBKpZPlGY9Kk3B3T/s4UjJO3x
	noR9HzsHnCHE+qs5qXNp4LA5L38qpD8KRJuCcw3w/RcKtM9wFfXVtWC2ygn864pG
	6rGWIDOGU0AKw5IN5vhxFFne2Pc/Nh4htyRXVZYhuEhEUAumTfGHbmSoyqc//iri
	+LzLbhra0i3BdLPrYDkwj24dJQofMd10m8psh9gl40fmyJnQ5yXRiuy3sylmDUXj
	zlOs2iqquxLthxrORvtKbARxuKl1sCNtqZU9sIW8cVCoHU0oN7K3b+l7k6UKzjQK
	+0QCbA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496h1sg1px-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 10:45:14 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-25bcad10907so7250805ad.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 03:45:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757933112; x=1758537912;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3q9UHllEUzo7emL0csxSsit2MUCrJ9I6itNrb0wCCSE=;
        b=BhxP79WUVZw13XgQhTXAz1h4m4OeUzeQiwGras5GVNHKHBBciKLFKunnqv5fELss2/
         MkTZE4EMBlZudAQAfTr572eHqsDwo9FnXF9nsERCtCXeyHDBpnAGjgFCwXBHffV0XArn
         TEO5PZZulRmlls/kkQB4WZCejQRzn0UlEGV5pSdEumih8fxDiBeehPQ8EwHm6DCAWEHu
         9oizUk5n5wwwn7h2Qviv6i9El/R5MlPDQjT2WC15CrSu7mJoNg49fNIdECeNKAkyyQmC
         P0tAm+ZUd2q4xNPAqVIwD7sQOJ58izOBCSEvin3i6t6t289Ine7mUoZ9+C8Ersxy100J
         cc9g==
X-Forwarded-Encrypted: i=1; AJvYcCU4aGWLoJ3wLwsrA74/MDvuoUFQUHOSs8sV7rqCTDYsrEIIiV1VQkWYoOEJVmxejab1D7SUtlIIxRA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPp/eGobqS38j08SnG47sXzMBgYfbh57PnSBpT+FNT04du1I5d
	a7Bm/wl3626+it/woWZllk7adQrANvdIqBhFXsKDfI3TMTnRz12expIVvo3LFfbvqGDynJwfjGI
	sy+7UDKBCA7FYZpYsCa9sBN4TSyHPurEqfrJk10tXWyXer68EHKAsSgq8eMOeTlxo3WZJ
X-Gm-Gg: ASbGnctE5Z+RBBQisZEDKOvpr05ZtGe6F2OA0ecSBBibNhJAA2AAy4BsmFKdabwL8jZ
	gJJL77MweTdHfrZ0UwpeXF/LA9pkN7MA1VtiEjfHERupqI22q3ziqbSxYjZ0tFyQ2CsxV2YXh1Z
	6zD9XR+/iaJqDphnn+F+VrUZX1f/pi3og0oFy3RsDvfC/0Z2cPjXJn6h/HndrH75nvcV8I703vQ
	PktLXKHJkOE3lD778fJoMz52W7iUYkVuig49sb1jHHPl6EHEYzzbnEQmg0ftMgFUctPbl4dnDHo
	XVseSZXm3kuMcLXFEP7n8JDSF+pX8mVTnKTqiCsryOAFLB2d1pAdkPVqv7SqfK+8OTHe4Rqf97E
	qTMYsPAFiXTyOQoR7l4Hwhz6GTJ6s47FvfuI=
X-Received: by 2002:a17:902:c94a:b0:262:923b:4e2e with SMTP id d9443c01a7336-262923b5125mr46665135ad.11.1757933112382;
        Mon, 15 Sep 2025 03:45:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYdD9O4QdRiVJ5hAs101DS3Zf4FAq6fcZz1dgavqsmhdSqj3W4RYmxEazrWjBJJAH2vJCcqw==
X-Received: by 2002:a17:902:c94a:b0:262:923b:4e2e with SMTP id d9443c01a7336-262923b5125mr46664835ad.11.1757933111666;
        Mon, 15 Sep 2025 03:45:11 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2664f0071e5sm27436305ad.68.2025.09.15.03.45.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 03:45:11 -0700 (PDT)
Message-ID: <8baa3f62-8069-42cb-810d-33e1ad61abbb@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 18:45:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/13] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-8-2702bdda14ed@oss.qualcomm.com>
 <6p43oxn57kke5eotoqtt5gqtmhmgeteoymewqm3ko5q5veyegs@krkh4dwdno5i>
 <335ffce5-19c6-409d-8386-686fe9e5dea5@oss.qualcomm.com>
 <7ozv3u7xuvtz2x5q3pp5kdeydtsu5jlrgwjnxpxxiuh7przr2z@35uo7t3b4ze2>
 <05e8069e-895c-48b2-8a25-a4a680728cfa@oss.qualcomm.com>
 <ykxl2xjrabsvs6llaf6p3cpiler2nhyrsbnhrbvhtl2is27cig@fbtj45n4e2yd>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <ykxl2xjrabsvs6llaf6p3cpiler2nhyrsbnhrbvhtl2is27cig@fbtj45n4e2yd>
X-Proofpoint-ORIG-GUID: VORSmadJaq81lSIz-HvZIHR2AJhpuUk8
X-Authority-Analysis: v=2.4 cv=A/1sP7WG c=1 sm=1 tr=0 ts=68c7ee3a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=rsY2jHysN4_Lp2AvgbIA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: VORSmadJaq81lSIz-HvZIHR2AJhpuUk8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA5OCBTYWx0ZWRfX+YbVLpLdhUNv
 dAPG/8S9wXzQ0vmi/4q8ej7j+s7madn0kxoxPTK0O4MnB1F3APHZJh78jAgjdddXARlH8k81X8w
 le0aQYNjX4AMn2d6ezilAkoXlcT9vrOPLB54U2BGw8uHdn9Uo6ClponlghHLxj7IfzbYZOLre8U
 cDPzcExkebWbH8oG1/V0JziKb03KUcIGhB5P4BSnq5fM3+hU2TL+La7sVKqcjX/jGwvRnjO7F49
 dyBKB/MUt0QU+41tylhG+ECseb/P/yWWOzP7uffGO/wwJg4rHI6CnrqUUnu6rzy8HdB6nc05xkY
 3WvJiBsuF778vGR7Tw92U8oinynORIRLdIoOMIwBznqJKPTBIIX+ovNn0Bunxo8pr+b2zXJiCKF
 wrZVHYYe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_034516_465089_3A2BA3B2 
X-CRM114-Status: GOOD (  20.73  )
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


On 9/15/2025 6:14 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 15, 2025 at 06:02:19PM +0800, Xiangxu Yin wrote:
>> On 9/12/2025 8:08 PM, Dmitry Baryshkov wrote:
>>> On Fri, Sep 12, 2025 at 08:00:14PM +0800, Xiangxu Yin wrote:
>>>> On 9/12/2025 6:19 PM, Dmitry Baryshkov wrote:
>>>>> On Thu, Sep 11, 2025 at 10:55:05PM +0800, Xiangxu Yin wrote:
>>>>>> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
>>>>>> Extend qmp_usbc_register_clocks and clock provider logic to support both
>>>>>> USB and DP instances.
>>>>>>
>>>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>>>> ---
>>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 208 +++++++++++++++++++++++++++++--
>>>>>>  1 file changed, 195 insertions(+), 13 deletions(-)
>>>>>> +	default:
>>>>>> +		return 0;
>>>>>> +	}
>>>>>> +}
>>>>>> +
>>>>>> +static int qmp_usbc_register_clocks(struct qmp_usbc *qmp, struct device_node *np)
>>>>>> +{
>>>>>> +	int ret;
>>>>>>  
>>>>>> -	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
>>>>>> +	ret = phy_pipe_clk_register(qmp, np);
>>>>>>  	if (ret)
>>>>>>  		return ret;
>>>>>>  
>>>>>> -	/*
>>>>>> -	 * Roll a devm action because the clock provider is the child node, but
>>>>>> -	 * the child node is not actually a device.
>>>>>> -	 */
>>>>>> -	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
>>>>>> +	if (qmp->dp_serdes != 0) {
>>>>>> +		ret = phy_dp_clks_register(qmp, np);
>>>>>> +		if (ret)
>>>>>> +			return ret;
>>>>>> +	}
>>>>>> +
>>>>>> +	return devm_of_clk_add_hw_provider(qmp->dev, qmp_usbc_clks_hw_get, qmp);
>>>>> Do you understand what did the comment (that you've removed) say? And
>>>>> why?
>>> And this was ignored :-(
>> Sorry for missing this part.
>>
>> For USB-C PHY, the legacy implementation only supports USB with a single
>> device node. The new driver for USB and DP also uses a single device node.
> There is no 'new driver'. It's about DT.
>
>> The function devm_of_clk_add_hw_provider internally handles both
>> of_clk_add_hw_provider and devres_add, and supports automatic resource
>> release.
>>
>> So I think using devm_of_clk_add_hw_provider allows us to remove
>> of_clk_add_hw_provider and devm_add_action_or_reset.
> Which node is passed to of_clk_add_hw_provider() in the legacy DT case?
> Which node is passed to of_clk_add_hw_provider() by
> devm_of_clk_add_hw_provider()?


Ohh, legacy is child node and devm is dev->of_node.

Will add that back for compatibility.


>> For combo PHY, the legacy implementation uses two device nodes: dp_np and
>> usb_np. To maintain forward compatibility, we need to keep support for
>> both nodes and retain the related logic.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
