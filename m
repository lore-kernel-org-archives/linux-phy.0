Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8324ED6ACDC
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 10:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7Sgpw8SdjZP0xnoEZpTpWmiZXUi2fQOS5wTeLwi/dw=; b=m0XkRy2Xub6+gI
	LTLl4U5P2VVUMSYWYsBaCNMxnYjNPu27APQP4qdIudmI8MeSiOgFXWxXBc/EDMScijKhDLMdXjQXJ
	FGBRevCOVR0S9xF+6uWQew9UUYIsKvJC1if9oeTZt/mRY0ia1edAmpqhKDZRp997A+IlqZbcFtOxV
	3Gz1EreYH3w01ktj7pAjK8KNReFqYcLsSUX4CbJxPYXaqOj4MZni7j9PxE2VGrpFVhULf6/3Y7ro6
	QX+sc4mpHyGn2rH/rXHM08htvAkqyRUY6Z6H/ISL/gcjYLhXto7bi41LoTF0OHteLEbPoO5wTl10x
	haQvz1tkys7VE5S1lk7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBKe-00000008EqJ-0Zj9;
	Thu, 18 Dec 2025 10:34:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBKb-00000008Epr-1jRq
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 10:34:02 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI933EG680787
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 10:34:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9bDaeSuiKHsc9nRSd3ulKaYx
	8HYrMwIBi3v41S+sGr0=; b=T89R5jNMQdt5mvmSFiLZjWqc6no5j0zxbFfSN89t
	gf5kZYcg7xPGmHnI041kKccEJQQGhDvmYSWtrUmWFWwR8jEf01gRgvedFkKfJ0r8
	O91U3ovj7AKm7/35kb9/a3M6d8SMed7aIVJPNTcFejYwOjSrIJyi0CHQwN716OIG
	0JlbdpAQVsMYsYF7QlwusiJcMFZUC6tnH+fYnSoxBu7I/G98RVSPGvvpd8bfy7Zm
	x/ctCvAIW8p4be8+I7z8CPlUgPpFqQAaSJx7ljDQK/mqW1BuleU9thg5YTbfwn7P
	SfMYg/QRgqq+drjQ9mbqeFZOeDaNkZPXrwUso+ZgJT9FoQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b45bhhx0m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 10:33:59 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b609c0f6522so848157a12.3
        for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 02:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766054039; x=1766658839; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9bDaeSuiKHsc9nRSd3ulKaYx8HYrMwIBi3v41S+sGr0=;
        b=Xo6tWDUPxbXHu/7lkOQY5AYhW5R8echwHejkjbsskSeVlgVTtyEBFf/LAVu3baAwlp
         KfsuD4Cky7oVylUYvjtLYAEaowG/U7Yvt034WDw2rO/tE1iPngVnq4sSiZR1Vw2j0U29
         OobN7GOWHf/RfTYF4UfqziKf69teDNFO0wsiYtvzIdcVYexOfcrlLALU7toebZXe8o89
         QdbnKCjd1E8lOx1Kq/b5wsQcJAnOa1iHP92ipB+KjeRobeOJJQGTrWjfiHi6MuZ8/ndD
         1gWuSrXIRgZuTfQTcz4PQKR2alIoEE4w/3UsZkwyyiUK0ExAz/v6BjUp/UOUvdqFrli7
         PfvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766054039; x=1766658839;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9bDaeSuiKHsc9nRSd3ulKaYx8HYrMwIBi3v41S+sGr0=;
        b=ska9rnUAsUDrjIRIAYD7nLlrnzjgtTXW5df4IomkLJ+yAxahiiDqyFLMzWjJt080gr
         T9fmBCdsYFzgDFXhJzyKuZWxgAP5naq8CzFQ7MnfjemiwdBrRgQiAT2ngJkdx454iEUc
         7ZQLB6Ffa3mzLfNshjLZbMUV/GdT97zHljYLQYTnRIS9iu3Z9gaT4DtRA0j51lXghZtO
         JMlAoiTkvc0fiYJLLn3knzWdnWeNs67IYwMHabS/fe8VmNj6/VHY5TCECvUmmKjKxQe8
         aVuRMwTvzA9oztSb92ngTBIdNVxL16dnBZ2LIBautqsILUP9+RDnqz+ncnH9Q14TMDMq
         Jp+A==
