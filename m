Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 319D9C3ABD8
	for <linux-phy@archiver.kernel.org>; Fri, 16 May 2025 09:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nkhmY6DzH/+ubNq4MMJumjobI+obS8sNshddM6QcaNs=; b=4T5zYvx431xxhT
	0pBWzfrnI/iaR9AA9bh2Eg0dRQUEPcfP+/ChQ0GnddzmNlFoERI0z1UtF3KcWdBNjfQhzAB+rr3yF
	oEVht3KIaspijJR5J3kOcZZ+UAPtYUDoyZTtk66P1EiG1PuA20gAjTu6ToJkZMBRapNfYS7TI09NH
	ByF3SBCHGROSRH2ZzQfyfxryaWPb2yZ/W4/iU+2EKDyAPBLwpoePvEPjavKTIxngVD/Y5eJfitiDc
	hbrF5pDMbvOaL0KGtOtYjiiSd7tuvCyVvo6HIyoytETPZWQIEtYmbWw3fu1NhEkDFTpLlW268s1b/
	Y3WU6VgBcJnemKiR5bUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqw3-00000002vvB-3Fz3;
	Fri, 16 May 2025 09:00:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqw2-00000002vub-0NAh
	for linux-phy@lists.infradead.org;
	Fri, 16 May 2025 09:00:55 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54G3aw8q024609
	for <linux-phy@lists.infradead.org>; Fri, 16 May 2025 09:00:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	emNqD3+84OsoC1sz/sXLny32zR/CcxC3pmnwMkCRoCM=; b=YOy6A7NPx6grlFyP
	xIY8FjBE6HADmb0Dksh2OqNTkJCjHnpZl9scKhjH8jipX/dAPYOWESQPyJ7aH4kK
	o8mKWhf9m7FNJnJAqUj9aFvPLeBpMrkOkugSLQFf9jEQfGyKZcX4RJMc9sDcyO8+
	yNXuHxV7nZAjApOBM18obg3e0u92oWcD7e3nfkxOxBpg7xf9b/usDQbvxNigP4g7
	PcZ8W9IQXs1ib/TSOvT77adv4fmIWMeo2JtCCaGsx3VKHzwMUgdYXvFlycEQ8htT
	hc/zXNJkvnU3yaw7XIYfNIyyYNH4qWCJnt6J5LUd0XdF1bcm4GS5jsaSsQWRjARO
	A954PA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcp1cpr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 May 2025 09:00:52 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f899c646afso5562366d6.2
        for <linux-phy@lists.infradead.org>; Fri, 16 May 2025 02:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747386051; x=1747990851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=emNqD3+84OsoC1sz/sXLny32zR/CcxC3pmnwMkCRoCM=;
        b=L28GSBnqMASwQe5Xrti/Zy1H6G3Ck6qD9j3sN8iPGkLfGlDE6BdYcSeynwhNBoKClE
         ut0szOzlHrt8lGta50XY4a+slfb/7iKOyYLg0jpj/ErmzJ3Yqk6Bjj307OheD+g5OMbC
         4VPxAO/sQL7KtwCCU19cGntWMqiA4HmmHcKreDK15zm1nTTyhPXCCF2cjm4/Ykp7PX9O
         TZdOywwjRk3a5CI8zDOwVivmfFNM881AWaCKw7gsvWZzhEEy1LSNVUtEqkzSDUJmLZYX
         qH+O7K4BtOXyFet6XTLwssqWB/B46k6P9Uai4HmCOzLc5hXLd7SXErDzXRTsJwTYXwtl
         yjXg==
X-Forwarded-Encrypted: i=1; AJvYcCUVIEdC6NEjjG2AVVOYHR/+HedLKj4Bv/t/jfwSAud/DxGVMyHUw8AaHxYMg3e8/UuRi/hUnzxFoSM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfHRArEDlIHABckwCcW2Cgg/ODraFiPnlSnOcijZJpcBZPZfsU
	JhNLuuIAZmGeEddgHR7ut/XYcRc21FeHQQ+b/r4nbgHkCLMdNIt4/P+HbQt+HiS44Nov1lYzMcb
	x/AzpcF/CIvgZipLOaesHI6qJwkafe+RQf6C543UDOjRxJoUe630FulsoErGrLYGcKtpQ
