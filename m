Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35C1BCCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 12:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CjSlECSE0E2ubNWLQtNpg/OqFJ7U5fDsrRIRxVGcLo=; b=b5wHAE2OID+53Z
	AJfjcf7XxXPpCBBn3mjir0a30tEDhDwp9L7xHmH+7sBT1CyoCEkeATR1BF8W+h38Z4n0omQbjaCt/
	y1kW9t85AK13PQhf6h6o2/rokwOWAmizm1VYCh28rFCwBZ6dUTkiubkLL8q4+hjv5+stjV0wTws4A
	IWdtjmNNdiHK32+Dt7p5wo621HbXc0ZL8Qzx1KT/9NMR2ySrXNypT/Eoi5MNocxrLK40hKByKSulH
	o7KmazpNNTnLwPw7ZhG/WocgSHTDQ5iSnINgCOmlVw6itezrtJLQVizWyQJMH6eID/QCytKsicFdy
	k9F4qCBz3BVUGRXEsOvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQdj-00000005NGi-3tHZ;
	Mon, 10 Nov 2025 12:04:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQdg-00000005NG9-48JJ
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 12:04:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA9CfFl3146223
	for <linux-phy@lists.infradead.org>; Mon, 10 Nov 2025 12:04:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fAMlSP1cES968wwO9rlfMbzdj2xWrLcU9q2FW6trd6I=; b=d6Hx6yxa60IwSD0d
	RH28GrzDrKbhwrb8wZ0rihWmrZoldrXU1Y0mIJcC22Oo/17Z3w9TMLawCmn1lLlR
	L0CwwJAW5Oi4UskmEZgZ1CBhpz2F+upHpEGGw0yo7bHyPU9zIhK1wBxom14k5UOV
	cmTG8otm9uY115nKigNPMyvC0GanGB0jHr5RoJDfQXHRzqu+EtVgbIpP7wobv9Ts
	lsmeDYTYO9M7maPPfrWwtRzUxj6LBD4lJrR8D6d2LZB7mgsojudiGmtiw0BTjwoE
	tRgkxh/1yMEXO7TmWqhotr6O4tLJEj3W9Bi0f5FOcxi4GxaP2F7uzhrPwOm9RzCC
	6dhgbg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abd7hrgmm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Nov 2025 12:04:50 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso8098001cf.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Nov 2025 04:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762776290; x=1763381090; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fAMlSP1cES968wwO9rlfMbzdj2xWrLcU9q2FW6trd6I=;
        b=RCVbxiwvke+S0xQ9tz43KLyPOR69NUSU44Z7f62O1soE7z5cRkxQCi5O+coE7BjMDz
         KcmUA58Oknup0zHhUJ9YXhbQdWM175OZHGEz8EaEkqRzbOP6fDbG89LW4D4sqfEr0QmY
         pmGrT8qdU4XebYIwNW7VSHCHNksPSU/pSD8Ep6f+eKLm7/cR8Cth/bJp8Y8D2TsDg1J+
         D9+rntx36HSeWG5USNaQVyCN5uMZgg9AiFBbjGyOTyt5Zy3SA6HFBKf2y33MgffFyNzn
         fI/84P8M2d5t6Swz6ny8NQGXhDcKZCEeNDWJTFOxmplIqCqng7+NA+B4G2QJ5appUOGu
         XCKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762776290; x=1763381090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fAMlSP1cES968wwO9rlfMbzdj2xWrLcU9q2FW6trd6I=;
        b=m3wbwS6Hhbc4H2L0AkbVKu7+CmjSxjnj5qDleY3LQICPNpJHtLk65+FVKWs4PpnLTM
         r7AZ3FzEeu92A17qN3g73fJ+pGtGws6IqwobkF2XMtnHSyE7MSJ+cx8EL9h9Pcw4/F5H
         mC+0d9f9NcvwQBRfY0GpMRiVWTkA9d618OK6FTSTANX/q1DFId986ySSk9qY1NS+H2B2
         x+8Os4pARgseBpXdK9+W4iYZPRWL6J6boys0xu4CBBPdhSYVryr1NTb8tVDiL3RXEfhi
         EIk8nID+t2As26eusjx3Yu48FEAYgbDWRGqWwuZCVLcgiHmJ9ocLkCdICUeZK1/p9OHo
         HggQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqG+vlbfEFV0wYYzT1vuTZ4Dx9DiAF3vcGqXReOHT9dTPUqOJfNfPLntsD7xdauQUyC24oqUbpwHI=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywo2fAZwEgq0bf9Is8f23l+SyJqKhSuo+ATZNkF5tLOX1yASwL8
	+VbrAQqTV7B9qWBPCl2kksgwSqvmQ13eKDjLWd7WMq8m0HVr7jbAMnB5FVU49QqF11V/KmmdT/h
	h7tK9yd5T/CKtvraATE+gxjyJGOOL2GtQ0jqbpSNic7Dp0cRj4NlNCM/ggw0HWfxt64NP
