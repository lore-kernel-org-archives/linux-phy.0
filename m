Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D5A5FB5181
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 01:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPPKsiqq0NxKGABfcR6Cc3Y11EOgtWbfkAK1pWggjPI=; b=pWHUVuA8cIkJRy
	zCY9DiCYdqd+OvizzTjQIec4QTvYRjJoeW/UH0WKMj4jo4EUeYQtR5tIvFvYTrWq5gDs2K3VEYvwm
	BlODNFelnAHR0FmM7KIHtNtPTGS8v+Knar4UW8s9HGsBws6bVfTyqRFIALwyccW1D+dD1HJE/WuJJ
	HdB6gVh4Q5WK0Ixcugrhwdzayj7ckWGcQOvwJt+/Hl23FOuquxyaruDi0MvYUg1HLhhzqW4NELAVH
	F6r1Wi5i81Mmj9/qrITfIU/NPb3FMA5GSo4XspyuNBUnYAYDnhhY01eqWTwHqSwqYJu7V5nDweQo+
	e1YiKEkfywF21wtoF3mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9vZV-00000005j8t-0kpd;
	Tue, 07 Apr 2026 01:49:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9vZS-00000005j8K-3Ksj
	for linux-phy@lists.infradead.org;
	Tue, 07 Apr 2026 01:49:40 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 636LQA7v1405865
	for <linux-phy@lists.infradead.org>; Tue, 7 Apr 2026 01:49:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5SKSrMjMi1N4JiTNo9tgjC+8
	PpkGu0In1Ys6pg6Bnpw=; b=QBFy7ofrnRCthxbJP5RAYFc50zZ5qUaLSlCRPU/t
	5MpSxZQ6k6CgG1SJJs13r0TMtUameirMCDSiBncP/ZBVn8aSaIoNpqOhpWMlAeuj
	am991hxN7qnIDFZkk6iP2eXVY5jvHFNWZa73T7k6KuB5blaTDYKEURbRblozqJA4
	lobn21bmO//gIgbyPLqMkwLvYFdLe8zcqR86qJoFvFReZDezbvPGpNHL4beqWRy8
	Q3bess5L4HZcaCeCY9Yo5h3svEJGnIa2R0dNWhx7wit07cOGX0+9iPhtVa05Xear
	Wd0W1skcxBWzX9hj0gTMFFs55olEe2VRHClN86y5lPgcSw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dcmrarj53-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Apr 2026 01:49:37 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2bdc1b30ac8so28382536eec.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Apr 2026 18:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775526577; x=1776131377; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5SKSrMjMi1N4JiTNo9tgjC+8PpkGu0In1Ys6pg6Bnpw=;
        b=JtehPSv4N6ROpjqrz7R2g7YujIL06eNMplrEPcqwH9xEtU0JxdQHvMe9bgolnnCo6K
         LG7uuA4o982EgGxQaCDBvrcIJ9G7cfGwvzI9P4FuqZbZWp5e0Y0NDRpD3jixr5kxCMiH
         nIZroeiHoD7WLN8Aw6IOTe8cT8TdlC5+9EAXxCaelNZBLlDI4OGwsiXyDfTA2P40zBSF
         4m/TzvHqKm22umOPCKXEK5OQLAa0tM51L64zYoeZB3ix17dc3WKZ5EWbbQ4tWzsYqeJB
         01U98i6C/MF9cl+sWRGZwy44xnk0Znfu7vV6LE9+NoC9rmTWhBaabV2pzvFfgKe038nf
         LX8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775526577; x=1776131377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5SKSrMjMi1N4JiTNo9tgjC+8PpkGu0In1Ys6pg6Bnpw=;
        b=Msq9TZe2xrUElIjqdoI2MIgAtaPNGgMtHWmg4SBy7cdrue6VDa1HFL+NbB8J/QFGoo
         NcglkZjWMGhuqT4ADzD93DJpJi0tuExkDu/NHo5YgDu1X/Wdn4nuEdD2VLExEOdPPhFw
         c8Jk/wrS/pkhARNEi1qHBKM6x5FmpxXfM+I7/DMlTZI1TAYoIDLeck0w6jqifFLSLHJC
         NodDlPVIHagZk+F6G+OIYg6rkndLM+3qh1yhO1H3YjLikC+OsmzRdhD1CXxBASESdjnZ
         ilkT1XVn1P4NhqsMd/yoF6IjemZCpu0QNDQR+VJq0K7KN/Tbe8UWBT2dZvbZxc/rroL7
         4JsA==