X-Gm-Gg: ASbGnctEJpvVPGxPnvS/0fafTflyi1b8wFJ5Uk8Pnept6/V8VvJ/cKKRw2jBR7hi7xg
	a7Uida8xcfdG7fwAjj1xVeh/LTEPbKbk1B3bzPuF4qEMsv+yMYYDUvOGsni8a4q7u3+SP+sSW56
	E3DwCEa2F2jzPw9k0fyvB9k3Hr2UFoA6yOx4hGZAYEQhVdTiHhu1mNN+Up6W0Jli/IBNTTRP9PH
	9ai8kZ4eb2cdjm12EYwYnKlDpA1b3HBxd/I2CNYb5BHrRnR8pGsSG2iYo9K42qVXwyts/GOdTi1
	3W2NzJUK1sYmnwBX2h/Zk5OVS7a8VqqPWyKRysSgCqjsxKzThPSkjaINjp7gvMIvjg==
X-Received: by 2002:ad4:5f8e:0:b0:6d9:2fe3:bf0c with SMTP id 6a1803df08f44-6f8b087cad8mr16035506d6.4.1747386050638;
        Fri, 16 May 2025 02:00:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFssDUTPLfA8FG52oie+qg7EwCQlej6WrDyiMpP6WkKB2iMQNNW99VeHioL7oGkK8GI+fj7kg==
X-Received: by 2002:ad4:5f8e:0:b0:6d9:2fe3:bf0c with SMTP id 6a1803df08f44-6f8b087cad8mr16035296d6.4.1747386050098;
        Fri, 16 May 2025 02:00:50 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6005a6e019asm1055150a12.36.2025.05.16.02.00.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 02:00:49 -0700 (PDT)
Message-ID: <f5e1510f-3496-4f5e-b093-623d3b4be428@oss.qualcomm.com>
Date: Fri, 16 May 2025 11:00:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
 <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
X-Proofpoint-ORIG-GUID: FYsZGrWf9jNA74HCsKd4a7WIwU6-w2ro
X-Authority-Analysis: v=2.4 cv=D8dHKuRj c=1 sm=1 tr=0 ts=6826fec4 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=4QkPWBSfZRwaAYBdk_UA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDA4NCBTYWx0ZWRfXy2oQudnxgwGC
 GJOC3DuiR4iEKdpdrdhxW7TwJRSVPJHCCBm0YKr7y/PgJHhFemc87Wd7Z8jbil7+OQi+UojoPOL
 IfH8Dn9MbRnAG7frekE6UCfwfZFR3KIe8TrM/V+fE8gmqkNPezlolRsbuDzW4TNAb4QV148afWA
 wSw4TxJn2BynlS/IIJYH0zuwZE5C9uxgZtUfHlvlyNp7XOvaWZFnp/OjpLt62DYTNxz2EmJAsut
 TdbJXZOCc+OPxYmul0JVpYV3oNC2S13c4XsFggM4gJlogy1Wm8yGBjXKTiiTHKcr45xfnCaGEKW
 AbPlZLOJpAWEeu09w/v6HFTYT7/AlZytcnpnsiCD9cKc1QFbunrUu3A0q8WqvIsbU1JAMc0xPTD
 jW4eR0zNZR48el653tqTCF37yk13IZaWi6+B8QHmsOKTmDRDh1704WllqdWTPAyFmOXKuOGq
X-Proofpoint-GUID: FYsZGrWf9jNA74HCsKd4a7WIwU6-w2ro
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_04,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505160084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_020054_140917_C0B41210 
X-CRM114-Status: GOOD (  12.40  )
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

On 5/14/25 6:38 PM, neil.armstrong@linaro.org wrote:
> On 14/05/2025 13:37, Mrinmay Sarkar wrote:
>> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
>>
>> The maximum link speed was previously restricted to Gen3 due to the
>> absence of Gen4 equalization support in the driver.
>>
>> Add change to remove max link speed property, Since Gen4 equalization
>> support has already been added into the driver.
> 
> Which driver, PHY or Controller ?

Controller, see 

09483959e34d ("PCI: dwc: Add support for configuring lane equalization presets")

and commits around it

does this change depends on the patch 1 PHY settings update ?

That I'm curious about too, but I would guesstimate no

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
