Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B66DEDF176
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 16:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTJkLuUhMD42lqaIFrF7J5tBwHjI2LsXw8n8SHoOlIY=; b=zUA6ZIXKv6uKX0
	uiKS36wN3TQ+RkgrCd1Mypr7pCufF8Azr9+teXSXvZYa6KcTpYkMkeuGPOHOxDq41ad/obk5FkLpy
	25ma6nJ6R3/Ww7bWVF6ZcUznCOXP5R/iJO5LCUWtbVn/DwGGR4RIhD9+lX16V6k+I6OqRZeSpEN3v
	yrh3rg8LdIgua9imwvRxIuK3jSouOUPeqRVlFhJaeuWtTOmn9e7G7Rd16Tcfhffdv5fErGdYZheuN
	DIatHVt4l9puP6VAKx8ovEsJuTZW35s6G6Lk5HkQC8lHI+Mb+a2x8OyTdbAZl5NXrnquUqko/yqQ2
	NItI8BM+KrGa75aywtJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqvmu-00000003f1s-4AEI;
	Fri, 13 Feb 2026 16:13:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqvmr-00000003f14-3hV8
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 16:12:59 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DF82PG2628434
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 16:12:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RBbL1ZaH2jaZTM7DN7aadixw
	p6/N4RRiyy58A0ZG8bs=; b=GhjJRlmKtWlG1z6qVQHWATkEGZzC3HOdy8MZEVVX
	3Rz5JZrcIwz9ZKjrLJ8qShFIJn1qtKGzAhYjGSZnjUr2nr5Zg0HK2juE5zr6Jl7a
	4882uhb916YbPgM1rk77P+kKlYGf8Woc5bIKi7dduyGY2nhWHf5V7g4A+ZFtaTEo
	NIYAHa6WmGhMrcljfACI9jbtazRj2UVUfRClaGXJn98H823YRpMddohw7KS0X9YA
	5ZZj+obHM5S20hcs2EqtpezPoGf1iWcO3mSRF9Ehx7YXkgDt4DfowybsYp5ype9I
	PCTfgXlJZBBetM3A/DkublMsAuM/9wWzkdlQ9M7eoknwrQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ygusx06-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 16:12:56 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a5bc8c43so535926385a.2
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 08:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770999176; x=1771603976; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RBbL1ZaH2jaZTM7DN7aadixwp6/N4RRiyy58A0ZG8bs=;
        b=YMHSSQokbv2JG3T+WcaKA0S1cnTZBwZQ8uG09Yi4yKHBqLTQcVFlKx5UmmcBOvs2cT
         XvP2ySzutJNzZv0tqol6ClnJzwJsmPMGqKyVc6PXMCZd0J5KmFATnpW4EAhjErfltqSD
         0gteKwKS4Md2Ealr+t+3LWiJd5Uz0Csa3lImoYdsNMp9F0zKLw5cmXklYDA1aPWi/oAy
         N1tGFkpEuwtG8m9a24ZThBO33u1uroBqOVCXfCuTcN1TswvkCZ6j8MC5gynsEDE0Azdx
         Ke9J8NiU4565VK5uARChdK/+zsS0K31JRKFdT6iyZKcI4Ztj9M0T+s7IeQvi6op7Ccjn
         z2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770999176; x=1771603976;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RBbL1ZaH2jaZTM7DN7aadixwp6/N4RRiyy58A0ZG8bs=;
        b=jURT0uYrYmtU0AuB60YJvJ3LVBgke9HBynSkxG0N7jTZRKh3anDzqo1/utHeQMhAwL
         SX4/aInnpLI6iM3Miu/BsnN2Xk0gWqY0Nn/eJF1V+1+ZAOLAMeZG0p2yPUN7VhjtdB7a
         P5E5+zNyml+/nL3bpNNYqgMV4/oBN3e3vAEVFnCwD/9NKf1RLD2F5J7bBglffkx6CGWc
         cGlUWTWk6QCXg1tX5ZPp1HNDndOB5IgdyOePG8Qkjei/YCWfWwYJ8bKgyESqZc3BwvPc
         VJip0oaU47rsbEOHtywxtdIzjQhpOXi5CLJ78d7za+S6MV0LhKuv08xS3PW4w+uygOS3
         TK4g==
X-Forwarded-Encrypted: i=1; AJvYcCVj34aNa9BN42Q7QCI7j7gtNnXzm4tTSow7XIz+GuZUnpNo2/Cpnv8f/UDptymV4/yhWPH70ZvvbL4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxvd3fN9kiDk85Uj5oLM8OT6YRkwlRQxCM/qD8j4RYd491b1lB6
	h1RTLOnDORkWQFL6pWXBuoMUqAopPpxpTqnBqxyS0i5aXR46jhHxIYQbgJnLjP9vdNIxbXQbixT
	sJeL+X9cPDrjkHUnlhNZBuPkrsAqc7cbNj334lkH8LppLyPraPNXHlWgSmgpAEjz6l+BE
