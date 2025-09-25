Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B27E9CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYgXzsi1M1hLJgMtBNNKEktq1u4NUXMwaCxhAguld7k=; b=ChPlX4jiPJuwoC
	Fgk+FgxGDUXiXlXj3dYBWFg+1CiyO4PRuWObngnrJMXoZxwYCvHuBRE7rWO3z1/lNcBtPDpLS1AWq
	DL6Y0YmuAxZnTYlWgY719hhIWgr5GO/UWwdsjZ6baWZsNiUyYvO7umwNMNoWAIoklxQluFcZ51eSL
	OwfSVgdOWylJ3Mw90Wjx9CNNGB6O/eI/S5QnttgfSPyTz1mbIwx+wo0PO/BTOjDBXYc/NMLSQgL7G
	Zul2l+MfYnyQmXac6kql3ED3Jeam1Sp1rSid5+IQOOMmqXeUtyHZURsNt70M6XpwX4v6SIykz27i6
	A/0x8tvwPfSHLWxxOBtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bll-00000005Jnm-2413;
	Thu, 25 Sep 2025 02:31:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1blj-00000005Jn6-0Tlp
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:31:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0QWlu016436
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:31:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=D3nYnV6I3tQHUFYA7g+3qAT/
	UOlfwsLFTqadtUtQzK4=; b=geaGq1vODBz5/agzHiMLsyIDN1ZxM5VUKarGnTn+
	QYI6tCoiqFePkJSaYP+k5LERIL9k8IXUAVCKhyB1KRg1ToHZDuIGOrOn87YECWVy
	MQgjrs47ryVBq72k2k42Ufb5lzuNMwk9DejzWCydJ5k/VZt+koF3zqn6mdDpeJtA
	XjV14NRbsa9CgbakbfuosL6DtdET/Sb7ydx5nLfF6/NqEvqG/92skMDgUsf1Qhrh
	rFjAOH0U0EQ1girD5hYc4WedoDSxJFela6zb4QiJLDFgts2k/MrBtku5q0M5Yvqq
	uB2gB3Ssn0dsNdGxO39Iv1TNkLqBOKnWX3yVbJ1cob55uQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyj975-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:31:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d59a4c23a3so13150991cf.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:31:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767497; x=1759372297;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D3nYnV6I3tQHUFYA7g+3qAT/UOlfwsLFTqadtUtQzK4=;
        b=ooZB7My6ozafw8kZ71VsHlchmFd4iU1diyeOS5GEdzBcnb4QHC47GSy0/1c7EayQPc
         IVcCjWN0d3HpeKDN2aw48NxI3fviqhiuPkZQYjpXuOhgLjLItY3AI5WMtneH24YF9yIH
         jVP8e0ynjfji91BeYJvv9lV9DSA9iO3plE7kGSiivEvlRdlgwg13sGubw2ApzERgMJNm
         C84fz5Yh9USaXRFFBGenwbwLWlsbmHN1Jkl0CiwLK3c+MKLjf0is1XkyT+RJcbNfaRff
         TW41d9TvB+QvDyM5SJgBrrAc+X8LQK7EKQyX4zvjLtLdXtDvpgFNNlDyAWB3wBvoKv2s
         X7jA==
X-Forwarded-Encrypted: i=1; AJvYcCXe5ZBT/GsuDZhSwMsfUSjjOg+olBxDTYs/6cnEE2q8rNmpqYdng0H9h35pCng1jYxSy54X1cnYOPc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1NDndBbm1bRTHO89nghKcz13o50P6xScL8jaNE1PtFdtOKl5B
	t/Icy8UWm63rZ9l0/BGXLlQrQAkedzJRBcAzuGKlatGKdnXm9o0tSlxkmqu1abXZQGSOGakU0WQ
	z6bgiepvIW7slQm1gIlsyH61+LuFwl5p33wjeYyLsIhqaooTIwNK8eAw8oagDKrEeczyE
