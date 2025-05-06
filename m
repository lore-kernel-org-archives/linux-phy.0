Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22C57C3ABAC
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 14:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZfMSFQ1Bi/RxpQ5/zEI0LCtYFPDaBEGPbcSJ31Py74=; b=rm+cFq2PEWcv3d
	rsveguBHqKAL2Ar/Iez08Q0oMs08BglyGSx9gE2vIpQpOI9KnkZmaxHzjQaUXE/aasGvViof73kv0
	NCHux05Lx32ExqKJC1ziZ3Irp3HJKRBSD+lfu1vVTp2VQSvpvEkNKnqyk+7huoluZZjm3oxla2fP8
	sAFYbbyX3TfQ7+Jr/ir5+zhQMuWVEKGjtinyj8+t1Ek13/+tevrZIJFa3v7RNG2QunfTxpruiYIJk
	9MjRfZabDz+eLCoHRZ0EpT8J1uJ5yRnSDBm8KWG5rVCtok9ii0eMyuwD9PCfZjk4AN5xgsWy3O+NF
	OST9361RqzFtQ+Bb/tzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCJVk-0000000CMit-2jYF;
	Tue, 06 May 2025 14:43:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCGrX-0000000BoEP-2l9K
	for linux-phy@lists.infradead.org;
	Tue, 06 May 2025 11:53:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5468jv6i014073
	for <linux-phy@lists.infradead.org>; Tue, 6 May 2025 11:53:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=e2/mPm2rqjVa2UWZk3lLu/r9
	DrwqHykiPCnvgPRDP9Q=; b=W8p8CWkdl/U+Jl7zrxWRaneUa1lmPnoS8SdufiqB
	FssFDDUwKJkhUqZY6lLPezliomZilDA+PnRq9K0UP0W2m8BGqi1qZnJTWXkRImKN
	o5YRwnKMRBe7Pbb1yVc1KdPFe+/8FrI0sR6WduZV70EwstczDd80CF8Y9HOCVslL
	XYD3DHM7TtVWCLNH7aX+HIphJ5xECs4Xje06wcczOwDChkS7I76EkQYGSiETkWoq
	BqXgIzLLUW1irjjpQo2k2fmh0rA8dw2g9t+gGN3jhCRdgH0lCV+mQU4sv4IMG8Nc
	JoCj0GAus7uorHVDy9M1fbHFqb0VTReBu2BcDGgllvN8KA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46f5u425dq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 May 2025 11:53:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4768a1420b6so107324501cf.1
        for <linux-phy@lists.infradead.org>; Tue, 06 May 2025 04:53:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746532405; x=1747137205;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e2/mPm2rqjVa2UWZk3lLu/r9DrwqHykiPCnvgPRDP9Q=;
        b=QeH32KbCBpFQELPknC0tnJ1c5TB9SuuvZa5gC7A0+du4xajh8yldlbTKhjmko1L0Yh
         oA4JOD6AwVpiywtc4IO8G5LT7PI8jEMMVbgpzlj8F2inq+8x5INR5GmDbU+KlR7PI0C8
         2aT4qoEuy+RyIT+Ioo4HeN2WtFMDVmclOpjsdEvYaGJ7OsMLOHsaGbsr7KIj6yrE7TCg
         L6pfrwsstbq/zWD/fCMUgEc1jqixLxRBcJ7ZrVXSWBSnZWWnVmLON+bbtPbdzBWWGjAT
         BDkWBfHBSpB5KU7JzjjK4IUtTdl4l2JGlEJ7v3ROLffTwHgGxrEzcNWyRnniYYF/YeE5
         LDZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL2yGgZE/DOiGpzSfGsaOG/X9nYNKoOWbKZl1cCjnxIBjDTzKT/zYQG42dXjyufHjhge6umv9TvAE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHzE6umRHrib+/4vvv4dvnffo+wpR0btp1e50VysNKyoM4pKuE
	VwcVZB+tF8W72/ytsoJQkDG+u3Q2BGaUDZVR4bJNq+3mvZVGR9tz07oaj5uEQHhiCtOQK3IVwQo
	nnNy9WAMJ11M2iwW/3V4WnwoRMdBgSXkp9jt6InEs0dqAntF780eDFyY1d+Ytw8UG
X-Gm-Gg: ASbGnctLGGtx62mo8aHtSb4+U1/YKyRoUp/AcSvdxHVQanQzz+fEpdQXBYGYTt6CnF+
	v5qP3OTZMagOakClVjyIK+snBzd7SypjAVtXMIff7P6wiGVBH1W4kVNIPnLHTcRCKhzj+SPeUCv
	BVHUDy3j+098llu4JJtRba4nSNtfertGPa8R5YlRnAiWy0WQ10GqPy+hrMJ1twYTG36Ikh+Tqm6
	hER1OMdqp91yXXLSGjf3xH5EkZMHtsLKx1XXsr39irBQ1J7LoQL3gLqCSczGhowAXPf6w6P1mLr
	5DR/7q/v7BF52DhscRuuIyBQ+z003SVsA4dHm+r4MUD9E64C6fJnyzd8zk6dKkhkbsYWZZd1nig
	=
X-Received: by 2002:a05:622a:7a87:b0:491:20d6:75ff with SMTP id d75a77b69052e-49120d6761amr30624951cf.31.1746532405079;
        Tue, 06 May 2025 04:53:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXOcFjlZPXrhnZADw3wS6Inb1dGDnsA/hWap6iVGRk+I76OYADv+/Pc/bqYfbWLm93Pti8hg==
