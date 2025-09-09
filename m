Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1DA9CA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 10:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QV4b5fa0H3S187bOT71QDBihaK5g9ofjn7ZkInmWq/g=; b=E2yrReRGqnhIDr
	Dzhy4wji2C//9N9JHne/bFenv7oyI6EBcKgr7cTsjB0NstRglt6GNv/iziMP0piQVMXAN6jEjEUk0
	o2YOzOVGHtSTCKUgeHaaO8h0ORTyizUvVONLUf+vod5ye7KUIuxr0q3V5eJcn9ZY0gUE+zjXYC/Ua
	st/luzj32AUsIlkyIhONH4qXM8oysJc3TH0YMmbRbi0Sjo1Gi1V43OY8e73DE2oJQ1rdrb8PTcbh1
	Cas/yRyeI15vjm5mKY9lj5xB5sovzrocp5OBgVWhsA8FSN/ctWl4pA/N7PYVLbONEx4A3GLDQ23GY
	VNqkZxApnqTFSdeBGzoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvvAI-00000006DKp-2EfX;
	Tue, 09 Sep 2025 10:01:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvtnn-00000005bDl-20O2
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 08:34:13 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896SYW1027328
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 08:34:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	upmujvJfvnWBaiiN0ti0rvQTX7eUdmtsYcwo6llGIhA=; b=kEGqlLdDFAhiru0H
	ACVzBaGIQxIbrhuhxQvqDUjDKI7LXobCRsLJlvv/eU+ZwKXY7CVCs+gBdB6uDHkj
	qXhF7Lu5bPbwYtrxSZDhqYCDZLiexhxip3pHpbVAZsGVkGFkGdNgrcMAz4+sdMXd
	+/ldYAvtd6esKQu6D/i2/hu7utMp3vnXbC7ngi6PNOqRUXk2fKGIwFXGKanDXLmi
	5j5zsi/XpvIpW5gDA1dXqOvoJmshNVGDwhxJCWa2N7NyomvkRxgkij304lz+Xa0y
	+tduKnMc6pjiRm9Bg7IDvKcdv2QfTFfQRIq6W2JBWPDqVj7P596v5RA68m/ucCbX
	Ax7WzQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfychq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 08:34:10 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3280d0d4d11so9041564a91.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 01:34:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757406849; x=1758011649;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=upmujvJfvnWBaiiN0ti0rvQTX7eUdmtsYcwo6llGIhA=;
        b=VCJogug0R+Ib71ntXw2D3Qm0P5PSiRMY59QM3fV3Y/QOhdamGjhGPuwYBaxTvtkCdd
         Whet6CURlHGSSlVu/9dzdNqe0NZkqBTTdlAIhpnjO4KP4KC+7Ar6kF2JHc5t22rf/Z6w
         JmPyDn20QZCTzEFE4ljMxVfCEwFrnj89m3NLn35XYchDEUPn2GIlmeBTT1tUU9Rk7ACd
         kc2CoOtfGfScC9whUKJfMLUfMPqrpuUJiKCZ8z6aDYG/lRI4wp6FOOtimHNcb16uc4Ke
         acaKQTST+r1fbSn9IEMnMfS/lR4eSj53osWr3VxkO397SHddKcVxiCinIeHGwA7L2lHk
         c1IA==
X-Forwarded-Encrypted: i=1; AJvYcCWzT1TyFfwb+7U6SIDOHolYJzqBQtc+kwupxXcWuE0mVBJhIJYyL5/I2GYVpNKn3xCO8eeU/Lvbw34=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNSdTAqRbSb5u8LFvgPzPlGKli40dCXARHxVLTJBR0Y1CLRhD8
	XvFNXTSOF2R7JcWOSF7QWRljdqS1weIOvCr9RTM6xGHOdCUiyWkuzYrmGB9J33qpcA6WRgUApex
	tKqgBcgvpKDDEVciZg/okJar0UOMAJ3dxrkwS7m+I26NO0zO/o4hK2va5As/2bTFYpJGf75YbxS
	OD
