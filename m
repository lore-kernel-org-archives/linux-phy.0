Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B194FA1FC1
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 15:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQdIuQ+9zuzVKp/JZUUNIub+RWbgVpW2+jEoEZ9roQo=; b=TNO7g9tccj7Al/
	PVWXPMmiaBmVvmirFVTCoOQ5SBfjJxfzF+Fu9aJTz74nVzQHZFzYuFFSdWZEkzE9X35Tg0vUyZ22E
	MttakkztXk9ifyk4FDEOC/6yfvewBRClq/DKHT9cq0O7U2XFWiqnjeVyNRVZlqdsqQlz6b2Kl0YgT
	nJR43BziMgfdKsAIKaSm6QmbWupgs15h3DefMzmLwp79S5bGrdP+n/hzv7ocQW/0dmiLo25w7FdWn
	ASb3kJ+KFN7upePsuJWsF/2JTLCbaEsDdJjgUGz1SQiSaQ+sPccuu9DgyefLSpOLj7A1tO+Y7a2ml
	iqtLsC1ZqIJIHUixhiRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFZh8-0000000ARqy-1nGS;
	Wed, 22 Apr 2026 15:40:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFZh4-0000000ARqY-3UvY
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 15:40:52 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63MAt3IU2209010
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 15:40:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hsOwuU5VF89mii546Kyz+61LRVFRAUl5bGi3Mv6LCuk=; b=om4gPZcjbZeOOwSS
	V1DYCEZQGYf9c5yZQ8ro4btSBeNiwFOrpmIDspDkTL+CGtgPa60g05cb/5HrkYHF
	lJK3WAKUWJ4xqe8oUDsoVzpJNB32Bl562NrNZGgfczpO/jtdaJKsH73tGHGeQIYD
	dO+gCvMoFPqhOYUIrNYfigY/giCnOZouzgNRNFinjh9HDNGfyPkchP2zsDN4GFj7
	DpmkHicgco5Rei9Cm8QY4R4kbP/cFLZa9MqEQYzhmhbFOSkM5GDI8yT2dTgFB4Y1
	I94JQpY5+NJ5QoElp3RfAufWK1XRVrzxS6YdlbIyp8JmeCnxEFqu1kT64GxY0Xdl
	PILBCw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpengc1rt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 15:40:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50e5a336b44so38162951cf.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 08:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776872449; x=1777477249; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hsOwuU5VF89mii546Kyz+61LRVFRAUl5bGi3Mv6LCuk=;
        b=Rz3x1SQA9VDhDJhq8aMRcEMRt9/xzOPk2GPifcBrzYSVEw9/jrJdPMHDo5IZwIt4ST
         oxsRySy6Ss+TsZVHYeBdsuXZT3/haW3sICm36d4SentpLbIc2K27nfWb/VXhzsOIoiyC
         6JIChXp24LwFSdEkLbbUrLIy/8bBMpxK665pSgWAlnZye/Tju79EuC/L0GL3JeyGfWcE
         CJBftNEZyzKjyMmqnI04cd4rDD75gVzEjCh2iOoXWAuCJxRbPV258xoSf4JCRA12dFYL
         78T4qTjX6PhkC/7SrQIInuR6pj/zsI1EwrwuYmw0ahf4kN1AkTzxIPy4UZ8usnFRNGaD
         YIjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776872449; x=1777477249;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hsOwuU5VF89mii546Kyz+61LRVFRAUl5bGi3Mv6LCuk=;
        b=CRiMh/sXPwaIticMBxDPhN+AIjtpaV0cjSP/WrfabNBPNpmD3R+ab+dH8zTQB6JcXu
         QPndyeIbIcl01M9H5hR0TeR7R56XIeSUnzL5OIS3zvdh8vfxUpMDYwfMtiPVKkmWjdHH
         rftaFhZcoAYQkMQx9DugLJVkE8lf7jZ2RzZYpSYXSjbfg5lmH7MHGnDZ/4+B1ImaeSQa
         vx9f4MvvQ5y+Xcgje8X5c3CzVre0s++VYSpm8SmgvwDFGYCYEP4rBPdOHL6fVXsuP8M9
         aBc4aY7smyFb52lGNz+iFlKFHKLY/xpgJflHKmgweHeombfSRLp0ZU6wUt4xglWHMRUe
         /WZQ==
X-Forwarded-Encrypted: i=1; AFNElJ+CV+k8IiuWtM6z7oKG16rwYG1UkAbGu6ZU6i9SsoOhpLiKFl8NBgUyNfb8ps1+9e8AH1+7VMeTxjw=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywn0tgUhsOQ/aDsnogyOEj/nElEjq/O6OmtUSHqwIvBb/drkV73
	MyQSZDN7p5HQ5hrIBTiebnPWNX/GEqFFfdaDIGHq5EFF0Jy8nLEq4FSl8edrnrgWzR/t0zhjRAj
	RcdLnOaFCWMcWbqo4aBCEFXyrxluNWjsMjd+VPDfgAfyYZqW4LoEsqeMvqrsGWwma8H6t
X-Gm-Gg: AeBDietES3kKJ1yz1G3KpvNzxKmw2Ex64Utk4nAGHQptchs6c9a6dLu4aVTjkNXkrqK
	OYPu28HM+RAiFL17cEizf/NGVHUdLXusStV9jZDdnAQkroSiW/Fs4/EjofxT4uKCL0BLdpzVYZI
	UWs38JCsgdCVFWQULMTBCWBYT1DXcHH4P6CXod9EOg1YcTEHeg1DRmz6+QS/OInVvGfWB9C2YMO
	8oxddksTzfK664VpBow6c6kgSVncDdnwLx/FOr/IfAZStaI6g9ZD3EY7VV1slyJTRBaVdQbFXU0
	1IOyid2+RFL/gdSegyxhPdfG2fvuhI/mosKGgOM34rFDo54z7JEVh5eShYSFsS7TBP6o0meZ5BW
	0p4ybFgoyh4xno900RDLmF8Cbu4qBqTtqrPrvnJ6tLPt2C+l+w2PvbL9ziyUIh86m1MrAj77i/L
	pzJuhN9S8CMFWrpXB3fV0oUFtCCe2/9r369Jd59VCL/jEseA==
