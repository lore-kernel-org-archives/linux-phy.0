Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB049CA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 12:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgCd0U68pdcNIrdc0f9dlN85Am4eD56cumoEDsln4Vc=; b=2PG9l+NEF8OFi1
	kvamZQMt7zkSkIhbKLrQe26Rp3SB1gCrEV6aLVTxW2/8caWHC+mloME4ppXiIZkkkQvl9i067n58G
	THh2eU4kVhTaYJkPn+KSUxC0ZFZmPBop3ry4SgMV2jjeUbRZgFNZYYVmixW//OAagCNsXDo5w4RXF
	HiDthxL0wOTZH/xv19FwQ35wJNX9OyLzc4PZ5Pwb7H2KGIFoSdeCM+cotuohjSkkT17/HlmGZwHGo
	/nOBBrxe/gnJPzMtwjyk1qIq7LZjLhD6senzqQTtRtEWLIWYqrAPOkXO2+CkC05Ul1nldAjNMQNLU
	eG7POOGw73+lHG8UpMqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUA-0000000DUUa-2XRV;
	Wed, 20 Aug 2025 12:00:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoh4z-0000000DQX6-2rhp
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:34:10 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9lQvB027095
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:34:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XcNX4ZDYiBJ7hPbbX3QqeNKI
	VB3toybrjSkdSm9Gk44=; b=eCNU/iKnkqs2/ujRIBoZ3cftAZtZMetCNlRfqUcS
	WBDmgpb5vugP2hRdIcOiP+bTSMIgTQ47Ax+2hnGjqmlxM/13uTFqFs/SC4j6bA+J
	nLUx+pO3Uc6UG3QnR5IYcVJcJV+PHR8bBwBy/yZtefRJvcoU6zXuqUNNLD3JRKiW
	IrjKsYtFqMvvQ0AR2q0XNA0eggWzuVla2/gY0AsDXVP0L3PuEh73qMlD0vSSQuaw
	qRqQaF3gaZq9Qpm5dZRyy+roT3jMPAHnSjEYp5TYJC5ZeKCNgmOLkc0CVjTvUavU
	wc1/3eWdLpk7HpxWlfX2c3/sTguSODbFm9i/Upn9w6kotQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a9jjv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:34:09 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a9f57ef93so133102276d6.3
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:34:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755689647; x=1756294447;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XcNX4ZDYiBJ7hPbbX3QqeNKIVB3toybrjSkdSm9Gk44=;
        b=jtnBJefwohLnK68sT2s9JnxlAT2ATo8dfiicPhJuCcBNtkxQCNzcm1B9HHxr0B8y73
         JtfCJ7Vhay0RI3S8W6nD2HuJHS+mrX0/thbVNJAEHsxqdezglOIjF2A1jeuNhUnOsUKP
         TRaFCOrZF6hSddbJl6Ez+lEBYaLlOv2FFoLLs9waWy7BZ7zRt8LkBuhOGPEr7NgtCPyK
         cPEV3xgCaB/+4OelDYqA6EreNEtoPK7bUSRbRvl9YxTM4Yk5HeQf8ZP0cou5xqKJ9Cjm
         30hKQ1hc7Em/Wqx2dgsaA9MiCNJLVPObPi71KZ+qiH8HPrv/+5U9b4CKbWDRsM8e9x3P
         ZzTw==
X-Forwarded-Encrypted: i=1; AJvYcCXZySCQiZep2gHy071PZo753LZqUSFudIgrtFO2nOBsLSaYH01Wc746cOF1ppjL7fz+S6KBhPr4r2E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yysk1WNyeWkQUrcjH1PBSw3htZDxbh7mRJBPrZNFaCdb9Ivu7CR
	TZWnznHKQB9n6fpKG0pmIvWL7WzfPM0ZzpJrwLCTb3JnVySMknUg02OYMB8+aUWW8Z8i9DocPz8
	w+lWLgbKmAK3M4BgSEKgGVkQlg1QC+U7Gq9C4hSKdhwfOIp7t5OLVHUKZxjyuOekzUHh2
