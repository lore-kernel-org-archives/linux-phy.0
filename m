Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFE6ECCF2D3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 08:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/anXcaYeOuYGygXkvlBuW6hOPQwrmZ4Qwxtn2ilttE=; b=Tz1HbAbbLo99mx
	HlG1yl/KViLk//mM+gZU4KBT5XacjChtkGiKv9QxZqXv4A7u7KnDVMJX1k24GKr3E/ecRtX5WX94f
	CT2cm37dd8s5c6fn1LzuUlvdlAT32Qvtdu5EKQg3inBlJ12ofvYrDbNTEh7sPF2topw4PunW+b2U6
	6vu2qsDatuZu+yMfD09itqyc/v4JPJ+N4TiU8KfcM3AFdxYJSTcqX/QWySypZ9R/XKalA+8rRjGCz
	nPmxlkK2OvBejApDkNf4uT4bVD0gfmNzVtY3PWN8HnYSUmx/CtXx6dBh1ICcosaoQ8vVbPuSaycAZ
	wvkLiCJJ84hj7D89HO5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIiWh-00000006qwZ-0H4m;
	Mon, 19 Oct 2026 08:15:23 +0000
Received: from mail-yx1-xb136.google.com ([2607:f8b0:4864:20::b136])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIiWe-00000006quw-1mVJ
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 08:15:22 +0000
Received: by mail-yx1-xb136.google.com with SMTP id 956f58d0204a3-677d9c68d09so243999d50.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 01:15:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792397718; cv=none;
        d=google.com; s=arc-20260327;
        b=QOcmk73KZI56lhMk5ovyBFbgyn5z4l2/mEDWQ4aSNRlpH8ih2ZM75mcfSBkfOjJsq7
         f6kjWLTJB8+Fag9SUT404d/w+pby+xeW7tiq/Yjl57gqTFKaXPSAwlB3PSlrbvxibl3X
         QhYXTai2oY8AwjFJQDtpf+ZezgCNMj1QfMWHUxcJzPVloWHuB2u//oWq+r9na6kEroCq
         ie7rp9vz3472dSHJHTEn3bsLlLBKK+USSKLMkkMv3MbCAJa6SKLWeBvRnkMouSTQB/FP
         hz4oalfT2c8zJCq0+hahBRwsXU7y4t5kzfofVvAWlhExy5Qo7nFQ+1uB1kALBMe0CqSW
         Vw/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U1X6Ak1b5YnhMEpM33yKsTItIXYeyxlIqpx2Kl/jIFo=;
        fh=vGNl0Vsa7KrGoSFVxz/SXbMjeaT3yMXvA8VaH0wbSCo=;
        b=fwAJiEta9cGwHuYR35DtEKKt1AF/b0j3Tbz0aaXHdAPkF+fKX3RnHew6w4NVuqX7IL
         uCir7NFqY/nK8NRNwuk7TxH6ir6Ib9I8WLlSBoVrt02WxOKkxEIhsC9eTJX31KnFaf6u
         V4o4XkOzfWaoPr6j+dUkY0yYJQSniYUmqJf7xc11JRF3yjr1B3Ag6YEFrXDb3do3fWB1
         KY8sO2E7JDOWWOCxOhkWoP1yu22KDul2nk0iVZistelACyFOBz807r4HplrOrKssHNWj
         yN1Jz/ffPGlLMNHGDDy17o9tyVZwkOmFsaske5xNUvYBvPuPjKD1vDgCe14Fl5M3dNMf
         qnZg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792397718; x=1793002518; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U1X6Ak1b5YnhMEpM33yKsTItIXYeyxlIqpx2Kl/jIFo=;
        b=fsm5SSCw8bVv1e+oL1c+Fo3bs0i163BPOjWmRbkPN/IZIzB2pkAzAkPi71WXX9TXkD
         uqf6Vwai4N+nwfLudyrupJozFv62N6pGDuXrCP0BZGBlT7e5tWRwRcAdmaObfcOWdGRL
         lSd4tw6/ywrL4IyOZgY+6vlE5W5qqMkae13aoXt913wUeUlxWuk8eo6PkCMNvuzKYQt6
         gms1b5veaCWQaDpnbmpv73r/VEJtgwwvSVXaKejaqwvNryqR/wncHANYx8Bbqr8hXMtt
         hSgOI18OxdxdH/fh4HtJeGZZ+7V0BdIFywiDHnyCD4c8ctcukB1EQfQwH380r5DLroay
         QlJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792397718; x=1793002518;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=U1X6Ak1b5YnhMEpM33yKsTItIXYeyxlIqpx2Kl/jIFo=;
        b=o8RdSMlRZgxO7OttVz9MXu4kvIjEAF+LCT+ez/TkAZL138QlCLHiWd2M0yucnpN19N
         88MCQOqPDQruVkWQzP41vbnhXUQ2OvV1WHvh2hwFBvcxFYyESNN1uYnzsL0b1f8DprvN
         3fnCmqdOV2s6u4nez9y+hY4Cds0Z/d8WXkrWmreETMuuz2WJQQAMAxTCw+HkACYlIzN5
         1rm+YHy56nJNv5GEWIlTxTJglQmRixybvV94yhknVTV8Ih49c30M2bhZ1tttltrsy4xD
         RXMcgJ95RfNyhtyVyKoqmAHG/ltW3kBIvgC2fKdSBvKYQ0Iu4/eV+Fno56KXdwqAzaEC
         bXIw==
