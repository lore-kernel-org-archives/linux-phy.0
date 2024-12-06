Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17AFBE77170
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 00:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bf7BZgRVGelTOUviNybqCk0/ztcqkcCl2L33rweZRaM=; b=BxIw2Z0TZv8RgQ
	ZOobqRRn4LIDE3uaKa4VP8Yhxh0BROE5mibkiL7wRoZiH4uf20N9YEshIEc3Oa7+Dd84kRD2WX7FB
	CbKtSw+hMHHzAOTCCXgFKCy8Ki5NpQDr+HDAPjVFzqpjVQrZxZiWeJy4jWD0fWRAajLfOXRSl2Rpb
	gsvOTrAKiG/kNGzNANRqA9KgSvDZ/NovAULj6fEn5BAz/A4Z5RNYnEAFLqcryjQk6DwBs75JDnA5R
	ovZjU+vlEH71RdaxML/jNRGoXBGTlSzmJwl3hjveDwAB0Hc+qUUAHtsUBtkQ4L4vX0Urtl9HedIAd
	aWYWt01C/g0WT4X7lUsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLpw-000000001Nq-3VQI;
	Fri, 06 Dec 2024 00:04:48 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLpu-000000001ME-2L7W
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 00:04:48 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ffc80318c9so12653671fa.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733443484; x=1734048284; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nyJdJJn57+pQZInRZeuVGIN7AV1JUnt9vsohwzqk0TU=;
        b=Y9+5fhGm5dw58XOEKdK2gyItMcLnNOxgy6EXNyherJ6VRh2T0ticOgIun82oi2Pw0T
         j1ymzbZe6rDQuCQVpOM3EnwTQ7NljPW7PZvYQuOBg91k6Z4C7t90A4qJm+btH8DCNUZe
         Bl3743drZF+x1wtOhZFd6SnZ//SnQ5TXnPUpgjhawJB9jPlj7kjHuYVQ24SuDLN8supc
         iw4/7+mqK/tRd9/2BpBJzmiWI03xJDwO4x3hRL+3zHQZQJxpzZ9aqekIdD6sVPy8W3td
         +Pq7Qsy2GQ3AsponwLQ9T50dy12R0C5aG+aV5IxeCVZFsNtQudHHFUDJJl3OgjEG6sp8
         zrtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733443484; x=1734048284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nyJdJJn57+pQZInRZeuVGIN7AV1JUnt9vsohwzqk0TU=;
        b=J1K8vqPqRIRRA5e0ivlZjG8d34qDeU201LjUvnuh81U0B4xRclq2knlGxFRHgVjG3M
         tNCwlEgtG3N3os0DIms/BB5uvKZ3Rve0WGOiXDIdGAOiAEGUqIp4ftM7P54RUd3lVOLy
         MzzDmnMQhw/BzITVATYHWw9LZdKTpzJZUETWy/FbrfPjxveo+xkyfimcij84iM1TCawe
         OA92iplwba1o74Z9Ezd1kCapZoPEoaQg8sDonHJGEljIl/qmhW7g7h+31Ms4pkL3yyA7
         hIzqpWZqNarckjaLA4pRMMtLV1mnbeTei19lA5YasOQUvJheHxHDEUnkIUKgdHbuKNzV
         Lyfw==
X-Forwarded-Encrypted: i=1; AJvYcCVnWR5qekjHAJToEDXsGlk+re58IpChXNcTdnJBjv5vDhxB7dAZvffaub0Wr4YXCLk3fdT6hQt623c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpA1pVWPuwrA+op9F29OGONgyMupAF+C5L1Y4aAvXY4sjkK6O9
	O9nI8m6du3pag5XLjCF/JSap1GjrzT6H6gMichGXmUefqfVMF418nOZAfv0wSbfA/NSs6DdldPV
	/H2zNBPIbQHOdi0OQuF38v8afv1KzR4qEbYUR
X-Gm-Gg: ASbGncu5HuJpfz46ErkPAA7EsECKXl7oaULAwZhTkAb4/LLM4PeMpQl6XIP69fWN3v1
	0V+7rKxoXwMzfBL7GtZTITSaoO5tHlQ==
X-Google-Smtp-Source: AGHT+IE92QurkCXbpPhW39S0T6DV3d1ZwkHiDAPalNEAhWDdnG9gboTXRwPqobgb8OqDtVbK6JdEhdq9iaiE115Ad5o=
X-Received: by 2002:a05:651c:1a0c:b0:300:1947:a28c with SMTP id
 38308e7fff4ca-3002fcec223mr1919581fa.26.1733443484316; Thu, 05 Dec 2024
 16:04:44 -0800 (PST)
MIME-Version: 1.0
References: <20241204221942.2248973-1-sashal@kernel.org> <20241204221942.2248973-3-sashal@kernel.org>
In-Reply-To: <20241204221942.2248973-3-sashal@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 5 Dec 2024 16:04:06 -0800
Message-ID: <CAGETcx8vU60Rypu1TfGfKSNUuoikGMQYydqEYDQNsNPfoKt9fA@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 5.10 3/5] phy: tegra: xusb: Set fwnode for xusb
 port devices
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Jon Hunter <jonathanh@nvidia.com>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Thierry Reding <treding@nvidia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jckuo@nvidia.com, 
	vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_160446_601738_52C3E221 
X-CRM114-Status: GOOD (  17.08  )
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

