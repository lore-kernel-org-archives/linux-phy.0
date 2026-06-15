Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 863D5CD98CF
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 19:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Twn/oqJmfbLG3AXVIxO8Zdtl3VPKL6XPv2pFRUwtL1g=; b=m/C8zyhNj2Hq2+
	O6JyKi5zg4rXeg7xTLDpjGJC5n7fEskLeEqI+xgEsHw379gYv2sXOkhzIR53MJ5Z0RbenJlyhKo9B
	D26+IgLfBw0PpFNIHZLgxm+q99Nbr2oqfQmfHglHc5uDirebNZMoMeEthHOCriEz4swJ31nY/xhyc
	erVD7/cg9K4sRXMEdKugmvwm0trPAGOMEVNSLRjDiSKZ9Wc5zO7zTcZIyskhd5Zjvx8Tjqf4HwbPO
	qzsxpeV2eepGn6a1sSpxybDmJKAiJCYhqqttURT984+q0NqGOOSyORG0V8A8H9i4CvHwiCCgPi51Z
	UTGcnKF+vENMBCqCGaAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZCb0-0000000ElLq-0Usj;
	Mon, 15 Jun 2026 19:03:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZCay-0000000ElLM-0lf0
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 19:03:41 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65FIxN56781815
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 19:03:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9IDNg/6lzxX4ZC7/zodIna7Ej9yrMREtnvW0RLmjmfI=; b=XUfEbeJKwwDgiq9y
	C6wX75Jg6RdymT0T2OmFHhCVKdogBnW0AAahH/OcOeDfzn8WO9buPb/Zr8yqnhb6
	tX0G4Cjn8W1MJIIeY9s0kVNsg7QI5zGiKJSb0bEF1mku5HNXccEiTnn2rtoekZ0R
	3XfhaWrcVwSLa8llbrjLmHoHtvjMAGlnzEpEBm+zuMixD6B/6ybgZWRfQ38teW1h
	yDCdMAi4EunYi2upkeNZ5LcqtE3J1P67OwwbmgxnbOGVgLOR+F3MN+c18gGVgMY3
	86idZ1M7G4fgSLqu18BMn5qi8xHW5au6Z5l5/zaw1A8K8RH8S2ffgF67kAv0Gm/M
	Qwlc4A==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etetjthbg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 19:03:39 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30761ab3483so669393eec.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 12:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781550219; x=1782155019; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9IDNg/6lzxX4ZC7/zodIna7Ej9yrMREtnvW0RLmjmfI=;
        b=BE57yySgpUdCzzcDZTd7guwnvgHqhHOHZ5hZqef3lnmrxGznk9Joyw3Evh8qHdhmfN
         Q44C2ujvJ6NZKhaOyANEMHm6ht+mOP36KksVWjrEiGBkHxIIMzNnsszMn4E7Qo4vF2J3
         we8ISARjjm+RtuFHoT35zR+uLHkWDDP9yZ8P2N1bmY+2h4tGYvGfT6udRSz/zraSSj8m
         f3zDvWT9TzIQETO9yx+cBnDnCmeFTIQ6pdrXdWOgB1qxgl0036LCLoSbaD7DAa4q9KZ1
         oiqlqP21HiOJgNP9+Kk9YFZ8gB0Pe0eWs8PIKYomE5Lhcvy9loaHsMOnp8c6YAqnhK0g
         Jptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781550219; x=1782155019;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9IDNg/6lzxX4ZC7/zodIna7Ej9yrMREtnvW0RLmjmfI=;
        b=ABAlOEk2g+5l7tu/QNnY15ItAeLlWzX9ldvKDy4hhUrEfezXG1QkZaiEYoI3de+mQH
         NvXsiYe2O4tQ2OstNlKbalZJcaAAghf5an7VGjToZcSIx2otfnaNGwEV4FtnvVLSLrnf
         e8MbRBy0W7D9QzVlokQORtHLiGq/5sT7/lK6OBeohnzfHwEaEvc6eMUwQ1btAUXTplMd
         7Iigon3ecQzP+UUS6Jmlt+UWgdgs/Zq4OGlMbw9PPBEGLbVNCsXWqQv6RP5hF0evFY2J
         8trv8+NgKJbM98S0rIFxgETxaCE+etkFiqquF/HUxK520+sCif14J6oyfIqj7XA+UDUm
         /IbQ==
X-Forwarded-Encrypted: i=1; AFNElJ/MbGMNcZnOAZmFviDUsOLN/JiVsVvwl4WyRS5WuGn1mIhftyT/nGj6qfVEcXEt0nAuNFyYUI+2eDM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxALaCNXrkd7Jtu3O4mbx3OQIDeHBphUueldCQkgax9USlO6BuQ
	WqAXkGEN9rs/URteL5aepiqEN84wLjH8j2uCwJSd3ihQRAOuSogZDQsH3r2sFpv3Xy244/3/Ujq
	f/Kq4WjaGGrxcg0zooOeRork7Pu6cJZGcpltmveczhOUSSangh8ROQ5VMyvH2POf5A7HJ
