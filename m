Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8640CAC5A7
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 15:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDOJ6TAunNztoWJ9Gt4+GBZZ7AGMplPkY3M+Zs3cGY8=; b=1t9NedtpdYAHA0
	DdjjKutCiyDEY/Ajiu6IqKwm9LjSFrVqNK8elY1kKddI83hLRkKDp4kGS7Arq+7B25RtHur530ZVa
	Mbd8PsujMI047VC6m40NV9Oc1Xgk0vuYkfpw3vFSNDZFqN8Y8zh4/eCh4uRyegXcM0DRXif5ZO3N3
	nHdzSC7IGyy4HCsxglyAyIkR32ETOMRXlyqrElAh61SNc4x/AZTXOl2oVMPpmwdl9sBX4qlfy9FXk
	d/CxmiWPg1QwULkmWlJ2v/au88XY991lzbDQuAflIG9L7vuFZcqw/MBDtTE3EfHmdgndr4ffmtrcZ
	5IF9mI+BaM4saGgliwfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzaJ-00000005Y58-1uEd;
	Sat, 20 Sep 2025 15:33:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzaG-00000005Y4j-33Fi
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 15:33:09 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K8eUZn031277
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:33:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8bnu4f5gPl5SUZdfwK3pQt59
	3FcrClm0g4bcABq+Y74=; b=bawthGkb4c/dfaIvvDVYLHg82YXoESMSj8qYYBtN
	/Cj1OHZ93axMaIAZyp/GYAuB8b0zKIQr8ln7xC6yi4JcUXv0CSvGoEs4qSku3dc2
	KtzGCOZiSlK8W1+BK6Zkvg8bhYk4cDRJY9pbAz+NtBVmmYN49qkHEWnyGASt9Kgi
	DXjH5P6ErnQN2Uml2twtia+r8BuGKtVBmDHTDiHSMVCEeL9XQo236+I9SKAtp9vf
	uwh6raavFqsW8I5+0hvtgHPK53TiZqt7cHpTYpcX8o/s6oUeNaj+Nse/Ms60Wk7j
	uPLNbikb1neY+/D5kEB5A0yRnHxalNb4blwDJ2kfjLSehw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k7ss0qr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:33:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5f290579aso63264241cf.0
        for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 08:33:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758382387; x=1758987187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8bnu4f5gPl5SUZdfwK3pQt593FcrClm0g4bcABq+Y74=;
        b=ITEQFgqy/cuXR2dMXpJXG+3gonshp6Urt9vRPEGefvX3Wnk3r8V+yWxj5X7ktDBum1
         bjIJ/7pdLSMTjvkFFwbRI1bEDvS1ArMtazONwueml13aH1KG+DY01o9lfJqXwE2A/+cV
         a88cfuSWacHXXLtiYUSvZNlPH8ZZN188MrhYTaX/oXvfIByp0rdIKsl3tVitV5VSSDe7
         NFynO1k/4QvuyHYmsobU40r9ZIF2vYf5i+6bqzuAyJwuLfmqJTZFhSN+vGSsWMR/TMoG
         ChCD53TknTy5fMt8rFjkLzSnQNodmE+dtmXJxHFIowAnPopDnjIKytekSLhIMXVAtPS/
         7zxA==
X-Forwarded-Encrypted: i=1; AJvYcCUE4JEDxMhYpF5BS2E9TwWYh3WMtwum6JM/atRHevtO6Dm/bS2FwXNyQUV58xtZxjkqYO8BHPhRLy8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy86SETFjCklpeAIw37YM7BuN7hR2kgKVlgf7yiiJSKqSFQUypa
	g4/hR65oOZlXTjwTCoeXVRpz01eQYqUGo/3KLGCULBkJgZ1n/f24PKuIDKipRwp/1yl7RX+pWjE
	PRpl7DX9fCGlttSDTSA7HIsXiNA9h7NhCK/PK45s7eBHXVvPg6gRVIzEXI1rVt2nlPZ86
