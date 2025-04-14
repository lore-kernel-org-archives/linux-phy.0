Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CEC7C369B2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 07:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEmdC4v5Rb2BFCGIDQm6Z5My6CzB1geS0DXM/RVB7AU=; b=1FaXrTV694o68x
	09xin6vTDtwFr9FNFZYxqeR7pAqNIdLK75YdacBNqNEfxFRbwAkv9OF0aYzFfoPnoIvcDhL/Qnd+M
	I1cSFfS3E47KzVEj34NB9j/R4DVBpUd40LGeqLq33Ebb3NmarIijtu7Ug8aC7/q9YXWQQHYJ/gLZB
	Mq32vkD+iMQYJa+DXqcGmC0OrH9PPlWWcRRj8qyE/72hR2on8YrD158au0U1WxWf3q0HkmHeKpU7R
	AkwHhwt0dCsD9ugF2zYxsEC5jP4uV4lWq0ZcHLq6mPStVVUAP7pythCd7Y8ZnBaf5rDCfr7Dm2+B1
	I6Acch3AQhZlSUkjDFvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4EWN-00000000z3Y-3uIp;
	Mon, 14 Apr 2025 07:46:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4ETP-00000000yUp-2f8Y
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 07:43:22 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53DNkMN8002357
	for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 07:43:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Um1Ee0fatfSrCr9mgfrQaagy
	x2fBqusvxToSaiBP3Q0=; b=kvtWch+ZdYjXuycHx3pXD8GetCiRqYKLmtbPNll1
	EUrbuB0WMT9iBY0LIWApw19lumo9tkNyOj+7SSgvW0WXCM+Jp35Cc/f+tD0WpJD5
	HGhxmLzX3Je49Yb2zdWdnmTkB7T2IcFeoRjMP+ivOibKt3ggrXqoaI18mWZoPnjY
	vOeyZ/SnDj82DoBh4e3MNTLjxVl1N5xa1BtfqPJsbLhruLrQVH9tpjHC/ijIUnD1
	WoScX45w96aaA48CkqPh2Dsn8XYIc5n7kvjgdfSy1CGpBOuqPZ7RueLIcH5NP+Mt
	knEU20PwYBJM/TW9klPLZoJZeZxo9uYVyu2wrbfmaU2WTg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf4vbs44-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 07:43:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c760637fe5so757488785a.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 00:43:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744616597; x=1745221397;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Um1Ee0fatfSrCr9mgfrQaagyx2fBqusvxToSaiBP3Q0=;
        b=njPMPXsNnEApanHHy010tDJmc+y7k9N5PBU+SfIMrjbbQntYoSIJgxYzRM0djdmo3Y
         OW9pS+UmjMn2ynjAN0wost9d6sSN/UGt8M+WLtUl+94qwgmLqlIsBLdiTbAOjdobEe5g
         ZBIkHl0BTLXeF6X+Mkj3W/rE27kqOUbD4XnZP9lug8aFM3ub/a/SgxeD/5cwc2pHrHmC
         +1SC7qloACZf6yHS08c8BEN86WPiVYHUXNfro0kVVhLxEKSEOs9kkw5d+C+C/h2YC3QD
         9vVlzm/I4Ppyy1v+8lz+2lwH78rtl7DQbTwhHTiZBXWMkXob0RSCnYg5U5wL+Kz5AvJm
         J7xw==
X-Forwarded-Encrypted: i=1; AJvYcCWQGB8/2vX1afSBdxNF1TG5hABCa4CwTuGDwcPgJVFjf5FFkVYYIJAW7EnDC73saoGy3TXPYLjo/N8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFPgDOPiEKT1tyPo92mk7beoi0MINoXkWe6UX8HEUAytUMilnB
	7UOtRqeGerHSLefFcO4Lv0+I1uyQYi7oGLeaHfqIOU0ZpRar4yOnvZPD7+bBHy1/OPKFLRa/8ps
	pspq3JiA0eq78qm7AAL5fnXB0aAX9EoMRvdfQlEGJBCieXaImpjLMSdmZCY9oeEhI
X-Gm-Gg: ASbGncui/tkvKjwkQ2c94b7llYPK2OnxZMMd2YW3OUVzk1msRpBfJaDDjSG9GCVTNKM
	S4xWvFQMvZ6Ao2pLkb8QtryVs3nLrxct8gWnd8Ya9KZ/7p/B8Ix3dVDneKW9UcfW0+X96BKTLjD
	4CRdL0HKNj6JFivWcROO3MlBw7oVeFzIUtEXZW6mxBDJJnAYZjE6hDkQLJ0MP5Lruc2ylI7w6JC
	/VXNpNTarKl7Ixi4IbJeXjqO7MayFNi8nfBP/nQReeB6CeadSMaCXqM3WI+g4RIAbcT0pQ+AY+P
	sJ9F/aeqWJRsZ+kjZbhKh13wN9tn5OAMpukoiWiU1BHhc3GP3VOKOtb1Y7UhPeqZ6hBuKI3Ck2M
	=
X-Received: by 2002:a05:620a:2901:b0:7c5:49b7:237c with SMTP id af79cd13be357-7c7af14b0ccmr1859508085a.27.1744616596731;
        Mon, 14 Apr 2025 00:43:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPTDvjXIU4+/YUQdJ7lFbDzmq8UiSQ+ZiaVzIf5dqB0Tzb8PIW8irySrnFsWhJsN4u3ncKaw==
