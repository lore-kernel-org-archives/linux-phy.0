Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B26D9C369D1
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 14:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEbnHeoGy6v49xWxa3fIyX1MxmY0FOfwI1w2g2XX0pU=; b=29+l8lEsjT7xDY
	7ud14lc/fitDk5I4sy24znB9ZbHzHqmL51cFuYlZGjDDjKoA8uquwkeUGar+oVQ+2Ah97HTGfWwoI
	Qn4kWP4WCpfbNpp1kcksh0benIcpgDvmq96tAtCzJhSDQcZuylG8PXixMD3r2DeEzEyKqF2rSiHSn
	VR6e6Rl7OqtBE1moFgFblWHnPDm0uKCQ8M25yr2JetsGzflenHSNtkYd8tpafsR9UnSEs9Qf5qVZL
	sZZ72g6QemO4VFA/G3U3qibDswOh2lPTlPXTr0BpZcxB8APtMewepJ52kgcGSdjqjJkW4dawjSlVM
	OJa8jTGiGS9m9FSPWgXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ai4-0000000AlKj-1KOa;
	Wed, 23 Apr 2025 14:04:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aIV-0000000AdFM-2i3h
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 13:37:56 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAx1dk014565
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:37:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+2ze/rnX+AqFYjoGgrqs+s9R
	DoXeSpWH2VHtigOpg8U=; b=EMq2faP65RSDIjkMhd4B/vQC1OAI1u2q4B8h76xD
	bo05K3A2ocZpXMZDt7r/8iq8PtmXUjxoVVsauKPKOvCOisWrNCrKBAA1/fY0Ioo0
	pau+Txpiq+sCHgqfJT0r5wEeLm+GmvzcjuPXAfIOjnj1eOEleAYY/K6hafyWCxfL
	uBoxCQntWvVt689Xcxwy11Ok4ppVL8Hwm52qVNUV1EbFyNO++6dfZROQo1Wmmyd/
	9tmjR5Uw70HUs4Akj7iaFvXMqmImXtj21goy0VVnfU1T0qdHg6VyfXXX2od8KqAT
	VK+E63ecyTp9hUv55QmFN+4AFm2da6ryERG3fZyqV8QKVg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0j8xa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:37:54 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c543ab40d3so984010585a.2
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 06:37:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745415474; x=1746020274;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+2ze/rnX+AqFYjoGgrqs+s9RDoXeSpWH2VHtigOpg8U=;
        b=NCiQ5PRd8vkOQCrTRvfYwgFf+WG5X8W7+wBycUJSXpXaETIZKQB8Hd1gl1ZKjMoLQ+
         rj/WYei9wCkuLJN+5opH2yQag//tMxB0f/FZw9drlzrmOJIewJsIkDX42ukUKmQwIXmg
         he2xS8zfNkXOPKezBQhLNzOqhHBmEYISott4Ydzpv3akt7TJvFAcD0C9h2bLY/QSTpFc
         3fGH/FIlDsuzmx9MvQG+glpLKmtoHqqyqI5/i3WOwLrvIrDSv+mUJpYmzNp0yG/0UdSz
         0dd79fhLWDKU7GVLHsnrxAb6r6D6s55vJqXVinbtScc6RWxLHhN/PrTCIbhERDBJI9R9
         tZig==
X-Forwarded-Encrypted: i=1; AJvYcCWMGvyN+Re3xMs149Y0MdF0tSuAMGR4AB8rviO5sCZqvR1WszY4vwkJuq4NF7EpLuNbASZsiaL5KMM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyARKek4OZtd2NJocV3b6ilnPJFoJaSuPMp8oLIA06oX6GAu0IS
	hzwPqjFuMT7kMtuqsluNE7gvNGYXexrRq7nM6Q4p9lZqA5gyVYHiKkyLnaIMsPVnCD/25Uy/A8i
	4OxPMSZeFLWlpE/e3+0SEYmYhGdKT+fOFjz4XfHn5+QJdUThCJdw3KgHFM1FcSeJk
