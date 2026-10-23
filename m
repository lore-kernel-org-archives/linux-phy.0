Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35A1606A31A
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 11:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Cv1dzwvR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=J0QLUiHe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6DP6p3FSkpLlznbtnP9YUDxl5lTPvDre+RFrBCSejdk=; b=Cv1dzwvR3NlaJ+Br7y8DvLLW6I
	AwMJL5a8pgcQ+7K79zTeGaYOhBf2LQ6PVamXwBfMEjKnh9b/P2OYBgSgxqXPRF/V0tgoNcfW3VkLV
	onhQrxiSIeHFGrC+L6h5etDJ/juXXro78QuOByzt72qevnHbN8XxGbAZjPRl1pEE7nY2zpTrslX7K
	+FooZTqG0aoBIHEjs8GNR8YYmK0m4kCvmgWdaTZVLaLrs1zuSl8CM2WuDOQf5I0aaMdSuyyYsBDs2
	WjFyHp9Cqi6e1zjkl18MLEfkJRZxP0EQQbx6mGSFD/Ety/AGYUN0CzOZSFC1Ast4IbIj+Huv33Nh8
	Bsg4wlSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKD0X-0000000GCFm-1xYg;
	Fri, 23 Oct 2026 11:00:21 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKD0V-0000000GCEI-0bN4
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 11:00:20 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-48b001cd92bso408192f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 04:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792753217; x=1793358017; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=LgbHP2/wZQQeAuI2ckd+y0je6E0Y9oRBRs5b0FswOtM=;
        b=J0QLUiHewUZFZ3r3pTCYZ4IkVs8F7xUXmww16gvPUV7hFa2RWuueNWCmgYMwAf6w64
         PJBSA+M5/EvHZ5j17AeLDwPtHlrloElG7Phrej3uOLkG49xB3QANaFjzlENXxzr0szZI
         dfwiDEjTg8pJghisAtRMPrH7F5ik2S0NqnchnQebrDZne1b8c9PBVnTyFPVGP0kmcdJa
         cTs+iFDcpj5suPQa2MYOxNP9Cbs/t5oZErtQsq1jQxjBcaCrsnAiQETBtWqp+a+x50lW
         P3FnL2NBwr0OCDgvsIpgYWhIxMOim7sEpHq5HrnNu4aS2r33Pe817CtlgxeUXIU1f9vT
         p8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792753217; x=1793358017;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LgbHP2/wZQQeAuI2ckd+y0je6E0Y9oRBRs5b0FswOtM=;
        b=n8KNiPa7Om1kvnQoQymmvDA3bnv+tHiHGoymj4MGsP8sX3QC3RCaWs0v5s7zMszBUT
         ZnPjxlxcJq2bMpYp+N/MEVJyrE6LhBxRJtDd3bVazOtBze6Mw9W8BfjdPpp5bhH7TmQD
         n64RTyjwfu2GyNFqTIMIVNrhkUpLDzCk9xYMKEspycAOUlvfaDZjKm8zXyAwIdTucwsl
         uxcnmJIcbTs3kC5oFN/tfJ3CxOVF11H37oq4gLLS995c66h7p/pBuZbEd6+mDr2842Vz
         8OTvcjGcKgwFIQXIY3lHjFZqcuL51cINfPwcz9/hHixp9ag3lyfhrqrx9SfPHg3gG8Ry
         IE6Q==
X-Gm-Message-State: AFq9FYInTev+6CrevXmMHD7eB/3qBvVVF2U0V6+W74Pi3M3CjdjVN1h7
	kQ9iDqCJg7xmGj+QaSCau+PHLPyO391NGJvqzgdwxb+s44+KnF7NQ478FLEF0G23ryU=
