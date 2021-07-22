Return-Path: <SRS0=SrD0=MO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F03C4C4338F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 19:31:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B29C460EB1
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 19:31:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B29C460EB1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J52CG4LKp1vDk7had3KhNN4/H8hcEV7+VIMEakqhh9c=; b=Ufg48VkwgseXFp
	cSl5Hal5ZSdh1fIFnPCkLRzzmWElG5dPfXsE7VkJGDGZ7pxsLGSl+/3PEP/B/FdAdWA9rVlqvq+tk
	SJxrIsqjnQSv0lm7JLwctxkaSSm49YnxhlQmmj8z0AMz7lh+z95xrCUIKmZ9ci5hhuN6z00ecymhn
	7HSacaixDaCMMkV5Vy6pyhFO4WeTsPOfrpkK4s5Wi80W11rDYjd0uJJM82x00QEUyWDlJfKYe/XLM
	Ge5rGIn/maSHzH5l/tAEMZ76T+e0wqw3u0pdR5Zb/i283kwY+roGK/Mo5K+s+xyRjQqlx0NFdq27c
	Fz9WN8mst6yBXZgYDiqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6eQE-002ZVF-8L; Thu, 22 Jul 2021 19:31:54 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6eQB-002ZUd-VY
 for linux-phy@lists.infradead.org; Thu, 22 Jul 2021 19:31:53 +0000
Received: by mail-ot1-x329.google.com with SMTP id
 s2-20020a0568301e02b02904ce2c1a843eso6320711otr.13
 for <linux-phy@lists.infradead.org>; Thu, 22 Jul 2021 12:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=3DPSLi1ybTov0O3fVuhOjatTS2Xdr450c8Bfvi+v/u0=;
 b=GqohWEvgFPJC3JRlNzTRsN23DE727KvCgqmYzDx9xP2zTrTlCe2yEmDIMYGRLKzcTj
 GKW94djcAqQ0Ad3gH1ni6cdXVomMkQkXdR+WpuRFETT/StZvuTroYsQWZDMyyJy5Unn6
 Y1vAA4AeLgB7qZRtvOiM1F/LMgvfi2JdPuX+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=3DPSLi1ybTov0O3fVuhOjatTS2Xdr450c8Bfvi+v/u0=;
 b=NKjNwhckI6fu/zXUrynQbtCTidbFbbOMZx8hMlDb9Zc7q2gEddDj+vbg73IQ1fgfTq
 AlpGap5yMV5jOk9pDWgqSckJX29ddAmwBuCuX9gRWrJ1MMdCGZmSLSEidRwdtIaLeclW
 0os0FyaTW6zOfCm5sXHkM/q7cRt4qgCDAbVXeS4n6zbkvNP+J+mtrBXZy/UZXSilYYW6
 senxYgU/bxoIQCewyAAjTvJpBtxQWZJp8qSXYjKvV7BBxmCBWnTJQJEgqJdgQ3nj4Czy
 wvuZAyjdK6qBPVn9pN+By0E/3KKFFhZ6rvSFeeGL0U1AHYhc4pjB+aQYHAc9uY9B8JOV
 GDdw==
X-Gm-Message-State: AOAM5323CBmDx1KE0EjPE4/Le/rxS/Xcv1g6j3oQLpZ4FN7mc/6D4ti2
 tzE2fiyfPCa4+hNghGVcdCqTqO8b/gw6pU01nOS1ZQ==
X-Google-Smtp-Source: ABdhPJw9ktILTFVqvmgK8/4f/ODg5WVoOdDcD7oHmbTkk7H7ihrgo6bxEqQNWbmdgqFDdtUm/MTGlBvbs8tOcVDnNms=
X-Received: by 2002:a9d:8c7:: with SMTP id 65mr906170otf.25.1626982310796;
 Thu, 22 Jul 2021 12:31:50 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 22 Jul 2021 19:31:50 +0000
MIME-Version: 1.0
In-Reply-To: <20210722030738.3385821-1-bjorn.andersson@linaro.org>
References: <20210722030738.3385821-1-bjorn.andersson@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date: Thu, 22 Jul 2021 19:31:50 +0000
Message-ID: <CAE-0n52n=ci=k-1Q64L8_pjpjmmxZ74fHUQ4i8rBiOSFS0o_mg@mail.gmail.com>
Subject: Re: [PATCH] phy: qmp: Provide unique clock names for DP clocks
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_123152_077751_5AE15A21 
X-CRM114-Status: UNSURE (   9.56  )
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

Quoting Bjorn Andersson (2021-07-21 20:07:38)
> The USB/DP combo PHY exposes the "qmp_dp_phy_pll_link_clk" and
> "qmp_dp_phy_pll_vco_div_clk" clocks, that are consumed by the display
> clock controller. But for boards with multiple enabled QMP USB/DP combo
> instances the hard coded names collides - and hence only the first
> probed device is allowed to register.
>
> Given that clocks are no longer reference globally by name and it's
> possible to replace the hard coded names by something unique, but still
> user friendly.
>
> The two new clock names are based on dev_name() and results in names
> such as "88ee000.phy::link_clk" and "88ee000.phy::vco_div_clk".
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Maybe we should make this a clk flag like CLK_NAME_PREFIX_DEVNAME so
that clk_init_data::name is prefixed with dev_name() so the caller
doesn't have to do the concatenation themselves.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