X-Gm-Gg: Acq92OF3MumBzOYjWeh8uhCGfvohKO8J4czKAJ1CONc8lQFGg0iU3663NDzwB+4Yn4+
	Q7zdWBGtOt8Pw26ufPE8OyROmDlf2F/uDu3RMRovium63Easg4cLAx4598Apl/Y1sZvcrD6NEnz
	/9xV2Q+/VHmrPpgSnDdk0Hrifq7Z6p18KPWuQRs1NtY2e6asBdJHDGICpNzXb37CfsdrRDrfm5a
	zdePsk+y6vBNyclOXx3Ysw6h28tY28NZoCIuSQJejOtmAZ6NGcNO8YkvCKKiIVE+x3ZWeObBDIL
	ERKyubAqneUaykmLAN9xgcfBYePVcTqaPM6acKDT6MTY9ACaKlUJdcjmdw4y5ovCnizdIAzQ445
	6MOWVzgJE4ZoYtdEFxXVjVcS777n85JyEE7iHbVDOseCd4y9PqeLQm1rTjLua5OSCjNNuDLyzoy
	UKv7KDyNNCkHzobg==
X-Received: by 2002:a05:7300:dc0a:b0:304:188d:d0b0 with SMTP id 5a478bee46e88-30ba5f65ea9mr345591eec.20.1781550218577;
        Mon, 15 Jun 2026 12:03:38 -0700 (PDT)
X-Received: by 2002:a05:7300:dc0a:b0:304:188d:d0b0 with SMTP id 5a478bee46e88-30ba5f65ea9mr345556eec.20.1781550218064;
        Mon, 15 Jun 2026 12:03:38 -0700 (PDT)
Received: from [192.168.1.7] ([122.177.240.180])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081ea4f7a0sm14498431eec.24.2026.06.15.12.03.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 12:03:37 -0700 (PDT)
Message-ID: <7c94cd53-af84-4766-9e7d-96f6462303b3@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 00:33:29 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] phy: qcom: qmp-usbc: Add support for "phy" reset
 used on Shikra
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
 <20260526184401.3959717-5-pratham.pratap@oss.qualcomm.com>
 <d2098b36-c514-44e8-99b9-2213c4d52752@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <d2098b36-c514-44e8-99b9-2213c4d52752@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDIwMiBTYWx0ZWRfX9zraRv8kJEpr
 A38lU35US2vP312Isg7r3ZBsZGttSXyo/IysutKiIEQ/KWa7dIE4Kpi0HXbEqHgt98nBU5+jszF
 mczwO/4w6x0Ol9tN8yfinXyl0w9O7gWFluf3H+6OBba9O933u94t1x/k5iDrDxcGnmc+tpP1NJu
 Y5dt0/BsHuAs0bPPei372ox7t4RY8ATmfLJbaA349FC6Zzx6UF9FfmZ0m5ERBHkyrwLr3+QnLLl
 LeKrnHyPygJxX3tPHjjtM8ddIHDIos32kKHMFKn/dht3UV504oi/LQnm8ZdPpS9rmsNzYXpThf9
 LTGfaMCKjJrPDqj/XLShClQoy8Mvxmz9j0qN2KP4BXToJCRqlJ892qpNGFKQPIgIXNOV3rIibqw
 TY3NtOUR/HPgXVDbRa/t+tzVByeD56aZHnU+8vBjzuPh1T3bGwjEHxFNlTw/KHzKzBqT3C68e/S
 Div3SKZ2madCs/OT+Cw==
X-Proofpoint-ORIG-GUID: vNs_3uF3RceF1rJ939fBG8g0zQPMcpr1
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDIwMiBTYWx0ZWRfX2M0hJvQrwYTG
 NrU2kcWHV+M/FG4uT5p+Zk2yKYU8xGItaKDQ6FY879OLMZzIk88WJN86YoPbQAu9HTnfC6xu1B5
 GMT0L3fcZqPOZh5MdEyzYoJxGaB8mp4=
X-Authority-Analysis: v=2.4 cv=HttG3UTS c=1 sm=1 tr=0 ts=6a304c8b cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=6oJ3Pe8WsobediNJCW6FeQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=d00akK6jzC0l7pe6fNoA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: vNs_3uF3RceF1rJ939fBG8g0zQPMcpr1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_05,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606150202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_120340_231461_D85416B9 
X-CRM114-Status: GOOD (  18.06  )
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



On 5/27/2026 11:57 AM, Xiangxu Yin wrote:
> 
> On 5/27/2026 2:44 AM, Pratham Pratap wrote:
>> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>
>> Shikra uses three resets (dp/ phy/ phy_phy). Add the extra "phy" reset
>> needed for operation of QMP Phy on Shikra.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> Signed-off-by: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> index c342479a3798..067e7f6e5642 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> @@ -513,7 +513,7 @@ static const char * const usb3phy_reset_l[] = {
>>   };
>>   
>>   static const char * const usb3dpphy_reset_l[] = {
>> -	"phy_phy", "dp_phy",
>> +	"phy_phy", "dp_phy", "phy",
>>   };
>>   
> 
> 
> usb3dpphy_reset_l is shared with qcs615_usb3dp_phy_cfg, but I didn't find any optional-reset handling in qmp_usbc_reset_init().
> talos.dtsi only defines two resets for qcom,qcs615-qmp-usb3-dp-phy, so adding "phy" here unconditionally will break probe on QCS615.
> Please create a separate reset list for Shikra instead.
> 
> 

ACK, will create a new match_data cfg for Shikra instead of reusing the 
talos one.

Regards,
Krishna,

>>   static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
