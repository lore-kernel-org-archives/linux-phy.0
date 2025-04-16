Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D97FC369BD
	for <linux-phy@archiver.kernel.org>; Wed, 16 Apr 2025 12:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEwO/8Y1j3ByZSMKS60Nlt7x3KkB/O3DEsfw3zv+9b0=; b=bmRzSSfYGOEzqp
	yzm1Q7kZTqqyzj1nYKcJPctHkXV+xR9xlyZ7a30nRSDusQC3dPBIrD0fxrY8RUY/Og1qRlhCjt/AU
	/lkl/6wvD/CxLij+t7XG1WTtMYsJTd1jynMLL/QSLpsCd/sdUhh5pQOusHdQxsmEiiXtt5MADCvzp
	Qbp1U3YZI416FRapLY1tP66ypxRiTJEhT/HHvP+LhRIMuIWl2VxE3HZq9HpJ1OeML4+bL286gchEL
	1UuZXq1xveXNxfBO3/Y14O29PjPWw8MuL7SS8h+WtSgCqQlhvPHSjxti/jxW64lw7FjXChaCEjSNJ
	ZRoxvCGx4ac4+5EiDS4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51rL-00000009VcQ-0bZz;
	Wed, 16 Apr 2025 12:27:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51eX-00000009TJk-2IaR
	for linux-phy@lists.infradead.org;
	Wed, 16 Apr 2025 12:14:07 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mD0K007009
	for <linux-phy@lists.infradead.org>; Wed, 16 Apr 2025 12:14:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hoicvJayGfRbnVNr+kDnUFXz
	fuMtcH6jdsL2r7v/8DQ=; b=XvuYr27OqXZK4noaP6C9iJspNwv7GtnmKDByE1+k
	lCem9xCUKbOJPxbBHJMGuQfqUEtCH7cuNUFlGk7PvXertbejzlTdW+cZKNMdZ2HD
	z0PrUKrB2GFUOqF25conwqWsHMxQpQdLsJkzUBTtlRr0iZVV0V9eNWvOGfcNtcEa
	EW9yDN+qLyawJjjQcgamwDXjqq28hzpJ6ivWHXk3NyNEkYqfh5EjotxZZ+xHeM0a
	/LPYDjGRlu/wc6KCmpIC/WYhgnvxVUiyEyUuqxYhQvbgmbrgk5+7Q22Fpfq9Ao14
	g9g8llaHSbon3/WiW5+L7xhsYDiifiq/Una4P8IuNtaj9Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygd6kfny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Apr 2025 12:14:04 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ff798e8c90so6322833a91.1
        for <linux-phy@lists.infradead.org>; Wed, 16 Apr 2025 05:14:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744805643; x=1745410443;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hoicvJayGfRbnVNr+kDnUFXzfuMtcH6jdsL2r7v/8DQ=;
        b=rJCqNpCG28c4/WKw81mzWjqw/H8f6VOGRiu2RR3jzVDjH21xTpq4LrwNokUnMEt92S
         c07kFP94bL2DHBLiq/h5lXrjbMxyMN5B7nKwDWxCGKoOiIj2dvcZrDJaO+LoxSBk6cdG
         bP2Lkhgup8iSJQzVmoN8lO9xUnLhP90fNNqnbXo4aG3aK2CbCKckuRRnxp6veFtdnkY9
         XOqeE6t48m4wkVVhxraZLaihowu6hu0WXlbSdY2NYSGJGfS1PqJt1jTxC+fg7bEua6Rb
         GURY2PcWgf+eo/GpvbV3tzoQEO2NCuIoE4sk3b5leDYozPZ75f/rItVaeAZx0i98ptZd
         ZhGg==
X-Forwarded-Encrypted: i=1; AJvYcCUkyY1PjLEuEM8WYR/nKPOXKnNbOebnOsHCRrQ0+fC0jy5nOzxU+NxwyTTtM+q5Svgswn/sLArQRhU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfO1HE/YRTig0yJdkrhi6ldHP4EOE6hgp0mN41QSz7UDOLf+Pr
	Q6WFUUHfOlh2aa8PPXqTH5vcblIDUF6Ol+KPbQUnBGPNP4E0pxdpMM7CktVpkl00guyy9lBq0JF
	nEuTBHzsJMBBcnqD3fgess3HKDhWtPfqc2QXJ738fd8k8sMip6zKmPJdeDMZUwTEOtO/2M5A0MU
	jK7y4ZJwunh4znyVTM0IHhAD3xcFHB2TRA3FnSc9c=
X-Gm-Gg: ASbGncvl0V8VZJ7ttOJ3yb0OI99zMPwiBEoEkI+OLUZjnn1USXe0+42tCU0vrvRriNe
	i+psKd9PoShXPcNzeayTEMVdRPUlOz1sC6nuzTdr2+CKq5gaRMF+8ri08z1A7UqcJZ+/7paE+2s
	VJWXzYBkLJKsgq3ADE270iTxWW
X-Received: by 2002:a17:90b:498b:b0:2fe:a336:fe63 with SMTP id 98e67ed59e1d1-3086415ea28mr2431972a91.24.1744805643326;
        Wed, 16 Apr 2025 05:14:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBAO/IXJsIRD6bGBDFHb/vhg2Pt0r5xCrzct5z2vNsXzqxMqL9va5fjULmWQG3bJv/Ec3+IT1w+RLtSRXwQS4=
