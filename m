Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DAF60A2601
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 16:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Q2ahCuLr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=X6cgC2aE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=iY3sguVl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EjAKcdIEfY34ZtEWLJ2a5Np1QlU7Jh1wyQl1pf/Xy+U=; b=Q2ahCuLrJRJOs8CUbvZBg2P3W4
	dk93YFgk79SAx5m4hrv4RaNtYsROG+QWM/zuOhmPYeoo2yDnpWO2WBW+ZQ5cDsZLC+Fa7sos5NLT9
	YSAmeMNxWc5aDaKmFKOrmUY74hIpNbyjAf51Q5HesTnwbETWmEy5Qu59czw4GrqopY52Z+xG+gCCs
	fJOywfoD+P+W4TBdnTqtCnS5R/p+Lr5K2BwrYaA6TSLDvRAJLui2ii0tk1EbzLhCx/L76xnSvC1Tc
	t5NOBMFUXmlOAjYAjTK+LBF55X3Av4ksJxjBznDFf5TmpIfwxMxnyaa0LxbhaYcYYKnO4INGPIYR/
	gg3QFVTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMpP4-0000000C7mX-3K3u;
	Fri, 30 Oct 2026 16:24:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMpP2-0000000C7li-3GhB
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 16:24:30 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UERnAU1953686
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 16:24:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zQNtNZSFKk3b1SWHuvIukuDR
	ed4VUjqAkVFuTv8R5y0=; b=X6cgC2aEw3qwS3NdtWihL8QzyMn2L8/mSGdLn/8D
	K460qPW/SzZUlis7dBQMJSo2iH5V0JJ0lMiDLhaLqobt6vnie36xl2fteL6PLTZI
	oeQ04Ae20A9D9ATLiZpiNzapkzr6LRddvIScWEKka6BUNyj1IXREsTjmFpxSj/Md
	R00AfQ7Dp/T7rdlpoNqcQNNlpXPvB5NAWqq+95ZygVHAHqUqrTh6ILtxxvh7jr0k
	Ek8ytWvJweHCv9Py6hyGos/fESErIrCI7Mcaml/ioMljj8A2Q2lJauue0F1KwZ9W
	AYeXVc5y05xvKAGZDNqMar1vWEvF4qNNgXnMB/jujgfsig==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6pkyyb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 16:24:27 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7bf08dc2fc8so177559137.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 09:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793377466; x=1793982266; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zQNtNZSFKk3b1SWHuvIukuDRed4VUjqAkVFuTv8R5y0=;
        b=iY3sguVli9BTlaHfhQ3vSRpkcvrGSrr4ZKhR/JJfQiyKaTsGtjKYRX78aiRLm74Hrp
         SHsegAvGXx6rXnO3KdgJAn3x15GApTLJD1ZvFBSGfPOGpTizp0NdfjFKy+j3jD9f6hMe
         0ff7q/ElRJ8KG1k0PfdLhI0JtSs+oSdJC5WMJsa/0KZfwgyMN+OLQGB81E/Jea/gOrDU
         ZIgqfVuguoX88cq5f0JwqmhBPpnCIot1DKTZz688IgxYz90fVsYtPPAZ6z3eV22tdG6s
         GHTlCfa1L6IVKiK8siaMICbaCGfV336Xt2hpr35cMRzUTKs1o58wM1mwTj6D4JoIHuqy
         abiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793377466; x=1793982266;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zQNtNZSFKk3b1SWHuvIukuDRed4VUjqAkVFuTv8R5y0=;
        b=nZzs7p0FipI6YyxNMwWu8OxhUtvCnWtEFei/hHsUUeOFlgNg6zYPR9hHeEAV6IjZV4
         eIjolbZSJYp6NwTWXHncDDfVoF4/HG9Xfnn3BeAK+JuRb7a1sb7tipSt/wfHImEKgtwj
         J4fWyWNddrr3khwo90ACsMdS0ngDI7P5nQ5+NlfFJoYARAmqxaw4HnX0NRiIpgNChyPn
         GNcs+Nvs9/pDJSUuCvaX7pkECgrZCW3M/fzc93H7XOb62jL7pEUHOmjUQSIel1QnDK4E
         hRHnCr5EPVW4xGv4kJOe+yDRNWTmsQWJ3YiVDC0MW2OEoeH1ZzZVS7mJB++jputzOAuY
         6yEQ==
X-Forwarded-Encrypted: i=1; AKwUvBwFnVc12weXn2yp9vUPVqAfC9hH1I5+E5oxqlngyisQmsbodCuavFWNFEhUQtcoTvAUFAGZpLTQJgM=@lists.infradead.org
X-Gm-Message-State: AFq9FYL9dgz+vRMhAdH7/LH7vpEvxb79sO6H8Aso16/KVDDcWR3nQaOn
	ayA9PwHFMlgr6lMMOQsJwMvI9DAesHlt2Zru2hXnepBEg4NuuWemKzkkRc58UlMSonxveqR9BL7
	zv+7cHxJRHK9eceocNIHXJyw7O4zBEeoSMOVhPnhNGTlz8bIeOYFV0Tdluzk5tk7B02zF
