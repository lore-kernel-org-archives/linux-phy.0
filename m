Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08374C77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 04:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZqXaxYU/v8m9Rf3u2X0s4DjbekAAqMAjp1guXPbSAg=; b=RRmee+3j8+5Egv
	mz/fvbgJ7EFfilaClVRb99dTxZujaR0YOm9ixEF0yKzbco/9NXyhrEqdc+Re2mLEZjSfE99f+HDLk
	/eIbZb2v5rnMbPYXNlYQknsRc4owvJsG6L0A1K+5as9Zfzh9mp2W2DSkhZ9/rXR56GG429FeMNNH3
	sDMAdm5FTJH0vc4zGmfGN6E19nNAqk2oSUgP3fd+t9zQEBA8gANzCwfFcMWVpYsmxbGlWufmiG7vv
	me9El6oVhAmqjLAyRQJM2hV5XVGHDGKoXwBIK+y1CIie0dW3CWgdUnTH7nFBOEg4St19Bc/Il2CSu
	zwAwb9lMZfWhezZWaWSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pthqR-0007Pd-23;
	Tue, 02 May 2023 04:42:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pthqP-0007OJ-1U
	for linux-phy@bombadil.infradead.org;
	Tue, 02 May 2023 04:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=w351tNiE3dJPJnhm67jSNg4416e7gcI4wPfoPQnGIBM=; b=Rwh2wJOJcO/zuagjYawb6KrO8u
	CEha0/eS28Pb3OV6iZthb00pfyVV3tHgWl7AZLolWlg9eBWpYT8/XGKVg5cghrLZKFTJsRK7jcCj7
	5RBCPyXckh3Sj0hSfNlnqE1G6FPF1Ylsdm/Mn6DjWIKyppYD0Hu+PU0SWFBaQFcDI0Stkr3bw4bYl
	em+MrE7RSsNvilZCSOLfMh39HlOnGGib0bVh02fv4/s67xvTKMY8T9sG4oz/pjaEItGu9mVSD++Sb
	E4SE6j1NoUY1UAP/F9Zn9IwN9EGJUnLLJ6dwISyGA5KEXD66sUZEHP3xMmC2THb0g8i3gJypg7Ls4
	2xuA5Jxw==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptdeD-00F3ol-13
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 00:13:40 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f00d3f98deso25236703e87.0
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 17:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682986411; x=1685578411;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w351tNiE3dJPJnhm67jSNg4416e7gcI4wPfoPQnGIBM=;
        b=FjED+5/q1krQaL7ap7zMAcG8eqL9N6Hm8bI5422Usjc3mbN0wB7ZzuN6eZKWrVXcMg
         tCuYVmWp3A5sXntB9Po6xBMfU1MikKvzrSsD0x7s5lA353H20wxEfmVnW+RZfhHB8iQI
         YkwQa0e420mARgm+03XQ3XXl/GLdydLXboNzLpIYtO6NN0KwmcQ8KYqYeewUZqwHgkj9
         1jHoQoIpWJLj6pOmJW/BkY9RvLoftiLo0P3TpVi5qTcdcqO1y4tK4nvwfTGHiHcv8pQl
         RVmHYez/ClyovQejhqtJFSaZTVbBorfEGrQdM7H0G1gJLJdKPcIt8LUxEMIN3Eb4GVwg
         ANyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682986411; x=1685578411;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w351tNiE3dJPJnhm67jSNg4416e7gcI4wPfoPQnGIBM=;
        b=Dq/mW3mDwf2qfNPDPgCgv96KGW0ejKIRDSIrF3HyFZJCPj0LDo13X5juq2oZn9grXL
         ezCcu9hD5eFlBSuOm/fFv4GKLiPV/ryRLAQIewwwh614/HhaRrGcCPpBpiBePZlmE05U
         YKw0YW3eZX8TCFBj1bzQZkuEQ+XjFZTodiyI7iH+EMVPJ01JZrm3XJ8sS4PHSjWexvjJ
         3ThuWAnZCHDuPQqk27K+ivPNxKCwUdZ+bO4vR+sPbMttVhynHexTtyD6E70w008gk5hA
         yPC5fsUCFdcOSm0PzjrEFhUXJTbm89HOvEBoK0IURilyDT+qipZtkX32ifnBIVLi/QJj
         jOqQ==
