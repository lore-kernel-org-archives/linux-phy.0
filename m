Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A651606A31F
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Q08wtYRf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=G9nhJwdo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=c9mkaRC1QIdtHuQHdCiF2qCU5RVdRzBn2j1XEx6hez0=; b=Q08wtYRfxq9n2lby/EKDHe32Co
	GhpS7qCeImM40iEXcK9kZEaTCxCLH49Tu/naBuUSShacDaRDjpiRUMctPO+O10RxpSq9CSbnXj2F6
	R8Tuip19WkBGEQ0K9P76a2PphrSOAtFl1qirPdZtWp9WZJN3gR92K4CsHgAah+3t4HpANsKflFGx+
	dPQRuGhuf5Tgg1yhFBfKK43Vjh/yBpTMVcZB8b9snn1F/TKy6Dj+rwT17Bppfjbtu0lQRGiRJl7eB
	a8Bu7u1OsHDxhMzFO+2KILkqMBPrrLW4I+zUTK/bBCAgU7DpQL+mxwdCnY7RqDhDUjOB5hKs1g/v7
	+fx34GCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7PT-0000000DGMd-334J;
	Sat, 31 Oct 2026 11:38:07 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7PR-0000000DGMH-3Fq1
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 11:38:07 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5be41a7aba4so193076e87.0
        for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 04:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793446683; x=1794051483; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=EZkeforLWGSL9gFs2Hk2oOjAINQkGwJqyAvL5Xg56hM=;
        b=G9nhJwdond059IRNitT6fi+YqDbbxV8KKJrSFwOgYW4R7501gyem7DRcWOefppO5j0
         Bad+KE8XYkHNp+t/Pql1Adnj/IrnjorxzjHgtn6brHgFRA5j+JeZWJ8fGc+hDdjGluSb
         8kqjg4b7x5kNrcIthtIRitFjI+gSKS2WwIeFHwlyt6HPKhl8ZD/dLsUS6cmHVp3dqb15
         XuSI/Z7IwU2cHBteg0PGW646O1i6URVu7snVqtJACMX3zrWq/t10YGCXTlmbjwTgK8Iz
         d2Dj9Qr9Zea1AMvJLMvlix2cmaBZWS5mdyxBZTs6YqpQQPNcLmdyy+D42PWunOyZxC0z
         TLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793446683; x=1794051483;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EZkeforLWGSL9gFs2Hk2oOjAINQkGwJqyAvL5Xg56hM=;
        b=rJG2N8F3sOE1s0QkJWRJ4FRzNpbTqXtAImo71LWLrfE+rRC6gS/KRq3eGXKy3uf+lG
         eEPZd+QbThmlsDwPKW46ev9ePU2BgmRNEg83MwYt71C5Y7il2ROif7GUBKDM7NVPgiDm
         yftcvYBXonK3A0fijyGQYcEdsGtupB15BN+em36TvQeYNAQKi0+K26tfU7eCmTtXSUHV
         F3wFo5iePza568WgLW5A30SWbXJxtCqjjXcMNwSKmpjZFRBVq23w5sp8pjfFo4qoB4pV
         4wQUFJemICB7KMVCRkF03qTm88HWtXRu5pJN8Vpf8NXj0fGVZ/2S+S1yhab0VxBpimdn
         AWlQ==
X-Gm-Message-State: AFq9FYJecwjO2H4USRcCicRE7kgUzcY+LdGg+j8HTpnksspuWZf0Rln2
	o/ScICk8Af7agTFeipmWz8/+NODYulNntPDBGIXjjxWs7s09JkAplibsVUJuntTvu24=
