Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96EE2C678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 17:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rzf6/WeZaE9PYNPcf7j2nqe7PMM1PUer9Z8YM4bHZVc=; b=pGCkvIIFOr8a8I
	pabl+FKYOE/kEZ9s0Tp05caB1pj/F2LvM4qwrlSixuSXj6qaF2//yhoHG+OymFWgwggrZMQt5rXSo
	2wbiJZMGUHNmR+B/C45/Uv2VtDtWuPvo1galqlQV398RIrGvEOE/0yA/r4lGoqK+EhtSP29jbu53C
	fnd9A9gRe5YfhLbUwFPhSNlY/tV7zmegMoqrBb+5IqhvNj0yftGg81oK+86hwIarH7GHiuax/wKrX
	vZDs7VZPh4J/CwNRBfeg/uw7cg9UB47jL97sosL8bjTHp321yXfqeq9nbnJl/XtfXCB07VZJHa7t9
	d/n31naSXHQaQJhXD/Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZam0-001k1C-VX; Tue, 07 Mar 2023 17:06:48 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZaly-001k04-R6
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 17:06:48 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 132so7988611pgh.13
        for <linux-phy@lists.infradead.org>; Tue, 07 Mar 2023 09:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678208805;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=40D/znuAqTxB+rr3ScHAAamXsgx+pDgNojq6F9uJTKA=;
        b=qRofNhgqZFGo6jxhIy8nyYiq4EyrnOcugf11PO8hQuFwpL1oDRsINzkhaop0vMlMP9
         5LOmuiHRsZaIbArfJZqNVIuyAWKcBESCTYneFvu8jluvTxSJvY/HAFWscZmdN36zoveZ
         wsIr4mXkjGGJ93Pbd2Tbd7ghUq/Sz0v68JJKj+asMlC82ENNYWPMTnsKhSbjv8/ShV8N
         PvewlTTXdVii/OtueyoFDzYX7PNKtjvTGC4pXrs4did2vX0I0XM37wH6s2XElmpOgBWx
         gwGHTAziT/LCvCfTxRWZgXtZE0MyHcyP9rL8G6xZp6ro2Qu2m9UtO2ZFhiwgk73xi0Ub
         2hUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678208805;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=40D/znuAqTxB+rr3ScHAAamXsgx+pDgNojq6F9uJTKA=;
        b=bvcHyas4oXyhU9M+DS9s0ETgYfdw/hKUwSDJG1MMDD4/lj9JRMR6lX6wGPbOHQzw+/
         pys6EbOqphVbWeMaQHVizsdXFI7VcbvDoKNFMPKKVX12zEQ/5X/pXpD8Lt/L7nlFpvYr
         Dxw3vlLXO9p65Bj+3aHlTpadXHGi5BSiTkeKOHUhBN0bDGady8wz/O2Lf+zGs3JwdCMt
         9fUfXN56QDRStye/Sk5sN4tDcnNIUQz2HMgFYyM9X12lrvTH1W0aql28md4J8qV7ttgl
         o49o6XywgYjr1ZJFwCWnMf4ClziqUqIgx98/Y9L42aZQF8AtLdHFFFMeC67WQehf8aDs
         /pzg==
X-Gm-Message-State: AO0yUKWsX7c/PSd2W4kBvMElu9Sse2gQV8t+3e6z3xt6Tj1y2c2WSFTp
	Hexwv/u9bef/7cirl8Yi0hI=
X-Google-Smtp-Source: AK7set9rkdBb66DOGNcO/GggWobL522D67xcHN9/40KKpdvFIeL8BEt9MkpmOv5XoExnuu5lUxJCYA==
X-Received: by 2002:a62:65c7:0:b0:5a8:8535:18b with SMTP id z190-20020a6265c7000000b005a88535018bmr10600112pfb.11.1678208804614;
        Tue, 07 Mar 2023 09:06:44 -0800 (PST)
Received: from [192.168.86.135] ([136.52.74.64])
        by smtp.gmail.com with ESMTPSA id e5-20020a62ee05000000b00608dae58695sm8069093pfi.209.2023.03.07.09.06.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 09:06:44 -0800 (PST)
Message-ID: <d1f6ad9c-5560-0c64-af0f-78593b23c8d6@gmail.com>
Date: Tue, 7 Mar 2023 09:06:42 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 02/31] phy: broadcom: phy-brcm-usb: Convert to platform
 remove callback returning void
Content-Language: en-US
To: Florian Fainelli <f.fainelli@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Al Cooper <alcooperx@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, kernel@pengutronix.de,
 linux-phy@lists.infradead.org
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
 <20230307115900.2293120-3-u.kleine-koenig@pengutronix.de>
 <fa6128da-268e-48fa-7912-74425aafaca5@gmail.com>
From: Justin Chen <justinpopo6@gmail.com>
In-Reply-To: <fa6128da-268e-48fa-7912-74425aafaca5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_090646_923528_9A51AEBF 
X-CRM114-Status: UNSURE (   9.22  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAzLzcvMjAyMyA4OjU2IEFNLCBGbG9yaWFuIEZhaW5lbGxpIHdyb3RlOgo+IE9uIDMvNy8y
MyAwMzo1OCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4+IFRoZSAucmVtb3ZlKCkgY2FsbGJh
Y2sgZm9yIGEgcGxhdGZvcm0gZHJpdmVyIHJldHVybnMgYW4gaW50IHdoaWNoIG1ha2VzCj4+IG1h
bnkgZHJpdmVyIGF1dGhvcnMgd3JvbmdseSBhc3N1bWUgaXQncyBwb3NzaWJsZSB0byBkbyBlcnJv
ciBoYW5kbGluZyBieQo+PiByZXR1cm5pbmcgYW4gZXJyb3IgY29kZS4gSG93ZXZlciB0aGUgdmFs
dWUgcmV0dXJuZWQgaXMgKG1vc3RseSkgaWdub3JlZAo+PiBhbmQgdGhpcyB0eXBpY2FsbHkgcmVz
dWx0cyBpbiByZXNvdXJjZSBsZWFrcy4gVG8gaW1wcm92ZSBoZXJlIHRoZXJlIGlzIGEKPj4gcXVl
c3QgdG8gbWFrZSB0aGUgcmVtb3ZlIGNhbGxiYWNrIHJldHVybiB2b2lkLiBJbiB0aGUgZmlyc3Qg
c3RlcCBvZiB0aGlzCj4+IHF1ZXN0IGFsbCBkcml2ZXJzIGFyZSBjb252ZXJ0ZWQgdG8gLnJlbW92
ZV9uZXcoKSB3aGljaCBhbHJlYWR5IHJldHVybnMKPj4gdm9pZC4KPj4KPj4gVHJpdmlhbGx5IGNv
bnZlcnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92
ZQo+PiBjYWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5k
ZT4KPiAKPiBSZXZpZXdlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5j
b20+CgpSZXZpZXdlZC1ieTogSnVzdGluIENoZW4gPGp1c3RpbnBvcG82QGdtYWlsLmNvbT4KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
