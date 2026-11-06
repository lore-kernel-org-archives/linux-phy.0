Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1F4606D80D
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 21:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SDvzjVKf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=H3/dJ9/M
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LyLfdwSf7lwW3hZeGsw6kcFl7PtN6F77d+CP+I0DCKc=; b=SDvzjVKfaub5dqJOuEFv6Jvs5u
	Sq6xGatsVawrbUKYuuuEyBgQeHnQRz+a/gr4NfDQSuj+GQeOwNT/oa6wk9a+zhPKluTgrq51S5bOZ
	m5mCSwHGupeZRvfovn4LnFOrACCw/qRdr0X9yMaEEW/7Nnz24uKPwAjrhTMYKcjI2TTr+XQF2AZAV
	Ru8e1hFxyYPL8qIByq4vPONZT0rcEIr8wLuvxFHApxU7T9hRqvW0fl6b+McSRyFW+5VD48JVG8n8h
	RO88jUKnUk5BStxJu1zU++bJPpwpz5hwmWSTK5g4PEVGdpuHBPKEALw1MjbC10E3JvSIaIt+2SyxN
	dYgBqr2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRpx-0000000Dk0K-0hko;
	Fri, 06 Nov 2026 21:51:05 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRpu-0000000Djzb-3JDm
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 21:51:04 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3acde6b7b29so1305121fa.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 13:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794001861; x=1794606661; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=iNCYwBZdgrtZcJalM2BjSEQM3MkkZ/FKImLgDlnfdqM=;
        b=H3/dJ9/MAFN4EBUiYcfq29YDKFzZ3y0rTFI9AwDzo3jziTNh+h4iik6CX0fKvBXQQH
         PSsjPhSizIy9EIJRhjqY71oIMpcHicn0BBZo3Y6AiWEvmg5bD7v60DFLrmitUQ7qQSfj
         ecGf9yt0Xi33QxkRqwX9f/Ke1WA8KBsLOJ3oTasqGWoTJpsPV3VgbVXlYyEzKPFoSwQ2
         n96wjHJTzQ8pthIBLXjI67rOkMW32DKApbOj1ARbRhD81ieMLG6+m4gzPMJ7YBLIfhAQ
         mEyqgQXrygIJRn34a5h6AYWJO2JbYtEE9/3WPXpQfGzwZaK5O/FozfsMzb07HLadsT4S
         Xlfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794001861; x=1794606661;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iNCYwBZdgrtZcJalM2BjSEQM3MkkZ/FKImLgDlnfdqM=;
        b=aOExwDEahWDIEkzuyR/IhdmPn2wCUpzEmg7JF1flImUfzpijUed3Npt7EHYI0mRMvd
         7uedlz17mqPV0TduktbihD4r9mbWuWMSR3CDR4P7JgmSPoh8JcuiwisifySs5OYsIic8
         mHZXNGeaC+CF7hPcXg9MZKJTcHe/ihFG13ws/mJ7Doqu0am7hi/02NICsvsUpFhykzIv
         XWsMJVIx8wHhazWAve6GaJh8E1hJEpfwrLvESQJHbm5RFNSaZjGRrzwDM9H4KV9dfHt3
         bJPdnqucO4J+we1NmmfcP2AV1A+YfQijPQye/uoIf3kMFctHQTlVXTJs2HohCDUGfrEG
         liUQ==
X-Forwarded-Encrypted: i=1; AL+hErF+oxBb84o3VNkQC82TUe73aoWy3BoMjQHzsxQD3U5P/uytUf8B+GG+OPjo9vuJiwUbdXDPOKsV4Mw=@lists.infradead.org
X-Gm-Message-State: APuU4Z9SiB+dt6XSFkK3bAVoOcWtCh5DjsPnwj7unZM+dIHc/q0qH35a
	tLK2JvAokDco37iG/uTW0qGdauymEqa/9BjQMbNUzRZShni6bfqgoiEsIHX9PYOUZ7o=
