Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DDB8C4332F
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 06:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9NL27CCtiOMqL7qylhOW0+ZvPO4S9iFEIv9f1xFvE8=; b=xI6pYbReNWpLRv
	v7nvjbp3YPOiZv+uLtu5GfJxm4tAgyz0Lo0r7rivXDEhULzBxqUsxcDgBfqfFhxl60+0hYcc+kAN3
	kif3wlBOzB1VyzNkQotmHKKRQCJKBae6s+wzZAERtnOuqkuyKv4I0zXMIgdkZM3RaJ8r1dg6Eu3F3
	+M+gy6/FNrHwwyrClDORrMKRueG7aH4bRBi5s3qYFzSvFuHR5H8DN6dzNm0GVkIPRzjF01UNRfsyw
	2UedgOBhzHJ2LG52kgvUAvP8Pfd12nECjIECzgRN9ck497KLBN48Q7yc8hxHspg8OMD8QhVTlgTF8
	u/3uYMEQiHISyIPhsyYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orCcF-005wEv-GI; Sat, 05 Nov 2022 06:25:15 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orCcC-005wEO-8m
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 06:25:13 +0000
Received: by mail-oi1-x22b.google.com with SMTP id m204so7288513oib.6
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 23:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6AE3y29509hLMsGDmKEJpwzl8TMTLwTBza5239RAscQ=;
        b=AUx2N1nbtsFMiWYIlO/6Y0D3ZQlXcMrcbtiRnZWA9ZFE78KapFuKDiYmC62PRk+vr7
         74Ka/Ob07tg7d6e7kdJyrFduSbMUh1XG4h/RqH0Lplb+d8QGphPCQkSfIgTWMcL1H7O4
         G63wO2aKGXfJRdKTnxWrt6qLkTIpx5mtCoyGaZSQB+1qZTSj8dqlxMnr2iqdj4hG+aau
         cj0096rvvIjYJvIGL+FaWFqHpvfWbAFBwe1qC8HEx3Fmskg9rCXFQn5uAaE25w+ZWP5X
         IMRuRlAgL0RZ7gWsQm7fcPXjA0Z7gpqKuThqAix+2ZCkPIt24+u33BnIS5Q5u/x848on
         Swlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6AE3y29509hLMsGDmKEJpwzl8TMTLwTBza5239RAscQ=;
        b=P/w0Ot5074tXOUKz2wV8zeMc6ldg90BvoVXtpSCxDED8viprNL68q2E7QyQBo+O+M+
         iaQdcU2uWNhxnmFN9S+0M5WTl7y2f/0pDYqzj526hZFbeQbdRQYKwqhhdQMfldpwa36e
         P8v4pAzV6g+Hkyzbqm3HbFYtnf6X+MYGaM8XdHen02TEGwNA2lixLUfFVeM7eT1AB4LC
         x/n7GHvLlsHJ+s+cvyjP6GteXdt0VVQybS1JAQ4gs23GiHJly+Ji1jI5cdoDdJaGTZDP
         09s2UfNJStLM1FNmIYLJg5QO9micjMn8QzncX3Bu9t7i0KI0IqwEfyqQ6BvRXG/VdErU
         kDIw==
X-Gm-Message-State: ACrzQf1vr056bT4o9My5faHjAQAf3LVYG4U7Ayj0nhSO7hbl4UkvX1EE
	YraRQbZ2dedbYR3n54QNioqcup+CjhOU2UBUnVo=
X-Google-Smtp-Source: AMsMyM5DsRlY+IpeIBtRaARvugXX4xtvaU2mQyq0fH6YLi1+cQHHEFDfHmH8vrZWAcwMiBsXFFTxdtIjlL5F/V8jyf8=
X-Received: by 2002:a05:6808:114a:b0:35a:4acd:f598 with SMTP id
 u10-20020a056808114a00b0035a4acdf598mr7470562oiu.144.1667629510048; Fri, 04
 Nov 2022 23:25:10 -0700 (PDT)
MIME-Version: 1.0
References: <20221104205242.3440388-1-git@johnthomson.fastmail.com.au> <20221104205242.3440388-2-git@johnthomson.fastmail.com.au>
In-Reply-To: <20221104205242.3440388-2-git@johnthomson.fastmail.com.au>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 5 Nov 2022 07:24:58 +0100
Message-ID: <CAMhs-H_uV=qURur1r4vK273rpaF990c9T6uP-7KWdPZz7+kNUg@mail.gmail.com>
Subject: Re: [PATCH 1/2] phy: ralink: mt7621-pci: add sentinel to quirks table
To: John Thomson <git@johnthomson.fastmail.com.au>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	=?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_232512_368265_84B02894 
X-CRM114-Status: GOOD (  12.79  )
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

On Fri, Nov 4, 2022 at 9:54 PM John Thomson
<git@johnthomson.fastmail.com.au> wrote:
>
> With mt7621 soc_dev_attr fixed to register the soc as a device,
> kernel will experience an oops in soc_device_match_attr
>
> This quirk test was introduced in the staging driver in
> commit 9445ccb3714c ("staging: mt7621-pci-phy: add quirks for 'E2'
> revision using 'soc_device_attribute'"). The staging driver was removed,
> and later re-added in commit d87da32372a0 ("phy: ralink: Add PHY driver
> for MT7621 PCIe PHY") for kernel 5.11
>
> Link: https://lore.kernel.org/lkml/26ebbed1-0fe9-4af9-8466-65f841d0b382@app.fastmail.com
> Fixes: d87da32372a0 ("phy: ralink: Add PHY driver for MT7621 PCIe PHY")
> Signed-off-by: John Thomson <git@johnthomson.fastmail.com.au>
> ---
>  drivers/phy/ralink/phy-mt7621-pci.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Acked-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Thanks,
    Sergio Paracuellos

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