X-Gm-Gg: AYBFou0jKycomDXd8ETbFPNW8/hhzqZ6GIsC01pepAVctTZKTvAQVfahW7ZyMiRZVNB
	d73oQhIvUzglbkkd/iRSOX8ZGSxgRxhAR/pU5mcW05iPnd+7xv51ivyjZbAlq73xBn2M3axIq9s
	2rJks6H60/MrQLxQsg+cy2DIbLnn3TBqwv0TX7ism4VFHbVOOM/c6yqM4v4/pI4BDGL24VmKg7l
	CjIwW6KohfefX8uUwrUbzrGLtQK0Tr4btdCYjXbXffr0sK3u8EDqG6czoLakfEfGmN3dpBTIn+7
	vmgmi6D5XutXxopx9Q1dWMionk05/8esjEFh4DbdPV/Mhme27wGPdSdqd650U9tTooJ3v17Dz9D
	kWkDc7qgih55nU+pumc/zBNOkd9TiPxAeqg/4i463h5Iw6vet2RQvgnYnDL45TKeLyPzWE/mQ+Q
	A6NjgsF12ERCFfcOnkR9IF0zxWp0RLyCDTSKc+NIfEhiihtMGgI0CX5hDLtQpS1VKusMBe+drCu
	AyHVgXeDJNaBoSlk3VUvZ0ZQnPZjtWt/0bkY4bCKqv1TWlIveMEqyIbkyV+zHq08H6UhoR1bMGH
	Y+oviYzZ2bpqKHI8vW2cXYXz7uvyQlvTxnyLGvfsiXOss5HzwevavU+UX2e5OfeUbexuUmsNV8f
	BQu3T37s1k5faZiUCA2GcCEfdw8qR
X-Received: by 2002:a05:6512:124c:b0:5be:45f2:ec50 with SMTP id 2adb3069b0e04-5bfd9554a92mr2343622e87.4.1793446683229;
        Sat, 31 Oct 2026 04:38:03 -0700 (PDT)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bfe1b1ddb3sm416459e87.27.2026.10.31.04.38.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2026 04:38:02 -0700 (PDT)
Message-ID: <7c7cd421-81de-4c5f-9e37-0bb3b7bc5974@linaro.org>
Date: Sat, 31 Oct 2026 13:38:01 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 11/15] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-11-95f250b18612@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20261028-kaanapali-camss-v23-11-95f250b18612@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_043805_885344_D17F5BAB 
X-CRM114-Status: GOOD (  27.58  )
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

