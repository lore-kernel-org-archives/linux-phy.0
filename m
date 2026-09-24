Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCBA9C9830E
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 08:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j0vBbYa16KOESUyTGjSNgbEreF+jnezJF1zU7bXLgQA=; b=Z9+nXOeAEzQM+wjPoo2OYjPxLO
	qEKL0UlVHjh1cr9Eefz76GVje8Wx4Ogmcn/fzTBxk2K44dFN6yoJL8JuSilAyVDaXhvummWTydOc9
	So8RGiYtScCng8A8bTwJNfLBJSLKbQGK0ItpuFQXpxyw6N2JduZB8xVslv406FICL316a360PXu3o
	y75fblFqvJ5nqVp10KS0w2ioqnv8rHQIcSS4S6cMJ3SEwu9o+yxvMRvFUaQI9+p4zrRILF0M/sUUA
	pMCKtIF2kTO3qlHYaUKQCCpp74hRRGPmT0eJLOpFO5oee5tDBZ+/BYSjIdTxQigJ/gSLandZWnwEv
	gWVaXdjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ecZ-0000000AP6t-2A3s;
	Thu, 24 Sep 2026 08:15:59 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ecW-0000000AP5t-20Df
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 08:15:57 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49e7bcb94d3so12264115e9.2
        for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 01:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1790237754; x=1790842554; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yhGAUy7vdE34BxfY3VoQTAZqEaT6q6J+DpdP4yh+DNw=;
        b=OUYmScerT1z4ijTXN115HzEhw+W7Lf6TP3gf+pPaJB4ClagAczAj5Y38Kfl067s3Jm
         nzA/FzDzl0HcTGQ8H2fX9dcIreOjHLSJvDlRt4htr4R8ofI3asthV/En675Tq/5mzaAu
         bBx5UETeS/l2nPVXYbZIOdw6SHc869mYjsXqRjoRlbdoWFOuysktaPLj9tdCPIrQXpXg
         ZUuUf1dCsexjnDqdfizVXkDrZ7BYhR23hAyCa5EyXu0hTW68e1mQGeeMJ5ehsH6RqWQH
         13etG0DqBU20Hyn0djjPFKfdCC7TbFKCGY628umlyINokpRF1lhpbRYIDgS3bQdB+4vU
         s/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790237754; x=1790842554;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yhGAUy7vdE34BxfY3VoQTAZqEaT6q6J+DpdP4yh+DNw=;
        b=wafEjVIatvzSs2O14nt3D6lyBgGNTfgJdRbpkLDeAgWXHNmnUBKRUlwXBcARXbd9Q1
         vm/p7L18LR3iv+YQ2wk91Smb2RUFCE8uZoGPooTLrtA33s9QupGb+EaaB1nYoFsNzLRo
         hMOMQgcTbAn7CVYsEAOJXlwFGrd+nGXa+ShpTj5wHk6XLlyyKi8Z+NfIWO60oCAnvJlV
         ZaekWOt1CQO5tJi7aXXi9IoCT/M49MzZacTn7oQPsNdGyXVgLmKqi8SWBPtrNnd/vg8l
         FLOVY7UGtEJVPiZMxzAAkBy7zZPakTlFiQ/cEVlki7tQEm1Lf6bT09fI1KL+n+BPvL1h
         q8nA==
X-Forwarded-Encrypted: i=1; AKwUvBw6OgXdsO1JYj0j8al0HkBP9dc2wCMBfZbzGi8/9iZ/uI4AJ010N9XFIbnq+Y7ymOjT/gyueXeTpbY=@lists.infradead.org
X-Gm-Message-State: AFuF++m5uvNQVOlxOwhFOMndqvEf60ehoTsUGh99mWdc0k8RUvcpYXJZ
	M8edxZZXVxFNqL30nlTeAc665/2rJXP5mzlNP+HKpwU0RSz9rHnmyx1NBMh7tprX7FySepdy7LA
	c75bqeeU=
X-Gm-Gg: AYBFou3xn8sQMdg4Rk2T8XXBKL9pLLQ4co1WfmigosXdvEzgz5Usvz8spmf1rpbnShU
	90h8BbC7kOlP8W+cODrGr17W7yVeV1+ryORzWRvTRRc6fx4eCRih9fo/Jwxsk5/OxWHyAmaJVgq
	6fbA55Hojxi1xT6NN1jGAvmlE4hm9uBMh2lDGItta4gG2WTVfug3Mo4xlCZGb6iOll8CQnyzV1X
	q7NuS2y1CPbieYdpiOTduXK2dqOP+dEE8On+assq7Nuh/q7JmTXe9nYBZtMeovwJCgxrUamrSW7
	6owhMfM1FzPFUrWitax6LOxssxixop6YWMnFM/+1p1J3fJ6Y7pX4D/6MYdBu+YQMZqjWI29tNgt
	oGM5FfiqB63ZcFV07SFkAYaNLg8USkHV6NQ8IzF8GMB6kMY8irTg9674CWDrjcNJP6N4vAt3eR3
	KmMh44PghevL78bEMkMEaxDNx02+XZ8JSVyORHmo4Ga4U/Sl72MNG9Khaox7KFyuafKxWBbTAAy
	+8DfPDEDZoTm/7EgzWFQSkXCNSfzLOWo5P79saxbcvKCw3ad/RBRA==
