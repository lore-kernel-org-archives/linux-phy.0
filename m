Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15AB2C3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 20:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmS5eWAJPrFotLchRwYhCAlIMxiHxfcvCY/kEzuKgmA=; b=HeGOQ4nCShN0um
	olYcTxOsNLam3NihZECp4OgFgDfZMuOsdPaUDJyiKrlQmsgTcIZfzgKpMFuajoB5WEsBrzsM8lMEW
	SAdmztq+OaeIk10hCc2K84caXGAjomy2I9QELll16pixLrTqGvaOIdPmJ8l93X/3VpgYagAJ9MyGl
	5Of0CdYE/6t6hXY0N6+WYZcM3ylCTItiyap7Oe1Ttt58mTLdsVa8AmWVspJZTLsoMDh9Vmuk8eG9N
	zlmZEYPMRjQQjlDdJNtKvqt/b6A/jK1nl9fKTqy6+Kh4bn86MsXrnOvgsPiuLTySlJkPled1+TPfH
	oXGuWHssJBRT1ezqu8LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2y9o-0000000BjsU-34O8;
	Thu, 10 Apr 2025 20:05:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2y9m-0000000Bjrc-22Js
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 20:05:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AGFkTR031989
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:05:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TXfF9vM+BoIBd/qesq5gNZSO
	9HgKKIqscZ8pGO8kuqM=; b=IAvcKzSWfZBOeARWfvOqiUotdPXWOaEavfq48bcu
	swGb2WHJy0XVTswakGO7TB8Y5YurgV5MqfYNZWaKeO2bHSXB61bGxbZAWFJwKSni
	12xSCl9zI8WAs6X3dfXoB2LTJyRQAECKchgOtghHzMu6a3sd2pfbIh4jkoRrwaRO
	mI2yFmw1TUikbGaNo+8SDHD1CisIXAy3RA5hs3rXL0XFHrV/kTDcwOZ2V0PglAFh
	nM1MH3X8TChqnMWmCne+6B/JUYWeGqiiIyhIiYMaYnQ//9Mzlkt9tOcwBJWoCbq9
	dHCgm8fGQxgZev94yn45I0mTzHSCKmMftZyp2fhKY+3dTA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twpmg4b8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:05:49 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c760637fe5so250092185a.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 13:05:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744315531; x=1744920331;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TXfF9vM+BoIBd/qesq5gNZSO9HgKKIqscZ8pGO8kuqM=;
        b=QN10In3UTQ6gPcVgeSc6Iy04zzDZDBbVYrqMvJbOCTKVfuz82EWxx3EkOTVDggn/UP
         FpexWj9QANcMQm6xKXcQpLwvbSWDBydMcXYium0+1bj/nJ7GFuzlt2YTnH2ZThDRvFXQ
         uCPm/oNgTnKFR/LXPtlr1I2x411hnhI/WDtuSyIZ2UNvzQSQobNGox3Qp86eZpBwzHln
         Z/taX4LcGsWifgELtvtHd4TQk+qjxdkNlhIc3kQLeJikn+kd/3bqOrcxPMtwq7xFJ6N9
         u7DyZCxW7ihZh8umuJwvAvoD+WKqPQzxHhP7xwFle6WSl/i88Dxwvs5GXMZosCIuq1EH
         q4Hg==
X-Forwarded-Encrypted: i=1; AJvYcCUkMIea22I5ESQHssXHsmNWnDSuM1AVIJUPgmCXYqsuBMmQVBwcbJerJjHfDM7PT521KpuNGexsYBA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+UyOZmQsfxaYDZzw955BL5aJ+XK1ro0ErynXuDEhl3X4asf7T
	lUVlJhONsajDrJqa2NQtBjzhilnf9zLYEo0YJ57nDR8UlGnOSZ6VfBwxim6YWTulcDoApUfr18e
	zZQuAAtT+if+cQW7HUNEGpzLLuU3JPErvCOuQdgFs8tNvvRn+lx0fKowE2n8zo/LT
X-Gm-Gg: ASbGncu7S3UaaBJF3ykZ8OT5nFYuAKT5UcFLPsrblsTZ5lFWRkR5qZUWeHfMmxMT/js
	ZH2TZL15grLDiM7SMXXf0fKWUf4CQvpMtJqR/SsD5sKSoYzr1jyC9y/01x+bJYNYkSGql0jJOSn
	TSzEvGZAxSaoa6anEN5lwLWljkW8S54d6Fy1/yOpPGs2ebh1TRN10dfO/0ekye4tZkW25Ehs680
	2vRlhbIXW3alSPXQGR+IcbuaLW0x55pKTFPg7G+klzqIl+upMHfhB5yLyxW/4i1fSr/NIBX8qQo
	Fj+P09Uu7E02V7t6M0JDgeFxP7nwNF65v44Bv1EtufxCK+BrCOf0hUkQTjszs6E6yr9CzUHY3Bg
	=
X-Received: by 2002:a05:620a:19a9:b0:7c5:53ab:a74f with SMTP id af79cd13be357-7c7af1f32famr39462285a.39.1744315531618;
        Thu, 10 Apr 2025 13:05:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNwwRD5+XOsvvXwA7FK0l1NN+2EkzlXU5C/nqu3FRHnxldNXsWpsj4tAqkeWZh4iuNHA2zcg==
X-Received: by 2002:a05:620a:19a9:b0:7c5:53ab:a74f with SMTP id af79cd13be357-7c7af1f32famr39457385a.39.1744315531220;
        Thu, 10 Apr 2025 13:05:31 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d52084fsm232846e87.255.2025.04.10.13.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 13:05:30 -0700 (PDT)
Date: Thu, 10 Apr 2025 23:05:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V3 2/9] phy: qcom-qmp-ufs: Rename qmp_ufs_enable and
 qmp_ufs_power_on
Message-ID: <2hysso6n4f5tnyknmgne2r4wpy72j2taqwuncqdcwqqztr4g7y@a3scnple4tew>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-3-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250410090102.20781-3-quic_nitirawa@quicinc.com>
X-Proofpoint-GUID: MnyEupzlMqffjKniRDhwGqE4_E4G7Cpn
X-Proofpoint-ORIG-GUID: MnyEupzlMqffjKniRDhwGqE4_E4G7Cpn
X-Authority-Analysis: v=2.4 cv=MpRS63ae c=1 sm=1 tr=0 ts=67f8249d cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=hpSo_X1Mu2B5NIsQaEEA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_06,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=782 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_130550_525405_37A17941 
X-CRM114-Status: GOOD (  11.20  )
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

On Thu, Apr 10, 2025 at 02:30:55PM +0530, Nitin Rawat wrote:
> Rename qmp_ufs_enable to qmp_ufs_power_on and qmp_ufs_power_on to
> qmp_ufs_phy_calibrate to better reflect their functionality. Also
> update function calls and structure assignments accordingly.
> 
> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