On 10/28/26 17:20, Hangxiang Ma wrote:
> Add support for the TPG found on Kaanapali. This TPG uses hardware
> version 2.4.0, which drives test-enable and reset through the
> TPG_CTRL_CMD register at offset 0x1f4 instead of the TEST_EN bit in
> TPG_CTRL and the TPG_CLEAR register. Its output is routed into the
> CSID 1080 RX through the CSI2 TPG mux, so the CSID selects the TPG as
> the data source when a test pattern is selected.
> 
> Add the TPG resources to the Kaanapali camss resources so that the TPG
> subdevices are created on this SoC.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   .../media/platform/qcom/camss/camss-csid-1080.c    | 15 ++++++++++++--
>   drivers/media/platform/qcom/camss/camss-tpg-gen1.c | 23 ++++++++++++++++------
>   drivers/media/platform/qcom/camss/camss.c          |  2 ++
>   3 files changed, 32 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csid-1080.c b/drivers/media/platform/qcom/camss/camss-csid-1080.c
> index 3d90d31201fa..ec56ba85a0fa 100644
> --- a/drivers/media/platform/qcom/camss/camss-csid-1080.c
> +++ b/drivers/media/platform/qcom/camss/camss-csid-1080.c
> @@ -64,6 +64,8 @@
>   #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
>   #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
>   #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
> +#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
> +#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
>   #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
>   #define CSID_CSI2_RX_CFG1			0x884
>   #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
> @@ -148,6 +150,7 @@ static void __csid_reg_update_clear(struct csid_device *csid, int port_id)
>   static void __csid_configure_rx(struct csid_device *csid,
>   				struct csid_phy_config *phy)
>   {
> +	struct camss *camss = csid->camss;
>   	u8 lane_cnt = phy->lane_cnt;
>   	int val;
>   
> @@ -156,8 +159,16 @@ static void __csid_configure_rx(struct csid_device *csid,
>   
>   	val = (lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
>   	val |= phy->lane_assign << CSI2_RX_CFG0_DL0_INPUT_SEL;
> -	val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
> -	       << CSI2_RX_CFG0_PHY_NUM_SEL;
> +
> +	if (camss->tpg && csid->tpg_linked &&
> +	    camss->tpg[phy->csiphy_id].testgen.mode != TPG_PAYLOAD_MODE_DISABLED) {
> +		val |= FIELD_PREP(CSI2_RX_CFG0_TPG_MUX_SEL, phy->csiphy_id + 1);
> +		val |= CSI2_RX_CFG0_TPG_MUX_EN;
> +	} else {
> +		val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
> +			<< CSI2_RX_CFG0_PHY_NUM_SEL;
> +	}
> +
>   	writel(val, csid->base + CSID_CSI2_RX_CFG0);
>   
>   	val = CSI2_RX_CFG1_ECC_CORRECTION_EN;
> diff --git a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
> index d29de5f93c18..cabbb2638cf3 100644
> --- a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
> +++ b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
> @@ -22,6 +22,7 @@
>   
>   #define TPG_HW_VER_2_0_0                TPG_HW_VER(2, 0, 0)
>   #define TPG_HW_VER_2_1_0                TPG_HW_VER(2, 1, 0)
> +#define TPG_HW_VER_2_4_0                TPG_HW_VER(2, 4, 0)
>   
>   #define TPG_HW_STATUS		0x4
>   
> @@ -33,7 +34,9 @@
>   # define TPG_CTRL_OVERLAP_SHDR_EN	BIT(10)
>   # define TPG_CTRL_NUM_ACTIVE_VC		GENMASK(31, 30)
>   
> -#define TPG_CLEAR		0x1F4
> +#define TPG_CTRL_CMD		0x1F4
> +# define TPG_CTRL_CMD_TEST_EN		BIT(4)
> +# define TPG_CTRL_CMD_HW_RESET		BIT(0)
>   
>   /* TPG VC-based registers */
>   #define TPG_VC_n_GAIN_CFG(n)		(0x60 + (n) * 0x60)
> @@ -164,18 +167,26 @@ static int tpg_stream_on(struct tpg_device *tpg)
>   	}
>   
>   	/* Global TPG control */
> -	val = FIELD_PREP(TPG_CTRL_TEST_EN, 1) |
> -	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
> +	val = FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
>   	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_VC, last_vc);
> -	writel(val, tpg->base + TPG_CTRL);
> +
> +	if (tpg->hw_version < TPG_HW_VER_2_4_0) {
> +		val |= FIELD_PREP(TPG_CTRL_TEST_EN, 1);
> +		writel(val, tpg->base + TPG_CTRL);
> +	} else {
> +		writel(val, tpg->base + TPG_CTRL);
> +		writel(TPG_CTRL_CMD_TEST_EN, tpg->base + TPG_CTRL_CMD);
> +	}
>   
>   	return 0;
>   }
>   
>   static int tpg_reset(struct tpg_device *tpg)
>   {
> -	writel(0, tpg->base + TPG_CTRL);
> -	writel(1, tpg->base + TPG_CLEAR);
> +	if (tpg->hw_version < TPG_HW_VER_2_4_0)
> +		writel(0, tpg->base + TPG_CTRL);
> +
> +	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
>   
>   	return 0;
>   }

It is necessary to split this change into two for the next run:

1) the generic TPG subdevice change to support a new hardware interface, equal to

   https://lore.kernel.org/linux-arm-msm/20261031112203.545319-4-vladimir.zapolskiy@linaro.org/

this new interface is for a range of hardware including SM8650 and SM8750,

2) the rest of Kaanapali specific changes from below this comment.

> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 6ff82dd2aeaf..df4b4cf30711 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -5850,11 +5850,13 @@ static const struct camss_resources kaanapali_resources = {
>   	.pd_name = "top",
>   	.pm_clks = { "cpas_fast_ahb", "cpas_ahb", "gcc_axi_hf" },
>   	.csiphy_res = csiphy_res_kaanapali,
> +	.tpg_res = tpg_res_x1e80100,

It is closer to 'tpg_res_8775p', at least the proper name for I/O regions
is expected to be "tpgX" rather than "csitpgX".

>   	.csid_res = csid_res_kaanapali,
>   	.vfe_res = vfe_res_kaanapali,
>   	.icc_res = icc_res_kaanapali,
>   	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
>   	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
> +	.tpg_num = ARRAY_SIZE(tpg_res_x1e80100),
>   	.csid_num = ARRAY_SIZE(csid_res_kaanapali),
>   	.vfe_num = ARRAY_SIZE(vfe_res_kaanapali),
>   };
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
