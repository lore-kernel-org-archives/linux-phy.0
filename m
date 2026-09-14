Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80A38C88E77
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 14:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lu4um+owQEMUyzaBo8u7gbDHGoy+iyHnyQLb8JJO7zE=; b=ouFiduQgINhhdS
	hG48IzgSx/BfjaQD37TjcEGNNq3O9qOP3+Ts12UGqMNSyjbFmTpsaaHCJBakNfj8dW4QVRt/EUcXP
	Bgvpuy+bfdUjt+Dm0IrODZnLMxseIA0vD4uvRpn75EiLnyGLKURgkqEUyEvHcm7W7ELxefUeOXbvg
	/0fMuF+y7L3zTeUYo1pvndEH8TIqiO4GaASEqN/dXcVoDbpsguVhhTLeUzxhNlkPozyNX+mlxc6Zb
	Ub7IVzzH08SdUmqTDpYxjzzWRD3UJBxN/MIt3Yaq3qj0mM/bTFAGgHhrxQrmAO6GlpjnkCHqpu9K8
	fhZ6BTl/juMBkhyfDJiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67HC-00000003uT1-0MT3;
	Mon, 14 Sep 2026 14:03:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67H9-00000003uS2-3pWt
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 14:03:17 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68ED0YCf4091235
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 14:03:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bJLwYSimBgZLHlMCLJs49ctc
	RaD6WjoWxoa1Bx4XulI=; b=YBhRUMTc1WezRos+cEr+2rhnWlYmqXw4Hy9YQP2R
	vaQiwLYmZUZ8Suz0/7BUDm28BYVZD4LtpMKwKYu0jF7ItWIo/5SSG0/LMCErm2oz
	Z7JhAYel1S8oqrf8uKWyIoPqgkNEoeZc/qDpcJGcWgP2OVlqkZVogaybUlB4CP4U
	lMtgTeLyBOoFxOt4V2T5F99G6i+F7XrteMdBre6o66LI3/QILsi79xxDvmZjVA7k
	o5NKQDPG0CVxpb35H7fdzqjKOMF9T9+zJjjzlWo8Am4TWi/SB0rdgwSEuhMa/jxG
	V4d/8e8dU6tv2JZzQHzpF92Fb9aRwr5QOglGBS/fdOpbgQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpcjg1fgp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 14:03:15 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5c664499696so4232640e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 07:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789394594; x=1789999394; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bJLwYSimBgZLHlMCLJs49ctcRaD6WjoWxoa1Bx4XulI=;
        b=dYgmzSZ+rVNAnFkT+73dry7HSRrmG4/dSjYfFb5OkqSmG+FIJGw5t6ZKbuIoovmSZM
         MOyiENiDvyIOpWROEg38D+yAF9dH4JZEUitIejYyH+/NOVgcOaQhTQjt8eN5/q0H/sLF
         yi5NnvLVruKGIORwP2+JAd03utnp0eynuDkgN7vVllO+oDJKIfNpIJsR21opZleuU5SD
         2fakn7iQhSdMM4zcLE8+ItIPdpp6xRKfw7f72iAVcDVsp68hqMrtYQbn/IJ5/X7o8w2c
         oOJTXkjve0J993VEQqSSmZ7AzO77iBdedSFQKGqsJ+hKCJ8Y3SYO+ezFol5bOpM/Vrv6
         AsPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789394594; x=1789999394;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bJLwYSimBgZLHlMCLJs49ctcRaD6WjoWxoa1Bx4XulI=;
        b=mSPeiTJm1wFdBFESOFvf+s3DY1c69RfUGmu4v+tb1eN2NT3pnLTOUOGYygKxWoR41u
         2g51r97qqQCL+6aDaYbOUeTOjhD5fHWfmxWJofZnmLbvk/Iuu0EBbWbYpOtXM0bn6QgI
         3KLi+hl9FjWfk35vHbO5mfyHxefbZ2FGqwKP/t8HhHEXhboZQXN70X8SJX9E5Ef+U7Q9
         +UkLbn2UrjU41yPaR3QMJi5zHu+6HrxzefNzLGviArAIwiiZmKub66fxISp9+wFxmkP/
         /KjYO5hvj2rpBAH7wZ7Z8u+GUZPzxR2trhbOWikgqxwWXmiAwaJ/HaFPi/dnAEBlTpY4
         qNsQ==
