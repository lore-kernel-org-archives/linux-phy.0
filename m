Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91858C8303D
	for <linux-phy@archiver.kernel.org>; Sat,  5 Jul 2025 13:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDKMcmMB2i6d1wbEjZJvwsO/6sc3rn4zaocZxQi3sR0=; b=UTEx9UpDDaZBY8
	FVZMvzLC+tZWwiigFnCdZd9aksYcbYZEPMJfgsu/0HPU68N34cAIFjnYoAgzORdUYEgrK/2VAqneN
	ZF/Kc+42oipISMLafzbIOBHtLUQv4yuW6dyEAGn/geQhJW/2/RQ7HYzvmMCFTmkftnK41O/MlV8vF
	ihUlS3EeGtkPZR1mUFIKsVN2UJHZC475P+TTGfbwvsVI29Fmfl+FOkojzBv+KJoBewqY97L1daoMX
	CkqawPoYrEPWLtTv2Vjo8/kTxIKXOyzRwh70wUJxjAqKsz1BLtMOsDJf7AvODi/addMCJTCVjNEu8
	C+s/k6Iz9J+iB8k0cSSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY2bg-0000000GWnH-49zo;
	Sat, 05 Jul 2025 13:07:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY2be-0000000GWmw-20jA
	for linux-phy@lists.infradead.org;
	Sat, 05 Jul 2025 13:07:03 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 565CiuYa010513
	for <linux-phy@lists.infradead.org>; Sat, 5 Jul 2025 13:07:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IKd8N3ast/derty+5n3+jvo7
	9rRMBMcTu9wby44QbFA=; b=B8qMdPxdhn8B7S9xQezoUQ4O1W2gvM4L07ywLqiQ
	pNwj4BQCNNL7ME2GLaDgDQlbzBVdH/onfvTsk7VpnW8GmcFC9rd46mFjCUuLLrho
	DktEtCekx2HvvrPlEAA3tysKt5HMTHZOALIK9sDypkC0VPnqPpMI5Dc4iDiIJhnf
	U13c9etLgMfxGxsKoJq9Fo+QS5d2WXLDESpEXDZ0Fzdn/wJFDOgX0sCCFx0uYKSg
	doWCXGRnaE9mzye6te/QhhKAfXdImpqiNIBJaTZ66+Gy4Ujvcec7jpciexBSKywp
	SwGdiMNiWcKUN6+g7dhv6RH2slLXXxBjOH9NV5MDvfvKoQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pu0vs3by-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 05 Jul 2025 13:07:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d22790afd2so228946585a.2
        for <linux-phy@lists.infradead.org>; Sat, 05 Jul 2025 06:07:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751720820; x=1752325620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IKd8N3ast/derty+5n3+jvo79rRMBMcTu9wby44QbFA=;
        b=NMHj6YRNetS1OxU3g75FdTfVijiZI20lWW2rXqsT1UD2T9oo+EsO1fajEPJeveDeS9
         nTW5EWHZ9sJWinV19uqFjrlgIZRC6H1D0EbS9bBmm6hDynWDIZDYRL8Eaep3T4Jblt/L
         TgeCOvHc3zIZEu25Zkn88J71U1vulUSgCnLhFIcOoyvak1Nv6IAXff6J9qzps27SAyIX
         AfAjpQHL2X2AUc9sYSj94dXTSSjhlEo1LTZ+nNpgrDWEtsgr7GiXzekR69AgB+OMvHCh
         GPyVk2ulK6X8+BDurcKrkP9ifGOVWLAiQ+WPFd3tPulYpLhlzzjdpPuHDt7aHXstgo/z
         haKA==
X-Forwarded-Encrypted: i=1; AJvYcCV8+f4M5joE8aIVGHGFvGPa1bmbLk0zb29O+yssXNw5cI+sCYmVwWNHkF9JwpEzZSlfFKVMzPx9nA0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzn0sVxi4RXPD25pw7T9JiWi5FraN4XnYwVuilsxXZXHob24Mu5
	jwn4XFBRKFg+5E77CnD/BckygdIff4F3dLpN+0bYm/o+z20wydoBLIPySoPSXPtRNoh1Zb3H51f
	c3SPTN3kxJRG5/4xOgY+j0MB1jErJH1HGlAzJq9gVOq+K0Bxn+5q6Id5SLl60NF92zPhY
X-Gm-Gg: ASbGnctnbo7twHttC8GHR5FjYVzr9Y4MgrOtsLv89moOHkNXpcCQh20jKu4Aw5yvNUC
	ZiktIimTEaiBQ0tHKhcMZyuE9F/6D3isgd4qnC4jIVxXj3XOGTL39SG+qsbwujWWnqqe/uNeDkb
	aS2IuXucJp7LkitieaSCtEt0arF6eiWAFzBXPwK2RWOk+2kguCRqp0syznMuureRBuG0WLx28sZ
	R3gC/vCEZvY9ySvAe1MMB9QOHpl413L6KdXrgitGzJQgSWnFiES3ZFTRmfcZk6gNWX1vqdIwUPK
	8nMlLqRE/cs+/Jf8l1GOCJEH3ts5WwcrfNLddEPF3LRZ/OK9jiV01nhh5l1SSECm8WCZjwzTT8m
	2IM82ucR7CdY7QWr7UB1r6+MsQVsSabNuUsY=
