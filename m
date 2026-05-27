Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D11BCD5BD0
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 14:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSjN6xsMlCz3K7yzSGdP54jZ5gasIw2cBvSLJ7PGd6w=; b=lc0AuAvhpDlm+m
	7cVoTq2kFHG9YtBOQhPw2SXXIamoSakj5l5GcifOxeGnLEHaZTEVlp2Y/JKdz2H9pDxnbleTofOgw
	OiwMlNQ4Mkd+VySmiX95ekOqTAR/FDda10jsgnipc0V38IbvYSPQcnjTIb5q3HGT+54olJXxvQKP9
	rKVxQ4Xc5KpaDQvxNqqaLSBubgiql3jaB83Eqec1Ailcz7JJD3ixZ2cqz+vPFiqqyHWMgfUP4rb+0
	kB/WT11q/VG36BH+9ZA4JFjAMExKqiRCG/ts0GKgeEOAfpuCBELyPVZxLmf7VhmRDOD6RZOTQxCpR
	Dpf9h/gHzVZ4iyYOO/hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSEwo-00000004GQ2-2S4R;
	Wed, 27 May 2026 14:09:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSEwl-00000004GPf-22m9
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 14:09:24 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64R8mZ8E871465
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 14:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yom6/hlovSThP+6ieHUcTcbi8Vc1PPJ9H/N3E1WloIY=; b=hUcQ2FsT8aEnmGFT
	Ib5VtSROx9S2uK2Huo8XrRgAbKSL+wTT2idMZhYV4TMz7vn/jVNzeOWtsvEP0Eh7
	hyOjnDRkT4QpppR/aDCjqEhljlXp3BftqIvgNifO2pUCfEaOFenYDJVTiCBL7e/g
	wUySfm48jr8N6Wy/vi4ppReUnPknmnVGIdvHduWWW5GsBme0/3SDmIK70gbAcCT5
	6TiBi+VET7aWIel+5Il6Tmm422GM/eBVGk9xTXzAj2xq8HSY7LMKZnyho4ZXK2Ub
	6zOHlLTbKhtMkuZ7Ys+lFix2JTmKCVrFymYZTEJQRK6uBnfyVqOQp6Su+2fxoIPv
	QuKjgw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eduru9jg1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 14:09:21 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-82fa2165c3eso7526752b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 07:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779890960; x=1780495760; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yom6/hlovSThP+6ieHUcTcbi8Vc1PPJ9H/N3E1WloIY=;
        b=au37JFhbmgIDOOOrtvCJ9G47+zFX1oTZrl+emxq/EnXqVRHsEAntpVc+t+OD6OD4sl
         8AcojKutJUeNET7Z+SejTitTUfxP3RsQPDwaETWc53ODIU/Wm71zUom02Y+TkbA873Dm
         pzh8IO2tlfurZMJjCL4bbZAIeQco5n3AjeOi0Ehiasrzlbjcxuye+VFpy7GCViY9tk/4
         tqyPLQmbflz6SD+pZ2N929WSl3n9ItEuuM1P0q9Y9SGjEiHElujM7gvepx4fJE3fi/hk
         1iXUZuso0FF5ixiv6lL8+D3jbufoK7/uBPlPpCj4Te6d6UdwUVcW8wWzYCR9BnU0/COO
         tLeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779890960; x=1780495760;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yom6/hlovSThP+6ieHUcTcbi8Vc1PPJ9H/N3E1WloIY=;
        b=mMo43MnAZ4V1KJ0yqIk6I0rt4epv+unepOrAq2fPW9Z06acReWioeuz8PEvsJrowty
         U8dPIL+CcxZhBeiw4RFUqdD43HOf3jDoMNyop7qQFyTrcQvrKdLhzF8dbrf/OZLb6Blm
         O8JY7I8v0+N1bB/TSGgop2IuSxAIokBjbFCr+JWv3z+qqdep64/XQNwElrg4cjA67Pii
         bkth0p+HFvacQ+/AtRC8mscDufRDi/DI3FRsv7Kut16yryJf6PTSZUd/C9BEEQsfkct2
         R4uk7kx0//8dwSrzurPYAqKcWekyvXkoVpqSmqiCOQ11YwkuuETFeJ+PlyCKL+QMuOSj
         TEXA==
X-Forwarded-Encrypted: i=1; AFNElJ/xMOB4/siT+0FxiXvTlbLWqt63IRYmuXy+7/wfqsDYPkOHM6itW0RnOelV7kAY4C2WoYLqYlBv3j4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBVnEgakEzM7tdPHx5wBZe+Gtxx01nHwAZaG77iIqVRBLAYBpa
	4q3LpHHzEusDRdNFvSkOfZo1akiUdcxTsLd+iSd/r6FPS4zd1ND9yYnCfLcQFR+IP8cxbK00FZ+
	pPPbtAsNJhchVEa8v6Ol1k+83A71yT3gLHmMHcxbZfVzfAzPy5Voky5l0ZdyjIP+gGwgP
