Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 606C5C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  2 Feb 2022 21:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BF1JJf7SvEiBOrIgpdUptRHL1Br8E8LTphKaN7KCzI=; b=Ubh/bZzLJD3EwA
	2I6Lot+YRDbSY7j1BCRfqTAaBmFDe6Z4MqXMgv0tkM25FZXBmEm0jf0ln4LSkBIR9KqoW17W3Opcn
	fb257dLT3Bb9CUbj3Z/KudrTq1XfskiBNBp2VnB/zj61fv08Vhv39clJe0nFDE/TJ9/CqSSPyJlYD
	4R8waxSWCS0echi5r4oDP7vtFIIVHvt/8MWsm3n13o6UpJ6Fmty8mxAvkNFS87h0k/WHjZotUpFTr
	JJapZ9LW/sHKbOimiTO9uejT1hUncKHibt8x+1Mazz8LXQYIDgsPKveFnETkmjzzf7iueYMREZW1I
	WOEiRIqYHR8AF0AN5W3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFNaD-00Gy9j-Pw; Wed, 02 Feb 2022 21:54:33 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFNaA-00Gy8h-PG
 for linux-phy@lists.infradead.org; Wed, 02 Feb 2022 21:54:32 +0000
Received: by mail-oi1-x232.google.com with SMTP id r27so983687oiw.4
 for <linux-phy@lists.infradead.org>; Wed, 02 Feb 2022 13:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=acQVjWKYeBqrGlT8JOrykVFoHSpHX2aivgX9GnGPvpA=;
 b=glPjxi0FLwWoVIiT2y7b8kOIkcA9TF/pKVsHM9W0Zem+9ykyw9JzBn8zEDLt2JWJro
 F/BUIhr5UfohIABInMTnoImT3QnU2yn6ANnzds6M+bl1A7vapMNlYmQbXBvjgj6Lg67P
 pLjUc5PxvQfKPiA71xqKgBwfyLpD/tChQl9pc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=acQVjWKYeBqrGlT8JOrykVFoHSpHX2aivgX9GnGPvpA=;
 b=gRIzEHN64xSxEx9x1hWUNYjsiH/Vlt9PGsoRPih2qsZ7Y2n7ZPT4fZq7DVy6Y19mV6
 6ZnW4c2i8sG7UNuQC2PjRocH6Iah1HRBcAeBfcHsj5xf/AZ35L2hNvtc+5hdRgnvVkZd
 GarVJsS96odounzi70MUXgDnrcN00Ot0YiMmxKrUNt2R9PEMFKQUwyF4HHaHh3rCE56/
 Wy0LxT+euebLgYq6OdR1stuHCc0LBt9cZ8Cp15c72kh7f6L5G/qUy/n+uAX4gQzSnsGF
 hVtFtQo0VJzkcxbqrUFHxfMCNLFXwPj9kcPjtk297O+F+9Afu4n3CEOfGviZ0QUCCj6C
 lCaA==
X-Gm-Message-State: AOAM532F5S5lWt2yn99N+B3W2tqQ1I0Ljk5FSw6aP3nX3EsNyfVsqt9g
 BNvNBH5EVQjj6rt0iRhCFoJKBydxYc/0zp2aOrwdSg==
X-Google-Smtp-Source: ABdhPJwVCGpwPJV5uL/f7GjdcYlEJfYQrgUgFJZ4EiR58PChWsEuL/zlZA+IBfjxEJ7UVpn0w1ICD/1eyHOUY8+ny4M=
X-Received: by 2002:aca:df82:: with SMTP id w124mr5918431oig.112.1643838868851; 
 Wed, 02 Feb 2022 13:54:28 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 2 Feb 2022 21:54:28 +0000
MIME-Version: 1.0
In-Reply-To: <1637046458-20607-1-git-send-email-quic_sbillaka@quicinc.com>
References: <1637046458-20607-1-git-send-email-quic_sbillaka@quicinc.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 2 Feb 2022 21:54:28 +0000
Message-ID: <CAE-0n50sONq+URcWwvDH=UPshgy6+XZEB3sK_4n+5jNktHsEhg@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] Add support for eDP PHY on SC7280 platform
To: Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
 dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>
Cc: robdclark@gmail.com, seanpaul@chromium.org, quic_kalyant@quicinc.com, 
 quic_abhinavk@quicinc.com, dianders@chromium.org, quic_khsieh@quicinc.com, 
 quic_mkrishn@quicinc.com, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_135430_853720_92CBA41F 
X-CRM114-Status: UNSURE (   7.69  )
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

Quoting Sankeerth Billakanti (2021-11-15 23:07:35)
> This series adds support for the eDP PHY on Qualcomm SC7280 platform.
> The changes are dependent on v4 of the new eDP PHY driver introduced by Bjorn:
> https://patchwork.kernel.org/project/linux-arm-msm/list/?series=575135
>
> Sankeerth Billakanti (3):
>   dt-bindings: phy: Add eDP PHY compatible for sc7280
>   phy: qcom: Add support for eDP PHY on sc7280
>   phy: qcom: Program SSC only if supported by sink

This series was sent to the wrong maintainers. It's in the phy
framework, not the drm framework. Please use scripts/get_maintainers.pl
to find the right email addresses and send this series again.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
