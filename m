Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A2BCAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 01:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u872HsvR+xSRlx3iZsIzqgPK5sqM9AK4F/xw9qdF04Y=; b=mpSKhFa0WGlXh1
	wc8wVUCcYCy4jFft3XoWjZQSmot5AKFeZ6Yc7IAg9WlGlg+JCNCYAVxishiMCbjIsIPIq35DgUlqD
	/sEda7HYoa9ZYl8vAvAiSB2wRzW7eXYbNyA06VAvwenAgwbx2/Fh1rjjF7nIjw+sEy9MaiNYwLdL3
	Uwx9xYu6fnBmMfOWpkVWmT9fMwK7DQBVJhPRrsVidIaBCG0hdViYQ/2IFKguu0bV3cYyFlFGOTq3H
	ioBWCRqQwuomD+NgHC2esppUtUgpCeRPaWI3R/VSeAE87fMtmq4PVD+Dil+Uxe+CaUjArA2IvLT8/
	CxZ4lmpSvZOhnRfBCNUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aWo-00000005A2a-3qEK;
	Thu, 25 Sep 2025 01:12:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aWm-00000005A2C-1kN2
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 01:12:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0XAkN027477
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:12:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MQ6UCFt1uTELNNSw3dM2CC6N
	2IBuWYa+2G5IROr44dA=; b=GW2SESp0Y2UoreJfxhsyh1KpoIzdgPedByV7K8GT
	xnezcHj08w11Pvw++EUhS2lAkKRNHvhBaXOyNh0gtSPHpmFXdUbiNdE58fX1mb47
	Yh/PyOSpG/GIE5e+R5cl6NMbrVb4uLE+HudYfzVl7yr5JMYizzXoBQNv/3aYWEZO
	gA9kQ7N4WwNqWWv+3Gg22pXP3riAaHFFRn8bPM5YgNwgZj9sLcx1JIR5vli8E96l
	Mk74PeRqjlNX6uselFBQYO8Yl34rz6ToNda7kBT+1eSDSi6xWCaUwo/HnPRu0fSy
	5oT/n1jS5xxxPGJ7pQjK4LSwql4D8IylfOy6lleO0KGVRA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv169h0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:12:07 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d602229d20so7554021cf.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 18:12:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758762727; x=1759367527;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MQ6UCFt1uTELNNSw3dM2CC6N2IBuWYa+2G5IROr44dA=;
        b=g1mSmfKZMxnzWXbvjOtDop4D3S+aRLYOek41j5IReZvwqgDZj82BLsHzlkcPCZYWwg
         6MOqywGgh/n6dT630rDl+1ZAqHpnFHbGrPU63OaS+u2m7HmytT7PVWD+jPCEX4Ik1d8s
         ytmPyIEBFZ1ySt5ILsynLpqdFi4xIVIeLwai/5dwOT492mi2Rbl20ufk6gNC3uuHFWWB
         lOnOwLJZUaNtfWI/29Na3stVH8nc7kuEm0Ox1msuNjhI+nQSywgomlKMDa41uzrJj4wb
         ciVWDtbE/FHTD18kK/oNH6hSJ5JZbnBSHl//PWB0CNRrC7m5VrQ8ym3nwNvv/+BHf2lV
         +BzA==
X-Forwarded-Encrypted: i=1; AJvYcCVy+GoAuFESDyyotNwyT+0Wfoq8KUEYgnSDTG3D92XNLD1QT0JyERjfJD8MeaIEtAvhn0//UJp7YDE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9x1ZNQmmWjrEYW763MFH/r7DiRRX2IiR6WDTcsvDkm6iJQSWO
	VZHLoReUqdg/BZoofxAjcLCE3acP+amFTmTOjgJ/QTKE6FptNOgJQSE4GANvG8sXzFsbz4dXpVd
	oILHgVWaVdc3Wr+WKkeMZAZZv46XYQYwG00tVLmThMr7yaZWIVBHFUzC92RoZRKtRAQaT
