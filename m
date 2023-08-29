Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 546F3C71153
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 22:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHBiGuNxqJtgFjUCSXVhVzUpWk0CkkVFOj9IUGo378Q=; b=ihB902bXZ08xz1
	yoc7dQvPRp+CR70fdcKInABroYQLtlo0lyxV3wGyEJGJWkjGb5o54VGS09ju7QwFhbis3vWH4JrLf
	vTHxf5czV66uBsmOJtkwaVbrFgjOuMOBmAQLKu5W4oWo6eB3DUXa6OIfabaHWXIc3qm4PRUvUt2RO
	P9X/3QfJy7FZRbPffz0idwtqTf2IcO6HSbsWRqyAL3jl3HzNE3KGICT7YKX7/+9Kb62QIwbt/a7i4
	d7VS8XNXxEexT/0pOM0/7S9XuGOxj25kgCGgcXxSl6uAH6EXVxbnc6fdCItiWw3ZuApFMSaj7BRav
	cRZg7gl2/aB5aISzKzBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb7cK-00CPnq-2d;
	Tue, 29 Aug 2023 22:55:24 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb7cH-00CPnP-0f
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 22:55:22 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5924093a9b2so56898937b3.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 15:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693349717; x=1693954517; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P2u9eHDv6zDt3qUvTnUboq/0Gycap8bgV3JrR3CLm4A=;
        b=oFkpzEmQOaak352JLEKidlM2ixkbI5JEho03V3KBkOwz9U9RS5UOQeWoru/AJ/ORsJ
         2xLteRzC5peE/FCIgT9rGU86PsQCd6vcw+YwSwEfm/DKoMP0frmkHIHf+V7IaUqChB0c
         1iSrUl0wm+jM2r/iP+gyNren2iQgt6GU6qIKxdIDkCb/IychBm1k9RcqsA1BAEXCoh0p
         NrMP8kFaCcmJ9SqSyoTjaYZZB0bKkTdZNo+GRvY2V9w+CbpiWRKSjPIE+KrZ2BKxd43D
         NVwcTyQj9kCwySKTyK+0CWfi4VRrD2/EV7D3oPNsNNHUNLAljzF1zCy3WK1YM7Hcd6UA
         G5OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693349717; x=1693954517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P2u9eHDv6zDt3qUvTnUboq/0Gycap8bgV3JrR3CLm4A=;
        b=MiZPUyBr5Xp6bK0PXn6mJoT4ciXc3+oMpUvfsJ5CP+evnlpHoZZEgUUcmytmupMHH7
         xUaUcQayx82ayz6MAfAkEg4V8daUUebwEwlU66z3+8s9TCeEr+BMUeYVOWOClRzTuIOk
         qsXlul+6JN8NYiiyrFJ2vHkNOk6hpwYE5r6TJw97V/WENwE8GfpVMk++pX4LUBzYfEIF
         2VBMc+62AIHVrSnQcKgNydHybobuNCbQ9I7v77RoKoR/bEcMEAL+sCFnP85JpukVZJni
         OJ+TlMRL8x5XtqZxw8/RK0ROAwpsM15dMEZ/T077jKCXNwXhEqqqXP44stT13TUldAGA
         UE5A==
X-Gm-Message-State: AOJu0YzTCoRPBpd5FMPEufE8tp0Cz414ndIvTPLEwbzVPQTS9LSz30X3
	SGbIS5UyaaltwD2jZAnbrLGwrQt4YaqqNoDap/E3Ug==
X-Google-Smtp-Source: AGHT+IEt0MMLud4idsEPRLw/80VIhj8FyRh7c3KwWk9LHJjlW0wSm8WxhXhKRgacxYdzVrpfoBOrSBPNWsQp/+9hN28=
X-Received: by 2002:a25:2d0a:0:b0:d0b:5b6:4629 with SMTP id
 t10-20020a252d0a000000b00d0b05b64629mr545287ybt.46.1693349717248; Tue, 29 Aug
 2023 15:55:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org> <20230829-topic-8550_usbphy-v1-2-599ddbfa094a@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v1-2-599ddbfa094a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 30 Aug 2023 01:55:06 +0300
Message-ID: <CAA8EJprJCQo-YwwhYYE54kzbu8nsw54Qca35gq833=y5YvGtLA@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-combo: initialize PCS_USB registers
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Adrien Thierry <athierry@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_155521_294036_DBF3A952 
X-CRM114-Status: UNSURE (   8.51  )
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

On Tue, 29 Aug 2023 at 23:59, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Currently, PCS_USB registers that have their initialization data in a
> pcs_usb_tbl table are never initialized. Fix that.
>
> Fixes: fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate PCS_USB region")
> Reported-by: Adrien Thierry <athierry@redhat.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