X-Received: by 2002:a05:622a:6782:b0:50e:5eac:cf7d with SMTP id d75a77b69052e-50e5eace505mr3977831cf.25.1776872448032;
        Wed, 22 Apr 2026 08:40:48 -0700 (PDT)
X-Received: by 2002:a05:622a:6782:b0:50e:5eac:cf7d with SMTP id d75a77b69052e-50e5eace505mr3976581cf.25.1776872446447;
        Wed, 22 Apr 2026 08:40:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4185ad11fsm4473453e87.14.2026.04.22.08.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 08:40:45 -0700 (PDT)
Date: Wed, 22 Apr 2026 18:40:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Mahadevan P <mahadevan.p@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming
 on Glymur
Message-ID: <losxljshogx6zhqdbyhgqq7oagonbvnqf5shrkv7hvy67o4724@oq5n7fg5bbxq>
References: <20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com>
 <CAO9ioeXT0jxu875jBsAbOVrDqonASWSmmxJbP0AiitXb-gUANQ@mail.gmail.com>
 <a967d7ec-66f7-4eaa-91e3-0a96e5a8ec7f@oss.qualcomm.com>
 <b21b1f73-881a-40bd-aef6-5c34aed0e266@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b21b1f73-881a-40bd-aef6-5c34aed0e266@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDE1MiBTYWx0ZWRfX6WEC6JnXeiuT
 zVywu9qWyOByMfUTZ7aJqV3HLtmNT0hblL8coXKs9KM4mUB5pU7IJ4D8tyxrw6A243UAKskTWp5
 c7+fQOjC6jreazcT76CiRcCmCL+FnEdSSr+SliV5h8Vm3nRdBaXFtUq6A0Yakqy+q0KAuM2L4mm
 wUydf8XC9VzT1umxzM8oamZ9+/PhfPmmvW0n/ZeVx8p1JrqOmc0C0TRnyqnFmMxb+SV3LV+Aas6
 QYi2lAL1w9PnKC0yTQEtIv0+6cp5XRoFr7488FLrYV4SdaTb/o30ZWTk7Cm0V3US2lTneaJEzkH
 Y4tNE7v1Qh+sp3Pg7lBkJdeLCnjHDIE4c40MlHCVUOZpOjA9HrBtUZ2HiY0fS/b0i8WRrx8f+SD
 ecg9sqi85ygS215QmT2m3YRkAv0goKPpv91V5guCdFT/vfGOjwpaPvJYr27vNPWL/k/uUETHkWY
 rVdwNQy2KFBhJiDfJPQ==
X-Proofpoint-ORIG-GUID: YIsJ-sg-FnWE30OQb7Cqkh-suEVMm2TN
X-Authority-Analysis: v=2.4 cv=RYygzVtv c=1 sm=1 tr=0 ts=69e8ec01 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=_2zAH8VQ4YyU6FB8qREA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: YIsJ-sg-FnWE30OQb7Cqkh-suEVMm2TN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_084050_995228_C36D1ACC 
X-CRM114-Status: GOOD (  21.00  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Apr 22, 2026 at 11:54:30AM +0200, Konrad Dybcio wrote:
> On 4/20/26 4:18 PM, Mahadevan P wrote:
> > =

> > =

> > On 4/19/2026 6:48 PM, Dmitry Baryshkov wrote:
> >> On Sun, 19 Apr 2026 at 13:16, Mahadevan P <mahadevan.p@oss.qualcomm.co=
m> wrote:
> >>>
> >>> The existing DP PHY PLL and AUX configuration for the Glymur platform
> >>> does not fully follow the Hardware Programming Guide requirements for
> >>> DP over Type-C, which results in DP link bring-up failures.
> >>>
> >>> Update the DP PHY programming sequence and PLL-related register
> >>> settings to align with the latest HPG recommendations. With this
> >>> change, DP link training completes successfully on Glymur-based
> >>> platforms.
> >>>
> >>> Fixes: d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and se=
ttings for Glymur platforms")
> >>> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> >>> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> >>> ---
> =

> [...]
> =

> >>> +=A0=A0=A0=A0=A0=A0 writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CT=
L);
> >>> +
> >>> +=A0=A0=A0=A0=A0=A0 writel(0x5c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE=
);
> >>
> >> Are you saying that we don't need to write 0x4c here in case of the
> >> reverse mode? Was that changed and why?
> > Yes for glymur it is changed
> > DP2_PHY_DP_PHY_PD_CTL
> > Normal Orientation: 0x7D for 4lane; 0x75 for 1Lane or 2Lanne
> > Flip Orientation: 0x7D for 4Lane; 0x6D for 1Lane or 2Lane
> =

> =

> Dmitry asked about the other register - DP_PHY_MODE.
> =

> I checked the reg description, and at least for Glymur, BIT(5)
> (the difference between 0x4c and 0x5c) says "take bit 4 into
> consideration, otherwise let the HW decide". I wonder if we need
> to set it at all, for any target.

I think it depends on the orientation GPIO being correctly wired from
PMIC to the device. I don't remember why, but it's easier to use the
software switch instead.

> =

> Konrad

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
