Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE9A3CA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 11:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFU/VT92c/eu23USqv3adBrDacA2nvA4v2SZXHVLO+0=; b=Xw8UcJApOP3oDf
	M10txamIlDa0jfJApte7jvRW2rWC5uc8+2fakbFO7pGbq5FtNnBrVi8pU6kH1qexCIDUFdGHUZo2W
	ioq+RtDNIHfbF18pdze1ivMv7uAJB4iQWls+5vnlWacmzNmM0RAsTTsgQJHKLT0zIreuApUBCQyEG
	XeKlVJJHh9OXoPba1zuqk++2d+aK4Ies6QfhLYVHUYnOsx2j0NRXQ/GL5fV2KcJWXgSxO/6ehKKis
	KaGRAu47PTvrXSsZvKSbWV6mdH1up+/e5MYAOHbhiMjwEWPtPCxOvWI8uJZehmPZDKsvakI/f6qQ7
	jPRNK5xzdESNcunx6G2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxdG-0000000DPhU-0xxt;
	Sat, 03 Oct 2026 11:10:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxdD-0000000DPh5-26bN
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 11:10:20 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 693Atnmk4071700
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 11:10:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=85+1ADe93PSs2eP7hA3ohcdP
	8kQhajfqUw+b9HPdrdc=; b=B+q4x8k/s39Tqf7JKVELof+A8TI5U3NFV+a55qVV
	/LJzDuS6jn0PZcKafDCat3RUAC6bPV2Tou3BUqWORGDhDLf9IBWi2sri89HGRS4Z
	OMTMbCPNrvdZyUBMp3/dCZYxIjU8WORChaWWoolZqu7ypYvAGjxT5asd7JXqIcLu
	KEpGoSVPpMzu/00Rt9m3fmj5jd+V+F64PrLNVpzm1iLvYHJOIvP3ioD2DMToc72H
	6Dns/BhLGupledWcCItOKkJ1KImA5L1i7/ud3I8kTuOppWuW7GBAxSbL3LRp9oJM
	ojBkewKjgw5dfI+koALUfyIRnHchRh8z/gaJnWwWr9ni1Q==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2t06rq28-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 11:10:18 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7bf71bbf197so298716137.2
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 04:10:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791025817; cv=none;
        d=google.com; s=arc-20260327;
        b=rMYWfH7zwhMOSKWAaZthsS3PEqCk148T9UYwC7+uLlclADs7axJoVhjd+dgOA/aSRV
         pdtoTlTF/AdfDzYIJ2taJ28FnoLj/h6wVm+bfmiUSBBBniQAPUzSUGrPwtJ9mzGa7DyI
         WX5AkfiA/QkSrrOb0a3KODDeaEd4hyLZmoKiwpX0dyfTD0LLu5WKH+hOAEXp374UUlmW
         Mbn+IDHDkBtoVtA1FJb+H9ahsp2BE7L/4W+4ElJYP1dw929jI4UsFCYkXBlUgm2Ab4+K
         Dtkwy1+CXW6QOPJ11iLMXlFN7yZD6hZYpJd62/F4ud/jvGqSRzkHytXeu6dcQIAveSsu
         Ww8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=85+1ADe93PSs2eP7hA3ohcdP8kQhajfqUw+b9HPdrdc=;
        fh=pnfJVv/Wv+06QDOlysntFYiqSBuo9hpb/DWDuyG4efc=;
        b=sAHHgaqfoFJqiorADPEAa94Cg0KQrDoXHflJs2sv1va/MRdbjCmPBAUwLeit2os/el
         hYxV6SXDRmnx8fD3xu7msVMAYwD6nF0BP+wo8v+jTZk8l9+M/deboFXDfRYy7N7bDD3+
         Vbron2HYbr+Px38cYuBYrwObGMgChx7nL6A1fbfr4MRb/siVaQ3dwBXk0fzhynHmk2yi
         E1yLTNu6aFFqAPocUT56wGGT20qffxgTFUHF9CeYWJ380wYRVZOpI7ONSm5ogzJChnIp
         reNUcY24kVyFN2GEVlxLp0rcHgHqYfLHe3YHJKg+zi4I0wAR7/WEYDnh+ZOhSMyQJfdB
         oC6A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791025817; x=1791630617; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=85+1ADe93PSs2eP7hA3ohcdP8kQhajfqUw+b9HPdrdc=;
        b=aULGil1p4WS4M8uwp/yMTz+PlnEJNvNSL0DrRxyS5gtQpVKRGVXdXckzk/kWehF9I1
         Z1qBUeyF6NnxtQDcbJuO0K6lFD0CHUnBw5UxFw5OX4eebKVfaM9y5YNQ2kQlloF6nwJT
         6KJ/e4OUU3EGZwcpsEFvekkGUuPLweoKhWRvBvBtGAAisve0auQXnOjyOWMetlRGvm8/
         I8h3NOS5E6bFvbMGjPMfBZGB2sPsHiux6GPgOH3InTsUHOLFydXN63l6BgBIewkT+/03
         jazUSBxRf7nTL1GZstlCZcPm0ky8BTUNP5cf5FERKUIrhLpY/qqg0oPKDcgI9s8dATUp
         KrpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791025817; x=1791630617;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=85+1ADe93PSs2eP7hA3ohcdP8kQhajfqUw+b9HPdrdc=;
        b=ey0Dt+DSKHu9gp03Eo1pz2frjNDy0IpAJao3dIRNGKYubP789YefujJVO925luCK9R
         D5YPKC2jfFcALERZve8QoAkWrNwPXlOARyeMhx7g4dcaTKk9Z2PrlzHZqUg6OKIfdc/o
         HiS19Z7oY0qx1Xxg6FPpakHCad+pwqbSNpPI2b6its6Zw0bazG/0SvBjAWdBvlct7Llb
         jTJ7zDy+Zi03iLMZT24TFbhWmDiZE3G8KXNVPO//Uw0SN4tHBi2foyC5Dg+QNfQFsSPK
         4TLyj8I1rR7bXkOgoquU6X5s6hvatZ/ZMgk3csza+9cWPU31d2IV/TVj1mJlNg7SYmPV
         R5/Q==
