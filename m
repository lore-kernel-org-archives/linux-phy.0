Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C349D5B87C
	for <linux-phy@archiver.kernel.org>; Tue, 16 Dec 2025 05:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ff2hX/mp8kjcVKR6jXu9GlAjimO2axekEslUIEUug1Y=; b=FnXHheQ5HVyL5t
	wIXeeehSmw0vhmQyEF3mCILj5KC3dcnOBNpWzhIZQvkAS/+e2wwmWYvbA0zUX4ZGPRc4AIxlyYfHV
	UiY9tL3n66TIYtDglmZLflyGGm7YVu7a6XvTVWnGl9Wu1iRNblXXN6k5ZyD+NEOPQHXwxlCwBJhGu
	B3aATjY9Aj3udTvy9iBVxBnXaC8JW+qpAZHgGdSEjd4G3gyGaPXHKt1huFfc5kEYae96OaLJHsfla
	wELNyHAti2gz7Fh8ZZIeiBkEn2la3pNSJ/sXOBr4MSMR5E46Tiji2DlHXBOTZEzzza6SS5GC8mg0n
	NWgWpWdvUAKiV1f/fdIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVNvg-00000004jHB-1J04;
	Tue, 16 Dec 2025 05:49:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVNvb-00000004jGQ-3NDf
	for linux-phy@lists.infradead.org;
	Tue, 16 Dec 2025 05:48:58 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG51NMb2395817
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 05:48:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VWOU4era1E560oliF48CHv2g
	GuOkdWC28bCjZYxjsko=; b=BY6I75pmxUwzVTxfz+3t9At6hGkfasnOMIm8b7Cw
	IJ1C8cqVUcx1J/zSeSxKABX2WsGkuXLhskHbex6DeEXAPzpd93GyRkh3eXIaIRLe
	bqyQ58w1hKxZjao8kDVORS0UtICPES+DWzz8/BkVqgOabNXWl66b1HPzELqXMlYa
	DOWtg31ufhZiGabevvHZfVnn2EoFGXmb07YUOiOAP+ymPnK33lJAZAQO+eHOYnSh
	fXhBXQvavkPNEpw4xTFyhw9T5mP9Zh5fVKzzZYkZqcsFX7tTplQJU/sX3fGhYXDQ
	+sTexuJoYWsoLWgW2u3I7/qhBXF5ItEiJt5qqWw1ygyu8g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2p4f28x0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 05:48:54 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f177f4d02so69373145ad.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Dec 2025 21:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765864133; x=1766468933; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VWOU4era1E560oliF48CHv2gGuOkdWC28bCjZYxjsko=;
        b=Abo84Hyl4LPOJvFa/jQngMJKesSo8wDcWOL7+6542MmA8cQof8dKqeIWb7tSHOBKTt
         DLgCcl5Bo4Sn5aglp+eNjLvGVMP7jXTj52dYseUxMajdHN0Q8bZCt/h546UutXV9Hy7B
         /QkCxW3VAo+VThQCFvZXCIHUCveeBXoHs05LNOAdTJcwzUDlddoB3koWgE0mOhOtkBs+
         0OWkF5iYV3WTfSbDCHjka5G5N1MfflbO0RNY2aRrKuUex1Sg0VSjfiMkFCjWyolO0pK6
         m/pwP0iQueyqk56zS/zr9Y9UredPTOGus/PhoRZQw/IhQ8//Rbqgbd9Yko9eZGyV6ElQ
         FaNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765864133; x=1766468933;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VWOU4era1E560oliF48CHv2gGuOkdWC28bCjZYxjsko=;
        b=u+NAeismk0ZmR05sfh/MgOTiBUHjOxewIcyoNAJsiU8wvHcHjvuWM5Vx1u1PMAqSG5
         gwVkw/fKxcyyUdLaqtETdQ3qBN18Wyl1HXkXeRIgF8FL3tjEuf7kHzb1BoiRNM3XD5VY
         v9hs8M83cukCDKEa/92m+wl+Sa3g7Huzobsl90mmBjiq8Lu7oVBVqFAliYGGBLAhQeGp
         1Sxj8892m6l8LHjAZ1InSDRisf2+ZFG2syTJUO1HwTz1O0nzjUm6jenTGIUkbZo0mmZk
         PIt4r4ktV9tncw9M9MMUoaQSI7FpwzGG5mSl4KGeLfJzBkZLNmLl4dCKTrlv53cyWh6m
         3noA==
X-Forwarded-Encrypted: i=1; AJvYcCWBeJD0f7VGjFdn/HdqRDFBELbrIW+K6rLP/+aP5Lkh0+3BHpu49pAa54ksfnlMrprTzauwkoEfRwA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw59YrWnKiFpKa5WOLVqOtevdLqUOeQX1OL/6wSN245uVXP18FE
	Uo54FzMoAJm/+52ehX4jdCHiV7UXeyIidu6zc5TQAbusbP4VpNdJ9jYBEU1uVVkdu/kAhIcGpMn
	1hmeF36AEs9KKOLc3oXyN6ZwEViLGvTIcmxBFop0FREzkfKRn5XJAXXYkutrYVN8MU6FL
