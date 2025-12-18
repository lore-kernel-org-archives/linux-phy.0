Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F345D6D22C
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 14:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdkLas/PbgmNRLLwc/fl1yd0qqiw74e156u2a9rGGRA=; b=2ietVhjHKy36Dq
	X2emCrNQ9y6JyCT9O3XYDKlzkrhC3+DBKNejQ8B8vqD+avHCHKx95aLdtRWm0zGvKHJjnhc4h7oiv
	pJ9tHYS6ntFPObVWo4mpb/FefVfbLQoVvynomKK3U+jkg/DC9GMbT7djDwcFAmN+Dn6WZOapaWF4i
	eGrbxphX4lK/Vww9jquzFVCrucor8H6qjfUtAK1SEcbpdMc/THgvlEOLd7MPigWit+udwqCTD7eEx
	D1jSRl3poqZ9yDSsAKSaYdjNfr0GTXkRl8PGl9dDTd9JNLi7vgdSwzff7y7oTHtRSuEtV8TR1xZbq
	fmFjUTV+J3oN8GYGzuZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFE5-00000008d5N-3oex;
	Thu, 18 Dec 2025 14:43:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFE3-00000008d4y-0gUG
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 14:43:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI8mbnS813871
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 14:43:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cl4v0oEPk0Fzc67kkLwDXNvT
	S+8R7nFDTHzGx6wYMJ8=; b=ZhmfQyw/JXNNvoQLaqIzCtrDzdR00aSVZ9TKxagW
	t5m9yzpBTyOi1hTIVW/SjpjPuEwN27otyVRDbUJXzAUVIUGHT4htGIUX96XJ6osK
	dFBuiRxUaLdtZQlsKjFyMB/urMXZrBx252zF9jQ7l2P7GLLt1HFcZVPrUABYQCYp
	bcIL2PORFygZUQWYIbKn7DAvCWaqU+ELhzVli16CMePq6VlfnQzRcPzYaglFhBka
	FSn1dtBccjS5NmUBMBIreURLDMToKgmeiLAukeW9w6MPj7w/0eFF9DVAT3s7bTNe
	AvrO9ntkJdBAm/nOPP1JJhKEeC/SEVgvL50AmiYlwiHkcA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b40v7bd4y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 14:43:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1d26abbd8so16776621cf.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 06:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766069009; x=1766673809; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cl4v0oEPk0Fzc67kkLwDXNvTS+8R7nFDTHzGx6wYMJ8=;
        b=MzVVw+8R5KiaAlL8jYbot8U62ZXVWLlBCCEA9jXGMajap8IYJbK4maKX0mqMZK7/B+
         iyjXbH083U5ImANXw6T2XUMA9YF7yM1Bct7d3UkJhVnjfjGss7JTjALgDWwN5BTN1Giv
         M+5kvxV3SBSXJqQHxFEmg9prbKmvqluP4RbG3i80r/82xJd+diyGh1ADNTISJfDrpLuA
         mm1orTyADvBYyiWZzQVFbKmlfRL0VGd+Yd7Qx0TYyvNbI/SzOkPsyh2s+/YCrWhfFIz+
         B0shieAj5XMFTZ+MEPRv/rgVBQNhEfyHCDfmrODI4gbfejuM7Bxuh50XdK4e695AjscH
         ptOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766069009; x=1766673809;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cl4v0oEPk0Fzc67kkLwDXNvTS+8R7nFDTHzGx6wYMJ8=;
        b=l4iXE9QHM7sXpXiR8X30mD52+SQgSqHoEYsMY1dH50Cfgi7ICa+UNozVgkWayPOpHF
         teC0/MUHNrxjRM2E7nHMVn7A3C6J8p5TO5KEdmif4PFjVulte3OywXh4k5ZLQvgTD4iM
         yQqhP6lxEqB3/IZyDXmTSy2YNo/KbWfS+FIKc2RUD3qbZyteqRjbT0wqCTd/CIa82nu6
         7ICNMD9JOksDsEgdTgjPzOp32gycwfI/mUiiexwuaa4oDRbMUZ9pvqqDnIoLQdjp4OWm
         TQeTOjo9AuubJnFD1vMgr607nn2sdUL2m8sAtrFZ/FrCHWRgiXdFgMJjF8M03c0DBDjm
         vGog==
