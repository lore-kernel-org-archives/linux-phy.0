Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EFAFC46CD3
	for <linux-phy@archiver.kernel.org>; Sun, 24 Dec 2023 06:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5Mi9IolHm+AJwJGM+BId3v8dvF0sDJYLTIkHdW/Hhg=; b=YXpw0m88f+0GwO
	OJ5fIYmlFZf9PsGpqacKVOVaJUPGpKRzN+wlcOjf6rNIXCwaoNlnZ8BA6tV+SIADNMeqj85Lx4g0g
	DuotxZLGPumjenjyAl5fkkDI/Hxve5EB2z5CIN6rJqPDGx3dHnFXGyLgmbUywUwLkffzLK76FyGfl
	zYVCdT6r8sjprBytAGhPbN1wPuEOKhr4DMHg5PAel7/a6w0VIUqYBnCxKuVKqS639OidqhQsjCekt
	HMTveXGX0o7vohEho4GEuZPIOU8RlP4rwS5/oPElaRIPjsc1ljcmicwlRhNalJ+KGmFKxg49qf+xV
	05p8YyKBhNiOjMOVv3Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHHnV-008x9p-1Z;
	Sun, 24 Dec 2023 06:17:13 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHHnS-008x8r-05
	for linux-phy@lists.infradead.org;
	Sun, 24 Dec 2023 06:17:11 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5eb072c0b69so4453667b3.0
        for <linux-phy@lists.infradead.org>; Sat, 23 Dec 2023 22:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703398620; x=1704003420; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+yJH4M7lQzSLCFAOCgx/IfyOcjTUsiv4Zv46F5h0xK0=;
        b=KqmFX83MyhrvlbQD7PycqhMORkSRr3Hfaa4DqR3EI7oBnDRcgHRCET8x9OjanCkd9N
         zYN/XBlV9U9U8b2O9Wqjcx43/79cknYtDJyprfy2WuNZozxMxnReq2hDyxZW7ktUz287
         Srwjm/k27Bgd5f5PNLVn/nJHm8VC95HgMyFVrdDLXS58jpoQ+7DJgDjmf/SEshoBXpXK
         TOMGFhXqqiYOyYVKULh8UBRy0j0a3v9ykRu++mGKF+8uRRoLicPGK3bTEFYWttCs/lQo
         0My1MU20VcDNJgzVlys8Jr72mSuESCyLf8/6Laf1pJVyS07rvY8G+gqrxMc9dfuqYnOr
         O+wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703398620; x=1704003420;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+yJH4M7lQzSLCFAOCgx/IfyOcjTUsiv4Zv46F5h0xK0=;
        b=v1q27YBgSo9fRbE4wLGgLVNaun++brqmqpxg9XEeCNAgDyiLW3cPrwekIpodrZw0Ym
         +s1dVgIMNU04bMWzdrVjRhCSNasXuPbooiLuzRDeByiqekbLsfo/53YtNtd3c+xO5VYr
         OM1GP0l5hyZrkItvdhwT26BaRJAaFBENTthsL6L3bgQPh7c3uolU7EwAv9J+v45I1NAb
         ENWZMLXcV6UXSfeV1cCzE+jjyslYxR+TJV6Vi0+QvciTrJkDenabU3frWkJsH6ZvzNsc
         t1gb6PrxPX+Y//lWGwD1m4EzsPH98te8peIqffLs3OdYavnGvgSm/eTX+SP28DCwxRgX
         QnKA==
X-Gm-Message-State: AOJu0YyrsajzG+1xl6FAvtGKJ8M0Vq90gub47OXicciHWxiXkfYK8dyV
	Qr5gC39ptREBR3tC66GV5RBFU8daMvzPDXcke6INPCIkgkPDqw==
X-Google-Smtp-Source: AGHT+IGj3x86AOzKQKDN6TlGAjhfiLdu/m9mbvukDFEOZqq9qJwmmW9PBdR7ggUmuzrbN657Dt2zBN0GOTIL6rnUZHs=
X-Received: by 2002:a0d:d247:0:b0:5e9:f302:1a0a with SMTP id
 u68-20020a0dd247000000b005e9f3021a0amr3308849ywd.95.1703398619915; Sat, 23
 Dec 2023 22:16:59 -0800 (PST)
MIME-Version: 1.0
References: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org> <20231223-x1e80100-phy-pcie-v2-2-223c0556908a@linaro.org>
In-Reply-To: <20231223-x1e80100-phy-pcie-v2-2-223c0556908a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 24 Dec 2023 08:16:48 +0200
Message-ID: <CAA8EJpo774xzmpb2+72sJ80kmcCqJK-gDfkaLERGgmPeSZV3PQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-pcie: Add QMP v6 registers layout
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_221710_123004_7F81ABBB 
X-CRM114-Status: GOOD (  10.92  )
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

On Sat, 23 Dec 2023 at 13:55, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> For consistency, add the QMP v6 registers layout even though
> they are the same as v5. Also switch all QMP v6 PHYs to use this
> new layout.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)

On Thu, 21 Dec 2023 at 05:51, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> The SA8295P and SA8540P uses an external regulator (max20411), and
> gfx.lvl is not provided by rpmh. Drop the power-domains property of the
> gpucc node to reflect this.
>
> Fixes: eec51ab2fd6f ("arm64: dts: qcom: sc8280xp: Add GPU related nodes")
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8540p.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
