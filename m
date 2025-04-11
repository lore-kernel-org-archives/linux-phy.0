Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CBBBC369AA
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 11:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3blKE+FNfAXf8j15mitXq/HTP9ptxPMX+IpnGR63d90=; b=HFW8n4M9QTOG1D
	yWabvWYdzZcQ7XM+I+otB7r7wTjGJbPCB3dZHzxjkO6eZ6RbhBos+FZBjInseeifUPOIYLYV2/HyQ
	fVhxKpWAih88844tuYbYZGOzMlSoisyTiKP0PKAaeuDtI1/lVoaoOK7wGV4sjytQgVOkeKoQHPiZ/
	pMNHfYqFCnRFZtyzUMy7gzJRb1f74tnyxpuPkQnZm+87wTNKKISvRtvHDq2n54ay8Bd0QsNY2wmoA
	BbLpYzFYw7GfV536wtPrZbqsOCcWduq8lzcc1mi4a975pA7fhRli1gE9Oz+OJWpExlp24Scy2TFjg
	C8HQxVFhBRN8fMrpn/vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CQ8-0000000DVlT-03EO;
	Fri, 11 Apr 2025 11:19:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CF3-0000000DTGW-2QKM
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 11:08:14 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53ANt4aY030523
	for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 11:08:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HBQbeYzw6APWnZi84F2a3pRK
	I27ywQZAd06trqW+HaY=; b=hgoEfdGBzhApDqkndDagZESVBWVwpZ/iqvKKQQxC
	y2gB8z7IqWB6wIx+6S/nOb6/656IDPDwAJ5t9TUiTTnfQ6S3lChfLWwq0Tg3AUsS
	rxk6oCE1TcpYnWuxhuMuMl+47rK3yT7YzAGmTnedFitGpSi4AaL3UhoK0/PhAfDJ
	FCaML/lGybf5cN3Crh0vLx6VZS5ZAIUikW7cfU8nvUqe0mdROKxtuJ6zXhezsarX
	n7IYpVXNTJKB6kNSn7ZJgPaa3fST+1+YOduVx6+xSDnEcFIcRLChXTRCncDXbfKv
	1i5UUvNsdeZC7aL5gPO5m22iwuEfCBcgUe/5hvv54IaHQA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd32513-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 11:08:12 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2ff55176edcso1660197a91.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 04:08:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744369692; x=1744974492;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HBQbeYzw6APWnZi84F2a3pRKI27ywQZAd06trqW+HaY=;
        b=Hn+60qSi3IBYkBrhJKqkuE2SQzozYlmMNd1m4Ovs+e8IvcIdg/eb3CyF1/D1A++/ZU
         WOsN93gvR+M4iq/PuZGAwIK3QYqO2HO1lKPR1PBTERtsd3jTk7hycN1GlNSaNitvF8E0
         +IKzzRxV9Rzovs/HHCfhZuKkfDet32acl6NeOvfWIls/8Hv05J8FlFFuHQdDQfdGTPjA
         Xx6aQ+vT2oEy7nUS2W1T/ot7mRqx4M/bPRdUkS+749tk+KSjnFRUlJ81jEpRyn2tfVWa
         4JpUdgBq4S8/E1+DStOw7EYKR6WvTp7TeS6rAQ7vXy8Gr67EnRJtB17s0OJdf0z+wq0f
         vp9g==
X-Forwarded-Encrypted: i=1; AJvYcCW54MWQnd4YGmjogJf8xL9QHw8XmP+qzCqW2VmkKnUhGUOUvz1cKC/h91dUT/IirMtcb/5I1Cu3ANE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwokZFLRw0LW73OFJcZlM7U0rBd0NxtKvEamkZW5sApdfjmz4hi
	3yJOa5/YAebaNmJKNnOGkyvNxVz5vFl553RdYQc81f1OKUIOipoMvWERiv9YVem4i9XrBDW/uvh
	eWSeG5LCG6+tttpdKyZXlgxSOrUvRMWC3F8asby4hc8aRIRcPW7sE+w+iUf3DfJ8UAQbYdYflyk
	0fsFdCBZ4tl7Q3q32IRdujsadijSq13EKvFw74UNg=
X-Gm-Gg: ASbGncvmC8vJX16mjvDiqLktZyXGvJ7fgUqUQvMhDF2Zzl+VMsEyBEljsqigwfILf3Q
	xtgQmPUI4ddEUF0leFaaPUZ4crWHvlpNCxCFJcd1YIk+oE79iiJekPIOGPcOy3L6qImH/
X-Received: by 2002:a17:90b:3811:b0:2ee:c2b5:97a0 with SMTP id 98e67ed59e1d1-3082367cc82mr2897071a91.25.1744369691846;
        Fri, 11 Apr 2025 04:08:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHd0I1GCEDvpAi2gUYHugQoIfK7apTzqTjmfre2S/d62z+yjx0led5IZyjgEwQ9RSEWSP7216G2+nVwkEiP3pM=
X-Received: by 2002:a17:90b:3811:b0:2ee:c2b5:97a0 with SMTP id
 98e67ed59e1d1-3082367cc82mr2897046a91.25.1744369691461; Fri, 11 Apr 2025
 04:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-5-quic_nitirawa@quicinc.com> <pur4y63xhfmqlyymg4pehk37ry4gg22h24zceoqjbsxp3hj4yf@4kptase3c4qp>
 <317faeaa-3130-4e28-8c5d-441a76aa79b4@quicinc.com>
