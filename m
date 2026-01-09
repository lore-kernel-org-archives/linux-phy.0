Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3E24D1A628
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 14:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4wLUV5Q9q3BBIflGTa0sV+lEweHxTgNUxgw13xAM1I=; b=WvoijEP+rl5iK9
	NsNssISPxpLMpdNwfetV4KiunXwYaqda7EjLe6Xcn4+tRJ2dDOrWto0fwFQ2DMmwa2gxvEb/j6reG
	rqdYaBCQUY6y7oOWDF9GNr761KNgaMC4KilrhPPpDUXuNtVVyNJQEvddEuwzN2+MiHgj/DhRPEkSa
	WpNmLdg4k6Kd70QV4JaYq6NN9rYFhE5ZzFDLYNGD3ZXwAyQjS1ncpPpl2hU8YiMvBhJhGQ3thpwsh
	0JWVSWMwyC5e7Lgv1IhdogRpuWYCrYNFnbGpU0fSl7WfW9iMNc23U+U16P9P23lYbdNNI5c9qIC5j
	qsa+G8sR9xHQ4eMGJ4WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veD5e-00000002Nnq-1Saf;
	Fri, 09 Jan 2026 14:03:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veD5b-00000002NnT-3wt8
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 14:03:45 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099jGZY007882
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 14:03:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GQs+SI3tCjQDH71MvlNczL4V
	y/mRHLL8bORmki3/saY=; b=OP7K5wzYi6pRQjj/xiJ6j0JPK4OapKnfj/H+miEd
	RgoNbXsUBJsDoIvX4uPBSrl7lU4l7rsnDQa/jYwWlY5LAUbe9yNn/x/lcucOPc4T
	CYWZJo0sVX8FDQ2lessV3P9uUoZjkuphYkZimk2zPO5Wt1F+1KZ68KMsTzU9SO3k
	Y5UJXL86UQIj571/qQ72weDV9LDBQqFwFONwPSJCebUwGw7/onuw9AXKYqsx0alN
	p257LKp64ycY2BFwIXg5i1m4AhIcmYw7kqjvaOGjC/PeYSD4+Fw67AGCzmCMteTZ
	v91N2XRnc+vEj8Qkfx/f1FxDEpl2egWmZUj11WFfeEr+xg==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjyaqgp4s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 14:03:42 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-459a2584256so8565190b6e.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 06:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767967422; x=1768572222; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GQs+SI3tCjQDH71MvlNczL4Vy/mRHLL8bORmki3/saY=;
        b=dOxWXlANmArOHymSTpkb6slPYmR4Dut9z6mO9goUp7wmLrSdzue/t/tJnFdTEov+zs
         hNG9jCasImesW/ouiVHjgy6K+wWNULy5axlQipWD3P6NLvJtkBfORJEQTxSfjsMnK/DF
         4AtDmbDOhbLSH4Wh2CWPTwEDGa9Rb1bo2yEuEpBehyqqiX+ETtk+ghe5br6T9hm05EeZ
         tlNlFSatYkmQSbSsNA9cF5Hv7U+c6x6yke9X+A4nHEgl33vz43fddRXm/dHx4jITdLkU
         BrRlbJHbAyQX0PukL1FVit3He+t8ro63NUYP6VQueiKs1704sUO3OuXZsgkt6zpz/CAG
         cX/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767967422; x=1768572222;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GQs+SI3tCjQDH71MvlNczL4Vy/mRHLL8bORmki3/saY=;
        b=qJowofAurqFK7YdFe1MUiqyMwQxKEViayjpyeUJXKt/ta+bYLUbH0FKBJBO5T8EmI3
         m+7D1W0hzjmOO2HB6SpKy6HtqNLciV98+QO63XW+JF59Yco/a5NHDeZcP5biaz2O6SxL
         P87YGRcW+CStbHs526jpKpbZ1C42dqgbdhkhPKODlhd8AhEVBqM7hD+0FKE67tmiEns8
         ZfkVuVOXDpwQwvQcSF/CN2s0PTs6ah5OrujGKWPeXoBE06B6o0EQjKS0v19kDhxyD4MM
         oeyMfjAW1qZncIAdUfZBExXNI6FVMvygKhLPXvf3oIhM1lCEXcVGPaijSM/K4/zdY8mV
         x70w==