X-Forwarded-Encrypted: i=1; AJvYcCW0nkPrFCUxIjiUH4YMirvNPazQ5smvhWmfCmJP744QcNf4x36TV/U/b1hWvIPQJy8RPPV646XnuvA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRJGaXL1pKMBTKJXPjwwegraww82NJE6kJMY8UTdSE3NXq+9Te
	ByWbNqL2/SltegY64uMCY7CAPmwXV/qOcdz5hcJ3A8B1Dgo0/yYR20+uciMXVcwHLRHthQn6ySQ
	tp/BBYi7FwXTECkhdymDrWkhryfKZOjnvH3MmWMsB2e+1Nus+Lyr44cAlQ0NWkb+5vLv7
X-Gm-Gg: AY/fxX6hdk65cNsEP1qrg5lXKiy+DuKHJF2QNjn3dHbIx6Xz4aVuKYX+GBJJW9oeZKM
	99rUxnqgpkn2ysXUiL9QpRdkJ6qgTWC5Yubyo7iSfQtEGPqgGhDlToOl3JYcztWhmX6hPViIaAf
	KRXmHQL+IDx0GHEB0gKZ0ZYfl1Ld6Rh1bIcE7OeDW5SQ0Jya4iSrnLAF4NhTB5hTKLfXbTHwy5L
	m23/BNnfx/9EEr18IOyYOLBNMjcIMyLWi1RFxHClmfmEMiAdll1Wo4sk/pyneIuQCDO3j3SQzA7
	VoxrJLY71LbVACxghE411eDOwr8823lTh4bxzUzZepKxDZWERIFjfLGQXTchkkE34MYku8u3XdO
	sZfRRBgj7L4Tdax/Q/16Qpc3MT64Ku/AmKi+jXFpICMKRBUwbdITGBGXeqAnLGLbZ9CF/sA5T+o
	va/opkXrkmRA1qBZF+o+hnSj8=
X-Received: by 2002:a05:622a:4acb:b0:4ee:13d0:d02b with SMTP id d75a77b69052e-4f1d059e61cmr284139761cf.50.1766069008851;
        Thu, 18 Dec 2025 06:43:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHL6dB+1hj86WlzrKc5tiatChh9pmm+26BpKCuaMLqUN4WCKyyEtSQwL9D+XULfFU0r7F5lig==
X-Received: by 2002:a05:622a:4acb:b0:4ee:13d0:d02b with SMTP id d75a77b69052e-4f1d059e61cmr284139561cf.50.1766069008428;
        Thu, 18 Dec 2025 06:43:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-381134f39aesm10852521fa.14.2025.12.18.06.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 06:43:27 -0800 (PST)
Date: Thu, 18 Dec 2025 16:43:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
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
Message-ID: <e2lg4eanhotbvauhfaq6z6d22ptwn5g5rfpvblpuegobdybtv2@f4qfelzzrymq>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
 <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
 <mudq7gmqs62osuarvflmemt2a2gnuloywabtr4w5oyyddp4b7v@eynaurtfrnyt>
 <aUDywpWf+gpEH4Uw@hu-qianyu-lv.qualcomm.com>
 <ulsst7k4meqq5psv577pqapnsrehvvpk3oijp5usxtxdwoxunb@6mxjmpigkwk7>
 <aUPYk6VuFUFrtUDI@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aUPYk6VuFUFrtUDI@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-ORIG-GUID: 9bQAFXbnFGKn-a2p_S4988z9To7zEPyT
X-Proofpoint-GUID: 9bQAFXbnFGKn-a2p_S4988z9To7zEPyT
X-Authority-Analysis: v=2.4 cv=f8JFxeyM c=1 sm=1 tr=0 ts=69441311 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=Zsci5tvq42nDwCYANM4A:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDEyMiBTYWx0ZWRfXzFFQ83cdehMg
 iiE5vk4IDdUyMZ2mT/MqcBCOfsgpgEO5Bh09SJ1fG+PgbgyMw2owKvX14kHz16l0Uc2r3jmirLP
 PuGX7+dnzW/yrZophZNvx058kstvJQV+LspKJdR9tQAOpUFHSUUMULOEsGdv9Qa3RSs6uUn13dM
 EFSz1NHHvGQ1l9oo9aRPWfL6oHVBI0D9qVLYTx+r888E5bN1Amy4SEwIZTScTX4cAo1FWDEqxN3
 hCAo+CIevQl++yWC/Ot0FXDFhJTZAfcNQ3zqVxxXgZ0ul9qMwelzgcSDo/JzJCM0eh/guneGhHh
 PGRTbW9BRdTgcz7JgxjyGezogrpHUrlFw/vgA/u4KC/Nx5iRqQVfm+lfIig1/jctnRho8fIbPIV
 JvHr06QtycHN2xV2lXoRT+iAUpCddA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_064331_323228_B33796E4 
