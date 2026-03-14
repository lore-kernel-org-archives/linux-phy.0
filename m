Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E654D107BCF8
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 08:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGA5uLEvIr1EQhgf5i+hd5iD5AJOl2+BFWA6xo89ogs=; b=CUtlEEMzotERfa
	Gk1z4xTHCtpMak4fxaCoSKCQbo3uWix2v8d9ouuOGIgr5oQCrLcML1Sz0wMLE5Ym1boEkGpl68deJ
	CBrXdgsC3NotZyCapwu2eQBjQtIC49Gp9GwbGCWoKXI7ojy5B7gwm8ZarbbOfGrHjMgdWshY3YzwB
	jGoLL4s5xG41UgGT3Z0rFO/SMeJHHFtss2s02OfB5/lBaLgqOzZuKjy1ROpkGR9M9WKQVKLcW3+rU
	7rXoVXUEoc9/LxVdENVxz2Vgmw4+DECj1UiH1oiAJr8pufUq2BxZxSYT3pTjGWHcllITIwnGckUTP
	ZWMd3EOlOWyU7T4DahEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1KDm-00000001cZc-2Bjk;
	Sat, 14 Mar 2026 08:19:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1KDk-00000001cZF-1oFu
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 08:19:41 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E3nPjX677266
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 08:19:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ood9g82rWdas10daIe7S7f/M
	weIpuD50SK+gS1YGz/c=; b=gFea8JGDCstohksC/ChUFHdJwz1FdZ26nK+c4CiE
	35c62pOdah1j/Qh+gJeWN5XTcFbp5hx96cd1KcQUlD+My42MOFD5kcCwhK7Laf79
	g0N91Wbq1z9NzSb2QWw9oQPexi2aWRaRxqgOljRSnMAaqUq+yyJXXX0GBM8pIOLf
	eZG8xmNPXznjJ1o7W62aiY/k6/iQQr3tWtb6k3orE9J0MlJVG0diw+rsuf5WRbkr
	bp5p/GKNXiW0ZHA8Mr/+RS2cQI/jdq+ws2J11nsPA6IdmWsUUEtQAEGPqwCrHGWs
	QhL3noDFtnI3D8068cZGaCTQzoL/rh3futUKBZSOhU6lmQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw03xgdat-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 08:19:39 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5fc74c6634aso33181490137.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 01:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773476379; x=1774081179; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ood9g82rWdas10daIe7S7f/MweIpuD50SK+gS1YGz/c=;
        b=QcUWeXIuo+jwb5MPMoVJRqaiB7wMPnirRv7YUrZgHY6SE/uZ8OQ813kCnQokx5Aiq1
         qvuCW9I/fNcjUYn3iL2rD8P6Msx0OLdWb9GTqpFhE9IIBmzEKvrUUmQsIkLdFKPvF+y6
         bKOf3Zr0h7byNZM7H1lZ6CbfMkHl9ptv1k+7ChJ50pVEABrASd1QJMi2MBsQmip4rOny
         Dleq6f2zX+JbUSYjgdw1r1hoQB6V2zYdTqfyuJxkwC0LPJuRTV5oQ6jlL5HdbVLG11ka
         LVk4TQSQMfvqgPAk2deCQ8WyQ1jJlm8y+N6cTF/DvgWggIwy/pOb0O5bFSJYfbchov3l
         Kv8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773476379; x=1774081179;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ood9g82rWdas10daIe7S7f/MweIpuD50SK+gS1YGz/c=;
        b=Y9l+u8GE8czGs0zIuDg/kGv/4LmJxeCAbXCX3XtVPGqmMnsmnokZaEqOsKHRGydtfQ
         BoGA/Kb+lrhCJUdgpy/1czyKAF04f/c//PqADEgjPnF+V1nOs7XMcahmNA3h0jie9mhg
         Xmc8bcR+8IfqN+OdbOfnuonyd5z9LA0UW2YkFPIplX74Sce9F3hOfPVm4gDgAdh4U7t+
         MoK65PT7fZ2ObkdFCjW5rf+t06BU1QZ48rN3pYPyLqAE/V9l1mHn4SllOc9da2JjSE9o
         MgFefXUqpdOAXZJZBZvS+mFjY2uwxeM04oct1QTeHD/Wkvadswziykivxj5Y+/PT//kD
         LpgA==
X-Forwarded-Encrypted: i=1; AJvYcCX/lddSPUars1uKsjna5VCrnuqg5QI4Aii8HRtO4zpNkqejeWADFSVRVJ43XGaZzSVNv2zEmsGzpPo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzi9iWCIs1C9+5zXEFq8v6HCKpDujW1nVLO6eFIwQoBAhu7XUUo
	GW7UB2ljsP71yT/rhWbgeIpfN52FligUwyAHXdGYNuw5O5G70U2UwSrp4cakJVSeKSMjZpEQG6t
	0tepdkILBxjRlhuo2UoOvpRtK+/I0hitWhvf97Zc6m4GshRzym++V270PJD32fNk5WiXG
