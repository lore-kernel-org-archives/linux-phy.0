Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32873C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Dec 2021 15:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z4sSeU9toN/Q1N0znS0G68pemOtzRZjat7irgVsb9DU=; b=B5od0trEMKG3FEbYkr8h2SPu2i
	6ZTu6laI1WoRrLVBZcXis5vzdjyY0VH8sh8i3pUpQVe2wLU2p4ao9lBY6JqpLkS3nxhRg2BkbDJtd
	fMsEPANm3LMmG9VrqkZbI/yDP/Pa1ieUv7dFse7pOAkaKhAg1p8TGZeQIjc5lzlQ6LeYgQnfo+l6R
	LyKI/XSv1MBvZA19BHbrIdUhBAo2PsAv9J9MO8N2aD3viC8mXFr1r0LhA3pq9QfksHqFgztAEu3AA
	S/703jUerVjmX2nMjZ22HmMbiKz5sgxbAkAG7RhHvHpL6W8GhFac6UDL4/m44eY4LTwW4VnfRgbbv
	HM9g4Xgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mubzv-00950g-8W; Tue, 07 Dec 2021 15:03:15 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mubbL-008y5j-IT
 for linux-phy@lists.infradead.org; Tue, 07 Dec 2021 14:37:52 +0000
Received: by mail-lf1-x131.google.com with SMTP id z21so11934544lfu.8
 for <linux-phy@lists.infradead.org>; Tue, 07 Dec 2021 06:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=s9/qxIrR8tF6zWnC2CNOSyvQJwZNDJC7C9nlCNHrx+o=;
 b=XAHGUhgbReJmLxZSPuCnTjbaTkHKyyoX7vnK7Kw5+SjE8r/O2NCLUCdTjCs+qYOhvx
 LcXgpFSugwfUj+dt9CFAvXQvyqA5gVfMMSP+Tc/3+CZSs0oP1auVjCAhZOthfCOJUIKv
 R35edurehJU05/8buCwtCBsmucGSxp6IADZKtf6cvl3os/koWo+sZhGOo0/OCaUthdO7
 7rzLJN2cWV5jh0UWjspEAc/vgnuqeAooqrNKJuePrEXLDlZR8iYcOwwyvcMtVmk2SgqH
 n1fTSvillj3C32O0v4eb4gE/6bWJEz43qQPRPaWO4TRn6CawNdgu9ktcI0wjwTzy2OYl
 7oIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=s9/qxIrR8tF6zWnC2CNOSyvQJwZNDJC7C9nlCNHrx+o=;
 b=YIMt7gvUV3ZPewdY7RYuh/Vx9+AbNUrg16KRml6AeIW+Zi9xKc2azCDALq43iyKhdv
 E5L8KQ99JOKVZSS00ly1LFcmzLwxBOkSNobLUWZMxonf4kCY5RDsOBpaSXuhqy/jt+N2
 lP0Kzc5lKFHLirZRQoJyi12M2AXt4V9SLEnXkRfgugEuO0jOuaxKiyVmOU8H6AO7La59
 zCu5nDN/X46wBobMWNMsOeH/bNer6FSX0FRr7yEuSQYNOArEAua1QFKER6RZIuT3P3W2
 RR6q5LBeQtVhm1fJgPo51qXWnAixU+nBFlp6tkPFodqAriS7QkpAgGNontSbq9cLkl28
 br7Q==
X-Gm-Message-State: AOAM530vXuiaaGougLaFShbdDJA+zXvjCzab4crqaWBBcZckLosh4i1v
 G0fHJaTA11XmRvqbjq+3Kck=
X-Google-Smtp-Source: ABdhPJy3IcwVhC0N1gj9NrdzdMXNnC7pXCO5CThzlG6JGABXQ23FtLwCvvedNx07wrV55fr9SqN2xQ==
X-Received: by 2002:ac2:5a46:: with SMTP id r6mr41444829lfn.358.1638887869276; 
 Tue, 07 Dec 2021 06:37:49 -0800 (PST)
