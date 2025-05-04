Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21834C369DC
	for <linux-phy@archiver.kernel.org>; Sun,  4 May 2025 15:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShLa7ekSev0eKg/PaHjBiv8fRM25o3cQGuln51HNv+w=; b=eC4MUTrg7xsdcG
	aQ9sUIsWD2FXcf882t0XYf5YjiAwAu5/qnR5aOy9MtoCnsE180NI7jmVjqoeJXN81hd7CFq44l7FH
	2aboqE3ebIV06ahFqcetdWJpBwa5gTsf95vBgUqdOATLERexnVfO5GKVzc0nYjUA7lGEp41ueCwUQ
	ERITyPGzB/+oWacapsETNHdpJY/AX5fzdRubb3B69wQ2ER2GgkUXdvaYVg7yqwJ0YB7/wnn5KdYZ+
	fWcf4BqCq2ek1hZT8ulmaA0yVESj4YjEqVReytCoh6n2euT5MshpQoLasKU7dIiqHPx24c4gPtXxP
	6e4EmJgIADXt24T3wv2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbhv-00000005Zxf-34Ya;
	Sun, 04 May 2025 15:56:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbht-00000005Zwr-1PTQ
	for linux-phy@lists.infradead.org;
	Sun, 04 May 2025 15:56:46 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544AMMXB026329
	for <linux-phy@lists.infradead.org>; Sun, 4 May 2025 15:56:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fU7EPeiJhp/W6CddOsK+6Ixi
	fqtfkJGM4QHGsWZLeEI=; b=WSziVuPNpJ3zezhWR4Lq8u80nMe0L9Mn94da4JgH
	gMv4OLRdHdkmx/uqaifOcb6KK9tLXRFEiI91Gc7mtHbG+Hj4MrZrAUMx+huA2wtk
	EJFZwFpoYa6PWbksPWfOSXWL3JmJrJzFqSM7mVwmvWpbGM/1Y0HnBgkHNCcIhEy2
	xIfoNMLF6gWGGkHvnJx/T9YZ0UsF2gmXwPRsNUFdAy6tvNysRBnn6uyQ6Y8mxbTx
	moTHuxGMGmjtpqvkhdfbqcbexET7R1hWvS/TdfJYH9WY3GQLvizrED4Yv/F5B+R0
	Gl9zTtrODHinAi9YgC16ayGYN8z5N8Lv+5ihEooqFOmUuA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbwfj2rm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 15:56:43 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47ae8b206a4so70437251cf.0
        for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 08:56:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746374202; x=1746979002;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fU7EPeiJhp/W6CddOsK+6IxifqtfkJGM4QHGsWZLeEI=;
        b=H6z6MOhBSdVi0LVSRpTKJJWmK90993nCAolOdiSaIHcHE9lHwBozWfZU3K+JkqxppB
         Klb7WFkhdZLSzwQg31Pvy85q/eT4YZS44CR1YCbuc93buiqwrXa53hiieE2NNBrfM2Qn
         0IuckE2Us1eCwcgqlPvAGSILGSc5FnumXRdgEqIe9v1d+HGfuCeXysAjpqNWwfcZZf00
         Dd8j9aauPZguTe8YcADip5T2lb7jLckY374RAFx90wNnQsJDNzIZfvHtx3YuK1hO+jtJ
         SBR+UMYOuOx+CGQCRcWmpfefzicO20Aienvk3fYGIKlrb6FCxFM1/rewsfXZf40dRn8L
         0SYg==
X-Forwarded-Encrypted: i=1; AJvYcCUkhw92uRkXkTawPGNg18sAoztJ3gLrvv9iIIDo0fDrnq5icWNybSXW2kzLOEiinzr8sw4445k1M6k=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxV7xJCNPkDlueTp1B49No57DcoO67X8qmptZYetkAhW2rzL2S
	OsRhDLHm0HGTAu0fZ1tD6V6i2WbKly1NNJoSLsk0Wulwm9hWl/TgIPJqE9MBJAG9N0Qpi2VnpDc
	f4RJSYu5/Gq07coqzXyA2GfAx9gNobz1dKVkYPyifBVV7Kk6OtMDzKwytDt0PmWvB
