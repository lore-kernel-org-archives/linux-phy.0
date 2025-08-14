Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B506CA0EDC
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 07:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uN7RuP1moyNileQf4034s9vuejpvVjEmPAGLxMu/6y8=; b=UPANjcIH/CBOdH
	Z6t1ckTIPensFTpQynecDiPcbY29JVjkbpTbDk7Vv7fAAedloddUYt5HTOrLY6+itm49OgcMayeK8
	1i/tVKElrCc7ZhDHVtnkZBXHdKNH3roZoe0OXwWNO1v8TyL7fBH8chN39yMEzcimBGH9iYKg5uMMl
	6fBUlnOYpw19DMYdOFs+WGT3JFzUSKMz4zWuQ/sffIJBbobjjVHOTWUxmRa/43ppAdI9uiXty3mLY
	TeNlBO4xHvMgLlApHN9Iz+Y7Cbyu5rMfjmWtehQWdTTfAL+ec0mSmdFzyjkg5Ck58jPPD/aiH5xqF
	garG1Z4W4I44XpLkr6Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umS6j-0000000G2hj-2pOp;
	Thu, 14 Aug 2025 07:10:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umRsd-0000000FzWo-2kk2
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 06:56:08 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DNaRMm027068
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 06:56:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=446NGPC4IHTmfxm6TNEJ0F5d
	cdGOD5iAOKWcZQN3Tyk=; b=OZD7Az6hQdCV3hnFFaBeTxMouTOtSCMGZRTKyvfr
	CkcjX5ZJBlI46LCZnKcLbqGoMfGf1MGiKv6wkjzEPOgT7EhAaT7MG8oCsBwYI+kK
	VNe4AH22aVSyV2fw1q9ZbtrUbkSo6Y26Lm902j9Z1tbaR1tDeCylk4hXm/o9Fz6A
	Fgbr9adslP6BkVhiuRGFFKcQ4HeGxVkbICawX8v6TXxfPGgNybsIFe66VTBcXGh3
	KmZ4szc5c3TPmD9TXM7zcSn8ttke7uRRwT0cWGjXS5vHzBZaCX6KJcdRT4PE0ur/
	+pPJcGP0WQKqkC9B7P79HnhE/Zs0QE0NZPuYcVl3GftKEg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3gekf6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 06:56:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e87063051dso73178785a.2
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 23:56:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755154566; x=1755759366;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=446NGPC4IHTmfxm6TNEJ0F5dcdGOD5iAOKWcZQN3Tyk=;
        b=v4hEue71PPwDlFWu6NNefE0eIxQHzyjSuPnZ0rFzNKeplaGTHxO97inwAsWzG6iZXD
         PkyfSqxiyGmQfiaRhZ4rENtfvgIhWyz1rTRRf4Z1/zR7tUygnA2s5KgV3lmyYK6COJDL
         Hni0FndNW6GDqK4lQAkwYXQpo4hnaAukR4aAFRZpOClp5kckeeEaijN8HYpwPAmlmkhd
         ALBN/wOj+9pxIf+M4WstLfvj16J1BeKkE7Cy4bv363SKyxEtfKIrsP0OHC7ts1UEsuDl
         9eByeyjpdEMe0S3lAxPUyU7C/ELjk9iLBjgXeRLU3JCsytg5U/sfIvg6EXGb55W+hkZu
         QDUA==
X-Forwarded-Encrypted: i=1; AJvYcCWkz+e8dN1lLsTEdDXTi/hEtz+WpcgyEpydPf1DMB2R22crYT1JGIXYcQG+SZcmBztsbqbS0ubUYSo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKw0s1VymePUI9tzQhoCPatgZXeasAI4ffAtYdvG9G+dAAAyAv
	rlz3vQR6k3qJXcx9LkriymWZ3F5xMilGSA/Emk7D0so6Ow9QBMD46+fqPxQbvMsgvd6guST2/bc
	JuoIze337nUfxjKpXX4M9JsWjS/e7kYwIxYIznxY6QEB7emSmTv22TdsT5WlbBx45WAqp
