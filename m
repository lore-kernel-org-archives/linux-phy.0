Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E02FCD5BBF
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 08:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u//eIdQsl5ttL12NmVDJxovxZ0RC1n6NtK5G58z2TOg=; b=Ps+LaHeQiJ40fQ
	VYDtMa7qswHHzukLLDELLV6WQrSNFH2nFUCIsa5aQ1tfZVr1BkVV+MROWI83Mb56qPtRVQ2ySwH3G
	CDjRczxKrq3YZLUE0gdQNFn2mUR/Hgihpwe1jqQWIShHa2yPnI+aPOk2MD+pWU+NA64ni0dKme+t4
	EOvMhvjKGcbJZG0sh+AHmJCktuOV0MRFAUtdibMiQkSNYGRLstMKTQNzgzG2W1nknrL/e48ztpY9o
	BVzGTyCsEmOT5OW5nrcICWqIKV2jm3xDRIIikido89NCRTuk/5F9iWrKi1LV3KzZHCJWSBiq3ffgF
	LBE+jUtNmpKqCkq7cgow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRQtd-0000000GgZW-0Yl9;
	Mon, 25 May 2026 08:42:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRQta-0000000GgZ6-3RQb
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 08:42:47 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64P7Km771729189
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 08:42:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RfjedfVNMYLqzmmguha+gRd0
	377+9GlhAPQfeTg3V4g=; b=fmWOalklTdggJ1XndlWLwN3g1HZHS7a5qJbDuUNQ
	1M8dr4Ds/RjjPiZhIU2s9tmYspPmLd85fiGwRZ1dqU0nXaKljl+7t0p4gtIwIYD7
	vEAc+0cubSzsb4McLSS8HtqRSYzHrLZDif0EfVfIgrj/Sk6K7P5mhSjXnUcYsJPd
	xM1z1MZyKI00eiyAqah1x27GCkdr/fs7dODd5tSPeqqBzLZSblzOtffpuQr1MRl9
	gzmwaPf2Tiq0jR+GOcdTcHOxXkzhAI+ag9gfKhbMH+GT5K+fQZ9A/La1jtNNQzuP
	SfTVMAV0sBa6+093isy3l1+CLdgbsFZnNfg8mxmO26W8Uw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ebba0w2bp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 08:42:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50faf575af4so244145851cf.0
        for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 01:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779698565; x=1780303365; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RfjedfVNMYLqzmmguha+gRd0377+9GlhAPQfeTg3V4g=;
        b=HgkUolfU/+fiy0cIkoSrJNR7lQqIrp1OPpJGRY2EF7TB+iOjkl16DUkdwbPdjlsJzk
         lkftCIrKtwQSORqNTuIvWiZhFURhnVru1OGAOX4wx38bZ8gF1Ry/h6tX/Mxj+si2pVE4
         SDXqU2VtwwtCdUhrXF2JYbnJRyOrM8CxRNlYJFv5MV25hKt5wEdaRMcCC5u/L4Jjh5SL
         9F3GIxGgiVLz+nopcaQEmTcShRsH/YLCMkamBfoQoZDPoZEhHAn9fteL1UF97i9jshS0
         N2beUrErTma4Az+9CPqbMUfboKISi59L9xPGb7O2rGN3OhQNqtg6UF6rKFRkhbGxNOsI
         U8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779698565; x=1780303365;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RfjedfVNMYLqzmmguha+gRd0377+9GlhAPQfeTg3V4g=;
        b=ZtTCe2qlHJJQCDh3LqcDJfe8ges82OskRtfxEsHD27/9jjOBmg8+Wel3oOtLWFrPdP
         wc+phpOSU1iQfI68bKyT0m+pTIJ4kHNdFjZ+suC7C3j3cnlUx94CbRh88adRRB+oCj2e
         rBYGAQ83Bg+7aERW+5xHOBzNVQnIRdzGIkhtbYt599t8jReHm4ceonKF0FzTP96PjajC
         XhmQRthbsqTW2bF6gAO5JPTEAEi9gfa8htbDda5vwVh5DCW8O50wOAqMP2ZtABPqdi2r
         TGux2iJdeNBp4tnvooYzBTZhm9gqQxzMnE6bm77HC6y4xvJYcnBua3vN2yRBCaqxpT24
         Ca+g==
X-Forwarded-Encrypted: i=1; AFNElJ+M5FiIzX9DHfWKUWaEwYP54TcKr56AJK9taGATjZvzJ9yrbIPWD79VXq++987I9BMQJvmrdt1t0ic=@lists.infradead.org
X-Gm-Message-State: AOJu0YzqVbBpFA+a+bJL3tnS6m/zXsf+AK1L8W65tTGoAGsViiNDXvY1
	H1/fLAklxsuoL8YC/qEDcZIJ5cBKeP/B+qL7lo3x0uJdUloV6KgbL5V8JPFwQsr52huvBw2Cv93
	FC3Lplirs/G3dnQSEJaNxSNJrQWqfUF8hf0SWgDWRW0OrCEDlKvSdACaAEYzJuOK+MktZ
