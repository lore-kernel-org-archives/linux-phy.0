Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E454DC5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 08:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KvhH0WjQnKTy3aHozFXJHg64OlH4oKSB+fgLIDdxUE=; b=NEgLTBmejg/TN3
	IjnYrSp8EMZIsk3Yzd8SCfA3pT0z5/6vOFgkllHRVtRzJod0z4MUEtSaA1Y0o4SrGkRilklKOjnTH
	jm/e5k/ZLdycaEXLDwur1uPm/+cHo6eRwvr17YaPLi8xESVIaNlU4kRn8C7NVxMHl+X9joO/zqeC0
	CPWCcl5pM07fORbKw3VVLSe25K9/cXNw6DbiEua+IbKODOn8xaiAnQQwwMcMW1amfK/xkX5RLVAD3
	C6+vhcAaVPz7gV6yE22/toAvx/fxdCANAN+wFuEeFFU4Qala28/WPiJXFLGCKkyohqHXKr2Zrl7Gz
	ZIigKMlv13wFupqqzLXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFbz-00000007YbW-1Ldo;
	Tue, 18 Aug 2026 08:55:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFbw-00000007Yai-2JEA
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 08:55:57 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BLrh3991126
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 08:55:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5XpOqc5E/x3j21BWFeP0v8ytaBSccBnOmabQ+CpqYvE=; b=llLLalVu0NRbDmfe
	/V10Tdhur2wSfmzs2NdTbXiVbs0u2xWQRvvwMtIm501Xle5gwGHobaaC413KYLJ6
	zRGO7V2aJqlNsQc2AtMAk5RTICkrKgKpY8T6NDcnlUZ5Au+nhYU2OU+e8C/9KuvI
	Qgs3iYeFKxYJKAvBGYbSF1zv9TklNA7uKkMufdX9hpBVUQyjs+PUfStWyLwAE1Hg
	wc7pPm9FkVJsVxeq3LxUIkPkSX6vENOLUjMPanm7x5NHRd+2ruwvToHMtajeWsId
	0qdmFHM5X/ogKCdY8IgqzV2aRIbAXa7m6h2YIcTTo4lb2bmZjLHvFn9oFF5KpOQ2
	T9B4fw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4f5pscfe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 08:55:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-90795449fdbso714396d6.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 01:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787043355; x=1787648155; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5XpOqc5E/x3j21BWFeP0v8ytaBSccBnOmabQ+CpqYvE=;
        b=bj2U4dNnLcUishgBk9hECnyf35+44MzGXT8/7cSgrcs7CvYRrnwoeqFhdiSQnWtZLu
         DfKGieJIziom8tXsvBaseJJ/Qx6AqSi2Tbau/6Q/Q6qyZc49xmfMkPTG/8WA2MY3YsuJ
         mJNoAwsP6x38uMMsA90qVQKkydvmx5zjnhJcynAcKtTwBdRTquQNeiEQHkXqSc7lpNsT
         I7U257Z1dltHox7RFjdtUzd6wr8m8l5FjvBwBLjtBxOWcmRMs9z7CcY7nd8l3TZVEUTl
         oekOzQci3qt0h6nou2COVc7nZRkk+sie7nMAmXNTe6GOQA1Q3mrfjDd7ZtXf6rVxDppb
         2VAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787043355; x=1787648155;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5XpOqc5E/x3j21BWFeP0v8ytaBSccBnOmabQ+CpqYvE=;
        b=cRy3ayZ/AovwD7Dbz8eEg0V4RBJqOGJb2/GO+Aiq/MvUeE3whoONNTW8td/KzE/X7V
         LO4yCAXbUowfyiOTiaYopljhm8tgF9g7Ldh2HVH+6Bc97pbmcdmxmh++TDWMDgcw6u9U
         REa9Yexu5Qktnt2E0Sdj5KL4QT9SIiWuWtR6qRtCLe2giHAofJikLP8DgSTDEQC7Kz1i
         dyAJ11l8/07PtAVnjq3uBXHWNsMFjYQ1PlQGqxL0BRLGDqNkq7X2t2X5wbxtpooBit5j
         biMLB5Kw4Kk5GjnZ+Z+BBz3TFdaMgmoIKmZrrrW/n3SxX1Q0Av/ORdB3wnIv6D7bwR4j
         ZX3w==