X-Forwarded-Encrypted: i=1; AJvYcCXmUT+sUNK1O99Hvkjym6QFZBQz36Z0/qna7e/dPDJ0/zn/kpiZvyp7CSEMb6J2+GhoCpj/fq1PFh8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4Knj2X0QOcGPz4OZOSySntjM/yWiSpGTDLa7ma5bDXgYnUt1y
	NfVVTzg79EJg+T4ILMwuzIRwW2DTFe1pFQVkUEDwDTKBFsiiNu44ytm8pv1hOblPQ4j1MQM2U0H
	RaHj1sDMwAGQ08B5UV3YVpdVQLfA2ayA1uxyPfUGVu4welc4/g2ngOutrrmkgfab9ERDX
X-Gm-Gg: AeBDievndjcp+yI8NoX6zMhhf+4yY1vtH48yZPCqezzB2x/I6D518l6ksqgWLCEQUU+
	TzuOX5/0/eiRla9JkQXzPKW4BSnfoJDF39fBWv91AlVOUm7EmYFuWApUgGRHTbzgNr+4IfSTYw7
	PfxuBj2nHJt3F+iLCpB6sHIq7itSqBOVGn+2tn5MbJBKNkmWNxl8g1AivvUulo9XYvTgEVtBEZZ
	fmCetPZ7nohUuhoVucRT8D4RsaNNgcf6PogNszoM2YpAtSwImfcpma5trO/CVtD0X5sctEKsYnZ
	ZjcEK5Sfofn3OVaGugL6KjEnsnCsWLb1OupGGsYQf4VQsZK0z6+MdT2PL1NSuYyW1dwgjl+kXJJ
	iqZ0Iivfez84geusQyFLsvbr3mDyF8YEphYXsqSAEeATyXn2xCIsH5RjULUpkXl5krCRB
X-Received: by 2002:a05:7301:5793:b0:2b0:571a:28a5 with SMTP id 5a478bee46e88-2cbfba8dc09mr8006647eec.18.1775526576567;
        Mon, 06 Apr 2026 18:49:36 -0700 (PDT)
X-Received: by 2002:a05:7301:5793:b0:2b0:571a:28a5 with SMTP id 5a478bee46e88-2cbfba8dc09mr8006615eec.18.1775526575813;
        Mon, 06 Apr 2026 18:49:35 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ce39d13decsm7213135eec.8.2026.04.06.18.49.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2026 18:49:34 -0700 (PDT)
Date: Mon, 6 Apr 2026 18:49:32 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for
 Glymur
Message-ID: <adRirK9xyn5T1Bdz@hu-qianyu-lv.qualcomm.com>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-4-ce0fc07f0e52@oss.qualcomm.com>
 <x3ts7to7c4qnorloahe7cgup3uekn4wolmmorqa3b3bjfslqfn@eijnzdp2ops3>
 <acua8Me0zo3v/CBi@hu-qianyu-lv.qualcomm.com>
 <ac0ubhTTsUNKHD__@baldur>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac0ubhTTsUNKHD__@baldur>
X-Proofpoint-ORIG-GUID: EW7YpjkUfp0RkHEJt3xb834usC6W2RHJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA3MDAxNCBTYWx0ZWRfXzTB0vLqOocgH
 53mqORwDuMgBmLVNVMu513BFFK96F3+s+96mcV0dvIwjC0uC2eLhTrUbLOxgX2og45hM/vCG9JH
 fYQ0oFkYaY4JQPHN3KAUcsNxdmOZSpBToDcGG9SBX5t6QrcbnuUmg2POBtuwX8NtYz3Sqd6VpX+
 8bh+xYrgLze/FPKYqwhDYS38uyvg2EVC+4xwcIQfCc1VSTI1FCwtC2AY70FvMXzfRP/H3chqeVq
 IT6zFwLlrf1V8C2Kv4i3Uqk6vkyVAsASh8ZqeMRGnU4QjUbA5Aq75RIH2HRZdZrk34cSPewBa3q
 +RB75CrGo8iuYDjxZ8k/LImzpj94hIIIQl5HI7DEaSAnuUbQVVz2KH98gZlsu1YROX2Bhln83v7
 mx5SfX+ztbNaC4Jiz0nIGuHvncRtI2WSB1SuGMl2ALN/MIlcsZxsRUSagveypV316L5TtY5Qdw3
 T+mOdAt8+2C3DCMPTzw==
