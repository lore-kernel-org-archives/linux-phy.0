Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CBA4CD484E
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 06:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bah98eC4KU8Zxv6nBh7vNFTsb5IgBm6Whj1BGFcYdbQ=; b=kGjMEWLhrzhhSY
	DdXjiLhg0tdjBYs8LlY0mMNFOut84hTlGA7eqkkFpq2/OAqgy0Qsxan1ALKBdhSD4/5pCvvtwJGXE
	EIJOM/0NdxxcHEUQsccGFGc2vvCVOf5tNlLBj+Jr2P8YaSUEWzQOnJ6oBpSMAS8/QeSgovxU4OtDt
	7sdxDgwAIdjJ/gVbTPyXtPL0lQCt6iqTwPzwlmQVkyTP75dH8v+fWsaZGWdmYzuqk6/Qk465QMXJ2
	e4LqUrPlb4emZ0QmLE27pC1dsZMcobtjfaTpENDV+g4LhDS5JulBFtTqpFYZb+d8j3c5tsXvguUW8
	U8mnY8lhnyFlETPvtP7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgFx-0000000Fj3b-2DnS;
	Tue, 12 May 2026 06:06:13 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgFu-0000000Fj3B-3SEy
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 06:06:12 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-2f30a4601bbso5377610eec.1
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 23:06:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778565970; cv=none;
        d=google.com; s=arc-20240605;
        b=dKWG2jEG2dOZVEO6H3i8HUhnB3RWUyM3q4zvm6S6SS9pSLnmKnQ2OmNst9A9MqmgiT
         yIa1Z+H+XBS5j1M/O7pfWWz/d3/9orJCvs9jOI7MpiQsceQC0CELCDzJ6ninvBJfyGdi
         7RRSPuPo/f/tDrlWbnkNE33R2TLmrZB8/jtn9UbqH8WJvv6uCGXxfnkYML456dopj5oi
         SWAbndGKjZ1XlXjns/RQBVCvO2P/doXQnTfk6bR6SUTvHFgRV417Jd/y8ZQDQJ/gqO91
         o/97dACWFYIL9jxVqTfQS1RAMcLt8pEV50GVqEmhONYpN/2ZJ++yqLxzIQWmONAAOYwF
         N8yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CrrmqA1MIjLw7p2PiJAG2cpDnb+P9Y0HrkTx6QFkzK8=;
        fh=8tjccfsalVBCGzrPQZusA5BY36OEsWou8bgbCMnYYT4=;
        b=JVPrKP/SorFFB9EpM+MO7T1xJE1ByLfcA5EGgOIzTmbp0/XUg22Aue4pFtuUQ43wRd
         +R4URTWF7XT7o4lyEZyPC4ShJTVgBVYBebgTMs8nA0HpH4SB5huPNdM+P/dVwkqH+/rj
         QD9X+uLuDT3ghbh7ls2IN6Bs23FwoZagv0kAKMkvC0dG1yB3lElO9kylpHLOLDMm534J
         KX9OaVRwo5jyhGybVuANBrkaDNmuT2RRybJjo6TI3ggFkw8JYIdinTxWONzggnwqPzZF
         xs270kBAFsF1OFuzE5kSULnWNEKW7zTuTKJAgi7aTMyfU6/ZagasPWOyhwwTQ1CUw6kB
         08xg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778565970; x=1779170770; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CrrmqA1MIjLw7p2PiJAG2cpDnb+P9Y0HrkTx6QFkzK8=;
        b=W7RFWx/VEHVwcM2DkzlzUSa07lwdGgw/KaOOyGn2qm20VTUNwbMZw/U33VzJ+0ut0P
         qTbfySJQTzEHnGRp0oQFZ83Yev5FBABsabqU4Oifqi46/WNXj0XuTmXkA8BPGMCth/pb
         5nO9QP7jamxo+rcn3VvO9l2/2D8yFlVYfKv81IDOFjYnIFAaq281W9fjuCT53gRHtUsQ
         O0IWGrUck8vIrYq4XOYixfDgIRP/UZmNgK6MwNiwn0uq6emI3xvd7P3ivfVzHVPNHSwO
         /5G6jcRJvA+OHcvJAdMoZPsAq/2sYBdu/KHFL0PhPBPrFULfstT5f59EHR1FVR56cqIL
         A4vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778565970; x=1779170770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CrrmqA1MIjLw7p2PiJAG2cpDnb+P9Y0HrkTx6QFkzK8=;
        b=Dcm04v8Eek8FOeRCv73hWRptmKCfFYw4vjvCDDT5CCIZViiygjABDaXYPnhwLYymXi
         3EaTemXUe4Z6CeCRWfCtBix/LnH5cXBsIv9Qd2xwU5p2FiVZ0jWJ/Bf+D8f0/UYCwfbm
         5fAiCQJKad7qHU0uf6ft+4mTdp9deUJzkVMxvNS0BzhYrf/4qYB3HwSITixYIu3BSQCT
         pMixlOWv2AGyXSlRQIm6v0nK0ZilUMxu81CNCllv1YZUwz5UiKhVWRcmSrBnvyAyBkrI
         d1WsexRPoCIDlNrQpmuF8PuuRzgSt21i9avwWrKC9FxjDvGQw9KC1GB+KQQ+I5yYfADT
         p/qQ==
