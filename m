Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A69FD2CE1A
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 03:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7aNHXka30LaOUgTZHme0E5gEEBocFmyeKQoQcl9fT8=; b=CLSku4DnMJPC6l
	onzNVDGZwPaPQNuC3f2TpaPM/ZuVQzQiRp0sAI5AHZuLJYnSSIe2I5ncwWy9YAfwT38GfQIyBZWo9
	+/h/iA663iHB8XX/6FXrrQCR3qf8xq+8bxoXmyctVwcpRVj6mkDsWx/BAXoyCdxbwRki7TaD0wAgo
	QWcOcACWOnHVj0QWBMJOvKokHV8Sy+FHv62RAKbFRA+v8XSGbFzRVroZfYP8tGw1L4OFHLpG1MnVL
	40h75gkAoBdVJRlf5YEOi0DodM94BSEa0PMehKY9xgwGHCGOODP4dEn2KdwjyNUCd1pDvoE+cMe/l
	a/adeHQY8e0H4eM+8REQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRMrA-00000008zAg-0agj;
	Fri, 05 Dec 2025 03:51:44 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRMr6-00000008z9n-1NTN
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 03:51:42 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-7aad4823079so1560104b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Dec 2025 19:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764906699; x=1765511499; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WezX6hNbQA28AqxZ2YLg6gysDGXXgYStXFDCsVPlTbo=;
        b=uce0GEnnXeRRyzhUxW6eC051a9b7fWRwf8JeHnqTLefY9qoS21iPHs7Kq0B21XzabS
         bC5wqtlhXWgad+anzDV5rPrMMFM9qrymIquMOuZDBKndq5VjXvzC1eUnudzGad8lGPpj
         /4v+U3nes5M3wfnjjJV14CGzUQ7dw1xrjibMk/CjrdKxz7+ymGDcY8AmVxcxP0CGgBZf
         KBXCwwzu8qdiBlrChCR+6uAAZovLQGV0peHJxhXfGCUf/K9yIhQbOIMPcpo6Urzg/zGo
         II3hTZilgD9PPbj3SmEgcZQDLB/iWOHIyzZldL+rtrjlgiCC8NGOOgLui8Vm/c4g5Mvr
         XSbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764906699; x=1765511499;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WezX6hNbQA28AqxZ2YLg6gysDGXXgYStXFDCsVPlTbo=;
        b=NV/CjJ3WAqb+ncFP++mAWezZzk3QL4OduOyHTfrIpbLf2D+Ah0nIsuolP9Dmtn3cNz
         OU2bFHmJ7zqb77Mz3W/adpxxbNegooQ+Ed0VA1h6Qsx8juEj7PnbEcuHJE6Csq44lCjU
         kqPceiBM0MacqEj9bjjNjZe846cKyCo88ZOlWkIHtBhFMYrN+SzrMWgGsE8d3RreHt+M
         opYJ1qkrOdmRFjKREE+ydSYMlgI3UB2Xi5VUtOqitKJBFhFbHM9e8Cwdp2tpfETLulss
         29etEsVLsWuzeM1WBodqJSMySZb82zzQOvuJpTJNApkOlGTiszBD1z0PAnCTACeFEdJY
         Mg0w==
X-Forwarded-Encrypted: i=1; AJvYcCXngtHiIbME/s5ossSFK37aawi7lDLzRG+rKm3C6hmgQcKjcDhtJ3VkyFEB1F+gjIXWq8P29dKSSm0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwO7hIuGqfj3xyLBrH83gUUW7ic+8ZOuMYjfA1NYaOqmCfaPtsG
	/weToknsfifU6a95SAEr8Nam5dQdS2Ivnj1l4F/tHAtwJw7exwwa214n+4TQMB6rLTYtJJTSbD6
	UjReaO4GS/E4Jv3ANGOVDw34y7MIHiqx9XiPaM+lfvU5SBJtaQ/INBheztBk=
