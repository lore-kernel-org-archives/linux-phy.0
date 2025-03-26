Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FDF2C36008
	for <linux-phy@archiver.kernel.org>; Wed, 26 Mar 2025 14:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdHArsTor0K8ubintzEVgVjak6/Cpv2nW3FME20gDTc=; b=EJCyaezu8xcVRO
	MZCoj+U6ZMZir+BKgoVGG2tmuJW/ArOmjStmoyyyD2xpy72Q9cqgrJedsU+PsZCBhPaTbGpPQTsLV
	DJW2ocGaNhqv6cle6+KeoQFojxrJwEX8JR+/iKxCQN/gSrW5HKdEKThJb5fudj9F0KtPqMvJk5fN8
	PCIefRCy4GaydikPOneEjsql0brT1+OTlW1yCjOkZNLtCkzAC3eQP36CUfGPzhDBwDpMqKNoyhI33
	7OOHNg6vTTvXo2vqkFWNURI/Crh7WXINUYZbY0SIjn3yRFrG0TA7GnrZCG+0oYpRYo3wKo+74KDZX
	ULf7Ekou0StZ0wSruFEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txRr0-00000008hgj-2c7u;
	Wed, 26 Mar 2025 14:35:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txRpG-00000008hR3-2lB2
	for linux-phy@lists.infradead.org;
	Wed, 26 Mar 2025 14:33:52 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52Q736lg026025
	for <linux-phy@lists.infradead.org>; Wed, 26 Mar 2025 14:33:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tUXcc9qJZqsmIvOAzGoEtIPJ
	h1UpfQKPa2r/d+C7UBE=; b=Uj+Ehe9blRTXJYuLPHz3ulJS20fXnxUrGZpVXK1N
	wn9BfLi1qbmUAcyDQvFD0rvuyLYxn8o4j3wMwJQS1oZb4gJeAaQv+/UrOGBNhMQ4
	YX+GxYOO8purBmP/pBlNRDI/gZ76pfFtisMfPP+avEd3AQq1xwIJXJ3tANTVIgYN
	r6sQE4vsFeR0PZmrNZf3G1h4jkz9WwX2MRWz2aVupi5bx37SSIos8ah9f2R62qk/
	Td21LOslx44MWUAK4GEdEMjFqKqOex/vlH87uM4VMzqDQTR77o8t5FXf5+wigmLr
	S0Jo+gs7PWPwFURf9MNl0/H15e3QS4dkbyTb6VS4u4FhxQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45m0xdtuu2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Mar 2025 14:33:48 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c3b53373faso979608685a.0
        for <linux-phy@lists.infradead.org>; Wed, 26 Mar 2025 07:33:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742999627; x=1743604427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tUXcc9qJZqsmIvOAzGoEtIPJh1UpfQKPa2r/d+C7UBE=;
        b=qM3pqYeoZu+RyWhyLozWudEdSo9PalVFmfe4kptUpJi4K+W/bOmeWyUdnWBb3xMsUM
         8LS+LiR3vQ2MijikfUCwhEf2wA0DhRsRG78OfNhNYzbnwc5tjt+CmkQSsC7b4MlHsva0
         jNmqArTIyL+Dosvyw2QEdX8b1EjG9upBJkm1ATRy89EQCbw9M/iTzpQ9eXwZ7Yb5xB51
         jRqzfYo5NdilJESmiE9eklIUrRApgKrhax50hvEjaQ+YJX7pKO0KSE8sp4MaD00N7g4L
         5KWfnaiQbgVl14dGZIs0lMBzgaldJC9uoxVfpKNk7aRmobd/t3fTBagJUOYwW8qEG8c0
         1HEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkeOQk79EgviA7OuaaV/ZIoQHQLIEBC8OjrSUNaxe6RaOIlkSEZajYac88jJNiX1+XpTPyPA4YJcU=@lists.infradead.org
X-Gm-Message-State: AOJu0YydfhXh4GA15i3w3cbM0Jq65nnEdNpX5GQLR9n2XEgkj5j+003u
	sDzMIb270eMpU3kPtmpka7zw8lRrksxt3Nfq6MVZ2LCaEp3F2kDBrqeqk5KwVxwEwjWRIwB+1gL
	cqk1MkHwoYqxG09CHkyJSdrl7G8DOzkJLq7TI721Iw+Rv4ZHHgdDKYMITG7FRvLob
X-Gm-Gg: ASbGncubWnTjBy6XsHjQAMJyX0paJDnhrOr44lvAxLPuxiQVVj0UN7E2gqbcroB7Quz
	KPtfpXCNhuFrYHJj67TnvkOnzt67AZr+Na77hDj9SPXYdMgrme0f59ktu0EMZM3B+iNbOrMKzyn
	ObRHRmmmigpsl7QdCrxMjB5uF8QI8ez2eCqW4YXbGgnGTDnqOT5xiOA1kDKj1j/x5R8UX/K/Hf3
	4xgEzsotpJAin2uIl3fiEBptfB90EIrqNZw4dJf8hwUUuh6Q9oZnQ9Cy8qc6YyFjBgLEFakXwhi
	SjcaFKaR1IPpJowPX1eNP8tkC8rhFZJ6ZR9gdeIjQByEv9Ae3W5zyzaDFg8lk4rpX+3OxtXKbhl
	Pj7Y=
