Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89BDAC369DC
	for <linux-phy@archiver.kernel.org>; Sun,  4 May 2025 15:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/gzL744CPrWx4+LwyxsV7oGJPNtMUHn91HxYx0Jh3I=; b=qV/0ufREXzc+mq
	CRvXxwbM+7UTkeqZDHSV46os/1Vp7uHklxnT96TTM+hlajLJH6KYzwnn3kYYRW3JvvfL0ZTDZnPAK
	mvwJ4o87/5x+josKWK6U3nrH5HyyOL+B6wd34EDYBtG3ChKQprb1t+LYRukxsjtlS8ZMr4uEUvKIA
	6+GYGY4O8Tb8okTc9I7ttVYyEXDU6RaDCsRxYJi7gfl2YAlA+cYAKwEjc7pC6D50omZwfrw1qPy0N
	Q1IzNEUkfNg6bib4LBAOyB96XwayaVi3kWPLwQ2UBbj8kQN5QqCOXaWCWK9Ai5nlxPIWx3thljwym
	hQZR+Ys6ofkJo2/2MQeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbis-00000005a8i-1Mhf;
	Sun, 04 May 2025 15:57:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbio-00000005a8C-42kc
	for linux-phy@lists.infradead.org;
	Sun, 04 May 2025 15:57:45 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544EejNK007123
	for <linux-phy@lists.infradead.org>; Sun, 4 May 2025 15:57:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+NBQddzgvDX+iZ2tGFQkPQN/
	CB+FVzuOwSU6o3vai0k=; b=Muhs0tLxv4F0GjAsHtYTZwiV0aE1Ojbcs+DMkUy9
	aXJ4pj5l/4i+4GO4tSC02XrC5zsZeRwwSr4vthbo0cIwk5IO3dSxp4FOzJs8Prji
	3i6UxhQDSPKiOQBziC4yFtXe/NZghgLC2CJZHLEMarbctkn4NErxbhOGugXfHfAd
	GyMSa1mygawfFIs9ziSjaQ8oM9Q6HIzkTODSEM28B2uH3+lUxmA3MZBIcwc6BMbL
	TbTmS/lbB29to/muzTgyjjPEN081PnKqQRawsfQL4EHSnuHfTuIvyEAHHJzuS5rD
	gGPddG8+z7dq8tW4mg3C4LQrtzQMbmBUdNw1mCwy2l/8Fg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbh7a4qw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 15:57:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47ae87b5182so77140681cf.2
        for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 08:57:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746374256; x=1746979056;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+NBQddzgvDX+iZ2tGFQkPQN/CB+FVzuOwSU6o3vai0k=;
        b=IJShznxKLzsUEyfSxHDTN4lP0AoFdYdGWsutQC/uLXCFICK5L3q3PhecrGUiycxEc7
         mG2R+oz0yYkAwHXFTpcyb6oDtCnfQ7T9JYNl/5+cAD5/x8FWM2ZKwjRGqThyjsrjClQJ
         3R9ak6zcCaRMbcDqfHniL/9c+JEq6l9BroAQus2oJZiAgLIKgY8i8fxFQ2OYw+yg22hL
         bvFWjV2DC/K+SK3H6wO0o+mIaOftF/K3Dny9dBE5nIie/hu3g0BTmyu1of8V//HJSL5R
         EdT87bJ6TOSMpekHEITxvoDl6nzOz0TlqJkU06AahSxRMBy0sFoDzoeQCkDKzAqrIZqN
         eeNA==
X-Forwarded-Encrypted: i=1; AJvYcCW4ROk7AzWG9hrlXj5wk49E9z9pac7LPEtdTyVP4i9cTU7+9I2PBfiJdZrVqWB771QatAMtTm6pRg8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yya9a7mn7vV40UvHTV01zTid7V9K5QKCpDV06qqFCIHkw6ixaWw
	56skX8lZuI0uu93GWaEOqgfhyQcHiR2TU3jMMU5q7BvyK1aYk/FCV3jZ2gFsbfGgkuR9mHPI0lx
	VyWX2y2zf/UMvIgMcOsKfNiEi9zTzUgUR10ZOGZkJ4l9b9jBhP/7KwZAfRNTbDBE8
