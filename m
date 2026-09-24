Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C80EC98314
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 08:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GN0QK46uwsD8NdA6DaOUN1iuVqiX8MRGYTTwnUCX/Wk=; b=3Hvo/4OKk5yOUOUbptAcJndb5q
	NJ+xvPJnsbvspsDTKloWOWfXqMM2o7vn3l2KvrFCyXJyzVBWkKVTL6ekAIPfHJ1qqR4VTXOs+kg67
	xMVz/HUw0lsMp9jqEgQTC27DsoXhDWGG+Y8BpGcg2Rhp0a69oFILuXFLzo/P2VT1O2/GA39eyVrbv
	d1+cMywfE+BgEYlZOeCfAmZwoaIqaoKUzuinQVMS4AnWMCrOBqU/Ttx7ZCMTZK3AyKidt+p9Y5fxh
	px4PEbm8XZVvHXJmqslBdBOBnsol2SbOCPWfJRkqXecPMHnElxfA0787YF4Tw+yx0z9jwPrbVQMip
	p1+Z0eog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9eaf-0000000AOq7-48Fe;
	Thu, 24 Sep 2026 08:14:01 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ead-0000000AOpN-2wQH
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 08:14:01 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482f6356256so590547f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 01:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1790237637; x=1790842437; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LozxMmZGU4p2bYlyVZFMMX3tPgoMX8JfwdVevzR8cSQ=;
        b=jsXF4yDnm+6KBJutwHFHXmef5T8UUqQKzggcMUeEu8IfTyhvbw1b3CkKfY58VB7klI
         aFLzXn6WUsM1PCuqeAJ82nFPa7/ah0mdyRJKy4KhEZmY2AXd8DT8wrYBpquMY7PPQV9q
         VVxLIm9tG7pts39e+/eFl9p7ue1s40WERnZZ39L5P5F8rUOZ/u6Fesa4IMqhSE+M0+yB
         U+GLD5ek8Rr6cWTh7tbMOv7rPUvNKxBzYvvIo4aYZ4COGvdVBe2z8l/cB/bcR7sXaoRG
         aJrUC9x8/sBXbVsSewKILlq/qU/pqWWesXw2HAixwuA8nxrbyD1PbowNnXZR0iIYJ7N6
         yW2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790237637; x=1790842437;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=LozxMmZGU4p2bYlyVZFMMX3tPgoMX8JfwdVevzR8cSQ=;
        b=q0+ZC7GhZwaZIFo2VRzyGZ2TZInz3bpM7N7k5R1kcJcv5fXh2bKmJI12lcmyrqAJga
         Xe1IMsNmg0lq3vJTQD++BYkabRVT2oFznPGgURu95yegsmkd2fNvOo8i278ByYn/6GJC
         TBzsCkO8/LPVdaY1xy8/6vIPym3QdlFcUFACt8KgDJiYFJPkMXqxA+X5yUeD/ZRcH4Ky
         hYMspVQUH6ry8e/uIzpIyHz15sJ5NdPoC4P90cHQIQYvxlxCPQEgggwsWS5Edjb73IKI
         fUj7s9XEuy5+utitqFnwxZxnf2fAGJs3n3KrJ9VLXcKNo2w3GdZIeDP3zMFU2WD2J7zs
         zM7Q==
X-Forwarded-Encrypted: i=1; AKwUvBxEGImLzreyfHwTqj/Gg5oNmWvsW2f6Mx59H8ISoUfyt2c4FRhmxcvUvvwox3wcVt3Uj/v3lv2RdHw=@lists.infradead.org
X-Gm-Message-State: AFuF++ldO35QCx2Dqf/SdmB1RtX1Q55BxpVhZ4vj4kG71SxP2+TP7t6X
	7OYPdcCxUrkBSFyaMiBqJHzbVr/aA4hKf6lnLRj1L2TE1et6MO1lqRS3Y5LkjHuDNyo=
X-Gm-Gg: AYBFou1+WgzowOEstvyzE7NKA5gqiy3CIrJojI2kQhyazOZdiH/qjQ+OJihl73slTRl
	dT00vnpcvyNmCC11QM6b3GWhmjb1UFj1wt2/yBgeyD4eF7sVMr5BN9epBp2PV8NuzEXsPZJyxLl
	zkWNsZEOXzZesnFSeN0/HN5el0WYVIqXUxQwue4tT6EKe05FUN8HdpVlEulPbNuuzkrUpMnY2CF
	YBFeAQ1+yog6iAr4kpqGTDkAPliY7NGOJTGM57SukDVFlQOYXJK5whYMOYzR/qtvSwbJ8Rk/Lp/
	1YvwMShlji+Ab7zaws6R5TF47FNukKXjLNxf7m8zx8CXLlCwe8qQ9bsc2ujM0LFYYcVLQBYNQwD
	/019pLO0wODL3WLLJAE02i69ytMyZNbk7XCsfo4F0FF8n1opJTkpcx/zECE45MMpqkmL9RgrlAb
	AGPRHlJ8b6XXseT3w8s0uYvANzDfHhfhOvNrEwa6eQhhZyEDNO9Bjv+HRkVzqhSNRmvTvS8GOm8
	NbI5WC5Vx6CmAloRUwJmDQ0D0/IvvMB0DSUm0jdgTFCDjeBZxyeyL0HVLXNi8C2
