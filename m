Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9244D10F6FD7
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 15:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iAtXa/NtL9N/Clb8S4n2zXANxSfXAvmu1MP4jCDIYX0=; b=feNZTkBWqYCelP
	vpHCqZlUV9hIRePG15YEtuTZl1PPyPCJqEhlk6E3r4dAGIiMJL2jJwLntXBxCPSC076H0w0ceFp4b
	U0o1GJkpdMSVWqiW805XOoLb1iMDvcLkHDUX3HpRNeTPbV1VnrqoZdrL38mDPxZESo2MRbt5gW04k
	rgcs6rsz5YvZjSf2JzYoFCtLj/lvnGa3gbtpX9YA+6Wa7qnc5fo/uh+Ra1ujPGaptOv8aSOCWrWpd
	c9wXkCcWZ203dBeknf6oQZ4GIeGg3u0tlMWSch+rH96fQBcIopBbwZN2jscbQIyyLDrgqKkxcaWSH
	Lm9TdK+CuC2arsuKJXrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xLg-0000000FcZn-1LnS;
	Wed, 01 Apr 2026 15:19:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xLd-0000000FcZF-35CX
	for linux-phy@lists.infradead.org;
	Wed, 01 Apr 2026 15:19:15 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6318vFlP1459443
	for <linux-phy@lists.infradead.org>; Wed, 1 Apr 2026 14:08:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=esWbFAdk9cx1HsvKCXdShNbf
	qTvcLQQigQNcNlylPKU=; b=l2W0koo+4HECjJF/Ke1KBW2tiBwE0texSKEoYkfj
	rkRmulgflREPFKrKWd5CkFyP/0Wqn36/hZRjJ/ucIv9qecE4wBZuHMJNn211DAMK
	bDRJOHXhsmSDkZioNgTWZ4LU+oakmE7BqfdSjhrTvuJoZn4vA59AOz2pJJTG76dS
	zaov8bzZ09W2B6yeIAU1iDecDvUZfvraaX4t7b6sWRp1lSGudvJsZwuRmJhGxtBz
	bdzFaCxMZobLcW0oOHZxAniBBywlNujHWyE+sBjvZ7wbxwLECnyrmy9Ryg+gt6a9
	f6u5dxEYMOyIrjoTFCcoH7ZOZdvGsWAYepJJ5Rw/+Q7gNw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d8uhg2ktx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Apr 2026 14:08:20 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ffa1faa59dso3344087137.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Apr 2026 07:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775052499; x=1775657299; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=esWbFAdk9cx1HsvKCXdShNbfqTvcLQQigQNcNlylPKU=;
        b=ZPHpJRcQvGz7ofhCy2xyrS53LCEDWTL+1b0IB9Wa7DHNUJW6Am2aYAW5lxtwE6f5GS
         ntDtiBjn/8zK+za8kZu18Ml1znGkVcS+VRoSjCuijViYfqDdlFBUQJRA5bRey4raL7XS
         7wVSjd0B6B+7fgufGunw7So6DpALbfL9SPSCKvk21jDFgKeztg+AIWTVbd1Ef7cWjiY0
         mDRE4D/NFcnEp0HFcFyZDrmhJZAi2gnAmnljnypnljyAm8xz835+Put4pTs2J9lyRwi4
         mKdTbKkLntMNnH7zk6SFNOsTha1OnAAu4Y9qvOKPPyTmBLlS356WZmw3xeu46eD/A+W3
         kxhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775052499; x=1775657299;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=esWbFAdk9cx1HsvKCXdShNbfqTvcLQQigQNcNlylPKU=;
        b=YuquOwNRf9q2DGF7GubROUYhjv6IDgG2DnNxm+SFInzDxQyS3c3VOTpdVeqgOGilP/
         z2z5IAkDZThz+x3yPvyEPfqleyP99/LXTjfn/xaKxAPmLhvsHN9Pq0Y5g27Rb1/6TXAL
         vOZg3qvenuFBbh9IAnsxaeg21/nqjx7VMya4ZTc6b/l6oJ7N5YEWQlmi4tV6QopPA9nr
         o9yWOb95HJHsAtxI1RIvYhTErVJ6BNLKb/LpYSXV0Do4cxCY0lyY94t7YvFIkuRCBTYB
         NH3m3s47AFMOYv2dpW4YISyC8/xC8QPXZVI95e34KnN53jBBzQ+uSVKmt5fPahuNythW
         3SzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVao2TaSGPRorwNnPg8pwMl3CJXV3OdvPJrvwIYLr3cpULExbCrYvuUAb1OLxA4ReG1abX2AjsUb70=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQYVSUh/9l6bTghZgg/UxcRzhodDcSC4pjZt+gMvOdeq5u1f3o
	QjJV67OXsKl7EgaG4ZbvjWT9/TyPmjAt20vno+B/DsaHjKKhpOXU0p0HulnqbCHs32lYbyHy5TP
	yJNpGiqGPU8utdlMwXDwjCkP06INlRTezJc8hOA/3wFFJKt6aM8V2H92p4eYbq3Z16Mjj