X-Forwarded-Encrypted: i=1; AKwUvBynx0MmJPbEO4wVeZr4p0UbWEKszJOC/WsysD6MwmITbMtg88WeO5ejERI9nNMXqewFEDWLad3nt9M=@lists.infradead.org
X-Gm-Message-State: AFq9FYIwNNt/Ygc1En7vZKLdB4E277OpYxfY1mGVVIeZ7YWROxa29Gwz
	c7OzJco23uQMX5YsZUnFWsTR6W+qJ22QhKo9fR3djnazEYrAVBZBVbTbHNFsExrlIGyuOY7R1KU
	+6vodcv4UqZCuWnC53YRzS+A6AslOYcU=
X-Gm-Gg: AYBFou2oA0a8OyJHdwZcurjMwS0S60QGtU/bzZuCoP+2nfg7JGP9lVB8sVc7sZbv7ku
	DsATN9cJCV7UaN4g1o0cmDzN7Bm6KCV6WzzRt4T7mNcX/qGI2vyxDzBMcqbcNoefhtq/6qewl1R
	E7vcTHh6q7Hn++cBbhM8aayzuWXmxCU6vRJ9wGzTPeodGnV3cGb7hcY/o7H7y7ajgE8+Vz2WVMg
	/wvAejd7vn7uqh/7v0mBLq9E/pLWm3b/+8gXkWjmvOwWx41XmHRKgfCIICYiZ6aseAkfGt603ft
	erht1MMRdlLnBeCgfKKD9Rz7LcxH4ZAD7UAD9QeuGZONR3ZbKYxyIA==
X-Received: by 2002:a05:690c:686:b0:853:bc96:d834 with SMTP id
 00721157ae682-8b0f2149354mr41098877b3.2.1792397717882; Mon, 19 Oct 2026
 01:15:17 -0700 (PDT)
MIME-Version: 1.0
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com> <20261016140115.GA1798470-robh@kernel.org>
 <20261017-gainful-goldfish-of-climate-bef863@quoll>
In-Reply-To: <20261017-gainful-goldfish-of-climate-bef863@quoll>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 19 Oct 2026 16:15:03 +0800
X-Gm-Features: AclHuK9_kQhXB8k-ejh4iETHQ_pbinYeRno2QSundTfXAhMLFdEsJrbL5fs5ZiY
Message-ID: <CAPwA33+bR1BF9KeA9my07Yz7gXW7TXq8EPhwQ4GvHMSFDk+uWw@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_011520_484866_81D6403C 
X-CRM114-Status: GOOD (  14.20  )
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

Hi Krzysztof, Rob,

> Existing OS should ignore surplus cell if the driver is coded properly.
> Same as adding new properties or new front-compatible.  The question is
> how the existing driver behaves?

As you pointed out on 5/8, the xlate checks args_count != 1. The DC-PHY
driver was merged in v6.15, so every kernel since 6.15 fails on a second cell.

1. Keep the second cell. Add the patch as follows:

- if (args->args_count != 1) {
+ if (args->args_count < 1) {
    dev_err(dev, "invalid number of arguments\n");
    return ERR_PTR(-EINVAL);
  }

+ if (args->args_count > 1 && args->args[1]) {
+   dev_err(dev, "only the transmitter is supported\n");
+   return ERR_PTR(-EINVAL);
+ }

  With Fixes: and Cc: stable, the stable kernels maintained at that
  time (currently 6.18.y and 7.2.y) keep DSI working with the new
  dts, and the receiver fails cleanly instead of getting the transmitter.
  But EOL kernels (6.15, 6.16, 6.17, 6.19, 7.0, 7.1) stay affected.
  It goes in with the series, since two-cell dts only exist after it.

2. Use a flag in the upper bits of the existing cell, as Rob
    suggested. Existing kernels are not affected, unless a board enables
    the DC-PHY CSI-2 receiver on 7.0 or later without this series.

I will write the impact clearly whichever  approach is selected in
the related commit messages and the cover letter.

I think the cell approach is easier to read and more symmetric in the
long term,
but it breaks more. Which one do you think is better? Thanks.

Best regards,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
