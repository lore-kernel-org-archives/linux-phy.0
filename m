Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A745C55171
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 03:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VQIFpv4NA5bpCWuZHdXJi9mC/GcCftScvrIq6MprV8=; b=QhuMQFS3dqvoG6
	2OB+zB6VH23VYVwK9L8YIIe9L1JsFkRimNZe/MUVlr6roYmCpeDKAj4taNgjXRWBkM6EuHnQ5RUJ9
	6KPr13XVC+DtKW/ArIu0xUKTHHZyOxRe0QHUlH4K6oAAVEB881L5rUerYyTkE9MVDJ5ITCJ50NNOR
	XodU2JYaRqPaALcnP6/ak3sK91oOBWmXsba5xW/HOu7B59PNKmUSn5Hz+pXJdfqZi5veybkPfRe54
	B9e3/yWZFgJzLFre6cVIdIwQsphn+tgeDsGvtoa4K4xzPv71lYU1z4aSN0GXO8USY3W2qeP1I24JU
	u5oc1YJNHxU8Q9mXTV/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMsB-0000000FJ9L-3LR6;
	Sun, 02 Aug 2026 03:28:23 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMs9-0000000FJ8H-0nnN
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 03:28:22 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c15f8dd6f18so119996466b.1
        for <linux-phy@lists.infradead.org>; Sat, 01 Aug 2026 20:28:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785641299; cv=none;
        d=google.com; s=arc-20260327;
        b=GQrb3QI1KtoFCltVkm05ycT6p2vFG0idSe8d1NOFhmaMzNyhYC3ZG/2aicXuPycuFS
         dC1haIB2rkQAjbGy2bswrLTusgJ3UA/Xky5g83Awf33QfZvMItSKe4vEHqdpmabkghYi
         UudhJJbofbAdFesJxHt804wqqiyeDiirogINQle+ltcftwFI+HwfqeI2RJH1T3CNBBcP
         SKmiCaPPb63hmQI2BWwDabg+VyD6yGvStsRiuZI6p/o0f5eb+7HCPo/Zrcqm7Mrn5mUM
         YA/eNEAW8zSdle9/Y/i6L+pSaKjyXZbEEKNIV2l5cZTTRME8Qt+r3yPw3U49kzzJEPqb
         VREw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/0w0YO134zBV85YwnHp+km6pCsaY5x0vppPkNuKA2EU=;
        fh=LI+8LqTvO13lts1cjmdJXOwiM1f9anqmzphmnsX6TlE=;
        b=M3kqqkCU5lkHBipvOA6Ga7M8e4qdzXt4Jime3wyssLl/Zr+0fGZw0qxJQ0psDEGFEg
         hH/Zefis4mtF60Beg0gWIU+Dy+hzL6OB9iGmIUlkIzNSb3OgT+ejMLBGCfbpjdxtcbcb
         WanLzYUVElp3xOI8sJnk3FiG9q3QCV3TAZzvUGwwruKC4BlDS1DXePn91RWWc/XkSdlw
         RkTC7fiGOP4IYWQLL8dd95QjLhL6La5rfDt9uAxH5uYzmc5A9aOU11iAOPtd8cnToOsE
         qIKKcmd7iyH4FwxadC3750upkYc3eQD85wqyfRptFKCMpWQVLvUkF+syvH/BydwDDOLQ
         hynw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785641299; x=1786246099; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/0w0YO134zBV85YwnHp+km6pCsaY5x0vppPkNuKA2EU=;
        b=nngi+JHYnNGLJxw/hxhV1KJKSyAzCwFCE8UnrNZM9iTJojangKvckyIQHOktORKegL
         VRYnIluk221IdyccQ3BB5dZEvvjH9bvlbrwZNy+MLiBZqu4reZVwHAmFrH0mdshcsy8n
         hwtPdSKi/2hjFpsVm7YW5xHSRrrOb4lnOmNjS0JJpporzvJ93jCI/qpyI27evTLw3FTb
         f7LCI4yvMaPcwjXa3QUNpsW93pYI13D69w/qs5R3AsTMnvnYqomEFQgBGcgLjyjSkugl
         66nc9d97yf6SL7fT8JuxCfWA5JrKek8NrxyhZ6bYw/UA4JV3nIYlJ0jEQrClZJdaMfFO
         7ivA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785641299; x=1786246099;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=/0w0YO134zBV85YwnHp+km6pCsaY5x0vppPkNuKA2EU=;
        b=CkwVCM2Ra3NiKIFHLwOPSJMvGVRlCMTU+j25jJJb5LEA8anA61eT8xDrbsGm0232M6
         dQmIK9XeXaLUK7HlGbFN39bMjdNoqzF9vPLZK+aHfCj7G5FQYHrPlB599eWWFNBVtUh7
         X26XofQJa5fmlabBjh5LMJ55fMKYH5eppsQvqNsN1qJnIAQRpFUF6q0oxLlaVPr9KGVJ
         s/Q9+bOCMr62T0UaFnTTRQGc1Mlxjxs4kuTIK+Md1P58dt/HWYfSqFbChfwsLpLGPBxF
         0ypY8qszkV/JnyKCQa10q6SMOb4xamzoabFwXWNqYhsZu2b07IVH4Jcj09Udk4wsAtP3
         PNzw==
