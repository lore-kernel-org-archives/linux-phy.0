Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD13D6ACF3
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 16:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGo5yBHSJm/eqcFfq4t3z1luPGh8x6k6MfcKy0kavZw=; b=2V6mayV3f1pQKx
	BydADOEEeAOpuUXS0fm6QtEi4IPKjC1fTbS+Ez2DYpbNWjkqDGXnqKKlzoblT/Ml/5QY6Uauet0km
	UqrwkYFWiI4bJyP7pzJ4O8TtcF+TDV6ngboghocCQOExrhnBRJZBh49toli3VrMdxclIToZcbhrsy
	oFcIj0RkpRqbLZuqgk2we9idyXmjZ68wg41KSxZo0d48wzxFKThz5AsqNR9ayAAziQKLYjmN//JkZ
	qQa9iFaW3cQi6RMasmSkw7wqF0eIeOxrpcgnYntOG61EjphJK7LIOJ4nEyL8rnac8HcMM0cXLp/bl
	POUmdK1eEd0vwmdpnIGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGKsl-0000000Dcp9-3zGp;
	Wed, 27 Nov 2024 16:27:15 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGKsi-0000000DcoM-38ed
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 16:27:14 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-434a9f2da82so9119115e9.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 08:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732724831; x=1733329631; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mOKMr2rmARyVxmtacbasnCb3Rp24G0x2C/kgLo5QtYQ=;
        b=OZVpm8b3O9EQwDT355Qas0l+NVWf5jnLcvOxJkLpSDoxtND5CzhokSEc8eEA9aGUm/
         kvd/pRfoprrRCQFzZSJ1iITIddAemCzihWtEG7fZHrtCd1Eb3Ix7BlxS7Yrnkz7pBgwE
         zmvJFkJOKo0z02vHgkOPsSOkmKpwn8g5l7o+je0mFVOFteehc4wcZxTtOO72geLYnCja
         opSvUwFr37WepU2499HfFjz39tDVf15+OYnMoUgOfkcso24sTZBz9TJ9EMkOZim8ETBU
         2/JMfwQJTc+GFrBLVC1KCMizd5I/HBsTYC0SzVct8qatWGwi3I9ey2n9e7M3GwrKEmln
         XnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732724831; x=1733329631;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mOKMr2rmARyVxmtacbasnCb3Rp24G0x2C/kgLo5QtYQ=;
        b=wYCrNppjeRJlUQQVqxX9J/xC2nPNzeZIYMJx+ZNUJ6xkxFqV4ivy7sBf3v9nx9S9hP
         lI00deq2qRtOiit43BpYze1h0nyjf1g460DG7/S4OVjQ/KODWIyxbqpOELNQNQSjFvKr
         pnigohPV8gp2QQWb7E4Z6plJTZC8f7cdWkldHHc1NSF4vY5KZS59bXcFn2o/OWcCqfUy
         luzTRLOybkbXsAejcqe5HuO6PhvDuFAIaRej2SXYp/onwD+F30MJ26p0UBxnfCy/qXDb
         m3DAeViWqhTGr0WKZMKtbFum3W+fF0G2IxvkWppyjv0n5l5dqRdletB0ZjzwKtHYsPCN
         AiqA==
X-Forwarded-Encrypted: i=1; AJvYcCW4uvI0KTJBC/vpyMDm7Je6fMu6XzKdVnCjiKDIEPRyCAUuA+MjpkSfe4H42K+u8mf38zcZz18JV7M=@lists.infradead.org
X-Gm-Message-State: AOJu0YznftTHOM/ZcuSZB7nllDUh01U4dySUOcyJuifsRxtmphkR7vsn
	ie/yBnGHZ+cmbBUAgvVgOu8/AYCD8zDbLtqL4A6Rbno5obBYMApksTKuqONdZmk=
X-Gm-Gg: ASbGncsIU7/kOsF79YjMuE2wdJCPCEAxfvMIDYjb1hOhwIREmLhnOu9MC5cKwW+8feB
	xflOfo8Nx00takKt9XUZj1qvSK+W3SIQNltnHlwoZ0dQUcMn24iDCGs1AOKfOgpQ8CGjQNl/e4u
	Zd+fYN3R4UNc8vwR+/+KObuPiM22ZRSPZvSVVSddrqtgrMSokO8sN1jwXqsZX2RgnHwqXY1AhwT
	FlalJDgMrl7x9lfH8nshV8YCrStV1IyJChVZszB3sdJaIW4GlhLhg==
