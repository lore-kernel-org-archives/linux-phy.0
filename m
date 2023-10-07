Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AD88E9413C
	for <linux-phy@archiver.kernel.org>; Sat,  7 Oct 2023 00:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENgIpUdasVUVrZ811NABqfmRCrs69+1VIGAETqiX078=; b=IhbtV7z7aMtEgA
	vOElVHtxRbGEMXazCh41QICJJ7W4mpCWIDeou/ccVeZE9xu7I7eRKikyD537PY0NUAmj5OLSP2npy
	M51idOsbg9xaO9bVD4iCaTX3OBab3ZwrLyxLyllCedSreoWGMvxfpypsEeaZ/zLUEa0+eV2BByu/V
	yREwI11Jk9I5ZXcSeDcnEqjNWyi0QRYHne0tctQzQXpHQK9ftSwYW0mGwJDsiTlQpj1Wo9adRv1jS
	ykPMsB5SvazJrvbSgGKIwSj15T4CFHYPdIiBhULmjGvh1HnMu90399hxkcZsavpxYNjnRvzUMwCfz
	QaH2hhaVeGLnh7wnJsXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qovAF-006hgh-2h;
	Sat, 07 Oct 2023 00:27:27 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qovAD-006hfz-1G
	for linux-phy@lists.infradead.org;
	Sat, 07 Oct 2023 00:27:26 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50481a0eee7so4678054e87.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Oct 2023 17:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696638440; x=1697243240; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oog0K2bgSzTGEjhivaMNxr6iwDGl914nrwoOT/UHnOs=;
        b=WhDKRGNNQYWlG+VeL5Cj4meYjuzjYxZPgb9UVJahdP/of9FZUw9GTFYdDvziJ6N6AZ
         qO7ade1LT3w6NK1qa5pbyGPdUjBMitx1YS/FZ8KdMKLd5K7uZeyOPRnS4AV03aXbaDcn
         MlYYRv8OJ1FVeVe1xCdwvzOjOWct5uh3SOONoCISOofpJB5h5pk2s/WTfUgwx9/ANuNX
         gEUPPdfv2zvKG2GxfuvUOvMWggpKYdgg6GSmbtjhLRbpIZtxMpoFGTVxZHpY32FY6nhS
         STKAFEVsczy3pS1AsYulitRHTdavJib04Ijla58Q7Oqy7egNXT++FawKzEyuu3Z3g9wG
         aYGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696638440; x=1697243240;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Oog0K2bgSzTGEjhivaMNxr6iwDGl914nrwoOT/UHnOs=;
        b=qWGNY6dOm6a48T5PvnJ6mmoKZY7Pvt33pE7RDlrCoO2ef1KsQFfk04mMz02Zey/AQG
         2VW+CGWT0/orHfgVVAJoHHPWx8CmxfgYGvIp+wCrhkelvrrhKIMSd7gOVa1F1jXxdvC7
         +35mnLasJchfOw4mxGGiHp4LwdWh+jUUNEmEQnJWdMixU+E91rkEn+oGO4C99O66K4J3
         ew4dV0oMn2mB6tHS4njH+GOfuh3rZPUH+EUyVybKiFGZrBq9XEHdTsek/GwQKe0I57d/
         JOGDuCpWNNY/+qcTQlpXzzY4HgCDswclw8x8Bl6bWAjFwR5uxnIvCwxXhfSczHdIjHEY
         0gmQ==
X-Gm-Message-State: AOJu0YzfBDQWxv/4YCwwhLDfnilOOufY0GhuGYqH4Hg5RpApB3Bdgfxw
	G5WETqcJot8Zlkjoe6D5oXbz0Q==
X-Google-Smtp-Source: AGHT+IFtzpDnhWYYOkUnZp+FvUJho+CNakCfaZUKceUAufQa5szkxE9roVrKeEOUvHl9rS6D8CzsZQ==
X-Received: by 2002:a05:6512:1588:b0:502:9672:48b8 with SMTP id bp8-20020a056512158800b00502967248b8mr4572653lfb.5.1696638440485;
        Fri, 06 Oct 2023 17:27:20 -0700 (PDT)
Received: from [192.168.200.173] (178235177147.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.147])
        by smtp.gmail.com with ESMTPSA id d2-20020ac24c82000000b005008b8dd56csm488778lfl.44.2023.10.06.17.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Oct 2023 17:27:20 -0700 (PDT)
Message-ID: <54ed2500-1d06-4f36-b2c5-418b878e9de4@linaro.org>
Date: Sat, 7 Oct 2023 02:27:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
Content-Language: en-US
To: Nitheesh Sekar <quic_nsekar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
 bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, mani@kernel.org,
 p.zabel@pengutronix.de, quic_srichara@quicinc.com, quic_varada@quicinc.com,
 quic_ipkumar@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
 <20231003120846.28626-7-quic_nsekar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231003120846.28626-7-quic_nsekar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_172725_477627_53A073C5 
X-CRM114-Status: GOOD (  10.32  )
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

On 3.10.2023 14:08, Nitheesh Sekar wrote:
> Enable the PCIe controller and PHY nodes for RDP 432-c2.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> index e636a1cb9b77..be7d92700517 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> @@ -28,6 +28,15 @@
>  	status = "okay";
>  };
>  
> +&pcie_x2 {
> +	status = "ok";
"okay" is preferred

It's also preferred to keep status as the last property within
a node.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