X-Forwarded-Encrypted: i=1; AHgh+RqNPglY+FWeoZ9rxjkXiBdV9CkMYxld59OCviteid2V7k7LqXf7/VGM6lSTygEm7ql3TdS3RhmtG/M=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVNYmGqamV2zHGfJ13Ogvi+uLUe4CJQUngYMU+6SfCOfPmCNqK
	rsaeLufbE2GH7y9GH8h/SxK9vyW//f4odeATaOpZUADdgOaF78M/kiZXWmwtwDAHA6IcKNyxNDY
	d4Gh+u3zZk/VFBw+wVw55FmyJ3nSb3Yt2FTpX7sjagCPpBOq2+9SFdvWWAkYBQVuR9cT8qmu37W
	gD
X-Gm-Gg: AR+sD13dHHpSLbhasAbOyeiWtZDlifHKDdbo9UejYBvXHXnK1oNWrShF2CngnnyXm3y
	L3UCDIeBkD8Bgg/zhftnpiRmqa9IHeCSO8K9cPfS9AJF529ThFdH5HRhi5l0HpPyTPBcc+LagNQ
	5Y5tA36mPlfQtQFHE119LQxZSAddx23Gtap1UUkGzp5PHW0hGbqE/hYsR+DP9qqU26GGlGsRL3L
	VJlyWOpHwV8afwpxSxsIN116wgdRI4oiCFI+zk96M0i67501Ezt+P8TL4j5hf4jfAvXC83sgqfi
	7ZqJi6qyWBVzQF6YvQQ192inpRXD21amSZPHFevXreQgdCBttqOIFBu9ONie7LpErXXbybVVOgq
	9tN5CKaCWfz/iQUSqNQpaF8lN
X-Received: by 2002:ad4:5aa5:0:b0:8f1:507a:ed6c with SMTP id 6a1803df08f44-90a91e84256mr216308626d6.5.1787043354983;
        Tue, 18 Aug 2026 01:55:54 -0700 (PDT)
X-Received: by 2002:ad4:5aa5:0:b0:8f1:507a:ed6c with SMTP id 6a1803df08f44-90a91e84256mr216308486d6.5.1787043354537;
        Tue, 18 Aug 2026 01:55:54 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c217fed68f9sm154596166b.27.2026.08.18.01.55.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 01:55:53 -0700 (PDT)
Message-ID: <eb7b528a-6d5d-46af-b0d7-410bd9acfc0b@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 10:55:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/10] phy: qcom-ipq806x-usb: add MSM8974 HS PHY support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross
 <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-4-1a47e1185524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-4-1a47e1185524@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=S+/pBosP c=1 sm=1 tr=0 ts=6a841e1b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=HI9WjpCpug938Zx-P8EA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: HDRrFWggY2PcAaoEPlTOyNnX8m5kUWIs
X-Proofpoint-ORIG-GUID: HDRrFWggY2PcAaoEPlTOyNnX8m5kUWIs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA2NSBTYWx0ZWRfXyAo6dcGobF/D
 xQUu+DLtlTVjG0SiKPjB8sFbuodnT+oGpFy+Z5QJ5pZoiPCRDC2nhS35ubnCSDZllYZXKKrqVvh
 Ni/chh5DdCwLhqMGgl8wyI6cy0V1x13TdnqpSxO8FOTsv6bzZXDJ5qLNuZcnDAIQQjqPCthMdbE
 NajZ1EhQFGJqiy1VSt8ro7xeUkJGj7jhi4gvYVveM0IGTIUimRzKIKQNihAO5iaT+9soyN2lnRM
 JsBW2QcBGp+v7n1gZwAoRjhZbOd/kin0jTcALXCNACHnIoipekg6YeqAxEXZ9MYYUq2ZBA3+2gZ
 4X8q2cP9LXkx3noL4dS0B0Eklv0D4jnOopP386z14Qgv9hqnmOKoM02md39zs2ry7iPF0AQ6fq3
 LYQZ7AwTVFpClnUCpCaWHFz8QytdJAge6ZgnD6JFqu32kFz23WsZB22Y4ZreOctJ4G3Ud+rQx2j
 ezz1wRNzCZy7V5nL/6g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA2NSBTYWx0ZWRfX2qwLw0xRNKuy
 bB0tomH7D44CHNsTu9v9dujRaYNRCbQTMHJsw+HPyFX6DyhyeC78qfSsOKMYjWtM0tEEr+ZbabP
 wFTktP5VLiCgIJIXT9X2psDImcAYYxA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_015556_603068_54733CFD 
X-CRM114-Status: GOOD (  25.42  )
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

