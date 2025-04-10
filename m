Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4881C369A2
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 20:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5XdItAfQuONdkrYJ8jB/Z78NXu4qRijfJKY0io3gYs=; b=FpE/jSqkiUUTWm
	x0yIfA6LtsFz5lqvwRj3vx59sUX0Htb/KQaEtHtNrSv968C7vso2O/1gU9buj3AoGrSZj+Vz8ub6M
	bYh7RWsc30ilQcGpLN14ARQuGJgd0pXivHI7Ycgd5TeTsWoIHJhg9l0hlfGDpntVULsiqAh9ga/eI
	Rbzd98L5suDiHktK42Wzvz7HzOED+2kDaF2Bc3F+p2YJ7MDuG4PQ1c4mv2onXoI34t61yK9mVyxyM
	P3HpwJED5FneLCWlZK6FbYdXCCtre5EYdfDj9mmCuhbxyHayPMV3H9Y3OzY0VzxQSTvwRyrcJm42Z
	UlrQT1tV0EeQIVDDxbBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2y8I-0000000BjW2-1iGQ;
	Thu, 10 Apr 2025 20:04:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2y4E-0000000BioJ-32KR
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 20:00:08 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AFxk20008241
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:00:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9wNOMTHHhh84q2ykF2gFHwWOs27+2UZ+5K0uavlTb4U=; b=A59ek5qxIIWSti7h
	nWpKemMgWinIJ7C0yo08N3L7BjrHadcpKO7HlTORiHD7e4RU17C2TkohpaO3L4O2
	R9QQEk81o0l/DNTFE0exm2YOtwE/AeZHjKlzS7I8doYJMEpJGsGU8s0fDSAzMt3i
	7KORbelMo51s887ncKQwLslvJE6Q2YTZUtoF+e6MBgNib6pWUMvvArdMRbPB3YRJ
	3MZPZPPOio/+JTGGYNjJWj99ztiVgO/rJGEc9dRI3E+hF9jhIQSDEvscUCMT72ev
	1MWlc8gxap997qb7onH7knhyo3mWmiWUqGMMN1eowCmAw9U2WdMdMtfkGkXzI4LQ
	5xF5rA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd08b5y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:00:04 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c53e316734so216900685a.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 13:00:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744315204; x=1744920004;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9wNOMTHHhh84q2ykF2gFHwWOs27+2UZ+5K0uavlTb4U=;
        b=VwS+2piYE3lz6TM28LgCnhwRx4Z5IxpKC5bVFIGLsy1WCjzDj2OFIvI2BJY4UHD48C
         ex6J9qzimCYqWRWVeTEHaZAdQI/4C2oQS7nvX8iYjEYS+ItYtll5NrFjKA77Opa6QXtz
         wFl8320R101sDj1V7ppxadHoSXI0SwZBwJ0zOJXmmjyDL9BBx43CnPE6e7uywCxIET2G
         TbvV+R4Pvyz3Qe4CVMhSwUXhblYH9Qs+YAkDekkkXKil4RwMadoYOX/IlMTG0w0FPdeX
         G78cI6uoaqckbzMi8tR9EyrFEJukJnPYFZ2Rx/MWoqgvk8MjX09s7KHhtzEo4sFDxHPR
         RByA==
X-Forwarded-Encrypted: i=1; AJvYcCV5vc2uKlzB6IktPuxCk9w+9D3zVH4M2T2dja6G6VDGgSjdsi1VuYdKDRQCNkoJnKwRhhIkR9Cg9bk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZQbM6pvAOnA07gHl7o3O/aQX1hGcM/+Hq4YwCPsnpFd/d+IlD
	57zQcyujO3XVrYoJN93AY55mw3pRWsm4bgUikBm+wKuPtmjnjEB7TKLe7ssa2G4d7kDXJxEmc/O
	AGf+S2+74hlgnFpAPVVvtPrBBRlW+h6NctivZvmJlJy6s9dRrVyGox4t5/br4vVh1
