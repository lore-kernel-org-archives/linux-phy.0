Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BE5FCA100A
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 20:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPs5VXaW5XrJA8hYREi4G3sG7i95vjTl4OGj9/F9Zt0=; b=3JOEvgFg/jO+Ai
	58+Kx0ZR/+FCO3np30LiP93D+r9QvvMzWBsMlM/rzt+VdgI8CvF09Nbva+8rR7ZqREkVLUs/hJPNz
	+g63X2ymqc6MBSmlmCaXNBJnIbZ3zu90+ZwDFJDaJwp1VVuE94wN8dy1OaJt1SSRiPuSQsIGJFi9L
	mNimkuagDmbGdCQZXznXhYaRappsc6+08k0A7BjahGzZ9yM6CxNVSkodXS/l+LJtb339dM3EjNu4y
	jZdzbTmuc4RAqsLCPzCedPbILJ55adfc+hQKbUNvxf8cn53owSAOp3gKyaoyffcpGSpIMiY16Azee
	KQVsBuw/uiU5AMRkbivg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdcHX-006e9y-28;
	Tue, 05 Sep 2023 20:04:15 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdcHU-006e81-1I
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 20:04:14 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-52e828ad46bso1057001a12.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Sep 2023 13:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693944247; x=1694549047; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QBRdKdZ5WjyqUvk4N5iiue5qAMVDhesOYviouHViHm8=;
        b=d1BuwLDjKNw/E+8G1gHwotDG1f6ZE93djJLUCknZOd2qydgh0QTlyxJJAnTfoalxyE
         ZWLg0pedmfqTAq6LsynIIiJjJoYk0hOuuGC8v188xjlfzfzgun62nuc+hUxw6BarFa2e
         c8AieNbslNTGMpz+WjXQrmIPxpiXEXo09B2OAiWVz7OwjAVt3SGJpEzKJFSYJlTUpfiy
         fQoJFefHhvbpnb+6bXEYxmW8P31jCBgEpmzzv8FJ9co7iIBRHWvXX8GJOWGThiYRyqMb
         InzAobZGzh+zAO7impKH2Jtyqnp5FGvkX93GQm0m3OXyiK9ovihCYXoNo5KooPtYikRI
         rxTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693944247; x=1694549047;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QBRdKdZ5WjyqUvk4N5iiue5qAMVDhesOYviouHViHm8=;
        b=Z8vCQSy2rc+pFc8P4f1KWcfk+t2tux015BZpyJrLbPaxHeGJtbPCjw8AukzZFOye61
         9v54BLuDlCDR+7P3rFmt1FUk81bf4mtut2jRF0sawOC72NgZzQUIUk93FatC7LX7Ul/t
         lGxnviq8NQx15BCVY6v0MjnLpnHzx65ZY5wScHurnpqf76w9KXn5MhKO+ra/GDQkJWoq
         5Y67d/nt4fXhHf5Rgv6cWY6qJZdHw6gRGfAqxxhSEU0vV6tsxZ21RDllm1lVVLXUUQZ4
         ZKEtQ2hMI2nsjGBVoOOpNj6C6FHOGLcicEKIIOtGG2SOPGylItB/lsHxOiPTOEPFNbto
         UKMQ==
X-Gm-Message-State: AOJu0Yxt6MRhoZWbvQ1l/VLdu1rebeVyyY1XiOCEsqTNpRmBfXbCfdXZ
	5Og5OTcom2Ad1a0jNdSwQBJDWXkpf/kq6HGVQqg=
X-Google-Smtp-Source: AGHT+IGhdAXPegcUWCc02b5OC+h0Y/iNRrXwmMGd44XlfKvdJU2O+zod90kkDBW2NHAgsqakJsk5ow==
X-Received: by 2002:aa7:dcd2:0:b0:52c:164:efe5 with SMTP id w18-20020aa7dcd2000000b0052c0164efe5mr566620edu.39.1693944246854;
        Tue, 05 Sep 2023 13:04:06 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w26-20020a50fa9a000000b0052a401d8ef6sm7562829edr.71.2023.09.05.13.04.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 13:04:06 -0700 (PDT)
Message-ID: <24cff590-c71f-4a30-9b80-fa9a0bd27957@linaro.org>
Date: Tue, 5 Sep 2023 23:04:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add Phy Configuration support
 for SC7280
Content-Language: en-GB
To: Nitin Rawat <quic_nitirawa@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Manish Pandey <quic_mapa@quicinc.com>
References: <20230823091757.31311-1-quic_nitirawa@quicinc.com>
 <20230823091757.31311-3-quic_nitirawa@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230823091757.31311-3-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_130412_471471_5F6FAC97 
X-CRM114-Status: GOOD (  14.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 23/08/2023 12:17, Nitin Rawat wrote:
> Add SC7280 specific register layout and table configs.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 142 ++++++++++++++++++++++++
>   1 file changed, 142 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 3927eba8e468..514fa14df634 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c

[skipped tables programming]

4),
> @@ -888,6 +993,40 @@ static const struct qmp_phy_cfg sa8775p_ufsphy_cfg = {
>   	.regs			= ufsphy_v5_regs_layout,
>   };
> 
> +static const struct qmp_phy_cfg sc7280_ufsphy_cfg = {
> +	.lanes                  = 2,
> +
> +	.offsets                = &qmp_ufs_offsets,
> +
> +	.tbls = {
> +		.serdes         = sm8150_ufsphy_serdes,
> +		.serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
> +		.tx             = sc7280_ufsphy_tx,
> +		.tx_num         = ARRAY_SIZE(sc7280_ufsphy_tx),
> +		.rx             = sc7280_ufsphy_rx,
> +		.rx_num         = ARRAY_SIZE(sc7280_ufsphy_rx),
> +		.pcs            = sc7280_ufsphy_pcs,
> +		.pcs_num        = ARRAY_SIZE(sc7280_ufsphy_pcs),
> +	},
> +	.tbls_hs_b = {
> +		.serdes         = sm8150_ufsphy_hs_b_serdes,
> +		.serdes_num     = ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
> +	},
> +	.tbls_hs_g4 = {
> +		.tx             = sm8250_ufsphy_hs_g4_tx,
> +		.tx_num         = ARRAY_SIZE(sm8250_ufsphy_hs_g4_tx),
> +		.rx             = sc7280_ufsphy_hs_g4_rx,
> +		.rx_num         = ARRAY_SIZE(sc7280_ufsphy_hs_g4_rx),
> +		.pcs            = sm8150_ufsphy_hs_g4_pcs,
> +		.pcs_num        = ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
> +	},
> +	.clk_list               = sm8450_ufs_phy_clk_l,
> +	.num_clks               = ARRAY_SIZE(sm8450_ufs_phy_clk_l),

This doesn't correspond to the bindings. This array has 3 enries, while 
in the bindings you have opted for two clocks for this PHY.

> +	.vreg_list              = qmp_phy_vreg_l,
> +	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs                   = ufsphy_v4_regs_layout,
> +};
> +
>   static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
>   	.lanes			= 2,
> 
> @@ -1648,6 +1787,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>   	}, {
>   		.compatible = "qcom,sa8775p-qmp-ufs-phy",
>   		.data = &sa8775p_ufsphy_cfg,
> +	}, {
> +		.compatible = "qcom,sc7280-qmp-ufs-phy",
> +		.data = &sc7280_ufsphy_cfg,
>   	}, {
>   		.compatible = "qcom,sc8180x-qmp-ufs-phy",
>   		.data = &sm8150_ufsphy_cfg,
> --
> 2.17.1
> 

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
