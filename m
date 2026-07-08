Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1396AC43602
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 13:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exrYRSSxNbGkqBuYqt42G9W+jydYqbpfGSGF2h6Dy9E=; b=KARhw2PLjJNbML
	BJpG6Bgf6iZfXGSOf2ZebV91fk7+a2j4ykf8yfZhddvb56BQjfWGyRJzuT3v6aaI7lSKtEgOqlYFO
	SRKld6i49ZCFd0NNDDkRJPsgkEPuqoIDQdGXNZtqAIz/fgLYTgHZWL3CQiF6bswUsPr9r0ggrmxm6
	/s+sisBusUgGjdCMadAHlHRcouToTOxVwsdxH75CAVd8ifLRYoelxpgVJ9lsMYGLCUCifzTF2IzVT
	NsTFmHkdgJSDLSS1W1fS/kcCltX+8r90dErAWAUn5PI+KdGKH2ihavLh8tKfHqgK2/EC/p9cLplvW
	/bnT4bt0P3wXCuTD3Cew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whS3H-0000000HApM-2LDr;
	Wed, 08 Jul 2026 13:10:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whS3E-0000000HAoy-2pMr
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 13:10:58 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3VEg2617352
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 13:10:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VitBXPuDKN2bJBrIHBwNqn8i
	E6+VSQBCBJkCh1O1kvw=; b=i0qmUbPQhK3LGktUywGpZxjxz40cjrgu4Vj+Mqdg
	C9JliogfLkFrrfQd6zD/clJuAx+a48zYKqrXiSm0B09AjMqYg/ZHPswZYNGvU6Qd
	7fwuKoMwpm+PTF9BxvGvT61XS82lwBQdeW1RcqQ/b2WOErTc+J3FgJr9EC+IA/yZ
	Og0C+McIl21tJEf027E9Qe9qHFKsQkmdsMT/DSNr0iUHm2TXX3/0rwDgreoILT9C
	8UrbqTiGoVpb3j0opT/pm/Rq/OvtmWAdzcoown46MqZYtE1mRsR0pDdWE7suQldL
	lB+ai2QZvm1pG9oAU9RjsiDqYXMkMS7LxtciKibmlgqZwg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9gqw9mnd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 13:10:56 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-73850dfc198so166736137.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 06:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783516255; x=1784121055; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VitBXPuDKN2bJBrIHBwNqn8iE6+VSQBCBJkCh1O1kvw=;
        b=MRZSZd8Hh0fRodSJ7vhbAXppzgYyjvnO0tGUxINSTL1DnfiqWIIa2u7Cv+JGWinSSJ
         SggL0DU7ZT0yklEJelYKdxlr13G1vdSBxMp1mU26NHwO/CfwCRK60r6/L+YlN+tqWez9
         dvNcMPliR8DgD+rEvemvkfJIf5643v/XdKzatV05kzegh0mjOSIZRZbjtYLEii70JGnO
         BQkC+Y3PSbb9K+ZTlabULtvFhuRw8DfXSTQfLg6tdJFiOOKfL/kt6ToYnnaJMy2DC6+o
         wvICJUF+gOQvHdBLRxfs+sj7xxTEsNp/UbGfdZwWgdEpykDF2UC1dhHr1wLYmsFD613x
         Zkfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783516255; x=1784121055;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VitBXPuDKN2bJBrIHBwNqn8iE6+VSQBCBJkCh1O1kvw=;
        b=JeSp0pqLFdU+6ga3ceqv7kNijVkLRQQlL4Phwx04hWa2RfqyAJhWBngvcFB49LW9h7
         7mUJGjeusI244t+v9smk5lfMMB/sQ1qspnXx5rkqTSBHwmj3yBoKjALG7RhOWgxh8TlE
         /CPHBpGQCYAon2E5Tnd3SCHGT8Wp1+BKl3P0PjlpGU+sLeBwR5oc7kdDN2Wgu7mo4K1Z
         1CpQU0Xjrg0tvg/HOHjApAWYkRmxoAM1eq/e3wwehtS/tqEvQIYhwzUBAB3uelhvA/XZ
         24a2P3LTyon8Nbseab4sKFY/BjKiAtYUVjTQgM4eLfJ1w4OQGa7xg7gu0iTu/vIwCMwo
         359w==
X-Forwarded-Encrypted: i=1; AHgh+RqXIgtAfS8CKI6bMOujHw5opENYFhNIB/L5YI6n5XEMFjy3ATXh93LGb5v2WL5rThA1T6QM8vxQ9cw=@lists.infradead.org
X-Gm-Message-State: AOJu0YymnAz2EFrJgMJ2LzTeqLd0mbh7ZGaR4F+fWNUUpYpEcEWeBch0
	4TWdk4bkNBcTLgBmDRz6lofzYVDOLPaAa04Jbm7/txjryH+KFvRQ0n217QYii4UWYpQ89Y7hAvS
	DdvOZZpfVfWFuqoOOF+Soy8/x8CLnuOznurgctaN5l10rKtmOFpiX40HGttBr8nWMO+aU