X-Gm-Gg: ASbGncsiroPPUT6MO44HR+XeMPmR+fD3sTEZkkNW3bJCPallAFCzD1itcgj148ok5tM
	UrxrEzdEon6xEeIdKEuqgTBGwXuJeKHtUxpvSIyocveF0YBL1yajb9Btvs/Oxus8/hhcSqyb339
	+BPmi80agvkBiDspQ+OkFCHXyTL5akzN6tzNJ5xpFj/89mfMnPkxe2AdNgvn5qpjsuH7bUiECub
	0mZgU/sxUuk9Uo58f7iP+5IucBF1mJ2YrkKEsBYp70qSEcXeJ9v5jFEvcNMipSvMboVsIOg60h2
	YBBsbdIxEwwmK2OmrydgW8VC/9i4nSiLP30DzSVFNjgaMtKJzOldTi2tLVTvCc5xxX2ZZbZq6RQ
	=
X-Received: by 2002:a05:622a:350:b0:48a:f7d7:f9f8 with SMTP id d75a77b69052e-48dff9db952mr69708841cf.14.1746374202463;
        Sun, 04 May 2025 08:56:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGN4u9AyjqDi5g8VZkq9PYV4kNa6a/Ba8/S+CxQZZMJL5dOCD2iDARt0FReF8lX95lkfsxStw==
X-Received: by 2002:a05:622a:350:b0:48a:f7d7:f9f8 with SMTP id d75a77b69052e-48dff9db952mr69708641cf.14.1746374202092;
        Sun, 04 May 2025 08:56:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94c8d40sm1309157e87.98.2025.05.04.08.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 08:56:41 -0700 (PDT)
Date: Sun, 4 May 2025 18:56:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V4 07/11] phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and
 Inline qmp_ufs_com_exit()
Message-ID: <bu6jivw4mtxcxo7vyoeuzn3unck4ehpsknwmhp4rbm4rkudt6b@xenhgqvyltug>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-8-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250503162440.2954-8-quic_nitirawa@quicinc.com>
X-Proofpoint-ORIG-GUID: 0DMjHIuD4PynS6V5V9_pp9LQ08YJMCMg
X-Proofpoint-GUID: 0DMjHIuD4PynS6V5V9_pp9LQ08YJMCMg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE0OSBTYWx0ZWRfX4IoR5qdnQNGT
 rkMoDUsLIrkjknYQytLrrxMm7RBVzQ8avJCIQ5ElNdJDHMpo+XwKLJzG9QlA4H9EODr2R6TAam4
 ErQShdLKX/3ABPmRYVPbEt3CB0mXHZPquZ/AF3i1j6d7HrEp2H5FW0lUk3QZwi6XEp1leOCCihY
 xsKt6DfTYFYM6rtASEJy36pRDlewvhbj9uBxIm3MDRAQEJvNST7swZ/h+rDN6iOUjPTJzAbpp+I
 fEByOsrXLVpuTo3ZykCz/azBW8T3qOfrWbPyH1hoXEcwtgsMqgNCLNaj9/SH5Ednarrz1j/9OTB
 c1Xdse8dXVJ0nW783bv7EfbhvTW8EV6orA5XJxIrw5MFXTec5WTW26nPiCoxknqyWu+32yPhdpf
 PtIMFr8VxkhyFSHq4+19a9q1Ypjj1lwwf0FB1UBRXh4D2Ys/4KnS0quWbuK66AgZiFEVU3E7
X-Authority-Analysis: v=2.4 cv=AfqxH2XG c=1 sm=1 tr=0 ts=68178e3b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=CU_EFOmFiVvtlzqC2ZoA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 mlxscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=834
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505040149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_085645_386031_C9FC1E9B 
X-CRM114-Status: GOOD (  11.61  )
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

On Sat, May 03, 2025 at 09:54:36PM +0530, Nitin Rawat wrote:
> qmp_ufs_exit() is a wrapper function. It only calls qmp_ufs_com_exit().
> Remove it to simplify the ufs phy driver.
> 
> Additonally partial Inline(dropping the reset assert) qmp_ufs_com_exit
> into qmp_ufs_power_off function to avoid unnecessary function call.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 29 +++++--------------------
>  1 file changed, 5 insertions(+), 24 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