X-Forwarded-Encrypted: i=1; AJvYcCUlK4dwA40Bo4deKEID2Tg/UcWuLcwUdmQFT+8C2XlWUaKE/Eg2eAHQWyVI7kfLDAxNxLs8yHLYntU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbAqO4ln7Px94c4dFB+8mo/pAdaFphaqyGCVEinESWCy5ALuUg
	0D8RhJDLXatgAHq8wCbhQqSIEc9We0GRYooU4p7I7Poa3JOEDZ4BMLoCYfbEAI+LTJwqAeCzXff
	0SBogtG4cAWGzW0I1iLGVoBNMoNnsznCXV/xGe2vXAELCzyhudCpwQfISGjrAMxAc9cLu
X-Gm-Gg: AY/fxX6xOTdAs92THR8XmpuNSnYdBDj/250e1m45KGmAd9PoADVT0qPVBCR85THBirY
	S20Dwe4WLYKsjvChHaM6NBdJ0fmjz0J3pijyWq72248DTTcoDXfd89bI0XWGJUsiNj7Zm64BHql
	zuhi8eh0YjSvHwtOAOcpRKTyxxTYC6GHcPRirD0CFei7A8pZt1+pAeH8eq4wEiBeegCz5WHe3jW
	ZRw438cgVaYw4dYxcQ9VNQ6ZUMYok4ByIN0Hs8vKAX/iNMobZ85d33W+8Ao4l+CXMdL1ssBgBUH
	g/gySSHKL2gRH3JYBS4lB5QNbY1l1AlsFJ8W+I6XtQWiOXi8qP5N8AlX7UEtpu+pOd4J5jsrTCO
	F30WJFGgrfie9rDPhmKzrMDQgxem5PUEuXN/ek4+25W7+flKhpE1w05Ua
X-Received: by 2002:a05:7023:d09:b0:11a:4016:4491 with SMTP id a92af1059eb24-11f34bfaf47mr17938627c88.24.1766054038469;
        Thu, 18 Dec 2025 02:33:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGtsmC+8Y6kIRD08PExMuJsGHMbCc85avH3aagTws/HgVBWOYEiS919t5nlwwIBWvwodtelSQ==
X-Received: by 2002:a05:7023:d09:b0:11a:4016:4491 with SMTP id a92af1059eb24-11f34bfaf47mr17938593c88.24.1766054037883;
        Thu, 18 Dec 2025 02:33:57 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12061f473acsm6200226c88.3.2025.12.18.02.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 02:33:57 -0800 (PST)
Date: Thu, 18 Dec 2025 02:33:55 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <aUPYk6VuFUFrtUDI@hu-qianyu-lv.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
 <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
 <mudq7gmqs62osuarvflmemt2a2gnuloywabtr4w5oyyddp4b7v@eynaurtfrnyt>
 <aUDywpWf+gpEH4Uw@hu-qianyu-lv.qualcomm.com>
 <ulsst7k4meqq5psv577pqapnsrehvvpk3oijp5usxtxdwoxunb@6mxjmpigkwk7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ulsst7k4meqq5psv577pqapnsrehvvpk3oijp5usxtxdwoxunb@6mxjmpigkwk7>
X-Proofpoint-GUID: X1e8CXoHou6lE51rM3qT16IMrbWM6GG8
X-Proofpoint-ORIG-GUID: X1e8CXoHou6lE51rM3qT16IMrbWM6GG8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA4NiBTYWx0ZWRfX7nDcWr1BBHql
 tZ2heX9MRIdehgDDpNvDtfjYYPaHTDdgI3gxsOR0E6DRCWH3cac2XFAyiyaYOMkKmEbkvLysvwx
 m0S1wX4cgHzuNgpiE/kmv3XAZJqIhZXwFo2Do2Z66HUY+NfkMDynbxZ+9ftVk/GpaFP8uW6cWKd
 Gy3rup1SwrqCZu9pNO/Hc22xlwmawN1BgSDeZbqMxdfBGZeftCzcdmdptjDLoLOgOFU9Cv3MlIc
 Fpl/EGbGrL/4SrCDx8uKiDUu5x6S51ysEuhfT3cJvTQYsxdHfE+df59I0oPDIvND+ZTKKlic/Hp
 nWiprv0n2xRj7Wiw8k9RBiQs9fJZn9ffJdfpNZFqMtFFcg4EfPFeGTmCfS3pwqZlLRxXEVJQiiu
 1Ghc1H2yUCFsoOf2jBkGRwyuiPATxw==