X-Gm-Gg: ASbGnctA2XvgdqrA/2gATHRf3VkifVMe//ArSjSbPCpmNvfGskHScqWEWouABIjbzJ1
	61NnWiYlaDbtqQGoR4llpEBytqOGOO44aetQMZj2s5iL1Sg4w1gGHjtLkUuBAWICvxfUR1vwgY2
	28734VF8JkxlO8cLUvElHo+Jcc2hQgBh5CIosEuoXkl6jiW5qjBhGiq2kaPXxjGIDmwS9kYO0vy
	la48YWeLCezaE2gZIZDfAhE3Yq2xBkwQkxrRbyDg32W4Zd9xzvxFNnBS7G8Q6c/ZQkH9eYWe265
	XJ11RtJF8ncV5HRgZ8ba8YQ36o/U
X-Google-Smtp-Source: AGHT+IH7GWuDo91VkkxlEQ1I2pmrwkMqe1WpyJDLcRf2GJbb70zopeBu3Xn1bmW37Gs5MbOfJb8chhFABiGk+XWPpXI=
X-Received: by 2002:a05:7022:3841:b0:11b:c1fb:89a with SMTP id
 a92af1059eb24-11df0c3d70fmr6132695c88.32.1764906698269; Thu, 04 Dec 2025
 19:51:38 -0800 (PST)
MIME-Version: 1.0
References: <20251121-phyb4-v7-0-df644fa62180@google.com> <20251121-phyb4-v7-2-df644fa62180@google.com>
 <CADrjBPpLn9qzg1y5_c_0CYL2U8p6taMWtPOw5RykAO4=4uNeUA@mail.gmail.com> <1a53d473-fc13-4ac5-ba52-4701d95e3073@kernel.org>
In-Reply-To: <1a53d473-fc13-4ac5-ba52-4701d95e3073@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Thu, 4 Dec 2025 19:51:01 -0800
X-Gm-Features: AWmQ_bkI3gBipBfIh3J4uywjnOrs9760E4xYx1DdnhCprCkAyhSf6HmOxRGOWVk
Message-ID: <CA+zupgw4_o7Po_Zw1qT13YU=PGXoJ_RAPKiAwFpt6RRyO14OAA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] phy: Add Google Tensor SoC USB PHY driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_195140_445294_7E1D9A04 
X-CRM114-Status: GOOD (  20.30  )
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