X-Gm-Gg: ATEYQzyfKSJKH5g3rHNvz1zjzsgpFfaMQHe4MDLJUHizPVhY3lRH4NzUqqul9xiYDfd
	YdzMuVIgd8xF90zEZOoVulPkJFvE4tifwbkdhUh+xMgDEeYfss40GKWQ32sHxXq3PKvU2Myh32P
	vpn0gryVRkkUwSYk4kchhBD3qlD02PgA2YfrslTeV1aoSqiqkjKry5ijPgKQG+uvteUEm+nttXC
	5JdM9GMyYQLL2rNtKUfhBh40zaoohcG2Nl+4ek7FzcUyJnp6vcwFSIMzx0EgPqOHc9zm7AULFKm
	sje6djU7X1hyVPEtH1jWQCpFHfCvdP/Wf9LPKzoXmf3u2cKX0QCHNE/o5fX0sK/r0KPEOgnjQS0
	j94UYbkJIo1uySaFh3jFBOYiM6ztHdfaoAZWHRCASZUbawbf/kb9bIEopbCeNcvc9CFPuqh4t9r
	xC5BiFf/oSb4As3SQfQvEj6DkakPFPlbjybE8=
X-Received: by 2002:ac5:c0cc:0:b0:56a:7f37:d18f with SMTP id 71dfb90a1353d-56d8a7b7a21mr1169665e0c.3.1775052499203;
        Wed, 01 Apr 2026 07:08:19 -0700 (PDT)
X-Received: by 2002:ac5:c0cc:0:b0:56a:7f37:d18f with SMTP id 71dfb90a1353d-56d8a7b7a21mr1169635e0c.3.1775052498659;
        Wed, 01 Apr 2026 07:08:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b144f16asm3448824e87.55.2026.04.01.07.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2026 07:08:17 -0700 (PDT)
Date: Wed, 1 Apr 2026 17:08:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for
 Glymur
Message-ID: <zbxzgonabk72p3rbgwo5qij3u6y6byioh66pkadnyl377ho4ev@uvwloygozmgh>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-4-ce0fc07f0e52@oss.qualcomm.com>
 <x3ts7to7c4qnorloahe7cgup3uekn4wolmmorqa3b3bjfslqfn@eijnzdp2ops3>
 <acua8Me0zo3v/CBi@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acua8Me0zo3v/CBi@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAxMDEzMSBTYWx0ZWRfXwQXZ1Z0qMbhA
 ARr2y/YzpCxZprb1GqadpjxRiaykOkFAeW3VklQwGh1iRY24xlOnYTVhczkEfyK29k0isEVnpS9
 QYT+DEA/V3IkBgOk6qGJbRkdAOaF+cYbAj2U1BWGo+mXBG7c8jjy+6yUin/vLq4EYq9kWGBImX2
 akxitkGMBDS2nZEXTMBCzWZsM8QLN6empWp4a69DMZXPtz2CSC931kKfL5gSlx02aRLCYxJ/wf4
 UaTxf8oCVRiQ0p0iAssTA10WIJFpsgqhHvchvkbEvsMFxS7yCgjrI69dHnS+7RX9QB57KsQHBtd
 UiRpI2yglZ8vDRgvUfK9HjStjccQPb62abIgXsMwpe8xtBSX67IBT/YEPjhQm+yrhHndtV5N8i2
 CjW6l8PysEXvTBNxYIKJG1YXfLVvE96Ws8yLsBB0+So79V418hfKgWfAbRnCNsHOnzaSDuxVweu
 GhWeYhzm7ai8M2xLv6Q==