T24gV2VkLCBEZWMgNCwgMjAyNCBhdCAzOjMx4oCvUE0gU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IEZyb206IFNhcmF2YW5hIEthbm5hbiA8c2FyYXZhbmFrQGdvb2ds
ZS5jb20+Cj4KPiBbIFVwc3RyZWFtIGNvbW1pdCA3NGZmZTQzYmFkM2FmM2UyYTc4NmNhMDE3YzIw
NTU1NWJhODdlYmFkIF0KPgo+IGZ3bm9kZSBuZWVkcyB0byBiZSBzZXQgZm9yIGEgZGV2aWNlIGZv
ciBmd19kZXZsaW5rIHRvIGJlIGFibGUgdG8KPiB0cmFjay9lbmZvcmNlIGl0cyBkZXBlbmRlbmNp
ZXMgY29ycmVjdGx5LiBXaXRob3V0IHRoaXMsIHlvdSdsbCBzZWUgZXJyb3IKPiBtZXNzYWdlcyBs
aWtlIHRoaXMgd2hlbiB0aGUgc3VwcGxpZXIgaGFzIHByb2JlZCBhbmQgdHJpZXMgdG8gbWFrZSBz
dXJlCj4gYWxsIGl0cyBmd25vZGUgY29uc3VtZXJzIGFyZSBsaW5rZWQgdG8gaXQgdXNpbmcgZGV2
aWNlIGxpbmtzOgo+Cj4gdGVncmEteHVzYi1wYWRjdGwgMzUyMDAwMC5wYWRjdGw6IEZhaWxlZCB0
byBjcmVhdGUgZGV2aWNlIGxpbmsgKDB4MTgwKSB3aXRoIDEtMDAwOAo+Cj4gUmVwb3J0ZWQtYnk6
IEpvbiBIdW50ZXIgPGpvbmF0aGFuaEBudmlkaWEuY29tPgo+IENsb3NlczogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzIwMjQwOTEwMTMwMDE5LjM1MDgxLTEtam9uYXRoYW5oQG52aWRpYS5j
b20vCj4gVGVzdGVkLWJ5OiBKb24gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KPiBTdWdn
ZXN0ZWQtYnk6IE7DrWNvbGFzIEYuIFIuIEEuIFByYWRvIDxuZnJhcHJhZG9AY29sbGFib3JhLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBTYXJhdmFuYSBLYW5uYW4gPHNhcmF2YW5ha0Bnb29nbGUuY29t
Pgo+IEFja2VkLWJ5OiBUaGllcnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+IExpbms6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDEwMjQwNjEzNDcuMTc3MTA2My0zLXNhcmF2
YW5ha0Bnb29nbGUuY29tCj4gU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVn
a2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2Fz
aGFsQGtlcm5lbC5vcmc+CgpBcyBtZW50aW9uZWQgaW4gdGhlIG9yaWdpbmFsIGNvdmVyIGxldHRl
cjoKClBTQTogRG8gbm90IHB1bGwgYW55IG9mIHRoZXNlIHBhdGNoZXMgaW50byBzdGFibGUga2Vy
bmVscy4gZndfZGV2bGluawpoYWQgYSBsb3Qgb2YgY2hhbmdlcyB0aGF0IGxhbmRlZCBpbiB0aGUg
bGFzdCB5ZWFyLiBJdCdzIGhhcmQgdG8gZW5zdXJlCmNoZXJyeS1waWNrcyBoYXZlIHBpY2tlZCB1
cCBhbGwgdGhlIGRlcGVuZGVuY2llcyBjb3JyZWN0bHkuIElmIGFueSBvZgp0aGVzZSByZWFsbHkg
bmVlZCB0byBnZXQgY2hlcnJ5LXBpY2tlZCBpbnRvIHN0YWJsZSBrZXJuZWxzLCBjYyBtZSBhbmQK
d2FpdCBmb3IgbXkgZXhwbGljaXQgQWNrLgoKSXMgdGhlcmUgYSBwcmVzc2luZyBuZWVkIGZvciB0
aGlzIGluIDQuMTk/CgotU2FyYXZhbmEKCj4gLS0tCj4gIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2Iu
YyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jIGIvZHJpdmVycy9waHkv
dGVncmEveHVzYi5jCj4gaW5kZXggODU2Mzk3ZGVmODlhYy4uMTMzZjUwNGRmZTlhNyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS90ZWdy
YS94dXNiLmMKPiBAQCAtNTMxLDcgKzUzMSw3IEBAIHN0YXRpYyBpbnQgdGVncmFfeHVzYl9wb3J0
X2luaXQoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCwKPgo+ICAgICAgICAgZGV2aWNlX2lu
aXRpYWxpemUoJnBvcnQtPmRldik7Cj4gICAgICAgICBwb3J0LT5kZXYudHlwZSA9ICZ0ZWdyYV94
dXNiX3BvcnRfdHlwZTsKPiAtICAgICAgIHBvcnQtPmRldi5vZl9ub2RlID0gb2Zfbm9kZV9nZXQo
bnApOwo+ICsgICAgICAgZGV2aWNlX3NldF9ub2RlKCZwb3J0LT5kZXYsIG9mX2Z3bm9kZV9oYW5k
bGUob2Zfbm9kZV9nZXQobnApKSk7Cj4gICAgICAgICBwb3J0LT5kZXYucGFyZW50ID0gcGFkY3Rs
LT5kZXY7Cj4KPiAgICAgICAgIGVyciA9IGRldl9zZXRfbmFtZSgmcG9ydC0+ZGV2LCAiJXMtJXUi
LCBuYW1lLCBpbmRleCk7Cj4gLS0KPiAyLjQzLjAKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