X-Gm-Gg: ASbGncv8sARaNGvMDLpXrDWnG5qmwSEnszUW9bUJdTzB5WN2GLSOccxmujzIbQdpMzf
	2oqsQtalKmi5xd75dKiuC/NOy6IdSVEaLGuxd0dupCdWnFLUJgHz2BmPHXIRuxLbAqnikiYQSr3
	v3/gSsA8Y8o0T3zA7zFowuf1KtcLitohT/1DbryVtIaK6zbONipmRRI0U8+YXGQudhU4WcKBE6w
	3fB73SaXiWBv74s/AwENZRUpEeJExgs985pS/2uZWqSrh4aCsg4ndm3zhC6mdm+8VcZihfSSRih
	n/DCrAJs2CkOYs+n1ckNiSqtnvDTzaQrr8PDFnwezBA1yHDdS4n2swtrtP90d/8NwMwuYDghe3o
	=
X-Received: by 2002:a05:622a:348:b0:477:1ee2:1260 with SMTP id d75a77b69052e-48dff3e17ebmr59557731cf.1.1746374256683;
        Sun, 04 May 2025 08:57:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4apz9O7p8cmIJktiBqV/ploX2tWp4mathpyShsF97cdRuhrFPCVNENtImRJjdMdTGiCcezw==
X-Received: by 2002:a05:622a:348:b0:477:1ee2:1260 with SMTP id d75a77b69052e-48dff3e17ebmr59557571cf.1.1746374256352;
        Sun, 04 May 2025 08:57:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202ad908aesm12406461fa.96.2025.05.04.08.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 08:57:35 -0700 (PDT)
Date: Sun, 4 May 2025 18:57:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V4 08/11] phy: qcom-qmp-ufs: refactor qmp_ufs_power_off
Message-ID: <vliufhbeztmvgoddhxsla5p4vmr75wmqf6iqlnqe7pnp3bobqi@thrwl33u22yi>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-9-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250503162440.2954-9-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=fMY53Yae c=1 sm=1 tr=0 ts=68178e75 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=1ySLA9CudziWiy2AdkMA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: t81hQFiC6Xs45PISOcMTKA55AV8WWx0x
X-Proofpoint-ORIG-GUID: t81hQFiC6Xs45PISOcMTKA55AV8WWx0x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE1MCBTYWx0ZWRfX04umDMue+lpA
 XEJvwOo5xRR+2bHeG8lFoxWrqcjEzXXjKxRWwTCagfzGGvfgN8GI9NArO+HGqWSX2Ix05xlIUEk
 61qmqnrsc3t2g54IvK7OzVxGv7JGI50mCnjuP7v0O336WByx7iRwrhMNB3NQRULULDVpdDrIdDv
 TIkmy4XDumluYzLcnQIw8Lk+dh4OuKfEJl3wHjWm4nPzoPa/RXvJpexWqNU97vkz3bMXmweEABG
 oZ5nxhAcASD3q3c+HFzdZXBcYSi2ZpL7crCY+G+aHmNAdrJUTEm3gUG/EfuR6jKXJKtUPG+WWIk
 TiJZ0MgaYZtYfChVPsji8dTxSSLMDcvwnCwh+y+aCFvWnWfVvWNvuP4S0jHeW8Y4FxtwfbgKKta
 u4UBGugi03TaU442TguSv04H1+JkEQ5ezaqAdZnc2KCHS+iiW02dfRGrV/ONBPEPD6r995o8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 mlxlogscore=719 malwarescore=0 spamscore=0 mlxscore=0
 adultscore=0 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505040150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_085743_124701_8BD4A6AD 
X-CRM114-Status: GOOD (  12.75  )
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

On Sat, May 03, 2025 at 09:54:37PM +0530, Nitin Rawat wrote:
> In qmp_ufs_power_off, the PHY is already powered down by asserting
> QPHY_PCS_POWER_DOWN_CONTROL. Therefore, additional phy_reset and
> stopping SerDes are unnecessary. Also this approach does not
> align with the phy HW programming guide.
> 
> Thus, refactor qmp_ufs_power_off to remove the phy_reset and stop
> SerDes calls to simplify the code and ensure alignment with the PHY
> HW programming guide.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 7 -------
>  1 file changed, 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
