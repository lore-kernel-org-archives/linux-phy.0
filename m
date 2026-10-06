Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6DD4CA5FED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 11:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7yt5fxCFPe8+4CTZUYU3k/W99SdOIJYN0GLLja3S0Y=; b=gYqqorqgBV+oE/
	e/DldzlCeTagitP419mC3Zs5hIrMtgrFCH6WlaW34aS3IDbwhoO64e8ENmpBlge45Iv1iAsYoOZIV
	mniKbmnLWjg1bCw+QrIYmnSXI6Ok7ZsQdg2QesVdGPvsCBa5NI6+6aUZAeKWbaZLX0aDbmm2b9GNW
	0tTEvAEqya8h1BFG+JlgQsyHJeW613rNg92yR/+4QpzK7aQ3BNRm5ZvvkNXa0taljxddZsOTDkqAY
	uwL/Dz6dKSb57nK0Ys9R9k4AI5m6u9qu360o3C/KwpXZlLNQQmWKf98Q4FArwHhhpYJxfhsr7lNQ7
	ElxK1FhBHnwBq+3sFqHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE3IV-00000000d5I-1AfE;
	Tue, 06 Oct 2026 11:25:27 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE3IN-00000000d4K-0QcJ
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 11:25:26 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-534e6545939so22047711cf.3
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 04:25:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791285917; cv=none;
        d=google.com; s=arc-20260327;
        b=Q5XWaQh5JB+eZhCF3Qh4l2gfHbz5lEXHdfgb3jJjgvxeAjeWFY7ogQMUDZTVirJCow
         JXUOcbyVQf0DPQgeFrxjfjBqWS2hbZOU4gW/awxZUUbajyCnWfrmJ9KU/eYxhmtN/Wyp
         o8/qCSAdh20bkc6YCytWlQFOzexPSl7z4ylHyX+6sesaw3AKeCuBi+hHyEHjoFd3DVe9
         w2KnR9/8h2Bh5I1Dw/4GM1Nv9olUVgOg/sQYDGKbc7US2uyNsKA5GT6Fv5h9UagkPFUS
         fL7imbhOKCz7lIXOJqilQ16mW7gDhMxmVXIj/CzzZw2MEVTktPgM2pJV8SvsE3+UOyXK
         k03g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=y6sbNbnpwWkCzbLbbS6HdaXNpMuoxJitrtJysJoWmJw=;
        fh=tR44Nw6Gsx33PsFNn3SGMplTHlhzs+1CbgSg6/RxGlQ=;
        b=NtOcu7Z0U1Hm5Tji8F4TwIPePqclOkSwJfWD0WumbOrW9v1bpad0dPyZmPsT7o/84d
         hOIlYC6L27TQPisLdsSVobND9wrFagMaXDU9XNViAdU/jB/5y0GGMc6xiB3CL9WJFntg
         bBcpDr3HVvV6otkOi6ic8qEnSONJvs8FvuSECK1uCZNwTILl2asSIE3FTpZsCQQij8+o
         61sY9d3uNiEiBTQwyEzTyS4FeGl0p61tzoYSoVlPc7Rp38qSmlsngLGKOAm2bQkCmTsd
         1rQcBtLiBB6xhsv0chuukmE0YB4EeyKvvPaauj9KiMyubBTGuf4+CYyyMaIeIdwvhRQE
         0a+g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791285917; x=1791890717; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y6sbNbnpwWkCzbLbbS6HdaXNpMuoxJitrtJysJoWmJw=;
        b=G0CyfLiaPLsHIasSdhEydaWI2d6MS7z4opyG3NQ/Q3c+9QV8jVSc3/E0afAiCfw9Dz
         mRUd7YOVnV4h562b4Kw0MkjaE5zk/pGsymYCGOlIOkUeFjbFouX55cuzyZOP1+/y6zOD
         AZ1WW3ETGUaP8PKt8ZQl8ahZZgVe0EpU1K8vA9Jx0zj3maorM1lXcHOzxcSKNwlgQAoG
         Y+136+zcqd+ILs2qJCjWJIBtEGSo2uHrOQ18jRIedFO2s8IMgb9Mw4kcBO7LswTvC69R
         p+5hfgfEsK5bcBdr2UHLnkwuD0NlUvHFyRlea+0tKxZpc9vOATJLgi2e4bpL0U07Mlzk
         /fMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791285917; x=1791890717;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=y6sbNbnpwWkCzbLbbS6HdaXNpMuoxJitrtJysJoWmJw=;
        b=irYxzFkeDJVmKCEhk+kbEB3kTQ1YdOfIiA6P8Qs3stkrMAo7v6ZhHot4zD3ayysBYe
         FbsyHmMZLSXZ4eG1aQ2ZJXh3UB0Zm3enOapQahp7RaiIqUfT/IdVs/Eb8nnRTGxCa1e2
         UCttMMTO1QF/shfCx5LXra045JKRZZe1GkWMvWmxDtFeLeLfXEVpsh5qYbBtA52uQMl2
         Ifi4EHUeBa/YjqAZXZb5i9P/h4W/9KgODl0ek2l7e9RLQvtRtEWpLwf6+iVuenC1QsLm
         0co3408hzykfzOoF0X0F5b0zVmAlqudVvSJAgdY4kpL70b6FvE0QvJKDsSE958xj+F2P
         0tOg==
