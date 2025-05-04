Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC241C369DC
	for <linux-phy@archiver.kernel.org>; Sun,  4 May 2025 15:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DSgDQFD0Q5Og9M+RVD9OwB/W3q0cfJ0OJ5bfaa93IE=; b=3Ins6rXfVvf0u9
	6KNhMXHEpcMhhmDfGPyxGmi2EqZooniQWUW+5xHMOiFsoH+fKLaACLhiOajyoq7KgMnEg0bbN0Nro
	Aa3qpogdHalWBci+jQs5VMnGItOrfF9YOPK48ayfRySMR3TeGcGp2TEofAShtfxfkcFdRtiFMU5M5
	5fVaFoOF/xYM8QJxqdb6qbppzQZZdxaAGFvgAnIfzF4WIe8lt84+USaFoAeNBxOECY/WR8IkwNpV4
	Ok8INS58eU4+rn8O9HkBsY8ZEXPwVCub8GOv7i8ErIwuO+uuW12KU9nDALgwjA1z5H086Wb0+WsvB
	LtFy9Hot5m7f/wA93TAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbIa-00000005Wj8-28BO;
	Sun, 04 May 2025 15:30:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbFr-00000005Vm2-1y9M
	for linux-phy@lists.infradead.org;
	Sun, 04 May 2025 15:27:48 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544BqIUt002820
	for <linux-phy@lists.infradead.org>; Sun, 4 May 2025 15:27:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uMiOZyNbZ5taHnkDse6HWXJ6
	dUdIIbmPQ3Vxz/Yy7xI=; b=OEjiQ9svz1JEfaxj2JOruNUd826815zcljHZNM/i
	MyxtwzNfmBwd3UMcPzkt2dqVE5sfBBjJPA+GYtHqP0XdbjeQL+WIxReGWvCG9JGT
	q0IzTeWwrFRREV58xBnBKgtKHSCAsO6czaGLTZfoZTQmqFNaQfp/Cy30uE4s8iDx
	5baCw6/DIviJNWSaiQRzoPxB5uIrVrJ1wbJsJTr+uI1BmkB4I/3KYcTgSVIDUFnA
	Fh3bWVKzoAOpGGrr3bbayRPXMGvHul5FTP0r8dtFM3kSSQlwSdJs6IhKTBS7SLYM
	oGAl5sXC5Ta8mrUBQSlUhVFtJhGPaS8StNthjlSnISCDtA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbh7a3ej-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 15:27:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c9305d29abso715653985a.1
        for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 08:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746372458; x=1746977258;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uMiOZyNbZ5taHnkDse6HWXJ6dUdIIbmPQ3Vxz/Yy7xI=;
        b=o5+1dPPAk6AFRFGkb2qWSSiBnghaFHdVA/T6Ipq3FZPKsiNt6fSyzgLSZiLFZZc4l9
         2Uwcy3GvdYeFxbtb3Wg/qTI4WFMfU90hrmPyBOJ3Vir+OUUz+aP43bRsvhZNLdqx9atQ
         IazFpKuHhohm4yZrKn0KKqcvVSADOs9dDhglQ9ZLSiBg4CQdVjaukN2k2wmMpxhWIDfK
         mOkU0KjGWJa6/xqfpUrfQBsd0pzTLVAC60iiOu+PsBUqJZ8Rhv5ifRgCPqIVYpB8otBX
         K1IuIR+2gmMpGJeyDcZG4rtMw1/vv5hae+jiyHRnxQeUR0DmvZavyG7sFQ1NqlmNXxki
         6REw==
X-Forwarded-Encrypted: i=1; AJvYcCXaMBqRU4shmL/4r08fgG4iDu3a/bA++7a7sNvWr0A3oODYQrlVbWZC2fRCzcnGkpFP7BMe22Pe02s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFY2RI5CWxwbSMnDR9jZbYVKrb6sjl3GI0WVCfCTKAd4JWg5Uz
	2g1sE3wpV5Y/KPPvaiDy0DWnweIl85++J+cP6WNJyfUF/f93LvruR029qKdL/a+PJgW2/dWFHDc
	XPvbRc5d2rzVM7u+wpY7OMPnz6lC0oqGo494x+HjA2PRd3PMSTGs8IXhhkGVxcWvL