X-Gm-Gg: AfdE7ckHMwHaVmfRoV+Cg/a1sbc18No0jtneXLVJABJ0oianAMG1oJnfEY5RxedvMq3
	oxnOIFY28PFisyiM92ALj5v7UBWDSfLBMnZhJ/qAdp7YysF3O64DQJXN6DYcODdnwM9fFi7JawX
	WyFrMETivbAf5pgQVmBVtVGwk0vPPNg1jyPPLbmKUe7pPU6iFvS/jwX1N2JBgT0qbUQNXrz84E+
	rcEl+ZAT56MhDW5QjcP0tfVvevEspijkypXfsVdw5W5iQu59zScJ2o6UzKRkZP8xxGF7zPw3flT
	YUH7s3mGJPBPX8DdVrU/YGyjdPud/DkBQLmdSuA4yakkzcV6OG3Nqt2/9UpxZTH0B+cCqR86pH0
	5l6uS/jSg3X2GW6KYoyEOKnxoHiBO72vCxm1Ggtc0+tNL4JEWki8FDKb5a5dzm2FOiEEYZRdtKR
	Vx7NBzt8nqgqZCFKcECbgxDVU2
X-Received: by 2002:a05:6102:8081:b0:737:80f0:7887 with SMTP id ada2fe7eead31-744dfcb32f5mr1057924137.8.1783516254687;
        Wed, 08 Jul 2026 06:10:54 -0700 (PDT)
X-Received: by 2002:a05:6102:8081:b0:737:80f0:7887 with SMTP id ada2fe7eead31-744dfcb32f5mr1057905137.8.1783516254115;
        Wed, 08 Jul 2026 06:10:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39b4adf5e87sm29799821fa.22.2026.07.08.06.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 06:10:52 -0700 (PDT)
Date: Wed, 8 Jul 2026 16:10:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Matthew Leung <matthew.leung@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] phy: qcom-qmp: Add v10 register offsets
Message-ID: <5syxe7ckrzb4bytvhnvifqbo5owxtkko5i2mdukiopg56igsju@i4at74a6mart>
References: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
 <20260707-hawi-phy-pcie-v4-2-8d9cc6324947@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707-hawi-phy-pcie-v4-2-8d9cc6324947@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDEyNyBTYWx0ZWRfX/e9KLVu+1F1q
 2bduvhETYMSWFQ1JneOWWyBGHzonbbnxioO/02XFOBai9fvbrqQLxfZJoTCPqAqtAdQC3jfCsTV
 6TScmRV8FELW3M4VbGsMXanGEylRd9QAtAL1CItsNmm+mzoLOOkUnL1Wjg3B5tlWwmRtAYO9k8+
 DWt+jf0D9ScqZML1GnaS2uH0JPXNk4p1zo75eFuYs4Zi0J10HW7DXdZqZlrFWKXcMwvqMGiEn5q
 2XHOfu2qgLPlVAulhbtgYCS9XVfvYnjzkMp6075iQHgHjmpRML09ox/8oka2Rldtm+CSjyRy2vu
 ZIHx79T+Ji4KVm3Tcd3QlGK1vcEeTu/XEJqm6CPzjEWO3dXadbfhyG4aJzVmS9ljvauqaZdup5n
 DN3MN4GOkN9rq8BrbDUD35yU8SQ9apzkyQLDt4WlsvOf1Igv5NhTrqvFpKa2QMHC+u9eUenZiMu
 stX66PKlGdVEAacKNjA==
X-Proofpoint-GUID: 4VETY9gO5gouh-1ooflayd7dvtS27wz4
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDEyNyBTYWx0ZWRfX/inSDfSiQfVc
 alOJyMhVnKcAoplouE+B5H/X7+Sx5E9U7N/pcKtK54Vy5CLiKAW6naQGMLTz/2ho6P+4at8zOoD
 MdneI0PAYmujSeYRa98EMOO+skTXYyM=
X-Proofpoint-ORIG-GUID: 4VETY9gO5gouh-1ooflayd7dvtS27wz4
X-Authority-Analysis: v=2.4 cv=Wf88rUhX c=1 sm=1 tr=0 ts=6a4e4c60 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=_DP_PzDrpJ8qHd2sDw8A:9 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 bulkscore=0 impostorscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_061056_765556_327F9A75 
X-CRM114-Status: GOOD (  13.55  )
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

On Tue, Jul 07, 2026 at 08:32:47PM +0000, Matthew Leung wrote:
> Hawi SoC uses v10 register definitions for PCIe Gen3 x2. Add the new
> register offset headers for all four sub-blocks:
> 
>  - QSERDES-COM offsets
>  - QSERDES TX/RX offsets
>  - PCS offsets
>  - PCS PCIe-specific offsets
> 
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |  1 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h   | 18 ++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h        | 22 ++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    | 49 ++++++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   | 47 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  5 +++
>  6 files changed, 142 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