X-Gm-Gg: ASbGnctq/b0CWNLkS2mO1jMU0WE51xwg4orUdSpsEGfDLeCg4E3T0qX6ERVCBA/GvEo
	vcGy2ZGsKpeQQ5dFbxcdViDALKD5EY67WjOmjkwzQsI9+SKZeHpVviwKMpGcbp+kNYanYNU3GcQ
	FmJu2eKhAe1YMIX7dQiyrVdwJk5cP1MLhA6Ix8NWHJD0HlyzK86MrOoGItkgE+HjCYVzxryaWxl
	TssKcIwqijI++MGJt/aJoYhCXeTjfDf+9PFLccustmT071h3j2kaIcLFRliQV6V5yf/BT79QO96
	CRZFycUvJkiilFq6M2RC7kGUEGkigxPkCEDueRBMODOq1eTuh1+ZfU7HYz9IDP8o4tIt3Epky3m
	sXMPbZoct6KiPNKFO3jmKYhe6AWRCd1D/P0FDRiA5apLfsLWk5C+rQ+hC
X-Received: by 2002:a05:622a:3cb:b0:4e8:a001:226d with SMTP id d75a77b69052e-4edc6055c83mr3412201cf.7.1762776290204;
        Mon, 10 Nov 2025 04:04:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzDbbLjdzMiLA+y68+aSiGVjpIJDyiwSr5crhClqs7TwZ7jR7Ff37L74FLOF28viWzc1ZsFg==
X-Received: by 2002:a05:622a:3cb:b0:4e8:a001:226d with SMTP id d75a77b69052e-4edc6055c83mr3411801cf.7.1762776289668;
        Mon, 10 Nov 2025 04:04:49 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf4fbf3csm1069581766b.26.2025.11.10.04.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 04:04:49 -0800 (PST)
Message-ID: <454ad8d6-43c9-4819-b849-c123fa9d33bd@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 13:04:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] add vdda-aux regulator support for QMP PHY on QCS6490
To: Amit Singh <quic_amitsi@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        lumag@kernel.org, neil.armstrong@linaro.org, quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_riteshk@quicinc.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
References: <20251110115806.2379442-1-quic_amitsi@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110115806.2379442-1-quic_amitsi@quicinc.com>
X-Proofpoint-GUID: ZxhFleL5f2so1V-nzFVggjs-JvsStR0N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEwNCBTYWx0ZWRfX/kesdIt8DdNx
 vassNLN0IxhoAJ+hQVFX7WuVpkTspYCcHBUYI4TuK4kPjmsZFALkMAm0nmgVg4P4js3BG45ceSz
 qc/fMsQWo+amvWMjLUZlboruREuu/dxYfc8bGZB84ocl/amQLBSkQ9HKoXeKfhusDVHA9Dzny+8
 /gEn7K4+4NP0jjkGbKHlLGZ21oeGTv8jZgzuAmqRRUdxivm8zPg4Lp0pE5r8x1yv9E+MwGiou6m
 kSV68gne/N+qI9x19fVuvcSVEjIpqBODct4aKBAWjTWcWyI6/rQvAWiyovje1hTxEoec2b0a5X+
 X+Yqc7UXS9dxHfVDW9t5Keodymk5HB2kByLNoxh7iqL8as8kwIlqE0gQX14IilZsJjy2Sic1uVE
 HIjktwI/3mr2htYGgZgzhpnBNevZGg==
X-Proofpoint-ORIG-GUID: ZxhFleL5f2so1V-nzFVggjs-JvsStR0N
X-Authority-Analysis: v=2.4 cv=Yt4ChoYX c=1 sm=1 tr=0 ts=6911d4e2 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=yJhrbEhF6J9Oi74tKswA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511100104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_040453_143890_0DDB010D 
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

On 11/10/25 12:58 PM, Amit Singh wrote:
> The `vdda-aux` supply is necessary for proper power sequencing and reliable
> USB enumeration on platforms that provide this rail.
> 
> This series adds support for the `vdda-aux` regulator to the QMP PHY driver
> and updates the QCS6490 RB3 Gen2 device tree to provide the required
> auxiliary 3.0 V rail for stable USB PHY operation.
> Platforms that do not define `vdda-aux` remain unaffected.
> 
> Tested on RB3 Gen2 (QCS6490) platform to ensure proper USB enumeration and
> PHY stability.

I don't see this vreg going to the SoC on the schematics.

What is it actually powering?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