X-Gm-Gg: ASbGnctvSyFlDGxMCv6qeV55Q1ERKfS78q/JTPhGJsMM0ax4fJFd4hv1w+h/3BOFuoK
	Qpa/+e3bxeXxC2zjRpXnVqifiNwpaVLVp5n/q+ef67fr+vgKrNdAyKPB17YtUvTTEM6UhysBW6R
	uj9/v9VZSX0sJ00SGzr5/rrGqeh50GUp51o4T1T3krKPjO1DqU29yNvzsXNil5IaGYd9ZK9hwgW
	uzKMCB+i7UHYqesMe5jXBlGyne4pyg8vDz4MxrcoHjDEHUd3oitqoU9Z3MC+J29BmMySG9Og9kY
	R4phj835KLKZ/il1kE91bOUCUUDU7cHx/EGQo6nrUJD6cQIuOCnUct1YX7WRicBY6FwpJ82uIw4
	=
X-Received: by 2002:a05:620a:454d:b0:7c9:2537:be51 with SMTP id af79cd13be357-7cadfdd5c66mr743898285a.24.1746372458208;
        Sun, 04 May 2025 08:27:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVX+z7TEc6vt6ylfXVwNT1h9JQA48LH+Jzgzss3FvyThLUZMiNGTS8I+avTmoIzuwv2wL0/w==
X-Received: by 2002:a05:620a:454d:b0:7c9:2537:be51 with SMTP id af79cd13be357-7cadfdd5c66mr743895685a.24.1746372457874;
        Sun, 04 May 2025 08:27:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94b179bsm1291505e87.27.2025.05.04.08.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 08:27:37 -0700 (PDT)
Date: Sun, 4 May 2025 18:27:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V4 04/11] phy: qcom-qmp-ufs: Refactor UFS PHY reset
Message-ID: <4nfhtdavca4aqiqfct2wvqdwq5kskfzh5kffnz7utnyreiichw@giixjxypwdcq>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-5-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250503162440.2954-5-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=fMY53Yae c=1 sm=1 tr=0 ts=68178770 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=eTLblWtPMpn9__zQJdEA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 0nfdFjebRt10tZ-okFiP2h7OZnYLiHJJ
X-Proofpoint-ORIG-GUID: 0nfdFjebRt10tZ-okFiP2h7OZnYLiHJJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE0NSBTYWx0ZWRfX9EBdmnbpXvKB
 BUmTueOxDJZXgk9HUl9M+u5hq6XivoAHpQKytkahDBJd21vxYKJi0DgRHkQEwNrEi4zXYN+p3L0
 KF2OhUCoU1iT4HNSGDzXbT573FNP1+t/UOvt7pvyTJIlQ7siJAew3SD/tGyw858nsRv71hke/lx
 K8hLEgEvxxkyZvwRdpdLo81//9aPabeTuSY29oVwnjthDsE19p9rC9NvN1l5MHuA/dWMl6K1x+Y
 L1ZhBRZ2u5ke4Rro+4dNJFHPN4FgICiWtY0GZjywzOCb6/WcUEcDcI6nkFo6IIxBi+vlg7+iWE1
 cek/NK2oMunLoLJ6rtwFW8Fhu6qfAp4jST+OBBEoj3guFaFJJ4VD/9TLAj5X0jGo85wOJCxFy9y
 kDAGd4rLfJ9gNO0h9BuSLm3rXNa0JPg2dftfVtimqZ7DmXwNRI1jqWD7yW7FRan58gmWMIhN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 spamscore=0 mlxscore=0
 adultscore=0 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505040145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_082747_632464_F7D8432F 
X-CRM114-Status: GOOD (  12.32  )
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

On Sat, May 03, 2025 at 09:54:33PM +0530, Nitin Rawat wrote:
> Refactor the UFS PHY reset handling to parse the reset logic only once
> during initialization, instead of every resume.
> 
> As part of this change, move the UFS PHY reset parsing logic from
> qmp_phy_power_on to the new qmp_ufs_phy_init function.
> 
> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 59 +++++++++++++------------
>  1 file changed, 31 insertions(+), 28 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