X-CRM114-Status: GOOD (  28.55  )
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

On Thu, Dec 18, 2025 at 02:33:55AM -0800, Qiang Yu wrote:
> On Thu, Dec 18, 2025 at 03:26:26AM +0200, Dmitry Baryshkov wrote:
> > On Mon, Dec 15, 2025 at 09:48:50PM -0800, Qiang Yu wrote:
> > > On Wed, Dec 10, 2025 at 03:51:15AM +0200, Dmitry Baryshkov wrote:
> > > > On Mon, Nov 24, 2025 at 02:24:38AM -0800, Qiang Yu wrote:
> > > > > Add QMP PCIe PHY support for the Kaanapali platform.
> > > > > 
> > > > > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > > > > Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> > > > > Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > > ---
> > > > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
> > > > >  1 file changed, 194 insertions(+)
> > > > > 
> > > > > @@ -3363,6 +3516,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
> > > > >  	.ln_shrd	= 0x8000,
> > > > >  };
> > > > >  
> > > > > +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {
> > > > 
> > > > Is it really 8.0 or 8.20?
> > > 
> > > I double confirmed the version, it is really 8.0.
> > 
> > This is really strange. The SERDES offset not equal to 0, te
> > PHYSTATUS_4_20 bit instead of PHYSTATUS -- all of that has always been a
> > characteristic of N.20 PHYs.
> 
> Yeah, seems your theroy is correct on previous target such as sm8550 and
> sm8450. But for kaanapali, the fact is the version is 8.0, SERDES offset
> is 0x1000 and the status bit is bit 7.
> 
> We can also cross check the status bit with downstream devicetree:
> 93 		qcom,phy-status-bit = <7>;


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> 
> - Qiang Yu
> > 
> > > 
> > > - Qiang Yu
> > > > 
> > > > > +	.serdes		= 0x1000,
> > > > > +	.pcs		= 0x1400,
> > > > > +	.pcs_misc	= 0x1800,
> > > > > +	.tx		= 0x0000,
> > > > > +	.rx		= 0x0200,
> > > > > +	.tx2		= 0x0800,
> > > > > +	.rx2		= 0x0a00,
> > > > > +};
> > > > > +
> > > > >  static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
> > > > >  	.serdes     = 0x8000,
> > > > >  	.pcs        = 0x9000,
> > > > > @@ -4425,6 +4588,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
> > > > >  	.phy_status             = PHYSTATUS_4_20,
> > > > >  };
> > > > >  
> > > > > +static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
> > > > > +	.lanes = 2,
> > > > > +
> > > > > +	.offsets		= &qmp_pcie_offsets_v8_0,
> > > > > +
> > > > > +	.tbls = {
> > > > > +		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
> > > > > +		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
> > > > > +		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
> > > > > +		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
> > > > > +		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
> > > > > +		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
> > > > > +		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
> > > > > +		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
> > > > > +		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
> > > > > +		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
> > > > > +	},
> > > > > +
> > > > > +	.reset_list		= sdm845_pciephy_reset_l,
> > > > > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > > > > +	.vreg_list		= qmp_phy_vreg_l,
> > > > > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > > > > +	.regs			= pciephy_v8_regs_layout,
> > > > > +
> > > > > +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> > > > > +	.phy_status		= PHYSTATUS_4_20,
> > > > > +};
> > > > > +
> > > > >  static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
> > > > >  	.lanes = 4,
> > > > >  
> > > > > @@ -5209,6 +5400,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> > > > >  	}, {
> > > > >  		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
> > > > >  		.data = &ipq9574_gen3x2_pciephy_cfg,
> > > > > +	}, {
> > > > > +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> > > > > +		.data = &qmp_v8_gen3x2_pciephy_cfg,
> > > > >  	}, {
> > > > >  		.compatible = "qcom,msm8998-qmp-pcie-phy",
> > > > >  		.data = &msm8998_pciephy_cfg,
> > > > > 
> > > > > -- 
> > > > > 2.34.1
> > > > > 
> > > > > 
> > > > > -- 
> > > > > linux-phy mailing list
> > > > > linux-phy@lists.infradead.org
> > > > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > > > 
> > > > -- 
> > > > With best wishes
> > > > Dmitry
> > > 
> > > -- 
> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > 
> > -- 
> > With best wishes
> > Dmitry
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
