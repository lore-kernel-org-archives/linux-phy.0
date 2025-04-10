Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC798C3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 03:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIqdCNOU0m7HPooMXrVNyhDI+1L1XqQnZDrJ5sa3gkM=; b=qrixIeDmjGU+kD
	EBaNVPJ1ofccgjJOpz1tLEPRAOQlIuleiOm6UCpVD4/OzlvqHJNzt8zVQ19uMapNuS/UNx5WQHeDP
	XCuM4Uz2DmJf6I/fEQQ1twvr3P8gq4CXtjbfK6q6G/0UIuNDRiZHkztbXyuz8BvnIjitr3olYQ5VF
	bkI8OI6YfCMJK1o/DAz+bAfxuoobkwKha+z6/tSdWiWMUvec64WoM7zGzE75Bj5xnh83scObAJTNU
	coE2ey9oT22HnWCIR8GdGc994tU5LK61zLfscJXGoxirwUebpk4TLG3g8yXlIB82II70IY379beD5
	SfKr9ayr2jDtgC+NvIOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2iXm-000000097UH-27ck;
	Thu, 10 Apr 2025 03:25:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2iVH-000000097DB-1brW
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 03:23:00 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HZE1T010456
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 03:22:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pfANK38r2/Y0veNUeTUAv/nE
	G8v1dA3z5o6Mox8qnqo=; b=I5p11Y35E3uk4R+AslEb/sZe87E9qPzIOb9grMUy
	Q9vDG4rbEC6+ZZGjaVVMvUg5QdTvkpP4qsX9g9GMymYOJ5AO45WLI50Sgqj+it0G
	kr/imzKJHfVmBDD/9qSyTjASDo4UyanuKPW9QhmzKO6XZLvhUuWjm6lOiwD+Ecid
	YwdWQYEK6deJBbafAp2j1gotiX+NUdNYbS68TyLByWCLS6bE/vtACHIRPuNaJqCX
	ikEC9NU9/N2+i3kfMxvZqD8MW3nMeFwNrGCRhWUVUKwmoPVe/EklmrToEI695tvJ
	OMXLjeYxeZuVyPGXRqggt0aWzyT0wpJC69b7+5Jaj2RIPw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twftn9ye-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 03:22:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c53e316734so68866985a.2
        for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 20:22:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744255377; x=1744860177;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pfANK38r2/Y0veNUeTUAv/nEG8v1dA3z5o6Mox8qnqo=;
        b=wziIV5IreiaYqOgCgU6qbWt97mXxa1uvH+8BUkHtEWSdMiOdJIzRuEu7Yt68nvzFWh
         M0XX28ybyP/Bj1i1U7IX6qUUT6rYjBXANDU+MoEhyRQN6f7jrQC2xG4Vc0lfxZgWEBJx
         VF4VFX3uL6LY+IaLsj4N+xsf/XxBWJVMfN0RBqE9L67iyHUQ92FQ6nk0tkuX/h/91Fbr
         u4JDywoODXhrrJ6+Pt/CkZIjlomP8C2zry19ZEF3PWm1e1plh/0VnpIJKVtwyICpNlFl
         cMePRJKj4ZATKJvsYrmNuF6ORuDts30ZXaBJhYN01gvbdBvZ/IFtZnVFa2BpBgxIuWUs
         UYxQ==
X-Forwarded-Encrypted: i=1; AJvYcCU39QqMLEHnO6eukkU6Z8F8V7hQm5sKx2jI5dbnhcdI2oEskeFU4zp5SI8DD7lj+09t4RqI4Q4s6dw=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywr2XRcKlHfVRdAUV8+UVQkesFAgpZvPgAvSyJr9bqQJPgWqz8E
	hzHyPmhmQXwKQGzulDCFo75oWIHJRN/ZWDrn38QOf1Tmk9Y0cGVNz0WgmJv54Rm0zMv1HnJ1IyY
	4pGdY3i5ZQvKAXEu4spB0ONqTa7ylkzTWpP6UKOaKc4gKhJPi+pZsMwWVXFbkEcXJ
X-Gm-Gg: ASbGncvsaSt618YbELYrv8rHbq6PzWB7TbsRh2PVx8eK8iHD09CzwBOQ1gQf4N6za4J
	ptw9LkopnzM9upXrF/MIKTBVZMzKiJPAOPDmmkhFZfSwZoJd+teQDiWLj3F6tQU2yt+BGRDweLB
	dRHhjyZYHx5C9HoSxhFx2U7K2dcYvo2Nlvo42jzJWcFoZqC73JmER8MVgl+iXWrXsdD8rG6a6vh
	ga0QeFuxCh3WVeAWOYwsdYW40f6lfaImAm/9mzoI30icHLc7zpitN2GCBftRuj1OCmruluekAJA
	VNDlnoN3ZciFvL64CkUSFBxp3lPX+RjcwuDrYyMVTL3ERui5QVlD6565EVw8vWvFqZ5fPs6M/JM
	=
X-Received: by 2002:a05:620a:4011:b0:7c5:5d4b:e621 with SMTP id af79cd13be357-7c7a81b6b63mr131507985a.37.1744255377676;
        Wed, 09 Apr 2025 20:22:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvdPKTSB3sqkRdmy4+rKmOaEHDNl9nfoJyk2DFMvWHYvIaySZUI2uhQyy+e3BTNZL0wgeEFg==
X-Received: by 2002:a05:620a:4011:b0:7c5:5d4b:e621 with SMTP id af79cd13be357-7c7a81b6b63mr131496485a.37.1744255375618;
        Wed, 09 Apr 2025 20:22:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465d4ebbsm3476721fa.73.2025.04.09.20.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 20:22:54 -0700 (PDT)
Date: Thu, 10 Apr 2025 06:22:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
Message-ID: <fvbfsvx4ibixnvdh7ujt3kaybjqj3fdla4k5sx6lguegepxipg@ci5nmq36irpr>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
 <20250409-sm8750_usb_master-v4-6-6ec621c98be6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250409-sm8750_usb_master-v4-6-6ec621c98be6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=B5+50PtM c=1 sm=1 tr=0 ts=67f73992 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=RKJlQbLL0f_VtHaaO3gA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: O9vmq5kwaJl_Iz6GcBoEPl2M89Ps2WGy
X-Proofpoint-ORIG-GUID: O9vmq5kwaJl_Iz6GcBoEPl2M89Ps2WGy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=565
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 mlxscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_202259_446710_B332DAE0 
X-CRM114-Status: GOOD (  15.71  )
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

On Wed, Apr 09, 2025 at 10:48:17AM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> sequences to bring it out of reset and into an operational state.  This
> differs to the M31 USB driver, in that the M31 eUSB2 driver will
> require a connection to an eUSB2 repeater.  This PHY driver will handle
> the initialization of the associated eUSB2 repeater when required.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/Kconfig              |  10 +
>  drivers/phy/qualcomm/Makefile             |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 325 ++++++++++++++++++++++++++++++
>  3 files changed, 336 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