T24gU2F0LCBOb3YgMjIsIDIwMjUgYXQgNDo0OeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAyMi8xMS8yMDI1IDEzOjQ4LCBQZXRlciBHcmlm
ZmluIHdyb3RlOgo+ID4gSGkgUm95LAo+ID4KPiA+IE9uIEZyaSwgMjEgTm92IDIwMjUgYXQgMDg6
NTYsIFJveSBMdW8gPHJveWx1b0Bnb29nbGUuY29tPiB3cm90ZToKPiA+Pgo+ID4+IFN1cHBvcnQg
dGhlIFVTQiBQSFkgZm91bmQgb24gR29vZ2xlIFRlbnNvciBHNSAoTGFndW5hKS4gVGhpcwo+ID4+
IHBhcnRpY3VsYXIgVVNCIFBIWSBzdXBwb3J0cyBib3RoIGhpZ2gtc3BlZWQgYW5kIHN1cGVyLXNw
ZWVkCj4gPj4gb3BlcmF0aW9ucywgYW5kIGlzIGludGVncmF0ZWQgd2l0aCB0aGUgU05QUyBEV0Mz
IGNvbnRyb2xsZXIgdGhhdCdzCj4gPj4gYWxzbyBvbiB0aGUgU29DLiBUaGlzIGluaXRpYWwgcGF0
Y2ggc3BlY2lmaWNhbGx5IGFkZHMgZnVuY3Rpb25hbGl0eQo+ID4+IGZvciBoaWdoLXNwZWVkLgo+
ID4+Cj4gPj4gQ28tZGV2ZWxvcGVkLWJ5OiBKb3kgQ2hha3JhYm9ydHkgPGpveWNoYWtyQGdvb2ds
ZS5jb20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogSm95IENoYWtyYWJvcnR5IDxqb3ljaGFrckBnb29n
bGUuY29tPgo+ID4+IENvLWRldmVsb3BlZC1ieTogTmF2ZWVuIEt1bWFyIDxtbmt1bWFyQGdvb2ds
ZS5jb20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogTmF2ZWVuIEt1bWFyIDxtbmt1bWFyQGdvb2dsZS5j
b20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogUm95IEx1byA8cm95bHVvQGdvb2dsZS5jb20+Cj4gPj4g
LS0tCj4gPj4gIGRyaXZlcnMvcGh5L0tjb25maWcgICAgICAgICAgfCAgMTMgKysKPiA+PiAgZHJp
dmVycy9waHkvTWFrZWZpbGUgICAgICAgICB8ICAgMSArCj4gPj4gIGRyaXZlcnMvcGh5L3BoeS1n
b29nbGUtdXNiLmMgfCAyOTIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ID4KPiA+IFBsZWFzZSBhZGQgdGhpcyBuZXcgZmlsZSB0byBUZW5zb3IgU29DIE1BSU5U
QUlORVJTIGVudHJ5IHNvIGl0J3MKPiA+IGVhc2llciB0byByZXZpZXcgZnV0dXJlIHBhdGNoZXMu
Cj4gPgo+ID4+ICAzIGZpbGVzIGNoYW5nZWQsIDMwNiBpbnNlcnRpb25zKCspCj4gPj4KPiA+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L0tjb25maWcKPiA+
PiBpbmRleCA2NzhkZDA0NTJmMGFhMDU5Nzc3MzQzM2YwNGQyYTliYTc3NDc0ZDJhLi5hZjE0ZWM3
NDU0MmE5ODc5Yzg1NmRlZTgyMzY3NTM5OTBmZGYzNzA1IDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZl
cnMvcGh5L0tjb25maWcKPiA+PiArKysgYi9kcml2ZXJzL3BoeS9LY29uZmlnCj4gPj4gQEAgLTEw
MSw2ICsxMDEsMTkgQEAgY29uZmlnIFBIWV9OWFBfUFROMzIyMgo+ID4+ICAgICAgICAgICBzY2hl
bWVzLiBJdCBzdXBwb3J0cyBhbGwgdGhyZWUgVVNCIDIuMCBkYXRhIHJhdGVzOiBMb3cgU3BlZWQs
IEZ1bGwKPiA+PiAgICAgICAgICAgU3BlZWQgYW5kIEhpZ2ggU3BlZWQuCj4gPj4KPiA+PiArY29u
ZmlnIFBIWV9HT09HTEVfVVNCCj4gPj4gKyAgICAgICB0cmlzdGF0ZSAiR29vZ2xlIFRlbnNvciBT
b0MgVVNCIFBIWSBkcml2ZXIiCj4gPj4gKyAgICAgICBkZXBlbmRzIG9uIEhBU19JT01FTQo+ID4+
ICsgICAgICAgZGVwZW5kcyBvbiBPRgo+ID4+ICsgICAgICAgZGVwZW5kcyBvbiBUWVBFQwo+ID4K
PiA+IEFkZCBDT01QSUxFX1RFU1QgZm9yIGJ1aWxkIHRlc3RpbmcuCj4KPiAuLi4gYW5kIHRoaXMg
cHJvYmFibHkgc2hvdWxkIGRlcGVuZCBvbiB5b3VyIEFSQ0hfeHh4IHx8IENPTVBJTEVfVEVTVAo+
Cj4gU2FtZSBmb3IgVVNCIERXQyBkcml2ZXIuCj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0
b2YKClBldGVyIGFuZCBLcnp5c3p0b2YsCgpUaGFua3MgZm9yIHRoZSByZXZpZXcgYW5kIGFjayB0
byBhbGwgdGhlIGNvbW1lbnRzLgpTZW5kaW5nIG91dCBhIG5ldyB2ZXJzaW9uLgoKVGhhbmtzLApS
b3kgTHVvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