X-Gm-Gg: AYBFou0jj1eiLue+/a7IX+ek5qtsQGU68MfYbOnQ4nBMfX5qAXjQn2COYPSGENlJuUg
	445+iBpJl4v8Tqy8fbn59QqST03aPGXQeUrbtHLVJWHXrHH4rL6szLNMqbQgPeBVtmCwiSsc2gt
	erKlJsRYo4IEKxdoIQjmaS0UHiQNSoOPO7h3L5v1Kn8jVCTdZxQCYJfY0HLDRlYBxeqrx0Bdnj7
	ijw+sZdPyr5bAVg9cYDH48rEgbtWEMySRKwlSj6Dd24gurLy2lfJezNf9TUlIo+QZN+ZoiHJWs/
	I68Vpop3nKpnkuRH5mrIG2B5WflKbdYniZHhQNcrctGRA6fR6EmZJfSLsU+gp8wXwzDX6ST1FMK
	mW1t5LBA11mbgMQ4UnDwQoeKVRy/CwIE43XkEbRl2oea23MZ/K6Nn8+bWRLq3t0mcg1eiaPYAVV
	+wrx74B6jKnp0FEXcqw/6ew0MGC3M4/EbK5DopYQUuUOkKM6YdRFs32XIhg2UC6ZbWRldBpz2Rw
	qYtktIPG69pHt77SvXCq1ilQi3yhFjuDTxq4ku43PjT873i5KMVekWGBcVhlXFKAYyq
X-Received: by 2002:a05:6000:4555:b0:48d:f69e:9cfd with SMTP id ffacd0b85a97d-48e3859480emr1957539f8f.27.1792753216562;
        Fri, 23 Oct 2026 04:00:16 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.107.26])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e38062dc6sm4178617f8f.55.2026.10.23.04.00.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2026 04:00:15 -0700 (PDT)
