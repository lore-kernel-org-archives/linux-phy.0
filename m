Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 574BFD68BD8
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 04:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArVcoF+dzL8m5aK6pSmJv4RIHG274VyNCjEhzz7+zFo=; b=CgfSgiGneiQS5R
	eNlfKnxSM/Au/NlGzv/egKdOD/TjikovoOjiwzIp7guK+zyUyxO6wyj7jeah09qv6b8wSEubJPr2s
	O6rxTzAoG4XCxvlry/wRbfBTQTq6ghQd8g9gbw5TS5gXiv+gex09OJB6GEI4oTnEopb9VG6FGNI3s
	6BmC7QveQsfmwDtCfAqclFKUvnzxX2tkXykY4+ehM/U59URLukliaJFulUP598mZO0xXiuyybGy+R
	nBXx/Q+iWXVv76OFAYblmrKEYNddSJ0TL2RWS7RIhQzmshzpr52WTo10jJ7Qka3ka2K/ytS7lCvqL
	x2fAQgjFkYAWqoaXO6JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW5jY-00000007nUI-2A9f;
	Thu, 18 Dec 2025 04:35:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW5jT-00000007nTr-028U
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 04:35:22 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI1YXR54147950
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 04:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sVa1CSdrnwECiKgBD92ojEgY2DkloPMzdJdWTxiJgtU=; b=fP0onLuDUJJhXHO1
	x67Bp7ML7Q0JOUdNQrb0XuKSQtJr1QffSzPfIWhHele244MYy7MQJaBgjmAZ9uvp
	T7fM3jOAtC80koxJ387F7iW9aK5wb4oH3r7K4N475Fmb0MtvRvBWfcjMsXy1xF2j
	HOYDUNNRWTzy5jX5OlnIn/lzZxARcWH9e8khZdi6d5Yx4kQ22YS4J+EOorsaC9B5
	GXYoriEStLlvXX4oU1Jkg3GT6ZNqLLwJq6HuHQwDPSO2TALdu0XWL2Ob3gcUNQLP
	2ua6H3FEa4gorob7WhYoWE3KYpJ9XFOoeBzPMiRtH6jJOfpyM2RqDHjjvOV2Suu9
	CfpRyg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b40u79mx3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 04:35:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f1f79d6afso4109075ad.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Dec 2025 20:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766032516; x=1766637316; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sVa1CSdrnwECiKgBD92ojEgY2DkloPMzdJdWTxiJgtU=;
        b=U3AgQBJApaVZmS38YedbWyrAj8Gz/2KiZzHqY8yyaqlHXvDnoMTDwlW1CUbraQ9Bg8
         hIJt16M90M3rgznghqWKDwsnUb//KKPVTFvu5p+B0S3U0oQ53C+FIOsgYVzxGvOtyoQc
         SSaG6qggUY1BLty7Ahze4o1829Uo4mVR2UAoMQIctCOBkeayLzwYUNFJfUQ93D3yO6a5
         RwlW2VC852CdPy9DbmOQm979cBQhH6yXdfhCBj6iW1p1VYi/JLpTITaFnAIUZqDmHMw0
         NQuiY8fXar66C+xtsXeroldLTpN6GInc/0ySJPCaTReI9a7rO6QFuZvzcvsC6SGutNpW
         3AZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766032516; x=1766637316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sVa1CSdrnwECiKgBD92ojEgY2DkloPMzdJdWTxiJgtU=;
        b=KK6o2uy4wSYNX9LUtqJ9A5ZQpK/YLJXmdS5oPqpR0YDa9Dk+DOATCGK/Qx7p8Qe513
         vnlp6ECh343T3C+LaLfDJ1BDT1XV24BwdRqYWq6oq6b9KzyzaeNQHVUGOSPkA2vJ4piR
         jid9nzNi8Xmma1aKT98tmEDUhblpv5QHyJwtEUfezTy7RpHSC7amwXOkKXL/7nKAFto3
         7MT8aCSJH69VU4IU/sups4/cJO6n9CRkB4nG3th43jZbiBIbeWhCL1MiNIOtWJBK9Jsq
         y3+mOqEV9Xl9PjtuQ0aJIbdtQNVGv5bpHnN+6FJ/cY+TiaaO7FmtLSM3nEV/GydqKAKL
         kjCQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/Mejxt8rtNupWdUpyseyOt75F9TJ/qLmRgl9s0p/x9/h3NFeGVaq/3RxfOCfoqTKo1GCDCwGXO5E=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZYQBcR2qVfHO6K2okvQleysx8ZLP5gbSZAgKCyWwP5JoFfZ2r
	jiehKe3TPVELr88OnCCz6x51dSgdzXwfGQeWst0CLCDrbkTJL/lLGEWDdcqmezYWYvoNuunRG1X
	SY4e6Yn34TW4Xny2IhzaZIfB4OWn7eDMPTJqYRNKPdqsI9sR9ZDg/34AL3EZFhdQM2IPc
