Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AF24CA0EE6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLMCNBU0sU9IJ6JKKzahy5ylX6CirnEMzxD6u8Adfl4=; b=SH4rUsNAyOPu1U
	oqvFUArJ2s9nuzRzaFdEia7oxAPIXVg1UGYD9s/l5gUl0WSryevf9fSBiuZ1mszo08xCXi7Eaty3H
	qU6YAIeUG8rxUHjSKBppCphYgmxwJycJciE35GB/+sKcLwLP4OtW9mGrOA/S12VbVQKUuXZWXsBjL
	iqph2m7Do+07P6oLsUbTJbhxPm2FqxUxDhDsBFQUX2ywpRplvTKTnqBqEZhKxo3eYjQ299xvxsnNA
	MtCbXkaru+4l1H9HrhVvgib6SGLW1v5B3mhQPhmBjfEuAhMTlwWTz5wHWRU2oAaqesqWPmgoZ9RO1
	/OzxOZl9OOUOd7rD1o5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoTAS-0000000BYv5-3MRx;
	Tue, 19 Aug 2025 20:42:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRIs-0000000BKOV-4BOH
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 18:43:28 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JHVUax023326
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 18:43:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rr9m4DMV8aM3HvFiWVF1zTeq
	HFmihXvF2giDIBU/QsQ=; b=pb5DAA+coH5BVtUjj8b5Hu1IkemhWAwRmVfAElzp
	cBSBiiL2CPX1NDt68CG5HsjIbYaiFd4tp7qMyl4O6NClQI52Umk7mTOaLrVr4WWZ
	cEzrDll4UydgZlofzt7bftqaxQxxuSKR0XtkG0TAdFmGZ4GfiphiW8NbValyFYqW
	5p2OzUMCA5vyCW1ZBaQdllPryjXxhRBvmHGUMdCIIRctKaxMxW7ChxRFRug8w4X7
	f+tgfjoYm6JVL+me04SF7OyWii9AG6KTNQt5UXJd1fn3buPPnGqjtBbbeas+MG7k
	HjB8tXs8JHiy/lo1bpuczgHHofOFFsGmzbnzAm4vuJA9Xg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m62vmkb6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 18:43:25 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a88dd0193so128288916d6.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 11:43:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755629005; x=1756233805;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rr9m4DMV8aM3HvFiWVF1zTeqHFmihXvF2giDIBU/QsQ=;
        b=qih3wwbtIOH54+uFboHknNpUyqoAxqqXhSLAIsND5svaKno6T0FNrOw01kbZgGvSyX
         hCHU3lLr8y6wUIXQMzT/W3vzu4vyY2qFKKZeu3sCSztb5wwZlUOz0bBdeKvXLbbnbEQV
         TsLiesgCDmz2ZMhjGTupJP+iyXd5E9fl7Md7aNT4Pi0qi3NogSjPEaZvgiJzGb2pNTzJ
         VUIWscQkZ0CMxodQlWp9jUpjTXUeW9cCxGe6ohU8JTQ25bBdnRgyiETgOfyS/rNh4FpW
         uJwXk+3elq2En+jPrhy3IVgGOV/V+jisVdPUydmsCHcF+MPwCkY+iesiHY0GiVkVImiB
         8dPA==
X-Forwarded-Encrypted: i=1; AJvYcCVQjWVm9EC38tvFyQ/nBmkR7y6Uimz9xoJFXdP8kPIgUuAyOOmfBmQiqUW7ADbaaqG2jKP7V8FfDfM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQQU5VQTcDt8QGJk+x5oJcClk7YQxizSXrIFw8Sugnz7ZiaXlG
	UHCeRQKazoHpdKkUq2dKpL8bHQgRxpc6MfZiAlZ4Um/iOdjQ2Y4x0hpUvweNCg185yeV2MdvpFl
	hfMF+81MHGZ1Xg+H0PNxyOOpx7/SAwwinSf3FeL2BVPDDhjwpUtBE8v7e6yYgJZ/M2X44
X-Gm-Gg: ASbGncsz4e0kNydY6C4hCBjjXLqZmQmbULu2H8RSMBqf/Nr7iV2jrVlT2YO1gGH3JJw
	DmZHNTs6eh1voeaIRTfIjRNrEv7lxvEj1J8h+R24e3iOrAuORHYInlvKSvlcE+bUh9rbvckVzzl
	nFfc4OaUy2OF1LAH6LIBqqfMyfhDEPu6s6AAk41rU0hiEKDIdXsg+DQo20Z0I6CMmpl1guH+xJk
	tNFWL3sGyg4EBVxPlEWQ+EeONi8rFOpquVShV9S5K67iS2qSfs/4Wjl07MS5u91h1nCOo3rumpc
	UJyxSsM8HsV+tPCTTTiX3W8kgfqhWOxZCWx+LPZKKid/230dF22+WxJR7fLZQssEQ05Maxoq0uT
	2jiAGJv3l0PYX56/wJsMNpW7cKjpnijeS9xSNhMVGFeZqGFFZez9b