X-Received: by 2002:a05:600c:8b22:b0:49e:6ca6:d40f with SMTP id 5b1f17b1804b1-49fe66f1534mr28473525e9.9.1790237637069;
        Thu, 24 Sep 2026 01:13:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5e86:d153:fdb4:61c0? ([2a01:e0a:106d:1080:5e86:d153:fdb4:61c0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fe5b44db6sm53531055e9.0.2026.09.24.01.13.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2026 01:13:56 -0700 (PDT)
Message-ID: <a72169ad-b1ae-4502-8997-4b86999b31eb@linaro.org>
Date: Thu, 24 Sep 2026 10:13:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 2/2] phy: qcom: qmp-usb: Add support for SA8255P
To: Mattijs Korpershoek <mkorpershoek@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sriram Dash <quic_sriramd@quicinc.com>,
 Shazad Hussain <quic_shazhuss@quicinc.com>
References: <20260903-phy-qcom-qmp-usb-8255-v5-0-e251e22b341e@kernel.org>
 <20260903-phy-qcom-qmp-usb-8255-v5-2-e251e22b341e@kernel.org>
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
In-Reply-To: <20260903-phy-qcom-qmp-usb-8255-v5-2-e251e22b341e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_011359_831398_B53620E0 
X-CRM114-Status: GOOD (  28.42  )
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

On 9/3/26 09:44, Mattijs Korpershoek wrote:
> From: Sriram Dash <quic_sriramd@quicinc.com>
> 
> The Qualcomm automotive SA8255p SoC relies on firmware to configure
> platform resources, including clocks, interconnects and TLMM.
> The driver requests resources operations over SCMI using power protocols.
> 
> The SCMI power protocol enables or disables resources like clocks,
> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
> such as resume/suspend, to control power on/off.
> 
> Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
> whereas power domain "transfer" controls clocks and interconnects.
> 
> In this variant, two disjoint sets of resources are modeled against
> the power domain suppliers which can be turned on/off to achieve modeled
> device states. Two modeled low power states d1 and d3 are supported.
> 
> transition: d0 <--> d3  :: both core and transfer suppliers
> transition: d0 <--> d1  :: only transfer supplier
> 
> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 182 ++++++++++++++++++++++++++++----
>   1 file changed, 160 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index b0790bcf0bc8..c18680b60803 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -15,6 +15,7 @@
>   #include <linux/of_address.h>
>   #include <linux/phy/phy.h>
>   #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>   #include <linux/regulator/consumer.h>
>   #include <linux/reset.h>
>   #include <linux/slab.h>
> @@ -1411,6 +1412,9 @@ struct qmp_phy_cfg {
>   
>   	/* Offset from PCS to PCS_USB region */
>   	unsigned int pcs_usb_offset;
> +
> +	/* true, if the device resources are fw managed */
> +	bool fw_managed;
>   };
>   
>   struct qmp_usb {
> @@ -1439,6 +1443,8 @@ struct qmp_usb {
>   	struct phy *phy;
>   
>   	struct clk_fixed_rate pipe_clk_fixed;
> +
> +	struct dev_pm_domain_list *pd_list;
>   };
>   
>   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> @@ -1633,6 +1639,25 @@ static const struct qmp_phy_cfg qdu1000_usb3_uniphy_cfg = {
>   	.has_pwrdn_delay	= true,
>   };
>   
> +static const struct qmp_phy_cfg sa8255p_usb3_uniphy_cfg = {
> +	.offsets		= &qmp_usb_offsets_v5,
> +
> +	.serdes_tbl		= sc8280xp_usb3_uniphy_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sc8280xp_usb3_uniphy_serdes_tbl),
> +	.tx_tbl			= sc8280xp_usb3_uniphy_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sc8280xp_usb3_uniphy_tx_tbl),
> +	.rx_tbl			= sc8280xp_usb3_uniphy_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(sc8280xp_usb3_uniphy_rx_tbl),
> +	.pcs_tbl		= sa8775p_usb3_uniphy_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(sa8775p_usb3_uniphy_pcs_tbl),
> +	.pcs_usb_tbl		= sa8775p_usb3_uniphy_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(sa8775p_usb3_uniphy_pcs_usb_tbl),
> +	.vreg_list		= NULL,
> +	.num_vregs		= 0, /* Regulators are handled by the firmware */
> +	.regs			= qmp_v5_usb3phy_regs_layout,
> +	.fw_managed		= true,
> +};
> +
>   static const struct qmp_phy_cfg sa8775p_usb3_uniphy_cfg = {
>   	.offsets		= &qmp_usb_offsets_v5,
>   
> @@ -1867,6 +1892,77 @@ static const struct qmp_phy_cfg glymur_usb3_uniphy_cfg = {
>   	.regs			= qmp_v7_usb3phy_regs_layout,
>   };
>   
> +static int qmp_usb_domain_attach(struct qmp_usb *qmp)
> +{
> +	struct dev_pm_domain_attach_data pd_data = {
> +		.pd_flags       = PD_FLAG_NO_DEV_LINK,
> +		.pd_names       = (const char *[]) { "core", "transfer" },
> +		.num_pd_names   = 2,
> +	};
> +	struct device *dev = qmp->dev;
> +	int ret;
> +
> +	ret = dev_pm_domain_attach_list(dev, &pd_data, &qmp->pd_list);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "domain attach failed\n");
> +
> +	return 0;
> +}
> +
> +static void qmp_usb_domain_detach(void *data)
> +{
> +	struct qmp_usb *qmp = data;
> +
> +	dev_pm_domain_detach_list(qmp->pd_list);
> +}
> +
> +/* d3_to_d0 transition by turning on all the suppliers */
> +static int qmp_usb_d3_to_d0(struct qmp_usb *qmp)
> +{
> +	int ret;
> +
> +	if (!qmp->pd_list)
> +		return 0;
> +
> +	ret = pm_runtime_resume_and_get(qmp->pd_list->pd_devs[0]);
> +	if (ret)
> +		return ret;
> +
> +	ret = pm_runtime_resume_and_get(qmp->pd_list->pd_devs[1]);
> +	if (ret)
> +		pm_runtime_put_sync(qmp->pd_list->pd_devs[0]);
> +
> +	return ret;
> +}
> +
> +/* d0_to_d3 transition by turning off all the suppliers */
> +static void qmp_usb_d0_to_d3(struct qmp_usb *qmp)
> +{
> +	if (!qmp->pd_list)
> +		return;
> +
> +	pm_runtime_put_sync(qmp->pd_list->pd_devs[1]);
> +	pm_runtime_put_sync(qmp->pd_list->pd_devs[0]);
> +}
> +
> +/* d1_to_d0 transition by turning on the 'transfer' supplier */
> +static int qmp_usb_d1_to_d0(struct qmp_usb *qmp)
> +{
> +	if (!qmp->pd_list)
> +		return 0;
> +
> +	return pm_runtime_resume_and_get(qmp->pd_list->pd_devs[1]);
> +}
> +
> +/* d0_to_d1 transition by turning off the 'transfer' supplier */
> +static void qmp_usb_d0_to_d1(struct qmp_usb *qmp)
> +{
> +	if (!qmp->pd_list)
> +		return;
> +
> +	pm_runtime_put_sync(qmp->pd_list->pd_devs[1]);
> +}
> +
>   static int qmp_usb_serdes_init(struct qmp_usb *qmp)
>   {
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -1886,10 +1982,16 @@ static int qmp_usb_init(struct phy *phy)
>   	void __iomem *pcs = qmp->pcs;
>   	int ret;
>   
> +	ret = qmp_usb_d3_to_d0(qmp);
> +	if (ret < 0) {
> +		dev_err(qmp->dev, "Failed to transition to d0 state\n");
> +		return ret;
> +	}
> +
>   	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>   	if (ret) {
>   		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> -		return ret;
> +		goto err_transition_to_d3;
>   	}
>   
>   	ret = reset_control_bulk_assert(qmp->num_resets, qmp->resets);
> @@ -1916,6 +2018,8 @@ static int qmp_usb_init(struct phy *phy)
>   	reset_control_bulk_assert(qmp->num_resets, qmp->resets);
>   err_disable_regulators:
>   	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> +err_transition_to_d3:
> +	qmp_usb_d0_to_d3(qmp);
>   
>   	return ret;
>   }
> @@ -1931,6 +2035,8 @@ static int qmp_usb_exit(struct phy *phy)
>   
>   	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>   
> +	qmp_usb_d0_to_d3(qmp);
> +
>   	return 0;
>   }
>   
> @@ -2119,6 +2225,8 @@ static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
>   	clk_disable_unprepare(qmp->pipe_clk);
>   	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
>   
> +	qmp_usb_d0_to_d1(qmp);
> +
>   	return 0;
>   }
>   
> @@ -2134,14 +2242,23 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
>   		return 0;
>   	}
>   
> +	ret = qmp_usb_d1_to_d0(qmp);
> +	if (ret < 0) {
> +		dev_err(qmp->dev, "Failed to transition to d0 state\n");
> +		return ret;
> +	}
> +
>   	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
> -	if (ret)
> +	if (ret) {
> +		qmp_usb_d0_to_d1(qmp);
>   		return ret;
> +	}
>   
>   	ret = clk_prepare_enable(qmp->pipe_clk);
>   	if (ret) {
>   		dev_err(dev, "pipe_clk enable failed, err=%d\n", ret);
>   		clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
> +		qmp_usb_d0_to_d1(qmp);
>   		return ret;
>   	}
>   
> @@ -2321,10 +2438,12 @@ static int qmp_usb_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
>   		qmp->pcs_misc = NULL;
>   	}
>   
> -	qmp->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
> -	if (IS_ERR(qmp->pipe_clk)) {
> -		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
> -				     "failed to get pipe clock\n");
> +	if (!qmp->cfg->fw_managed) {
> +		qmp->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
> +		if (IS_ERR(qmp->pipe_clk)) {
> +			return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
> +					     "failed to get pipe clock\n");
> +		}
>   	}
>   
>   	ret = devm_clk_bulk_get_all(qmp->dev, &qmp->clks);
> @@ -2333,10 +2452,12 @@ static int qmp_usb_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
>   
>   	qmp->num_clks = ret;
>   
> -	ret = qmp_usb_reset_init(qmp, usb3phy_legacy_reset_l,
> -				 ARRAY_SIZE(usb3phy_legacy_reset_l));
> -	if (ret)
> -		return ret;
> +	if (!qmp->cfg->fw_managed) {
> +		ret = qmp_usb_reset_init(qmp, usb3phy_legacy_reset_l,
> +					 ARRAY_SIZE(usb3phy_legacy_reset_l));
> +		if (ret)
> +			return ret;
> +	}
>   
>   	return 0;
>   }
> @@ -2370,17 +2491,19 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
>   	if (ret)
>   		return ret;
>   
> -	qmp->pipe_clk = devm_clk_get(dev, "pipe");
> -	if (IS_ERR(qmp->pipe_clk)) {
> -		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
> -				     "failed to get pipe clock\n");
> +	if (!qmp->cfg->fw_managed) {
> +		qmp->pipe_clk = devm_clk_get(dev, "pipe");
> +		if (IS_ERR(qmp->pipe_clk)) {
> +			return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
> +					     "failed to get pipe clock\n");
> +		}
> +
> +		ret = qmp_usb_reset_init(qmp, usb3phy_reset_l,
> +					 ARRAY_SIZE(usb3phy_reset_l));
> +		if (ret)
> +			return ret;
>   	}
>   
> -	ret = qmp_usb_reset_init(qmp, usb3phy_reset_l,
> -				 ARRAY_SIZE(usb3phy_reset_l));
> -	if (ret)
> -		return ret;
> -
>   	return 0;
>   }
>   
> @@ -2403,6 +2526,16 @@ static int qmp_usb_probe(struct platform_device *pdev)
>   	if (!qmp->cfg)
>   		return -EINVAL;
>   
> +	if (qmp->cfg->fw_managed) {
> +		ret = qmp_usb_domain_attach(qmp);
> +		if (ret)
> +			return ret;
> +
> +		ret = devm_add_action_or_reset(dev, qmp_usb_domain_detach, qmp);
> +		if (ret)
> +			return ret;
> +	}
> +
>   	ret = devm_regulator_bulk_get_const(dev, qmp->cfg->num_vregs,
>   					qmp->cfg->vreg_list, &qmp->vregs);
>   	if (ret)
> @@ -2435,9 +2568,11 @@ static int qmp_usb_probe(struct platform_device *pdev)
>   	 */
>   	pm_runtime_forbid(dev);
>   
> -	ret = phy_pipe_clk_register(qmp, np);
> -	if (ret)
> -		goto err_pm_put;
> +	if (!qmp->cfg->fw_managed) {
> +		ret = phy_pipe_clk_register(qmp, np);
> +		if (ret)
> +			goto err_pm_put;
> +	}
>   
>   	qmp->phy = devm_phy_create(dev, np, &qmp_usb_phy_ops);
>   	if (IS_ERR(qmp->phy)) {
> @@ -2492,6 +2627,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
>   	}, {
>   		.compatible = "qcom,qdu1000-qmp-usb3-uni-phy",
>   		.data = &qdu1000_usb3_uniphy_cfg,
> +	}, {
> +		.compatible = "qcom,sa8255p-qmp-usb3-uni-phy",
> +		.data = &sa8255p_usb3_uniphy_cfg,
>   	}, {
>   		.compatible = "qcom,sa8775p-qmp-usb3-uni-phy",
>   		.data = &sa8775p_usb3_uniphy_cfg,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