X-Gm-Gg: AYBFou21FOCca7Y+mBwKrdxewuyQunv3sGXlkVy6dw0Gk3oQ6COb4C9VPE77S818oKX
	7RK99k6zs0/BvZg2P/AVZN99WoF8PNp1nTUVtLW5bQXmbY9BooRt63h3RQBMUvnUdJ9iOnLv5Lb
	PpyT6cRmFwrZkygQ4K1vzQVeCaJmKf2Nkro3Kpb5fKeKHJ0/2XwmNOpXCZ3v2E3kPtlMMbpC9H0
	n+fgAy6yJP2BNwxpG8GMeDXlOqS28hfFS2lNm7thhi+ZZbxeJzgQCcCXxIG2gd9vBpCTAJZKNxV
	WvL3tamVoD+4EFmmWugsN7TZ1ZV8FCNKnuxdI8DAFUvkYQokV2nYFw9vrHi2EE26MHfcQJRWMu1
	NEbytFxpfMxkq47W7rrrDM6lGtl5NKAiwOQXT3xLgvyMf4W+Yc5LNX8NeEuMnDLYIerpW7DMbYV
	TKVcdmrfe21GbT0GssrL0lWBblyQU2/8fTn9IB34B5dQfN6/O0iKPPVwghbk8Dp08TfiIi3rUz9
	drkURy9HqOcdkZdEOF3W2r7Z8dCJBFyK8nnm9Tjr9T9oLfeeHEK/e6X2dHBQFSIqRgGUjH/zGld
	M9Kf5hYABAVUqnT5WF7jcmu1bzjWZhpUe4Op9mO9CswT0nfT12uqgEbz9IFk1g7vptW4lN+mGUo
	3jPmcKw==
X-Received: by 2002:ac2:5690:0:b0:5bf:ff57:b346 with SMTP id 2adb3069b0e04-5c003c44406mr1310242e87.5.1794001860247;
        Fri, 06 Nov 2026 13:51:00 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c002ed5629sm551625e87.12.2026.11.06.13.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2026 13:50:59 -0800 (PST)