X-Received: by 2002:a05:622a:7a87:b0:491:20d6:75ff with SMTP id d75a77b69052e-49120d6761amr30624541cf.31.1746532404657;
        Tue, 06 May 2025 04:53:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f6a7bsm2020949e87.222.2025.05.06.04.53.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 04:53:23 -0700 (PDT)
Date: Tue, 6 May 2025 14:53:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V4 06/11] phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
Message-ID: <qhblitwmuhnb7axrflsqh7pmshmhrehh2hina23k6zqq7mhafv@xtsl376cyooy>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-7-quic_nitirawa@quicinc.com>
 <prbe2guxzsea6aqonf32m44zp6oa3vzdf5ieazcontv4fmx3d3@2r4tu5nr2k4x>
 <2191c270-f4fc-47e4-8bb7-ba6329332ef3@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2191c270-f4fc-47e4-8bb7-ba6329332ef3@quicinc.com>
X-Authority-Analysis: v=2.4 cv=KcfSsRYD c=1 sm=1 tr=0 ts=6819f835 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=mhj7_-Pg-QKlZrooJR8A:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: JhXgQgxTbZn2HD6UswKxscQ0kBYSBWFo
X-Proofpoint-ORIG-GUID: JhXgQgxTbZn2HD6UswKxscQ0kBYSBWFo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDExNCBTYWx0ZWRfX/CaNkUOK4P2A
 rSTeIDMq7yCDc8w0DO7ot90xfEhJ1tNsZsScb1Vskkcv2N8rof0OZWexFWMpFkkZBKeFxosTf5y
 Q++CNva9nLHWdUf0nctzkdimFHq2Yax74us3SUWdxYfCVY3psR0PfclZ573WLm9W0G4Mp8gwbC0
 i9Kbv9r1QesmXpdHRGhh/NiaASXZWSfN3bRMygsdhgfhMvVqNM1JkbID0HIcSZW3a0TWm/tFAQs
 diMViit1M/FOYNZl05FxmFJiAwT52RwBjeg9cIihPVuFQfSaHgFMQ8oE3n48cgO9LLlPM2ef/ii
 lEio1qDvrUvIGQV28BdH9Pc8A9L6EC4+c1PO8yytiYe73LDng2IDaQWaKqTlYFyxFS5SWQ2BMxN
 /fs0xbwJLzJZhC6TuAt6milzUK1wWSRqOk2o2uA9SJm9PpdHU/Fxb/YRFCfhDqIIa8hbV7bV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999
 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_045327_818556_6C885EF1 
X-CRM114-Status: GOOD (  28.27  )
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

On Sun, May 04, 2025 at 09:22:06PM +0530, Nitin Rawat wrote:
> 
> 
> On 5/4/2025 9:07 PM, Dmitry Baryshkov wrote:
> > On Sat, May 03, 2025 at 09:54:35PM +0530, Nitin Rawat wrote:
> > > Rename qmp_ufs_disable to qmp_ufs_power_off to better represent its
> > > functionality. Additionally, move the qmp_ufs_exit() call inside
> > > qmp_ufs_power_off to preserve the functionality of .power_off.
> > > 
> > > There is no functional change.
> > > 
> > > Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 30 +++++++++----------------
> > >   1 file changed, 11 insertions(+), 19 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > index 94095393148c..c501223fc5f9 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > @@ -1835,6 +1835,15 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
> > >   	return 0;
> > >   }
> > > 
> > > +static int qmp_ufs_exit(struct phy *phy)
> > > +{
> > > +	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> > > +
> > > +	qmp_ufs_com_exit(qmp);
> > 
> > Just inline it, unless you have any other plans.
> 
> Hi Dmitry,
> 
> I have inlined qcom_ufs_com_exit in patch #7 of the same series. I separated
> it into a different patch to keep each patch simpler.

You have inlined qmp_ufs_com_exit() contents. Here I've asked you to
inline qmp_ufs_exit(), keeping qmp_ufs_com_exit() as is.

> 
> Could you please review patch #7 and share your thoughts.
> 
> [PATCH V4 07/11] phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and Inline
> qmp_ufs_com_exit().
> 
> 
> Regards,
> Nitin
> 
> 
> > 
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >   static int qmp_ufs_power_off(struct phy *phy)
> > >   {
> > >   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> > > @@ -1851,28 +1860,11 @@ static int qmp_ufs_power_off(struct phy *phy)
> > >   	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> > >   			SW_PWRDN);
> > > 
> > > -	return 0;
> > > -}
> > > -
> > > -static int qmp_ufs_exit(struct phy *phy)
> > > -{
> > > -	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> > > -
> > > -	qmp_ufs_com_exit(qmp);
> > > +	qmp_ufs_exit(phy);
> > > 
> > >   	return 0;
> > >   }
> > > 
> > > -static int qmp_ufs_disable(struct phy *phy)
> > > -{
> > > -	int ret;
> > > -
> > > -	ret = qmp_ufs_power_off(phy);
> > > -	if (ret)
> > > -		return ret;
> > > -	return qmp_ufs_exit(phy);
> > > -}
> > > -
> > >   static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> > >   {
> > >   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> > > @@ -1921,7 +1913,7 @@ static int qmp_ufs_phy_init(struct phy *phy)
> > >   static const struct phy_ops qcom_qmp_ufs_phy_ops = {
> > >   	.init		= qmp_ufs_phy_init,
> > >   	.power_on	= qmp_ufs_power_on,
> > > -	.power_off	= qmp_ufs_disable,
> > > +	.power_off	= qmp_ufs_power_off,
> > >   	.calibrate	= qmp_ufs_phy_calibrate,
> > >   	.set_mode	= qmp_ufs_set_mode,
> > >   	.owner		= THIS_MODULE,
> > > --
> > > 2.48.1
> > > 
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
