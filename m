Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C902DCA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 11:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g++VobHRgwBQTz09SyEmmP43Ll7f0pQnyFaeYaOslJk=; b=sLi7CzIxnAqdma
	VU0Hp0P5bWFJTTlovXgME8lQ2JldseQjaZsY//RANqyXtjjErQsspZD5cznWCVPqHFmbc3EJeiMdS
	TO3ur3TeRZ+EPOdNK4Yj89KC3QgVqHFCXCyjxgC/A/TALHV77eW4UjIR4wkaciQoHXSt/LvbIUu+R
	UFSlBkRu6mXZOwLopXssLnt4bFTGZ/VY1J+tDAq1Aj6+fRQeiHICivdb++BMP5YlTGf5Hz2VLiqI3
	mbFU2Yu65yJnDbdOhrY7uTeXtieemCzZiqNsjswaNDE8r5Orkg6SEtY67hJ5E0XK9mZIuCqvBni1Y
	0Mqx/G7wmab7eskRFcjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohHM-0000000DSlC-2QHE;
	Wed, 20 Aug 2025 11:46:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogo6-0000000DLon-23UE
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:16:43 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9p7E9006132
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:16:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1Z7Up3r+c9engU8+UCwkklUb
	n4iM1d7MoVv1XcE+/Bw=; b=Jb4FCtHgVzCuUKJ7WmuwSjJ+BngX6Y0KWaespDfZ
	/gUwh0yFRpcSznLyLx16ksxhAwNyF3cywKbX/XJTWQ9kpbrwYHpPU83ulp35TuvE
	RxJEzDzKBAKHKzI72rO/dBtvWfp2Q+nQjUt4DHnkK2iFeMVexC2w8sp9jC6nbpBT
	mRroLv2koSmJulBWEqR0FVSElttV8E+mLnJ/u6waK3bxBN8SkVc4SHASDNUUuE4r
	UdgzWo3uN5P0BMguUqiuPXJdIXmltNnxPxoF+zKGS2gAu1jfK3ytp/pyNu9qzZ3n
	LdIkCbrbaZDQcp56ERlYjMtRJvVX26D7aUfjwNZkzK3awQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5291g30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:16:41 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a92827a70so140805816d6.1
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755688601; x=1756293401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Z7Up3r+c9engU8+UCwkklUbn4iM1d7MoVv1XcE+/Bw=;
        b=Q3ZJZMfrFnEYBQpH8mJtvTdb9W1AcAxMzxxfCytJAJZeCITcmeTxfz+R0Gm2zd7GBf
         PIV+zDzKvXdB+w49PGfV5UpxKl8gVXIxzrrk87Je/icRh/xYsYSLB7t1/eMblxeNgQKj
         7dxb+T0cp7NHYyexLwI73tT1uoPmF5iQ+mbo1Oq8MsmTxo7kbWdpKTZGQLDLVjEoS9Cl
         V5k3Uf17NqyebRxPZGfX6jovAmSKv7TcUZCyMYQZ+XgoxECD7gZdfrJliIJwWlRSNcV5
         Kio2ffaUXFnul9+7Byo3kFEdn3BkWy3iybwT39ZcqrrPGQ1U9Zib4v/jDHdBPWQLtV/V
         B5dg==
X-Forwarded-Encrypted: i=1; AJvYcCUzAeIJv+/RbFYberaG+IGQqZi3Yj0YC7NFab+DCJNqozaL/XqgmejzPe082LH/yaILci9/xa80TN4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzdmuYZ4Ui5q/OG24JxUbSgkmRjzhKB2v23eo0XakxEunqju3TP
	BKRjsrFf22f9vAeEVsoM72J1fmHG2v8xm7YwwJp2hZrHx7oXS1CtBWq7M5UwCbNbpkBUl6Zla1o
	gBhVAAk+fyGOHBIeqojjDlxBPpnEKBmqBbtvjCD6ghv419/0vJepmTw4r1lWLVBJ3BzF1
