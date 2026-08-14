Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27FD6C5CFCF
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 02:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzJ/hTnH3DUOqDnmhn+oYQ3/6XFrJWLS/qPiiOGhtrs=; b=27ZIMQocvw/xuJ
	MZ/9ZCdd/HDeacTa0XebWgRWhCLbRBRzFFnBa9q+8yDGII5DBVA3O4hIguATbVd/79AoaXToYpvYE
	aMJcsu0234ceLDe83SB5gDcRqDix4l08lw8nQ/VFWk3xev48blvK+XGjna9bOYCT2IQGz9shJhFFg
	KEbG6aK6EYyrx0v/2GMbXDyNQiqDHSfq0JbCBRUSCyWTGeEVsLie5lVZrG6WpDoZihuQiBlUBCqR2
	yjYWOUdvxXph+TnzkvSUBmLK94U2114vbKi6why5QdQJctROiy1aVpokLLdWxrjkzKqw3vdsUA1zL
	U6oUs1FGFrcV/GmaR9Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuhhd-00000001rl5-32fk;
	Fri, 14 Aug 2026 02:31:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuhha-00000001rkb-37KH
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 02:31:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67E1A2O43188045
	for <linux-phy@lists.infradead.org>; Fri, 14 Aug 2026 02:31:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OF1Hc5Uoa6cnyFrVjXhCW/ubLN+IGaBWjiwYGQl3IWU=; b=Cb5uATciTI3Q/NUp
	J2oUnd5E7hLpWVxMHGFTS0sVVFZKy8HS8eNbaGXFFNQNhNNpaZxSLKX8q25AOLWx
	IOkj7cF9wD0w8AfZ8HDeGYFlw7rjBXVwdyo1Ozi0qtZlixnorMCyZaHuqKbf9fZn
	1/TAuWmnMJ3dURKwJq5yka2YrAVUtWVngzt8fES2mhh9CBLkJU/fdjUPNDlsYbAg
	wqummnWO2L/JP3GBUKtyNJZf7+wSfmOGuodMviHF76Wh6xWYuTBPhQ+dGAdBF/AO
	HoD8enmJohJYMlZT2uIp3ui+4wpiEh8MNarCnf0OZ6+3LWKeF5T1DhrULRTCzjFJ
	4AH3tQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g1hgy21a6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 14 Aug 2026 02:31:21 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2cc5faecf01so11294035ad.1
        for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 19:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786674680; x=1787279480; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OF1Hc5Uoa6cnyFrVjXhCW/ubLN+IGaBWjiwYGQl3IWU=;
        b=SzgzgjYAubXeJRFmbygNwYitG08k2v1uxc3xgtyqYNbi8lQHg5zfx+tlTaPfXczNlC
         50WcK+mvRmjEQUARJSymHHY+15fWuGb6ompyZAzReEta6Mw41ryOkh1Zdop1dXN+xJ/s
         kmtFRZNfh935yZl1lp13O0ugUJ7by/0MryDnF4w9NATDLMQJu0OckhBMUYJLlkGdJgZL
         PmPyw3prhQ3+PKhUl3Wz3hoHch6JbP2ErkVdDoFSBcaM2syF+5lKntLKXbOiSVJTHIu1
         2hKni2Dmn4oYFKFf7QSkUS4gi7C3qSFt2pOgF8IPby7l6S4OJBtP41Ihzx7EE4x0XCMu
         an/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786674680; x=1787279480;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OF1Hc5Uoa6cnyFrVjXhCW/ubLN+IGaBWjiwYGQl3IWU=;
        b=Qj8xpieXrWF3kFRE2S9FD5t3iAijDxU1YSWj8/sQ+VxcRXTWWsWioL5mfrX+FNarOL
         1t8XHNy0HVq+g3S66r+tpMkeVwbPidNzdlOvCl8O1X/jDTfHrBGT8Hlvx+ThqGPfGzJ7
         YAfzEuBA0wbCB0/TG2dqTI007l+kGnZ/XerthHufA+IL0tg95+FwVZ/1sXCWyHJMq+9I
         8H6GB7h9XtBf9UPSLFdE65uter9/sramtdN55dEUlJsPcw+FbmUS+9JhT9m88VlB5bHI
         HXCZpwzpY+dawOkNqQQi/PhvNPSES0Yn8Q5eTvLuyCKRRzigw1FQcXFjl46Xp+IV+JSL
         QqLg==
X-Forwarded-Encrypted: i=1; AHgh+RouDIMmunlOV9g1alkd8kRGWY0BMUiCMmKKfRyxSh2NOgX72eoqWPxPtidqxkLmFYN52lsCEaosX18=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4zEZFEcL74HnDacNcmWgkgL7VFeSp1N3RpiAyi0wgzclEid+R
	sU1GlbWEdAz2kw9ELJ+iDn05+yU2xVMGePDZyLdeEC17Ku7nJ4+Y+j364d41xg7djnJcQPc7G3W
	39JbmNBN6vxJ9iGAiHbleCmfwb9ihdw9TyN5fuZmRXj8i/y7FV6c+U92ucS6MjNigxHCY
