Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9117DD2D0E3
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 12:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3h4q9JMp2EZrpZuHrvFrjqhhH1dp1FKeGjf1WlCF8U=; b=fYa0QyGUOieHmf
	fuG8hxKkihyWah39wPVVXVYsIEtDB3Ojz//WqFpt/OhJuAYlJQRHFgsIUN1aniTR4XWONaOWmPUba
	xZD4vjMWWZlKL9HGm4pgX/9ELVpIC4GqW1Ucgz9GpzIh9M+sGRsJ5Az29X8oNVyiG4Z5BhXc+dz4+
	Teh8UM/qK6NrI+1oirfiZxNAAJX5h3m4UdYXcuroJjcm0SrqGcypaQMbs6KlzcUBe4hP9P/F0RKf7
	VwSqIqBFk7gKXUBT+/xfEczr9ZhOvReKHf2e2DLVfLN7p40Lv0drlVDaNEgpUBs4UkVTIPCqOivq+
	cIc17eupPATNG0XOekiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfd9O-000000073M8-0dj7;
	Tue, 13 Jan 2026 12:05:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfd9L-000000073Ll-1J6S
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 12:05:28 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DBDn3n4165180
	for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 12:05:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bAKLxj1rYUJu3a1ZyekiQdFMm6/MPsIeMq4BBQ3ot9Y=; b=YrXhx2PFlPyb6l2o
	6av2d2F8bOpNJUhGKUseqvjOhGS0s6ftLLRdCT+imxcloX2qOCohM9m8IwirDLjm
	wKeYjZukCIqgqvdyt3rBVV41x77iwp8l0LmiLF4W/bZqGA9QloSfp4cx/WWZ//sA
	COJgJbaNzuDsP0URU4ASbLrcIjT/vx50r0nvAaBAys/seaSZoM083bi0HQ7ylwx0
	IYIPV8oKGq8CFkDFhJoK9iU6kNc3ROmL/UBvyTjin2zgXM+sF7r7kDgznl5796ep
	epzH0qBSr5eVR0zcnwtvcmeXNlcOFsCFfawEpkv7MzO+i5SS21evVXH4mdy1ywZZ
	Zvy9yQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnn06r4q7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 12:05:26 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34eb6589ed2so7855306a91.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 04:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768305926; x=1768910726; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bAKLxj1rYUJu3a1ZyekiQdFMm6/MPsIeMq4BBQ3ot9Y=;
        b=esZpa+meIEHf56k8musKPNHR+KFDSxSmYHY95z/rSSh9sDxVbUgLF2C9hE5PIc2Nxf
         P3rs3t7mqxcoHloMJfvkz76hqA+9TD+G8d8NMMgZ6FgxnUSgKd5KNgx4Df/2xCCSK2dg
         gXbec+oTiAEKKlZuTpdSgDCHLB3rOUWJ8m1OAfCMn/vvlppVBd+KPL3255DGKHF7Ei3l
         S/Zt7+t+6q/jc5pmxxS+OpsEbCNaSlLSvp1aeRkpZvUpXVUIXZH+e1x1udlSffMvcldC
         cNRoRubIckJA2j1jFrTKju2pzp90u5nKd/iO5mUvgdCYwXAl0zf/zcgi00+96z/jzzIB
         bIgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768305926; x=1768910726;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bAKLxj1rYUJu3a1ZyekiQdFMm6/MPsIeMq4BBQ3ot9Y=;
        b=RyjB6O1t1MGrqzpcm+Mq/471l7HLULjNjx7uWhtVJ3XYmNEuPrQGEynPIpE8WRSdoE
         8AT27p9KnNUQ9BjNQoxfsfxih6I3WgCGw6sPTo33OdONBMZaB83XaFrN+8wVFih332XV
         sb3mtVZ6g6qaXAdts/S7nuH4KzEi/WCdGCCfGI7xnYYrXnIfzTnEMTTbu1H8sNP8sY8z
         gDALK/WVndzRSyz9trBk5w591vjXq8ah+OgE5byW32gcFxSbp6qP9L4mRwSOxWa6as0l
         aTywKDN+Bdvr6ZHtn6cT3YcQZ0tUjilEb5qK86al28JiKaymSDDPyoAIF7lbeSDI9bDF
         uVAg==
X-Forwarded-Encrypted: i=1; AJvYcCXQLkTTHcIlu/Ohehz1bMpTYD5mDJuDpcjPqRyVmdSajUuyjYGLe6xNPqu0kPtSn7WQMWQ3kiqEQBE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3zo0xj4moNAmt0ROGZ9kQdP1hKTvABtToJxmtLhtRIe2/CL50
	5ypmTZTNC4oLjkpRGINXuAQNZy0c7B6He6oc2vk4UTqkIhRzgQPmtqAoWRZRS7StkVS/NhC46ax
	fWXeTV4OxP+YThD+uZNJnSS0OpNjo1ElqfjOzMnbKQWdda1hUrofdVBZqdfAEN1DQ3qx6
