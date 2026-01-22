Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 582E3D3EE6E
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 14:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WtMkPLcTVlkU8xbmzVX1sAqqSuTmRiQxwdoNBbHcAAY=; b=xEXv8pmFG0XiwJ
	HNTqfY2fJeTeGoRD0GiiLZVkfV6w2F+0avWLcL/h8CJ9NEUYcbnUH/p7ta9kSXl5CJRs1dRjlD3c4
	eF/ogxbjTmqKDQcfNjATEyjwdcaXTfAVnC7Bou6pumWBN0arMAQT7wlUv60hrCMucH5PvEwq7YQ5i
	TDqPr/IfeHaxS+jYFIf1iGNSqZ+enwEEU1kuh+Vlw4Q/S7VbOwBQgTIjQZoSr/pG4Pd/yOg9HK/h9
	eM609MhL3Hkfkjnq7+mGDE4slLFwPwWk78O0t5l9YWHO2f9b94VsyJAGvxpbNpbisd7h1Me65V/AD
	uDkh3jLPAtpTtj2/iQqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viw3H-00000007GcJ-0QjY;
	Thu, 22 Jan 2026 14:52:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viw3E-00000007GbC-0fTU
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 14:52:49 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M84MD2107530
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 14:52:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BKcRoLQqWkujWqW6j1SahMRvy0OgkJQmrSTZ4O6yqRw=; b=Y3UjznkZBre7HiM6
	V2JNYyAJERlbS99yESAijO5I0K+8nr9K2ENKZE43u6x3meWoDMtb+wUJxYfF9eKO
	Y5+JGqxcEWxEeQnLgkau/ufAp9uq4vF08AGO68j/ip1iVvPptf39KLp/1Az9Fa7w
	TG3KiHWTvDLQ1abZVrTkvb+nl2PqIlBPKooKq4vCNTBdZPOWr2vKMXikYwozc0EF
	hrFN0dKdsdaPXeRp3H1I99jXUuiC+Qqh9Pw2vn1vbME2j+RBME3O/e8r5xQTDOLH
	yHTWHrOEd0p3+NggZn9+LnbGDLpmB3KQLl/eCXh+qYXFlYVDKJT3KH6+J46cO5o2
	3/C+cQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu6pgttm9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 14:52:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6b137e066so33762785a.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 06:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769093566; x=1769698366; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BKcRoLQqWkujWqW6j1SahMRvy0OgkJQmrSTZ4O6yqRw=;
        b=L+I6PNxfHCD4F42WdciMWI1hoqkGWtdIq6lT9meg9Cx+BshZP+I3EJPgwBL8W7ccm3
         UtSSI7JXfpJC+FWgR2s0/l/IjwyyHaSbsvNSqy8f9tIChUM7BXkDfl6qZqn+f1z/HSad
         u6s/H4JS1Y8hWfUkskP6yFzt6ZllLj/ubMxmUjZoSxg8JaoVxaHpyFR59KhNrxr5wo72
         Xf1RxCrBQ5JQsJX8CUkznqGbcM9XzLrHVmafdn8Ep5129d533nk8IK8TMPHMe0KA8FHn
         V4/Qzw2attew42xgasO34BxnlBV+LxHpABrirjYeZmuiOhPf7jO8e9at8BclRvzX4VAg
         2F8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769093566; x=1769698366;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BKcRoLQqWkujWqW6j1SahMRvy0OgkJQmrSTZ4O6yqRw=;
        b=v5rwUsT981S6fO7rTgvjlfwgGcAvhKG1q1X4T1ADsmsxqUPJGG6o1kg3ATLq6MfaDM
         ZHMlk42C43OFBt0ghOnfsxdJwI+PB32J7EdkQv3/OynKJXBF0jEs1UIdsfSRw/TF+7Rb
         Oia7+h0KUdzIHyn0SsX8JYOtbaY1mcWImZJB7l05/TccDiPVS/FUO9k6cmAXU01LC4lL
         Aii5IH7bQ4uSmreStNtSrgbVUMy5cnPsFJLXciok3ThegNXfu4GYtb8v67Lf3Aja9M+D
         pBUDAKVt+QDnmuSMzf26fj2gu8A+pNYBAcLW7x6VyV7dxtOnIOFB7BVHZkqnBs3uyg3m
         xRBA==