X-Gm-Gg: ASbGncvtk91hZ0EH3n5pqNlVpWwrs0IxYb/nqi8TYlt6kbgVLiWrkBwz0SnFgKfX08W
	j62gfJdY0ZKVkE/iU8PK+6qB3pYfcavC2KXpwGAxJP0VC+PN6UslzSlE4vnDH9Zb5Qt1mmGlj1U
	PEdsEg12wOI87tEux/fEefdSTKuV5T6LAaUPeGEif81lmncnUB9gk6oIzwCpROCaiNuZDWJbZqB
	QGsN/igiFcZdQdeexgEFZrSXKFrSFBD0U3Rgj7D9KYRd3WSYG0vVsg0M27j9r8g6maPB/nu1GMX
	4avCyglJ+Mak9ng1oU/JlcyeEL3XB3GQGoRnUP11+yJA0kmycXADLbUJl7EJBSgm5tPAryjbe2k
	=
X-Received: by 2002:a05:620a:1a18:b0:7c5:43b4:fa97 with SMTP id af79cd13be357-7c7af1db11cmr41769285a.53.1744315203647;
        Thu, 10 Apr 2025 13:00:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHK3o7FedoTJpZFRy9lS2yc7XNbDtrGzgkkOWmS1wXzrIetzjvuwh9/WyYeycYPnX4h4dKBnQ==
X-Received: by 2002:a05:620a:1a18:b0:7c5:43b4:fa97 with SMTP id af79cd13be357-7c7af1db11cmr41764285a.53.1744315203328;
        Thu, 10 Apr 2025 13:00:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d50facbsm233911e87.162.2025.04.10.13.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 13:00:02 -0700 (PDT)
Date: Thu, 10 Apr 2025 23:00:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Can Guo <quic_cang@quicinc.com>
Subject: Re: [PATCH V2 2/6] phy: qcom-qmp-ufs: Refactor phy_power_on and
 phy_calibrate callbacks
Message-ID: <xn2oexjb6s7pdh4lpligc47jlyuxvwvuuh6obvr5z3ggqi2qsa@xjttnszx5eq3>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-3-quic_nitirawa@quicinc.com>
 <ab3639e0-61bb-46f0-9e54-f1bbd034b939@linaro.org>
 <c35c37c9-ff5b-43cc-afdd-fff509415ca6@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c35c37c9-ff5b-43cc-afdd-fff509415ca6@quicinc.com>
X-Proofpoint-ORIG-GUID: zmiLfhPFiHTMg-uIA9_gcZl2W63fJAOK
X-Authority-Analysis: v=2.4 cv=Q4vS452a c=1 sm=1 tr=0 ts=67f82344 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=_dewA8zSobTcTEY47J8A:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: zmiLfhPFiHTMg-uIA9_gcZl2W63fJAOK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_06,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_130006_884634_63318BE9 
X-CRM114-Status: GOOD (  32.39  )
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

On Thu, Apr 10, 2025 at 02:43:52PM +0530, Nitin Rawat wrote:
> =

> =

> On 3/18/2025 8:39 PM, neil.armstrong@linaro.org wrote:
> > On 18/03/2025 15:49, Nitin Rawat wrote:
> > > Commit 052553af6a31 ("ufs/phy: qcom: Refactor to use phy_init call")
> > > puts enabling regulators & clks, calibrating UFS PHY, starting serdes
> > > and polling PCS ready status into phy_power_on.
> > > =

> > > In Current code regulators enable, clks enable, calibrating UFS PHY,
> > > start_serdes and polling PCS_ready_status are part of phy_power_on.
> > > =

> > > UFS PHY registers are retained after power collapse, meaning calibrat=
ing
> > > UFS PHY, start_serdes and polling PCS_ready_status can be done only w=
hen
> > > hba is powered_on, and not needed every time when phy_power_on is cal=
led
> > > during resume. Hence keep the code which enables PHY's regulators & c=
lks
> > > in phy_power_on and move the rest steps into phy_calibrate function.
> > > =

