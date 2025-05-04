Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43411C369DC
	for <linux-phy@archiver.kernel.org>; Sun,  4 May 2025 15:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQy/qPp75VesEj60zAonCZCisH0MS6V72aroJS2Dja8=; b=awuVXJyMUvXfZY
	V7iHbfbfwsiOXBv2lb1a8TIiZeoDxtf59V1Nj5A8XryBqsM0RO1WLebvWXvj1q7zCE0ROUN1Zf+xC
	kmEGgYf6l3MeMwC14lF8peQHd+BfHHeMsBV9DDPqY1QXE4Alw3e5tx5ik40szh6HOTgjrqoxsgigm
	VU8SsPhBO7Xy3dKZ5+5bu3s/qB2Az2rYdnRQXM1R50iqr75i7GefnGgCtRyXI5x5zoK0kWqVAZjGi
	JGy3+rEc1Ut/VL/JuQjDvQy9qZE//07hI+NTkzhBH+T0Z7lPwZTWM4tH4t2W9v2ltF3zwC6qeEx9V
	j2Q/D1FPPKt70dRxRz8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbiK-00000005a2i-05aD;
	Sun, 04 May 2025 15:57:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbiH-00000005a2J-3Ww9
	for linux-phy@lists.infradead.org;
	Sun, 04 May 2025 15:57:11 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544DIPPT015248
	for <linux-phy@lists.infradead.org>; Sun, 4 May 2025 15:57:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qDJRnfFVhNlqLE4SnUMJ5AQU
	UpLQygLk0SdVxycEvNs=; b=HG5PlqBa+pWyHyYu0qj5yZRDIn6itDuaQdkD78ND
	VvkI3XxhpzkqaO9qm99XnaALzXZWFpUWfcpZnWSnIbvpP7DoRG0pDlVyWi9iTVvD
	O9zNOLAQN8L5RiRTJnqKeHgmI4f3ue0PF6dF1sqmWDkjc4HPGrh/ZO0EvXnBJlPH
	SRSddE8biB3G3AcvatdLYyXIwW7+FAfFQP3R77LXiCCCU+wUr1ujxOmWC+ekw4a6
	ecBNZUCTIaJUr1k/t6zFzpAro39jL75nmDKCz5YyZ7yJpyrNRd4eZJZZjvHLF7cW
	YVzQeTxgxbwADex52R+oOoobviPu32ZxXUImiQp7EVJ7bA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dcakj2et-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 15:57:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4768a1420b6so71962441cf.1
        for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 08:57:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746374228; x=1746979028;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qDJRnfFVhNlqLE4SnUMJ5AQUUpLQygLk0SdVxycEvNs=;
        b=VlV+ZIWIoH7OIGgGBdLqAtFjeE++f/mhglTKitGibiUeLEUwg2pue0p080Njb0ts+v
         vWgBiUepaQWh9ithHQ39shf0N6yToFrNVYphElVUTtD3KoMO7+7Tl/57eRl/y1CV7ucF
         Eb++x40R4AadmltFJATWOiI8YN+hO0vzh44rnHpMlG4nhZchxNc0dZEsGTJFofA2O+dE
         EMrisUIFuPQDuLDi3BbnVLAU6p0jmHOk8AxIx2XTWQ6SMJwdW/sxQDAGkoGVASsjGpGJ
         QqciEII8yupQTYP9Khrc7lhPPp2agdg25U+g6lVI/PMBGVNUrkOfM9LDZTB7T4a08k60
         qrbA==
X-Forwarded-Encrypted: i=1; AJvYcCUASYfm0Y5+PIQ6n3/VTHXHeyaLine8EtS1Upm0Mz9ZcmRdJPVHkOqOJePGG6QGsg6oQ4HkPM/6Xyw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzBzRtaijzvr28GCk6Uz6GqePA04mki7s8i/QzOszdtj/1JWIz
	pFuEyScIpi7Fv8mDdG8AtcmBz5L7sAviZ78E6D+HypvqWKsb7fqi9aNfQdT5cjGAlxN22HiGN4a
	kdYJ66CD1SrQ84JQNxp//amD1IqtljtcFzQlo9l/RAepziMBTV5F4QidyjmScyzjp
X-Gm-Gg: ASbGncuA7ukksxCXHNb9kY58RQthLVTEbnk+skj17cSXG/DHAZyoZ0gu3U2TuPRlMFs
	xCC+V8g2mfCGU365q/q/CK+gBf5tl5eC6plHro0S70nc1MoMMv2ykdqsU1bmDPedNGraKtEEt00
	VTw6wlcQLciixUId3uic1JmhgztLwk3c0OTrkpTYTHB0zFU3ja5SDa+9b+CJHjMBut7Ldcsh7rL
	QvMmT0L4W661ytXac84UPBTKAfYGKY8ovPwjmATFUlFcwwlJMYlvcvxE38827oy+3ef0YjNEWeJ
	o7OsKHqUxkKRCOKlgyeUiyOZwXdNCeg+dWk30KgqdpADSmJSNk+I3qYf/NFZLO5c7bGeL/bAuAE
	=
X-Received: by 2002:a05:622a:1927:b0:476:b783:c94d with SMTP id d75a77b69052e-48d5d6eab60mr99066251cf.35.1746374228048;
        Sun, 04 May 2025 08:57:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl+RObbi8pYcCw562FT5x6OBUuklTXyziCWKvhn7Q2lEQWFRKfXZzHATAw30qGOY5a3VLc0Q==