X-Received: by 2002:a05:6214:509c:b0:709:8665:f839 with SMTP id 6a1803df08f44-70d770c81d0mr481326d6.43.1755629005014;
        Tue, 19 Aug 2025 11:43:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHT7lpRowLXX5OExQQfbvb5w4hCurs0f1Zuh/FVoSxEHFuy1zmq+FiaB/ZvhSvytDdn5I2dtg==
X-Received: by 2002:a05:6214:509c:b0:709:8665:f839 with SMTP id 6a1803df08f44-70d770c81d0mr480776d6.43.1755629004281;
        Tue, 19 Aug 2025 11:43:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a43a34asm25743821fa.24.2025.08.19.11.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:43:23 -0700 (PDT)
Date: Tue, 19 Aug 2025 21:43:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Message-ID: <6zlydkdgmowqg7cv5eeoaf7mrpnhzokyvhh5xasvznqaxnhdji@xol3jiz2lzld>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
 <20250819-glymur_pcie5-v1-4-2ea09f83cbb0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819-glymur_pcie5-v1-4-2ea09f83cbb0@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDEzOSBTYWx0ZWRfX/wN6SsheyS0j
 7ABIIai/W3qdmhLHJUo3qEjHnoaCNvHcKDVfw2RPLJaW6JslPAbDzf0nzr81LUKMj3NKDc6VP+h
 XoRQtnQfz8yxgzsAASlqIMJoTLmvo3VpMwmbsEoZUHwL92UD3fU598PVuZQ23MAzWCrTzebvglr
 wVEmeu5id2odTJX7TN+dsBK05p3/aR8MrAN2GQHRp4zAfILHRYrgKFJtXEnqfsDO+81jSUlHgIX
 Ume6G6NuHvBkqLkKAe6a7zluSuHmyxYynUPyc8BVD95R/+ttqW0lOFDEzihn0Ao9X8dAurlFlc1
 vFFTOAXkuc8lDDQooZliIW39hCeZ/CNtW9GHeeR924aQqPsSGHKA1CSjNJLa3sZh80SUawFu6xH
 tIibLlw5
X-Proofpoint-GUID: F_mXy4nIeZ7DkLAVbz8Mnv_eaGeVuiyl
X-Authority-Analysis: v=2.4 cv=A4tsP7WG c=1 sm=1 tr=0 ts=68a4c5cd cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=7qyaTA0qGF2Sjt_gT38A:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: F_mXy4nIeZ7DkLAVbz8Mnv_eaGeVuiyl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_114327_156012_57A2849E 
X-CRM114-Status: GOOD (  22.00  )
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

On Tue, Aug 19, 2025 at 02:52:08AM -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..e422cf6932d261074ed3419ed8806e9ed212c26c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -93,6 +93,12 @@ static const unsigned int pciephy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
>  };
>  
> +static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
> +	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
> +	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
> +};
> +
>  static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
> @@ -3229,6 +3235,10 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
>  	.ln_shrd	= 0x8000,
>  };
>  
> +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
> +	.pcs        = 0x9000,

Even if the driver uses only PCS regs for 8.50 currently, I'd suggest
describing the whole picture here. Otherwise it might backfire later, if
we add offsets for other blocks later and they won't match the ones used
for Glymur.

> +};
> +
>  static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>  	.lanes			= 1,
>  
> @@ -4258,6 +4268,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
>  	.phy_status             = PHYSTATUS_4_20,
>  };
>  
> +static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
> +	.lanes = 4,
> +
> +	.offsets        = &qmp_pcie_offsets_v8_50,
> +
> +	.reset_list     = sdm845_pciephy_reset_l,
> +	.num_resets     = ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.vreg_list      = sm8550_qmp_phy_vreg_l,
> +	.num_vregs      = ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> +
> +	.regs           = pciephy_v8_50_regs_layout,
> +
> +	.pwrdn_ctrl     = SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status     = PHYSTATUS_4_20,
> +};
> +
>  static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -5114,6 +5140,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
>  		.data = &qmp_v6_gen4x4_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
> +		.data = &glymur_qmp_gen5x4_pciephy_cfg,
>  	},
>  	{ },
>  };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
