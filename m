Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FDE7D46BFA
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jan 2026 20:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPKnhTXUQ72lYI+rGovt9gIcoH9DjtrJEpVwj2/kCmE=; b=xOfp7OrIRK7K1X
	H8BEAcHlCDcC8+5QPtFs+zQlc8usj+2Hf0uL0txAkoBQ2hUqRCgFp4Dd7u/ilmmxZvYQFDQpp3BTO
	C6SPZjk/1qOlUVvYiCUa0nFnuPGAwjojDZ5U7zjJi2oT5i4Dzx0GkHl524xPiDyeV6gMpyZFuJQ81
	zbhUC4yxUvrgkw4Isk6qMs5FLsudEEzSBn6x2VB9J3mi+5ImzZsuZcdKKWpRr3ODp1YZRt4AxMATV
	NbL6kRXmk77l0gAm+Yk9mciA66kn2lHHBwcNuDPJV4H2QqveJnX+Lz+k1kX5oXcmkvTixw0cL4Kns
	PaZnBIJMcwMkE1KgGSXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlBlG-0000000GiQQ-08kz;
	Wed, 28 Jan 2026 20:03:34 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlBlC-0000000GiPi-3IKn
	for linux-phy@lists.infradead.org;
	Wed, 28 Jan 2026 20:03:33 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-4359249bbacso898551f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Jan 2026 12:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769630609; x=1770235409; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xfDqLnr78jrG2/XLP9Dn27y+jadR+KNn5dnX37UWvRM=;
        b=ByuEcBaKGntCN0xk6Bbym2ufhLv2XuE48qaUcKAADBBY4M4oYdXV+hVJ6RQQIvTlkd
         bI996wCLyTxxcn2NIYKyFbLvFxeABemWi189ui0QOkPPwVEjjJAZa+93QKiHEZzIf3bx
         H0xOljUfIznepGVwuZ/m3kJKFMMKYUMggGuZKJjyjU8mkg2AYilrjyB11kRphPVMhBPT
         LJHezjjRyHc1Y3hyWcD852PUPlcnhLNdlyQXQdw5Ib8gCPVAGWAGmJXJZfgNiSZhsg1a
         SX+zCozynVs3G6efFd5Sto66v+H5xpuwWZPrwfwX2reKae+/8AgFpyUY1ffLo3eljhWO
         boLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769630609; x=1770235409;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xfDqLnr78jrG2/XLP9Dn27y+jadR+KNn5dnX37UWvRM=;
        b=sd3v5ulu3qBjThYZvttD+fnZu1VQfVRe0ZnnTuxDN1/xUg0nv+B3Yp7fsA0/hWWnOl
         138WCSMlEss0/rQI+U+KNBZQckqyi72VWACOsU3WR0/NNAzLfEX4mg2gKyplh2EKO4rm
         Qdt21vG1JXdByHKQXr3Rf60Lv9KQjAp6qaT8f4BPMQETnzS9+QBhc1PE7iUwzqzNfmog
         76ZC+oBSJQPi/0Njc8+cgXOCkomNYPlS6HOm5fg2MTb9gxwauYUuQABiAJ19qwAF6MxZ
         e/cjU0/MoRjTACAcY3GM2yck5Ty/QlVrlkCpg7Js+Cy2os4FsyHeZpkbn/KPNMkn/8/5
         SbyA==
X-Gm-Message-State: AOJu0Yznfcc4LXJATVEdIvC/epzwgw96i+/JiPc2pQzJVt+aCkz/N01c
	pYfEaJTf4F/P+pZawMVLJZDP1JTuDVfpqCcidZb4NFV3Tdvquj476Z79q4mbUNeeqbk=
X-Gm-Gg: AZuq6aKPlJcmou2egavbAoTk+/JyyncFuWkfCa4SLueA1nTzBS3NoJeZPmA+I/TUl3K
	2qh18nRjRhljXcdo9hUF3wJWp8JDhJACwhjEVsQDjUika41UZf5LzoS9iFGlJNaDSL1Jkr6sdfT
	c9rWKdE/4APoaTiKy8z9TRBR2C6FZzY1p9csJpklrAf1m5bQWCe/uLRikFGzii+cHzX9SQowbec
	8gD5Lcu1Qtzaqa6Tr1Hx070Al32ssqkBfMicz6JW9UcAk33Mo/a2HzoSyeAUUwsEdWb4eqZZ1Mo
	tvf3hJs2JPAzCAyyPHfEB+VVFsOGDbkb466RKtVt1PKr7o3uelT+l4eGgDCJVwkFM6xC4FAXHVj
	/y6T5Oiu6FoqzxMExxavsl2aFm3OCJu0RbCfZne3XDqzHcQQ+lVeBf2CsjcqpW4PJKk/wBR34hV
	QAIGji4Km9c8YlWErspKJjjCA=
X-Received: by 2002:a05:6000:4011:b0:435:db9b:5885 with SMTP id ffacd0b85a97d-435ea0672c8mr948788f8f.10.1769630608753;
        Wed, 28 Jan 2026 12:03:28 -0800 (PST)
