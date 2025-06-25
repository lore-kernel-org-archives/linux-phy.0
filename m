Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7893DC7EE2A
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 17:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiQ0JyKn9r11DXL4qRKVd3EOMNHDTVzEj9yBfgM39wI=; b=C7e1FO4YSJIX10
	BK7hlXd8HPgMEH5BqzxVOEG8sjnyuoH2FEsVUyxVkWJKcFDJPNGxRzzWUAElstvdc/6x/YaKiWlCJ
	h+RUqVwEWRIkbIy48nGveOl4wuVrgK+SZ8sXqoEBvjLl7p6YvQ9zWFCK7XYoGL+TsB52YuvSqcYSG
	YT4f+OD/iWLvYYUpJDFJiwV+Onng7z+Kh1bLmrLcDMMA6aZRfvk7L58geNzV/VNLJHvRPwGvqesCM
	KoONOOaL5Om8/ljHE/qjNhjmvPpBN5v0brvYuHIo0Zqvoq1Enm6AEVJbWinzKg7chLZxluITqAblF
	RJHPy5coB9UP9iGlowQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUU5K-00000009V3W-0zHP;
	Wed, 25 Jun 2025 17:38:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUQeR-00000008slS-3Txi
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 13:59:01 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55PBDw54021620
	for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 13:58:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0epQL52sRFpo5wPl7F8s9Uz+/mQ9UItS9grZIjzDZU8=; b=g9SVWrSAabmrhvDK
	kqGnDydOKm7qmUHNbOV5dT313ZaJ3RVg9v0u5y/id1sjYLoJYA/rly0WhEzmz/ZP
	JuqlV3pXxbEITT57AHbzF8Za+w5VfAKpvQElDGpjYWutczbVaJKKJQEHNVrCoD9L
	b5kzRcQ7nnX/Zxa8ArpCZnkpPGDKRqAgZ8J2QbJLuYzzCmM3UWyKEq23dPnuNylY
	QvxGpnGwJl+xPXBMn9p6EZbWAoqBWp48hgX+MQLX2s+ELtL6l17/HIyov1YD7jcz
	vlVFMLjeqLv2GiihAkXQISP1rbgu9hlBGDgpGio1AE2M7z9bpZCIra3XAV3PVD7b
	47XT9w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ec26aakj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 13:58:59 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb030f541bso14612266d6.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 06:58:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750859938; x=1751464738;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0epQL52sRFpo5wPl7F8s9Uz+/mQ9UItS9grZIjzDZU8=;
        b=J7OgTCLIdsujCTQhDOzM9uZkYVxmqzvpDxUu6Z2ZaEXl9LKuxHaj5yWgklhp5/rhVB
         ZhPQOK0ZEWyqp06ChpArSGQfuhVSHB+SYEWGtGgiHSASfWQC9JI9cVx+vFJpYcYIw28q
         8wyJkcF8JL4h8L3eV0BCUzBdDd9nIXPatOOQ3PvSUDErn/awHrAd2SoilG6sWyXDr5hD
         KWURQHA1MjgVuoNHXDqrck5tRrGmOXpfi136p19erSW+oTHEB1FidMYb4BW3uWMIFfe4
         l3Pnf4a8zVOEEy+Kg1KEE6JWYtTIl8xlFlvaPhrpd2DLOfkEC29a7s1GkRCjXwsAetPy
         YIJw==
X-Forwarded-Encrypted: i=1; AJvYcCWbdDpnRXsOqFypWSyLrA9b4A2utI3S/r5ymEKFunQ4Tj0VICge3vBBXQRjJVfIkIV5GnzqBVDLbhM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzi86mBnJV95NkchnCV+fkavzEyyeKwp/bWrZb0KPe3Ko4FNTQW
	3nD13Uvik5Psb1+iDnFA6y9UepvduhSN1AShUbkfb5OJwvkqv7+dUfQI56sKJq5fNfm+uo808Z9
	bBAQP53qQ8x7HEdYGwtTeuXZUKYHk1Exx4HmvdLhb4P1nS5DPOm53oRgkGjaupTdWuGnU
X-Gm-Gg: ASbGncsnbG+2NdbricVwIEH6RhYQ7VTO7reYSR3plR/ia+5UO1p2DxK1ToO4GGJ0NiH
	+KWEYVJKPuJrszqiyUwf8VGPF7o+WdAeFNBLLI+dVt5RKxNWbN7yziS2gnBqGxkYxY2aV1AE/WA
	O3uShLxrNz+HU/cyhjoQXvtAeIa5CUVjOhydFF7u21m8PFtDe2EK45UBNP47+LsaSEBMiMw09pb
	rgXegzpa7ks5GDqgnaG/T1Rg/VNt+InKmZ/v9CcSdR8i4fp6EMRUZTHsT9cSuj/Oc6DlA9jfrc8
	CpdM6aTIwURzvfPjHIb7Z6U8RUTRHeIH+xcLOa9NAr1SFCUhzZLxTgt2jKnAgLt+dhnIH4PBGMx
	V+TE=
