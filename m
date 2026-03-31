Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF59C1061B32
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 11:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLO4gJUz6LL5+oYZF0z5CdgRA0M/cm2PBh9dxpneZ/Y=; b=gYKsyzIVdgAD68
	8OF/xC1gVA5bIKwyJKxQ1GoHjxu5eHS+gT03BsxX/2pLWG5WBlTVfZnHFfUl9iH8WLdTBd1Wb/vEL
	d5gsZr3ANco/cEh9POVc7zxQ9w8ls9foyRrzKDxjXYWcyQszkKNoj/7NoZJgEn+wHW4M5APW5Ozi0
	IUD1VMCJM9KXXzeXcl5Bwfp4zramVTStJ0dKR3nbZdTtJQmSkVhPuJ604TgEqlcAZ5dvF2SgMlZ2R
	sxgHBb1GceNVS7Qi9m6JPRnEKbuwOl6ZH51rBdVpSqUk3Uzc7uxYWzDWWblc094klS1n8NFmJYaF+
	Fl/qr7WSL76QOMWER3OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7XDH-0000000Cqzx-2Vmd;
	Tue, 31 Mar 2026 11:24:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7XDF-0000000Cqzc-0zw3
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 11:24:50 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62V8jsdT2049392
	for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 11:24:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dqtid6UrRWBrpGRwZVlaNZef
	/iKsfpp16fck3/9FjQs=; b=btbVOGuAQ/jdhY6hKMTY+w6+qfA3gUvuZTBvbtnK
	rRq0IS9xTBnlmOT1ET4nnIKB4ISpfqFLKejmWHLRy+/p9U4GLk6rzwCg/72uA0J+
	KQCoK/nhS3xJTye4fVue6Wh41IUxAarVM+1d3sL7fbWCyhgq7mGn61GX+uolws54
	XOENkTDdAPlPQ0NditPjsgEkfsExDyf2rRjdUHbNV+sP4LAplLSqyWQJvne0DW0L
	pE63LhAHSxz3qnglitEY+5ecyRJ4fB5i35yUNEnnc7ki2uSZoD3rZN0aS2UK1vJi
	fjWJXPpM5/NmtVQ9nGeN9UOjs1uGapQXJopZ5ovM7MvB/A==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d8b1yrjuu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 11:24:47 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-128d59030d0so22776937c88.0
        for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 04:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774956286; x=1775561086; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dqtid6UrRWBrpGRwZVlaNZef/iKsfpp16fck3/9FjQs=;
        b=idQI5wbVXQPq1F/ZOP8NufquGF6L+AVZDAABcUZiViNLEQWORaBRc5+sbnDXXEr+a3
         SHw9Zlg5QyzvbS0Puyd/cAUhl/NuAK8hv8zRa47oAbByGzIt6aHdhVC1rlCTfg6n8DEi
         0CNbV2Z3R1EyNXFG2eNRM3STcsrZah4gJdMkV72gmPkk7F+43RDPofXPebI5v74HA4pM
         WqMxBpHvZ24D86cZIAL7lqC+kpdvGSTDESnvjumzd91IjTfiM86GesyNTkCNHbsGkB7O
         Jwt/hQRfHXVBDuTNBZv4b1yTWEu+uKis3ys13Ho5FepeJTlVWtGhlgBn3CBtLUQR0D6S
         81Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774956286; x=1775561086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqtid6UrRWBrpGRwZVlaNZef/iKsfpp16fck3/9FjQs=;
        b=hSzRWm4ZTryH7XzFR1Sgv5kZP6IiiuXDaYIP8OwvWkA0Sf8LaJLRhLbKhAVUCr4umb
         iUXyUv/FBgrwvYHmcCHyutfwv2PdFVhKrbNf2U9o68U/VY/UZb+CyJd6g8mIhauu1qiO
         wm2SzVoAxhOjlT+938Ji9fXGwzqTGik2Yka6kR+Vu+TgFrPUTw0dFs86IaBaNmcgG6SZ
         QQvEtaA+2m5tnLGPx12x4QW5uIxWWJ0F3m0FjoefXxTFRPYMrOVc9gWcrsarEtKgkZQG
         PSs7UG8JNqjXc7/SjSvMBmRAAsaXIBPAlaBv6O23v+6+FSjdXkS0S604oAaPkCIJ3FEn
         vgEA==
X-Forwarded-Encrypted: i=1; AJvYcCXOj2QTNW9pddyhuPyU9hE8GyR435jQ4PdSednhvVgK4dG0aKIM1Dg5miFxIIcm9X8SWbhb1c15lBQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQZrkvhNAxx0tYcEqzgAFpUGFZ4y7iWokH9jS5FqrQYuT1SHrY
	CXcDVmu8hiMsjI5eLgRYHIivn9RhYiTWdhf8A8gBpmdEfS9S7BOcqh4F5tYhZm3LyeM0hqSBM7L
	MfZAEEUqd+7A/4Sw+G5YYfWcervxk/VqeivTfO1+EyOPkIDXEpoKxdEQUBizYkb/U+dP/
