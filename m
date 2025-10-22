Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88440CCD195
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 09:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNMBFzFS4JB/g+DWrj9OocDCoP8bGud8Bfx+UJgBYBI=; b=lUpoa6cT9iVtUh
	1l+BTXoFnINqfhwkeItZnO7Tij/cSTTE+SUPC4DiSih0LnmjK7SIMwjKrkOkWjdt1oen8VFZPeO0U
	9NHC2iy3kXYELi/3iSLoD4iPIbAhDM7IIAcD/M8bYuEb5ACyEdWXIWQ5lxNBP5mGXEuH6OoNUBLVd
	qQkoRp6+8mEhGNgXOrn49juUO/9Tqj8HtIgluBR1q1MgIDS6VF/gfOZ6ymojKtXRypTzLnvp1VWZ0
	CwA91NnTus+UxGEOiHjxDHkyVhb2GEMBQvg9Nl3FMV30anCAQEvwuRugxGy+9lmgr+7RvG5SfV9L1
	Nj7rsRnmzDi1qB7dyttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBUim-00000002Ajf-10ZG;
	Wed, 22 Oct 2025 09:01:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBUii-00000002AjG-24jX
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 09:01:26 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M3I7vO031508
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 09:01:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ivByTKhSESO0VcSxSaiYVhLG
	ISoDBO/7JhIXLIxz05I=; b=Sueq6TsGpWeoJOGBcFLsAoEpnNOT5Zb3CGY8mvZv
	gfOPV7k9z6T2f0I4pY5ky6HGf1X3WfGCpYKcwdW3b0oju+29JAlCw7rCH/ZHTvNc
	GeVIh467mrIM7SQThMhMtAX+diha7PqnQq7lzfhdLl6RGLU77jbfu2Y9MNsH3bKK
	LFX+P6QG/ANcyg7YTtLA5ArjjNVXGKIEC7q8sMLP5O6GbCI86mnLZBUG/x7qoxYU
	aO9HyHXoKSu6vOQYriUK4f7K3tzly/Pm+GspcFlmtPu6EgPDS2MzxP5x/t+/6j3F
	WSOJl/FYYfUlSJzXQCAikJHggiJmwnvoV9ZRJj6q2gum8A==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42kbt1h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 09:01:23 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-792722e4ebeso6136228b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 02:01:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761123682; x=1761728482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivByTKhSESO0VcSxSaiYVhLGISoDBO/7JhIXLIxz05I=;
        b=ixpEwPc4+IUOHjKEXhsNcqnNSiRy7I1G8RzJ2MmiQDmUKcGJTlCB/BJ4xOIwMHuCUo
         JrDavHJbqst2U6TgjuxzbhgWK90WirUyB5bSZs+JHEKf0L/JLTuZ5CdT/KS1A4Jb7IiJ
         qPLrd0NvE1waAsiXHqRCEwFSQKc7SbkyPGCeSSTsSZoEk1ESjL/UJa1CfcBCN+OBx5XT
         X6HDIZc6H/Fdgfna1ZMJDjE5tLs/ZgzHOHqsGvNYNA/ErCtYhq4mNxKMmuTc2c/3eyku
         TJMqbGC0z1YWU8xTxGlW0W/ovh1/m5xl8GP0YkoTL5pCpTttpxXKhV6Ca1IVcMx25vlL
         8okw==
X-Forwarded-Encrypted: i=1; AJvYcCU32GSqYx6oJ7K1OewSsTZ7djbizfd/C+RM4JmhpIKBYMfcQ8lLsLW0tIhpC5mo5eQv83eL5C7KeXQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQUvRI2rmhfKxyguKXFe1SePntH8SqDmf7lfTyTvtHLNZJgp+J
	FirEN3AUxwtI94Zpsu1LHrymgjLPAA+IO/EKOuOsShPy0Ge/2g8xjx4kowkZuyoxT6AGZd4fYnh
	ghvvUS34NHl3HJtN0kiHOFYLTfoVE/0z5O/4rCHzQ2vIldGYbgziaW4wzLB2s8xLodrMkU0529F
	U2UHJBjw==
X-Gm-Gg: ASbGncsIj8UKwwZoV/lM/UgN7BO4+c2qHJ0wgcALtBEfikN8Vnro+USHWSgRAEOJu7m
	2/Zsxzlq/m8tJY2pteRtvLenE8Es9DxrSVWbRnWxkWdc36L/txLQq5vu3Sy+ByGAV0a51sYZgn2
	hVf6+nZjcIvt7P9BFE6bOFFsyiLguiRvkQdOs26nprP8ZtFqMhd9uSOraJtHhzNF95jMDMC4lVT
	R28j4MUbhV/66oUfoyXaEVYkVLqWD4vQqO11ZmmFUByl9aBxW/vc6uSsBTX+m2aCGBdv7QyBFo3
	8/N+ZOuXZQj/Q5xhsexmsV6zLW0F3rOAEhCdWvm9lyWvaMRDB9fYYFL+Vbd76C5f37A8K7rQ2X5
	JSp0s0icVWrlkoM5JkzpNFqNdnrCx+o+Y89VYHLwrtn2x/w==