X-Gm-Message-State: AFq9FYKuIySOubI6bZNh35AhaDuztlFPsVQevmcbhDI7HnuLM8JSLY7f
	9pYTX16+8xTksNKXMVYNLs4w18lfXvWwGrJoeadqCyYPiWktZ3wSVg6u6tS22PJb8HGn/G/i9DD
	ZIkF9L6mK15Mr8bMNl34VtHZdx6pGT7ik6vbDGFruPUcWDkKQF756RHAxZQux8/ksfj6XPHTEQu
	7c5sbJKuCJmwD29iw8Z2cFLVb8Py940nORzZMianLNpws=
X-Gm-Gg: AYBFou3bZZSywap3USBX6K04/cUMO4wyECVZVCoyYG56YxYIumRyFcf6VYZo54aeB8g
	4s8r82Sek/kzOuhsKo9P2x+8dHZIFOVOJWZhTMh74Ijxl+9B65ZX4IPcDGGrQ+31wSjvKih1ceN
	Mj/01oe6clcZ/GTy/uN/ubsw819LRJMbx2+jAK6CJpYyCFE2+10cLV696vW4bS63Mth4tB7/BET
	2Ze+e3b+s/q6dK4BQ==
X-Received: by 2002:a05:6102:1490:b0:7b3:72ec:95c9 with SMTP id ada2fe7eead31-7c0f1ade126mr1808330137.5.1791025817577;
        Sat, 03 Oct 2026 04:10:17 -0700 (PDT)
X-Received: by 2002:a05:6102:1490:b0:7b3:72ec:95c9 with SMTP id
 ada2fe7eead31-7c0f1ade126mr1808325137.5.1791025817163; Sat, 03 Oct 2026
 04:10:17 -0700 (PDT)
MIME-Version: 1.0
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-4-87ba4ebe0db1@oss.qualcomm.com> <022c47c3-54b1-43a4-9161-1d0acb13b736@linaro.org>
In-Reply-To: <022c47c3-54b1-43a4-9161-1d0acb13b736@linaro.org>
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 3 Oct 2026 19:10:06 +0800
X-Gm-Features: AclHuK-_DZZ5UAanpheGEwtkxas3xxOMP-L2JQ6TTe_v9IAzR_FdXx_rGiRb1rM
Message-ID: <CACbMrhr1srrcz-c3w1VgzHjdCEiG+6zRGZpjm9qMO3dt09YbPw@mail.gmail.com>
Subject: Re: [PATCH v18 04/11] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cf5HPXDM c=1 sm=1 tr=0 ts=6ac0e29a cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8 a=gaIY05ubZypsO8VhkkgA:9
 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: eG_bANV9kMWxluDjy3CGinhzACM3EPII
X-Proofpoint-GUID: eG_bANV9kMWxluDjy3CGinhzACM3EPII
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDA0NCBTYWx0ZWRfX4OKjjlR7Hxhu
 ZcPin9RFETLU4GHJThM+4pabH/btf/uZee8b4tS3Mj2xFSeCSWbiJfeVlZzQe2l3Zg3xlaypVZe
 Lvod7GqpktAkbUsS3WHzIoDh7dPKNcZxwpF6p5+vQBy8GnJvZfokG4HCOKbbRR9ZYrwC44CF2T2
 MomKnD7BphdUDc7NJVHvJwJP+UFpAhTGPaQQG4nDxPUGk9k3a48W0ys7n9MrVpSd5CSpCKtc4/B
 /KlU+yBOW0KvfPh72CJ/1mnM5V33oED1Alvl7vVYO+kTPOTepghhg4P53MMpopli0vEjWpnI2sS
 PZ5dpZWPNpocYOZQXJuup7lUf4YUZ7XJUekY539VogzNcpNj4Z80B/a9J/zELe4JEnb2LJuUsJi
 XHDlNdf3yDyem1ZIkPEFaRvcG2mg+1JxnCGFrPaNutiWJe+tctyyeReu3URpBckcyoI9jbxjJP4
 40UP23kohp9eSg2teDg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDA0NCBTYWx0ZWRfX18BrJ437VJqm
 P4fD3i/UdgfvGMdL7gU7qZKgKYGmEbn6BXGhUSDyWY07y8LvcdheRMOJpscms5BtkZ/cDB90Xdi
 4IRS919Dj9rHN6MwwU3IXV9Z2uiJByM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-03_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 adultscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610030044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_041019_692024_DA9F3538 