X-Gm-Gg: Acq92OHvzpxQ3a2vo1ahy3smml3hm29RmqkOu9zSQYyF4mnw4I7+fMqYmwlxHm5vvVQ
	ia0zlhkhcjVeJY2axDagsmIULqKNOcQ8D0V/D9ZTN/d+pprW7R3LgvuLllTLiua/kxelJrD148g
	yCANSNjDyew6srsj/Vo5yfe1IWMXdntASkqW75VN2bmOtO+v++VoYFk5MEJBIIsSDzB2XB1AaKw
	sLMDs8en8iUHz7gnsdcTC0Qf/M0apbLS9Tca5cla1WBVjKCCbgAtmQOCcbjxvlPKPa/WdSuRbJx
	5ciQPVBRV253CewmCikilQin3UbIMRy1IPTatTwAyeMY8Lj/kBJcyZouxWxiID1U/fsp3rmnT4e
	34CxSu9MNok0fASEaT/WCsNBLbCx5IiBNJGC/oXIXbaflIsn2AqEhw2tEny1VluRPRa4dF1VN8y
	drbrx6gOqrdJv5UIC8Hx2ZJW530uqiNsZc4DE=
X-Received: by 2002:a05:622a:4a09:b0:50f:6415:1eb4 with SMTP id d75a77b69052e-516d463dee9mr196532011cf.49.1779698565105;
        Mon, 25 May 2026 01:42:45 -0700 (PDT)
X-Received: by 2002:a05:622a:4a09:b0:50f:6415:1eb4 with SMTP id d75a77b69052e-516d463dee9mr196531821cf.49.1779698564659;
        Mon, 25 May 2026 01:42:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-395dcc0a196sm21334161fa.21.2026.05.25.01.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2026 01:42:42 -0700 (PDT)
Date: Mon, 25 May 2026 11:42:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 4/4] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Eliza
Message-ID: <l7bcvuq3eggjt6oir2yq37vvyy2p2ylegf5m2m5yjhd6nl26hp@e2zonyjx7olw>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
 <20260521-eliza-v1-4-97cdbe88389d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-eliza-v1-4-97cdbe88389d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Kbcjnl_1YH3gWB9KbqIF1GuqqnDyr5pH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI1MDA4OCBTYWx0ZWRfX28nHxSyx/Eoq
 ahlXs/T/Xx+JydQ0JesS+X14zpypTml5cwWmxMyAUQkkWiNIEDDjQUgHFBYkznimzFcmsy3OJbA
 +r4NzgvVyIMTBOo10tjBCKHvGXY1IH6Yvm8rcO5S6Fjw0RK7ITewuvkNxlLL3WaU1NnSgcoMVs/
 zfQhNsAcEcfl7zrXYSszAM/CAuMXDugarwSJgpBK+3iG/jyYYwuXcLJ0UrrMBoJJWpr+OmhU5T6
 jA1cjO/wxH8q5j7rUyjz90TXLan+8FryVJqpMFOthiZw6ossJT4F8V2uWBnv+xiUEE7feTGOgIm
 eMCsxwxvCsnvN8qC7e4s4YTr4NUUHEq4Bi9f+l1xx0zMm4NYHSBEGXM01mlwNf0YbVj/OZSijaN
 f97Yqo7PKzZdLsuuSPiODNOszX+jN2rgvrxfpDZYO88CgC/H7giMkuwFGEhFD/+6kS5LB5Ajc9/
 hMicBYJ9a4uMUIsVzVA==
X-Proofpoint-GUID: Kbcjnl_1YH3gWB9KbqIF1GuqqnDyr5pH
X-Authority-Analysis: v=2.4 cv=Xca5Co55 c=1 sm=1 tr=0 ts=6a140b86 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=hYsTZ0akgaehJFdaFsgA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-25_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605250088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_014246_871939_8DF73F3A 
X-CRM114-Status: GOOD (  17.69  )
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

On Thu, May 21, 2026 at 07:35:32PM +0530, Krishna Chaitanya Chundru wrote:
> Add QMP PCIe PHY support for the Eliza SoC. Introduce a new Gen3x1 PHY
> configuration with Eliza-specific initialization tables, and reuse the
> existing sm8550 Gen3x2 configuration for the Gen3x2 PHY instance.
> 
> Also add the missing QPHY_PCIE_V6_PCS_PCIE_INT_AUX_CLK_CONFIG1 register
> definition to the PCIe V6 PCS header.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c        | 139 ++++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h |   1 +
>  2 files changed, 140 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index fed2fc9bb311..113c5f8f1dbc 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -198,6 +198,112 @@ static const struct qmp_phy_init_tbl msm8998_pcie_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V3_PCS_SIGDET_CNTRL, 0x03),
>  };
>  
> +static const struct qmp_phy_init_tbl eliza_qmp_gen3x1_pcie_serdes_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0x93),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x1a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x34),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE1, 0xB4),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE1, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x0d),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0xab),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0xaa),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x01),

[...]

> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0xA0),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADDITIONAL_MISC_3, 0x0F),

lowercase all the hex. Be uniform, please.

> +};
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