X-Forwarded-Encrypted: i=1; AJvYcCXOsRzFrBXjNMzKCGUH4Qi/wVP1pdwTSoNrvJBy8gM5zjEDeoKdBssCakbW8QTwtE64kZUVD0qX3tA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoYMxJr6W3euGZyTCvs/luHZAc7bMPqCvLTEEgWaDmIZIAPhkJ
	UpYsrwwVStLIyo7paFyB1G3dQ/AegnliroCsKtTeL+Zk7o0JhrLvB+5ir0vrupuHBNNM40pDW0j
	YQoc+x6MVl8CBQe7hBftRE/e/9DQR/k/cYkSYXtWcqeMWs1vzOqVKXX1o4szCRbpD3t1V
X-Gm-Gg: AY/fxX7fmmQX0q1/vCz96f+v4HzkIavjPRT8RIQ/agluMKNKRIqu9cCbXlvZj+9ll5t
	3BIfUmSBLSGsFu2DEPl26/irZvodxkZ+ieVGbNwB2DYXVsV5vSUqebvprm5FwzQs/nz+/EHs0lc
	ozUyvrcMhtkc/2d4P8Vq02g3KXVYsjfHmXESz5k26ctGDPBr0B+3maY0qpSZhNuYYYETGUr/Jb/
	w5ZKsFMeAI3ooz29LUo35ePmk5kGa7edWDC0Hv/2Ir5mRdwdnZSY2Ry/e065z/wMyej4BOYhhaj
	Xt1vDiJQK2F71kbEixV7gZxRCWI03gavTQMWKXL1is05QCOn00mgYudBpgUo5RaxMjDOGfTyb1n
	9vZZMGkv/p8KmhzbO1GEY+B1lewbfLZXJ+se2/s+4biliLKuWllpMZs+XvptHK4Gv58FkvpDhNL
	ZBI/PodOkKBVNdxTmpLWCfPuo=
X-Received: by 2002:a05:6808:528e:b0:450:a9d0:b790 with SMTP id 5614622812f47-45a6beb59efmr5451139b6e.46.1767967421577;
        Fri, 09 Jan 2026 06:03:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFhed6/gC1XQdYPnbtJvfwFpetbHTMNUPdnIOYHCqjQqJOeAFrw62c6frHz86sCY1b039DemA==
X-Received: by 2002:a05:6808:528e:b0:450:a9d0:b790 with SMTP id 5614622812f47-45a6beb59efmr5451093b6e.46.1767967420959;
        Fri, 09 Jan 2026 06:03:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38302bd92fbsm14199561fa.3.2026.01.09.06.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 06:03:39 -0800 (PST)
Date: Fri, 9 Jan 2026 16:03:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] phy: qcom: qmp-pcie: Skip PHY reset if already up
Message-ID: <cvxvq7f2ku6aq5gbbqav42ckqk2raesbxq2bx46mxvapcza5v4@5zuyjdtn5us2>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
 <nmle3y6nb4kjcwstzqxkqzaokeyjoegg6lxtmji57kxwh5snxa@p76v6dr7rgsg>
 <53f0c45f-7f5c-4abd-af84-cbb82d509872@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53f0c45f-7f5c-4abd-af84-cbb82d509872@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDEwNCBTYWx0ZWRfX7lkuIYFZOOD/
 oBpk+6+Pq6NMtIZHc5yXvj9XUYtxw2VYZalBPmbEQ8L4ZuoySr5nyhF1opPRJRIE9CyKGukxnfB
 AZReTrduWDwST33NBhnwBP4EZTChZjfkhFzj2OM35b8ASP/cuX6Q3Ac5juwtmwGBm08pmpWaI1s
 ipZ29rSowP97vZTKV91U6gynqpRD/6Klvn1ki5EL/hhGlpaIariJqP/TkrAAC2kD17EoulFISa9
 Z3v2sBxcDMaLpRiXtZ4NTHHA9MCO8ShkSqLiMr18K/g/pvMAOCWBdozkpJPfWjQBa4ZSJosX7oC
 sYHpVxTKb+bpAQ0T6AoFeKleSGkL+xjTjvwFR++isRvy/B9V/GhMUHhs0wG0tsPUpIi02FhR7yQ
 TNl330KSXNVYHdvfcZd6zVskgNpuquz8tuzEEfItzzrq1jtWzHa7YcfBPhkfKrb7QxaZ2iEqgCJ
 eZfcbDCgja2QZb4/HkQ==