X-Forwarded-Encrypted: i=1; AFNElJ8lslBnwLvo9tvvtzyYdUcTEC4PrhdereJy/fmYk3CvAhAs5ej2Z3AxY6N2oA5nIcO6+ENuMdcJAU4=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywhk3vHW5rzth2hxhM8EpbOb/Gg4mhAufO91/mdVDgkuwR4drlp
	RG+w8rs49NPvKkdA9e95IIwR03QOoIeublh3THAqDPSKU+a30mkphAvC4E/yXjji+jn/vboFEtI
	YKN/hM2elR/v84SVamaeV8vMB6Jenj8M=
X-Gm-Gg: Acq92OFo0ldn6Pdvlv4rlAY0VzXk7BtPxqHOpMSGdyxwehOVr+euRujQCWH296kOJf+
	24CrB+AOw80CmgMWXhbtXF3PfvOYXhbL1+DhNXOnzRjx7J3egZ48Cx9+K/tABLf+0C3kq2EKFjJ
	PbWXtUyaWS9CRXg0N02vaP5/U/UVXJiZjmT/9sXZTbK4eCFeDIdoDqVnVIB5hEIYZ67tIAKBVxC
	HSAB5icSFg+ay03nLK+pIv0zzfNFRi31qUb3SP7RhL30pvgspKuiJTS/jtPCgRs7c81GnnFbOiW
	KNqn5E4L
X-Received: by 2002:a05:7300:d70d:b0:2f5:3f62:37b4 with SMTP id
 5a478bee46e88-2f54c080b64mr13761984eec.8.1778565969672; Mon, 11 May 2026
 23:06:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260511135703.62470-1-clamor95@gmail.com> <20260511170548.0065fd07@kernel.org>
In-Reply-To: <20260511170548.0065fd07@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 12 May 2026 09:05:58 +0300
X-Gm-Features: AVHnY4J1P3ErzmBnYdLDEn2tVC5ojwqEMUhGov68STEE-MFG5Dk8UXTF_hePr8Q
Message-ID: <CAPVz0n3wcgaXzSLAMT=Yt=+FC=n7ufkn_CAaKNcyTr=a+7bdTQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Add support for Infineon/Intel XMM6260 modem
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Peter Chen <peter.chen@kernel.org>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_230610_863758_7A84BFAB 
X-CRM114-Status: UNSURE (   8.98  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

0LLRgiwgMTIg0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMDM6MDUgSmFrdWIgS2ljaW5za2kgPGt1
YmFAa2VybmVsLm9yZz4g0L/QuNGI0LU6Cj4KPiBPbiBNb24sIDExIE1heSAyMDI2IDE2OjU2OjU1
ICswMzAwIFN2eWF0b3NsYXYgUnloZWwgd3JvdGU6Cj4gPiAgIGR0LWJpbmRpbmdzOiB1c2I6IGNp
LWhkcmMtdXNiMjogRG9jdW1lbnQgbnZpZGlhLGV4dGVybmFsLWNvbnRyb2wKPiA+ICAgICBwcm9w
ZXJ0eQo+ID4gICB1c2I6IGNoaXBpZGVhOiB0ZWdyYTogQXZvaWQgY29udHJvbGxlci9QSFkgaW5p
dCBpZiBidXMgaXMgZXh0ZXJuYWxseQo+ID4gICAgIGNvbnRyb2xsZWQKPiA+ICAgZHQtYmluZGlu
Z3M6IG5ldDogRG9jdW1lbnQgSW5maW5lb24vSW50ZWwgWE1NNjI2MCBtb2RlbQo+ID4gICBuZXQ6
IHVzYjogQWRkIEluZmluZW9uIFhNTTYyNjAgQmFzZWJhbmQgbW9kZW0gc3VwcG9ydAo+ID4gICBk
dC1iaW5kaW5nczogcGh5OiB0ZWdyYTogRG9jdW1lbnQgTnZpZGlhIFRlZ3JhIFhNTTYyNjAgUEhZ
Cj4gPiAgIHBoeTogdGVncmE6IEFkZCBzdXBwb3J0IGZvciBOdmlkaWEgVGVncmEgWE1NNjI2MCBQ
SFkKPgo+IFlvdSBuZWVkIHRvIHNwbGl0IHRoaXMgbW9yZSBvbiBzdWJzeXN0ZW0gYm91bmRhcmll
cy4KClllcywgSSB3aWxsIGluIHYyLiBJIG5lZWRlZCBhbiBpbml0aWFsIHBhdGNoc2V0IGNvbWJp
bmVkIHRvIGhhdmUgYQpyZWZlcmVuY2UgcG9pbnQgYW5kIHNob3cgdGhhdCBhbGwgcGF0Y2hlcyBh
cmUgbG9naWNhbGx5IGxpbmtlZC4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