X-Forwarded-Encrypted: i=1; AJvYcCWNtaJdTanuELztV0XrsxYx0WrKeE3yeUOdf+lrT26jH6vZLEU25OT9RQofRLu9Mr6i8s7b6utlD3w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcIMNTGzg12tUX2CceGuScE6pjXpVLtsAJY25PUzKrTCgGe51E
	o+xlCU5yExqaGyC2kluFj03tDbHw+KV2Q8v6qC3lGtJnOyP1T72YkmxT+SW4pw7ekFxnaMTmJZb
	qqJcqWTSvgHIljo05Mtg1jRyoCjlobqmALzr6zkKeEel25QTgM8qvY94VhwPyLTVzegyN
X-Gm-Gg: AZuq6aIRO07a5qGCN9+Q+x4c4YV+csGxcaMvKo0DpNVueEmRLAseG8LZ1rQluVqElES
	Y/bHWraNlcXCAssG0dl1rS3TSvqsq0trzdt1IGSmTnPwZx+zozjVz7i2/46xng2xN/TXU2+KgP1
	z78QopwiEPUaNaWmU0xjahhCt6c8ud4245rqOvsCK1wOdlLH6Gs3Lg/SOfAkbgVNdSFtMjYu1HQ
	HRBWsQDeb0QenTTbcCw954q1+fBM2+nvAnMH8EhyyYDCbiLyMSAEfwqr2iqtDtveYMaPMsfmPro
	gCbdiBX0fUd3tSK5C5vJ817tzR5cflp6OcgA0YgbT/pg7ywRlXY2ah3TFEy72TNmX/QPzHCXCnM
	nhhvIuuIYyfFHAlhrDanXv3iVwc++MOFgYdgMuWSl2OfmwD+et5zP8LiCgbcPr6jPKJg=
X-Received: by 2002:a05:620a:2947:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8c6a67cb0bbmr2188583885a.10.1769093565892;
        Thu, 22 Jan 2026 06:52:45 -0800 (PST)
X-Received: by 2002:a05:620a:2947:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8c6a67cb0bbmr2188581285a.10.1769093565433;
        Thu, 22 Jan 2026 06:52:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6580781b7f9sm3817217a12.17.2026.01.22.06.52.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 06:52:44 -0800 (PST)
Message-ID: <5ed9e11b-cfed-472b-b92a-e6b34c50a39f@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 15:52:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] phy: qcom: qmp-combo: Prevent unnecessary PM
 runtime suspend at boot
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, vkoul@kernel.org,
        kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-2-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260121142827.2583-2-loic.poulain@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDExMyBTYWx0ZWRfXzLnd6+L7xaiE
 bjSFxyqkTXk3dn9sXHPknXXC2lHW3F7YzqnR5Z6+NEU3tbbhL7WPrkL+iPoAFic0Sr6ZK2i2Xf6
 ovEr4wkZrygrliDBeS+v9A8I666Pi2h4eIx1Hb8bce/qvEWOjm5r/ZId9umHsIrSVCv2ek9WJS8
 902YDyxceH9jNM+nEKoLt6UU02CkervhNcpQ1YvxQu6cB/8O9innk0Bm0MIe9gKNMDK1PmMorAx
 /G84hkV8VQlG1FBrhalsmzTcYMt+7aDjc0rkmogGjDdqLxG2eg93rwPeny8YEmMupjiC3eDVT9X
 B8z7HGcN3n3zhY2W/JFK2vzBVD9QYCynLn9ttkVLtg0s2crSLb8poSh3yJExYb9FJ9hOT2TRWr1
 y8JpVGtUGeXwoRQL42dASmjsi5jqMbwJ7UCk4TUmYNL8frifLykRoMA9+8D9BWcm/7WbkYrOzGO
 WsUmEkw4Bhjads16fUQ==
X-Authority-Analysis: v=2.4 cv=OZGVzxTY c=1 sm=1 tr=0 ts=697239be cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pxQL0frbaL4a0zJdC2sA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: UKOIOnRhphxWckAc-TFWyeagwH3Di8R2
X-Proofpoint-GUID: UKOIOnRhphxWckAc-TFWyeagwH3Di8R2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0
 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_065248_352824_5C9CF666 
X-CRM114-Status: GOOD (  10.00  )
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

On 1/21/26 3:28 PM, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.
> 
> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