X-Gm-Gg: ASbGncuWzbYV4OPV7bBfTm6pr5uzrih8M+jBZttLZsLLbhf50TJVd2pgF+5IUNDdsxJ
	YCUnZQfDPVvIO/Fs01gajtdEn4XYpFeJMDqL9h4bU0nOr2NfH4QvoqlKU9ZKa+5ZEbiQx1j/4Jh
	xa2QTFSHWlGnZ9QCpH5ceFADG7pjuAHc0UWV5WGSOPPEj5GfRXsZvphqHBhyV55GxBX96+4lb7p
	HiQhpmNCVnYgmsbxS1ZTrtIauqDyvgtvDviqpcUsCjJySe5O9PI0VHz++lR30WPnTCJbwekiugb
	6QojLypCVuNtvQPTVPWkqoVStFV/L11jYTnEyD59+E28kPWo6IAIj3OYxqyw5/Sg8F6OcYuLBz1
	FlW3wW8CN8C9QE/Jtb2zE/P0l6bZAYikEYhOYFKxSD8rM6Sm8O0/0
X-Received: by 2002:a05:6214:d6a:b0:707:71d9:d6da with SMTP id 6a1803df08f44-70d76f5be8emr25704926d6.10.1755688600503;
        Wed, 20 Aug 2025 04:16:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXo2tEhaFHWFMNzMyu5ebXhvONp13hFPzXhg1vzwJcxoRGG2jluk+k9PtM8oxn7Ws7nmt9rw==
X-Received: by 2002:a05:6214:d6a:b0:707:71d9:d6da with SMTP id 6a1803df08f44-70d76f5be8emr25704406d6.10.1755688599895;
        Wed, 20 Aug 2025 04:16:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3515edsm2625261e87.20.2025.08.20.04.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:16:39 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:16:37 +0300
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
Subject: Re: [PATCH v3 08/14] phy: qcom: qmp-usbc: Add DP PHY configuration
 support for QCS615
Message-ID: <su3zkeepxaislh6q5ftqxp6uxsyg7usxmc5hkafw7yn2mgtqeu@wua72odmy7zp>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-8-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-8-a43bd25ec39c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Aui3HO9P c=1 sm=1 tr=0 ts=68a5ae99 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=2oAyx2JpwU0Ji29QuscA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: eYelHEopE-VsipNIXSG1UvwkKrFevh6t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX8smjffvxdP67
 vtVspwdEe7bYhao+4Woxi3rQwZUOF8dSWunPY6VydxDyUxIt45bqe/uB5/RQ5wkMG8CU5sJjdAI
 cJNvrqKDysLUkFi8IlXtzXr0SlhxCH0Ih9x0dmmncssUceGdlqcUeUgwcCbP3rwfgzpeXDTHKXc
 q5ya14nhovKtMv3Qp6Tc0z2OnHExxTI/FNa9IffUlKT3RrcTFkUugWq8HGWHPY3zaAQPNOKMKx0
 QdDaRSJ/0Flli7XA3k/Hs/o0B0/GDVL5Im5Ck944sN+GSPteMvOoJ4x928i+zQL0c3ARJ8dCO8Y
 l4J0xg5z2i4Ql+gumR+34CIrxZtEMWic+RaTZ0UFxUnFeG+X1cu+P/S9x1ke7McNFYEqZ/+OCXH
 UHwYrBNeB+CgBHTNxCNh3C/KaOWeQw==
X-Proofpoint-GUID: eYelHEopE-VsipNIXSG1UvwkKrFevh6t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2508110000
 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_041642_646672_9F960F39 
X-CRM114-Status: GOOD (  16.77  )
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

On Wed, Aug 20, 2025 at 05:34:50PM +0800, Xiangxu Yin wrote:
> Introduce DisplayPort PHY configuration routines for QCS615, including
> aux channel setup, lane control, voltage swing tuning, clock
> programming and calibration. These callbacks are registered via
> qmp_phy_cfg to enable DP mode on USB/DP switchable Type-C PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h |   1 +
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c   | 251 +++++++++++++++++++++++++++++
>  2 files changed, 252 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
> index 0ebd405bcaf0cac8215550bfc9b226f30cc43a59..59885616405f878885d0837838a0bac1899fb69f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
> @@ -25,6 +25,7 @@
>  #define QSERDES_DP_PHY_AUX_CFG7				0x03c
>  #define QSERDES_DP_PHY_AUX_CFG8				0x040
>  #define QSERDES_DP_PHY_AUX_CFG9				0x044
> +#define QSERDES_DP_PHY_VCO_DIV				0x068

This register changes between PHY versions, so you can not declare it here.

Otherwise LGTM.

>  
>  /* QSERDES COM_BIAS_EN_CLKBUFLR_EN bits */
>  # define QSERDES_V3_COM_BIAS_EN				0x0001

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