X-Received: by 2002:a05:622a:1927:b0:476:b783:c94d with SMTP id d75a77b69052e-48d5d6eab60mr99065941cf.35.1746374227706;
        Sun, 04 May 2025 08:57:07 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f21f1sm1307550e87.200.2025.05.04.08.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 08:57:06 -0700 (PDT)
Date: Sun, 4 May 2025 18:57:05 +0300
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
Message-ID: <djippxc7ile62qzirggt5ry5wswgy3oabgeq5hpkambcm3aub7@dgnc6qtk5hvr>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-7-quic_nitirawa@quicinc.com>
 <prbe2guxzsea6aqonf32m44zp6oa3vzdf5ieazcontv4fmx3d3@2r4tu5nr2k4x>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <prbe2guxzsea6aqonf32m44zp6oa3vzdf5ieazcontv4fmx3d3@2r4tu5nr2k4x>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE0OCBTYWx0ZWRfX4R3k58IrdHeL
 WrX5AdFTEwbM+kPTzVnbtj/g3uqI28+n7tBfqxcF8Pszv1AxCrjMp+Z/hgXWAFPSJZXoAx/cS/s
 GwBMeW3y//ZjiYcGykK3/V+TRNG+vJtaAiTNEbjFn0TViwRaqThD4Bm91pFED8dmF2DN+FA+Oaw
 658GRJNroGNhMXYYCMgkSRksdodrLv5J0V8WwAZEqCiTGhv/E+9voxmi6NjW15yJPZZQeBzVPu3
 5zrnbp7L1gi2VIws3Q6OlF73HCtRHP5sRkvicvrRIm+JDcsbn+orDFHvKDLpF1XaJzkjiFxkg3E
 q2HfcDQt8mEUiIDCUTr4ZfnLKrwt2Nsb34RgSMM9zqOXmLoDKOgWE6aBTXwH0ViLFe3b3TdkRr1
 aF/ZhiNSN4eplHimlnMIohI59FMW3x5hH9tyn4WhhTAjgI2jgW60jQL84NbNnzfoc6uSxHdo
X-Proofpoint-ORIG-GUID: 33zHUN21KEzttrEXUrDdXhwarVUoieUb
X-Authority-Analysis: v=2.4 cv=JtvxrN4C c=1 sm=1 tr=0 ts=68178e55 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=cI0x3iWxgyh4Hys7y2EA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 33zHUN21KEzttrEXUrDdXhwarVUoieUb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 mlxscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015
 malwarescore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505040148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_085709_883118_B43F0E2A 
X-CRM114-Status: GOOD (  23.93  )
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

On Sun, May 04, 2025 at 06:37:41PM +0300, Dmitry Baryshkov wrote:
> On Sat, May 03, 2025 at 09:54:35PM +0530, Nitin Rawat wrote:
> > Rename qmp_ufs_disable to qmp_ufs_power_off to better represent its
> > functionality. Additionally, move the qmp_ufs_exit() call inside
> > qmp_ufs_power_off to preserve the functionality of .power_off.
> > 
> > There is no functional change.
> > 
> > Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 30 +++++++++----------------
> >  1 file changed, 11 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > index 94095393148c..c501223fc5f9 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > @@ -1835,6 +1835,15 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
> >  	return 0;
> >  }
> > 
> > +static int qmp_ufs_exit(struct phy *phy)
> > +{
> > +	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> > +
> > +	qmp_ufs_com_exit(qmp);
> 
> Just inline it, unless you have any other plans.

I mean, inline a call to qmp_ufs_com_exit() into qmp_ufs_power_off().

> 
> > +
> > +	return 0;
> > +}
> > +
> >  static int qmp_ufs_power_off(struct phy *phy)
> >  {
> >  	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> > @@ -1851,28 +1860,11 @@ static int qmp_ufs_power_off(struct phy *phy)
> >  	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> >  			SW_PWRDN);
> > 
> > -	return 0;
> > -}
> > -
> > -static int qmp_ufs_exit(struct phy *phy)
> > -{
> > -	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> > -
> > -	qmp_ufs_com_exit(qmp);
> > +	qmp_ufs_exit(phy);
> > 
> >  	return 0;
> >  }
> > 
> > -static int qmp_ufs_disable(struct phy *phy)
> > -{
> > -	int ret;
> > -
> > -	ret = qmp_ufs_power_off(phy);
> > -	if (ret)
> > -		return ret;
> > -	return qmp_ufs_exit(phy);
> > -}
> > -
> >  static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> >  {
> >  	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> > @@ -1921,7 +1913,7 @@ static int qmp_ufs_phy_init(struct phy *phy)
> >  static const struct phy_ops qcom_qmp_ufs_phy_ops = {
> >  	.init		= qmp_ufs_phy_init,
> >  	.power_on	= qmp_ufs_power_on,
> > -	.power_off	= qmp_ufs_disable,
> > +	.power_off	= qmp_ufs_power_off,
> >  	.calibrate	= qmp_ufs_phy_calibrate,
> >  	.set_mode	= qmp_ufs_set_mode,
> >  	.owner		= THIS_MODULE,
> > --
> > 2.48.1
> > 
> 
> -- 
> With best wishes
> Dmitry
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