X-Proofpoint-GUID: Y5pa8vg8nFl5MGq7TLhh989FAao8-9ch
X-Authority-Analysis: v=2.4 cv=IKUPywvG c=1 sm=1 tr=0 ts=69610abe cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=lHV2lZlUvwFcl_mAknkA:9 a=CjuIK1q_8ugA:10
 a=pF_qn-MSjDawc0seGVz6:22
X-Proofpoint-ORIG-GUID: Y5pa8vg8nFl5MGq7TLhh989FAao8-9ch
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_060344_142926_B7F99616 
X-CRM114-Status: GOOD (  31.71  )
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

On Fri, Jan 09, 2026 at 02:10:49PM +0100, Neil Armstrong wrote:
> On 1/9/26 14:08, Dmitry Baryshkov wrote:
> > On Fri, Jan 09, 2026 at 12:51:06PM +0530, Krishna Chaitanya Chundru wrote:
> > > If the bootloader has already powered up the PCIe PHY, doing a full
> > > reset and waiting for it to come up again slows down boot time.
> > 
> > How big is the delay caused by it?
> > 
> > > 
> > > Add a check for PHY status and skip the reset steps when the PHY is
> > > already active. In this case, only enable the required resources during
> > > power-on. This works alongside the existing logic that skips the init
> > > sequence.
> > 
> > Can we end up in a state where the bootloader has mis-setup the link? Or
> > the link going bad because of any glitch during the bootup?
> 
> Good question, can we add a module parameter to force a full reset of the PHY in case
> the bootloader is buggy ?

I'd suggest a simpler thing: if the reset was skipped, reset the PHY in
case of an error and retry. That's also one of the reasons why I asked
for skip_reset not to be the persistent value.

> 
> > 
> > > 
> > > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 28 ++++++++++++++++++----------
> > >   1 file changed, 18 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > index 86b1b7e2da86a8675e3e48e90b782afb21cafd77..c93e613cf80b2612f0f225fa2125f78dbec1a33f 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > @@ -3153,6 +3153,7 @@ struct qmp_pcie {
> > >   	const struct qmp_phy_cfg *cfg;
> > >   	bool tcsr_4ln_config;
> > >   	bool skip_init;
> > > +	bool skip_reset;
> > >   	void __iomem *serdes;
> > >   	void __iomem *pcs;
> > > @@ -4537,6 +4538,9 @@ static int qmp_pcie_init(struct phy *phy)
> > >   		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
> > >   		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
> > > +	qmp->skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
> > 
> > It is definitely not a long-term state, there is no need to store it in
> > qmp_pcie struct.
> > 
> > > +							    cfg->phy_status);
> > > +
> > >   	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
> > >   		dev_err(qmp->dev, "Init sequence not available\n");
> > >   		return -ENODATA;
> > > @@ -4560,13 +4564,15 @@ static int qmp_pcie_init(struct phy *phy)
> > >   		}
> > >   	}
> > > -	ret = reset_control_assert(qmp->nocsr_reset);
> > > -	if (ret) {
> > > -		dev_err(qmp->dev, "no-csr reset assert failed\n");
> > > -		goto err_assert_reset;
> > > -	}
> > > +	if (!qmp->skip_reset) {
> > > +		ret = reset_control_assert(qmp->nocsr_reset);
> > > +		if (ret) {
> > > +			dev_err(qmp->dev, "no-csr reset assert failed\n");
> > > +			goto err_assert_reset;
> > > +		}
> > > -	usleep_range(200, 300);
> > > +		usleep_range(200, 300);
> > > +	}
> > >   	if (!qmp->skip_init) {
> > >   		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> > > @@ -4641,10 +4647,12 @@ static int qmp_pcie_power_on(struct phy *phy)
> > >   	if (ret)
> > >   		return ret;
> > > -	ret = reset_control_deassert(qmp->nocsr_reset);
> > > -	if (ret) {
> > > -		dev_err(qmp->dev, "no-csr reset deassert failed\n");
> > > -		goto err_disable_pipe_clk;
> > > +	if (!qmp->skip_reset) {
> > > +		ret = reset_control_deassert(qmp->nocsr_reset);
> > > +		if (ret) {
> > > +			dev_err(qmp->dev, "no-csr reset deassert failed\n");
> > > +			goto err_disable_pipe_clk;
> > > +		}
> > >   	}
> > >   	if (qmp->skip_init)
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