X-Gm-Gg: ASbGncviWX3VeUF3LB8cpiYVk/h7/AMj6wUlddmhrn/YyBO9D1+DMjFNgBSVUtlL+nc
	j1TK2BaL2xhwDg5n9lrbbSp6EedClPg9uCVFVOqsVf8IZ4embYemyDCiiGaEWImQwoQzcAmbuhA
	0VGWq0b2D9R/kcD3EbFzcEAqhzsD2yVEDoCQ8Lvl9m+tSllgpjrzlk9Uft/Yqx6esqOX2q5cjP2
	rFn8pN6iTzrXNtXzd1bUed8SWpQYImDUarpjBEPGNcOvQFV2/ACUPCx4RuPSC/kG81xF0puAexU
	BLuMCn+WPqGE0/2l6PP0bQ23+M62AVLLYpBsFc9hLyX/dDUkvPYAPyP8iswb0il5nNpAlJELg8M
	=
X-Received: by 2002:a05:620a:d95:b0:7c5:18bb:f8b8 with SMTP id af79cd13be357-7c927f63367mr2730404485a.1.1745415474028;
        Wed, 23 Apr 2025 06:37:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHQxjyT3iMSomg5ijBHCAHqMp5xzTzundL8sqlTqkPCKrDcBt3wVLGtMzpfLC7BB1RtedrtQ==
X-Received: by 2002:a05:620a:d95:b0:7c5:18bb:f8b8 with SMTP id af79cd13be357-7c927f63367mr2730399985a.1.1745415473543;
        Wed, 23 Apr 2025 06:37:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5d010dsm1533420e87.120.2025.04.23.06.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:37:52 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:37:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Update PHY settings for SA8775P
Message-ID: <tqzmof6rq7t7k3jbdmay7dplz7el3c6i3ehesdiqnp7iq5f7ul@3lnf3awj7af5>
References: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
 <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: _a74GFwOkfHeTB44WZJ5Ni2bvzkDVZfC
X-Authority-Analysis: v=2.4 cv=ftfcZE4f c=1 sm=1 tr=0 ts=6808ed32 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=Vt7sqbXHGhqwYxysgRMA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: _a74GFwOkfHeTB44WZJ5Ni2bvzkDVZfC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NSBTYWx0ZWRfX1wJwocbIq+Ll FcXViitAKviBdRJOrc+Xr9WI9ezXEOzx0plbdJWIz/ZKfS664Yd30GsmEL8diB7uI5s6LkSHkrQ QpSWeKcSjV0mvbYCq5lBy20tnOAMbWGUYIsr4HR33yE4r+u03EI/mgCg9yuUyYEAKxHXo6JEup4
 3vi366yIeC3RT91HhHmyMHaM5s3z7xlmFoaKkx6WtlJKOBY6Smn6dq8vPJA+lJj2sjgRWpWfmn8 814ZabDVxPjqcUvxvMJfGcPx88zXqETCYTRy4nGRylJlFflqRnNyn4h2pBOTLNEVLFyZfJI0dEO ZLGz1kddr5Q/ncWLWnyhzXKS5qDTCeJDUxtTfaOXmf9XduvyfX9o3GSib6QyJHgjSjcLrGcTaY8
 a1R/ndthcUR4EiRXlZc4SRe5DmRbIcUCiDJvrBvakuwKl7EkFwRZtclEmpP/D0wsMw29AehX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 lowpriorityscore=0 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_063755_817391_421FA68C 
X-CRM114-Status: GOOD (  15.25  )
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

On Wed, Apr 23, 2025 at 04:45:43PM +0530, Mrinmay Sarkar wrote:
> This change updates the PHY settings to align with the latest
> PCIe PHY Hardware Programming Guide for both PCIe controllers
> on the SA8775P platform.

Please read Documentation/process/submitting-patches.rst, look for
'[This patch] makes xyzzy'.

> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>  5 files changed, 66 insertions(+), 41 deletions(-)
> 
> @@ -3191,6 +3194,7 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
>  	.rx		= 0x0200,
>  	.tx2		= 0x0800,
>  	.rx2		= 0x0a00,
> +	.ln_shrd	= 0x0e00,
>  };

This does more than just updating PHY sequences. ln_shrd-related changes
should go into a separate commit.

>  
>  static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
