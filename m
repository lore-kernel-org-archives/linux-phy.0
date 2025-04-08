Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E02E1C369A4
	for <linux-phy@archiver.kernel.org>; Tue,  8 Apr 2025 14:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sgy0OZyvi78/by/9pLGVCKDWTJ0qezDTODMA50u8/Xs=; b=Wcts0geC/u+Zuf
	tslvB3YabtHnpiJ2ureHHKdwFfCRKZCHw+baoLj/Ej7pM46R4ZpQnqNJzzO6Vu1dyQb1a9bFZqlpj
	DiWqhaHJfmRvrK930mBkP6m55UHUnm2phWWnqCfyBXlNy6qXgbg5S9b03OZJ+I6DVAEUtQp7+niG1
	SxPHKtyaH3mXAmGFKVDBD8oy6rvuQMKRx530V+QdQSmnvIEgHtUpq6Mv3cD1/v4A2IbeATabByJcG
	NrbUo0wCNKs9DdbJfJ22zsIhS35RgACJW9LyLC01tnwlAxczy9TpqHfOHmmQdYm0ifZk/H3c03Dld
	LQ6zoFWsbB5muU8gg2mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u29vW-00000004NVz-2kXI;
	Tue, 08 Apr 2025 14:27:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u27mx-00000003wyo-2PcR
	for linux-phy@lists.infradead.org;
	Tue, 08 Apr 2025 12:10:48 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 538Aj8iT008077
	for <linux-phy@lists.infradead.org>; Tue, 8 Apr 2025 12:10:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b73v37AOsmYqy5TlU6/p8jee
	10512NLdo4MzBxNAfFM=; b=IQa2Zo5LAEndXleXQuvgtit4l6XOx15FV4JspfGP
	6vEWjM3Tq/x607ZM+gAEwEOfha6NrpTaGA2l77sWAWIVjyr5tQELn3r37uXGKNPx
	OHkT74WxOXbnx3jcfcsEF1JKmr5Y1sLH426PWmy5HZV8GlCm9920Hpnzu6fpWp3Y
	0b85g1YhdiWDgyGLRHhwBGrFoFIK8onEAUrxRoOPQ4dGuUk292gtR1qfEyNUtsw3
	GpSPx7rMOJM/skBxnpnlSFCXn34sCbeP/G7wzY1CmJdDbNPgk3CrNfYtR14Y99P5
	8MeRbMH5EHj0w5rLP7p7znEmlLs3J+a5JjamM1GHdjdl1w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twtayqjd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Apr 2025 12:10:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5cd0f8961so1160108885a.1
        for <linux-phy@lists.infradead.org>; Tue, 08 Apr 2025 05:10:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744114246; x=1744719046;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b73v37AOsmYqy5TlU6/p8jee10512NLdo4MzBxNAfFM=;
        b=arGmJQTpr4pXSU/J0iufh90mRsWplnQlvoNxq7WgJaKNlxS2WCaT/sCUKH8Twrms4V
         9iXBpRbCQ0y8BL+2sZag5noRaiXFqI4ViQcN36qvM+SpEN7dwS7dBQ3kzmmLly8pRCvQ
         492QwjduaivWThNGCGO4CFw6BDRj2OpvAXGSWQPyaeXibgv+biXESS2iaIGLtIzcputF
         yubgqsemaXGBf6rvfdBCsX5QSXIEBNFJUuFkj9Fgpw2NtrmjCEYdKr1GQoFtEIx/DnAU
         PWuKIAZl0qdwrwAcbzsFqsKJp5QOMXhQ/IstrI4GAInXuXddhCPQq0eladeKdKcKWt87
         LuaA==
X-Forwarded-Encrypted: i=1; AJvYcCX9Gkqdlk8LGq6ksk3GEbOoG/nI953azqlbPivmmN1JDOk/xATDYpZ+E1JkL37sJBhNH+d3cGRXlu0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhxzmxITF1iiIxzpBAICEThtlSnLqpX9o5/zDma1H42xCiNLg2
	OXOsVf2J2eQaSD+1TnR4rK90gFdbEC+z1wBgTfyz6D04cMVVs9hRR251HkYrQ3vPNOFb1hcfRUl
	iArTkOulH7bX4rMzx5nY+hocXvkvA/bQ3KX6UbSkh0z67yV/woY5v/qpUrmwMvPYT
X-Gm-Gg: ASbGncuvpMgv90we6b9MKM4xL4sUcSUWLtz4eJCnVJ0JDRS8EIo76OWB1rkIEfSpPmB
	bbg/IWoBg7C3WlWiDyYPuqf/x/HXOLN+FQX6BsIHtzPwSKjPXVvt2Q+P6dl3k6Rxh+9Qk+cjKIr
	i+ijTPSzFvYhf0IvOLSdefVGZ7fMG41zP+QIS2e+O23TQga928qg7mdkyOJPPxZ/wC+kS6GvpgD
	qK5qKLvJQWzzN00idCIOsyMPoUZLbx5jmwYq9tg0Ug47XzdkvRG+rJ2twKdwunELPWwpJEc1YhH
	q0FtvrE1bcFOVfyxip2QvlmiIci3gYT+v929Lrr7sPG72DZBOcmsY2EGtIFMs1iRF89pZpEz3Mf
	MEnY=
X-Received: by 2002:a05:620a:1994:b0:7c5:4caa:21b6 with SMTP id af79cd13be357-7c775b1d15emr1774329085a.57.1744114245741;
        Tue, 08 Apr 2025 05:10:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqdj19EcF+WMojYfI4PdnZxJbpcMCmvDbz0hh/gURcbOAf793yDXKOJab77a6eCKwniOuYyQ==
X-Received: by 2002:a05:620a:1994:b0:7c5:4caa:21b6 with SMTP id af79cd13be357-7c775b1d15emr1774326785a.57.1744114245474;
        Tue, 08 Apr 2025 05:10:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e5ab9easm1511766e87.38.2025.04.08.05.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 05:10:44 -0700 (PDT)
Date: Tue, 8 Apr 2025 15:10:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qusb2: Update the phy settings for IPQ5424
Message-ID: <3hw324uzu53mskoixqruygeryseqauvuotn5kgyx7jurpxmk2a@zvts7vselb4c>
References: <20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com>
X-Proofpoint-GUID: FuABYzzv-VFHqSaixfe52-BpeL5bzR-4
X-Authority-Analysis: v=2.4 cv=LLlmQIW9 c=1 sm=1 tr=0 ts=67f51247 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=mh-cVgZ5-v770TwZDRMA:9 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: FuABYzzv-VFHqSaixfe52-BpeL5bzR-4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-08_04,2025-04-08_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=901 malwarescore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504080086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_051047_615942_B25B6B85 
X-CRM114-Status: GOOD (  15.03  )
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

On Mon, Apr 07, 2025 at 07:51:17PM +0530, Kathiravan Thirumoorthy wrote:
> Update the phy settings for IPQ5424 to meet compliance requirements.
> The current settings do not meet the requirements, and the design team
> has requested to use the settings used for IPQ6018.
> 
> Revert the commit 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for
> IPQ5424") and reuse the IPQ6018 settings.
> 
> Fixes: 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for IPQ5424")
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +--------------------------
>  1 file changed, 1 insertion(+), 26 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