X-Gm-Gg: AY/fxX5GPkbLnFB7e9eoBX1ddEvKF0tGHdGpC7jRxeQC1nFbxjEOiL5nFGsJGl89fTK
	1qHJvHatfLjm9BJMJ8/4rUhbgDO2XkzZFt3hidc51EmmbNfui3StvO23GySZV3Lf5y46SphD+6c
	w2BRmUejgvm0xMotmL7ra0VnNNhV4mfmObeKGWycnPxJ4Om/R6/82d5JSIAlgwGMaOjNy9nGl/6
	5Ynxc1LWQJQq64Z7zBwhLDk2dCrpthDC5TIHXiyy6rqF+wvMbIeBivpXc9Yxrgur7O2iVjKpOMR
	47mr4Igc9wVHPhKRtbojVohzUWMEkpo40RuYtBlyyjSbcOjBfvyHVAjFwgJz+EMPr03IKy2rQD+
	Y6fS9KaoG3r0jzEy2gHzQtpPhtQ67GwEtduX+6i36Im5mJrxLgGImF/ru
X-Received: by 2002:a05:7023:883:b0:11a:4ffb:9825 with SMTP id a92af1059eb24-11f349a4c01mr10034784c88.6.1765864132955;
        Mon, 15 Dec 2025 21:48:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE62Tqqg7zqnX6ifA17EA/dYL7e+sDgj98dRJ4k0xMQnYUccpdxvWUiYdR4elYfDqrDXwuwKA==
X-Received: by 2002:a05:7023:883:b0:11a:4ffb:9825 with SMTP id a92af1059eb24-11f349a4c01mr10034762c88.6.1765864132426;
        Mon, 15 Dec 2025 21:48:52 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f392500cdsm33410371c88.7.2025.12.15.21.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 21:48:52 -0800 (PST)
Date: Mon, 15 Dec 2025 21:48:50 -0800
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
Message-ID: <aUDywpWf+gpEH4Uw@hu-qianyu-lv.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
 <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
 <mudq7gmqs62osuarvflmemt2a2gnuloywabtr4w5oyyddp4b7v@eynaurtfrnyt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mudq7gmqs62osuarvflmemt2a2gnuloywabtr4w5oyyddp4b7v@eynaurtfrnyt>
X-Proofpoint-GUID: skZBLo2dbNbkK9LxRJQPgf1wv0Hup5_Z
X-Authority-Analysis: v=2.4 cv=OK8qHCaB c=1 sm=1 tr=0 ts=6940f2c6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=0vdsDn7c9FGMMjA8I6oA:9 a=CjuIK1q_8ugA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: skZBLo2dbNbkK9LxRJQPgf1wv0Hup5_Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA0NSBTYWx0ZWRfX90Gp7TnGVPNQ
 FXqig5udz9wT7xCR9JdB0OyJUbe/iwwNR6IpCCoVOf0Niv75CvibxoCCuY5umcl6WpW2WCPykzU
 +BeZixwv/oDySPbPCv4g0Bscv7C+uhGaDZV4LpkAwkWzft7TOv1sZEaDiq3zz9zuDVpW6kSVTiO
 TAh7C2jy0TLEMykJ0ZJNfC3wPj4uydfbGSI3/wxeBgkeMfjvt9ffb/GMdgDcVXHwDh1euhu3ofx
 tNDhtlZ0C0QiDeS3ti/uyO0o7YoWPZbx4UGTqp8MZ2mDdzQz/oJAevr9flTN7KpQ/Ff4fj6I0DB
 /punBH1QC+BJuC0PIbPZQgRGmoZlRZ/vGaEMxZsEYK8eLvP4od88Qy0IUB0dLjUuddzeIVVm4ie
 wxEgycBzuIEv8YGZbqF2PPGzI6E+ow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512160045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_214855_995154_5A9561D7 
X-CRM114-Status: GOOD (  20.19  )
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

On Wed, Dec 10, 2025 at 03:51:15AM +0200, Dmitry Baryshkov wrote:
> On Mon, Nov 24, 2025 at 02:24:38AM -0800, Qiang Yu wrote:
> > Add QMP PCIe PHY support for the Kaanapali platform.
> > 
> > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> > Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
> >  1 file changed, 194 insertions(+)
> > 
> > @@ -3363,6 +3516,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
> >  	.ln_shrd	= 0x8000,
> >  };
> >  
> > +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {
> 
> Is it really 8.0 or 8.20?

I double confirmed the version, it is really 8.0.

- Qiang Yu
> 
> > +	.serdes		= 0x1000,
> > +	.pcs		= 0x1400,
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
> > @@ -4425,6 +4588,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
> >  	.phy_status             = PHYSTATUS_4_20,
> >  };
> >  
> > +static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
> > +	.lanes = 2,
> > +
> > +	.offsets		= &qmp_pcie_offsets_v8_0,
> > +
> > +	.tbls = {
> > +		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
> > +		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
> > +		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
> > +		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
> > +		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
> > +		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
> > +		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
> > +		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
> > +		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
> > +		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
> > +	},
> > +
> > +	.reset_list		= sdm845_pciephy_reset_l,
> > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > +	.vreg_list		= qmp_phy_vreg_l,
> > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > +	.regs			= pciephy_v8_regs_layout,
> > +
> > +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> > +	.phy_status		= PHYSTATUS_4_20,
> > +};
> > +
> >  static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
> >  	.lanes = 4,
> >  
> > @@ -5209,6 +5400,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> >  	}, {
> >  		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
> >  		.data = &ipq9574_gen3x2_pciephy_cfg,
> > +	}, {
> > +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> > +		.data = &qmp_v8_gen3x2_pciephy_cfg,
> >  	}, {
> >  		.compatible = "qcom,msm8998-qmp-pcie-phy",
> >  		.data = &msm8998_pciephy_cfg,
> > 
> > -- 
> > 2.34.1
> > 
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