X-Gm-Gg: AR+sD13Zixxa43J3DiskK0SXMZ79OrEk0BFVu7Mi88SVCs23ZgskLUrfwutFROBqEN6
	85eqOe/+wYc8GlptBWqMYPvBZLnx3BEks8X3E7tqptt06t+2C//Dd3gEyq/7xy5uhA4XNzur0fQ
	JQFef0waDHxg9ZC/QThOKgP5zRlRVFMC2tqDSi/aJDjH6DqNqS6ZDYOWKMXMHf7DmBliYABebdy
	nLxWwlBfy7EhMJzvSLICZlluAtLqnZCNz/Ht0lQ1guEMV6ITgz/7otiLKhK5nWuKN+sC90Hhg/l
	fyl0sm/VGNbOoiSjFQKbY0aV7YYvUSnENLGB+7QwIdxX2k21/ROMSpIpNa+TiRR2yWOYYCEKlpu
	xxIlOjKX6uzLMT3Oshyn/5FhkKBCvX3tCxrrGMXCd+mCI01JmxX0P33AAfQWqw4fyvl0L3t8=
X-Received: by 2002:a17:903:1850:b0:2d0:cc92:f7a3 with SMTP id d9443c01a7336-2d3b0801491mr31372805ad.2.1786674680301;
        Thu, 13 Aug 2026 19:31:20 -0700 (PDT)
X-Received: by 2002:a17:903:1850:b0:2d0:cc92:f7a3 with SMTP id d9443c01a7336-2d3b0801491mr31372055ad.2.1786674679694;
        Thu, 13 Aug 2026 19:31:19 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d3ae7a4521sm3575675ad.19.2026.08.13.19.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2026 19:31:19 -0700 (PDT)
Message-ID: <c37708f3-5043-4ad5-944e-64ceedeecad6@oss.qualcomm.com>
Date: Fri, 14 Aug 2026 10:31:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP
 UFS PHY compatible for Maili
To: Nitin Rawat <nitin.rawat@oss.qualcomm.com>, vkoul@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260814004725.1368027-1-nitin.rawat@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20260814004725.1368027-1-nitin.rawat@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE0MDAxOSBTYWx0ZWRfX1gSCsWPBWKvE
 Ylasf+gHIDVuiA/6u1s7Q1z5jWOm25DZgqbJAWMQxGeG2JS8wT+bBi1Z082kx5rEgQ63lqNDdOh
 dvYHGonyVqtY0KkRM7tT9QsCmuTJyKZfyBs9OovlJd+7deQOv0rVCFLzkZZQQNoGyxKg9JVg6d2
 pVD+wMI5JUmWjWEyr6Mk8YYdQurRSjQG+INAfWc300cMefe9kJyxbPhJDmkl7VLwaPutAv5bWXd
 MJXDkU3QfNpNAbqHWwqv0VimVz22wnuUtdMVChCr5iQ7oh1TBgCSdJYAHe3LQ8lD9pVZtCtwbIt
 TP0TlWjlE9XJ70gTUEfSPR9EzD7dNtlgRDRP/kr0XkKgFCNKVhRZygH/Y9buidoK1EgYfTGS1VA
 Ye2BvsvOA9dY0XY1I7moGe8cG5lMbkYAXF+ppNp5OyTtqZ07aVUNN8IvykkrL7JZeybu8b9bACj
 wa30M1jXKk+7fV14aJQ==
X-Authority-Analysis: v=2.4 cv=AaSB2XXG c=1 sm=1 tr=0 ts=6a7e7df9 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=F2GsAIeIfKtvr_1J208A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: BegoAk3BuqX-hp-VNOfrve-x9r4aukd0
X-Proofpoint-GUID: BegoAk3BuqX-hp-VNOfrve-x9r4aukd0
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE0MDAxOSBTYWx0ZWRfX8hqNF2hJiNf7
 hq41X1rLXvyzhCATW0gz70aWYUtW4dOVKhVf7SLAtngCCaJm963bA4f9c7GeqSe05yfxa6HLAh1
 kF8Q04gxWJPqY6Z5m9fZtDdZzvCQouk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-14_01,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1011 priorityscore=1501 spamscore=0
 impostorscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608140019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_193122_936298_798481D6 
X-CRM114-Status: GOOD (  15.59  )
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



On 8/14/2026 8:47 AM, Nitin Rawat wrote:
> Document the QMP UFS PHY compatible for Qualcomm Maili to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the Maili with that on
> the Hawi.
> 
> Signed-off-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

incorrect DCO chain, the last SoB should be same as the one who
send the patch.

Thanks,
Jingyi

>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index 7e83cb3238ec..d94503fc26e7 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -16,6 +16,10 @@ description:
>   properties:
>     compatible:
>       oneOf:
> +      - items:
> +          - enum:
> +              - qcom,maili-qmp-ufs-phy
> +          - const: qcom,hawi-qmp-ufs-phy
>         - items:
>             - enum:
>                 - qcom,qcs8300-qmp-ufs-phy
> --
> 2.34.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
