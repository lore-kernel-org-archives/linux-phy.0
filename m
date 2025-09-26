Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135AFCAC5B0
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 02:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8hB3jdYBsk6u3rmmtU9JT6kzT4p9khzxVBLYk3KUuY=; b=EkPgeIw23e43Pd
	XKQZHB4fAYWZp5yYhuE/cv4S1ra7Oy/eRmKX/a1ST3S9e5eH15184LQBnf2N2B/dOkA9J/Vjh/6xr
	PfUpqe0h3G8VAUMPTo0jMOW4WOTvSqqFCEBWFarjnBiO9XlUu/hCxH0DBm/pACnY/VjNVJwzRy+UJ
	AZBpqPJorNbRR9IhkRlR0zeAdVvHYdRVnVtyFwOPFNDJIycI+UtPn2hcr3PehpAvH/gogoJYbMJN/
	qmd9R+H9ckGnAaCNJUjVD1VpfhXlaigOZ3ZGL0+IaTkv00IV9dkS4ATpIQmp3FwkYrGloqinc/hry
	2myFFXuyDv9VWvep05jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1xw0-0000000EuuY-2vcd;
	Fri, 26 Sep 2025 02:11:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1xvx-0000000Eusj-3DVU
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 02:11:43 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPhtf014377
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 02:11:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nqpPsyewLeJlxeLwYXFc1vjQ
	6maWho6qu4lCsuqNvnE=; b=Wdy2c4ksyEex5o7rMu/rYXeBWo4Nd/H5c4WuddXM
	FkYdU/kfIGFXPF8le+6hoOEbOBCJ6RJEqummon6FeVoKQ352/uzRuVNrUsv2MoOh
	VbTm4UCVn4YrrftblwqnrJmWxU3DAwtHcDixTtgOo6w+GOaODyH0YqdOcn28pnct
	3gPfDO8pbt99Y50f7reJd5UfbW1fmKhtGUqjnVixF+HS4fXFjtHaW3S4wbAQEFXF
	Q+90k7KYkEyveepB/61WjCIROr3lK6sffgGfmReLID0S3kuhnDI7r/SfLOtS8tCk
	m6SEv43NUMTrfH8RyAtrRBaT6YMVpA1DAtyPGCCT9U3YfA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0rgyxb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 02:11:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d3632cf912so37628821cf.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 19:11:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758852699; x=1759457499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nqpPsyewLeJlxeLwYXFc1vjQ6maWho6qu4lCsuqNvnE=;
        b=fWLaCBGDSj4Kfp7WN1QsOeKX6etQ3t1zCGmEP9nVRn/6G2aTYg8k8ixCeGJo/Z4EO6
         tbdnSt6uw88WRneGQcSvdd3V6RbpWVv8BvpDfLr36eOIp1VNHubjMHYB6AFklbko3m9a
         IvbO5B2ozdyAJGCNcIcSnkP9wIY1/+pq7pczOLp4SjaVgpDd3GC+2a2kXdAZPdwWjcGO
         +VDDXcmm0qBZY5veIvp37dL3cxPOXNF6NPGmYitmqHMiCkYBTQuEpqd4sQWgAsnjwMRu
         UEGocydDg8+t0cMpflvXr1qOD0j+iYdG01awsycn1j+Xu9tsuYoCYWNX2AnOV01uO+Wx
         IoPw==
X-Forwarded-Encrypted: i=1; AJvYcCU4y1Yi4l+ojO4KDqgSqBSksYLsYVHzGEgK01Qkb4P218ZUx14aNDqwjugY+ivanOfz9ozH6iKpFDs=@lists.infradead.org
X-Gm-Message-State: AOJu0YycmTeip2k4qzSBmZpw3/mUHcGcvIU7QcXBBLp3cdsMhz/Ocv1c
	aCv6vguBAphXUCkqQuRw4pOBMJMvLSiYEPZcppg84jCyDMMwEdwk3UvKrS/ck+ovkzxH49fimFb
	AlTUKU0fpwzEaqJn8BnYwPYc+9zNJFlsp2ls7CZ+mc+NDSCC/AR+iBPGvE77jz81/RuhG
X-Gm-Gg: ASbGncv1d/gijEQ3FFXb7QZHHvqTvtTeMzjeCa4DCaVSCpVI8s1JPZPJyXtBUlgQuKw
	V+ogF6IUL0FAomK347g/X547J0ZkCsgNU0SOoIVApNVxIH1TYcSNinKV7xJLnLWu1mLHbJGQryM
	kqOSN/XmjbX83tvlwBjCFhOgK781rMPrN36juL42VD1JQjar22GBoj87czPRXXs6z0R+z/cDZyl
	aYmkcJaIPh0QdFP4+OZ0uDkgV/xor1G1ywy4TMMgvaOilWSY7sgQagm1pRVXaZJa5ItgH3wwBaZ
	6X47dx1LJ8iDWaGX/B5D3aItg3Ujpbz1guQe9e3TOQpoRU9J45hMlr45Jx4dmcnXE4LUXyXM1hW
	9rhr0UnAKj7d11O8aCvALwUylGBfrqWHFRD2DPcSmDNpsIjCg1Kuh
