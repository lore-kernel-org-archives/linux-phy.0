Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B33DEFA374A
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 12:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1q/780+fSXKoInYky+Wb2036rd+iJ7r0TUYj9wgpJrE=; b=lOcypQeDzeuUEW
	unXJ06uFpUPhcPULGNEQHSa5NdUH7QUMeOPcmA4h6BTBnwpP4n+BN1GlO7QEacTtvZGx575uYEaep
	pDWwdCaUBnNQu7ApZToSR6HXZnJFTdB3tzQRbteVwklfD6amALfXMc7PqKV6s4miMdYeklwdpJiO7
	VeByxk+PAIsNI+HyUf5Ja8U1OhvcP97D5hmp/Bt5lLWi0LQJwCKtLFJX/Rdcbujoo014edS6ltlS8
	GVTXpuPluT6/oaEiTmRxq1MjC+2qsnu+3Ax3Z4XnFHmJYC8xTcs0Fy8D41irAOiZiVC12cPfxs+JK
	EGCV6sF4g7cN9l9c7r0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp5Qr-0000000FtyX-1AQw;
	Fri, 13 Sep 2024 12:29:49 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp5Pp-0000000FtmG-10aH
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 12:28:46 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2f75e5f3debso8442501fa.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Sep 2024 05:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726230523; x=1726835323; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3Ji4NYmFGGbt+gGev2Tj2lbi8IGg1JCceX+r4CZ9/dE=;
        b=uztF7WRx7bSJFcud0j7flo4SDuEoloHu9cncptAJ3cHYNR5JUriHSQ5JwZZURBN/pi
         BlJLZKiqKKypwaYFpG5IT/3E6z+TvwfpscVYpyZ4Rjn7cpXOrX0/h9YKA4rb8bKR3z7F
         EdgL2a6QOYfnvm4hcEWmAh3eQFfSUlb5fnr8jRj41+JU27ZEruWoPadfnNVF0e534ffo
         sg53fSePb4NtLwbE6WUNOaj8eSKSq6L+l0jnd/FszfI0/mmvyYcc0cJoZXKq/05bM6TD
         Ep+NhWrvus+RRLfiaFYrggvsk4lVvFSvKjBaG+8BQdBEXm/LIpKR+FfX7Di/H3oN9tkX
         YlZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726230523; x=1726835323;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Ji4NYmFGGbt+gGev2Tj2lbi8IGg1JCceX+r4CZ9/dE=;
        b=Q4TQ63iG+P188rwsZlnbGVq9RqO0miiacU0NqqWN0pot0mvxCuEKyzLWFw5b3gR6Nr
         mtLOkQDJB3vYTQNXFB95zFwzJMl4LwvSX6NeZ/aBRk7MKay7yW/+/TgqgWCR3BA5jT3O
         mtmU8gU4oCwOD8nvUBD3txcPbylR5f4aRKlCT048QhN5Z0vYT4A/SGBtGHABkahobd0U
         HyKbQ3nZjr4i/cxnOOx0BLlX0QdcEjmDaaqC++WT0ibrUUw3DHm8ZcjQVGUFYoFtQ4d0
         IusGfbR2aiRWYk3ETlyCpYgbpQ0VbgOuVT588kz0CyGZT2sPzMsl2YJYEwQK3+WMzOv3
         Guzw==
X-Forwarded-Encrypted: i=1; AJvYcCWgsW6p0jGbrEwbe/WAudXoKPHDpXCUBc+l14hdNK1y5hsdmR1knWNkChj+rIESKlGG3yIls65xeBQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSTVBSpYyHzqKzl0ES0LKMKsNoT0Frrh3ZTngSKe/XB+skqfcN
	0+REoDuCaLF2LYg2MchacJl2QHSAUBD7uswKeRhUnea3pESOUct7HwyPpvDrnV0=
X-Google-Smtp-Source: AGHT+IFjTOd+RrLVc1MSCX5go4WC8b4PHBCxtlwa/ercIrMyEGIaP2cttCmh5EftrPHHdbja2IAJsQ==
X-Received: by 2002:a05:6512:3e0a:b0:52c:9e25:978d with SMTP id 2adb3069b0e04-5367ff24baemr1651346e87.45.1726230522693;
        Fri, 13 Sep 2024 05:28:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f903ca4sm2262019e87.192.2024.09.13.05.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 05:28:42 -0700 (PDT)
Date: Fri, 13 Sep 2024 15:28:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 3/5] phy: qcom: qmp: Add phy register and clk setting
 for x1e80100 PCIe3
Message-ID: <tkt6ox75xsbqhbopgi2dkexvubpmuizuzeyy5hkdv7si7jljzq@x3tgbepgxeni>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-4-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913083724.1217691-4-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_052845_312337_2931E261 
X-CRM114-Status: GOOD (  12.93  )
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

On Fri, Sep 13, 2024 at 01:37:22AM GMT, Qiang Yu wrote:
> Currently driver supports only x4 lane based functionality using tx/rx and
> tx2/rx2 pair of register sets. To support 8 lane functionality with PCIe3,
> PCIe3 related QMP PHY provides additional programming which are available
> as txz and rxz based register set. Hence adds txz and rxz based registers
> usage and programming sequences. Phy register setting for txz and rxz will
> be applied to all 8 lanes. Some lanes may have different settings on
> several registers than txz/rxz, these registers should be programmed after
> txz/rxz programming sequences completing.
> 
> Besides, x1e80100 SoC uses QMP phy with version v6.30 for PCIe Gen4 x8.
> Add the new register offsets in a dedicated header file.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 211 ++++++++++++++++++
>  .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h    |  25 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h |  19 ++
>  3 files changed, 255 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
