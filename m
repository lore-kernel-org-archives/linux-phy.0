Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F503107BCE9
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 09:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLgo0XVlSwtRz8NgH/INqYBcbhjJx7A0zAKlGYKcHUY=; b=QV33sSFcJK7Q9r
	fXLQ6FcXZbYmu72UfePd1NUbcJEeqFIhdy6PMcB+MiQKpdE8RY2GXWh/Gtvz9XwmdVvnvLTzSfo1H
	JBXSu6nq0DSQSGLawSn0ceATsSqsj6R9tnrGzc2EbdWhzXBOxi7fJ565y3I7HwCPhZZZOZKpkfJs/
	6Kd3gFfNMT9GfXJbijPZ2Aq42Sap2G9unIdAewAZWO+gQCsqeyEpisFtUoo3qceMDclDDM8blzaqw
	WrvPXMWPzxT64Nz9YaBjuxo8U/Ct1DX4A3nAC62waZAMntq2bh0fOutlW0soQE0zA0wv80QK1hhRF
	Di5aqv8b/h2xNuQEqQHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1L6I-00000001f3q-3BTq;
	Sat, 14 Mar 2026 09:16:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1L6G-00000001f3V-3UYv
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 09:16:01 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E3nrKI2907889
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 09:16:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZBG3oXb8KyJCWnPiyApKmVG9
	hVM2OlLptjpbh085dQ8=; b=CztVR16/SZRRYfoNoW8X1XW1MQHPIvJyiZXXum6S
	D+C8RNMQT6US1NbCU2utbPGFnzxzxaeeGRQhvbucFJnpNXoBBii/UcOTG1InvTnl
	eexd4CH/bcZXiKdbFpJBdpUWHyAEFw7bMfYmq62ox/Q42Y5169n2z/t+b31oIA5O
	JHxEaoDDsMCaKYOvx5e41KESxZ8c/W/nezK9OVwsWeoumjUsEcmTYhXb9mzhGH7T
	uzZpcrvYQZumjH+obLm/T7yQq3rrlw+fGQg1gg8d5InA7qx+Zcldnp5CyZQF27mt
	hrN73L0CDF9+qC/atrYmyN1bteNDo8lLXIcW4CPoAA1UHg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw043gfh6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 09:16:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-509177a915aso265517801cf.1
        for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 02:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773479759; x=1774084559; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZBG3oXb8KyJCWnPiyApKmVG9hVM2OlLptjpbh085dQ8=;
        b=JyrVEMU0ckXk8Y03zbax7ZQZVrHg4gu9tY/qbHOeWHRznkxmelXNG1QjL4JP7H8EB9
         8IlWx3IWmVwIaU2YDkGWk6yNX0HwiMDMdLkH63CmqaHJo0TZEIXvJiSbuqrn+Y23lrDT
         gyFSdbtP5UAeQlHEGNWV604PENyvBWQey+rPvqTbqtk9SG9n42AxJ4dxX9qleTtYy+D+
         SGoAH+2UNjhcocP/1UnHCVCbrPY3kDH1vX/HsVMHGCn9jUk5wAw2Wg+wWvAiWenuDsuY
         soWNcTYSWAhinnMS2XCYsoUh4V1mi85YK5IITCpzFJA4CaI+cAxLD4WKNNBR6lAgAQNa
         g9bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773479759; x=1774084559;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZBG3oXb8KyJCWnPiyApKmVG9hVM2OlLptjpbh085dQ8=;
        b=SQeQZlggS+Bxn7f6EJveNMyR1pSWwDM1MthP+wTD9MGGzoI22YW/vEI8U/MBADLApq
         KQqQG9MdTmUNs/hyZHzIyRNKUhh8kqoQmKCz8pr9UXT+lEkLcbT5Yx3Jdahwwe5b42u8
         FiIQC9jOaPzPcPFEP5fComlJon/vFRmp28Hkg3ezL+5ro09wowTnag4AdHFZHOKd9Bq9
         w0QiqFUv/QPjhaXuDh7MGqanNofA3If2Ok2p4SLOAvaVn75huLzrTIJ3zZgvQsOqllJy
         hxCt3VIUUDByoajOb6DDpU5onM6T6RKz60v0CwsfM1iVnb3rI6OICNNHqKpQLGTDihz1
         1Uxw==
