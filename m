Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F91FEEE26C
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 12:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMZAnl/atP6iGSVV4V+ihKoamM+km0XchKFBcUqrcTI=; b=4CKeDHfBToo2DN
	gVnrifDrlSqgPl3vqgKDfwgAdEtfgWtjqdqLyKe1t1JELYU8dI0OiTutaC30/Rxv2vfL2O/sh5qj6
	ffaR5exqwk1fsSSNjoBXgM88fRucif9D3rQMgdFIg7N16Jt0fubSrcYdEMQ8vQtAYW/r54ZhL2T6K
	Sac44WmfSynnqmnIfDwhlQpf8kNRGpH3vzmAJlhg91JDtkMX6mPOr9jwwGveBvKxgahTTO6D/vznz
	Y2ISrwcUDa6OeD26/PYPIh1ec1eJ0VRK0xPPilGm6qI2aZS4lR6rfYfhNL8u8U7RuWior3PT0Yh3y
	HHngsQexX4ghmJfVEXYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp5S7-0000000Fu9S-3Pkh;
	Fri, 13 Sep 2024 12:31:07 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp5S5-0000000Fu90-0EOd
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 12:31:06 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2f66423686bso20425611fa.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Sep 2024 05:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726230663; x=1726835463; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7lfIoqIzq7Oaxzbrg6+hyftX0grPutbfuzbJgM78HVI=;
        b=KxZWwlGUDOwQyz4amcNaUQpbV5azHncEOYj8++UjCHDkuTyCl/Zv/xI2ZQVQX/j/uu
         d9BsYnZHhNky0KegZRbShKo27qzqLSUK14abRllqmqdX7KbfO2IcmU1Xrks4+zvxBJ0c
         /4RPe7KParJ1jqZnVNh2V4OW4ZcSC133fApXaVifKYsobGLA1+4XIIrzzfYKQVW/25wq
         lKCcrx0cr7zBG1DS259zsFkFzvUwyd4JckZHbDoOJAsetaoR0NOcFbaxm8ABQBdR2L1l
         DLN2JBQi4rkUaBI7aAr2Yo7s5xnVBBxLe5opy2AmPGDk9oa7skrPRNr2aXxWpHe4XwtJ
         hf3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726230663; x=1726835463;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7lfIoqIzq7Oaxzbrg6+hyftX0grPutbfuzbJgM78HVI=;
        b=NN1uGLV4kB8B0I7KD0ZR8F8ntcom8hSKXCzTKXUhEn/XskjeowX3rBa+uzyXUAZo6p
         FXNdu/xV5I+obhVuW75fAQeoqLWdz/y/Mwe3fVIeXaugrffVaFyAQfayL8QRmRU4WIa+
         YWhOwjnOouvDHwgKf3b9wT8brgGI3kKVOd+5TaigMmXtE8dnVDh0m4ucmBAXeXV9C0/M
         P+mAECUiA5rOR9E2Vv79WNZvPgLtaxioMnpx2MZtZn6D1Q1YNXGNin3zc0svGZKONIzK
         1SkZDHu5MggVa0ZMbmHLEKC/2Rywgf1v0Cvj5K7cW1QWNwhCyj/WHTHp6WuTawoWLezy
         Q2Nw==
X-Forwarded-Encrypted: i=1; AJvYcCUNBbBtuJ5qEe4PZReBS7QF+B72zYdexg/jnqeUmKPeREnM+V0vZmWVGyBI1aEKGE0SyZC/qyao64c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhMWvG9qDoelWfq5/1WsYgtQPCik3oEfdyCkl3pcjTCPrFOFU3
	FUFy/Te5rVnrbzNcGPyipoIpc+JnEULbKzFJzt73V5b6CKeGvTSSEJ/UIQfkVmo=
X-Google-Smtp-Source: AGHT+IEiDkYAB870ZBn/zctGJmdUhoUk4th5m2Zqgejglsbq0AUhxf7YU//dFZlelqKAMfIRGO7czQ==
X-Received: by 2002:a2e:619:0:b0:2f6:1da6:1c64 with SMTP id 38308e7fff4ca-2f787f437fdmr24587471fa.45.1726230661896;
        Fri, 13 Sep 2024 05:31:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f75c07c83dsm22040201fa.80.2024.09.13.05.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 05:31:01 -0700 (PDT)
Date: Fri, 13 Sep 2024 15:30:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: PCI: qcom: Add OPP table for X1E80100
Message-ID: <tf4z475uqjenohdgqj4ltoty3j3gopxnbdhrrn6zo3ug5yuvyq@us2nysv2ggxh>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-3-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913083724.1217691-3-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_053105_119193_49D4F83D 
X-CRM114-Status: GOOD (  15.11  )
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

On Fri, Sep 13, 2024 at 01:37:21AM GMT, Qiang Yu wrote:
> Add OPP table so that PCIe is able to adjust power domain performance
> state and ICC peak bw according to PCIe gen speed and link width.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> index a9db0a231563..e2d6719ca54d 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> @@ -70,6 +70,10 @@ properties:
>        - const: pci # PCIe core reset
>        - const: link_down # PCIe link down reset
>  
> +  operating-points-v2: true
> +  opp-table:
> +    type: object

I think these properties are generic enough and we might want to have
them for most if not all platforms. Maybe we should move them to
qcom,pcie-common.yaml?

Krzysztof, Mani, WDYT?

> +
>  allOf:
>    - $ref: qcom,pcie-common.yaml#
>  
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