X-Gm-Gg: ASbGncs7CwubBWS1wWqJfW/rPR7zQODY1s2V3ronCw1DVu6AMccOE/VZFfVt1uJmecG
	/ST24UVulFgPJlGwCqQKNoRHJhlx5dyJb/C3J2TE/IUnsIaB1/3CGKGGPNytc0DsgaB4AUGJxIp
	xlr/edMYbWlVVOHiAFGxUUPcxevHGM1aa3OwCSpSjjm/o2UNLfRVpikL9oQX5Oc6XrtX+zSo5VL
	l1fIFihBItlEsLXyq7fmPkELXzN4r3gtiwhHLUyX7RxLtXNomnrYLA7F1MRYA18PmIxBV0XOOxG
	oj42HTQPTuXq4b1Uf/GRrXaMDGycbkaHalu5jte6k4lBu0C/bw8RWO8xy0Bqz2WG2veKNb+B3ox
	kt4GpHw7ooDt0K2idzZUskB/yadxomMIvhEOwRR3a+UftdO0UBB/B
X-Received: by 2002:a05:6214:2467:b0:704:f952:18bb with SMTP id 6a1803df08f44-70d771402c7mr20425576d6.46.1755689647346;
        Wed, 20 Aug 2025 04:34:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKE0JSYrOpvMO2WcRrh53W2VDmbQ14HSNNSlF+so2tCr9GefhcpbJA6wUwasEOVbgwxfyTww==
X-Received: by 2002:a05:6214:2467:b0:704:f952:18bb with SMTP id 6a1803df08f44-70d771402c7mr20425116d6.46.1755689646629;
        Wed, 20 Aug 2025 04:34:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e084e46b7sm233240e87.48.2025.08.20.04.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:34:05 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:34:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 04/14] phy: qcom: qmp-usbc: Add USBC PHY type enum
Message-ID: <cueyo7huj2m2yt46sjk3atfktft6y5slhhtslwmi44r7h7lxbn@5zvwxtdmk34t>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-4-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-4-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: bJ4OXZ1wpHa46Gpyj6JolzSeTq4ZsAQW
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a5b2b1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=LJgbN-Jd--P93uwsTkIA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: bJ4OXZ1wpHa46Gpyj6JolzSeTq4ZsAQW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0TLr4nrZyid9
 +iOSMgQZ8YLQKJkycR3gYGDFxUUwakx5DAcvJG7p2kUbHCDRBIkYj0hZpCzwD8ahYqLhgzdY2My
 c9Fq2zTYvsxO18Oo/3R8pVWiI5jzpCkXFOiEshouW5lvnLNyGC3674ukMSBgB3OtdMRPBrp7bnx
 iWA9eij9omVYvP4wHiOdUpen7TWDm17Nfn7WHCy/gscWp+tOOXe1C60g1QUSZ8bU+ePJ7drFqC7
 iPEdED+QixCJbzlEYATrc9BfACyD08nFRmPjrAlu8+2hW2D4WgNZL8yhlFpJuzubzSHvyrQIUvt
 D44TMM6mxvfYZbvQ9KaRvAZ40Y2fhPOqvQZ2d/c4ovzVZslloGahhDQjlPNbb0qsSwMgnJhBZxm
 G5peCdagwwJvmpn3eHSB+ZtlBrWVxg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_043409_728957_E1701A8B 
X-CRM114-Status: GOOD (  16.88  )
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

On Wed, Aug 20, 2025 at 05:34:46PM +0800, Xiangxu Yin wrote:
> Introduce qmp_phy_usbc_type enum and a 'type' field in qmp_phy_cfg to
> differentiate between USB-only PHYs and USB/DP switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index e484caec2be20121cfe287c507b17af28fb9f211..5afe090b546977a11265bbffa7c355feb8c72dfa 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -284,6 +284,11 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
>  };
>  
> +enum qmp_phy_usbc_type {
> +	QMP_PHY_USBC_USB3_ONLY,
> +	QMP_PHY_USBC_USB3_DP,

Drop, you can use presense of DP offsets in order to differentiate
between USB3 and USB3+DP.

> +};
> +
>  struct qmp_usbc_offsets {
>  	u16 serdes;
>  	u16 pcs;

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
