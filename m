Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C46CC282D3
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 02:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UcRaXSJkscW60If3wei8H0nE0/sd3CkWr0Y8Jw7+Co=; b=QWqnbFcLlBs8B7
	4iwGrL6aBfImonJW+FgTiQdfHPrDUTeNrMshhmlBIz4K1RQuSGCKx8gQRck6DJ5L91QCt8tEg0aPn
	3eSK/gMAsZknhP7hWqJvUhVfOBQEr/FixozV22ILp5n7hjRHTx99GHMSs4vy8C3TSFTF2sLVeAMiy
	/jmeZs+wy7D7msn5w9N8OR3aK5tv3ILcKI9oyfH9sZgo8V8R0FUG7QcORhA+YJNSc6buEb6CNt2un
	mRD9CqgdZ/XgSOCzAF69WKhWaxCHDhcI7qTvLw/UhayzdGge42dzvBQK9rlXfSKTuS7j4lmgoo+zS
	Z2M/2wggPR9YbMbYs9zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpefM-00000006og7-1MjI;
	Wed, 05 Mar 2025 02:39:24 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpedl-00000006oSg-0vvl
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 02:37:46 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-549490e290dso4932751e87.2
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 18:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741142263; x=1741747063; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7+97ZVr2GLGNMwRJ+JHGTl73f9HD8d4XIQHgo+B51+A=;
        b=VovBAMj5CQTtjIr6FNeeVfGvi6oyErb8PeXKqA0qxzSf4HpHumPGLX3JGSPi0amo2L
         bLAiX1HVifZ/x7gp8Cybkxms35Z/eTM/90NVvqp/TX8oP9UCwGC6ihV7HJm5qwCl8G8T
         u2pBh9jfiuFewyUc40UReN1/5vu/ZasT2N9643H8sSMs0/rFRTpUOwxy8wGVS7wSIIm6
         xMWEPxa3tkPEckcv6lqmP5FeaerK1yIc9RdVrh/FFDfIj8vRS6sdcXjy1vSnInlfiZey
         X9PLKIYhVL+cA61XoURtYSIGszdM+gMNPLoZph5i2C93jxPbKo7TAr+3plp5XeQfeRTM
         Johw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741142263; x=1741747063;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7+97ZVr2GLGNMwRJ+JHGTl73f9HD8d4XIQHgo+B51+A=;
        b=iu2kNcMSF/ikthKulw87p0wSuwZkExjy/yy+DQ5OWGYEW0GjnL4WsC10aQD5Erhq9Y
         kTAtfcTfBfLNlLgjB2PeyhueSjinraLp359QSi4Hq9ubr8yxvv7vEIENvjg8Pfsi+SJW
         I3jSexoikQIGV7bl9iUXyQeAKk/2bPAQKkDRLFwToDDZ5sp47kHs1rQrcemRTuVxWejl
         L8hLpL0ZhUOS5eH7nMO7Gp3Hwak38seNCo9lviD6m6gD5pr52U+Fi+RyL//sfNvqAw6E
         P6bVUzUZMPbIBiosa/cI0VDeDNF9a5WxOl4lVs+A19NMwZUhtwFkm3DeiKTP3yjozBDZ
         cUBw==
X-Forwarded-Encrypted: i=1; AJvYcCXn78w0/VkKi9VjUWf/VevQoNBm5Gn5oV3jIT3jTNM60FbDRVslvD70yueRWu+ftou2pPgaQAPm2GM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyL2Ye4b/EK3IE8lwS+9DejeiApSnMs+DTBfHOu1sF6UVYmgMj5
	rFb/OrQUm+tW4e8BKWNtTXooXXdKfR/Bl79wEPA5RtKoSbF5Eej7IEWZeCmsgqY=
X-Gm-Gg: ASbGnct3ckcp0RBPLCnVv1Kocj8jgNMFZfVuw9hGpNpSJAtuEJjL3za8vrvP1tK3Znw
	BfnGOafrMnorsJGwkk72Lun3pZpjYQfu5i4A6BkWZZeMGsTh490Yx+QIsNYz1Pn/B2omVdtkrV7
	FTijUV+zRn+4Sw1Xxxdsju1yG9WqFyx9aEM92TR5PO52Pm0N5tbX74hZR35DPLKiZCrz5fS68qz
	5v5uZZ1ckk9MOO3Q5d8TCrMvuZgLDsGoLFyandGyB/XqN75tKZ9Xx0evQXpR5Oyx6pBTExTOQwW
	hBHA30f49kS7qjYklCfpCmlzJlM4lIa/fSlolW1lAPV04ETIIh7mZ46aKqFNzFiJqsVUrx0a/bR
	6+daH7t9qopKJJ8DLBTfeK7Y7
X-Google-Smtp-Source: AGHT+IExjENqSk5hjjIhys2YXSgdpIqL5VVjIyb8jsl9tsSbsyXgT3nWgdPRJ4khQWdE/LA6vVB24w==
X-Received: by 2002:a05:6512:693:b0:545:c7d:1790 with SMTP id 2adb3069b0e04-5497d336432mr449658e87.22.1741142262813;
        Tue, 04 Mar 2025 18:37:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5495ba98c6bsm1058122e87.232.2025.03.04.18.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:37:41 -0800 (PST)
Date: Wed, 5 Mar 2025 04:37:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/9] phy: qcom: qmp-combo: Add new PHY sequences for
 SM8750
Message-ID: <jr4lvgumvnjhybvwuo7crpjhaogjvet2d7llt65qzstjnoekuj@zx6z3npa37xg>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-4-a698a2e68e06@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-4-a698a2e68e06@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_183745_263419_63EEEB17 
X-CRM114-Status: GOOD (  11.49  )
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

On Tue, Mar 04, 2025 at 01:56:37PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add new register offsets and PHY values for SM8750. Some of the previous
> definitions can be leveraged from older PHY versions as offsets within
> registers have not changed. This also updates the PHY sequence that is
> recommended after running hardware characterization.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 221 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v8.h     |  38 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8.h         |  32 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  64 ++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v8.h    |  68 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   5 +
>  6 files changed, 428 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
