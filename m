Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C14C44524
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 07:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=COBNPeP79r9BTCiartc3/Q+pIVXNVA5usZpjdx9/tcY=; b=cyVOaC2oKYrhJ9R22lErWNmzx8
	uiWQlOZ00BDsfjVBFaAo1b5sry51Xo+xOj2tGTMZZEdwXUlmbLz5JhvuwhC9/cTRpLsgd00fj112J
	JnDLJw1Zok9ft+2LcbADaRBqFfF0jZyEk1oM/NIDzvota5emFHjzzMpqWFG5FX7wZxzTo24LAOeqL
	9neYy2pfWG053RLT1TzEulU3ETuLEzFx8u7RkKL7XbdYAMG7U/eeBxH1ko/NqTn9DKVu1wQGrdgsg
	Sus3tYQLId60LanVnf1bPfel5VXGoUYbck8rI9IcmvBbstRG8wyWo1u6vtpPa4XMtG+4ceg3ZmZpS
	N9PeWjbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmnqJ-0000000Ddio-3y9N;
	Thu, 23 Jul 2026 07:27:43 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmnqG-0000000Ddhe-3kHk
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 07:27:42 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4954d383e64so1942695e9.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 00:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784791659; x=1785396459; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yAOQgQXlGZbkbH3CWib2fcNHTb5Qf54AdoGX1X32FDk=;
        b=b3oAtAvXFecp9qqw6oILGCeqetszeNuunHEM0Ju/NVDRKSCy5crTLBCFCs1EaB07kC
         JslWRgw7vg1k7MtWXqZu7XUgl9nM9jfvGz2UYjNDJdoIXvEAlZVGZVb/eqGR2pEypWJv
         hBh9uPzapZl2tUTr900BRCr+gkXP3+f6R1y2KuuZbRKJo8aNExD2EXuGo6hdi8xvCLnZ
         ejky2zKi124r0NgXryC0lD8t371YQbR3pCC3s/NKm5ZUBeiLs82j4Yc5DM9bJR6/QTi6
         96cb9+OmA0Y6ngphbCAHQUxnLWGMDibA0uf/IRuBc/o2H/11kLRofS7VvODJnKcEjqC3
         BXcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784791659; x=1785396459;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yAOQgQXlGZbkbH3CWib2fcNHTb5Qf54AdoGX1X32FDk=;
        b=R2ZwAESFcOamh0zfcE2a699+4TPNXLvEcv389taTs2iRcato3VVQMIklKzqrZ7Qbpq
         ifL1KemhlcTQCTSBDBOx9zZnsr3mAo61aXJpAV/fTX74tp+wCVkgPybhSBMA30D/0Zte
         s5jjVPlv8VbhnPBllydKZ2yOx2cztE+pztRengWvhK0JGFW9SKf6LF7S80AfbmVpIm6p
         k/fOFwG223dJteW5gfxHJqFaWn/yzUTwuDahSfl1nTJcm/tjwLcZwzkWRTj68tOK393m
         FWjkx9i2MAttNmP/nKx3yv4DNMtCRhnsW3RAlxOvGcwvpkNf0lBBYa0/77yiRmiPmA1I
         tV2Q==
X-Forwarded-Encrypted: i=1; AHgh+RqRwo1X6d0CHLRsrUHKViaORaLCO6tUOvwVNWsk70+SKv0x690hIUct4BGhbf+bGyxJ0n4+DHZ0zWM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrkZrGqLE1PuugBS3L2N7zEeTkVgVg2SkY9u/ekqR7hQdD5Xrs
	H1K7BPXMXzsZwMgtSLggVd2DYVjRlkpojfxxm2hsWzmJiGiISjQC148Jtvnucl/A1FY=
X-Gm-Gg: AR+sD111vU2jDy6aaef5wQPGXHh3g3aKRE5JWN1fqydJW9ILVt6b89FJcC0bMBDp16w
	oq2R8mX3ZewOqP4PstTvZdRxLMvtFqdCHHMECc7qj1u/bj+llBTiorvPRYAHZ2mIX4Ab4j3oilx
	ofYmYPWpV8qUI4g767LfTnXW0UATkvfmlYBfOBjXoo3MkO5ksgRC12QtkV9eu4wVXuJDIP/XwdA
	20zxzYUrPNOwwK5SG78zeDrDlq/P+bx4ei+mMjJWOL9yTFJHMMOOsVei5MchZx3+YSbsFCyZPwV
	Ds7hy4TG38iwYizaQGadee6YnoKEq1gwBAN8M2Xz7sOWnhz3QGF4FCa1PmlBlfKeJhgcKssrDuY
	7c9bc2KqbJwXSfYVA+ui/VxfYTO4PTJJv8ZztYDD6oVmYnK/X/hnwm63lrHaulluQUuTuRMXuXY
	Q4Og+zzaNFDspRt/f2dGxnrEK40QutvJCTQbWfIidTfWMYPpdCZ6+P4BMzUw==
X-Received: by 2002:a05:6000:430c:b0:47f:923c:9b26 with SMTP id ffacd0b85a97d-47f923c9b57mr667478f8f.47.1784791658900;
        Thu, 23 Jul 2026 00:27:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:ab55:6d63:2bdd:9491? ([2a01:e0a:106d:1080:ab55:6d63:2bdd:9491])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f8fd04192sm3998409f8f.26.2026.07.23.00.27.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2026 00:27:38 -0700 (PDT)
