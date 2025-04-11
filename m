Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0D2CC36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 11:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2J7srlGVTVGU7SYTw56OddahNsljkIv3OBiuCLhAeo=; b=GNHLcvqZbW1nD4
	TDRFPw0Sq7NLcFsxTM47gD9DTZFBysQQDMGsKA7PP+hBd9xI6vwxohs6l2wrprUsLsq4OIqKpsUhp
	qqhYmLOM9JP5yfWyTdzzH69Rghuyyb4/kjIHNP2YYdHae0YDoqFBsUoMir8A1hma+GonUKSWjE9R/
	CwfiJJs7vMeNOIfFvAXuFmKOmOhE/gs1TjpfY72diyPo0ukF5R2S6Z6UhFH38E2IpMu5tiwz4P9vD
	QDYtsW9KT3oMeyC/CDL1cmm0dCpYnPDvtAMxwsOupkPamTi3mrfYokG4EFw13fo+vs4MCsLeP3nVu
	gap/LK8jPwoHVZo+kK2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CQ5-0000000DVgM-1yBu;
	Fri, 11 Apr 2025 11:19:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3C3x-0000000DRkC-3bgJ
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 10:56:47 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B5FqCe028897
	for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 10:56:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NMnuTa2g/u6bG5PBHb9WLLOX
	p+EvkptmiqFPCHgzMnk=; b=CIqcFrmkaz+J91+AAQCMZo8BtGjG2gHwDxlWR8Mj
	Ubba4ZfDjw1kgMt7k92VYQ+E35NEj9QGX5Ei14goYUFLjhewVzB49wNOGmkNz99U
	M9eUxCLgyEuVZbWB7piS/7tanafjCwVf73vurRimktUx4Bbp3bmFKuAFgL2nXzZS
	SW1N8Brkom7+aM+xiMUaBibMStEvjIm/jbtuRpuzTxezWT4szr3bQQgvxZ0M3HpS
	eGBoc9icqRpNFZYFsqzr9jf78e7aqz9qbfGsewctKqShg9b5LcGAfjmH6mIxt3T2
	lwO2a54aFPQMBkXzDTMNPW7PE4RgcnQSWphjrLaPMb/T7w==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbut5r0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 10:56:43 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ff798e8c3bso1876239a91.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 03:56:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744369003; x=1744973803;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NMnuTa2g/u6bG5PBHb9WLLOXp+EvkptmiqFPCHgzMnk=;
        b=QhXXrw0pFZCZxP/1RZcLzBD3+Hp3+g0zaE/pXTVhOj9fHSDSFrNs3eS6yuIqb450uM
         WFNQCuXGfOQ8J1kujmU9pVOT+bIprgTt59cXi2qAZc+QHM0XgN5C33cXOqEvu4KJu8Ip
         edkLT86rgUF1575jnuy39Oo9WoIt5f4qA/8LQKeFGdb51uwsvYkcqmbp+VSaX/ZfDHmQ
         FDiyq1mPpE3Qa2Y3dgSxII90HDV6F3h9CsUQILGUwXRSY3cnTslN0e5jFUVD6RfuEKEm
         TDFfbkcG+jjDwy4l3bS+EPksvRqMu98hweapyuSdqgHtG+0B8k3qYFSdaBXC68HikQ/K
         vyRw==
X-Forwarded-Encrypted: i=1; AJvYcCX9Rzr+OxTXWwHVKBAM5pUqFxOdyKMiTBOEKae86t9BrZb+ZyYj0KXuHxv9k1vl0lLhtjSX+bChBE4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqsE/OX9bAwqOyqzpn2U/cTsPbv+Y2Yt97qBjCIkyw6EVOVIon
	rd1iMH9PC003HFMIZQpk3dZRlUxUC/b3yoBAL0Kc3rAigOSsDBOxEa4lyq0BbErTh0zIDz7QmiK
	OQbjPgM+f5FhBZOv4F78eiEcu5BG7FPG2F9O3vcJ1F9k+HcfE5uQ14S5Yh+7C2kuhJXBYuIQa8j
	nx1f1OZ8/59adP30USAKJLlGuyan79GvekY98JcZ4=
X-Gm-Gg: ASbGnctP8NGMy3qrJl2cPMCC8PJNcMOYFgvA9aMjGLsorMnrpYcc7VnXB66MO9Cr5jp
	BjTShg/cDmAwI6ifrw0DlwKRnAWDUXvJxcv5NA83cMr39fix9+Wu8f2euscqYsm/b/3mc