X-Received: by 2002:a05:620a:2850:b0:7d3:c688:a590 with SMTP id af79cd13be357-7d4296e98bbmr129503085a.4.1750859937541;
        Wed, 25 Jun 2025 06:58:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOBuskppWHr06INko5Hfc6FbHRQ7o7cAxpx1dWgr12t5+vbJwAvaZ8bDq6md5caYgmp7hBkA==
X-Received: by 2002:a05:620a:2850:b0:7d3:c688:a590 with SMTP id af79cd13be357-7d4296e98bbmr129501085a.4.1750859937027;
        Wed, 25 Jun 2025 06:58:57 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0b887ab4csm193727766b.129.2025.06.25.06.58.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 06:58:51 -0700 (PDT)
Message-ID: <dad809f1-9fed-47f5-9aea-34369a9b3608@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 15:58:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: phy-qcom-m31: Update IPQ5332 M31 USB phy
 initialization sequence
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@kernel.org
References: <20250625-ipq5332_hsphy_complaince-v1-1-06b4b8e66bc6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-ipq5332_hsphy_complaince-v1-1-06b4b8e66bc6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDEwMSBTYWx0ZWRfX09TgBQogWgS6
 rNQjvJ8Y3Xvgu79yybbr03Ilaj1M/MFCW+/e/dyLNfxGERgMw+A0Z0JdMBC656X+BXU/VybfQM7
 0ZLD2iW09rIRPJw6MLxFAKWxsX7UnuakubG9t+OGNJ7WM5BP9Ld+VwkroYiA8PE79sQ6wpTI53F
 BXP0Qa4zAhC0bwUe8Uw2WFp1jqgFEy9IJXtm44l++ykyYofeUxKJA7OqkhPUFJisvYZisvCe6TP
 gOIf78jfpKk6fW9bESoqvllEabAvHUE4B4mrXlQ5s8ueC81OooTtfK+O0h/URT0blp6lTRr9Uk+
 lW1xo19zDphRk+SFB5tqEz2MdryzcmiMZgkVKQaeLG0awYbV1KbI7HfEpeJXLx3PoA9Q/QqZR7S
 1AgQgJEpoQvXVtwdEJRqvhHVjJ4beSe1LSkFZ0H3k5/oU+DKXWAaR4YsrKQIuqBab/ck9fuL
X-Authority-Analysis: v=2.4 cv=XPQwSRhE c=1 sm=1 tr=0 ts=685c00a3 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=piobYN4nb8Jc23nr414A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: wex0aKTi7Cv93EzKiAITZyuomVWdRMag
X-Proofpoint-ORIG-GUID: wex0aKTi7Cv93EzKiAITZyuomVWdRMag
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_04,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0 mlxscore=0
 spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_065859_875981_FC87D922 
X-CRM114-Status: GOOD (  14.76  )
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

On 6/25/25 9:00 AM, Kathiravan Thirumoorthy wrote:
> The current configuration used for the IPQ5332 M31 USB PHY fails the
> Near End High Speed Signal Quality compliance test. To resolve this,
> update the initialization sequence as specified in the Hardware Design
> Document.
> 
> Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
> Cc: stable@kernel.org
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-m31.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
> index 7caeea1b109e922c0cd12e985bc8868d5bce8b4f..1a8a0f1262cd95bc00dfbf7397a1c48d88d52327 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
> @@ -58,12 +58,14 @@
>   #define USB2_0_TX_ENABLE		BIT(2)
>  
>  #define USB2PHY_USB_PHY_M31_XCFGI_4	0xc8
> - #define HSTX_SLEW_RATE_565PS		GENMASK(1, 0)
> + #define HSTX_SLEW_RATE_400PS		GENMASK(2, 0)
>   #define PLL_CHARGING_PUMP_CURRENT_35UA	GENMASK(4, 3)
>   #define ODT_VALUE_38_02_OHM		GENMASK(7, 6)
>  
> +#define USB2PHY_USB_PHY_M31_XCFGI_9	0xDC

lowercase hex, please

also, please add it below XCFGI_5, so that it's sorted
both by name and by address

FWIW I can't find anything that would back up these changes, but
I trust what you're saying is true

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