X-Gm-Gg: ASbGncsI5fc1IVJcI9bQyetH5jMN3Di2rGrhY6AzrL7dik5F76x4V+BHi1SEq7EKUNf
	UjUVYm70MDS7T/pY4KWsxWDSjW1RwluDE7k4bQy7Q2KYqhH6mC73K0a1AlXbRu4pLX7+XFAPl5U
	jUllvAI+8i0yMOVPTGpLq7QcyHvJaXnFVkcAmSfSMvlzTuUiPseKxMLVio3xnmAqVTToNLxI/Qg
	njkSMuzNHW9Gz5qtt07JAJxFU3exeDcZ+W5js0zMA3J7/gPqWHqOC8GMLts91NSszklCribwP5k
	XdgVqlgANRMG0htfDfLdM7kSRSeKto+SMFa58f4069nS2n1pznPpKaOnE/X183NDFgFUBDm3rXK
	0XXEHx3wc
X-Received: by 2002:a17:90b:2f4d:b0:32b:7d2f:2ee5 with SMTP id 98e67ed59e1d1-32d43f53f7fmr15226199a91.16.1757406847995;
        Tue, 09 Sep 2025 01:34:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFVYaSNpwmTtzVm52pLe74SQM+AQgVs52r6EibYNw4s3M1qPfrL9xKm/fTur78uRMs2Z/xFA==
X-Received: by 2002:a17:90b:2f4d:b0:32b:7d2f:2ee5 with SMTP id 98e67ed59e1d1-32d43f53f7fmr15226163a91.16.1757406847633;
        Tue, 09 Sep 2025 01:34:07 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4fb15f50d6sm14836433a12.0.2025.09.09.01.34.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 01:34:07 -0700 (PDT)
Message-ID: <1bed21ff-ca0d-4436-9d40-acf26dfda362@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 14:04:02 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] phy: qcom-qmp-usb: fix NULL pointer dereference in PM
 callbacks
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Poovendhan Selvaraj <quic_poovendh@quicinc.com>,
        stable@vger.kernel.org
References: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
 <20250825-qmp-null-deref-on-pm-v1-1-bbd3ca330849@oss.qualcomm.com>
 <aLWllyKvag-BAXjn@vaman>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <aLWllyKvag-BAXjn@vaman>
X-Proofpoint-ORIG-GUID: TZt268T5fY4L_SerCQLEMR35ESgt_irW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX5VB9w3N7iJ2U
 tZS5GSJS5GzGnzvGCP9SzI5U1h0HaLhVmHHsuBWb3vglzzwfxvsyzNOpT/KewwMoDT+42ZdaHOw
 QTxFHu8R8UYUdzNHl663zk/HQkX7q7rnZogcU8RuKfu3nbuUSIUDV2IT9j8Vpd9TPig+l9b9/9d
 T+ptB6fe5+eGuliYU3NPz23pSU9hcN/GJgYBDutHSbiNb3JgU9w9Lx1TKmtupa45j4VWLQM7FtU
 zn7QlXjUYHC+aE0OtyMnJRsu8dsobe4EXSk4Bx0NvPo8czrJo/gOwogRnvtmfTaohSLk5GXv1hj
 aLFqzTNu5Sab59eaD201ljlJCSSoAgWbB15sRAl4l3tGZgVVzE1/W4tE4SrOKO81hH2kcTx496A
 gNWoTIOu
X-Proofpoint-GUID: TZt268T5fY4L_SerCQLEMR35ESgt_irW
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68bfe682 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=zK7o3jtn9Y8dKal1iDgA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_013411_528361_F46D8017 
X-CRM114-Status: GOOD (  12.54  )
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


On 9/1/2025 7:24 PM, Vinod Koul wrote:
> On 25-08-25, 17:22, Kathiravan Thirumoorthy wrote:
>> From: Poovendhan Selvaraj<quic_poovendh@quicinc.com>
>>
>> The pm ops are enabled before qmp phy create which causes
>> a NULL pointer dereference when accessing qmp->phy->init_count
>> in the qmp_usb_runtime_suspend.
>>
>> So if qmp->phy is NULL, bail out early in suspend / resume callbacks
>> to avoid the NULL pointer dereference in qmp_usb_runtime_suspend and
>> qmp_usb_runtime_resume.
> That is a band-aid. we should enable pm only when ready...
> Why not do that instead?

Thanks Vinod. Sorry for the delay, I'm just back from my vacation.

Sure, let me check why the PM is getting enabled before its ready.

Thanks,

Kathiravan T.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
