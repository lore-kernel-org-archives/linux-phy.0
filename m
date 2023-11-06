Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EB4AC4167D
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 11:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1N2IpJjQ+el6Em5291FfnbR391Au3nWsokFOkOQT0k=; b=IMKC55cRNPcbrn
	uhd3/666pWQCMtWIc0qCRBv8vkEtMx9G66ZP235o68ifkrKREYjRGFVli+KJtJ8mNYDPWlZhSqHeU
	3rdEO6VHC7ckZTUAaW8hk5TA9A6vhiSfmBL/FW8PjZl2uPS0l7MhITvjfQAUqRf73FVUVga089fzC
	Lt7VAxYVVQ8Sv0/28HzCuYkqiizlmYlGYPJ4y+sMZWrWZmuTCULLoBDpuyeoC+eRl7moiqsgDnJ4z
	/H29PR8KOlK7He0Ut24jgcyl/kRyUJgwdPc0BpJHBMfEQwTOrlVQQf/mBVctta0ukZ4ncKOcryN5k
	WIHbJEe8HHd0Nd722jwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyFK-00GZIy-0a;
	Mon, 06 Nov 2023 11:58:22 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyFG-00GZII-2c
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 11:58:20 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5a82f176860so52276997b3.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Nov 2023 03:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699271896; x=1699876696; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+DHrhiLn9HOdOplRClwUGQLEk9jhkaaAAmdhl2iHxq8=;
        b=O8wS/qn5ldtIFWcHxlKeFVCmF7pWQoLtM5rp9sIK0UVo+Vx32s5kh316pF97i9eKmp
         aFpjjd3BM8IVpNxACap0LCqz4Q8022N9J13IDJjeMbggZFZhicyGa/ETqtMGc8OtAZ6J
         +vs7b3dh8QsBRUCr8Fkx3jlKu8VCEkXxst9d5QmZCHDCDE8AA48B1/lLbtV5Pry6Gpcm
         Mk0nJxJOF1ookjcw8/uLF8Pfwg9c2rjG5iwdtjrHHWn+59Dxfdz3GxEk75+mN1dcqUq4
         HI8FrdSTX71FOzBIuJKvXy/V9oaczmQKENVlEo0qxLMLupkqiobtbm1TLwvqeER0PYKW
         ZF9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699271896; x=1699876696;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+DHrhiLn9HOdOplRClwUGQLEk9jhkaaAAmdhl2iHxq8=;
        b=ViRCwuc7hvv61t2h6hN5jJwJkuj4j8ACIue9iE+IcHinjKsESx5AIX7JAmN6MmaWOZ
         m5e+lgOAdPFGksq6CF85UDUIbxrEUfsg7B9w1zrt9hOS1eqPuzSUyTTeWZVeokYcEXSG
         BLavR9DVPR1ru95DXg5DYjLq6RejZ7g4oVxd1p+GgJKFX/9UIAEBwKgcHzc1kcjzG1GH
         ssATuudAkmYUCmsS8d0lvKQ7XWtWGX/vlyg7/8s6aei6mmif0gh+zYIFrGOzcd2GCSpl
         yh1bpWYweeaxl61IvHj2uKW9AtUpPFKZeTI8LR5UKA7mZgR2/FJsv/Z546ZFUi1S9Tld
         0phA==
X-Gm-Message-State: AOJu0Yzv9q9LMX+Ao1Xlsh9b49bbcttArxjFq67c4DU0aJJXxf0dxTEp
	b03T/9aVfh8ZhJcwMvE6TCRgsmkcOMB7meNlUo7E8w==
X-Google-Smtp-Source: AGHT+IEDNyCeg7rftIKH8imNcdC4wxfWz2fHb+vxe9+X00JFqxygWdEvIdBo39mj5SI7JjmR/5Ywnk7szgLfZGlXiVk=
X-Received: by 2002:a0d:ca50:0:b0:5a8:e303:1db2 with SMTP id
 m77-20020a0dca50000000b005a8e3031db2mr11350804ywd.23.1699271896321; Mon, 06
 Nov 2023 03:58:16 -0800 (PST)
MIME-Version: 1.0
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
In-Reply-To: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Nov 2023 13:58:04 +0200
Message-ID: <CAA8EJpo3oi20p55CLxacdMJTKgr-6Wrnx=idb_D9U8p482mpgg@mail.gmail.com>
Subject: Re: [PATCH 0/2] phy: qcom-qmp-pcie: Add support to keep refclk always on
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_035818_873398_1F62AD04 
X-CRM114-Status: GOOD (  18.28  )
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

On Mon, 6 Nov 2023 at 13:53, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> This series adds support to provide refclk to endpoint even in low
> power states.
>
> Due to some platform specific issues with CLKREQ signal, it is not being
> propagated to the host and as host doesn't know the clkreq signal host is
> not sending refclk. Due to this endpoint is seeing linkdown and going
> to bad state.

Is this a board issue or an SoC issue? In the latter case this should
go to the PHY configuration structure instead of being specified in
the DT.

> To avoid those ref clk should be provided always to the endpoint. The
> issue is coming only when ep intiates the L1.1 or L1.2 exit and clkreq
> is not being propagated properly to the host.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
> Krishna chaitanya chundru (2):
>       dt-bindings: phy: qcom,qmp: Add PCIe qcom,refclk-always-on property
>       phy: qcom-qmp-pcie: Add support for keeping refclk always on
>
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml    |  5 +++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c            | 21 +++++++++++++++++----
>  2 files changed, 22 insertions(+), 4 deletions(-)
> ---
> base-commit: 71e68e182e382e951d6248bccc3c960dcec5a718
> change-id: 20231106-refclk_always_on-9beae8297cb8
>
> Best regards,
> --
> Krishna chaitanya chundru <quic_krichai@quicinc.com>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