Message-ID: <b920a52f-2a81-45ac-b025-f2df8f98aa79@linaro.org>
Date: Fri, 23 Oct 2026 12:00:13 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 08/14] media: qcom: camss: csid: Add support for CSID
 1080
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-8-04fd28d815c6@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261011-kaanapali-camss-v21-8-04fd28d815c6@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_040019_345469_604D2E68 
X-CRM114-Status: GOOD (  28.46  )
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
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 12/10/2026 07:45, Hangxiang Ma wrote:
> Add support for the CSID 1080 hardware found on Kaanapali SoC.
> 
> Introduce CSID 1080 hardware resource descriptions and implement the
> hardware-specific register programming, reset sequence, and BUF_DONE
> interrupt handling.
> 
> CSID 1080 splits RUP and AUP updates into separate registers and uses a
> SET register to commit the updates. Update the CSID interface to support
> both this scheme and the legacy combined reg_update mechanism.
> 
> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
> Co-developed-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
> Signed-off-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/Makefile         |   1 +
>   .../media/platform/qcom/camss/camss-csid-1080.c    | 384 +++++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss-csid.h     |   9 +-
>   drivers/media/platform/qcom/camss/camss.c          |  75 ++++
>   4 files changed, 468 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
> index 27898b3cc7d3..218ba3a95939 100644
> --- a/drivers/media/platform/qcom/camss/Makefile
> +++ b/drivers/media/platform/qcom/camss/Makefile
> @@ -8,6 +8,7 @@ qcom-camss-objs += \
>   		camss-csid-4-7.o \
>   		camss-csid-340.o \
>   		camss-csid-680.o \
> +		camss-csid-1080.o \
>   		camss-csid-gen2.o \
>   		camss-csid-gen3.o \
>   		camss-csiphy.o \
> diff --git a/drivers/media/platform/qcom/camss/camss-csid-1080.c b/drivers/media/platform/qcom/camss/camss-csid-1080.c
> new file mode 100644
> index 000000000000..46e443e05195
> --- /dev/null
> +++ b/drivers/media/platform/qcom/camss/camss-csid-1080.c
> @@ -0,0 +1,384 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * camss-csid-1080.c
> + *
> + * Qualcomm MSM Camera Subsystem - CSID (CSI Decoder) Module
> + *
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +#include <linux/completion.h>
> +#include <linux/delay.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/of.h>
> +
> +#include "camss.h"
> +#include "camss-csid.h"
> +#include "camss-csid-gen3.h"
> +
> +/* Reset and Command Registers */
> +#define CSID_RST_CFG				0x108
> +#define		RST_MODE				BIT(0)
> +#define		RST_LOCATION				BIT(4)
> +
> +/* Reset and Command Registers */
> +#define CSID_RST_CMD				0x10C
> +#define		SELECT_HW_RST				BIT(0)
> +#define		SELECT_IRQ_RST				BIT(2)
> +#define CSID_IRQ_CMD				0x110
> +#define		IRQ_CMD_CLEAR				BIT(0)
> +
> +/* Register Update Commands, RUP/AUP */
> +#define CSID_RUP_CMD				0x114
> +#define CSID_AUP_CMD				0x118
> +#define		CSID_RUP_AUP_RDI(rdi)			(BIT(8) << (rdi))
> +#define CSID_RUP_AUP_CMD			0x11C
> +#define		RUP_SET					BIT(0)
> +#define		MUP					BIT(4)
> +
> +/* Top level interrupt registers */
> +#define CSID_TOP_IRQ_STATUS			0x180
> +#define CSID_TOP_IRQ_MASK			0x184
> +#define CSID_TOP_IRQ_CLEAR			0x188
> +#define		INFO_RST_DONE				BIT(0)
> +#define		CSI2_RX_IRQ_STATUS			BIT(2)
> +#define		BUF_DONE_IRQ_STATUS			BIT(3)
> +
> +/* Buffer done interrupt registers */
> +#define CSID_BUF_DONE_IRQ_STATUS		0x1A0
> +#define		BUF_DONE_IRQ_STATUS_RDI_OFFSET		16
> +#define CSID_BUF_DONE_IRQ_MASK			0x1A4
> +#define CSID_BUF_DONE_IRQ_CLEAR			0x1A8
> +#define CSID_BUF_DONE_IRQ_SET			0x1AC
> +
> +/* CSI2 RX interrupt registers */
> +#define CSID_CSI2_RX_IRQ_STATUS			0x1B0
> +#define CSID_CSI2_RX_IRQ_MASK			0x1B4
> +#define CSID_CSI2_RX_IRQ_CLEAR			0x1B8
> +#define CSID_CSI2_RX_IRQ_SET			0x1BC
> +
> +/* CSI2 RX Configuration */
> +#define CSID_CSI2_RX_CFG0			0x880
> +#define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
> +#define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
> +#define		CSI2_RX_CFG0_PHY_NUM_SEL		20
> +#define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
> +#define CSID_CSI2_RX_CFG1			0x884
> +#define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
> +#define		CSI2_RX_CFG1_VC_MODE			BIT(2)
> +
> +#define MSM_CSID_MAX_SRC_STREAMS_1080		(csid_is_lite(csid) ? 4 : 5)
> +
> +/* RDI Configuration */
> +#define CSID_RDI_CFG0(rdi)	(csid_is_lite(csid) ?\
> +					(0x3080 + 0x200 * (rdi)) :\
> +					(0x5480 + 0x200 * (rdi)))
> +#define		RDI_CFG0_RETIME_BS			BIT(5)
> +#define		RDI_CFG0_TIMESTAMP_EN			BIT(6)
> +#define		RDI_CFG0_TIMESTAMP_STB_SEL		BIT(8)
> +#define		RDI_CFG0_DECODE_FORMAT			12
> +#define		RDI_CFG0_DT				16
> +#define		RDI_CFG0_VC				22
> +#define		RDI_CFG0_EN				BIT(31)
> +
> +/* RDI Control and Configuration */
> +#define CSID_RDI_CTRL(rdi)	(csid_is_lite(csid) ?\
> +					(0x3088 + 0x200 * (rdi)) :\
> +					(0x5488 + 0x200 * (rdi)))
> +#define		RDI_CTRL_START_CMD			BIT(0)
> +
> +#define CSID_RDI_CFG1(rdi)	(csid_is_lite(csid) ?\
> +					(0x3094 + 0x200 * (rdi)) :\
> +					(0x5494 + 0x200 * (rdi)))
> +#define		RDI_CFG1_DROP_H_EN			BIT(5)
> +#define		RDI_CFG1_DROP_V_EN			BIT(6)
> +#define		RDI_CFG1_CROP_H_EN			BIT(7)
> +#define		RDI_CFG1_CROP_V_EN			BIT(8)
> +#define		RDI_CFG1_PACKING_FORMAT_MIPI		BIT(15)
> +
> +/* RDI Pixel Store Configuration */
> +#define CSID_RDI_PIX_STORE_CFG0(rdi)	(0x5498 + 0x200 * (rdi))
> +#define		RDI_PIX_STORE_CFG0_EN			BIT(0)
> +#define		RDI_PIX_STORE_CFG0_MIN_HBI		1
> +
> +/* RDI IRQ Status in wrapper */
> +#define CSID_CSI2_RDIN_IRQ_STATUS(rdi)	(0x224 + (0x10 * (rdi)))
> +#define CSID_CSI2_RDIN_IRQ_MASK(rdi)	(0x228 + (0x10 * (rdi)))
> +#define CSID_CSI2_RDIN_IRQ_CLEAR(rdi)	(0x22C + (0x10 * (rdi)))
> +#define		INFO_RUP_DONE				BIT(23)
> +
> +static void __csid_aup_rup_trigger(struct csid_device *csid)
> +{
> +	/* trigger SET in combined register */
> +	writel(RUP_SET, csid->base + CSID_RUP_AUP_CMD);
> +}
> +
> +static void __csid_aup_rup_clear(struct csid_device *csid, int port_id)
> +{
> +	/* Hardware clears the registers upon consuming the settings */
> +	csid->aup_update &= ~CSID_RUP_AUP_RDI(port_id);
> +	csid->rup_update &= ~CSID_RUP_AUP_RDI(port_id);
> +}
> +
> +static void __csid_aup_update(struct csid_device *csid, int port_id)
> +{
> +	csid->aup_update |= CSID_RUP_AUP_RDI(port_id);
> +	writel(csid->aup_update, csid->base + CSID_AUP_CMD);
> +
> +	__csid_aup_rup_trigger(csid);
> +}
> +
> +static void __csid_reg_update(struct csid_device *csid, int port_id)
> +{
> +	csid->rup_update |= CSID_RUP_AUP_RDI(port_id);
> +	writel(csid->rup_update, csid->base + CSID_RUP_CMD);
> +
> +	__csid_aup_rup_trigger(csid);
> +}
> +
> +static void __csid_configure_rx(struct csid_device *csid,
> +				struct csid_phy_config *phy)
> +{
> +	u8 lane_cnt = phy->lane_cnt;
> +	int val;
> +
> +	if (!lane_cnt)
> +		lane_cnt = 4;
> +
> +	val = (lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
> +	val |= phy->lane_assign << CSI2_RX_CFG0_DL0_INPUT_SEL;
> +	val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
> +	       << CSI2_RX_CFG0_PHY_NUM_SEL;
> +	writel(val, csid->base + CSID_CSI2_RX_CFG0);
> +
> +	val = CSI2_RX_CFG1_ECC_CORRECTION_EN;
> +	writel(val, csid->base + CSID_CSI2_RX_CFG1);
> +}
> +
> +static void __csid_configure_rx_vc(struct csid_device *csid, int vc)
> +{
> +	int val;
> +
> +	if (vc > 3) {
> +		val = readl(csid->base + CSID_CSI2_RX_CFG1);
> +		val |= CSI2_RX_CFG1_VC_MODE;
> +		writel(val, csid->base + CSID_CSI2_RX_CFG1);
> +	}
> +}
> +
> +static void __csid_ctrl_rdi(struct csid_device *csid, int enable, u8 rdi)
> +{
> +	int val = 0;
> +
> +	if (enable)
> +		val = RDI_CTRL_START_CMD;
> +
> +	writel(val, csid->base + CSID_RDI_CTRL(rdi));
> +}
> +
> +static void __csid_configure_rdi_pix_store(struct csid_device *csid, u8 rdi)
> +{
> +	u32 val;
> +
> +	/*
> +	 * Configure pixel store to allow absorption of hblanking or idle time.
> +	 * This helps with horizontal crop and prevents line buffer conflicts.
> +	 * Reset state is 0x8 which has MIN_HBI=4, we keep the default MIN_HBI
> +	 * and just enable the pixel store functionality.
> +	 */
> +	val = (4 << RDI_PIX_STORE_CFG0_MIN_HBI) | RDI_PIX_STORE_CFG0_EN;
> +	writel(val, csid->base + CSID_RDI_PIX_STORE_CFG0(rdi));
> +}
> +
> +static void __csid_configure_rdi_stream(struct csid_device *csid, u8 enable, u8 port, u8 vc)
> +{
> +	u8 lane_cnt = csid->phy.lane_cnt;
> +	u32 val;
> +
> +	/* Source pads matching RDI channels on hardware.
> +	 * E.g. Pad 1 -> RDI0, Pad 2 -> RDI1, etc.
> +	 */
> +	struct v4l2_mbus_framefmt *input_format = &csid->fmt[MSM_CSID_PAD_FIRST_SRC + port];
> +	const struct csid_format_info *format = csid_get_fmt_entry(csid->res->formats->formats,
> +								   csid->res->formats->nformats,
> +								   input_format->code);
> +
> +	if (!lane_cnt)
> +		lane_cnt = 4;
> +
> +	val = RDI_CFG0_TIMESTAMP_EN;
> +	val |= RDI_CFG0_TIMESTAMP_STB_SEL;
> +	val |= RDI_CFG0_RETIME_BS;
> +
> +	/* note: for non-RDI path, this should be format->decode_format */
> +	val |= DECODE_FORMAT_PAYLOAD_ONLY << RDI_CFG0_DECODE_FORMAT;
> +	val |= vc << RDI_CFG0_VC;
> +	val |= format->data_type << RDI_CFG0_DT;
> +	writel(val, csid->base + CSID_RDI_CFG0(port));
> +
> +	val = RDI_CFG1_PACKING_FORMAT_MIPI;
> +	writel(val, csid->base + CSID_RDI_CFG1(port));
> +
> +	/* Configure pixel store using dedicated register in 1080 */
> +	if (!csid_is_lite(csid))
> +		__csid_configure_rdi_pix_store(csid, port);
> +
> +	val = 0;
> +	writel(val, csid->base + CSID_RDI_CTRL(port));
> +
> +	val = readl(csid->base + CSID_RDI_CFG0(port));
> +
> +	if (enable)
> +		val |= RDI_CFG0_EN;
> +
> +	writel(val, csid->base + CSID_RDI_CFG0(port));
> +}
> +
> +static void csid_configure_stream(struct csid_device *csid, u8 enable)
> +{
> +	u8 i, k;
> +
> +	__csid_configure_rx(csid, &csid->phy);
> +
> +	for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_1080; i++) {
> +		if (csid->phy.en_vc & BIT(i)) {
> +			__csid_configure_rdi_stream(csid, enable, i, 0);
> +			__csid_configure_rx_vc(csid, 0);
> +
> +			for (k = 0; k < CAMSS_INIT_BUF_COUNT; k++)
> +				__csid_aup_update(csid, i);
> +
> +			__csid_reg_update(csid, i);
> +
> +			__csid_ctrl_rdi(csid, enable, i);
> +		}
> +	}
> +}
> +
> +static int csid_configure_testgen_pattern(struct csid_device *csid, s32 val)
> +{
> +	return 0;
> +}
> +
> +static void csid_subdev_reg_update(struct csid_device *csid, int port_id,
> +				   bool clear)
> +{
> +	if (clear)
> +		__csid_aup_rup_clear(csid, port_id);
> +	else
> +		__csid_aup_update(csid, port_id);
> +}
> +
> +/**
> + * csid_isr - CSID module interrupt service routine
> + * @irq: Interrupt line
> + * @dev: CSID device
> + *
> + * Return IRQ_HANDLED on success
> + */
> +static irqreturn_t csid_isr(int irq, void *dev)
> +{
> +	struct csid_device *csid = dev;
> +	u32 val, buf_done_val;
> +	u8 reset_done;
> +	int i;
> +
> +	val = readl(csid->base + CSID_TOP_IRQ_STATUS);
> +	writel(val, csid->base + CSID_TOP_IRQ_CLEAR);
> +
> +	reset_done = val & INFO_RST_DONE;
> +
> +	buf_done_val = readl(csid->base + CSID_BUF_DONE_IRQ_STATUS);
> +	writel(buf_done_val, csid->base + CSID_BUF_DONE_IRQ_CLEAR);
> +
> +	for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_1080; i++) {
> +		if (csid->phy.en_vc & BIT(i)) {
> +			val = readl(csid->base + CSID_CSI2_RDIN_IRQ_STATUS(i));
> +			writel(val, csid->base + CSID_CSI2_RDIN_IRQ_CLEAR(i));
> +
> +			if (val & INFO_RUP_DONE)
> +				csid_subdev_reg_update(csid, i, true);
> +
> +			if (buf_done_val & BIT(BUF_DONE_IRQ_STATUS_RDI_OFFSET + i))
> +				camss_buf_done(csid->camss, csid->id, i);
> +		}
> +	}
> +
> +	val = IRQ_CMD_CLEAR;
> +	writel(val, csid->base + CSID_IRQ_CMD);
> +
> +	if (reset_done)
> +		complete(&csid->reset_complete);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +/**
> + * csid_reset - Trigger reset on CSID module and wait to complete
> + * @csid: CSID device
> + *
> + * Return 0 on success or a negative error code otherwise
> + */
> +static int csid_reset(struct csid_device *csid)
> +{
> +	unsigned long time;
> +	u32 val;
> +	int i;
> +
> +	reinit_completion(&csid->reset_complete);
> +
> +	val = INFO_RST_DONE | BUF_DONE_IRQ_STATUS;
> +	writel(val, csid->base + CSID_TOP_IRQ_CLEAR);
> +	writel(val, csid->base + CSID_TOP_IRQ_MASK);
> +
> +	val = 0;
> +	for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_1080; i++) {
> +		if (csid->phy.en_vc & BIT(i)) {
> +			/*
> +			 * Only need to clear buf done IRQ status here,
> +			 * RUP done IRQ status will be cleared once isr
> +			 * strobe generated by CSID_RST_CMD
> +			 */
> +			val |= BIT(BUF_DONE_IRQ_STATUS_RDI_OFFSET + i);
> +		}
> +	}
> +	writel(val, csid->base + CSID_BUF_DONE_IRQ_CLEAR);
> +	writel(val, csid->base + CSID_BUF_DONE_IRQ_MASK);
> +
> +	/* Clear all IRQ status with CLEAR bits set */
> +	val = IRQ_CMD_CLEAR;
> +	writel(val, csid->base + CSID_IRQ_CMD);
> +
> +	val = RST_LOCATION | RST_MODE;
> +	writel(val, csid->base + CSID_RST_CFG);
> +
> +	val = SELECT_HW_RST | SELECT_IRQ_RST;
> +	writel(val, csid->base + CSID_RST_CMD);
> +
> +	time = wait_for_completion_timeout(&csid->reset_complete,
> +					   msecs_to_jiffies(CSID_RESET_TIMEOUT_MS));
> +
> +	if (!time) {
> +		dev_err(csid->camss->dev, "CSID reset timeout\n");
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static void csid_subdev_init(struct csid_device *csid)
> +{
> +	csid->testgen.nmodes = CSID_PAYLOAD_MODE_DISABLED;
> +}
> +
> +const struct csid_hw_ops csid_ops_1080 = {
> +	.configure_stream = csid_configure_stream,
> +	.configure_testgen_pattern = csid_configure_testgen_pattern,
> +	.hw_version = csid_hw_version,
> +	.isr = csid_isr,
> +	.reset = csid_reset,
> +	.src_pad_code = csid_src_pad_code,
> +	.subdev_init = csid_subdev_init,
> +	.reg_update = csid_subdev_reg_update,
> +};
> diff --git a/drivers/media/platform/qcom/camss/camss-csid.h b/drivers/media/platform/qcom/camss/camss-csid.h
> index 5296b10f6bac..3c2d15a61836 100644
> --- a/drivers/media/platform/qcom/camss/camss-csid.h
> +++ b/drivers/media/platform/qcom/camss/camss-csid.h
> @@ -154,7 +154,13 @@ struct csid_device {
>   	void __iomem *base;
>   	u32 irq;
>   	char irq_name[30];
> -	u32 reg_update;
> +	union {
> +		u32 reg_update;
> +		struct {
> +			u32 rup_update;
> +			u32 aup_update;
> +		};
> +	};
>   	struct camss_clock *clock;
>   	int nclocks;
>   	struct regulator_bulk_data *supplies;
> @@ -216,6 +222,7 @@ extern const struct csid_hw_ops csid_ops_4_1;
>   extern const struct csid_hw_ops csid_ops_4_7;
>   extern const struct csid_hw_ops csid_ops_340;
>   extern const struct csid_hw_ops csid_ops_680;
> +extern const struct csid_hw_ops csid_ops_1080;
>   extern const struct csid_hw_ops csid_ops_gen2;
>   extern const struct csid_hw_ops csid_ops_gen3;
>   
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index eeceb79c1e86..261e6c837dd4 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -83,6 +83,79 @@ static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
>   	},
>   };
>   
> +static const struct camss_subdev_resources csid_res_kaanapali[] = {
> +	/* CSID0 */
> +	{
> +		.clock = { "csid", "csid_csiphy_rx" },
> +		.clock_rate = { { 400000000, 480000000 },
> +				{ 400000000, 480000000 } },
> +		.reg = { "csid0" },
> +		.interrupt = { "csid0" },
> +		.csid = {
> +			.is_lite = false,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.hw_ops = &csid_ops_1080,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID1 */
> +	{
> +		.clock = { "csid", "csid_csiphy_rx" },
> +		.clock_rate = { { 400000000, 480000000 },
> +				{ 400000000, 480000000 } },
> +		.reg = { "csid1" },
> +		.interrupt = { "csid1" },
> +		.csid = {
> +			.is_lite = false,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.hw_ops = &csid_ops_1080,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID2 */
> +	{
> +		.clock = { "csid", "csid_csiphy_rx" },
> +		.clock_rate = { { 400000000, 480000000 },
> +				{ 400000000, 480000000 } },
> +		.reg = { "csid2" },
> +		.interrupt = { "csid2" },
> +		.csid = {
> +			.is_lite = false,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.hw_ops = &csid_ops_1080,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID_LITE0 */
> +	{
> +		.clock = { "vfe_lite_csid", "vfe_lite_cphy_rx" },
> +		.clock_rate = { { 400000000, 480000000 },
> +				{ 400000000, 480000000 } },
> +		.reg = { "csid_lite0" },
> +		.interrupt = { "csid_lite0" },
> +		.csid = {
> +			.is_lite = true,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.hw_ops = &csid_ops_1080,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID_LITE1 */
> +	{
> +		.clock = { "vfe_lite_csid", "vfe_lite_cphy_rx" },
> +		.clock_rate = { { 400000000, 480000000 },
> +				{ 400000000, 480000000 } },
> +		.reg = { "csid_lite1" },
> +		.interrupt = { "csid_lite1" },
> +		.csid = {
> +			.is_lite = true,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.hw_ops = &csid_ops_1080,
> +			.formats = &csid_formats_gen2
> +		}
> +	}
> +};
> +
>   static const struct resources_icc icc_res_kaanapali[] = {
>   	{
>   		.name = "ahb",
> @@ -5639,9 +5712,11 @@ static const struct camss_resources kaanapali_resources = {
>   	.version = CAMSS_KAANAPALI,
>   	.pd_name = "top",
>   	.csiphy_res = csiphy_res_kaanapali,
> +	.csid_res = csid_res_kaanapali,
>   	.icc_res = icc_res_kaanapali,
>   	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
>   	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
> +	.csid_num = ARRAY_SIZE(csid_res_kaanapali),
>   };
>   
>   static const struct camss_resources msm8916_resources = {
> 

I'd like to ask for the definition of the SOF enable bits - not 
necessarily enabling the SOF interrupt _yet_ but the bits.

=>

We will shortly start switching on V4L2_EVENT_FRAME_SYNC which will need 
to trigger off of SOF.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
