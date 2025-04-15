Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4296C369AB
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 10:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzQMtadpfInlOlPpB3OlmdJ2mVWLLORARIZVtPir/GQ=; b=VkT0ovV28g5qcG
	/FavtRxPw09pgsRllJ66znV7LmYpokewDhMNlohX5d959mszqfYVH0nmSwL1F2D1UvB2D2jT9oWGK
	KKZWvkm0PjiBJD+BKzowAs/Fvxt1OyxQx6b7QW5Clk/7uA21OhfuvHnA7EWPW3kx61JuWMgY1iXxo
	S4PZH5wjuIF1SO975+wIcJVVTxwblGKdw0ZbWtBWfrHC8bQu8B+GpQpZsN++04idZKdKsiVUzHli/
	zTTUmBx8I98EC3B4K3NvJ3H2xLWYrpiOiH9nwysvH4UNmNsor20Ag8qI/mwkXI7YMddimhqFcKJ6u
	A6GMnAtmxl4GhYn41UiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4daX-00000005LNO-1Znh;
	Tue, 15 Apr 2025 10:32:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4dUz-00000005KJw-0aX0
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 10:26:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tFAM019613
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 10:26:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8KNMl+h+dY8TN+P2t92AbEQx
	GBdTUq047ce2xAkYaWs=; b=lwPR7RV0H9w31lCgPQHCfO/3zAqgwzJ7FdTwzR3v
	4Il6bqLaGqihXyXpEvf0aSrybbLT7DexWI63wE7NgP/Cb+59VY+9aJiqpEC+rVa7
	Ho6k8xU5DS7m7jxOG1bQYMHlwi1wPtu/xKGK+EIWGiD7+EgvyS1AvyWaUGoY8Vzq
	IBB/4qG2MZUckTGzJsmhMaUwNxTQGTGFivb0fahp1kWrM/jQreraGUAm0ndR4fdI
	ITvf2Ij/H9Xsi/EYHs6FuXUCN4T3NMcH1u5LDXHL849C9kMWJl1sgYLJ98gDTAjh
	5o5UlLrirTNLh9wHg2QtV+BWtPLUzEyEmE4ma87/gfNUgg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhfcyjej-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 10:26:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5f876bfe0so858549385a.3
        for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 03:26:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712795; x=1745317595;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8KNMl+h+dY8TN+P2t92AbEQxGBdTUq047ce2xAkYaWs=;
        b=Z1fERQSiRxYlSIX8XqiD2VGwDbLXq7E06NVMgG98OY2mbP0x9H34yq95PP/peWMMkc
         bMMK3FXCQAu5rl3XEQAN0ivp6oG2pDRleAsaCYnfCSEfpERzSzxvMkJ3RayVUyB6x/22
         9je6tjRRAuxwBt+pQ+87dMiTGWsJ8hDvmIVuwlzz49mMGlCFm2z006ruvuW3CvRta3aI
         qv125meFLLalwbuEOLRQ3wRD+yPc9kzwfjWX6SlM6LkyRaA8qXWozk137MSl68VMbxSK
         tWc5vxZHPUQWqdBpMINs0qBOXU7yzQA/7uHbCM8/fPO+1js4RTydnrihoWxNoyy0l+QF
         O4aw==
X-Forwarded-Encrypted: i=1; AJvYcCV2YriOY9vjpxh6f1fpniWZHPkydTs/G3RIUrf7rmXqz5EHLAgg2VzsJs4XdSYrVRUR46sQkHBauIg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvlX6PLEZXlPLB0emr9FREhvTVNQHxyyNrR0J55RwODwvek84l
	PKI2V3SRCnprJsB/0DiR1CAjF8jVVDU3RYizqEdua/KRM8mrkAEl9JGT8MNDmuHCFC4cH+L0v59
	c0npVr/0htJsI/4UiSJKgTCj1EuEuPOCuUOm732NcP8JlRu8pKCbaYTxsv9lcQiFe