X-Gm-Gg: AY/fxX6BiZc3Mv4GRtIvee8T3ZBMkZhqSWGD5Lr+g0fYjAIS+X77DTqQpn/egX3znvs
	Cyu+1irfuuE3azClrAcniFm3M99AJP3lGM3ZPg9ZULHPedxhqHhi+09DPlmG2tYSjxpaRN+fu7e
	XKRhVngXzyqh7OQRU1FEZLDw4mk9bV/VhGU+XafTTS/YzqBQK5/2qgm8Wsl9I1Zo2ve7MssyFie
	uIkHxttLUDCSUG+SLcrNOCqHaastvBmGHBPDt9r1VrmmvPQZNqaN6v/VnbVnyon+4peinyglmlo
	/OVe2nfSSnRIg5u5VferVQUT2lglCwDTTiYKE4VMABGHZJlbC9cpNpdNbm7tkiiUh4X/97XRKHq
	crlF09eEepikU5GdpX/J00QKnsPGgQPJnTJXXxkFQJ+nVNSTiLuXgBx6WeDdz/IITRC6M9YFpxv
	EzeuQSKA==
X-Received: by 2002:a17:90b:5445:b0:341:2141:df76 with SMTP id 98e67ed59e1d1-34f68c4f041mr16253667a91.13.1768305926060;
        Tue, 13 Jan 2026 04:05:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSvga3xUvK1QPHbLnMK4e3YlIXfwwC2VdNhB+MmZFlf5p3oHYcHUoe53lZmHMlX3Eiro+k0g==
X-Received: by 2002:a17:90b:5445:b0:341:2141:df76 with SMTP id 98e67ed59e1d1-34f68c4f041mr16253647a91.13.1768305925522;
        Tue, 13 Jan 2026 04:05:25 -0800 (PST)
Received: from [10.133.33.125] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5fb75902sm19799395a91.16.2026.01.13.04.05.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 04:05:25 -0800 (PST)
Message-ID: <c842b3f7-9f6c-487a-a119-90ce4e566681@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 20:05:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/msm/dp: Correct LeMans/Monaco DP phy Swing/Emphasis
 setting
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
 <qnwvucdihyavgn5prchafmfly7mc4b5ts4h2wxjky2cbkv4t33@ct6zncecngvs>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <qnwvucdihyavgn5prchafmfly7mc4b5ts4h2wxjky2cbkv4t33@ct6zncecngvs>
X-Proofpoint-GUID: WtHcIe-mKuyyLLbOIqyrFO6s0Q9KKb1q
X-Authority-Analysis: v=2.4 cv=ZODaWH7b c=1 sm=1 tr=0 ts=69663506 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=NVtIM_OMUeQWeZrT3AcA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: WtHcIe-mKuyyLLbOIqyrFO6s0Q9KKb1q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEwMiBTYWx0ZWRfXzCiIfpGScO9L
 bE13lhZeU/CJc80cnezIItEiAXPebewhtO7BflZ5n2aeZV7scR6Zt39QGK79ZpgomP+SQw+b60Y
 06Efjvizeusy1z1V9cQDfyTg3XBR4bYsmEZVi6NWY97NC9rNZT8G++EGHLHtypw+iiU23j+s+IV
 U/iHD2ENBYfYVzwj2s1oWWhrLk7BlUqUVH9fQZ6UmaSmCbSuFx0CH/rdoTS2i0OfXBDsrbuKMkP
 Y+5MrIvbJJ1Z9X+9vZ+0oBKVBW3xhf2xEtZcB6+bS2zpnqojMq2KVz7Z6x3qPBaoFscQbgfjuf3
 LqGxUA1LUpcrRLtZP0LNzwUmn0AqGUil3Yi5IVwm0jNkFUI0OB3HPq35xJIAhi6O92UNYqvl5uP
 gCWtu2KFnU7WKrM2UOmHx62CiMDUflYPlDiPFY6XfIepLdyR3DwEGgKkW6k1ZisO2KosFdPNBeu
 yjOL7i9IgsMvZq0PeUQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_040527_383873_1D4F27AA 
X-CRM114-Status: GOOD (  13.05  )
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



On 1/9/2026 11:27 PM, Dmitry Baryshkov wrote:
> On Fri, Jan 09, 2026 at 04:30:21PM +0800, Yongxing Mou wrote:
>> Currently, the LeMans/Monaco DP PHY operates in DP mode rather than eDP
>> mode. Per the PHY HPG, the Swing and Emphasis settings have been corrected
> 
> have been corrected... when?
> 
sorry, will correct it next patch.>> to the appropriate DP-mode values.
>>
>> Additionally, the HPG specifies that the LDO value should be set to 0 when
>> in DP mode. These misconfigurations can lead to link training failures on
>> certain dongles.
> 
> Separate commit
> 
Got it. will update next patch>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> 
> Missing Fixes, cc:stable
> 
Ack.>> ---
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 27 ++++++++++++++++++++++++---
>>   1 file changed, 24 insertions(+), 3 deletions(-)
>>
> 



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