X-Gm-Gg: ASbGncstos500EiQ/SOv6Z99ADsaUwMmwBPuCmjsuBFSAUCvi8EKaVCya15Uj3iX5i1
	MnZLvyu9diuXyprxF6WMvPSR9gaE7RqHczNRXhSAGRxNET2XibSfH29HpA9ifUVsG295rXRGfPW
	Ez0duOOQTnJ8hS/jz9Ch3A/ilGiHtI+7iZDWDOz29q4hldyNJ7v+l4E6tEn5ezkeHcEooRLEh6m
	pde/GchcD+wEhG7mXPNn8x1NH6XCB7O1OsUvvIT/x8voy9WG6dVBa8FbOnbnBYd7F3fYxybvkgk
	RC8x2l0+3BDXme7oWOn1mAEKdlKy9/yHlbbKReUmVvvZbkYeBQy5Sa/NbAXAjEw3I9lfDkaoRu/
	aYx5OL5apkuu9nVmsTDESopmIW/WB0NVFPSDmsKkJ41C4TZ+ywqFy
X-Received: by 2002:ac8:7d92:0:b0:4b5:e644:67e with SMTP id d75a77b69052e-4c06fc182ddmr108612591cf.16.1758382386807;
        Sat, 20 Sep 2025 08:33:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhsq2yGXKWZNR1YFIQu7K60DKJhHDOBc3PQQe0AV272Fv69oDaxzvCOqzXIvhTLTtKvwRmCA==
X-Received: by 2002:ac8:7d92:0:b0:4b5:e644:67e with SMTP id d75a77b69052e-4c06fc182ddmr108612231cf.16.1758382386385;
        Sat, 20 Sep 2025 08:33:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a28b9e23sm18579691fa.27.2025.09.20.08.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:33:04 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:33:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 8/9] phy: qualcomm: m31-eusb2: Make clkref an optional
 resource
Message-ID: <nimhwt5glueufk3c7br7f3gzxrch5dklelod3sh5lbj33tg5hv@j4u5hdtspdv5>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-9-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-9-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXwJyocWoWS9P8
 PgWgGzmhcWjvQAKkLxHJXAqoH1Hgsr5PLhmDSuAWXUWxuNFEPbAEnvVQjlBGIPI4eOsi7xna2xP
 Sr+dJ2xEHvq9tkV4avZVmWnJZ66sBJWC8RtG3frORvfBKptHUFKrBWUMRFY+z/JWGlP77I2Z7ef
 6/4kF4noGsRXswwqMgDvzXk7v1n91OMjANq26ePA6mEk/3cTY72iEk/ysz7xQHVDhRnbm/M3mQN
 Qfz9IqBijBuK/LyRvy6c4sbJBRsulssF68eGxtEDncLCUA3K+00I9L2uQIimGciw+ODE3EBcC0L
 XZKJphMbcSJKyFOT6Yo3NGz6TwKyrCGIib/rb0Au7N5hnnodwm9srtr3AN5CBNDpX4rWNTaEJWx
 acO5xR1k
X-Proofpoint-ORIG-GUID: FGY9xojHSzq5g-axkG0R1SAwakuikPs6
X-Authority-Analysis: v=2.4 cv=bvpMBFai c=1 sm=1 tr=0 ts=68cec934 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ugsTjJi9MLqOfrGJaKwA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: FGY9xojHSzq5g-axkG0R1SAwakuikPs6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_083308_769386_EFA72DC6 
X-CRM114-Status: GOOD (  15.10  )
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

On Fri, Sep 19, 2025 at 08:21:07PM -0700, Wesley Cheng wrote:
> Some USB subsystems that utlize the M31 eUSB2 PHY doesn't require a clkref.
> One example is the Glymur platform, which contains 4 USB controllers that
> all utilize the M31 eUSB2 PHY.  However, PHYs associated to the primary
> and secondary controllers do not require a clkref resource.  Due to this,
> mark this as an optional clock.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