X-Gm-Gg: ASbGncvNubVQqcvdTbGkuUmX4vRQ30Z6PGlTvsjq0uD3eJ+NYHZwiZ0tLSBWUsLxHeX
	fV7pkjJSS9Nyi8FbWu1sbJbkY+S2ErMPxOakyWsjB9hlT/sh150TBQ0RJ1/nB/99sOXw2EYebjT
	hB7/f09X8p79ldCho80Xddx21zkdviTzhOpc2O2L6kzTv/vgXiMFtYr+9fA+eEcuLcFuuMfho8n
	zIYUsyNSca9tq16Cze8lfU4QAid97dE/XWKTMrLfLa8vYDLg5Rt/mgIO+00xAY86oheTCv8S+QZ
	MsivU3PlG822HWnNFzoaXuoQahG81lIHV5JKSeyxn2DZTc+7Me0dcED1Bl2eFVl+UuGXfNTPuGH
	hevhngmyWOAbRj3JZFRsnTiKziNq8uNDCvvRMJ7u5fyr4SMgR0Lur
X-Received: by 2002:a05:622a:1887:b0:4a9:cff3:68a2 with SMTP id d75a77b69052e-4b10aa6271bmr31969041cf.37.1755154565830;
        Wed, 13 Aug 2025 23:56:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEu4eE3QLS9jnWgL6hZSYfORd2c5h9kWoE1NL/aOYxfZybe6CsmPBNHqWg40mW34hJP+Uy4Ww==
X-Received: by 2002:a05:622a:1887:b0:4a9:cff3:68a2 with SMTP id d75a77b69052e-4b10aa6271bmr31968791cf.37.1755154565366;
        Wed, 13 Aug 2025 23:56:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cc859266dsm2374101e87.38.2025.08.13.23.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 23:56:03 -0700 (PDT)
Date: Thu, 14 Aug 2025 09:56:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Cc: marcus@nazgul.ch, kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, andersson@kernel.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: describe x1e80100 ufs
Message-ID: <iezjm5d5o7ec7jqweyip2vcqtjv3icidw34yq36k7blxuff2sf@ou7ub3cpwx2k>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-2-harrison.vanderbyl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250814005904.39173-2-harrison.vanderbyl@gmail.com>
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689d8887 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=pGLkceISAAAA:8 a=2WfLOqSWa4--05Z-PRIA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX2sQHGJFiOF45
 GCQkKE3KB51g0ttXXlzeVbunwfXz2NRw5FnFmjn+4dxqN7LTWqkvB3a+4by0l6Gj3F08dt5M5U4
 45/cscAmxPncE00MTmDOwfiOQ5cXNaNNweW5Y5vJwpUieOa6h3Jct5hR4g5vK8zT+6gWHoLjc7+
 VDBSNTQ0icHXx0w5aB2TvJGcOyaSp4WhOOosrUU56BivaKZtsqV+hRqlA80pzmN9i4eVg1PPuTE
 vqnP6OcjGv1PPt9JyOjB1n4cRAiiALZLOl+fsfMcGt+ozq2xz/ylF6MITLTuVkXtCG1hXYVgZ6A
 /QZkx8WMeCjeI4Zxk9FQWDmAVCNhIx7oha+RXt9w9c8+FC9J5iU+FAo6MWdkjoy5DSXOqobJPDi
 PWUU/ziw
X-Proofpoint-GUID: eJAyNyLkLAqOQ7e9Zc0Afva1T3mkopp-
X-Proofpoint-ORIG-GUID: eJAyNyLkLAqOQ7e9Zc0Afva1T3mkopp-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_235607_696631_DA8F29DA 
X-CRM114-Status: GOOD (  12.71  )
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

On Thu, Aug 14, 2025 at 10:59:02AM +1000, Harrison Vanderbyl wrote:
> Describe dt-bindings entries for x1e80100 ufs device
> Signed-off-by: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>

EMpty line before the SoB tag, UFS not ufs.

> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml             | 2 ++

These two files are going to be merged by different maintainers through
different trees. Please split into two patches.

>  2 files changed, 4 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
