Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFB2DC83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 22:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoRlNGLgCLFcesWI4S9nBTvnX6j9nNIozQBEXLSo3rs=; b=smlWRbnhxWPPhz
	2YXfM/gBuzpQOLrCzGPoLCLiPbJGyLWRTznsQd1cuTX+7CHpKivGrSDz5njRv4sYi5P/VzCcFf2bQ
	/07rJLdWrKMxiZK+i9GdicwY5+3ftbhrHWKCuuyh7XFEXS02tGUt9fNruju03YNDF5TsuKyTn9Xot
	w9WkUrQoHX051HjK/ohI25jQzn9FWzAV3g0vz97BjlNLnFX8tPwd8sdfX7KHWRRbhO9GX12l9w5sf
	TRirGlTw0t195bx/pJXL34lL3Z6lJ+3K++6J3C6sUPN4RDqoaQayo81Ovxcv/aZBYlqylYjjOojoH
	LTBbJdsy92oHc1sdof0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb7cf-00CPpW-22;
	Tue, 29 Aug 2023 22:55:45 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb7cc-00CPp0-1V
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 22:55:43 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d77ad095e5cso4971868276.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 15:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693349735; x=1693954535; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V5z5Ea0/s611VoAt5Pa4bFhJ/Bo9nHhqcd1Tv501Afg=;
        b=DzZZGCZ+IAygkfOESiAJ30+BMGuGL+orhQHgrD/C7Z9tLoeNipPFUjXr2KwTFG9L4W
         j/1yfFhmDCnsNYYc1k99l4n8j+JEL6DeJNZRl7ZqBLAZ8y3zz9ijebx48D82+6sYJi7W
         IyQAqOEZ5Bt+CbQr2QYM+H6wIdmZvoSrYEkR5MRnzXGSELUASBbuCphykiUWUwBHNdmw
         74l/iSdCZXWm8RCjN6MtYeb+3o8RHXQr+xZdvk29Pms1We0jU5baZn3fsRxJM2QF+1q+
         EMhp0qXDiLLpDYSYvoGxPk9+Y1kxM58tw20r396/TNUjgtjZeUXO4p8G/vhGLmu905Cb
         GrVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693349735; x=1693954535;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V5z5Ea0/s611VoAt5Pa4bFhJ/Bo9nHhqcd1Tv501Afg=;
        b=ivLztgnnw+zm/L/eRmQdAfkf1qx70I0R/qm3peL106LadHnpahvcKfgMSUChZz2nBu
         jR31Iyz1xpQ8FwhuiZznCnoS/7c9kPt/YwixWAbGYf5MhK6kNb/rKanroLlCWpzbgJrl
         Lv+US+QmV1t9VKLuDS0QTxYFcSKvF8tQCykBa4MQbT+CPL5gYdUjO25JKjNSr0w1Vj76
         FPSs3rTQUSptrd9I1vcmTbdIH2RW74m15hxtN8om6yUDIhkHQK4s3hZhWt1NC/NvaEVY
         NsBjRt3NHozpilMYtdHB8j01X2oAbScP8EHU5euEbxUumVwHRXcqWtZwwCvHSEg3pekP
         1kHw==
X-Gm-Message-State: AOJu0YwEe6nz/iVsydMq/Xhx14JE1WMBLfjTRKThcmNuO9P/Zqaa1Ok7
	1ChoGsXKC9H/peLZU4OQyglZFc+ddSYed/8heowjyg==
X-Google-Smtp-Source: AGHT+IFt7/BCxH0GtWiSupqqehbMdutKrtDpqoa4v3TstBRoXA/a5IYrYad6OentD54Vy4/ADeok71pR5tfNhySZekg=
X-Received: by 2002:a25:258f:0:b0:d12:1094:2036 with SMTP id
 l137-20020a25258f000000b00d1210942036mr526110ybl.43.1693349735279; Tue, 29
 Aug 2023 15:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org> <20230829-topic-8550_usbphy-v1-1-599ddbfa094a@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v1-1-599ddbfa094a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 30 Aug 2023 01:55:24 +0300
Message-ID: <CAA8EJppHjejyKn6d2H34ofX6MYG+pFNnCCTaKrDO9=P8A-WrAg@mail.gmail.com>
Subject: Re: [PATCH 1/2] phy: qcom-qmp-combo: Square out 8550 POWER_STATE_CONFIG1
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_155542_507081_34592AC0 
X-CRM114-Status: GOOD (  12.89  )
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

On Tue, 29 Aug 2023 at 23:59, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> There are two instances of the POWER_STATE_CONFIG1 register: one in
> the PCS space and another one in PCS_USB.
>
> The downstream init sequence pokes the latter one while we've been poking
> the former one (and misnamed it as the latter one, impostor!). Fix that
> up to avoid UB.
>
> Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