Received: from [192.168.235.30] ([80.233.75.117])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1322dc7sm9169904f8f.37.2026.01.28.12.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 12:03:28 -0800 (PST)
Message-ID: <e955868c06547ac62d34d594d45dd07aa19e361b.camel@linaro.org>
Subject: Re: [PATCH] phy: PHY_GOOGLE_USB should depend on ARCH_GOOGLE
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Vinod Koul
 <vkoul@kernel.org>,  Neil Armstrong <neil.armstrong@linaro.org>, Peter
 Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Naveen Kumar <mnkumar@google.com>, Roy Luo	
 <royluo@google.com>, Joy Chakraborty <joychakr@google.com>, Arnd Bergmann	
 <arnd@arndb.de>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 28 Jan 2026 20:03:25 +0000
In-Reply-To: <0caa3c449b0c3d64944da3f1003d9389bdc13f98.1769541083.git.geert+renesas@glider.be>
References: <0caa3c449b0c3d64944da3f1003d9389bdc13f98.1769541083.git.geert+renesas@glider.be>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_120331_541667_5F854DC9 
X-CRM114-Status: GOOD (  15.51  )
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

SGkgR2VlcnQsCgpPbiBUdWUsIDIwMjYtMDEtMjcgYXQgMjA6MTIgKzAxMDAsIEdlZXJ0IFV5dHRl
cmhvZXZlbiB3cm90ZToKPiBUaGUgR29vZ2xlIFRlbnNvciBTb0MgVVNCIFBIWSBpcyBvbmx5IHBy
ZXNlbnQgb24gR29vZ2xlIFRlbnNvciBHNQo+IChMYWd1bmEpIFNvQ3MuwqAgSGVuY2UgYWRkIGEg
ZGVwZW5kZW5jeSBvbiBBUkNIX0dPT0dMRSwgdG8gcHJldmVudCBhc2tpbmcKPiB0aGUgdXNlciBh
Ym91dCB0aGlzIGRyaXZlciB3aGVuIGNvbmZpZ3VyaW5nIGEga2VybmVsIHdpdGhvdXQgR29vZ2xl
Cj4gVGVuc29yIFNvQyBzdXBwb3J0Lgo+IAo+IEZpeGVzOiBjYmNlNjY2NjljODJlZTlhICgicGh5
OiBBZGQgR29vZ2xlIFRlbnNvciBTb0MgVVNCIFBIWSBkcml2ZXIiKQo+IFNpZ25lZC1vZmYtYnk6
IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4gLS0tCj4gQVJD
SF9HT09HTEUgaXMgbm90IHlldCB1cHN0cmVhbSwgYnV0IHRoYXQgZG9lc24ndCBodXJ0LgoKSSBj
YW4gc2VlIHlvdXIgcG9pbnQsIGFuZCBoYXZlIG5vIG9iamVjdGlvbiwgYnV0IGZvciBjb250ZXh0
LCBHcmVnCmhhZCBhc2tlZCB0byBub3QgYWRkIGRlcGVuZGVuY2llcyBvbiBhIGNvbmZpZyBvcHRp
b24gdGhhdCBtaWdodCBvcgptaWdodCBub3QgZ2V0IGFkZGVkIGluIHRoZSBmdXR1cmUgLSBBUkNI
X0dPT0dMRToKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MTIxNzI4LXJlbGlhYmx5
LWNyYWJncmFzcy0yNjAxQGdyZWdraC8KCk1heWJlIGFuIGFsdGVybmF0aXZlIHdvdWxkIGJlIHRv
IG1ha2UgaXQgZGVmYXVsdD1uLCBhbmQgY2hhbmdlIHRoYXQKZGVmYXVsdCBvbmNlIEFSQ0hfR09P
R0xFIGdldHMgYWRkZWQ/CgoKQ2hlZXJzLApBbmRyZScKCj4gLS0tCj4gwqBkcml2ZXJzL3BoeS9L
Y29uZmlnIHwgMSArCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L0tjb25maWcKPiBpbmRl
eCAxNDJlN2IwZWYyZWZiOTIwLi4zY2VkYTlhMjBkNTcxMDM4IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGh5L0tjb25maWcKPiArKysgYi9kcml2ZXJzL3BoeS9LY29uZmlnCj4gQEAgLTQ5LDYgKzQ5
LDcgQEAgY29uZmlnIEdFTkVSSUNfUEhZX01JUElfRFBIWQo+IMKgCj4gwqBjb25maWcgUEhZX0dP
T0dMRV9VU0IKPiDCoAl0cmlzdGF0ZSAiR29vZ2xlIFRlbnNvciBTb0MgVVNCIFBIWSBkcml2ZXIi
Cj4gKwlkZXBlbmRzIG9uIEFSQ0hfR09PR0xFIHx8IENPTVBJTEVfVEVTVAo+IMKgCXNlbGVjdCBH
RU5FUklDX1BIWQo+IMKgCWhlbHAKPiDCoAnCoCBFbmFibGUgc3VwcG9ydCBmb3IgdGhlIFVTQiBQ
SFkgb24gR29vZ2xlIFRlbnNvciBTb0NzLCBzdGFydGluZyB3aXRoCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