X-Authority-Analysis: v=2.4 cv=YcawJgRf c=1 sm=1 tr=0 ts=69cd26d4 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=18sBtEtj7Mwma3VTVL4A:9 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-GUID: OBaDe3v8zBa4JWd4081F-vPxPKgkHd0b
X-Proofpoint-ORIG-GUID: OBaDe3v8zBa4JWd4081F-vPxPKgkHd0b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-01_04,2026-04-01_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604010131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_081913_817333_C2B99380 
X-CRM114-Status: GOOD (  25.17  )
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

On Tue, Mar 31, 2026 at 02:59:12AM -0700, Qiang Yu wrote:
> On Tue, Mar 24, 2026 at 11:23:19PM +0200, Dmitry Baryshkov wrote:
> > On Mon, Mar 23, 2026 at 12:15:31AM -0700, Qiang Yu wrote:
> > > The third PCIe controller on Glymur SoC supports 8-lane operation via
> > > bifurcation of two PHYs (each requires separate power domian, resets and
> > > aux clk).
> > > 
> > > Add dedicated reset/no_csr reset list ("phy_b", "phy_b_nocsr") and
> > > clock ("phy_b_aux") required for 8-lane operation. Introduce new
> > > glymur_qmp_gen5x8_pciephy_cfg configuration to enable PCIe Gen5 x8 mode.
> > > 
> > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 30 +++++++++++++++++++++++++++++-
> > >  1 file changed, 29 insertions(+), 1 deletion(-)
> > > 
> > > @@ -4705,6 +4713,23 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
> > >  	.phy_status		= PHYSTATUS_4_20,
> > >  };
> > >  
> > > +static const struct qmp_phy_cfg glymur_qmp_gen5x8_pciephy_cfg = {
> > > +	.lanes = 8,
> > > +
> > > +	.offsets		= &qmp_pcie_offsets_v8_50,
> > > +
> > > +	.reset_list		= glymur_pciephy_reset_l,
> > > +	.num_resets		= ARRAY_SIZE(glymur_pciephy_reset_l),
> > > +	.nocsr_reset_list	= glymur_pciephy_nocsr_reset_l,
> > > +	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_nocsr_reset_l),
> > 
> > Just for my understanding. If it was not the NOCSR case and had to
> > program the registers, would we have needed to program anything in the
> > PCIe3B space?
> 
> The PCIe3B PHY registers need to be programmed.
> But we don't need to do it explicitly because there are also broadcast
> registers: writing to these registers will automatically write the same
> offset and value to both PHY ports simultaneously.

THanks.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> 
> - Qiang Yu
> > 
> > > +	.vreg_list		= qmp_phy_vreg_l,
> > > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > > +
> > > +	.regs			= pciephy_v8_50_regs_layout,
> > > +
> > > +	.phy_status		= PHYSTATUS_4_20,
> > > +};
> > > +
> > >  static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
> > >  {
> > >  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > > @@ -5483,6 +5508,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> > >  	}, {
> > >  		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
> > >  		.data = &glymur_qmp_gen5x4_pciephy_cfg,
> > > +	}, {
> > > +		.compatible = "qcom,glymur-qmp-gen5x8-pcie-phy",
> > > +		.data = &glymur_qmp_gen5x8_pciephy_cfg,
> > >  	}, {
> > >  		.compatible = "qcom,ipq6018-qmp-pcie-phy",
> > >  		.data = &ipq6018_pciephy_cfg,
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