X-Gm-Gg: ASbGnctJq4IOhdXSr+hZ6Vw1G1X2QhFi9jzp96boSfhFtzPTUoOBJbGM2UDHtTcTfiW
	diu1GwNqY5YinB/gkkkcBpAqtJJnhEsOH8JkgRDugH4Gwnbc0vCxppXRNJnF89NBWTVqDXi5jLP
	8hU9U1b+TuAb4XvRrMAuLDilyJrm7D1Slm21uRHq8zgKtX+gHRXxrlixbcAUGN13luIermZpBFY
	Ltyld9PGltv2a0vc8fVDzGoZtfAH2oi+EzYB4xfl9IHjjtKXoLW4TWN+xI3X7gHiz4a43CU5Ttw
	id4NCiwvVTD4XTEfv2xaI1j8ZRUq+0Ky4LllHVg5FlvoA0M7R5xwtnxxy6IF/ksTxX8W5AIiSws
	6eTTzwFquoxLWgO4X+rQyZqryMkz7zrixbPp4EJs7jLMyhzBPgrxr
X-Received: by 2002:a05:622a:28b:b0:4cf:1f63:e0d7 with SMTP id d75a77b69052e-4da4d8e137cmr27710591cf.81.1758767497309;
        Wed, 24 Sep 2025 19:31:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEvoHvlnh9KHRZr3AgHqArgHyeDWrmzl2oYp0o4JenqL8v9CmviTgtlWMTnrGZUhqt1jjqQA==
X-Received: by 2002:a05:622a:28b:b0:4cf:1f63:e0d7 with SMTP id d75a77b69052e-4da4d8e137cmr27710291cf.81.1758767496803;
        Wed, 24 Sep 2025 19:31:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316a32638sm240397e87.118.2025.09.24.19.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:31:35 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:31:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH 6/6] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <zl6tq3prervuiapz5ekd5sxfzo7injnanpyfvxz2vn35fkb4kh@25zejng3n7k3>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-6-5fb59e398b83@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250924-knp-pcie-v1-6-5fb59e398b83@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d4a98a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lYzJZiZmsC8Xh2LukrIA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: t26XhK0oY9ZtkDvtu9Kxena_o6nrLfIE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfXwf39N7bggD80
 9jKJ4VE0T/fWqWyhv1o0qRfH2j9xNfxEHT4cycj5POVhgd5VN3Jt3uQ1EF7eXrCJdJFq+9WvvIS
 NynN6rmJ3Lx8yhJrxdjWsgx9cdxRLyq4DuMMklKJiVUaiE+zr2XVeq1PgzjIbxJdXw8APK9UZQC
 yiYsW946YPDOpmcWXQFYVfShXugyrrVNCnV1YGMY3svqibsyxJ10BYGzusnjPLGm9F8zgKmre7b
 WH3IUtHueann+Qxj67NnukKphwp130nbTl2WsKn8T8AzQtjKSKkZ0GFNjaTvZ4kAs/bKEDMm2CF
 Fg/xTW9DCXiMiBqvyO8KgFGeKm8TYN4GeZyi0hFGpPuIK3aKriWZOxoS+TOlzCDtkeMYDjgj2YZ
 iLLaCHy5
X-Proofpoint-ORIG-GUID: t26XhK0oY9ZtkDvtu9Kxena_o6nrLfIE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_193139_159340_08F7A19C 
X-CRM114-Status: GOOD (  16.58  )
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

On Wed, Sep 24, 2025 at 04:33:22PM -0700, Jingyi Wang wrote:
> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Add QMP PCIe PHY support for the Kaanapali platform.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
>  1 file changed, 194 insertions(+)
> 
> @@ -5276,6 +5467,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
>  		.data = &qmp_v6_gen4x4_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> +		.data = &qmp_v8_gen3x2_pciephy_cfg,

This list is expected to be sorted.

>  	},
>  	{ },
>  };
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