Received: from [192.168.2.145] (94-29-46-111.dynamic.spd-mgts.ru.
 [94.29.46.111])
 by smtp.googlemail.com with ESMTPSA id z23sm1676836ljk.136.2021.12.07.06.37.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Dec 2021 06:37:48 -0800 (PST)
Subject: Re: [PATCH] phy: tegra: add missing put_device() call in
 tegra210_xusb_padctl_probe()
From: Dmitry Osipenko <digetx@gmail.com>
To: Qing Wang <wangqing@vivo.com>, JC Kuo <jckuo@nvidia.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1638881776-3308-1-git-send-email-wangqing@vivo.com>
 <b56a0b92-cf64-570c-08f8-e7a54fc55946@gmail.com>
Message-ID: <e57c1c99-0743-c785-24e3-44654e4991f1@gmail.com>
Date: Tue, 7 Dec 2021 17:37:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <b56a0b92-cf64-570c-08f8-e7a54fc55946@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_063751_677440_CAA441AD 
X-CRM114-Status: GOOD (  17.13  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

MDcuMTIuMjAyMSAxNzozNSwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMDcuMTIuMjAy
MSAxNTo1NiwgUWluZyBXYW5nINC/0LjRiNC10YI6Cj4+IEZyb206IFdhbmcgUWluZyA8d2FuZ3Fp
bmdAdml2by5jb20+Cj4+Cj4+IG9mX2ZpbmRfZGV2aWNlX2J5X25vZGUoKSB0YWtlcyBhIHJlZmVy
ZW5jZSB0byB0aGUgZW1iZWRkZWQgc3RydWN0IGRldmljZSAKPj4gd2hpY2ggbmVlZHMgdG8gYmUg
ZHJvcHBlZCB3aGVuIGVycm9yIHJldHVybi4KPj4KPj4gU2lnbmVkLW9mZi1ieTogV2FuZyBRaW5n
IDx3YW5ncWluZ0B2aXZvLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRl
Z3JhMjEwLmMgfCA0ICsrKy0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2ItdGVn
cmEyMTAuYyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2ItdGVncmEyMTAuYwo+PiBpbmRleCBlZWRm
YzdjLi4wNWEwODAwCj4+IC0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2ItdGVncmEyMTAuYwo+
PiArKysgYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3JhMjEwLmMKPj4gQEAgLTMxNzAsOCAr
MzE3MCwxMCBAQCB0ZWdyYTIxMF94dXNiX3BhZGN0bF9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYs
Cj4+ICAJCWdvdG8gb3V0Owo+PiAgCX0KPj4gIAo+PiAtCWlmICghcGxhdGZvcm1fZ2V0X2RydmRh
dGEocGRldikpCj4+ICsJaWYgKCFwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KSkgewo+PiArCQlw
dXRfZGV2aWNlKCZwZGV2LT5kZXYpOwo+PiAgCQlyZXR1cm4gRVJSX1BUUigtRVBST0JFX0RFRkVS
KTsKPj4gKwl9Cj4+ICAKPj4gIAlwYWRjdGwtPnJlZ21hcCA9IGRldl9nZXRfcmVnbWFwKCZwZGV2
LT5kZXYsICJ1c2Jfc2xlZXB3YWxrIik7Cj4+ICAJaWYgKCFwYWRjdGwtPnJlZ21hcCkKPj4KPiAK
PiBXaGF0IGlmIGRldl9nZXRfcmVnbWFwKCkgZmFpbHM/IFdoYXQgaWYgZHJpdmVyIGlzIHJlbW92
ZWQ/Cj4gCj4gUGxlYXNlIGVpdGhlciBmaXggaXQgcHJvcGVybHkgb3IgZG9uJ3QgZml4IGl0Lgo+
IAoKTXkgYmFkLCBJIHNlZSBub3cgaW4gdGhlIGNvZGUgdGhhdCB0aGlzIGRldl9nZXRfcmVnbWFw
KCkgZmFpbCBpcyBva2F5LgpOZXZlcnRoZWxlc3MgdGhlIGRyaXZlciByZW1vdmFsIGlzIGluY29y
cmVjdC4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