X-Received: by 2002:a05:622a:5a92:b0:4b6:2bdf:7cf0 with SMTP id d75a77b69052e-4da4782ddbbmr65302231cf.1.1758852699309;
        Thu, 25 Sep 2025 19:11:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7cctwlRZaW6riRpYXkIasnCymMXvXjJpXQG93mqJmgJ1Ap0mIAwpGxYF1bXCpUlxmfN4XAA==
X-Received: by 2002:a05:622a:5a92:b0:4b6:2bdf:7cf0 with SMTP id d75a77b69052e-4da4782ddbbmr65301991cf.1.1758852698781;
        Thu, 25 Sep 2025 19:11:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313905292sm1368701e87.41.2025.09.25.19.11.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 19:11:37 -0700 (PDT)
Date: Fri, 26 Sep 2025 05:11:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <exe3i3lgeor6bdokdqzu2nlenlbtjgv6c3swek3phirsinjnhp@tb5x5lkf2i26>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
 <oecyjwj7ouufjbiq2fpvlhhuaof5agm22fdsruf3ppayiu4kkm@wvi4no53x64y>
 <5e9e2824-923c-1328-dd7a-a8b496c44a70@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e9e2824-923c-1328-dd7a-a8b496c44a70@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dP+rWeZb c=1 sm=1 tr=0 ts=68d5f65c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=97tA0vavRIenci2OwCMA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: fc1_0TyTwPGO1_yaG4mAieM848UMDaVn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX18M14f4/gajI
 4qcPHD7J6BGIEXJVGwOQf7LwgZz7W1OuYnwWKifTzv9bTI739TNTdA58ohmvrr7ydsOgzOzMI/d
 V+jSGS7bq/OyLheT8tgIwIiuJ4DqApoB8c85FhZIThw2qtevRWQgfj2Zcdxt9nh/k9tYC25I7pz
 2AmANLBBqBr0mU9wMtfByBAdFEXHHkhGKZ8mGv3p7m+S0EXd7BciPgMuLQBPTNOCGox7A7lvLJh
 gfZPhxVSM7JMh1r9dudeVMQfiG4xdUUkUY/xsQNw8lwIg5ny9MibLOP5GjZwX6BOojqc0j3DK1b
 dWDt97nVAvTnnwjxcybkxoz1iarLsM0yha73as1J//rPuD5haTNeRfZFx6DWoJ2cFKMIHiET2eP
 Uhbl/FhHVFBkghJKtMSvtk71bsMloQ==
X-Proofpoint-GUID: fc1_0TyTwPGO1_yaG4mAieM848UMDaVn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_191141_809841_6FE67962 
X-CRM114-Status: GOOD (  30.38  )
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

On Thu, Sep 25, 2025 at 05:14:30PM -0700, Wesley Cheng wrote:
> 
> 
> On 9/24/2025 7:54 PM, Dmitry Baryshkov wrote:
> > On Wed, Sep 24, 2025 at 07:28:47PM -0700, Wesley Cheng wrote:
> > > For SuperSpeed USB to work properly, there is a set of HW settings that
> > > need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> > > these settings follow the latest settings mentioned in the HW programming
> > > guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> > > new ways to define certain registers, such as the replacement of TXA/RXA
> > > and TXB/RXB register sets.  This was replaced with the LALB register set.
> > > 
> > > There are also some PHY init updates to modify the PCS MISC register space.
> > > Without these, the QMP PHY PLL locking fails.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 311 +++++++++++++++++++++-
> > >   drivers/phy/qualcomm/phy-qcom-qmp.h       |   4 +
> > >   2 files changed, 314 insertions(+), 1 deletion(-)
> > > 
> > > +
> > > +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_misc_tbl[] = {
> > > +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1, 0x01),
> > 
> > Why is this V4 all of sudden?
> > 
> 
> Hi Dmitry,
> 
> Will fix..
> 
> > > +};
> > > +
> > > +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_tbl[] = {
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG1, 0xc4),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG2, 0x89),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG3, 0x20),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG6, 0x13),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_REFGEN_REQ_CONFIG1, 0x21),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_SIGDET_LVL, 0x55),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_RSYNC_TIME, 0xa4),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_CONFIG, 0x0a),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_DLY_TIME, 0x04),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG2, 0x30),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_PCS_TX_RX_CONFIG, 0x0c),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG1, 0x4b),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG5, 0x10),
> > > +};
> > > +
> > > +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_usb_tbl[] = {
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_DFE_TIME_S2, 0x07),
> > > +};
> > > +
> > > @@ -1667,6 +1899,12 @@ static struct qmp_regulator_data qmp_phy_vreg_l[] = {
> > >   	{ .name = "vdda-pll", .enable_load = 36000 },
> > >   };
> > > +static struct qmp_regulator_data qmp_phy_vreg_refgen[] = {
> > > +	{ .name = "vdda-phy", .enable_load = 21800 },
> > > +	{ .name = "vdda-pll", .enable_load = 36000 },
> > > +	{ .name = "refgen", .enable_load = 936 },
> > 
> > Is this a meaningful value?
> > 
> 
> I need to adjust this value.  I just want the load for the regulators to be
> in HPM, and after taking a look, looks like based on the rpmh regulator
> table, I need to be voting 35000.

Please provide a value from the platform data rather than just the HPM
boundary.

> 
> Thanks
> Wesley Cheng
> 
> > > +};
> > > +
> > >   static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
> > >   	{ 0x00, 0x0c, 0x15, 0x1a },
> > >   	{ 0x02, 0x0e, 0x16, 0xff },
> > 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