Message-ID: <160aa94c-c726-4cfe-b8cc-b1f974b32f13@linaro.org>
Date: Fri, 6 Nov 2026 23:50:58 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/7] media: qcom: camss: Add support for SM8150
To: mail@andrewgigena.dev, Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-5-0103e8a0bbcd@andrewgigena.dev>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-5-0103e8a0bbcd@andrewgigena.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_135102_910708_AFBFF348 
X-CRM114-Status: GOOD (  24.24  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/6/26 20:35, Andrew Gigena via B4 Relay wrote:
> From: Andrew Gigena <mail@andrewgigena.dev>
> 
> Add CAMSS platform data for the Qualcomm SM8150 SoC. The camera
> subsystem contains four CSIPHY, four CSID (two full and two lite), two
> VFE and two VFE-Lite instances.
> 
> The hardware reuses the existing 3-phase 1.0 CSIPHY, Gen2 CSID and
> VFE 17x implementations; the CSIPHY uses the SC8280XP lane register
> layout. Add CAMSS_8150 to the version enum and to the shared code
> paths, then add the per-block clock, regulator, power domain,
> interrupt and interconnect resources.
> 
> The CSIPHY resources are reduced to id/hw_ops/formats only; clocks,
> regulators, registers and interrupts are owned by the dedicated CSI2
> PHY driver.
> 
> Signed-off-by: Andrew Gigena <mail@andrewgigena.dev>
> ---
>   .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     |   2 +
>   drivers/media/platform/qcom/camss/camss.c          | 231 +++++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h          |   1 +
>   3 files changed, 234 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index dac8d2ecf799..5e7c2e67ae88 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -1133,6 +1133,7 @@ static bool csiphy_is_gen2(u32 version)
>   	case CAMSS_6150:
>   	case CAMSS_6350:
>   	case CAMSS_7280:
> +	case CAMSS_8150:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
>   	case CAMSS_8300:
> @@ -1235,6 +1236,7 @@ static int csiphy_init(struct csiphy_device *csiphy)
>   		regs->lane_regs = &lane_regs_sm8250[0];
>   		regs->lane_array_size = ARRAY_SIZE(lane_regs_sm8250);
>   		break;
> +	case CAMSS_8150:
>   	case CAMSS_8280XP:
>   		regs->lane_regs = &lane_regs_sc8280xp[0];
>   		regs->lane_array_size = ARRAY_SIZE(lane_regs_sc8280xp);
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index c54185c93a8a..da4d2213fd3d 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -1940,6 +1940,223 @@ static const struct resources_icc icc_res_sm6350[] = {
>   	},
>   };
>   
> +static const struct camss_subdev_resources csiphy_res_sm8150[] = {

Drop csiphy_res_sm8150[], and pull this:

* https://lore.kernel.org/all/20261026224957.1115370-4-vz@kernel.org/

> +	/* CSIPHY0 - clocks/regs/supplies owned by PHY driver */
> +	{
> +		.csiphy = {
> +			.id = 0,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	},
> +	/* CSIPHY1 - clocks/regs/supplies owned by PHY driver */
> +	{
> +		.csiphy = {
> +			.id = 1,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	},
> +	/* CSIPHY2 - clocks/regs/supplies owned by PHY driver */
> +	{
> +		.csiphy = {
> +			.id = 2,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	},
> +	/* CSIPHY3 - clocks/regs/supplies owned by PHY driver */
> +	{
> +		.csiphy = {
> +			.id = 3,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	},
> +};
> +
> +static const struct camss_subdev_resources csid_res_sm8150[] = {
> +	/* CSID0 */
> +	{
> +		.regulators = {},
> +		.clock = { "vfe0_csid", "vfe0_cphy_rx", "vfe0", "vfe0_axi" },
> +		.clock_rate = { { 400000000, 480000000, 600000000 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 } },
> +		.reg = { "csid0" },
> +		.interrupt = { "csid0" },
> +		.csid = {
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID1 */
> +	{
> +		.regulators = {},
> +		.clock = { "vfe1_csid", "vfe1_cphy_rx", "vfe1", "vfe1_axi" },
> +		.clock_rate = { { 400000000, 480000000, 600000000 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 } },
> +		.reg = { "csid1" },
> +		.interrupt = { "csid1" },
> +		.csid = {
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID_LITE0 */
> +	{
> +		.regulators = {},
> +		.clock = { "vfe_lite0_csid", "vfe_lite0_cphy_rx", "vfe_lite0" },
> +		.clock_rate = { { 400000000, 480000000, 600000000 },
> +				{ 0 },
> +				{ 0 }, },
> +		.reg = { "csid_lite0" },
> +		.interrupt = { "csid_lite0" },
> +		.csid = {
> +			.is_lite = true,
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID_LITE1 */
> +	{
> +		.regulators = {},
> +		.clock = { "vfe_lite1_csid", "vfe_lite1_cphy_rx", "vfe_lite1" },
> +		.clock_rate = { { 400000000, 480000000, 600000000 },
> +				{ 0 },
> +				{ 0 }, },
> +		.reg = { "csid_lite1" },
> +		.interrupt = { "csid_lite1" },
> +		.csid = {
> +			.is_lite = true,
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	}
> +};
> +
> +/*
> + * cpas_ahb is left at the CAMCC default 80 MHz; it is not matched by
> + * vfe_match_clock_names(). The VFE/VFE-Lite rates are set from the
> + * remaining clock-rate tables.
> + */
> +static const struct camss_subdev_resources vfe_res_sm8150[] = {
> +	/* VFE0 */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "gcc_axi_sf", "cpas_ahb", "camnoc_axi",
> +			   "vfe0", "vfe0_axi" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
> +				{ 400000000, 558000000, 637000000, 847000000, 950000000 },
> +				{ 0 }, },
> +		.reg = { "vfe0" },
> +		.interrupt = { "vfe0" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = false,
> +			.has_pd = true,
> +			.pd_name = "ife0",
> +			.hw_ops = &vfe_ops_170,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE1 */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "gcc_axi_sf", "cpas_ahb", "camnoc_axi",
> +			   "vfe1", "vfe1_axi" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
> +				{ 400000000, 558000000, 637000000, 847000000, 950000000 },
> +				{ 0 }, },
> +		.reg = { "vfe1" },
> +		.interrupt = { "vfe1" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = false,
> +			.has_pd = true,
> +			.pd_name = "ife1",
> +			.hw_ops = &vfe_ops_170,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE_LITE_0 */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "gcc_axi_sf", "cpas_ahb", "camnoc_axi", "vfe_lite0" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
> +				{ 320000000, 400000000, 480000000, 600000000 }, },
> +		.reg = { "vfe_lite0" },
> +		.interrupt = { "vfe_lite0" },
> +		.vfe = {
> +			.is_lite = true,
> +			.line_num = 4,
> +			.hw_ops = &vfe_ops_170,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE_LITE_1 */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "gcc_axi_sf", "cpas_ahb", "camnoc_axi", "vfe_lite1" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
> +				{ 320000000, 400000000, 480000000, 600000000 }, },
> +		.reg = { "vfe_lite1" },
> +		.interrupt = { "vfe_lite1" },
> +		.vfe = {
> +			.is_lite = true,
> +			.line_num = 4,
> +			.hw_ops = &vfe_ops_170,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	}
> +};
> +
> +static const struct resources_icc icc_res_sm8150[] = {
> +	{
> +		.name = "cam_ahb",
> +		.icc_bw_tbl.avg = 38400,
> +		.icc_bw_tbl.peak = 76800,
> +	},
> +	{
> +		.name = "cam_hf_0_mnoc",
> +		.icc_bw_tbl.avg = 2097152,
> +		.icc_bw_tbl.peak = 2097152,
> +	},
> +	{
> +		.name = "cam_hf_1_mnoc",
> +		.icc_bw_tbl.avg = 2097152,
> +		.icc_bw_tbl.peak = 2097152,
> +	},
> +	{
> +		.name = "cam_sf_0_mnoc",
> +		.icc_bw_tbl.avg = 2097152,
> +		.icc_bw_tbl.peak = 2097152,
> +	},
> +};
> +
>   static const struct camss_subdev_resources csiphy_res_8250[] = {
>   	/* CSIPHY0 */
>   	{
> @@ -5725,6 +5942,19 @@ static const struct camss_resources sm6350_resources = {
>   	.vfe_num = ARRAY_SIZE(vfe_res_sm6350),
>   };
>   
> +static const struct camss_resources sm8150_resources = {
> +	.version = CAMSS_8150,
> +	.pd_name = "top",
> +	.csiphy_res = csiphy_res_sm8150,
> +	.csid_res = csid_res_sm8150,
> +	.vfe_res = vfe_res_sm8150,
> +	.icc_res = icc_res_sm8150,
> +	.icc_path_num = ARRAY_SIZE(icc_res_sm8150),
> +	.csiphy_num = ARRAY_SIZE(csiphy_res_sm8150),
> +	.csid_num = ARRAY_SIZE(csid_res_sm8150),
> +	.vfe_num = ARRAY_SIZE(vfe_res_sm8150),
> +};
> +
>   static const struct camss_resources sm8250_resources = {
>   	.version = CAMSS_8250,
>   	.pd_name = "top",
> @@ -5824,6 +6054,7 @@ static const struct of_device_id camss_dt_match[] = {
>   	{ .compatible = "qcom,sdm845-camss", .data = &sdm845_resources },
>   	{ .compatible = "qcom,sm6150-camss", .data = &sm6150_resources },
>   	{ .compatible = "qcom,sm6350-camss", .data = &sm6350_resources },
> +	{ .compatible = "qcom,sm8150-camss", .data = &sm8150_resources },
>   	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
>   	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
>   	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 7dc2fd9f03e0..74d8cc2921be 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -89,6 +89,7 @@ enum camss_version {
>   	CAMSS_8x39,
>   	CAMSS_8x53,
>   	CAMSS_8x96,
> +	CAMSS_8150,
>   	CAMSS_8250,
>   	CAMSS_8280XP,
>   	CAMSS_8300,
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