X-Google-Smtp-Source: AGHT+IHUXF8Dlt2R0M0tUhRjJZfzXWTd2QVl3Kj7qIQfuLN+iAXj3NQBYlBwZKmabbvWQBuy4HyzAQ==
X-Received: by 2002:a05:600c:474c:b0:431:5aea:95f with SMTP id 5b1f17b1804b1-434a9dc824dmr37930625e9.16.1732724830938;
        Wed, 27 Nov 2024 08:27:10 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa74efbesm25624895e9.7.2024.11.27.08.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 08:27:10 -0800 (PST)
Message-ID: <fba9c9df33dc2e060238a9bb3466a2fea020efde.camel@linaro.org>
Subject: Re: [PATCH 2/9] dt-bindings: phy: samsung,usb3-drd-phy: add
 optional orientation-switch
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Marek Szyprowski
 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Sam
 Protsenko <semen.protsenko@linaro.org>, Will McVicker
 <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org
Date: Wed, 27 Nov 2024 16:27:09 +0000
In-Reply-To: <20241127-pushing-baboon-4afafcf8322f@spud>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-phy-v1-2-1b7fce24960b@linaro.org>
	 <20241127-unturned-powdered-d9d1b695732d@spud>
	 <20241127-pushing-baboon-4afafcf8322f@spud>
User-Agent: Evolution 3.52.1-4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_082713_522550_971F6A90 
X-CRM114-Status: GOOD (  15.10  )
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

SGkgQ29ub3IsCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LgoKT24gV2VkLCAyMDI0LTExLTI3IGF0
IDE2OjAyICswMDAwLCBDb25vciBEb29sZXkgd3JvdGU6Cj4gT24gV2VkLCBOb3YgMjcsIDIwMjQg
YXQgMDQ6MDA6NTlQTSArMDAwMCwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+ID4gT24gV2VkLCBOb3Yg
MjcsIDIwMjQgYXQgMTA6NTg6MTJBTSArMDAwMCwgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gPiA+
IG9yaWVudGF0aW9uLXN3aXRjaCBpcyB0aGUgc3RhbmRhcmQgZGVjbGFyYXRpb24gdG8gaW5mb3Jt
IHRoZSBUeXBlLUMKPiA+ID4gbXV4Cj4gPiA+IGxheWVyIHRoYXQgYSByZW1vdGUtZW5kcG9pbnQg
aXMgY2FwYWJsZSBvZiBwcm9jZXNzaW5nIG9yaWVudGF0aW9uCj4gPiA+IGNoYW5nZSBtZXNzYWdl
cy4KPiA+ID4gCj4gPiA+IEFkZCBhcyBhbiBvcHRpb25hbCBzaW5jZSBub3QgYWxsIHZlcnNpb25z
IG9mIHRoaXMgcGh5IGN1cnJlbnRseQo+ID4gPiBzdXBwb3J0Cj4gPiA+IG9yIGV2ZW4gbmVlZCB0
aGUgb3JpZW50YXRpb24tc3dpdGNoLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5kcsOp
IERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KPiA+IAo+ID4gQWNrZWQtYnk6IENv
bm9yIERvb2xleSA8Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+Cj4gCj4gQWN0dWFsbHksIHRo
aXMgcGF0Y2ggdW5jb25kaXRpb25hbGx5IGFkZHMgdGhlIHByb3BlcnR5IHRvIHRoZSBiaW5kaW5n
Lgo+IElzIGl0IHZhbGlkIGZvciAhZ3MxMDE/CgpHb29kIHBvaW50LiBJJ3ZlIG9ubHkgbWFkZSBp
dCByZXF1aXJlZCBmb3IgZ3MxMDEgaW4gdGhlIG5leHQgcGF0Y2gsIGJ1dCBhcy0KaXMsIHNvbWVi
b2R5IGNvdWxkIHN0aWxsIGFkZCBpdCAoaW4gZXJyb3IpIGluICFnczEwMSBjYXNlcy4KCkkgZ3Vl
c3MgaXQncyBiZXN0IHRvIHNxdWFzaCBwYXRjaGVzIDMgYW5kIDQgaW4gdGhhdCBjYXNlLCBhbmQg
dXBkYXRlIGl0IHRvCmRpc2FsbG93IGZvciAhZ3MxMDEuCgpUaGFua3MsCkFuZHJlJwoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
