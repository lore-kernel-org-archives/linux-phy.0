Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81CD8CD128A
	for <linux-phy@archiver.kernel.org>; Mon,  8 Apr 2024 09:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Px9RK4YZxkkI0bQiCeaTuBPWUTE7mA9/1bhGUanssd8=; b=AMO4xqvoUny0F0
	nv/L92R2qfVxEGPOpJPVOL+FtC84CkcqYE7CO1G0UKX36Z2OHta2VFj/GoIM/srWTKyOvszslL1eq
	4WDNwboNoQBID6pVAbHC2U5C9tkL8MlWmWs3iVTLMxUovnliEZBDeecxb9P23d1yGlQEFH8JVE2wR
	m7XyFqMKGr0TyAulPNFTYLdpLrH0ZYeNDBEIOP/xU4Dl5kRAsuNDtLIVkm5Ep2IcD/8eDT9HprVCO
	GDhsOY5CUYrhvy4bG1JFjRUuz7zU5TZqkzHzqXnomCIgAyOxyt/u5D9Sqy6jxgwxfRj3+2tI7Kw+0
	JaBSnRyoq8t/BJZVm0ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtlVd-0000000F8WB-3z49;
	Mon, 08 Apr 2024 09:41:49 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtlVb-0000000F8Uw-2Q8G
	for linux-phy@lists.infradead.org;
	Mon, 08 Apr 2024 09:41:48 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2d895138ce6so6991751fa.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Apr 2024 02:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712569304; x=1713174104; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P1sjyF9zPEl2TEamRL6KiFbzsyaAM9a2KSULoVj+d9A=;
        b=Ll5/rnCJlKVRde1FyTPxkDPQNOBCi8Q/sePajwR/IWaPdTb5TbToNO/RovCkGwBsph
         EY1BRrL8BeS4poCAA4ubMdAwb4mTj7X6WJCdkMu+jrckG6PmAaSQND48jkSGSsk0ncfI
         uTjvqeKIchEdSR/AcDW94wBhg5zw/GxrkGE9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712569304; x=1713174104;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P1sjyF9zPEl2TEamRL6KiFbzsyaAM9a2KSULoVj+d9A=;
        b=JrEA33MgeD7T1m4IsqwjP3Nkgv97qZasgXj53h0iP/3OW2msfBXgogPWrKmuWffK1G
         mUbN9mpbhRIQuf/swhc3Mi8p9X4nMvT1uYyxWF4gYzAN8GNffRZnPYbDjNFgJ11rnHSa
         LSQ5APyYKkHQk8Cdxl1jBJcDUhbEQ/gwWGsz5Fr6wNNUm7EQr0huOTzCCwR5rVDmtFkZ
         DGrwX7KmEsfScJrBBgb62k5gbkmnnk0Fq/+GRFCgAu2Ql946OfvM0E60IHd0DDlr7S5k
         8xC85GSLCUEnRahnmFpvIIQcu9zUmt+DUXt6++agxfb3hlRK4QPH/XQFWxkLyL95l4iI
         5fJg==
X-Forwarded-Encrypted: i=1; AJvYcCXKNatM4i2A3LUOv4HLAAxtuAEqf3XoJu1gwNYN3aF9E8O9pccXOw1NOfNIdvl90A83EjN7MpK5n02DyAXbYAfKX4MScOFLp35z7+Zfvg==
X-Gm-Message-State: AOJu0YxSfd3w3nBaLkEp4cMu196NUr2qYNKRG2c7W9GGF8Z3P7riM1vI
	qowmWKBQSec1yHk/9DyVKNHD8HhVNxONzGgNpFxmPbk4htt4aRoAPpikpR1QJzVZGi1Ir9V3WwF
	/8rv1ZAuPh3+HRCFqIVOV+YLw/mdQMe02jchr
X-Google-Smtp-Source: AGHT+IF9NjrwqKlld09cONkAoXbGH6b8es74pe1Um/RUmrsKTi3n/+lKueJeNAGkqsUBxbs47mKMH0KhlmofkKRnCCk=
X-Received: by 2002:a05:651c:42:b0:2d4:77c0:d61c with SMTP id
 d2-20020a05651c004200b002d477c0d61cmr4901918ljd.35.1712569303584; Mon, 08 Apr
 2024 02:41:43 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 8 Apr 2024 02:41:42 -0700
MIME-Version: 1.0
In-Reply-To: <20240408093023.506-1-johan+linaro@kernel.org>
References: <20240408093023.506-1-johan+linaro@kernel.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 8 Apr 2024 02:41:42 -0700
Message-ID: <CAE-0n50cZ0MoT6M97NAXPNfejk46MkLxQgvBELxFVGgNRRaP9g@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix VCO div offset on v5_5nm and v6
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_024147_672605_DDAB3761 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
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

Quoting Johan Hovold (2024-04-08 02:30:23)
> Commit 5abed58a8bde ("phy: qcom: qmp-combo: Fix VCO div offset on v3")
> fixed a regression introduced in 6.5 by making sure that the correct
> offset is used for the DP_PHY_VCO_DIV register on v3 hardware.
>
> Unfortunately, that fix instead broke DisplayPort on v5_5nm and v6
> hardware as it failed to add the corresponding offsets also to those
> register tables.
>
> Fixes: 815891eee668 ("phy: qcom-qmp-combo: Introduce orientation variable")
> Fixes: 5abed58a8bde ("phy: qcom: qmp-combo: Fix VCO div offset on v3")
> Cc: stable@vger.kernel.org      # 6.5: 5abed58a8bde
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Thanks! I didn't know the qmp_v4_configure_dp_phy() function was used by
v5 or v6, but upon further inspection that seems to be the case. Maybe
that should be renamed to qmp_v456_configure_dp_phy() to match and then
qmp_v456_configure_dp_phy() get inlined into qmp_v4_configure_dp_phy().
Either way:

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