On 8/10/26 1:42 PM, Dmitry Baryshkov wrote:
> The MSM8974 DWC3 wrapper embeds the same generation of QSCRATCH
> controlled Synopsys 28nm HS PHY as IPQ806x, but the driver only knows
> the IPQ806x variants, so on MSM8974 the controller runs on whatever
> PHY state the bootloader left behind.
> 
> Add the qcom,msm8974-usb-phy-hs compatible with its own init
> sequence: unlike the IPQ806x one, it must not overwrite the whole
> PHY_CTRL register, as the power-on values of the reference frequency
> selection straps have to be preserved. Only enable the UTMI clock and
> the DP/DM MPM clamps, signal VBUS valid towards the link, and disable
> retention.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 35 +++++++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> index f22c0000479f..21b59d4ca8d2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> @@ -17,6 +17,7 @@
>  #define HSUSB_PHY_CTRL_REG		(0x10)
>  
>  /* PHY_CTRL_REG */
> +#define HSUSB_CLAMP_MPM_DPSE_DMSE_EN_N	BIT(26)
>  #define HSUSB_CTRL_DMSEHV_CLAMP		BIT(24)
>  #define HSUSB_CTRL_USB2_SUSPEND		BIT(23)
>  #define HSUSB_CTRL_UTMI_CLK_EN		BIT(21)
> @@ -27,9 +28,13 @@
>  #define HSUSB_CTRL_ID_HV_CLAMP		BIT(9)
>  #define HSUSB_CTRL_OTGSESSVLD_CLAMP	BIT(8)
>  #define HSUSB_CTRL_CLAMP_EN		BIT(7)
> +#define HSUSB_CTRL_CLAMP_MPM_DPSE_DMSE	BIT(26)

leftover?

>  #define HSUSB_CTRL_RETENABLEN		BIT(1)
>  #define HSUSB_CTRL_POR			BIT(0)
>  
> +/* PHY parameter override register (eye diagram tuning) */
> +#define HSUSB_PARAMETER_OVERRIDE_X_REG	(0x14)
> +
>  /* QSCRATCH_GENERAL_CFG */
>  #define HSUSB_GCFG_XHCI_REV		BIT(2)
>  
> @@ -115,6 +120,8 @@
>  #define LATCH_SLEEP				40
>  #define LATCH_TIMEOUT				100
>  
> +struct phy_drvdata;

Can you just move the declaration here?

> +
>  struct usb_phy {
>  	void __iomem		*base;
>  	struct device		*dev;
> @@ -123,11 +130,14 @@ struct usb_phy {
>  	u32			rx_eq;
>  	u32			tx_deamp_3_5db;
>  	u32			mpll;
> +	const struct phy_drvdata *drvdata;
>  };
>  
>  struct phy_drvdata {
>  	struct phy_ops	ops;
>  	u32		clk_rate;
> +	u32		hs_tune_val;
> +	u32		fsel;
>  };
>  
>  /**
> @@ -273,7 +283,8 @@ static int qcom_ipq806x_usb_hs_phy_init(struct phy *phy)
>  		HSUSB_CTRL_RETENABLEN  | HSUSB_CTRL_COMMONONN |
>  		HSUSB_CTRL_OTGSESSVLD_CLAMP | HSUSB_CTRL_ID_HV_CLAMP |
>  		HSUSB_CTRL_UTMI_OTG_VBUS_VALID | HSUSB_CTRL_UTMI_CLK_EN |
> -		HSUSB_CTRL_CLAMP_EN | 0x70;
> +		HSUSB_CTRL_CLAMP_EN | HSUSB_CLAMP_MPM_DPSE_DMSE_EN_N |

This will *disable* (_N suffix) the clamp on ipq806x too - is that intended?


> +		phy_dwc3->drvdata->fsel;
>  
>  	/* use core clock if external reference is not present */
>  	if (!phy_dwc3->xo_clk)
> @@ -282,9 +293,14 @@ static int qcom_ipq806x_usb_hs_phy_init(struct phy *phy)
>  	writel(val, phy_dwc3->base + HSUSB_PHY_CTRL_REG);
>  	usleep_range(2000, 2200);
>  
> -	/* Disable (bypass) VBUS and ID filters */
> +	/* Set XHCI_REV bit (2) to 1 - XHCI version 1.0 */
>  	writel(HSUSB_GCFG_XHCI_REV, phy_dwc3->base + QSCRATCH_GENERAL_CFG);
>  
> +	if (phy_dwc3->drvdata->hs_tune_val)
> +		usb_phy_write_readback(phy_dwc3, HSUSB_PARAMETER_OVERRIDE_X_REG,
> +				       0x03ffffff,

GENMASK(25, 0)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