X-CRM114-Status: GOOD (  21.82  )
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

On 10/3/2026 5:08 PM, Bryan O'Donoghue wrote:
> On 03/10/2026 10:02, Hangxiang Ma wrote:
>> The CSI2 PHY common status registers are not at a fixed offset from the
>> common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
>> v2.4.0 parts differ.
>>
>> Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
>> a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
>> initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
>> no-functional-change preparation for describing other SoC offsets.
>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 ++++++++++
>> +-----
>>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
>>   2 files changed, 12 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/
>> drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> index 966d79c98f9b..8cd331cfb4b3 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> @@ -19,7 +19,8 @@
>>   #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B    BIT(0)
>>   #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID    BIT(1)
>>   #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL10_IRQ_CLEAR_CMD    BIT(0)
>> -#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)    ((offset) +
>> 0xb0 + 0x4 * (n))
>> +#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset,
>> common_status_offset, n) \
>> +    ((offset) + (common_status_offset) + 0x4 * (n))
>>   #define CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(n)        ((0x200 * (n)) +
>> 0x24)
>> @@ -176,19 +177,23 @@ static void
>> phy_qcom_mipi_csi2_hw_version_read(struct mipi_csi2phy_device *csi2p
>>              CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset,
>> 6));
>>       tmp = readl_relaxed(csi2phy->base +
>> -                CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs-
>> >common_regs_offset, 12));
>> +                CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs-
>> >common_regs_offset,
>> +                                  regs->common_status_offset, 12));
>>       csi2phy->hw_version = tmp;
>>       tmp = readl_relaxed(csi2phy->base +
>> -                CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs-
>> >common_regs_offset, 13));
>> +                CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs-
>> >common_regs_offset,
>> +                                  regs->common_status_offset, 13));
>>       csi2phy->hw_version |= (tmp << 8) & 0xFF00;
>>       tmp = readl_relaxed(csi2phy->base +
>> -                CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs-
>> >common_regs_offset, 14));
>> +                CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs-
>> >common_regs_offset,
>> +                                  regs->common_status_offset, 14));
>>       csi2phy->hw_version |= (tmp << 16) & 0xFF0000;
>>       tmp = readl_relaxed(csi2phy->base +
>> -                CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs-
>> >common_regs_offset, 15));
>> +                CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs-
>> >common_regs_offset,
>> +                                  regs->common_status_offset, 15));
>>       csi2phy->hw_version |= (tmp << 24) & 0xFF000000;
>>       dev_dbg_once(csi2phy->dev, "CSIPHY 3PH HW Version = 0x%08x\n",
>> csi2phy->hw_version);
>> @@ -375,6 +380,7 @@ const struct mipi_csi2phy_soc_cfg
>> mipi_csi2_dphy_4nm_x1e = {
>>           .init_seq = lane_regs_x1e80100,
>>           .lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
>>           .common_regs_offset = 0x1000,
>> +        .common_status_offset = 0xb0,
>>       },
>>       .supply_names = (const char **)x1e_supplies,
>>       .num_supplies = ARRAY_SIZE(x1e_supplies),
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/
>> qualcomm/phy-qcom-mipi-csi2.h
>> index 7e55ae007370..d6366f809e51 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
>> @@ -51,6 +51,7 @@ struct mipi_csi2phy_device_regs {
>>       const struct mipi_csi2phy_lane_regs *init_seq;
>>       const int lane_array_size;
>>       const u32 common_regs_offset;
>> +    const u32 common_status_offset;
>>   };
>>   struct mipi_csi2_genpd {
>>
>
> Aren't you using the CSIPHY driver in drivers/phy now ?
>
> So if phy stuff has to change then that change needs to go into drivers/phy
>
> ---
> bod

Since v15 the series has been based on the new CSI-2 re-architecture,
and this change is a prerequisite for the subsequent patches. The main
reason for keeping this in the Kaanapali series is to avoid introducing
an extra dependency and keep the series self-contained, which should
help with mergeability.

If you'd prefer this to go through the PHY tree, I'm happy to split it out.

Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