X-Proofpoint-GUID: EW7YpjkUfp0RkHEJt3xb834usC6W2RHJ
X-Authority-Analysis: v=2.4 cv=D/d37PRj c=1 sm=1 tr=0 ts=69d462b1 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=hLGjiOuCDu-Tey0qOkEA:9 a=CjuIK1q_8ugA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-07_01,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604070014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_184938_873711_123CA0B1 
X-CRM114-Status: GOOD (  27.31  )
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

On Wed, Apr 01, 2026 at 09:41:03AM -0500, Bjorn Andersson wrote:
> On Tue, Mar 31, 2026 at 02:59:12AM -0700, Qiang Yu wrote:
> > On Tue, Mar 24, 2026 at 11:23:19PM +0200, Dmitry Baryshkov wrote:
> > > On Mon, Mar 23, 2026 at 12:15:31AM -0700, Qiang Yu wrote:
> > > > The third PCIe controller on Glymur SoC supports 8-lane operation via
> > > > bifurcation of two PHYs (each requires separate power domian, resets and
> > > > aux clk).
> > > > 
> > > > Add dedicated reset/no_csr reset list ("phy_b", "phy_b_nocsr") and
> > > > clock ("phy_b_aux") required for 8-lane operation. Introduce new
> > > > glymur_qmp_gen5x8_pciephy_cfg configuration to enable PCIe Gen5 x8 mode.
> > > > 
> > > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 30 +++++++++++++++++++++++++++++-
> > > >  1 file changed, 29 insertions(+), 1 deletion(-)
> > > > 
> > > > @@ -4705,6 +4713,23 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
> > > >  	.phy_status		= PHYSTATUS_4_20,
> > > >  };
> > > >  
> > > > +static const struct qmp_phy_cfg glymur_qmp_gen5x8_pciephy_cfg = {
> > > > +	.lanes = 8,
> > > > +
> > > > +	.offsets		= &qmp_pcie_offsets_v8_50,
> > > > +
> > > > +	.reset_list		= glymur_pciephy_reset_l,
> > > > +	.num_resets		= ARRAY_SIZE(glymur_pciephy_reset_l),
> > > > +	.nocsr_reset_list	= glymur_pciephy_nocsr_reset_l,
> > > > +	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_nocsr_reset_l),
> > > 
> > > Just for my understanding. If it was not the NOCSR case and had to
> > > program the registers, would we have needed to program anything in the
> > > PCIe3B space?
> > 
> > The PCIe3B PHY registers need to be programmed.
> 
> Why?

Because PCIe3A and PCIe3B are independent PHYs, each has its own SWI
interface. Per the PHY HPG, all SWI interfaces must be configured, so in a
non-NOCSR flow we also need to program PCIe3B PHY registers. This is
required by the hardware design.

- Qiang Yu
> 
> Regards,
> Bjorn
> 
> > But we don't need to do it explicitly because there are also broadcast
> > registers: writing to these registers will automatically write the same
> > offset and value to both PHY ports simultaneously.
> > 
> > - Qiang Yu
> > > 
> > > > +	.vreg_list		= qmp_phy_vreg_l,
> > > > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > > > +
> > > > +	.regs			= pciephy_v8_50_regs_layout,
> > > > +
> > > > +	.phy_status		= PHYSTATUS_4_20,
> > > > +};
> > > > +
> > > >  static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
> > > >  {
> > > >  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > > > @@ -5483,6 +5508,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> > > >  	}, {
> > > >  		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
> > > >  		.data = &glymur_qmp_gen5x4_pciephy_cfg,
> > > > +	}, {
> > > > +		.compatible = "qcom,glymur-qmp-gen5x8-pcie-phy",
> > > > +		.data = &glymur_qmp_gen5x8_pciephy_cfg,
> > > >  	}, {
> > > >  		.compatible = "qcom,ipq6018-qmp-pcie-phy",
> > > >  		.data = &ipq6018_pciephy_cfg,
> > > > 
> > > > -- 
> > > > 2.34.1
> > > > 
> > > 
> > > -- 
> > > With best wishes
> > > Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