X-Forwarded-Encrypted: i=1; AKwUvByO5LAWSAgg9YIBNf0d1yUL0UpkQI4Rt1NsOBJcGhNE6fv2d5RCtcOfq3aqTs77GJ7heGilva1OXfM=@lists.infradead.org
X-Gm-Message-State: AFuF++k4xW0t2IoqZD+Av6Twq/hmJTCBmCwjhk8b7X9NpEWwuWMTtOvp
	yflGKPnLO5+axo7eUF8V1ZWekUgC21BGy08ymsCzGRF5e+sCfXxfgkSnBklTZ8KXgnr6nVMw1dj
	dHr0vVxJGh1PRU8Dx3lTeiJcuqtCkhQU=
X-Gm-Gg: AYBFou0hAHLfxwHYn0X3282qOYzMZLvYYiPb0xTZj0ipjl0NQ7L8s6WpSX5gKrzGm3z
	iosvn+tjGqUVKiEvhC/s/KgI3XOOOWnGS3DIv/odVrG7woJQCddRCFZS4agdjCaSjDjEfbtZQMm
	ZL1UbGa5uTB8yFvyCRAq5nr8cFm/rQdbOxdWNzSuJA7sTyJficLAU8NyY1tVu3snYAxOZzuoe1X
	THnptjvk1ud32Cs1Pt4Yw6p65vva2Mj8Qi0Qh7+wRX8P+03468gZ5kThrFIYUKFCFCymo1lrUce
	1I+KI/jUHZffW2CGbXa0D2Oov6hSbWllx0u4qakZ5lL4Ut6b23w66wabaG4hAmbQ7u5IgF72QUb
	v6zMLVgGP
X-Received: by 2002:ac8:5707:0:b0:532:f0a2:ef4 with SMTP id
 d75a77b69052e-53511e431b0mr182844541cf.26.1791285917373; Tue, 06 Oct 2026
 04:25:17 -0700 (PDT)
MIME-Version: 1.0
References: <20261006102937.10972-1-ansuelsmth@gmail.com> <asTRQ6d0-NYOeHqX@parshuram>
 <CA+_ehUw8fQHGef_L7YPQEf-wwuzP9km=G64Ty3+AkvM=fkNJ4Q@mail.gmail.com>
 <asTVqsqOLb29LY08@parshuram> <CA+_ehUxra53C2N8a0t73nLpS4DkaNSzE3STfhU7j3ZoQ9becyg@mail.gmail.com>
 <asTYlWdkrlci37FB@parshuram>
In-Reply-To: <asTYlWdkrlci37FB@parshuram>
From: "Christian Marangi (Ansuel)" <ansuelsmth@gmail.com>
Date: Tue, 6 Oct 2026 13:25:04 +0200
X-Gm-Features: AclHuK-2iwD9Pk70twNlp_Yt_RVNdVYY6IjBqwJqtLPrbBVE4V3UaEW-eP-1_m0
Message-ID: <CA+_ehUyGgaodxKH_RddpaUXS44w=eFpediyQqEYhvJZ8LBKRRw@mail.gmail.com>
Subject: Re: [PATCH v14 0/3] airoha: an7581: USB support
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_042525_460715_04B4D705 
X-CRM114-Status: GOOD (  17.58  )
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

Il giorno mar 6 ott 2026 alle ore 13:16 Vinod Koul <vkoul@kernel.org>
ha scritto:
>
> On 06-10-26, 13:07, Christian Marangi (Ansuel) wrote:
> > Il giorno mar 6 ott 2026 alle ore 13:04 Vinod Koul <vkoul@kernel.org>
>
> > > Okay so we have a cross tree dependency. I would like my tree to be
> > > buildable and not depend on next.
> > >
> > > I can
> > > a) get a signed tag for this from clk tree with the required patch,
> > > merge and then apply this series
> > > b) postpone to rc1
> > >
> > > Either works for me
> > >
> >
> > Maybe "a" is better for other phy driver? The pcie move patch is blocking
> > other airoha drivers currently.
> >
> > What is the procedure? In theory just the dt patch is needed, nothing else.
>
> Please send me Pull Request with a signed tag from clk tree. This is
> typical workflow. Is it soc clock on common clk tree? Stephan or someone
> can generate this and I can pull into phy/next and then apply this
> series
>

Just asked Brian since he merged the 2 patch series for the clk.
I added you to the relevant mail.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
