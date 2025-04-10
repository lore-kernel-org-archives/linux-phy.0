Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A34E4C3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 20:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ae9kSoFGuM+glTKeCS0fBSFT5v3jNb2pyxGwiJRREE=; b=2OIsFJbVkDhFHP
	HC62d3gOB5ccu+/dXvWIIMKoURhQy7J99C5xeDNdbA95y/SdKT++FREm09SQSaQkj8LFx/4gmWjp4
	yt1AnTwc+4+QHYg8HpL6/SphtOBGN0J9NHVabHOcjf8spXdwULGLHLw7wCXKRLPIO6qAHPNz9llCD
	r5GcmnWAKajObJtkUKueMFkNTtkffsB2Yv8pos60mmNUJAm/0pHaxAZev7psVC+/5D4IhHXuhCm+W
	YrGs1DUUvm/vo0evwlzKWINBi0AFuhEVtLNClrJLw6koRdR0Zc6hWr61x9w/9AQLMwsz2BKFNOBRi
	omZCnZh0WaeKxb1b/txw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2y9B-0000000Bji6-1lbO;
	Thu, 10 Apr 2025 20:05:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2y99-0000000Bjgv-0CvD
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 20:05:12 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AGFkTN031989
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:05:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NDLAEun4AR3emOcXFOyfcWJY
	bo2wswXjIw76iL0ScI0=; b=PJCxT2AGW/leA1rf3fgN95tuljrzlv2PD/2LAeZ3
	4lcRsVwWwVQgkGLNC8UqAkaq95QQWzXmdbdkwxpYrD+28gVEzKRy7kJwc2PgcV5R
	ymss5be5CJAWt3rstQo5SyLz1B49HUn+suXw3jcGAZJA9AMXttMEVrGVGG6f3EFx
	hjg+SjdSvX+0+cgFFbCZxvo6aUBUxQ9MujAbvxjLwV3E1C9BNhnYSt+XWc4bO7v2
	GXwcVmaW6gW896+h5zJPupIyiCoNK0TDkfBMTA1RhOVRyBxJLW7hPoq3hRRU0dyz
	7yUXlEVRLOImJuBuN7N1RmE4BBgzehzi1wgk8RQiBha2lw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twpmg49x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:05:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54e7922a1so244280085a.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 13:05:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744315509; x=1744920309;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NDLAEun4AR3emOcXFOyfcWJYbo2wswXjIw76iL0ScI0=;
        b=od8maNDkZNbIdAd8wr2EV5kcfb5CBSnUzK+cxIoKQDgMdqKT+V4pcDrb0CcYANaQwy
         OZ0NYVT2faa0jbGVv4VRPTT2MJI01F3Vxjbv7E2HAwFuG6dYPeQhzzhIax8YzQXVDmgF
         ymuR2MQx5BhX/ZpV8vSvdDNGP6ND1vGI8euQKH7kJxyGzIbY/tJW58OETmBayreRaf17
         8MWhd6aOvyTzrtOpFW5gLA+Idpp1ovd+3fyEIab0oTlrvFt3K7Ob+WfY/5tMsUnXRBDW
         UO/hv1xg+7PeIRK6eoc5V63Ktm6L8f+Xc2DITQo21rz23WViyC3Zk23ULsAzbpSSOfBu
         7ZRg==
X-Forwarded-Encrypted: i=1; AJvYcCXsAZPpDXEfEUrDmeUIPRveyWLKiitsWLrWEGGdBpBOonljjn3+1DPVeT7GralnX/bwcLTGFk0Sz74=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8m1LOCWeay4bFfD2z4gnuZV6t+BXLdJeXFmnVlsLbuyLn5ZU4
	5VIre/SjzR4oCIcVN7aLU01G+qmUKhhayRpwGQ73zQijMRpo7jBe8vChbO9jM4Di8x5eXl+F9ui
	pohyzSd+2kKn+WEs6o85hPwXhgsXAXJBzraTkSW7YWi821GiRe/2qf9rpWTY0a3m6
X-Gm-Gg: ASbGncupozq029YaS3sTH1fLUMe3fRfSR8KtrqN+soph9J2QAG0ZdnE4CTacRmsLppf
	Cu0k/R32u9aCAREjq/oVnjy1itY/GPv5nkiA9Cg0CW/alNNLJYztNZu1rK2NrfJYc43M2V1i9GD
	bZH0kqUJ6l9eJ0e7gZyFu26k6jTFqpyoN2t9JgEkof7AP+F6nbtmnRgwtOvhp1BlnBD138WzYTK
	y4BjNA7BpvqLRZSf6MnF+w351gSZ/+cxw1L0jHfxDDuSqV/JXMJKskLblHpTcU+LMXy4USerIpf
	LxKoTqVhGrpOWwui9NbOMKlEvJF7w4DbBzFcVStLSWVCly6UIZHL3tZm1Ei5AqsWFuQE+ucHgxg
	=
X-Received: by 2002:a05:620a:4001:b0:7c7:a5f5:5616 with SMTP id af79cd13be357-7c7af1d8653mr37249085a.42.1744315508747;
        Thu, 10 Apr 2025 13:05:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGf+JpGVMSFzujCZW07L8EOj0/xyefs1ZkEaUKfid0MPMMwiHP/7FdGXBKdlU2vY59OqEnIcg==
X-Received: by 2002:a05:620a:4001:b0:7c7:a5f5:5616 with SMTP id af79cd13be357-7c7af1d8653mr37244685a.42.1744315508317;
        Thu, 10 Apr 2025 13:05:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d12311asm239157e87.2.2025.04.10.13.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 13:05:07 -0700 (PDT)
Date: Thu, 10 Apr 2025 23:05:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V3 0/9] Refactor phy powerup sequence
Message-ID: <zzfffzclcftivaaffri6ucupyh3u5dfy7uctgw6xgid2vucusx@x542fel3qkeg>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
X-Proofpoint-GUID: vnoFQeL9R5ckgA95aNqfsFf_uelTP0Qu
X-Proofpoint-ORIG-GUID: vnoFQeL9R5ckgA95aNqfsFf_uelTP0Qu
X-Authority-Analysis: v=2.4 cv=MpRS63ae c=1 sm=1 tr=0 ts=67f82476 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=BPZSipMUsAf8-dKi_Y8A:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_06,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=477 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_130511_092293_B17A80CB 
X-CRM114-Status: GOOD (  15.80  )
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

On Thu, Apr 10, 2025 at 02:30:53PM +0530, Nitin Rawat wrote:
> In Current code regulators enable, clks enable, calibrating UFS PHY,
> start_serdes and polling PCS_ready_status are part of phy_power_on.
> 
> UFS PHY registers are retained after power collapse, meaning calibrating
> UFS PHY, start_serdes and polling PCS_ready_status can be done only when
> hba is powered_on, and not needed every time when phy_power_on is called
> during resume. Hence keep the code which enables PHY's regulators & clks
> in phy_power_on and move the rest steps into phy_calibrate function.
> 
> Since phy_power_on is separated out from phy calibrate, make separate calls
> to phy_power_on and phy_calibrate calls from ufs qcom driver.
> 
> Also for better power saving, remove the phy_power_on/off calls from
> resume/suspend path and put them to ufs_qcom_setup_clocks, so that
> PHY's regulators & clks can be turned on/off along with UFS's clocks.

Please add an explicit note that patch1 is a requirement for the rest of
the PHY patches. It might make sense to merge it through the PHY tree
too (or to use an immutable branch).

> 
> This patch series is tested on SM8550 QRD, SM8650 MTP , SM8750 MTP.
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
