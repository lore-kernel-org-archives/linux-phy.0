Return-Path: <SRS0=mYmN=QE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE1CC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 06:47:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 796F363212
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 06:47:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 796F363212
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlmZGL9n/QavmFOYSvCCT9b9oguQxlIGdjA3AHGCIn0=; b=gWkCGbVmZ+9+lf
	fjf5iHQ3VZ5mljBMCrHXgegm/TS5p4V+x+/McbpLNlrD84yf0/xUiiWM6ZX+T/z5rx0yfdg0cx+Vn
	6S7fEwCX6LavqHAT19m8nQFGIUCvqDyV8jr2bm7GJRcqkUbEVGanPbhYNacqDvMU32QJ413uzyG2v
	XUFggcGFQYRMcr/t+kApq2RemqWE5Zh97ixDKzQ7GCmvbxQaqq7i0PFePjYyCZMBBCXqgFg+KBYcV
	deCvu3BZEo/91ARBqOtaDVUjhKCldkbUjzBDIdLedvBLubFcRrjoI8qv2l8ronR/tXWICpGHOOw5D
	hWzvlrhUH8LoLEJqys6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnEjH-003XTe-Ri; Wed, 17 Nov 2021 06:47:35 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnEjE-003XR4-UE
 for linux-phy@lists.infradead.org; Wed, 17 Nov 2021 06:47:34 +0000
Received: by mail-oi1-x234.google.com with SMTP id bj13so4299929oib.4
 for <linux-phy@lists.infradead.org>; Tue, 16 Nov 2021 22:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=Zak65d0llgOFfhY3hybLsYtI2ouYCuOebdLehBe3uDQ=;
 b=kJDBoZqckhA1ufpBGBrbzY8MhU4rh7qrsdI+cIC5Onil2qj5n8EcSnY0WEtjtyGLH6
 IE/58w4qBV0Dg4fs1Ihrh+8iFniCCSX+CO2qsZmSt4RYPtxda+aEyP5JJWqSuRzIdoZX
 Tf65fEItflO3+FzH0pKzrmGdQZ+jfOE+Ak2cg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=Zak65d0llgOFfhY3hybLsYtI2ouYCuOebdLehBe3uDQ=;
 b=v6CNLX+6Nfuy7K9voqoV0ICfSJimZnV0BSJ00XWkqs5fTOx5KQX+e+NldgZUlPuqWx
 4r0lDGACYRyj4NvN4+G/0tXLtjnbNPIQEv5nfZnQO1sb0+W5okBur3lm4L0mNuTJsyvb
 T0siIqReiRAqu2Wot8QxMaqIjIYO+/cF0QuRAAQRpn/VLuq+YvtbuzX/jRSbTrX9EFO7
 nWv0Eid6uwnOuDb6aDHjMb/oEeiAglWWTBnXtEv4tnkl/70Aar/CUVfxiPZD5M7rIfIi
 OQy/Sa0xAAwoi2jKmtokSeklsX4VTHb5CeS8CFR1EHzUtHpYTh9oKyGtMydhmqjwus0O
 Lcig==
X-Gm-Message-State: AOAM5327LSAz2FyeDrrIJnX8iaRF2fpL8wEozD3YL1+mOCaXNzO/OsOZ
 Z1lePSlQbE5l2xcqM/9zjXdEUUOErgrRi1qm0fL/Og==
X-Google-Smtp-Source: ABdhPJxXlEg2JLK1FcPrTGa04zmneplUZhBuAZ+dBWt9jp44No5UGmnqM6QBox1hxIZFuPlSyhlYpe0evSb69UmBqWU=
X-Received: by 2002:a54:4506:: with SMTP id l6mr58797206oil.32.1637131650176; 
 Tue, 16 Nov 2021 22:47:30 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 16 Nov 2021 22:47:29 -0800
MIME-Version: 1.0
In-Reply-To: <20211103234410.1352424-2-bjorn.andersson@linaro.org>
References: <20211103234410.1352424-1-bjorn.andersson@linaro.org>
 <20211103234410.1352424-2-bjorn.andersson@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date: Tue, 16 Nov 2021 22:47:29 -0800
Message-ID: <CAE-0n52XWvOsWm36+ucuwbOa4ceKRAYWFtPnD3Xg5emfiQGK-Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] phy: qcom: Introduce new eDP PHY driver
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_224733_009616_F50F6220 
X-CRM114-Status: UNSURE (   8.87  )
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

Quoting Bjorn Andersson (2021-11-03 16:44:10)
> Many recent Qualcomm platforms comes with native DP and eDP support.
> This consists of a controller in the MDSS and a QMP-like PHY.
>
> While similar to the well known QMP block, the eDP PHY only has TX lanes
> and the programming sequences are slightly different. Rather than
> continuing the trend of parameterize the QMP driver to pieces, this
> introduces the support as a new driver.
>
> The registration of link and pixel clocks are borrowed from the QMP
> driver. The non-DP link frequencies are omitted for now.
>
> The eDP PHY is very similar to the dedicated (non-USB) DP PHY, but only
> the prior is supported for now.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