X-Gm-Gg: ATEYQzyJtiGla6GP41pkBtVSvqqlGLy4t4d/wF4xhGltOWWn23vzZDTLyC9T7kziftF
	T1Cwqhh8Y1XmhmeViOQiIBuA6l4AUZwAzwDBUjLjUe12xqor5yeH7m1SbKfxbF2yTwb6P68Xhh/
	03f/oRDA9W7T1FQUArHkESFQeWM9iGOzPLS44n5o0IVLl8Vft1WjVIE9NitZR9tg1eHSEHH/uAP
	AslV9RxXdrf+8fEUxoX8/99Jo6ifmc6PC+3nSw6YZayYoO9m4h27uH+hLmuA9mOBBGMXzzwgjR6
	s1oIyvqrVFdE9frju8bhWZbnRVWJ+1YNPThNPIdXPh8GkFNEMy51zrwKEgV/Yr6zjvD+Zb/duZx
	k9itRwbrDisnRMTKZ8pEnqOqABZRzUBx1JXvp8KEgiQ4f/6dqhvZq+IrzaB5FCD8/4CBFTk93md
	DaUGh5MktWq2NeFhjV8BZy/TC0xrsnQbNlkxQ=
X-Received: by 2002:a05:6102:50a1:b0:5ff:1d94:b746 with SMTP id ada2fe7eead31-6020e58f46fmr2963108137.27.1773476378740;
        Sat, 14 Mar 2026 01:19:38 -0700 (PDT)
X-Received: by 2002:a05:6102:50a1:b0:5ff:1d94:b746 with SMTP id ada2fe7eead31-6020e58f46fmr2963094137.27.1773476378330;
        Sat, 14 Mar 2026 01:19:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67d5fa80sm19240551fa.5.2026.03.14.01.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 01:19:36 -0700 (PDT)
Date: Sat, 14 Mar 2026 10:19:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/6] phy: qcom-qmp: Use explicit QSERDES COM v2 register
 definitions
Message-ID: <zamuzlsuz5lcffppa32ipzak4lsjx7khsv2wv5gvswmt6zds7m@fvwnwded63xg>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
 <20260314051325.198137-3-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260314051325.198137-3-shengchao.guo@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDA2MyBTYWx0ZWRfXzAAiifKDgWPh
 fl3UlBwLO1dsy9DPzmrlBG+LCT9+5yYcU7fDn4mGcgGop1s0NxUFeYIqBeDqWdxIHJsTIih+Jh9
 V54kYGoM3pWBirLfa+LWXmPesSTsT1e4VspQBm1jhljUcnq82EW3h+2n6PmlI7UZI88Y+eed09o
 nxXQonwy+UQxXtMVLiVJffqoyKM3hydEsCgEq+sA7mFMfWHihZRylcWMCXylTY5PEBOACrDxfVC
 kDbk7IcegZkHXIOBh0p1RvfFbZ2EAcJSIQwaPlPoM90dkMU8w5pSwms6XNZAWRHcvJzP01dgpgh
 x05J4Uaa0xle8p66mm8QekaIkb3lyizJUpH/NPDVhNHKnhmKfHukLSRhGrN35/hwRAgAtT9RXdT
 sWFRkq63CSNHraaQYJFYYsvDRSV41vgzPGx6nPtuXEPk/Rt6jx5ilcOObw+e4d1Z5eaCgIR3JPU
 MDb+gEjesnJXFIKZ8zA==
X-Authority-Analysis: v=2.4 cv=YLOSCBGx c=1 sm=1 tr=0 ts=69b51a1b cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=37ufUEadZACFBEjeejkA:9 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: dbuAVD_vOecPYHaJV5--DjseQ9r83OSr
X-Proofpoint-GUID: dbuAVD_vOecPYHaJV5--DjseQ9r83OSr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_011940_608866_3D1D9CAB 
X-CRM114-Status: GOOD (  11.78  )
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

On Sat, Mar 14, 2026 at 01:13:21PM +0800, Shawn Guo wrote:
> As the code comments in the headers say, both qserdes-com and
> qserdes-com-v2 define QSERDES COM registers for QMP V2 PHY.  Switch
> phy-qcom-qmp drivers to use register definitions in qserdes-com-v2
> to make the QSERDES COM version explicit.
> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  86 ++++----
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 162 +++++++--------
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 194 +++++++++---------
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 188 ++++++++---------
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 180 ++++++++--------
>  5 files changed, 405 insertions(+), 405 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
