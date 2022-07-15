Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03808C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 10:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUkq4m28elUdKmErlkI6I41QUiyhYnNdQ3Wjc6Zb6io=; b=bbpZKu6i4jOVol
	bwHDoJTcC83TvXVEig+j6zQhQUbUsPSSJF7Yt/2KN3sLlQ8nVDwnav9/1zNZ3GU1/iDkISOIKo8xG
	XAJVhQRtUuheXhfNxI5Lrhz6Sj4R3xxEjZOpyj2EXMD8PrLwS1g8LBAsV2I/wRAo5eUGcY315Sm56
	GLJ7Cf6dTSl95/SiGPTooJKAv/BGWjwLLOINx9fgKZh1QPdzPONQFVRKLrNEei3k+XGw9UhK62MSJ
	LXA44H7mMg7LzDUnRxxg3OWBgMqNvW4iWySbqRGP4UWPuhzyop3LBaS5mKYyZyzjMmHLyIBWbzKca
	6lQPAhpdov5p3nFaS8DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ1k-006SXU-E0; Fri, 15 Jul 2022 10:58:32 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ1h-006SV2-Sg
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 10:58:31 +0000
Received: by mail-qk1-x72d.google.com with SMTP id o26so3238512qkl.6
        for <linux-phy@lists.infradead.org>; Fri, 15 Jul 2022 03:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xrkua+hfhIJ1CptLiiW8VOQJd1B+fpeDVj5Tjr/dofs=;
        b=BHHWXE7yzvIrkwAiDh17ZGCqeGQFeNqeHvd//+ttsFgRZ4GLPvde/KzT+HS7rq6ITx
         iEZE5yYJLtxXnn4+V95NS6eUXB79H2PsJ6VZnPwVYR5c6r9tBhtLo/lomr3CSN8LRP3b
         ALPFVKbGy7ZeQrb19v77EAJQsQtFpDWdtT0UJcT1bEY89an7unVZC/2tieFpkc3ruzK8
         fZdQc0PhxvdIhaGjcyfZi6hs8wTWWpXL7Wk/UB2NCqNixZMBbkFwNqDkeNHdOkGyOu7f
         q9/rLrJHpQbtyvFnUZ1by05domduMxRpO/G17J1lGOoFLnFTCqgaK27P3O/AYKqhxDBr
         UlOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xrkua+hfhIJ1CptLiiW8VOQJd1B+fpeDVj5Tjr/dofs=;
        b=lydwBrmMaG8Rt4esu2Zx5Q4ye0dNs8q/qVxyp65CpxsVxsvNcK7JmfLZRZ8YJT5l48
         2Q6cSCoWuggLthh+qudMC0vkrABoK2BZGaDsWq+ADUK6d+OY7mGWJbvLprfhDSHxIiRB
         YyyXeQ2UXENYqP6av3B4CDVTy4VTiYp+LphG8f4e0Gs9bCiD+ZCP93+AUpmkGSdWItUT
         BMhR2LPUHj6vdFH1Br/vN9zGAL0ZErznB5452U0/U1gLgsqY2EjNZSPNifJ4UiDU8JT+
         IRPFTkLAH85EZFygX782aDp+d3e1z1lb9pyHDlyoQt2pJa02vYzyGhz8IPFtEohKCati
         zW+A==
X-Gm-Message-State: AJIora+e/5c9FxduPBZ2fdhEOa33F/x1nblusmdsYiW81z4J945a9VBK
	oH+5/TrL/9fZCFl3sqtb69NlgWmXt2XioKp5ZjJTuA==
X-Google-Smtp-Source: AGRyM1uijUcLj5+a/BYNrAa8fgEmFUIYN4MUFnBaE0lKHKhRYLZiK1talPBo/631iAIRmSK/KhcM02/MpYf+knlvyW0=
X-Received: by 2002:a05:620a:288c:b0:6b3:9d1:dbf1 with SMTP id
 j12-20020a05620a288c00b006b309d1dbf1mr8804100qkp.593.1657882707457; Fri, 15
 Jul 2022 03:58:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220714124333.27643-1-johan+linaro@kernel.org> <20220714124333.27643-30-johan+linaro@kernel.org>
In-Reply-To: <20220714124333.27643-30-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Jul 2022 13:58:16 +0300
Message-ID: <CAA8EJpokYBLWxqpeHDbDDGpkZPWf+zGHnQp2HhKX6gP+Laz89A@mail.gmail.com>
Subject: Re: [PATCH v3 29/30] phy: qcom-qmp-pcie-msm8996: drop reset lane suffix
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_035829_947230_DB6D1528 
X-CRM114-Status: GOOD (  12.30  )
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

On Thu, 14 Jul 2022 at 15:44, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> The lane reset is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the reset name.
>
> Update driver to support the new binding where the "lane" reset name has
> been deprecated by instead requesting the reset by index.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