X-Received: by 2002:a17:90b:498b:b0:2fe:a336:fe63 with SMTP id
 98e67ed59e1d1-3086415ea28mr2431917a91.24.1744805642822; Wed, 16 Apr 2025
 05:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-5-quic_nitirawa@quicinc.com> <pur4y63xhfmqlyymg4pehk37ry4gg22h24zceoqjbsxp3hj4yf@4kptase3c4qp>
 <317faeaa-3130-4e28-8c5d-441a76aa79b4@quicinc.com> <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
 <2820908b-4548-4e0a-94b2-6065cb5ff1f3@quicinc.com> <c2ec6b7c-421d-43c3-8c0a-de4f7bdd867c@oss.qualcomm.com>
 <a24ff510-2afd-4aa7-a026-199fb6d87287@quicinc.com>
In-Reply-To: <a24ff510-2afd-4aa7-a026-199fb6d87287@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 15:13:51 +0300
X-Gm-Features: ATxdqUGiC1BHfSn5Eklp7gKFpyWYSjnAPEw8Fg9jZzGqaxHriewAs1J3z4zxcto
Message-ID: <CAO9ioeUDzYLMvqmsOQ-VfgLQLavHqn=QVYxyHzetjSfmhjKFjw@mail.gmail.com>
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
X-Proofpoint-ORIG-GUID: tVjLExveedWD3XKAByAhNmv86j65NsoN
X-Proofpoint-GUID: tVjLExveedWD3XKAByAhNmv86j65NsoN
X-Authority-Analysis: v=2.4 cv=ANaQCy7k c=1 sm=1 tr=0 ts=67ff9f0c cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=E4AxlzQU9QZxWW8QZIgA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=999 suspectscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_051405_594005_7C669D16 
X-CRM114-Status: GOOD (  31.58  )
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

On Wed, 16 Apr 2025 at 12:08, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
>
>
> On 4/15/2025 2:59 PM, Dmitry Baryshkov wrote:
> > On 14/04/2025 23:34, Nitin Rawat wrote:
> >>
> >>
> >> On 4/11/2025 4:38 PM, Dmitry Baryshkov wrote:
> >>> On Fri, 11 Apr 2025 at 13:50, Nitin Rawat <quic_nitirawa@quicinc.com>
> >>> wrote:
> >>>>
> >>>>
> >>>>
> >>>> On 4/11/2025 1:38 AM, Dmitry Baryshkov wrote:
> >>>>> On Thu, Apr 10, 2025 at 02:30:57PM +0530, Nitin Rawat wrote:
> >>>>>> Refactor the UFS PHY reset handling to parse the reset logic only
> >>>>>> once
> >>>>>> during probe, instead of every resume.
> >>>>>>
> >>>>>> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
> >>>>>> qmp_ufs_probe to avoid unnecessary parsing during resume.
> >>>>>
> >>>>> How did you solve the circular dependency issue being noted below?
> >>>>
> >>>> Hi Dmitry,
> >>>> As part of my patch, I moved the parsing logic from qmp_phy_power_on to
> >>>> qmp_ufs_probe to avoid unnecessary parsing during resume. I'm uncertain
> >>>> about the circular dependency issue and whether if it still exists.
> >>>
> >>> It surely does. The reset controller is registered in the beginning of
> >>> ufs_qcom_init() and the PHY is acquired only a few lines below. It
> >>> creates a very small window for PHY driver to probe.
> >>> Which means, NAK, this patch doesn't look acceptable.
> >>
> >> Hi Dmitry,
> >>
> >> Thanks for pointing this out. I agree that it leaves very little time
> >> for the PHY to probe, which may cause issues with targets where
> >> no_pcs_sw_reset is set to true.
> >>
> >> As an experiment, I kept no_pcs_sw_reset set to true for the SM8750,
> >> and it caused bootup probe issues in some of the iterations I ran.
> >>
> >> To address this, I propose updating the patch to move the
> >> qmp_ufs_get_phy_reset call to phy_calibrate, just before the
> >> reset_control_assert call.
> >
> > Will it cause an issue if we move it to phy_init() instead of
> > phy_calibrate()?
>
> Hi Dmitry,
>
> Thanks for suggestion.
> Phy_init is invoked before phy_set_mode_ext and ufs_qcom_phy_power_on,
> whereas calibrate is called after ufs_qcom_phy_power_on. Keeping the UFS
> PHY reset in phy_calibrate introduces relatively more delay, providing
> more buffer time for the PHY driver probe, ensuring the UFS PHY reset is
> handled correctly the first time.

We are requesting the PHY anyway, so the PHY driver should have probed
well before phy_init() call. I don't get this comment.

>
> Moving the calibration to phy_init shouldn't cause any issues. However,
> since we currently don't have an initialization operations registered
> for init, we would need to add a new PHY initialization ops if we decide
> to move it to phy_init.

Yes. I don't see it as a problem. Is there any kind of an issue there?

>
> Please let me know if this looks fine to you, or if you have any
> suggestions. I am open to your suggestions.

phy_init() callback

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