X-Authority-Analysis: v=2.4 cv=SZr6t/Ru c=1 sm=1 tr=0 ts=6943d897 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=CTyzjmmZ7-0hRA9u8pQA:9 a=CjuIK1q_8ugA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512180086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_023401_590302_96C1B7A8 
X-CRM114-Status: GOOD (  26.26  )
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

On Thu, Dec 18, 2025 at 03:26:26AM +0200, Dmitry Baryshkov wrote:
> On Mon, Dec 15, 2025 at 09:48:50PM -0800, Qiang Yu wrote:
> > On Wed, Dec 10, 2025 at 03:51:15AM +0200, Dmitry Baryshkov wrote:
> > > On Mon, Nov 24, 2025 at 02:24:38AM -0800, Qiang Yu wrote:
> > > > Add QMP PCIe PHY support for the Kaanapali platform.
> > > > 
> > > > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > > > Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> > > > Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
> > > >  1 file changed, 194 insertions(+)
> > > > 
> > > > @@ -3363,6 +3516,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
> > > >  	.ln_shrd	= 0x8000,
> > > >  };
> > > >  
> > > > +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {
> > > 
> > > Is it really 8.0 or 8.20?
> > 
> > I double confirmed the version, it is really 8.0.
> 
> This is really strange. The SERDES offset not equal to 0, te
> PHYSTATUS_4_20 bit instead of PHYSTATUS -- all of that has always been a
> characteristic of N.20 PHYs.

Yeah, seems your theroy is correct on previous target such as sm8550 and
sm8450. But for kaanapali, the fact is the version is 8.0, SERDES offset
is 0x1000 and the status bit is bit 7.

We can also cross check the status bit with downstream devicetree:
93 		qcom,phy-status-bit = <7>;

- Qiang Yu
> 
> > 
> > - Qiang Yu
> > > 
> > > > +	.serdes		= 0x1000,
> > > > +	.pcs		= 0x1400,
> > > > +	.pcs_misc	= 0x1800,
> > > > +	.tx		= 0x0000,
> > > > +	.rx		= 0x0200,
> > > > +	.tx2		= 0x0800,
> > > > +	.rx2		= 0x0a00,
> > > > +};
> > > > +
> > > >  static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
> > > >  	.serdes     = 0x8000,
> > > >  	.pcs        = 0x9000,
> > > > @@ -4425,6 +4588,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
> > > >  	.phy_status             = PHYSTATUS_4_20,
> > > >  };
> > > >  
> > > > +static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
> > > > +	.lanes = 2,
> > > > +
> > > > +	.offsets		= &qmp_pcie_offsets_v8_0,
> > > > +
> > > > +	.tbls = {
> > > > +		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
> > > > +		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
> > > > +		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
> > > > +		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
> > > > +		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
> > > > +		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
> > > > +		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
> > > > +		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
> > > > +		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
> > > > +		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
> > > > +	},
> > > > +
> > > > +	.reset_list		= sdm845_pciephy_reset_l,
> > > > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > > > +	.vreg_list		= qmp_phy_vreg_l,
> > > > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > > > +	.regs			= pciephy_v8_regs_layout,
> > > > +
> > > > +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> > > > +	.phy_status		= PHYSTATUS_4_20,
> > > > +};
> > > > +
> > > >  static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
> > > >  	.lanes = 4,
> > > >  
> > > > @@ -5209,6 +5400,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> > > >  	}, {
> > > >  		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
> > > >  		.data = &ipq9574_gen3x2_pciephy_cfg,
> > > > +	}, {
> > > > +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> > > > +		.data = &qmp_v8_gen3x2_pciephy_cfg,
> > > >  	}, {
> > > >  		.compatible = "qcom,msm8998-qmp-pcie-phy",
> > > >  		.data = &msm8998_pciephy_cfg,
> > > > 
> > > > -- 
> > > > 2.34.1
> > > > 
> > > > 
> > > > -- 
> > > > linux-phy mailing list
> > > > linux-phy@lists.infradead.org
> > > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > > 
> > > -- 
> > > With best wishes
> > > Dmitry
> > 
> > -- 
> > linux-phy mailing list
> > linux-phy@lists.infradead.org
> > https://lists.infradead.org/mailman/listinfo/linux-phy
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