In-Reply-To: <317faeaa-3130-4e28-8c5d-441a76aa79b4@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 14:08:00 +0300
X-Gm-Features: ATxdqUF-X8GJOlAeUkfYE-Sg-FfqieiSk7JqgrP2qo_5nFBO6uleE-ckDhQQcvo
Message-ID: <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
X-Proofpoint-ORIG-GUID: Cq6GvFBI5o7IOYv3uNMDu7bE01Q9Dcux
X-Proofpoint-GUID: Cq6GvFBI5o7IOYv3uNMDu7bE01Q9Dcux
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f8f81c cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=DRp6rjHBX2g6hxItOtMA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_040813_623703_9D89A534 
X-CRM114-Status: GOOD (  28.74  )
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

On Fri, 11 Apr 2025 at 13:50, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
>
>
> On 4/11/2025 1:38 AM, Dmitry Baryshkov wrote:
> > On Thu, Apr 10, 2025 at 02:30:57PM +0530, Nitin Rawat wrote:
> >> Refactor the UFS PHY reset handling to parse the reset logic only once
> >> during probe, instead of every resume.
> >>
> >> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
> >> qmp_ufs_probe to avoid unnecessary parsing during resume.
> >
> > How did you solve the circular dependency issue being noted below?
>
> Hi Dmitry,
> As part of my patch, I moved the parsing logic from qmp_phy_power_on to
> qmp_ufs_probe to avoid unnecessary parsing during resume. I'm uncertain
> about the circular dependency issue and whether if it still exists.

It surely does. The reset controller is registered in the beginning of
ufs_qcom_init() and the PHY is acquired only a few lines below. It
creates a very small window for PHY driver to probe.
Which means, NAK, this patch doesn't look acceptable.

>
> Regards,
> Nitin
>
>
> >
> >>
> >> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> >> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> >> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 61 +++++++++++++------------
> >>   1 file changed, 33 insertions(+), 28 deletions(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> index 636dc3dc3ea8..12dad28cc1bd 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> @@ -1799,38 +1799,11 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
> >>   static int qmp_ufs_power_on(struct phy *phy)
> >>   {
> >>      struct qmp_ufs *qmp = phy_get_drvdata(phy);
> >> -    const struct qmp_phy_cfg *cfg = qmp->cfg;
> >>      int ret;
> >>      dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> >>
> >> -    if (cfg->no_pcs_sw_reset) {
> >> -            /*
> >> -             * Get UFS reset, which is delayed until now to avoid a
> >> -             * circular dependency where UFS needs its PHY, but the PHY
> >> -             * needs this UFS reset.
> >> -             */
> >> -            if (!qmp->ufs_reset) {
> >> -                    qmp->ufs_reset =
> >> -                            devm_reset_control_get_exclusive(qmp->dev,
> >> -                                                             "ufsphy");
> >> -
> >> -                    if (IS_ERR(qmp->ufs_reset)) {
> >> -                            ret = PTR_ERR(qmp->ufs_reset);
> >> -                            dev_err(qmp->dev,
> >> -                                    "failed to get UFS reset: %d\n",
> >> -                                    ret);
> >> -
> >> -                            qmp->ufs_reset = NULL;
> >> -                            return ret;
> >> -                    }
> >> -            }
> >> -    }
> >> -
> >>      ret = qmp_ufs_com_init(qmp);
> >> -    if (ret)
> >> -            return ret;
> >> -
> >> -    return 0;
> >> +    return ret;
> >>   }
> >>
> >>   static int qmp_ufs_phy_calibrate(struct phy *phy)
> >> @@ -2088,6 +2061,34 @@ static int qmp_ufs_parse_dt(struct qmp_ufs *qmp)
> >>      return 0;
> >>   }
> >>
> >> +static int qmp_ufs_get_phy_reset(struct qmp_ufs *qmp)
> >> +{
> >> +    const struct qmp_phy_cfg *cfg = qmp->cfg;
> >> +    int ret;
> >> +
> >> +    if (!cfg->no_pcs_sw_reset)
> >> +            return 0;
> >> +
> >> +    /*
> >> +     * Get UFS reset, which is delayed until now to avoid a
> >> +     * circular dependency where UFS needs its PHY, but the PHY
> >> +     * needs this UFS reset.
> >> +     */
> >> +    if (!qmp->ufs_reset) {
> >> +            qmp->ufs_reset =
> >> +            devm_reset_control_get_exclusive(qmp->dev, "ufsphy");
> >
> > Strange indentation.
> >
> >> +
> >> +            if (IS_ERR(qmp->ufs_reset)) {
> >> +                    ret = PTR_ERR(qmp->ufs_reset);
> >> +                    dev_err(qmp->dev, "failed to get PHY reset: %d\n", ret);
> >> +                    qmp->ufs_reset = NULL;
> >> +                    return ret;
> >> +            }
> >> +    }
> >> +
> >> +    return 0;
> >> +}
> >> +
> >>   static int qmp_ufs_probe(struct platform_device *pdev)
> >>   {
> >>      struct device *dev = &pdev->dev;
> >> @@ -2114,6 +2115,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
> >>      if (ret)
> >>              return ret;
> >>
> >> +    ret = qmp_ufs_get_phy_reset(qmp);
> >> +    if (ret)
> >> +            return ret;
> >> +
> >>      /* Check for legacy binding with child node. */
> >>      np = of_get_next_available_child(dev->of_node, NULL);
> >>      if (np) {
> >> --
> >> 2.48.1
> >>
> >
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