X-Forwarded-Encrypted: i=1; AHgh+RplnBEoBXieK9/NuDwsXFCwDZePjwy1NRzvrHTmKHRYb3sJQL1mVIUyOpglQF9eLEIsdQ0sHRMWGW0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwgTZyRIox7RslP1UX9QhUuNzgAofjSsY0G2YH/YITJTNTLfK/Q
	NQpjbXVZLrAH9Ui4IP+byTUt6H0GcGYPC46ZHE4lSt5BY9mUcbSN/gD94p0Ik5PwntHPgApuvo+
	nzrtHqgiv40j8UzVK1USmjYme0RbQnMM=
X-Gm-Gg: AR+sD114mOAqsQpCPPkOPDv1pEk7tsyFHXJJ9zYawD8NA8aM1vA/kGGgoKSkGWmEYLD
	N5putPVkbhrXJBkOlONWzGzPOE7cOivhm8k1Wr9rQeyFEjWxZUcATHbEliCTyJcLax+8MgUe1ef
	xEAL1odwnxAZ8chMYeGplP7ToUnQ/nIMnXkMYcWmR3VG/nzgRren5NNdkjsCSsn2UqoCXK/03P8
	3WAujKpVLBBSgxduVwSLqEdXVNJo0vtokTZAoER5dpZlo0QPovWaxafZfZER+JLsc6FXZgAmTJJ
	zDPLkGu//d2oHoZVkWry0LnUfQnPSqQzr7K4V8k+qRnJnH57k55h4pilG08=
X-Received: by 2002:a17:907:7b9e:b0:c20:768:af62 with SMTP id
 a640c23a62f3a-c200768b973mr9148266b.22.1785641298865; Sat, 01 Aug 2026
 20:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-7-coiaprant@gmail.com>
 <2847036.GUH7pLUipS@diego> <CALj3r0gqvFZPb2SKRMPwf9chCx076rwCnXEoOMFch_V-fOKV6w@mail.gmail.com>
 <0e9d16df-7332-446b-9321-ce3de3111ffa@lunn.ch>
In-Reply-To: <0e9d16df-7332-446b-9321-ce3de3111ffa@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 2 Aug 2026 11:28:12 +0800
X-Gm-Features: AUfX_mx4aMsgyN6RI3IxSSP4ztvHebSR5krnQ6YdL4RSbunpB8OT85Rvkz3cx3w
Message-ID: <CALj3r0guMmNRN4EBbKz7stPNMSqkLBvms643YXBEDMzqHHM=FA@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] arm64: dts: rockchip: rk3568: add XPCS and
 fixed-clock nodes
To: Andrew Lunn <andrew@lunn.ch>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_202821_238684_B3FAC5BF 
X-CRM114-Status: GOOD (  13.39  )
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

Hi Andrew,

Thanks for the detailed questions. I've looked into the clock tree
more carefully.

> Do you have documentation for these Combo PHYs?

Yes, the information is available in the Rockchip RK3568 TRM
(Technical Reference Manual).
The relevant clock tree details are also mentioned in upstream
discussions and patches.

> Can these clocks be enabled/disabled?

The 100 MHz input clock to the Combo PHY is a prerequisite for its operation.
It is generated by the SoC's internal PPLL and fed to the PHY through
a fixed divider.
It is not a gate that can be individually enabled or disabled by
software; it is part of the
PHY's fundamental operating conditions.

> And how is the Combo PHY fed with a clock? Does it have an external oscillator/crystal?

The Combo PHY is fed by an internal 100 MHz clock derived from the PPLL.
Specifically, the PPLL runs at 200 MHz, and this is divided by 2 to provide the
 100 MHz clock input to the Combo PHY.
So, it does not use an external oscillator or crystal for its main
reference clock;
it's generated internally by the SoC.

To summarize:
- The 125 MHz clocks (xpcs_gmac0_clk / xpcs_gmac1_clk) are outputs
from the Combo PHY.
- The Combo PHY itself is clocked by an internal 100 MHz clock from the PPLL.
- This is all internal to the SoC and does not involve a board-level oscillator.

I hope this clarifies the clock architecture.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