X-Gm-Gg: ASbGncsHXsoG5p0Mi1PZnmcHzkcQ1ocdJaw8vlWQS0n9PBDyoIjI30FA7KHcNLHU/8A
	VbEcc6wR8+N/bdqnykpUKwdW/yxlM1v17jcLs+SHJC7YqxwGxaVooQxIt9sZn04RjvH6KFaF5BY
	5NRsOEPgdlJSubpkGAxfDc/usE4eQRrWf3Ma1PsNpSDJHsl85jeHz7oFcg/xoD8o+fKZBECnj/r
	H2r/WpzcXKaPydmTABAiFrMZi9WUCq7ST0YZULLj2g3ll/+B6+o/GnidZkMMjZHYQDwPV2/nuST
	3ppJgSme3sFR4f/7ssrVXRjMnZ2crWNA1BGq4OMVStsT+ZOjCavYn1XLlPWJz1yk4CEf3e6coO8
	=
X-Received: by 2002:a05:620a:28d5:b0:7c0:a3bd:a78a with SMTP id af79cd13be357-7c7af1f3d4emr2124437985a.41.1744712795099;
        Tue, 15 Apr 2025 03:26:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPAUNy95g+BxEoF3m9T+D1BmAcO0ZWmAE4FI2u67ljC8uUUpC++8Ix1n9dNmZZNjqqGE/GOw==
X-Received: by 2002:a05:620a:28d5:b0:7c0:a3bd:a78a with SMTP id af79cd13be357-7c7af1f3d4emr2124435285a.41.1744712794773;
        Tue, 15 Apr 2025 03:26:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d123137sm1387306e87.40.2025.04.15.03.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:26:33 -0700 (PDT)
Date: Tue, 15 Apr 2025 13:26:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chenyuan Yang <chenyuan0y@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, lumag@kernel.org,
        quic_kriskura@quicinc.com, manivannan.sadhasivam@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_varada@quicinc.com,
        quic_kbajaj@quicinc.com, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
Message-ID: <x2hqk3yabe3ntp4b452tseyuuen76mtttievka7zgjajxxxobb@srrgiu7k6eyp>
References: <20250414125050.2118619-1-chenyuan0y@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250414125050.2118619-1-chenyuan0y@gmail.com>
X-Authority-Analysis: v=2.4 cv=CfUI5Krl c=1 sm=1 tr=0 ts=67fe345c cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vPHRA5kXY3h_Fp5QcTsA:9 a=CjuIK1q_8ugA:10
 a=zgiPjhLxNE0A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: JmU8Gq87ewOjN-QRI1HqE5OPvvWILrKC
X-Proofpoint-ORIG-GUID: JmU8Gq87ewOjN-QRI1HqE5OPvvWILrKC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 mlxlogscore=944 mlxscore=0 clxscore=1015
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_032637_184130_6639CE4F 
X-CRM114-Status: GOOD (  15.72  )
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

On Mon, Apr 14, 2025 at 07:50:50AM -0500, Chenyuan Yang wrote:
> The qmp_usb_iomap() helper function currently returns the raw result of
> devm_ioremap() for non-exclusive mappings. Since devm_ioremap() may return
> a NULL pointer and the caller only checks error pointers with IS_ERR(),
> NULL could bypass the check and lead to an invalid dereference.
> 
> Fix the issue by checking if devm_ioremap() returns NULL. When it does,
> qmp_usb_iomap() now returns an error pointer via IOMEM_ERR_PTR(-ENOMEM),
> ensuring safe and consistent error handling.
> 
> Signed-off-by: Chenyuan Yang <chenyuan0y@gmail.com>
> Fixes: a5d6b1ac56cb ("phy: qcom-qmp-usb: fix memleak on probe deferral")
> CC: Johan Hovold <johan@kernel.org>
> CC: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