X-Gm-Gg: AY/fxX62s+ZLoCaDsEBT+2Ja3PylKgMRVRdPQFAFuyUBtRmMML00gpnk1ECzWhRYUdn
	g7fInhJ5v1q9nqmTrXjV1NfPdFwL6DXU16od3e+4V3utgFkIcIVRMjuiTv/+xqL42iYw7sAso6x
	MO2rAqmL/7KhLf5AdefQp+UN0gOD6uXuRVb6d0P7lrVGfqxbrx0U+v0gwrMlkqQheouM5jWxPZi
	u2RlOfXWL/3nGh9t5YAvozDErmUbIQI0vS/29lha7gFAwEvYUCLg+P8RxtUtcNHHUHXgtsxyLaN
	2IPRVuHoeUzE29zTeLnXvQ/vs4iPQRuJbUT1om5DhG1UfbsfOF4qeR1Qqjl8oTn5uplRWtE8Kj/
	C6iK3yOKfJTuCpk7Zx0ryT3/zOzbZfNGzGAVFIHn5Izg=
X-Received: by 2002:a17:903:40c6:b0:2a2:d2e8:9f2d with SMTP id d9443c01a7336-2a2d2e8a11cmr13751115ad.48.1766032515644;
        Wed, 17 Dec 2025 20:35:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF6J0UYF6kZQkNF6SA4RhFE8JUQmyNr2k3/pxnoOz/h5y6RtFTBnbE17xkiJ5Fq7mS2UUPf8w==
X-Received: by 2002:a17:903:40c6:b0:2a2:d2e8:9f2d with SMTP id d9443c01a7336-2a2d2e8a11cmr13750765ad.48.1766032515036;
        Wed, 17 Dec 2025 20:35:15 -0800 (PST)
Received: from [192.168.29.102] ([49.37.131.182])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2d0ba4918sm9379565ad.44.2025.12.17.20.35.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 20:35:14 -0800 (PST)
Message-ID: <775169af-7e03-41b8-a451-e5332e1ef2fc@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 10:05:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-qmp-usb: Set regulator load before enabling
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
        Krishna Kurapati <quic_kriskura@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Chenyuan Yang
 <chenyuan0y@gmail.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250905101243.14815-1-faisal.hassan@oss.qualcomm.com>
 <vda7dcqqfudhoiwbe45irfab62vbn45crfsc7smenskebuteon@rcutjxrfbwrm>
Content-Language: en-US
From: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
In-Reply-To: <vda7dcqqfudhoiwbe45irfab62vbn45crfsc7smenskebuteon@rcutjxrfbwrm>
X-Proofpoint-GUID: 4lPLt_EtmQnDQztgKKkHplVstH7Od-mF
X-Authority-Analysis: v=2.4 cv=Z8Th3XRA c=1 sm=1 tr=0 ts=69438484 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=+Guiguxn7m6EIRRCmRy/sg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TciNa_F-WsWcV98tV7cA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 4lPLt_EtmQnDQztgKKkHplVstH7Od-mF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDAzNCBTYWx0ZWRfXx5ipV3qP+gF5
 tkMb2Pny7aaWhyW0x8hrBfPgXVIN7Q/sVqN7C8qJ9jBfjxl/kvdjHGpsZFrPeQp7qoErjUFx5qw
 JCUbvvYSHPOhL8/5FyiWKM/TBP7vTl6+m5z+VyMDGuCyA7kptten8V1pJYXni77EpgyTXTfWhRY
 VKMBrpvpR0udVmvzKd8SLM1DXyzve7WeD8FMB+QlLll/3uVjy8x/l2eiKDwoIo4pi/2oPAVVGfu
 8nT1BiPvPL4YpdslRbSDHkp2iWLRHFEGTP1Uky5vy7WpIZ0fWDsrBSZ6PBAzNvlGpiLB9l7vx4z
 bOq+lMB06DnfGxiaq2M63ldnxjJdQ/xyXLCgPdEHVfgDGQAShvrF3Dl1VJWiVVVDU797uhE687l
 9mHJse54Xjcfk/Z7RaijkmKFbDUV0w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1011 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_203519_084011_644DC469 
X-CRM114-Status: GOOD (  13.13  )
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



On 9/5/2025 7:16 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 05, 2025 at 03:42:43PM +0530, Faisal Hassan wrote:
>> Set the regulator load before enabling the regulators to ensure stable
>> operation and proper power management on platforms where regulators are
>> shared between the QMP USB PHY and other IP blocks.
>>
>> Introduce a regulator data structure with explicit enable load values and
>> use the regulator framework's `init_load_uA` field along with
>> `devm_regulator_bulk_get_const()` to ensure that `regulator_set_load()` is
>> applied automatically before the first enable, providing consistent power
>> management behavior across platforms.
>>
>> Signed-off-by: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 27 ++++++-------------------
>>  1 file changed, 6 insertions(+), 21 deletions(-)
>>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> 

Hi Vinod,

Gentle ping on this.

Is this ready to be applied, or do you need anything else from me?

Thanks,
Faisal

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