X-Gm-Message-State: AC+VfDy6jlvp7qpBmHp6H5LyaRupPzVNr0qVy5QvqVH6aIwcsb71VY5Z
	Et7VRN925/9A2irDPFUzIzVB/w==
X-Google-Smtp-Source: ACHHUZ4m2pOcnJ2XXpuOc9NrKE39dIhUO4j7GBeW/YIjThz8c7Mgq9JeOlJXny6WARYtgSZnLonlDw==
X-Received: by 2002:a05:6512:31d4:b0:4ed:b86b:9cc9 with SMTP id j20-20020a05651231d400b004edb86b9cc9mr4849394lfe.28.1682986411299;
        Mon, 01 May 2023 17:13:31 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id w15-20020ac2442f000000b004f09126b291sm1119870lfl.213.2023.05.01.17.13.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 17:13:30 -0700 (PDT)
Message-ID: <1be5930d-a389-7fa0-2886-4e9af09cbf85@linaro.org>
Date: Tue, 2 May 2023 03:13:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v9 2/4] phy: qcom-qmp-usb: add support for updated qcm2290
 / sm6115 binding
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
 <20230501192432.1220727-3-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230501192432.1220727-3-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_011338_481711_99735CF0 
X-CRM114-Status: GOOD (  19.87  )
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

On 01/05/2023 22:24, Bhupesh Sharma wrote:
> Add support for the new qcm2290 / sm6115 binding.
> 
> The USB QMP phy on these devices supports 2 lanes. Also note that the
> binding now does not describe every register subregion and instead
> the driver holds the corresponding offsets. This also includes
> the PCS_MISC region.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index a49711c5a63d..aa143c081805 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -1414,6 +1414,10 @@ struct qmp_usb_offsets {
>   	u16 pcs_usb;
>   	u16 tx;
>   	u16 rx;
> +	/* for PHYs with >= 2 lanes */
> +	u16 tx2;
> +	u16 rx2;
> +	u16 pcs_misc;
>   };
>   
>   /* struct qmp_phy_cfg - per-PHY initialization config */
> @@ -1558,6 +1562,16 @@ static const char * const qmp_phy_vreg_l[] = {
>   	"vdda-phy", "vdda-pll",
>   };
>   
> +static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
> +	.serdes		= 0,
> +	.pcs		= 0xc00,
> +	.tx		= 0x200,
> +	.rx		= 0x400,
> +	.tx2		= 0x600,
> +	.rx2		= 0x800,
> +	.pcs_misc	= 0xa00,
> +};
> +
>   static const struct qmp_usb_offsets qmp_usb_offsets_v5 = {
>   	.serdes		= 0,
>   	.pcs		= 0x0200,
> @@ -1922,6 +1936,8 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
>   static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
>   	.lanes			= 2,
>   
> +	.offsets		= &qmp_usb_offsets_v3,
> +
>   	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
>   	.tx_tbl			= qcm2290_usb3_tx_tbl,
> @@ -2497,6 +2513,12 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
>   	qmp->tx = base + offs->tx;
>   	qmp->rx = base + offs->rx;
>   
> +	if (cfg->lanes >= 2) {
> +		qmp->tx2 = base + offs->tx2;
> +		qmp->rx2 = base + offs->rx2;
> +		qmp->pcs_misc = base + offs->pcs_misc;

pcs_misc should also be usable for a single-lane PHYs.

> +	}
> +
>   	qmp->pipe_clk = devm_clk_get(dev, "pipe");
>   	if (IS_ERR(qmp->pipe_clk)) {
>   		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