Message-ID: <9856a5ba-ba03-47ef-bd10-96d19f78501e@linaro.org>
Date: Thu, 23 Jul 2026 09:27:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v6 2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
 <20260722-glymur_linkmode_0722-v6-2-bba8156b8cbb@oss.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260722-glymur_linkmode_0722-v6-2-bba8156b8cbb@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_002741_018289_694FB4DA 
X-CRM114-Status: GOOD (  30.40  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/23/26 04:30, Qiang Yu wrote:
> Some QMP PCIe PHY hardware blocks support multiple link topologies (e.g.
> x8 or x4+x4) selected via a TCSR register. The existing single-instance
> QMP PCIe PHY driver has no way to model this: it assumes a single cfg per
> DT node and instantiates exactly one PHY.
> 
> Add a dedicated driver for this class of PHY. Match data carries a
> per-mode cfg table; qmp_pcie_multiphy_probe() reads the current link
> mode from the TCSR register pointed to by "qcom,link-mode", looks up the
> corresponding cfg array, and instantiates one qmp_pcie per sub-PHY
> required by that link mode, registering the clock and #phy-cells = <1> phy
> providers so consumers can address individual sub-PHYs by index.
> 
> The driver inherits the phy setting and link-mode programmed by firmware,
> so only the no_csr reset is used and no phy setting tables are provided.
> 
> Add the first match data and compatible, qcom,glymur-qmp-gen5x8-pcie-phy,
> for the Glymur Gen5 PCIe PHY that can bifurcate into two x4 links or
> operate as a single x8 link.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/Kconfig                      |  11 +
>   drivers/phy/qualcomm/Makefile                     |   1 +
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c | 770 ++++++++++++++++++++++
>   3 files changed, 782 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index 60a0ead127fa..31241d1bbef2 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -77,6 +77,17 @@ config PHY_QCOM_QMP_PCIE
>   	  Enable this to support the QMP PCIe PHY transceiver that is used
>   	  with PCIe controllers on Qualcomm chips.
>   
> +config PHY_QCOM_QMP_PCIE_MULTIPHY
> +	tristate "Qualcomm QMP PCIe Multiple Link-mode PHY Driver"
> +	depends on PCI || COMPILE_TEST
> +	select GENERIC_PHY
> +	default PHY_QCOM_QMP
> +	help
> +	  Enable this to support the QMP PCIe PHY transceiver that is used
> +	  with PCIe controllers on Qualcomm chips. This PHY is a single
> +	  multi-lane QMP block that can be configured either as one wide
> +	  link or as multiple narrower independent links (bifurcation).
> +
>   config PHY_QCOM_QMP_PCIE_8996
>   	tristate "Qualcomm QMP PCIe 8996 PHY Driver"
>   	depends on PCI || COMPILE_TEST
> diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
> index b71a6a0bed3f..8bf887d58ee4 100644
> --- a/drivers/phy/qualcomm/Makefile
> +++ b/drivers/phy/qualcomm/Makefile
> @@ -10,6 +10,7 @@ obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
>   
>   obj-$(CONFIG_PHY_QCOM_QMP_COMBO)	+= phy-qcom-qmp-combo.o phy-qcom-qmp-usbc.o
>   obj-$(CONFIG_PHY_QCOM_QMP_PCIE)		+= phy-qcom-qmp-pcie.o
> +obj-$(CONFIG_PHY_QCOM_QMP_PCIE_MULTIPHY)	+= phy-qcom-qmp-pcie-multiphy.o
>   obj-$(CONFIG_PHY_QCOM_QMP_PCIE_8996)	+= phy-qcom-qmp-pcie-msm8996.o
>   obj-$(CONFIG_PHY_QCOM_QMP_UFS)		+= phy-qcom-qmp-ufs.o
>   obj-$(CONFIG_PHY_QCOM_QMP_USB)		+= phy-qcom-qmp-usb.o
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
> new file mode 100644
> index 000000000000..4531570b6fb1
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
> @@ -0,0 +1,770 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +

<snip>

> +
> +static int qmp_pcie_pd_init(struct qmp_pcie *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	struct device *dev = qmp->dev;
> +	int i, ret;
> +
> +	if (!cfg->num_pds)
> +		return 0;
> +
> +	qmp->pd_devs = devm_kcalloc(dev, cfg->num_pds, sizeof(*qmp->pd_devs),
> +				    GFP_KERNEL);
> +	if (!qmp->pd_devs)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < cfg->num_pds; i++) {
> +		qmp->pd_devs[i] = dev_pm_domain_attach_by_name(dev,
> +							       cfg->pd_names[i]);
> +		if (IS_ERR(qmp->pd_devs[i])) {

Sashiko's review seems legitimate, just use IS_ERR_OR_NULL() here and return -ENODATA if NULL as in
https://elixir.bootlin.com/linux/v7.1.4/source/drivers/remoteproc/qcom_q6v5_mss.c#L1955

> +			ret = PTR_ERR(qmp->pd_devs[i]);
> +			goto err_detach;
> +		}
> +	}
> +
> +	return devm_add_action_or_reset(dev, qmp_pcie_pd_detach, qmp);
> +
> +err_detach:
> +	while (--i >= 0)
> +		dev_pm_domain_detach(qmp->pd_devs[i], false);
> +
> +	return ret;
> +}

<snip>

Otherwise it looks good for me, the design is much better even if
it still shared a lot of common helpers with the normal qmp phy
driver so I guess at some point if could be optimized to avoid
having some divergence between the drivers.

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
