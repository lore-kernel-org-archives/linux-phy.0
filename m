Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DE80C52D7C
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 11:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z88J58CCkf+1FSb2Y0cFN26CXHM1jMm8+P/gUGUTkzU=; b=zVMacjzTE3yucZ
	7/GxRyShLT7eVEqEDojfLaHatSxSXSQEuBML6W9zwOlG/Nne6NKDTSgGJS2KC/KL+vQAykTXl8CPo
	KZ9uTj3e7ull/hRFR4Gyf1Q2OTg5ocbmw0eK4M2fg88iJJPKp0elsH/jEavNnDDiEW1SBmNgfuzoV
	ycGUcPirvVmohbTQSOFW630ZmF+aifOsV5XPvSOLn8w6qQ0Q5SOSonCeQrrvjNiW1gd5grHrrix8R
	jzgeQP640BozUqxKGfUg2wYMVOsbN8BtJI2qj4IVCFO5Rfe7sgJYB0ZBkGYdSyH9a8+ovYlsScFPm
	zre0isgeI82H/JG16NjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgjLp-00000008doD-226S;
	Wed, 21 Aug 2024 11:18:05 +0000
Received: from msa-218.smtpout.orange.fr ([193.252.23.218] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgjLH-00000008dbl-0keL;
	Wed, 21 Aug 2024 11:17:34 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id gjL9sQFngCul1gjL9sEtOj; Wed, 21 Aug 2024 13:17:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1724239046;
	bh=kr2KiH+kUfl/3dNGPVMYeEb8Ymgpv3gnzcFAS84Bn34=;
	h=Message-ID:Date:MIME-Version:From:Subject:To;
	b=ck8kFNAWQa0WtgUERuyPYqzkZxKa72JzNcJByRCWnakgkadAr8dFipxmsG4UZ9bdW
	 Jr+5KXc24nDNVWnadOtk/G9/TqoGPZ2WUtGFuVYLlTmGif0g/bAkaJZh//detw497N
	 ZwB+3ftk1K8SMqXVLZj0InF1VWJLMnMrUPkp0Ae47Xu7WfAcwPXqhOpdBOyFw9+pTG
	 RYsCGkbv6eVjpGNUKQR1N2fNnUw8zbPzMmkUn69Q4qsjF7NTbgSxAYbhebqnwbBzBB
	 9ls4gxSoq4ZNLuxOhA5I3a06REGzn8VmNyH68ZarY/JcIRW04psooOs80zwqNfqTTO
	 Zwu7WUfaweXdg==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Wed, 21 Aug 2024 13:17:26 +0200
X-ME-IP: 90.11.132.44
Message-ID: <816aa82c-1f50-4dfe-a41f-e396e0bdf219@wanadoo.fr>
Date: Wed, 21 Aug 2024 13:17:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH v2 2/3] phy: phy-rockchip-inno-usb2: Handle failed extcon
 allocation better
To: Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1724225528.git.dsimic@manjaro.org>
 <96200baf794a0c451f3bbc3f5530b8cf0e359dfc.1724225528.git.dsimic@manjaro.org>
X-Mozilla-News-Host: news://news.gmane.io
Content-Language: en-US, fr-FR
In-Reply-To: <96200baf794a0c451f3bbc3f5530b8cf0e359dfc.1724225528.git.dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_041731_722353_A92984D9 
X-CRM114-Status: GOOD (  17.63  )
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

TGUgMjEvMDgvMjAyNCDDoCAwOTozNywgRHJhZ2FuIFNpbWljIGEgw6ljcml0wqA6Cj4gUmV0dXJu
IHRoZSBhY3R1YWwgZXJyb3IgY29kZSB1cG9uIGZhaWx1cmUgdG8gYWxsb2NhdGUgZXh0Y29uIGRl
dmljZSwgaW5zdGVhZAo+IG9mIGhhcmRjb2RpbmcgLUVOT01FTS4gIFVzZSBkZXZfZXJyX3Byb2Jl
KCkgdG8gYWxzbyBsb2cgYXBwcm9wcmlhdGUgbWVzc2FnZXMsCj4gd2hpY2ggaXMgZmluZSBiZWNh
dXNlIHRoZSBjb250YWluaW5nIGZ1bmN0aW9uIGlzIHVzZWQgaW4gdGhlIHByb2JlIHBhdGguCj4g
Cj4gSGVscGVkLWJ5OiBIZWlrbyBTdHVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gU2lnbmVkLW9m
Zi1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gLS0tCj4gICBkcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMgfCAzICsrLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMKPiBpbmRleCAxMTNiZmM3MTdm
ZjAuLjA1YWY0NmRkYTExZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtaW5uby11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtaW5uby11c2IyLmMKPiBAQCAtNDM1LDcgKzQzNSw4IEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfdXNiMnBoeV9leHRjb25fcmVnaXN0ZXIoc3RydWN0IHJvY2tjaGlwX3VzYjJwaHkgKnJwaHkp
Cj4gICAJCQkJCQlyb2NrY2hpcF91c2IycGh5X2V4dGNvbl9jYWJsZSk7Cj4gICAKPiAgIAkJaWYg
KElTX0VSUihlZGV2KSkKPiAtCQkJcmV0dXJuIC1FTk9NRU07Cj4gKwkJCXJldHVybiBkZXZfZXJy
X3Byb2JlKHJwaHktPmRldiwgUFRSX0VSUihlZGV2KSwKPiArCQkJCQkgICAgICJmYWlsZWQgdG8g
YWxsb2NhdGUgZXh0Y29uIGRldmljZVxuIik7CgpSZXR1cm5pbmcgUFRSX0VSUihlZGV2KSBtYXkg
bWFrZSBzZW5zZSwgYnV0IEkgZG9uJ3QgdGhpbmsgdGhhdCBhZGRpbmcgYSAKZGV2X2Vycl9wcm9i
ZSgpIHJlYWxseSBoZWxwcy4KCmRldm1fZXh0Y29uX2Rldl9hbGxvY2F0ZSgpIGNhbiBvbmx5IHJl
dHVybiAtRUlOVkFMIGlmIGl0IDJuZCBhcmd1bWVudCBpcyAKTlVMTC4gSXQgaXMgdHJpdmlhbCB0
byBzZWUgdGhhdCBpdCBjYW4ndCBoYXBwZW4gaGVyZSwgCnJvY2tjaGlwX3VzYjJwaHlfZXh0Y29u
X2NhYmxlIGlzIGEgZ2xvYmFsIHZhcmlhYmxlLgoKaW4gYWxsIG90aGVyIGNhc2VzLCBpdCByZXR1
cm5zIC1FTk9NRU0gYmVjYXVzZSBvZiBhIGZhaWxlZCBtZW1vcnkgCmFsbG9jYXRpb24uIEluIHRo
aXMgY2FzZSwgdXN1YWxseSBpdCBpcyBub3QgbmVlZGVkIHRvIGxvZyBhbnl0aGluZyAKYmVjYXVz
ZSBpdCBpcyBhbHJlYWR5IGxvdWQgZW5vdWdoLgoKSnVzdCBteSAyYy4KCkNKCgoKPiAgIAo+ICAg
CQlyZXQgPSBkZXZtX2V4dGNvbl9kZXZfcmVnaXN0ZXIocnBoeS0+ZGV2LCBlZGV2KTsKPiAgIAkJ
aWYgKHJldCkgewo+IAo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