X-Received: by 2002:a05:620a:28c5:b0:7c5:49d6:733a with SMTP id af79cd13be357-7c5ba1840admr3151003385a.21.1742999627357;
        Wed, 26 Mar 2025 07:33:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGndOOn6U/1aw7mrOjmDUl3e1WTG0S7x6kf/+r0QpQQBN2oiHm1XOwh+ra3+MmbmVhqaUwq4w==
X-Received: by 2002:a05:620a:28c5:b0:7c5:49d6:733a with SMTP id af79cd13be357-7c5ba1840admr3150997285a.21.1742999626823;
        Wed, 26 Mar 2025 07:33:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad650927esm1804627e87.195.2025.03.26.07.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 07:33:44 -0700 (PDT)
Date: Wed, 26 Mar 2025 16:33:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
Message-ID: <kj5dyy7bclmkft7x4hdpzpo7n35cu5nkpksj47phb7jt5lceab@7fb5i6gluqwz>
References: <20250324-sm8750_usb_master-v3-0-13e096dc88fd@quicinc.com>
 <20250324-sm8750_usb_master-v3-6-13e096dc88fd@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250324-sm8750_usb_master-v3-6-13e096dc88fd@quicinc.com>
X-Proofpoint-ORIG-GUID: lXTCR4szEycF6A_KsmyNQhZlubhacFjm
X-Proofpoint-GUID: lXTCR4szEycF6A_KsmyNQhZlubhacFjm
X-Authority-Analysis: v=2.4 cv=Q43S452a c=1 sm=1 tr=0 ts=67e4104c cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=4xIHL2cNR3voeXxo6gIA:9 a=CjuIK1q_8ugA:10 a=RVmHIydaz68A:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_07,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 priorityscore=1501 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_073350_813827_20636BAA 
X-CRM114-Status: GOOD (  26.10  )
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

On Mon, Mar 24, 2025 at 01:18:34PM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> sequences to bring it out of reset and into an operational state.  This
> differs to the M31 USB driver, in that the M31 eUSB2 driver will
> require a connection to an eUSB2 repeater.  This PHY driver will handle
> the initialization of the associated eUSB2 repeater when required.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig              |  10 +
>  drivers/phy/qualcomm/Makefile             |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 297 ++++++++++++++++++++++++++++++
>  3 files changed, 308 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..b18aab968122683e2e87287a4b570321d376870a
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -0,0 +1,297 @@
> +// SPDX-License-Identifier: GPL-2.0+

GPL-2.0-only

> +/*
> + * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +
> +#include <linux/regulator/consumer.h>
> +
> +#define USB_PHY_UTMI_CTRL0		(0x3c)
> +
> +#define USB_PHY_UTMI_CTRL5		(0x50)
> +
> +#define USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
> +#define FSEL				GENMASK(6, 4)
> +#define FSEL_38_4_MHZ_VAL		(0x6)
> +
> +#define USB_PHY_HS_PHY_CTRL2		(0x64)
> +
> +#define USB_PHY_CFG0			(0x94)
> +#define USB_PHY_CFG1			(0x154)
> +
> +#define USB_PHY_FSEL_SEL		(0xb8)
> +
> +#define USB_PHY_XCFGI_39_32		(0x16c)
> +#define USB_PHY_XCFGI_71_64		(0x17c)
> +#define USB_PHY_XCFGI_31_24		(0x168)
> +#define USB_PHY_XCFGI_7_0		(0x15c)
> +
> +#define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
> +{				\
> +	.off = o,		\
> +	.mask = b,		\
> +	.val = v,		\
> +}
> +
> +struct m31_phy_tbl_entry {
> +	u32 off;
> +	u32 mask;
> +	u32 val;
> +};
> +
> +struct m31_eusb2_priv_data {
> +	const struct m31_phy_tbl_entry	*setup_seq;
> +	unsigned int			setup_seq_nregs;
> +	const struct m31_phy_tbl_entry	*override_seq;
> +	unsigned int			override_seq_nregs;
> +	const struct m31_phy_tbl_entry	*reset_seq;
> +	unsigned int			reset_seq_nregs;
> +	unsigned int			fsel;
> +};
> +
> +static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, BIT(1), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, BIT(1), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG1, BIT(0), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_FSEL_SEL, BIT(0), 1),

I suppose, we can not expect to have #defines for all used bitfields?

> +};
> +

[...]

> +
> +static const struct phy_ops m31eusb2_phy_gen_ops = {
> +	.init	= m31eusb2_phy_init,
> +	.exit	= m31eusb2_phy_exit,

I think, you have a missing .set_mode callback here.

> +	.owner	= THIS_MODULE,
> +};
> +
> +static int m31eusb2_phy_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	const struct m31_eusb2_priv_data *data;
> +	struct device *dev = &pdev->dev;
> +	struct m31eusb2_phy *phy;
> +	int ret;
> +
> +	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	data = of_device_get_match_data(dev);

device_get_match_data()

> +	if (IS_ERR(data))
> +		return -EINVAL;
> +	phy->data = data;
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