X-Gm-Gg: Acq92OH6v0PmvXoH89o8VUT6euLZtLFH27GrtCjvqxHFkXtoBP8LslQFpxjmDRDu7DH
	lYzsgnaJ88+kuoF/dEVP4O1gmDZj/fav5NjYUpWTdbstEswXkR7AgPFgTf0JC6rZZ4c9oAZZ4B2
	GEmDndqsDLW2sZHx6I2FKSzANwNvdxCgnYkCrV81ffMqnysGINltebmtSS0bNn+uC+yXkEdCfAl
	c4karUxsLXG0oVCLvLERAjjyeUQO+zm+dh9VdD+q6YEtRxaRXUEZixhmPr7Ruc4UETMvtRGw1Mi
	BG/aTW6uHR4aCCSmuKEKyESIiD4EdH/3nCKGMlLTN9mdAWirFQkEfoWi1JCWC/7EzpGjE3C7tAf
	QV/in2oon3WtVVYUtfQSpi8myVW/gs9Xi86/VZLHvB1kW3b33
X-Received: by 2002:a05:6a00:10c9:b0:82f:70a7:4a25 with SMTP id d2e1a72fcca58-8415f3640d3mr21841854b3a.35.1779890960401;
        Wed, 27 May 2026 07:09:20 -0700 (PDT)
X-Received: by 2002:a05:6a00:10c9:b0:82f:70a7:4a25 with SMTP id d2e1a72fcca58-8415f3640d3mr21841821b3a.35.1779890959919;
        Wed, 27 May 2026 07:09:19 -0700 (PDT)
Received: from [10.219.57.29] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-841d6eb0587sm2484301b3a.21.2026.05.27.07.09.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2026 07:09:19 -0700 (PDT)
Message-ID: <28b62311-d3ce-422a-a3b6-79d098731ddd@oss.qualcomm.com>
Date: Wed, 27 May 2026 19:39:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
 <20260522-shikra-dt-v3-1-80ffde8a3dc4@oss.qualcomm.com>
 <20260526-quantum-funny-gorilla-cfc983@quoll>
 <951c9b8f-4513-47ca-afb6-481dedd3eff9@oss.qualcomm.com>
 <20260527-pastel-fuzzy-mastodon-a4d9cd@quoll>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260527-pastel-fuzzy-mastodon-a4d9cd@quoll>
X-Authority-Analysis: v=2.4 cv=VY3H+lp9 c=1 sm=1 tr=0 ts=6a16fb11 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=P-IC7800AAAA:8 a=bBPcOljkSGlYhA-67uEA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: l0qfl_w25NmWbexf8UdV0zXnK7w_tyGy
X-Proofpoint-GUID: l0qfl_w25NmWbexf8UdV0zXnK7w_tyGy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDEzNyBTYWx0ZWRfXy96PgGTO6Omv
 WRVW2KhoMR6C+7jClQKYlOWVZdEGQEA9zIyKN3B/JysvkZlkiGGxGyYR4CNWbLArQ0MFEzpxPM3
 4EQQCKBogdmwNprGwiPUHvV6i8y6YuM8gkolxjjjmienAfYKAhoLhbOM8C0Lq0dP62b5dXwziY1
 vjea5LJnbaU8vgAJ8niH4paUSuau7gnFL1qPIDOeu1ssSqjLNe9f+zEvnPlUPOCyBn3tHTUbmXe
 +qMQmUFcUwwp99K3r5OHI28xRo8Dk+SrVeCyJhgXBPE8Um6nV4scpM+4InZvEAPOSpbJuPpO7HR
 +BGo+gAFNGScpN5e8rXpakWPdQg5inwSUxhRL3a785xnW1fNDWyLADPRdpV5wEKUiNIWCzafCum
 8kH/UjUNH6tYwLtlKMHi0FJU/rdQw7/bgBj5LKJ1LlgY9LKNSvchnHU2BORff39iiA/wRUEPvLI
 jBALDxYcARnnA/hee2Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_02,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_070923_652982_C8F76CDA 
X-CRM114-Status: GOOD (  15.86  )
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

On 5/27/2026 2:25 PM, Krzysztof Kozlowski wrote:
> On Wed, May 27, 2026 at 12:42:20PM +0530, Komal Bajaj wrote:
>> On 5/26/2026 9:15 PM, Krzysztof Kozlowski wrote:
>>> On Fri, May 22, 2026 at 11:32:24PM +0530, Komal Bajaj wrote:
>>>> Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
>>>> form factor. The SoM integrates the Shikra SoC, PMICs, and essential
>>>> passives, and is designed to be mounted on carrier boards.
>>>>
>>>> Three eSoM variant are introduced:
>>>>     - CQM: retail variant with integrated modem
>>>>     - CQS: retail variant without modem
>>>>     - IQS: industrial-grade variant without modem
>>> Industrial/consumer variants differ often only with thermal, so how is
>>> it here? Thermal difference does not make them incompatible. Honestly,
>>> usually industrial one does not even receive dedicated compatibles.
>> The IQS variant uses a PM8150 PMIC, while CQS/CQM use PM4125 + PM8005. These
>
> This should be part of commit msg. You explained WHAT you did, not WHY.
> We see the diff and we see you added cqm, cqs and iqs...

Sure, I will add PMIC details in commit message.

>
> Also:
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

Will take care in next revision.

Thanks
Komal

>
> Best regards,
> Krzysztof
>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