X-Gm-Gg: AZuq6aJGHCf8jxZZy4b5FirboPBkwZ1UvQuFQODHu33Kq2QmW1+pydt2fHZew2LlJ+P
	pyqC/9rWUQ9xzq24X1vf+Wb26K/VCdrRPc6ZTuwyslxvUX2PLzJcelg4lPfo0Fc2TDGlfc9PRSQ
	bj97uPODK0U1XdIXEMOw5V5JDkde9EfyKixoZy4Guy4LCbykIUlFvfzkt6/HIOXnPzfnziG9Gnb
	sCk0bxpEWQ5ncePuVh3m7l3mrwVE00Ecboy1q2AMWY2RJB/1vnBkd9f+eEzlRHB/K0xVlG8MtdF
	rdhTw+GgBHNvkGb0jLcV1INLoetJdgT7Xof3D3lcxCWH+PcjmgJWYuQYQvizBjV3U0lUlQ4Fe4J
	ea37DiZeOFAoaCZN7dx7tJDRzjGMwUA56gXs5EYq0XyVnY6XHi47dXNBGwnxvQgtfYRg68gFX82
	e+Rwh9OLy3miBPtSv+x5vWUAjmV13Vz5OQikg=
X-Received: by 2002:a05:620a:1725:b0:8c5:1f9a:6b52 with SMTP id af79cd13be357-8cb422a39camr285069885a.28.1770999175856;
        Fri, 13 Feb 2026 08:12:55 -0800 (PST)
X-Received: by 2002:a05:620a:1725:b0:8c5:1f9a:6b52 with SMTP id af79cd13be357-8cb422a39camr285063185a.28.1770999175156;
        Fri, 13 Feb 2026 08:12:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a4f8dsm1658696e87.49.2026.02.13.08.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 08:12:54 -0800 (PST)
Date: Fri, 13 Feb 2026 18:12:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 0/2] phy: qcom: edp: Add DP/eDP switch for phys
Message-ID: <lvau2mmymqiczih5dkhgd4vrx6x5tn4tdp5wfaddkkrakdjajq@soihplbnfgzy>
References: <20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com>
X-Proofpoint-GUID: iIv8d79j0S0Exxceok-OKDp5hkAjafCH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEyNCBTYWx0ZWRfXzEHQUnnCsrEV
 Im2D1hT0Rj8eBdCoDO44qJakveZyhjRj23fQbppL+nSpWLehD0w17s7+qkFAX4Po5BCqBRFwFzk
 s05rk8zP+X6Irbyib7HVxVMtO0xs3l3u5FmEn24qtrsaNmLcWvh3zwNVpN0KMOJGutrB+IFe9tc
 PZk/UdsI/7STfRhrA4OENSsy5V5LZ39UyxF3XLA84g2gFBMcsy6mKEYCsFM2GSiymvpUjIdwANJ
 ik04YBUbU+JEXDi1bCs8oiVQT0pBBtW3b7kmg+Mb2mctypt1HxeWCx5RSOqty3g4UorIdnNC6w1
 cs1WxY7VagaWlg/8wy9/veSE+cbGO2gKdUjqXUfRjj7fDTbR35G2gs63TpjoapE0pFpqMQCBi30
 yNTLXiVsXYh3SuF8xN+hKIq7DQJNnlC11qS0SV1+MYuAHWXE/JesUYIEBmZ4lryN8j5RTxGxiOI
 i0OTBu5AaVWDzrcf4BQ==
X-Authority-Analysis: v=2.4 cv=If+KmGqa c=1 sm=1 tr=0 ts=698f4d88 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=AGCe1-UCTpjO--lCauQA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: iIv8d79j0S0Exxceok-OKDp5hkAjafCH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 impostorscore=0 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_081258_048613_9AB6E664 
X-CRM114-Status: GOOD (  21.39  )
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

On Fri, Feb 13, 2026 at 03:31:41PM +0800, Yongxing Mou wrote:
> Currently the PHY selects the DP/eDP configuration tables in a fixed way,
> choosing the table when enable. This driver has known issues:
> 1. The selected table does not match the actual platform mode.
> 2. It cannot support both modes at the same time.
> 
> As discussed here[1], this series:
> 1. Cleans up duplicated and incorrect tables based on the HPG.
> 2. Fixes the LDO programming error in eDP mode.
> 3. Adds DP/eDP mode switching support.
> 
> Note: x1e80100/sa8775p/sc7280 have been tested, while glymur/sc8280xp
> have not been tested.
> 
> [1] https://lore.kernel.org/all/20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com/
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
> Changes in v2:
> - Combine the third patch with the first one.[Dmitry]
> - Fix code formatting issues.[Konrad][Dmitry]
> - Update the commit message description.[Dmitry][Konrad]
> - Fix kodiak swing/pre_emp table values.[Konrad]
> - Link to v1: https://lore.kernel.org/r/20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com
> 
> ---
> Yongxing Mou (2):
>       phy: qcom: edp: Add eDP/DP mode switch support
>       phy: qcom: edp: Add per-version LDO configuration callback
> 
>  drivers/phy/qualcomm/phy-qcom-edp.c | 176 ++++++++++++++++++++++++++----------
>  1 file changed, 129 insertions(+), 47 deletions(-)
> ---
> base-commit: fc4e91c639c0af93d63c3d5bc0ee45515dd7504a

20260108 is very old. Your second patch doesn't apply anymore.

> change-id: 20260205-edp_phy-1eca3ed074c0
> 
> Best regards,
> -- 
> Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