X-Gm-Gg: ASbGncuuWK/zvGCsgmfZByjw8y0A+JvOcOEtuCU1/VNfqtKZDGNFD/qnSVt9PC29VHq
	Xr/QS1jHSBwziyi0k/Anx51cCvVb/6QlRW8CnfRsq2HvXNoZBD46YQoyIv5KmSgMYrE1VUdUbEA
	GpGTL6CyxfAT8C9Yf5joQfGblqyO2wZn80e7z6m2wdRIkARn5ad714z2hwDlfLY/iGfc5Tgs9gy
	7iW9W4JzHoYuJpu4oJajyQcJ1QPGbcR/PflJWVtj1CgcufcUObGpHCcdgy8PXiLFHYdPOy2slsP
	oPzuB31WfI5ts2cBsJnnLNQqjvQehctkrRj8NyR6ZqSmdM2xI21I8G9XBnoxfJD/ZE96uvhPIzv
	kSyAVISwe21yPHir1CNjRxrRpBKQxowkx2FNMmSlrTBJ5Ce1zyu5z
X-Received: by 2002:ac8:5f53:0:b0:4b7:7d98:d3d8 with SMTP id d75a77b69052e-4da4dcc6b08mr24709281cf.75.1758762726586;
        Wed, 24 Sep 2025 18:12:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEW8TqfUiIdyjOYKHmfe38ArP3DQyQEl0zmpp3cjDaI2nOnb8fwmpNUD155WV/L9oKMabVPXQ==
X-Received: by 2002:ac8:5f53:0:b0:4b7:7d98:d3d8 with SMTP id d75a77b69052e-4da4dcc6b08mr24709041cf.75.1758762726137;
        Wed, 24 Sep 2025 18:12:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313fc02c1sm198591e87.60.2025.09.24.18.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 18:12:05 -0700 (PDT)
Date: Thu, 25 Sep 2025 04:12:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Message-ID: <5mwqf4djs2jee4x6edplwmd5ugucoi4wazrzjoiw2p5ndiv6h2@6xqnnavp2a4i>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-3-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925005228.4035927-3-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: ZjV989xFp-87-HpNmffMAiNl-jsIxyeq
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d496e7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=95jUwCB-LgHD7RhpIBUA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX4WlCGKVvQ8ya
 xuM5g7QjVkkWwEAqOjCrIytCQg0phEO9yU07Rip4m2KOcQCk1vQN/VxDS7MMKy0+BMbc3MFQPF7
 aV4zRa+BPt3YubHg/uwUdgy1MxvJnqK+NY2bZwnBnKTvcaJtm6GtM+SDNrKDzrBO61Ft6VtKS2p
 NAjHqTaVDQGLdjcio8iFNiIAwXBzTFoMxpZ+z44eghvi24G9Q5visEf4Tnw7Dzo51IIGcfB7hGZ
 TVCpF7hUom8YMXz8O1/FXmsCPLpkZuUbNdrW6O70OBt281asM7Poe/e9eqgYma1nLLGea3tg27B
 vlp/L66UYOEldw9gqOb5JPxjCTqhqSKRKiEGb0OWJCuxXHH/up0Ad0Ybfc1OiT++EaKMasui6Lc
 KmtxQpNQ
X-Proofpoint-ORIG-GUID: ZjV989xFp-87-HpNmffMAiNl-jsIxyeq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_181208_572156_821EE269 
X-CRM114-Status: GOOD (  17.12  )
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

On Wed, Sep 24, 2025 at 05:52:20PM -0700, Wesley Cheng wrote:
> The Glymur USB subsystem contains a multiport controller, which utilizes
> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index a1b55168e050..b0ce803d2b49 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,glymur-qmp-usb3-uni-phy
>        - qcom,ipq5424-qmp-usb3-phy
>        - qcom,ipq6018-qmp-usb3-phy
>        - qcom,ipq8074-qmp-usb3-phy
> @@ -62,6 +63,8 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  refgen-supply: true

Which device is going to provide this supply?

> +
>    "#clock-cells":
>      const: 0
>  

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