X-Received: by 2002:a05:620a:462c:b0:7d4:2854:7960 with SMTP id af79cd13be357-7d5dcd3380fmr989846185a.48.1751720819779;
        Sat, 05 Jul 2025 06:06:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGl2P4eow0MB8ZATz7sgaNnaIhCr6NxTArKEUe0L5N4/jUT6bdGt4eYeFrdGpjGLiRly/SFRg==
X-Received: by 2002:a05:620a:462c:b0:7d4:2854:7960 with SMTP id af79cd13be357-7d5dcd3380fmr989839985a.48.1751720819187;
        Sat, 05 Jul 2025 06:06:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32e1aff3f6asm4991761fa.45.2025.07.05.06.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jul 2025 06:06:58 -0700 (PDT)
Date: Sat, 5 Jul 2025 16:06:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xilin Wu <sophon@radxa.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manish Pandey <quic_mapa@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-ufs: Fix HS-G4 PHY init table for sc7280
Message-ID: <o2chuy22dls3y3bsjke34z7pnyzap6m4m34tjxswueshulii4d@d5lbcragrbjb>
References: <20250613-sc7280-ufsphy-g4-fix-v1-1-1bf60744f5ac@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250613-sc7280-ufsphy-g4-fix-v1-1-1bf60744f5ac@radxa.com>
X-Proofpoint-ORIG-GUID: ZprbRTYvHamPgGysZiHTGuswkTIL6EQW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA1MDA4NSBTYWx0ZWRfX0u1Z50M43S0X
 h6aHUJOIZbn7nowHOyr2FVBPmMZfR94ozAvIM6m9x+AQiXy2iPqxsrnxkHLAsDl87cwXuV7fmg2
 rbBc3wP2hWLZlBce9bIp9ofpMbKJ5DEkpZMz6zjfw3i+KfeGc/5/giRb+XOnOo4FiVmTmiWrlO/
 6YEeL3Aq4sxi1Jzyj1VZ0rgXHeuw5pQZ0vV05moP6Lj6NDQE39dzUxFnLdUrJwcFxh9o7jajaUg
 ehFtlXU/3n5e14ziN6oPaPOF3Js4TYoK6VZCLaQ1bHz3MfihoOUKFxS7cJr1PQ9XwxZT99zNaXv
 Dqkk6Cfgx7WmeWMpORm6RhTZUr4wghCXLqZiNQy/4n+YjD5ifDP3jvI32O/mTZgGX9X0cMlrRHC
 +zb//Xcigvnt+DzLKao39uUzI1frYH9usbwCYsqn0MsOsWtSxFwhuT0NIWh1WUnacUrTaSIn
X-Authority-Analysis: v=2.4 cv=Rd2QC0tv c=1 sm=1 tr=0 ts=68692375 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=ksxQWNrZAAAA:8 a=vXUHhcYBCYzUoxaoE6oA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-GUID: ZprbRTYvHamPgGysZiHTGuswkTIL6EQW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507050085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250705_060702_524929_7E72C689 
X-CRM114-Status: GOOD (  20.48  )
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

On Fri, Jun 13, 2025 at 10:41:48PM +0800, Xilin Wu wrote:
> The PHY is limited to operating in HS-G3 mode during the initial PCS
> registers initialization. Extra PHY init sequence is required to allow
> HS-G4 mode to work when needed.

I can't find corresponding settings in either of HPGs.

> 
> Fixes: 8abe9792d1ff ("phy: qcom-qmp-ufs: Add Phy Configuration support for SC7280")
> Signed-off-by: Xilin Wu <sophon@radxa.com>
> ---
> This might need testing on sm8150, sm8250 and sc8180x as well.
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index b33e2e2b5014d3ca8f19b623ba080887f53e616d..7797be329d75f95c80863e05351d0cf55fdf38c2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -570,6 +570,13 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs[] = {
>  
>  static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_g4_pcs[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x10),
> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_PLL_CNTL, 0x0b),
> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB, 0x2d),
> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB, 0xb0),
> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_PWM_GEAR_BAND, 0xff),
> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HS_GEAR_BAND, 0x1b),
> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
>  	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
>  };
>  
> 
> ---
> base-commit: bc6e0ba6c9bafa6241b05524b9829808056ac4ad
> change-id: 20250613-sc7280-ufsphy-g4-fix-024542f31fac
> 
> Best regards,
> -- 
> Xilin Wu <sophon@radxa.com>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