X-Received: by 2002:a05:600c:1c0b:b0:49c:fc6e:8cb4 with SMTP id 5b1f17b1804b1-49fe66dfe1amr34111485e9.24.1790237754392;
        Thu, 24 Sep 2026 01:15:54 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5e86:d153:fdb4:61c0? ([2a01:e0a:106d:1080:5e86:d153:fdb4:61c0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4886877a247sm13233295f8f.28.2026.09.24.01.15.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2026 01:15:53 -0700 (PDT)
Message-ID: <e20cd749-4d2a-42bc-ae22-1ba9b3cbd5d4@linaro.org>
Date: Thu, 24 Sep 2026 10:15:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: qcom-snps-femto-v2: Add support for SA8255P
To: Mattijs Korpershoek <mkorpershoek@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sriram Dash <quic_sriramd@quicinc.com>
References: <20260831-phy-qcom-snps-femto-v2-8255-v2-0-dc6197ffde1b@kernel.org>
 <20260831-phy-qcom-snps-femto-v2-8255-v2-2-dc6197ffde1b@kernel.org>
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
In-Reply-To: <20260831-phy-qcom-snps-femto-v2-8255-v2-2-dc6197ffde1b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_011556_599298_3CD7A41A 
X-CRM114-Status: GOOD (  28.84  )
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

On 8/31/26 11:31, Mattijs Korpershoek wrote:
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
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 127 ++++++++++++++++++++++++--
>   1 file changed, 118 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index 980ad1fb1e2e..9fdf7ae681b6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -12,6 +12,7 @@
>   #include <linux/of.h>
>   #include <linux/phy/phy.h>
>   #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>   #include <linux/regmap.h>
>   #include <linux/regulator/consumer.h>
>   #include <linux/reset.h>
> @@ -95,6 +96,7 @@ struct override_param_map {
>   	u8 table_size;
>   	u8 reg_offset;
>   	u8 param_mask;
> +	bool fw_managed;
>   };
>   
>   struct phy_override_seq {
> @@ -121,6 +123,7 @@ struct phy_override_seq {
>    * @phy_initialized: if PHY has been initialized correctly
>    * @mode: contains the current mode the PHY is in
>    * @update_seq_cfg: tuning parameters for phy init
> + * @pd_list: list of power domains associated with the device
>    */
>   struct qcom_snps_hsphy {
>   	struct device *dev;
> @@ -136,8 +139,81 @@ struct qcom_snps_hsphy {
>   	bool phy_initialized;
>   	enum phy_mode mode;
>   	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
> +
> +	struct dev_pm_domain_list *pd_list;
>   };
>   
> +static void qcom_snps_domain_detach(void *data)
> +{
> +	struct qcom_snps_hsphy *hsphy = data;
> +
> +	dev_pm_domain_detach_list(hsphy->pd_list);
> +}
> +
> +static int qcom_snps_domain_attach(struct qcom_snps_hsphy *hsphy)
> +{
> +	struct dev_pm_domain_attach_data pd_data = {
> +		.pd_flags       = PD_FLAG_NO_DEV_LINK,
> +		.pd_names       = (const char*[]) { "core", "transfer" },
> +		.num_pd_names   = 2,
> +	};
> +	struct device *dev = hsphy->dev;
> +	int ret;
> +
> +	ret = dev_pm_domain_attach_list(dev, &pd_data, &hsphy->pd_list);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "domain attach failed\n");
> +
> +	return 0;
> +}
> +
> +/* d3_to_d0 transition by turning on all the suppliers */
> +static int qcom_snps_d3_to_d0(struct qcom_snps_hsphy *hsphy)
> +{
> +	int ret;
> +
> +	if (!hsphy->pd_list)
> +		return 0;
> +
> +	ret = pm_runtime_resume_and_get(hsphy->pd_list->pd_devs[0]);
> +	if (ret)
> +		return ret;
> +
> +	ret = pm_runtime_resume_and_get(hsphy->pd_list->pd_devs[1]);
> +	if (ret)
> +		pm_runtime_put_sync(hsphy->pd_list->pd_devs[0]);
> +
> +	return ret;
> +}
> +
> +/* d0_to_d3 transition by turning off all the suppliers */
> +static void qcom_snps_d0_to_d3(struct qcom_snps_hsphy *hsphy)
> +{
> +	if (!hsphy->pd_list)
> +		return;
> +
> +	pm_runtime_put_sync(hsphy->pd_list->pd_devs[1]);
> +	pm_runtime_put_sync(hsphy->pd_list->pd_devs[0]);
> +}
> +
> +/* d1_to_d0 transition by turning on the 'transfer' supplier */
> +static int qcom_snps_d1_to_d0(struct qcom_snps_hsphy *hsphy)
> +{
> +	if (!hsphy->pd_list)
> +		return 0;
> +
> +	return pm_runtime_resume_and_get(hsphy->pd_list->pd_devs[1]);
> +}
> +
> +/* d0_to_d1 transition by turning off the 'transfer' supplier */
> +static void qcom_snps_d0_to_d1(struct qcom_snps_hsphy *hsphy)
> +{
> +	if (!hsphy->pd_list)
> +		return;
> +
> +	pm_runtime_put_sync(hsphy->pd_list->pd_devs[1]);
> +}
> +
>   static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
>   {
>   	struct device *dev = hsphy->dev;
> @@ -196,6 +272,8 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
>   					   0, USB2_AUTO_RESUME);
>   	}
>   
> +	qcom_snps_d0_to_d1(hsphy);
> +
>   	return 0;
>   }
>   
> @@ -203,7 +281,7 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
>   {
>   	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
>   
> -	return 0;
> +	return qcom_snps_d1_to_d0(hsphy);
>   }
>   
>   static int __maybe_unused qcom_snps_hsphy_runtime_suspend(struct device *dev)
> @@ -316,6 +394,10 @@ static const struct override_param ls_fs_output_impedance_sc7280[] = {
>   	{ 1310, 0 },
>   };
>   
> +static const struct override_param_map sa8255p_snps_hs_phy = {
> +	.fw_managed = true,
> +};
> +
>   static const struct override_param_map sc7280_snps_7nm_phy[] = {
>   	{
>   		"qcom,hs-disconnect-bp",
> @@ -390,9 +472,15 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>   
>   	dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
>   
> +	ret = qcom_snps_d3_to_d0(hsphy);
> +	if (ret < 0) {
> +		dev_err(hsphy->dev, "Failed to transition to d0 state\n");
> +		return ret;
> +	}
> +
>   	ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>   	if (ret)
> -		return ret;
> +		goto transition_to_d3;
>   
>   	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
>   	if (ret) {
> @@ -472,6 +560,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>   	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>   poweroff_phy:
>   	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> +transition_to_d3:
> +	qcom_snps_d0_to_d3(hsphy);
>   
>   	return ret;
>   }
> @@ -485,6 +575,8 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
>   	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>   	hsphy->phy_initialized = false;
>   
> +	qcom_snps_d0_to_d3(hsphy);
> +
>   	return 0;
>   }
>   
> @@ -496,6 +588,10 @@ static const struct phy_ops qcom_snps_hsphy_gen_ops = {
>   };
>   
>   static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
> +	{
> +		.compatible	= "qcom,sa8255p-usb-hs-phy",
> +		.data		= &sa8255p_snps_hs_phy,
> +	},
>   	{ .compatible	= "qcom,sm8150-usb-hs-phy", },
>   	{ .compatible	= "qcom,usb-snps-hs-5nm-phy", },
>   	{
> @@ -565,6 +661,7 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
>   	struct qcom_snps_hsphy *hsphy;
> +	const struct override_param_map *cfg;
>   	struct phy_provider *phy_provider;
>   	struct phy *generic_phy;
>   	int ret, i;
> @@ -580,14 +677,26 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
>   	if (IS_ERR(hsphy->base))
>   		return PTR_ERR(hsphy->base);
>   
> -	ret = qcom_snps_hsphy_clk_init(hsphy);
> -	if (ret)
> -		return dev_err_probe(dev, ret, "failed to initialize clocks\n");
> +	cfg = of_device_get_match_data(dev);
> +
> +	if (cfg && cfg->fw_managed) {
> +		ret = qcom_snps_domain_attach(hsphy);
> +		if (ret)
> +			return ret;
> +
> +		ret = devm_add_action_or_reset(dev, qcom_snps_domain_detach, hsphy);
> +		if (ret)
> +			return ret;
> +	} else {
> +		ret = qcom_snps_hsphy_clk_init(hsphy);
> +		if (ret)
> +			return dev_err_probe(dev, ret, "failed to initialize clocks\n");
>   
> -	hsphy->phy_reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
> -	if (IS_ERR(hsphy->phy_reset)) {
> -		dev_err(dev, "failed to get phy core reset\n");
> -		return PTR_ERR(hsphy->phy_reset);
> +		hsphy->phy_reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
> +		if (IS_ERR(hsphy->phy_reset)) {
> +			dev_err(dev, "failed to get phy core reset\n");
> +			return PTR_ERR(hsphy->phy_reset);
> +		}
>   	}
>   
>   	num = ARRAY_SIZE(hsphy->vregs);
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
