Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 922C0C77B7E
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 12:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMEBtvc+NUW3p5wGYPuU86bQH7MKSABUt4tMqG1oaMk=; b=LqRyIdzNw1WDpQ
	VgMKzkX4YueKh+ez3oSBv3JpfIws//oN7KZRSloP3dRDSPNi3XylZ0tL2AEHN0j9ahlXYImyH6IFk
	Ts9XNl/KMZJbDDPneWHPgCQ9R/d245kBVs49xarYHDe2HyEK1n9eGofSvXzRpSFpzoBx00DsdkPP5
	cka6GhuRXM7zvzu3OGb4yoMGN9jVyTfO7qo9wTexuACPVhD18G4bbdVYJQkFYnPk/3wtSqAx2pysA
	GZWDESh/vgzE2i+sNBZdcB4jbmrWV1gz0xvlDJH9ZCDy/Y9PfdqBJs5/v65p2PlaIy1/DaztxUHO/
	jCNEFkZ1LIJUiQ2XYIaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp4F-001ORI-0a;
	Tue, 02 May 2023 12:25:15 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp4C-001OOp-0s
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 12:25:13 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5529f3b8623so34418877b3.2
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 05:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683030310; x=1685622310;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q4Hw5C2nBtTZEgNPrdfSn+t6iOR/tfBPufkhXcH+Kxg=;
        b=QQ4wxKtCss6/4ZKcVhJ58uIueD7f6I9RxpE+EjGkvaKQ7NCSo9GJkNcFeAMq17BqKX
         5XGp45Pg8BCDAPEAOZ0QokGy8QiQtRaMel18hgI8JcnSWOiMVRA4Z887w4td9DKo7rOE
         kWSjSfmlFWMCFK5/WWkwEvj0emiW0F1efObLgJ0w/pBQDXtTt8Uh4yxDP5kqgc+HeJhH
         ayr4pephHfHFTTiFzSe+89TldMyyXoqGmdvNEIiXVXIKldgNqLmJEkBc0ld0CTHSrQNP
         MrfoHNWJcyPmoeSeRT2Pxuit5hsfH2qtekwZ8psK8rRqveQrlFYPUDEbt16OZyeilFER
         vcQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683030310; x=1685622310;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q4Hw5C2nBtTZEgNPrdfSn+t6iOR/tfBPufkhXcH+Kxg=;
        b=LS/1BKLfOGbl+a7NVp8W/QFyGj+rEZqCYmnfAr41WYOqtwKl4Gvx0tdiM2LftGyUJK
         cGD5uQQDuPSAJ0citmKHuguvEC2WtKp8LxxVdJGGCYq+KcLTwF1CxRS3l7POKHqXCEub
         ZVKYm5y3tQq2X7ElOg5G9caPtsdVoR6/VOHjd/Dn3YqGImdq5sF42yAkXgOwJjcIr5z/
         5zOpiQhnoHuGmx18MfPDz7PdZ25um4Msx6C3yXR/L5TDHxLWzJwTG27GYdARCvQ5FFmY
         sFFCX9TsKxrImNozYZRriK/HMOt4/nmI/iSFf5qoNRGTtkqkYOgVF179N0Bql3n0DKt/
         KI7A==
X-Gm-Message-State: AC+VfDz0YK2m4L/5HOF7UiAj89lzUPpeWJGPJhlIIK2kCc2/l8KvZN8C
	Ex73jO1uvO2eX0jQdgiTz/x7x0W+IdEJqv7o+/YMEw==
X-Google-Smtp-Source: ACHHUZ6v6SYwJgYmFk960nJNzc2XOxvg20x2ZYqapVYmLFWHnVY6odJTA9csZyCbabHxlhfojWaHkIb5SPxpM3Rt1AY=
X-Received: by 2002:a0d:c683:0:b0:556:ce0a:5a16 with SMTP id
 i125-20020a0dc683000000b00556ce0a5a16mr15407859ywd.44.1683030310357; Tue, 02
 May 2023 05:25:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230502103810.12061-1-johan+linaro@kernel.org> <20230502103810.12061-2-johan+linaro@kernel.org>
In-Reply-To: <20230502103810.12061-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 May 2023 15:24:59 +0300
Message-ID: <CAA8EJpppgFK4N61XT+=VXTfWYVjA16Maoo+hEo4YyaB7HfGiCQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] phy: qcom-qmp-combo: fix init-count imbalance
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_052512_312807_8EAD5D1B 
X-CRM114-Status: GOOD (  11.57  )
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

On Tue, 2 May 2023 at 13:39, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> The init counter is not decremented on initialisation errors, which
> prevents retrying initialisation and can lead to the runtime suspend
> callback attempting to disable resources that have never been enabled.
>
> Add the missing decrement on initialisation errors so that the counter
> reflects the state of the device.
>
> Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
> Cc: stable@vger.kernel.org      # 4.12
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