X-Received: by 2002:a17:90b:5190:b0:2ff:4bac:6fba with SMTP id 98e67ed59e1d1-3082367ccebmr3972429a91.24.1744369003015;
        Fri, 11 Apr 2025 03:56:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEC10V4HuepcPrjAbfR7o7tQD4T9I5MwkHAg2tixv6MMcm+xs1JfiXocI3oSlU1LZsF7E5UV8cn7MGz9lE5X8g=
X-Received: by 2002:a17:90b:5190:b0:2ff:4bac:6fba with SMTP id
 98e67ed59e1d1-3082367ccebmr3972395a91.24.1744369002676; Fri, 11 Apr 2025
 03:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-6-quic_nitirawa@quicinc.com> <zvc3gf7mek7u46wlcrjak3j2hihj4vfgdwpdzjhvnxxowuyvsr@hlra5bmz5ign>
 <4557abf9-bcd2-4a06-8161-43ad5047b277@quicinc.com>
In-Reply-To: <4557abf9-bcd2-4a06-8161-43ad5047b277@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 13:56:30 +0300
X-Gm-Features: ATxdqUFwNiDRdMcwM_zHvHGXNZvki0LX1hVsBLYCd-Z5sRRiCA8vfgXKNnKyQxk
Message-ID: <CAO9ioeXyDWOhe1cbGO_tR=ppZd1aC0GSdeMzQjir4XmDRMQ3Jg@mail.gmail.com>
Subject: Re: [PATCH V3 5/9] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
X-Proofpoint-GUID: Q2wGV0OdxH0XN4Aw7XaZVczN8nYOagIy
X-Proofpoint-ORIG-GUID: Q2wGV0OdxH0XN4Aw7XaZVczN8nYOagIy
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f8f56b cx=c_pps a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=1tzRQYHw1gqR9l_dhREA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504110069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_035645_917981_ED92B327 
X-CRM114-Status: GOOD (  24.60  )
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

On Fri, 11 Apr 2025 at 13:42, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
>
>
> On 4/11/2025 1:39 AM, Dmitry Baryshkov wrote:
> > On Thu, Apr 10, 2025 at 02:30:58PM +0530, Nitin Rawat wrote:
> >> Simplify the qcom ufs phy driver by inlining qmp_ufs_com_init() into
> >> qmp_ufs_power_on(). This change removes unnecessary function calls and
> >> ensures that the initialization logic is directly within the power-on
> >> routine, maintaining the same functionality.
> >
> > Which problem is this patch trying to solve?
>
> Hi Dmitry,
>
> As part of the patch, I simplified the code by moving qmp_ufs_com_init
> inline to qmp_ufs_power_on, since qmp_ufs_power_on was merely calling
> qmp_ufs_com_init. This change eliminates unnecessary function call.

You again are describing what you did. Please start by stating the
problem or the issue.

>
> Regards,
> Nitin
>
>
>
> >
> >>
> >> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 44 ++++++++++---------------
> >>   1 file changed, 18 insertions(+), 26 deletions(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> index 12dad28cc1bd..2cc819089d71 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> @@ -1757,31 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
> >>      qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
> >>   }
> >>
> >> -static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> >> -{
> >> -    const struct qmp_phy_cfg *cfg = qmp->cfg;
> >> -    void __iomem *pcs = qmp->pcs;
> >> -    int ret;
> >> -
> >> -    ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> >> -    if (ret) {
> >> -            dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> >> -            return ret;
> >> -    }
> >> -
> >> -    ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
> >> -    if (ret)
> >> -            goto err_disable_regulators;
> >> -
> >> -    qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> >> -
> >> -    return 0;
> >> -
> >> -err_disable_regulators:
> >> -    regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> >> -
> >> -    return ret;
> >> -}
> >>
> >>   static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
> >>   {
> >> @@ -1799,10 +1774,27 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
> >>   static int qmp_ufs_power_on(struct phy *phy)
> >>   {
> >>      struct qmp_ufs *qmp = phy_get_drvdata(phy);
> >> +    const struct qmp_phy_cfg *cfg = qmp->cfg;
> >> +    void __iomem *pcs = qmp->pcs;
> >>      int ret;
> >> +
> >>      dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> >>
> >> -    ret = qmp_ufs_com_init(qmp);
> >> +    ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> >> +    if (ret) {
> >> +            dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> >> +            return ret;
> >> +    }
> >> +
> >> +    ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
> >> +    if (ret)
> >> +            goto err_disable_regulators;
> >> +
> >> +    qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> >> +    return 0;
> >> +
> >> +err_disable_regulators:
> >> +    regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> >>      return ret;
> >>   }
> >>
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
