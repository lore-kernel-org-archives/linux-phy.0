Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9C1DC25B6E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 08:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QrCRXYPwRgEEX0RllmWExma1VDkBoirEVr85Ds5n1NI=; b=bvo19x/08acBzc
	VBQSPw1nqU2BERc8gjSC+cwjXEryfWJ68yWxnkBHau7TsCcL6yO21hf0kczJYS2QWRwhOiMRV0T/B
	Uh8EpQYKFnLyAsS0tdCEK9WFePyiFj/EglySfVOx8za06orAOraMx2cgQRu6Y2X0NbEtZKhhv6jQQ
	Y40z7+2W3OzwMK/U1uInyy5RgcKG1VOpObXA54PGT9d5qFYze9WuFqx5/ZTnf+f5ezXP9hUPLr8fa
	vPYDBxuPuaWgWdlNqzhulijuLg7sJHPd2c89mNDvtBpX/midpJeAUxRzbz3w7Y0CLaTBhudKv44qt
	CAJPzCLAbFIVvYNXbVvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvZhp-00BlLn-1V;
	Wed, 25 Oct 2023 08:57:37 +0000
Received: from mail-ua1-x92a.google.com ([2607:f8b0:4864:20::92a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvZhn-00BlL2-0C
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 08:57:36 +0000
Received: by mail-ua1-x92a.google.com with SMTP id a1e0cc1a2514c-7b9b2ba34d3so513170241.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 01:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224252; x=1698829052; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7NldaKyDc0l1BbJHjiT+K+qAycYibl9MYvEsSpwfuMU=;
        b=alzNarzQiXcCd9zOt1B6nqDl2kqOju4nqbMS1FX8TKsMepExrs35hyZgsrI3/ZXR3n
         0JM6Pz/skFCdvHdMnnWNLrUtn/g2YfrwuiP9NGc/TTYpm7xLxQNsSoe09SK5wR1qg9TN
         uzZ11z90U/Fj+ooNdYPXA8vZ5tanMC334gkBbkQ17F6xXXakgTsZ2ikSSYtFnWWlzm1p
         lzzAbguq3OfgQkNgtt+yTQ9C1VfBHfaK8coTPAw0hKourI/BW9qjhqNiHiHVvrWpBDy9
         LIK4rlPcgTqsD0ghJFGzqnQngFz2cd0ghYpnBvPK78Xlu4IJpAdjJbezBVkhCS02V5JQ
         SFuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224252; x=1698829052;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7NldaKyDc0l1BbJHjiT+K+qAycYibl9MYvEsSpwfuMU=;
        b=jxEcJ1ZEFsCT1ml2juloBTI2Ju1rubK4RKFLBHCiLlOGrsBaWKFqDvkRTSVkRITDol
         5RLFFnkvhAFyXZiehsI8zASaADuSlINcKj7vwfB8/oI92Sb2Ce89oUR9U6c0pMpqzrld
         T5W7BIpbyLoUQxDclGHqyR2WmYBAwwhAUWjVPyBj/1PBzigrCygq9puROVtnsuqgCxq+
         5MSbltavClaoqK3Bb4+jcd1C6aC3Cz7hk0rRS6EUr9gA6Z9LaLk7241xzk6j+zu0C87S
         kcw3L7VIf7FFTVgmCDH3pSVIfwPBtOxkB93taDJ5iL+g62wsqJWXoiDBw1bN0ETu+NBu
         GRdQ==
X-Gm-Message-State: AOJu0YzqZTZY8DOQ/7fZf1UzrJgmDKhTqNGKD6ffY6GxO/ttgSMmQEoH
	qfGqRDexCPfJuK9sgTdn8k03TokcrXOCvRk4Mqam0w==
X-Google-Smtp-Source: AGHT+IGhheo8Q9Df6KgUGR4PorlbsZsMr3I2+FSZpwFZ03w3W5uEdV5Ej71blcICjUAikq6NvJLTs/3FHZXoJH1v/m8=
X-Received: by 2002:a67:c313:0:b0:457:66e0:2c6a with SMTP id
 r19-20020a67c313000000b0045766e02c6amr14079783vsj.14.1698224252025; Wed, 25
 Oct 2023 01:57:32 -0700 (PDT)
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org> <20231025-topic-sm8650-upstream-phy-v1-5-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-5-6137101520c4@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:57:20 +0300
Message-ID: <CAA8EJpoxdVNvwbEyVVF65FWVQZwydXvePCTmurF_6G9taQRJfg@mail.gmail.com>
Subject: Re: [PATCH 5/7] phy: qcom: qmp-ufs: add QMP UFS PHY tables for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_015735_104991_D3F29453 
X-CRM114-Status: UNSURE (   8.61  )
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

On Wed, 25 Oct 2023 at 10:46, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add QMP UFS PHY support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  1 +
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  7 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 86 ++++++++++++++++++++++
>  3 files changed, 94 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