> > > Refactor the code to retain PHY regulators & clks in phy_power_on and
> > > move out rest of the code to new phy_calibrate function.
> > > =

> > > Co-developed-by: Can Guo <quic_cang@quicinc.com>
> > > Signed-off-by: Can Guo <quic_cang@quicinc.com>
> > > Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> > > ---
> > > =A0 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 18 ++----------------
> > > =A0 1 file changed, 2 insertions(+), 16 deletions(-)
> > > =

> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/
> > > qualcomm/phy-qcom-qmp-ufs.c
> > > index bb836bc0f736..0089ee80f852 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > @@ -1796,7 +1796,7 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
> > > =A0=A0=A0=A0=A0 return 0;
> > > =A0 }
> > > =

> > > -static int qmp_ufs_init(struct phy *phy)
> > > +static int qmp_ufs_power_on(struct phy *phy)
> > > =A0 {
> > > =A0=A0=A0=A0=A0 struct qmp_ufs *qmp =3D phy_get_drvdata(phy);
> > > =A0=A0=A0=A0=A0 const struct qmp_phy_cfg *cfg =3D qmp->cfg;
> > > @@ -1898,21 +1898,6 @@ static int qmp_ufs_exit(struct phy *phy)
> > > =A0=A0=A0=A0=A0 return 0;
> > > =A0 }
> > > =

> > > -static int qmp_ufs_power_on(struct phy *phy)
> > > -{
> > > -=A0=A0=A0 int ret;
> > > -
> > > -=A0=A0=A0 ret =3D qmp_ufs_init(phy);
> > > -=A0=A0=A0 if (ret)
> > > -=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > -
> > > -=A0=A0=A0 ret =3D qmp_ufs_phy_calibrate(phy);
> > > -=A0=A0=A0 if (ret)
> > > -=A0=A0=A0=A0=A0=A0=A0 qmp_ufs_exit(phy);
> > > -
> > > -=A0=A0=A0 return ret;
> > > -}
> > > -
> > > =A0 static int qmp_ufs_disable(struct phy *phy)
> > > =A0 {
> > > =A0=A0=A0=A0=A0 int ret;
> > > @@ -1942,6 +1927,7 @@ static int qmp_ufs_set_mode(struct phy *phy,
> > > enum phy_mode mode, int submode)
> > > =A0 static const struct phy_ops qcom_qmp_ufs_phy_ops =3D {
> > > =A0=A0=A0=A0=A0 .power_on=A0=A0=A0 =3D qmp_ufs_power_on,
> > > =A0=A0=A0=A0=A0 .power_off=A0=A0=A0 =3D qmp_ufs_disable,
> > > +=A0=A0=A0 .calibrate=A0=A0=A0 =3D qmp_ufs_phy_calibrate,
> > =

> > Ok so this will break the UFS until patch 5 is applied,
> > breaking bisectability.
> > =

> > Make sure UFS host driver calls calibrate first, and then
> > do the refactor in the PHY driver.
> =

> Hi Neil.
> =

> Thanks for the review. I have taken care of bisecatablity
> compliance by making UFS host driver calls calibrate first
> in latest patch set.

_latest_. So if this patch gets merged first, UFS support will be
broken.

> =

> Regards,
> Nitin
> =

> =

> =

> > =

> > And either all would go in a single tree or either PHY
> > or SCSI maintainer would need to provide an immutable
> > branch for the final merge.
> > =

> > > =A0=A0=A0=A0=A0 .set_mode=A0=A0=A0 =3D qmp_ufs_set_mode,
> > > =A0=A0=A0=A0=A0 .owner=A0=A0=A0=A0=A0=A0=A0 =3D THIS_MODULE,
> > > =A0 };
> > > -- =

> > > 2.48.1
> > > =

> > > =

> > =

> =


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