X-Forwarded-Encrypted: i=1; AJvYcCVKXLxQsrDBGvP6gE3ZHXJePwB6IoJOTnPacb0QT3WbMAq7wlEXIbpsqzz08nhOMxkBMSkFXnek4G4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwP/6yuACR5RZAeMqdz3uNugkIgI1H5rLVwEOVw91D+1tsgpnSq
	Xsx4sGWmURFUD+vX85l+sC5eDPZLw5fmNqi89ic1phJ08998u/UP0gTJ3YXXkYeGyNjZsp5FyF3
	7rwVrjvAGe2dgy/+y1KDKFNLN87kseTpl46Nd2pz7FPDPaAlDOPepMv2XqdtWG+SQgv2A
X-Gm-Gg: ATEYQzz0N+TM4Ph7oYVE6ezGPeeF1VDaUvzhy1G3kgxhF1bzMxctaeT5Ffn/mBB5Id1
	/mH8h9AOhotgvkKp+LKO0Dum445lWzoIENT110wefhVzlbgdVRamYBqegeaBj8RURiQB29jIrI/
	itC+OErhJM6M6hI+TJqv5FchP1rUzJrCCSLdSP+axn0x9PF6y50TvIHXTR2URIyQtukAU9+YG6d
	TiWL8vJpXmLGOuOPEmAzxqfuxEqOPu0++HV3YpbcVUabM6h0lpR6lL7cyjDNiQTGMRJx4UG/0yi
	hXh+WktLXleVoxS7u487qEFJxxxtJADff8AkX9dKGLlXjGzAfa6YpSWNgo/P03In6+V3fr1+CFG
	OKHMI1D+5KVSTn4WgUTLY311GekkNqdM3jbwrDxhHfmDw1PgyjSVjjdXRPFtBxNfJcC79AcuKal
	y/s+Ux0qdQhzYw6ybtsoS9/oXji7B9gSJ8BKI=
X-Received: by 2002:ac8:7c4b:0:b0:4ff:b32b:cdf9 with SMTP id d75a77b69052e-509571a98e2mr75357081cf.14.1773479759184;
        Sat, 14 Mar 2026 02:15:59 -0700 (PDT)
X-Received: by 2002:ac8:7c4b:0:b0:4ff:b32b:cdf9 with SMTP id d75a77b69052e-509571a98e2mr75356911cf.14.1773479758726;
        Sat, 14 Mar 2026 02:15:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156358066sm2082333e87.63.2026.03.14.02.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 02:15:57 -0700 (PDT)
Date: Sat, 14 Mar 2026 11:15:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 6/6] phy: qcom-qmp: Make QSERDES TXRX v2 registers
 explicit
Message-ID: <sk7tou3vwfn2zikl67ugharyf24sxqi6fkx344pz4jwbr3uz6x@qbkhuzwru4b4>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
 <20260314051325.198137-7-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260314051325.198137-7-shengchao.guo@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDA3MSBTYWx0ZWRfXx923eWONmFG+
 2xizfe+ePKCE9NqcGf4cSXP2NDvTga2MOAaLj6vhVtZplQMq00HAiHosNpOf3gguiRqBbxHG5bt
 ohzTsGApFjpgUZeB0+z2PJYIybi0qSITUITM6EjH3smfwvUwaF5NMab78uTSPGkHo22EHEiPLTF
 KuXMKP01TsFWs/aCWBhyyQS0F2mgDx+FBkeFbaprGHDISD6IpPqmM2OPPTEKJSg4Q6JtRL/IuVG
 xWnaC7Ch7IgMkCwIqiTHs5VT4+cusqg9xX1xWc2QeN4a6FJ6eMHygmBbbJdxqdJhbUd2YkAMHed
 cpSSYndixV17lhxvaLwYFjart90UaWTDqu0TL3fezhYWTgEhvoR/dB+XAlePK+1v5deEtlvDSS2
 Uywd2XH4UtfvkvhapRv/P5/1aVP1dQURi+oM+PqvS3sLrNAHM/y+RES+4AtwXHvCoUIz6W95FTp
 aud8Qr/qc3P3UCan0WA==
X-Proofpoint-GUID: q8xFVtqsYDwRq_5gLdtcFbaatlQNZhOZ
X-Authority-Analysis: v=2.4 cv=fLs0HJae c=1 sm=1 tr=0 ts=69b52750 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=DXW28Tf_i80TwAerqmoA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: q8xFVtqsYDwRq_5gLdtcFbaatlQNZhOZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603140071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_021600_896799_78BA69A1 
X-CRM114-Status: GOOD (  10.96  )
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

On Sat, Mar 14, 2026 at 01:13:25PM +0800, Shawn Guo wrote:
> Rename QSERDES TXRX v2 registers and the header to make version
> explicit.
> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  24 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  50 ++---
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h   | 205 ++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h  | 205 ------------------
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  60 ++---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  74 +++----
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   3 +-
>  7 files changed, 310 insertions(+), 311 deletions(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h
>  delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
