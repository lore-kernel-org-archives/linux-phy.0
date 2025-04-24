Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F81DC369D5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Apr 2025 17:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwjxbYnz6OeKwmjrhorZYT3quwrspQl3p6s+ZtxzWY8=; b=uAf2aI7fzFy0lV
	wulJG0qpThyBGspZaUPSzOf/HNpkqVy/X4cOHE6/NCiP+M1Q88IxAF1rR4+pV+B001o5v9ZjdjrOc
	FvFhnZ1ROXzuQ3dQt15Fu7mgELdzH6T3QvvBvIy8CAI4VlDTPimBXVnZLA6HTIuoMwe4aDscB4fu5
	ft2BZAb1XjNb88JFb0Y4c3j5c61pNjsRx582uOb/DzxqpDROTBr1Epud3icm2XIqUV/rjM0UzgzbR
	3CHI8ClCjIdiYLBOnAH5/NzWxtfj/TvDseT0kMa8lB1xxbAzM8aPMjk15TrkMWP/YLWWvlS/7ctX8
	o2PHi9EzsXeWE8z+FfGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u80AG-0000000Erz6-1Aub;
	Thu, 24 Apr 2025 17:15:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u808N-0000000EreM-0VJE
	for linux-phy@lists.infradead.org;
	Thu, 24 Apr 2025 17:13:13 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OC3JLH011599
	for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 17:13:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JQE3mBdHEHFMQzAYutq8p3AN1+1LsUeaQd7+qm3qC5g=; b=AA9O/wDPa+nYPvVI
	R4eEslFYfvLM1An7w3T8bZ2pTX0nBASwy5MwVVj/ZIIKaap1xf9/E/v72dJuPRTR
	Sp9cJAALFzkQOOkV5rK+7fibzQU6Y8qid9x22TpViRoVywQHtGWu8lhfBkZ8xTl0
	1ya2vrJ2FnWNnATs4a3fwLtbXL0GBCedyd4Ot6orEGPQzIa510z8ktjSywE1imU2
	NObbwy9H/BQT41Y6TvVdPX3kM8ATat3sSEFEdj1TqBb0OUmixgnEsAyCDqwLvP88
	zRq3wBSX26DpJkxJAGdaxxqTlWQeeOI0lgyFGa0qKu/NiIvxqH6bL7o/Vu89YopT
	pS35bw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3ecmq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 17:13:08 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b048d1abbbfso1116431a12.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 10:13:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745514788; x=1746119588;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JQE3mBdHEHFMQzAYutq8p3AN1+1LsUeaQd7+qm3qC5g=;
        b=dpnOJUz87uBpmALkvsz8EiyKpeUzNPqBICE8V4hfkw5WkRoobhuKbxyzJr/l0dxqRm
         sh5f1hgWB2ORoGenesc2wO4oTeHCk6ZByo31KC/axYF4ZYJL07doyXRca7VE3a/c+mfm
         rxdWlPOoSmmitdGRAgMr9fsMYSbVgF0jDyvv+5tXSZrKeWX5bxGLMP9iN9OPJywZ6E4j
         LF43aW9VSxYUKcoYQ9L8YVtmth9y24yld3FYuR9Q1SDRuv1mkh8oOOEIWWZQkuH4EA38
         6+ukA/G9I5jw+JA1pxLRxHW/TJZjwxFcfW9Ecau/dXvcCVeF/kwFDXQsK/mrd8dYkZdp
         3Nfg==
X-Forwarded-Encrypted: i=1; AJvYcCXU3qBkPHfYbI1LXgPt8n4b7g9bOAlGarX6KuCUpjE6Y37YkhiBDUlAYLfOSEMgnP1QDoLNbDqmZBQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YypRSUiQyrnXm4XyUAz/VhYe2oZeNcHTgdTHdRLsNZngbYU6FZ7
	hZHMri0JN2AX+Zj+s6lsoWH7ayFQzKjy1rySGGd3eNDHUq+MsEQ86cTwt/gm6OW9uxOq4VzzqKC
	IBt8+JXEw8pLssL2HTlQC5m2OIC8UCsh2/TlvB2WS99NslD7Y02w9+O3jzdZvNiuU