X-Gm-Gg: AYBFou0JqPQezLOL7RnbQLUHb9fuk/7+8EsvAU36Vo6POROI09ZxpfjfkVDxSV69lXA
	jmEyjJqs3xacXnP+pjx6W7UQSTOSW922YiLT8rlRvo10aeBoq4hO2nqjhNln2hELEnVwaI3IniR
	ZR4X4aooEbk1cyi+zpjZl+cjENor/U46OP4rlmj0kotyrGfRJsJWZR79pYM0nI8PBrydWGnX5Ah
	hKqzauacB4Rqu3QYfwayuLQ6P6cWhgYdlOuxugcfYKPMg6AHTur3uHX1dxoPdhntHZSj4CekAIl
	JDoumLn8uEK1xZ1oMWQiUkLkh7yLfQFoNwJLSl1gOhPgBps2Plf//ekeS9X7fSkkh4MwMqXeER1
	XcU83joGqPby8XpNUADK2B7f9P5zMVghZZu64AN9M/EAVlj2DQl/dkIrlCMw+hmko
X-Received: by 2002:a67:e712:0:b0:7c2:635a:4f4b with SMTP id ada2fe7eead31-7d072d173bamr1335642137.29.1793377465998;
        Fri, 30 Oct 2026 09:24:25 -0700 (PDT)
X-Received: by 2002:a67:e712:0:b0:7c2:635a:4f4b with SMTP id ada2fe7eead31-7d072d173bamr1335628137.29.1793377465369;
        Fri, 30 Oct 2026 09:24:25 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.77])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b789ecsm3950768f8f.29.2026.10.30.09.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 09:24:24 -0700 (PDT)
Date: Fri, 30 Oct 2026 18:24:23 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Tapas Rana <tapas.rana@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: update offsets table for
 x1e80100
Message-ID: <sem3sj673ju7rbytssvy3raqbo3gv25m6nx3pspj6hbegjbtjk@kcpv4wr3uc3d>
References: <20261030105515.1948430-1-tapas.rana@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261030105515.1948430-1-tapas.rana@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA2NSBTYWx0ZWRfX1KLz2C1hOue6
 IP6BybDwEuUqg0OI6EzJiIjShpbxtwtVO7b393kHVOyw7oP8TtUFbOOjslIrREGM66jp1Aml1R6
 tvxnDn78DjFWj8qzbgHioxmUwWkW9BesfRHMts9LLq4Potjt6HVSm/pU7qgX6C21rimTB6F9JLs
 BOGZpBzXS5E3F62bHHDrXjvznkfkCRTlkZlKXMNoCfY/CNCsbjoCRDA2p1SPcSKSTVV7K8mPeAI
 dlmEbZBIXjecwLlFc0Dj1uZeh2tEIPb+2Rl0hDrvk7NHeMjd8Vg20hdUu592hKwSO22p4lTsZcl
 zJEfBUlE4h4aRrUu4cH3uNtTLFgJ2UvvmXB1rrL2evlNyOzIgnKGHrHhqImNN3KMUmPCZKSXF9q
 sMpnbJ9jg2fz4uJmvBPIPjpREYM4fr1w76qO1ckVr1Br/HJhtEMbiJmAQxn2vJYQvvIQ2Oj1e6Z
 9kmF6XLf5UHaxla+DIA==
X-Proofpoint-ORIG-GUID: Qb2nmuQ6GS6UkADXLJT-mutEwp7ZrqTd
X-Proofpoint-GUID: Qb2nmuQ6GS6UkADXLJT-mutEwp7ZrqTd
X-Authority-Analysis: v=2.4 cv=AJ83otAg c=1 sm=1 tr=0 ts=6ae4c4bb cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=asF+/XNaGoxFafzDDLC1GQ==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=0BQXEinDYilFB-d34WMA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA2NSBTYWx0ZWRfXxQXv2jCMaZAP
 ZaPj6fowS8RMy6LyDFhJzSycydlKUSzsX5o74JiUt7oEROINW/JsknuCNpjeWMUxXt4BJfpXdXO
 DqADyvhqPx1XX3TniPiPdcz/XSfjRsA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610300065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_092428_824273_642A67D5 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-30 16:24:24, Tapas Rana wrote:
> x1e80100_usb3dpphy_cfg uses qmp_v6_n4_usb3phy_regs_layout, which
> places QPHY_PCS_CLAMP_ENABLE in the PCS_AON register space. However,
> it uses qmp_combo_offsets_v5 currently, which does not define the
> usb3_pcs_aon region. As a result, qmp->pcs_aon is not mapped and
> autonomous mode falls back to pcs_misc for clamp control.
> 
> Add a dedicated USB3+DP V6 offsets table with usb3_pcs_aon included
> and use it for x1e80100_usb3dpphy_cfg so clamp control is performed
> through the correct PCS_AON register space.
> 
> Signed-off-by: Tapas Rana <tapas.rana@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