X-Forwarded-Encrypted: i=1; AKwUvBywAQCp+jC7HUmcABFlgMThhxXYrvR2eiy7RhdhcDdCkLl2VkNDDA1sTPsrBPOjwn1reOFmfOmOjjs=@lists.infradead.org
X-Gm-Message-State: AFuF++lAlK8dzi/Gpq2qbXIG9kLXUvRExBUzP20bP7UVCVMSy9lNWreQ
	AXadmrHETg3+Ny589WbasOHwD2gvejWwvPxh6d9LTsy/+Qu2BkCxC8Q/PeQQsKOTma3qj/uGAA3
	877GkHzCrZG6qm1qafjUDFYOVsmuSXBzCt8f94RSuTlj9hAhkNRwigvVbxBusKZCE3lB1
X-Gm-Gg: AYBFou1ZW1C5Lwzi1xNQYwx0Knopqb5wGhkgdEDiiNZNkuVRJPDZp7Prkq8Zipu4lFt
	g+EvVKtycl/q8vyRB2rUiBM9BdJlXtyPalkjcDX8KzoKBUyRmfPwLIPhhBKLEma3Eida8AIopKk
	TYozVyH2kFcx8cmLmyoBp1sa5fxFTvVZAdeFfqXxt1HUBEg9dA9Cb42kD9T+Q1Pfy2wGkJS0Niu
	xwZ2C7RAJ9j1jdtMqHHprBNRtl0nhS+8E+ytU0SFCJ1fmCWdAt1m1iv7k5y/6NvMx97u3cHi9QE
	ZN2O7d7CNZpLSZ5EcL7Fkf7jCQ/E4mUlj005gmiTDt9R3uPva39yhkglZBOJ1yIxGcG1iJZkmhE
	NOunlzJM1I7KhTRI=
X-Received: by 2002:a05:6122:1055:b0:5c7:c898:9817 with SMTP id 71dfb90a1353d-5c974bbfa09mr1904890e0c.7.1789394594159;
        Mon, 14 Sep 2026 07:03:14 -0700 (PDT)
X-Received: by 2002:a05:6122:1055:b0:5c7:c898:9817 with SMTP id 71dfb90a1353d-5c974bbfa09mr1904778e0c.7.1789394593473;
        Mon, 14 Sep 2026 07:03:13 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-486eb3602eesm25999064f8f.34.2026.09.14.07.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2026 07:03:12 -0700 (PDT)
Date: Mon, 14 Sep 2026 17:03:10 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH 5/5] phy: qcom-qmp-ufs: Add Glymur support
Message-ID: <bhwywy2ldrpwff4wxi3slisbggqt74pqz523ksanusssmpfvbn@ht7pp3fafw6p>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
 <20260911-glymur_ufs_qcb_enablement-v1-5-b9fc5e2ee99a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-glymur_ufs_qcb_enablement-v1-5-b9fc5e2ee99a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=CKa/zhrD c=1 sm=1 tr=0 ts=6aa7fea3 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=po8fGBi+ks8MzcVQGuqtFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=l9x3Jx16obnCIVmqrg4A:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-ORIG-GUID: e6APpncZDBkSTckOpXSlOYSwCoVQ0z_E
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDIwMCBTYWx0ZWRfX477CQFItr4EX
 U9Pog9l7ha9kXNQtE4cQ6faAOxHsOOgsGrPyC+SXBBjdrsG3KtX9ceHbwOUfPJJcYXObPsWW33c
 4GDAh0AVNsuwQPPjPsFCfnk9OVsC8Bs=
X-Proofpoint-GUID: e6APpncZDBkSTckOpXSlOYSwCoVQ0z_E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDIwMCBTYWx0ZWRfX77eO4LlgytaF
 +2lp2jHLGKWG+eA6+oK7tEeu1zsaUcS924KkGMh+tEdvdABRizHWBceBQJOXmBsCExd+RHNMZHZ
 e6JCNhmevRHjBsuG/Ze/8904yymq4DFDwSHgAWNJnkKQUO165eNXQ0zrYH05+f+n8Sz7zXqO914
 Doj5PfOIsvAwoNQKtwzjE5yr7wNCkFJAOFTJOI9C7xmgGifvDQyZHECcj6M6WlZupy6AVskrPRq
 F3OXtvDwf9MzwDY+wsDn2+bOQNA5hnIh71Zk6Zj/pPBSoWAQr9TnKsJmhldoqwk7fgDCaW/oWO3
 5na24SSjnUKPtqyJ8X1JwcpzBNz2gNakxREL175qaEmBDzkZ03ZFIqi/4f3oqfTY5R5DXqPpCmG
 q7gtebwtIBO97/g1BhvAFDIjF1Xo3VfcaxYZLhP4sMk3b0662YN+RFCOrEQvJDQVY44C4+70rZb
 FktHBrgrOemngvnXTAQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-14_03,2026-09-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609140200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_070315_958306_31D4BDE7 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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

On 26-09-11 22:17:09, Pradeep P V K wrote:
> Add the init sequence tables and config for the UFS QMP phy found in
> the Glymur SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