X-Received: by 2002:a05:620a:2901:b0:7c5:49b7:237c with SMTP id af79cd13be357-7c7af14b0ccmr1859504585a.27.1744616596134;
        Mon, 14 Apr 2025 00:43:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465d514csm15946351fa.78.2025.04.14.00.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 00:43:15 -0700 (PDT)
Date: Mon, 14 Apr 2025 10:43:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V3 5/9] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
Message-ID: <sajcoh34gyfcvhik3yairil65guvp2rt2xdmbmlpmlcjvst5ci@qojbxhmrnrxj>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-6-quic_nitirawa@quicinc.com>
 <zvc3gf7mek7u46wlcrjak3j2hihj4vfgdwpdzjhvnxxowuyvsr@hlra5bmz5ign>
 <4557abf9-bcd2-4a06-8161-43ad5047b277@quicinc.com>
 <CAO9ioeXyDWOhe1cbGO_tR=ppZd1aC0GSdeMzQjir4XmDRMQ3Jg@mail.gmail.com>
 <64216a90-e2e0-435c-87bc-388c72a702c0@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64216a90-e2e0-435c-87bc-388c72a702c0@quicinc.com>
X-Proofpoint-ORIG-GUID: 2PHQUmSEF3h02tq3Jb0xJY98bn9mFSmc
X-Authority-Analysis: v=2.4 cv=IZ6HWXqa c=1 sm=1 tr=0 ts=67fcbc96 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=IG52YttmCyEg0bf6y1UA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 2PHQUmSEF3h02tq3Jb0xJY98bn9mFSmc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_004319_685615_53DC4000 
X-CRM114-Status: GOOD (  32.36  )
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

On Mon, Apr 14, 2025 at 12:58:48PM +0530, Nitin Rawat wrote:
> 
> 
> On 4/11/2025 4:26 PM, Dmitry Baryshkov wrote:
> > On Fri, 11 Apr 2025 at 13:42, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
> > > 
> > > 
> > > 
> > > On 4/11/2025 1:39 AM, Dmitry Baryshkov wrote:
> > > > On Thu, Apr 10, 2025 at 02:30:58PM +0530, Nitin Rawat wrote:
> > > > > Simplify the qcom ufs phy driver by inlining qmp_ufs_com_init() into
> > > > > qmp_ufs_power_on(). This change removes unnecessary function calls and
> > > > > ensures that the initialization logic is directly within the power-on
> > > > > routine, maintaining the same functionality.
> > > > 
> > > > Which problem is this patch trying to solve?
> > > 
> > > Hi Dmitry,
> > > 
> > > As part of the patch, I simplified the code by moving qmp_ufs_com_init
> > > inline to qmp_ufs_power_on, since qmp_ufs_power_on was merely calling
> > > qmp_ufs_com_init. This change eliminates unnecessary function call.
> > 
> > You again are describing what you did. Please start by stating the
> > problem or the issue.
> > 
> > > 
> Hi Dmitry,
> 
> Sure, will update the commit with "problem" first in the next patchset when
> I post.

Before posting the next iteration, maybe you can respond inline? It well
might be that there is no problem to solve.

> 
> Thanks,
> Nitin
> 
> > > Regards,
> > > Nitin
> > > 
> > > 
> > > 
> > > > 
> > > > > 
> > > > > Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> > > > > ---
> > > > >    drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 44 ++++++++++---------------
> > > > >    1 file changed, 18 insertions(+), 26 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > > > index 12dad28cc1bd..2cc819089d71 100644
> > > > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > > > @@ -1757,31 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
> > > > >       qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
> > > > >    }
> > > > > 
> > > > > -static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> > > > > -{
> > > > > -    const struct qmp_phy_cfg *cfg = qmp->cfg;
> > > > > -    void __iomem *pcs = qmp->pcs;
> > > > > -    int ret;
> > > > > -
> > > > > -    ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> > > > > -    if (ret) {
> > > > > -            dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> > > > > -            return ret;
> > > > > -    }
> > > > > -
> > > > > -    ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
> > > > > -    if (ret)
> > > > > -            goto err_disable_regulators;
> > > > > -
> > > > > -    qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> > > > > -
> > > > > -    return 0;
> > > > > -
> > > > > -err_disable_regulators:
> > > > > -    regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> > > > > -
> > > > > -    return ret;
> > > > > -}
> > > > > 
> > > > >    static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
> > > > >    {
> > > > > @@ -1799,10 +1774,27 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
> > > > >    static int qmp_ufs_power_on(struct phy *phy)
> > > > >    {
> > > > >       struct qmp_ufs *qmp = phy_get_drvdata(phy);
> > > > > +    const struct qmp_phy_cfg *cfg = qmp->cfg;
> > > > > +    void __iomem *pcs = qmp->pcs;
> > > > >       int ret;
> > > > > +
> > > > >       dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> > > > > 
> > > > > -    ret = qmp_ufs_com_init(qmp);
> > > > > +    ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> > > > > +    if (ret) {
> > > > > +            dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> > > > > +            return ret;
> > > > > +    }
> > > > > +
> > > > > +    ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
> > > > > +    if (ret)
> > > > > +            goto err_disable_regulators;
> > > > > +
> > > > > +    qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> > > > > +    return 0;
> > > > > +
> > > > > +err_disable_regulators:
> > > > > +    regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> > > > >       return ret;
> > > > >    }
> > > > > 
> > > > > --
> > > > > 2.48.1
> > > > > 
> > > > 
> > > 
> > 
> > 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