X-Received: by 2002:a05:6a20:72a4:b0:246:354:e0ff with SMTP id adf61e73a8af0-334a85242b0mr26308717637.8.1761123682220;
        Wed, 22 Oct 2025 02:01:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrlAYEvjmvObgyZJEcggou/JfliOLpgFt5Kg0VJQSp8IlUPjr3+XSTnue892eZTAwBzkWAUA==
X-Received: by 2002:a05:6a20:72a4:b0:246:354:e0ff with SMTP id adf61e73a8af0-334a85242b0mr26308680637.8.1761123681758;
        Wed, 22 Oct 2025 02:01:21 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cd9005e2dsm2273885a12.9.2025.10.22.02.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 02:01:21 -0700 (PDT)
Date: Wed, 22 Oct 2025 02:01:19 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Qiang Yu <quic_qianyu@quicinc.com>
Subject: Re: [PATCH v5 6/6] phy: qcom: qmp-pcie: Add support for glymur PCIe
 Gen4 x2 PHY
Message-ID: <aPidX8h5z7/A059s@hu-qianyu-lv.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
 <20251017-glymur_pcie-v5-6-82d0c4bd402b@oss.qualcomm.com>
 <rxju35izazp7zrzs6vyy2cxuynzc6k4i4iot5pjahwl2bfoka5@cutpfodvixmp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <rxju35izazp7zrzs6vyy2cxuynzc6k4i4iot5pjahwl2bfoka5@cutpfodvixmp>
X-Proofpoint-GUID: Zm4NRU5qplwoN522BfJHM5tJPJfWBKsa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX0wO1HigxvO/5
 8zE42c2Rda+jVBnokKVud8+803C6N+TKa/2uMz2DhfGroz41crQNDR8hnxgMLBn1mHg+Ndvc07H
 3LbarbNs4hyJdpZMUo8s/Pxm4mtp+TFH8X83P6Y93n/okUcLyuSCDDqAOkRkw1Lk9xN0aW2jxY6
 h5lY/3qA07Ck5ZzVYDEcdyXoC8YipVFmrDeA+ndL27Wxfxv2ZR3qOCG1KQhIjsSS6goK7c6P0jP
 B4/BSi7azlkPyFKUIE8YZvqi6M8/gB7H9jsnTstedoJJuC0WBlJNMBLyrvhlnMWBi/cW7kqO8BD
 XgH900hGgSAupbKqVZIE7vnmGVfVptq3w2FU1tHbvmYgXti5dPCv+tOyWRTl7mCScW1M8eABfK5
 Xn2GxXDK2hWUTbMuKOljFr+NbyywhA==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f89d63 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=YTQ-dMB4pklsVi_CFI8A:9 a=CjuIK1q_8ugA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Zm4NRU5qplwoN522BfJHM5tJPJfWBKsa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_020124_591661_F9F97392 
X-CRM114-Status: GOOD (  20.43  )
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

On Wed, Oct 22, 2025 at 11:53:01AM +0300, Abel Vesa wrote:
> On 25-10-17 18:33:43, Qiang Yu wrote:
> > From: Qiang Yu <quic_qianyu@quicinc.com>
> > 
> > Add support for Gen4 x2 PCIe QMP PHY found on Glymur platform.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Since this is something I already sent upstream here and it is more correct:
> 
> https://lore.kernel.org/all/20251015-phy-qcom-pcie-add-glymur-v1-2-1af8fd14f033@linaro.org/
> 
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 28 ++++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 86b1b7e2da86a8675e3e48e90b782afb21cafd77..2747e71bf865907f139422a9ed33709c4a7ae7ea 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -3363,6 +3363,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
> >  	.ln_shrd	= 0x8000,
> >  };
> >  
> > +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8 = {
> > +	.serdes     = 0x1000,
> > +	.pcs        = 0x1400,
> > +	.pcs_misc	= 0x1800,
> > +	.tx		= 0x0000,
> > +	.rx		= 0x0200,
> > +	.tx2		= 0x0800,
> > +	.rx2		= 0x0a00,
> > +};
> > +
> >  static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
> >  	.serdes     = 0x8000,
> >  	.pcs        = 0x9000,
> > @@ -4441,6 +4451,21 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
> >  	.phy_status		= PHYSTATUS_4_20,
> >  };
> >  
> > +static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
> > +	.lanes = 2,
> > +
> > +	.offsets		= &qmp_pcie_offsets_v8,
> > +
> > +	.reset_list		= sdm845_pciephy_reset_l,
> > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > +	.vreg_list		= qmp_phy_vreg_l,
> > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > +	.regs			= pciephy_v6_regs_layout,
> 
> Definitely not v6 regs here. Needs to be v8.
> 

Hey Abel, please ignore this phy patch and dt binding patch for gen4x2,
Krzysztof reminded me you have posted patches for it.

- Qiang Yu
> NAK.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