X-Gm-Gg: ASbGncvq/0SfkY7COoHjU8s34KYUNqzH3PAMkfcwfM6Jj6yRr0hreqN+p9Oov1tsuA4
	rEN8et3VnQLBn6/Ni8+AdMJ32RYq488zBY4VeG0U7BOIzNOYwgvZEXRl2mgncXpteC1UFaeZL8p
	uGjIMVaIRrGSgr2qoBO8fVjRiI5Dp1+np0zj5fBqydH1DDtg1+53bMiel/Cw2RNvPjRwOWulzil
	y5BXTHw5LquwrCOEqME2iyJDZFCfli/wxgEmCK1vDa4RrmHUiBCaQSzOnDZnabCJTOZXy3EwtUI
	aqPGJ1PS4LVu3VLQooCmPprHsUhP8V8jD+roL+1M5ct1VnD9FjKxt1a8OmtgZwwWg3I=
X-Received: by 2002:a05:6a21:6814:b0:204:4573:d856 with SMTP id adf61e73a8af0-2045658d414mr151673637.4.1745514787720;
        Thu, 24 Apr 2025 10:13:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBh6UbSZ7iBiPgDos14/2qpkdyV9G45BXz0sSqA0pmze/jGYg7FVG3UwSnpX6n3qo0KD+Oxg==
X-Received: by 2002:a05:6a21:6814:b0:204:4573:d856 with SMTP id adf61e73a8af0-2045658d414mr151627637.4.1745514787332;
        Thu, 24 Apr 2025 10:13:07 -0700 (PDT)
Received: from [10.71.109.146] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b15fadec8c0sm1502146a12.68.2025.04.24.10.13.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 10:13:06 -0700 (PDT)
Message-ID: <575d63e7-f390-46ef-8687-30112849b442@oss.qualcomm.com>
Date: Thu, 24 Apr 2025 10:13:05 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/10] arm64: defconfig: Add M31 eUSB2 PHY config
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-10-25c79ed01d02@oss.qualcomm.com>
 <2d01bcd6-80e1-4c15-ab23-b5ea5b90f2b1@kernel.org>
Content-Language: en-US
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
In-Reply-To: <2d01bcd6-80e1-4c15-ab23-b5ea5b90f2b1@kernel.org>
X-Proofpoint-ORIG-GUID: KdNW3S2qjxS-k1B5v9MDfU3O4HsAnwcx
X-Proofpoint-GUID: KdNW3S2qjxS-k1B5v9MDfU3O4HsAnwcx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDExOCBTYWx0ZWRfX5m1pywLgytvr rOC9uWzBiKpraumW/XXtCPMYdqBT5Rv2G4oolnjVGAQCbdcq3EpFfSi2dLsu9iTxjlth8MkQzyb I+ALet60gUoDkBZcaN8cTnWTrLMVUM/kyoQMa+hN5GLta5OZeeVBGCULUadt3iHlzQ5ujO1Zd/e
 1Ko9/B761JRhpgNyODrigYfKDc4gV1DpfvTz/xycB589wXaY2+7+TECRq0t2m0IQ0M10tpOtOlW ow0jrvnOviKTE4LL4kns6nvydB5ciEY/VH0FHYLwaNeyXSRSa5AV5hHYfLySIOdTqil7CuJVfK/ 7HP1yaQ3u2fehOsZ0rlyw+NtoxVm6+w+LBPFPLx+duqFYQnVcTjYmCXb+MFhuBTsPnxh2qmEr4l
 10WnTIWiwi8NzJGDJxi/cEL76Pw6lwymcyRmLisiVByBa4XnLG6lENserJULabPP0UFDk2dH
X-Authority-Analysis: v=2.4 cv=Mepsu4/f c=1 sm=1 tr=0 ts=680a7124 cx=c_pps a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=SMseXh0oWhwDNy9TrckA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-24_07,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=825 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_101311_163507_0C1D22A3 
X-CRM114-Status: GOOD (  11.57  )
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



On 4/24/2025 6:16 AM, Krzysztof Kozlowski wrote:
> On 22/04/2025 00:00, Melody Olvera wrote:
>> The SM8750 SoCs use an eUSB2 PHY driver different from the
> Qualcomm SM8750
>
> That's a defconfig for all vendors.

And...? Apologies, I understand what is actionable about this comment.
Please be clear what you want done about this.

>
>> already existing M31 USB driver because it requires a connection
>> to an eUSB2 repeater. Thus, for USB to probe and work properly on
>> SM8750, enable the additional driver.
> Commit msg should mention which board uses it.

Sure thing.

Thanks,
Melody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