X-Gm-Gg: ATEYQzzF8wSjwCPr/2a57Dj21pk3Gcc6lfHvc6js1vr5T16Xvky9mC6hDmx/RjcUUJs
	qdIGfD9lgHIVh/fDxCCXeKultCojj1JF5Ihj00KEE1Qlpx6xek5F9pcSmERhRMWt+fLlt1yluT+
	uNrcw5mlBxDAJ8X962ZU+q/cVoblKlYl9qhWSfLU8fPfKG0Lz+4zfTwrAEsY9n9XPleNz+hXS06
	W7p4ZjKhtyUoL5lMm8b5TmO+EMjqHC3ZHbzkKpuv5FVTD4E++L8CE1A4EsYRhiw5ZzsLFRUa3HM
	280lhIoiGcI1xc6VRBRyQE9UMVZl9VFO2GME4lDSIl7fffGaaL3dl5iz0YRZt6FFn93ejTYxJnq
	HqhDqYpeZFA7qxeljdj7rpdnSt86w6nuV14lVQyIMYUBBOEz6nyqvaO4xb46MCX79
X-Received: by 2002:a05:7022:f8b:b0:128:cf5c:5357 with SMTP id a92af1059eb24-12ab28a1affmr8351568c88.2.1774956286224;
        Tue, 31 Mar 2026 04:24:46 -0700 (PDT)
X-Received: by 2002:a05:7022:f8b:b0:128:cf5c:5357 with SMTP id a92af1059eb24-12ab28a1affmr8351550c88.2.1774956285542;
        Tue, 31 Mar 2026 04:24:45 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12ab970da7fsm10762296c88.0.2026.03.31.04.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 04:24:45 -0700 (PDT)
Date: Tue, 31 Mar 2026 19:24:39 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 0/6] phy: qcom-qmp: Clean up QSERDES COM and TXRX
 register headers
Message-ID: <acuu90Ri_cchEndZ@QCOM-aGQu4IUr3Y>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
X-Proofpoint-GUID: e1OhoZ_EDk5mGR7Uq2RtyZgymGnekNiw
X-Proofpoint-ORIG-GUID: e1OhoZ_EDk5mGR7Uq2RtyZgymGnekNiw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMxMDExMCBTYWx0ZWRfX9DopYd6fmfFG
 S5aMV48Hx53PIn7aTFrjCbpYniOygxDoyYGl7TiWSh+ummTUzs3XNBSAhgDQgJJBPLh4Yr4Gj7w
 R1HjN/wWWq0PnyB6Oq3wSlsrY9X89ypp70fOzHYfaE3Uf9PdTNuOp0NJCD3OhSvVPr/BLn21LF/
 P0O8RSrXcJFX5jV8sA72Dfjv+C9mtrF70zmlCiN+8xqtRryp0Ez25N/qu8/YPAzqA5IkEgdndAz
 TPenMsj7e3OwcRskS8CqCeGrXCHRlhwOwPeANU4ePjdiWm+AAcom418K8jhYqz1E49rHG+nabKh
 33zkJ4CibWTCRm0kHUenYa1lJR7nw1XkRRPIb7V3TGHbtiOWvPFAVF3CAnYZnUmfC0rTmNyEMCC
 k+Cfr1A9/Irf86Y5GzWxuuzzsQPQEzX0UI0WRmHUdqs1ZikBXf0miSwaHrbGSauY62w+FfyvwX6
 NAkEC/02m8SDEHeOCpQ==
X-Authority-Analysis: v=2.4 cv=aJT9aL9m c=1 sm=1 tr=0 ts=69cbaeff cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=Ar2u1bqxPTf9_ue8risA:9 a=CjuIK1q_8ugA:10 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-31_02,2026-03-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603310110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_042449_395144_DE7068B3 
X-CRM114-Status: GOOD (  15.79  )
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

On Sat, Mar 14, 2026 at 01:13:19PM +0800, Shawn Guo wrote:
> There are some duplications around QSERDES COM and TXRX v2/v3 register
> definitions.  The series tries to clean them up, and also rename
> v2 registers/headers to make the version explicit, just like all other
> versions of the QSERDES registers.
> 
> No functional changes is expected.
> 
> Shawn Guo (6):
>   phy: qcom-qmp: Add missing QSERDES COM v2 registers
>   phy: qcom-qmp: Use explicit QSERDES COM v2 register definitions
>   phy: qcom-qmp-usbc: Use register definitions in qserdes-txrx-v3
>   phy: qcom-qmp-usbc: Rename QCS615 DP PHY variables and functions
>   phy: qcom-qmp: Drop unused register headers
>   phy: qcom-qmp: Make QSERDES TXRX v2 registers explicit
> 
>  .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 110 +++----
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 212 ++++++------
>  .../qualcomm/phy-qcom-qmp-qserdes-com-v2.h    |   3 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-com.h   | 140 --------
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h   | 247 ++++++++++----
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h  | 205 ------------
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 254 +++++++-------
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 262 +++++++--------
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 310 +++++++++---------
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   3 -
>  10 files changed, 769 insertions(+), 977 deletions(-)
>  delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
>  delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h

Hi Vinod,

Did you get a chance to look at this, or is there anything I need to do
on my end for this to be applied?

Shawn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
