Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 332EECD6E6E
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 21:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPyFRzUUfL/jl018fqHpInX8fetL6snyluYBc1PRU3g=; b=WIEDJwymcE+9dt
	//58/QetHhxat+bLGTkTRsDt7vFlqWnirmg63H9d3WyjcSwpe8/BziH3xESVVnFcP5YFpebFPuGF4
	nqnAZ9AGtlWnqvHg91dkNwdAfSkZxpS+acwB7HgfaeuQYzlbEVDZaiFJiIgfHCs00Sg9f/3/O9vXH
	oikT1h5m0vGklqm4TJNNpXOc/zhJCC08smblSnNhqdp3P0VE+CF2Zjo3z4wP/Z9hCnbckWfj5ms9Q
	RlScU6XCA/IfAbhnvDo9qvLgweXRbCMrMfkl10qq7rY9CE7DWrM8oiiaCYts3YMpxrJ/kEgtE4ZX1
	YEAqAhzlMknKkV99PDww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVFPu-0000000HJrQ-3KK6;
	Thu, 04 Jun 2026 21:15:54 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVFPq-0000000HJqo-2iAG
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 21:15:52 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 956A14E406AC;
	Thu,  4 Jun 2026 21:15:47 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4CB325FED1;
	Thu,  4 Jun 2026 21:15:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F4213106A1D59;
	Thu,  4 Jun 2026 23:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780607746; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=pOjBojSdOqI950HvFqUStTBY/H0OP5HMjT8uY3n8qDo=;
	b=qhD906c7wi4RO3tIb91H7sy8JaNxOpSMGv1l/u2cm+PbpftHyD7b1Hm3sRfQIOpxiQpCvX
	RlUJRkvbdBmWK+G8kqf4MwdhkCl0aAYjOU36maQaM3pWaTmUvVFIQEr15FlXOqlH/5c31U
	IHsOF98kHZErzXd8dh9ppSmEjReUgyn6+eudB+HOOmPKWmOp9+FqZx7NokfmQaZkQoMt93
	L0ErMuNAyB9Z8c47SUg394hGcXMnf3YAFtOflutq3WNQWaviB8O8Z75P+nHjui/WmSkAYo
	GsohIC1ElgtKK/AVaHOA5BIayJ5IgFcTQpmG/aXooGeYWF/Q9q3fKQEd8DcpyA==
Message-ID: <f7c713b9-7674-4b2e-82ac-01485d128c05@bootlin.com>
Date: Thu, 4 Jun 2026 23:15:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next] net: phy: mdio-i2c: defer RollBall bridge probe
 to PHY discovery
To: Petr Wozniak <petr.wozniak@gmail.com>, netdev@vger.kernel.org
Cc: kuba@kernel.org, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, bjorn@mork.no, olek2@wp.pl
References: <20260604181207.17468-1-petr.wozniak@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260604181207.17468-1-petr.wozniak@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_141550_816841_D13EF826 
X-CRM114-Status: GOOD (  10.01  )
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

SGksCgpPbiA2LzQvMjYgMjA6MTIsIFBldHIgV296bmlhayB3cm90ZToKPiBjb21taXQgOGZlMTI1
ODkyZjQwICgibmV0OiBwaHk6IHNmcDogcHJvYmUgZm9yIFJvbGxCYWxsIEkyQy10by1NRElPCj4g
YnJpZGdlIGluIG1kaW8taTJjIikgaW50cm9kdWNlZCBhIHJlZ3Jlc3Npb246IGZvciBTRlAgbW9k
dWxlcyBpbnNlcnRlZAo+IGJlZm9yZSBzeXN0ZW0gYm9vdCwgdGhlIFJvbGxCYWxsIEkyQy10by1N
RElPIGJyaWRnZSBpcyBub3QgeWV0IHJlYWR5IHRvCj4gcmVzcG9uZCB0byBDTURfUkVBRC9DTURf
RE9ORSBjeWNsZXMgd2hlbiBzZnBfc21fYWRkX21kaW9fYnVzKCkgcnVucy4KPiBUaGUgMjAwIG1z
IHByb2JlIHRpbWVzIG91dCwgaTJjX21paV9wcm9iZV9yb2xsYmFsbCgpIHJldHVybnMgLUVOT0RF
ViwKPiBhbmQgc2ZwX3NtX2FkZF9tZGlvX2J1cygpIHNldHMgbWRpb19wcm90b2NvbCA9IE1ESU9f
STJDX05PTkUuICBCeSB0aGUKPiB0aW1lIHNmcF9zbV9wcm9iZV9mb3JfcGh5KCkgcnVucyAodXAg
dG8gfjE3IHMgbGF0ZXIgb24gYWZmZWN0ZWQKPiBoYXJkd2FyZSksIHRoZSBicmlkZ2UgaXMgZnVs
bHkgaW5pdGlhbGl6ZWQg4oCUIGJ1dCBQSFkgcHJvYmluZyBpcyBza2lwcGVkCj4gYmVjYXVzZSB0
aGUgcHJvdG9jb2wgaGFzIGFscmVhZHkgYmVlbiBjaGFuZ2VkIHRvIE5PTkUuCj4gCj4gTW92ZSB0
aGUgcHJvYmUgZnJvbSBpMmNfbWlpX2luaXRfcm9sbGJhbGwoKSDigJQgY2FsbGVkIGF0IGJ1cy1j
cmVhdGlvbgo+IHRpbWUg4oCUIHRvIHNmcF9zbV9wcm9iZV9mb3JfcGh5KCkgaW4gc2ZwLmMsIHdo
ZXJlIGl0IHJ1bnMgYWZ0ZXIgdGhlIFNGUAo+IHN0YXRlIG1hY2hpbmUncyBtb2R1bGUgaW5pdGlh
bGl6YXRpb24gZGVsYXlzLiAgRXhwb3J0IHRoZSBwcm9iZSBmdW5jdGlvbgo+IGFzIG1kaW9faTJj
X3Byb2JlX3JvbGxiYWxsKCkgc28gc2ZwLmMgY2FuIGNhbGwgaXQuCj4gCj4gRm9yIFJUTDgyNjFC
RS1iYXNlZCBtb2R1bGVzOiB0aGUgcHJvYmUgY29ycmVjdGx5IHJldHVybnMgLUVOT0RFViBhdCBQ
SFkKPiBkaXNjb3ZlcnkgdGltZSwgY2F1c2luZyBzZnBfc21fcHJvYmVfZm9yX3BoeSgpIHRvIGRl
c3Ryb3kgdGhlIE1ESU8gYnVzCj4gYW5kIHNldCBNRElPX0kyQ19OT05FIOKAlCBlbGltaW5hdGlu
ZyB0aGUgNSsgbWludXRlIFBIWSBwcm9iZSByZXRyeSBsb29wLgo+IAo+IEZvciBnZW51aW5lIFJv
bGxCYWxsIG1vZHVsZXMgaW5zZXJ0ZWQgYmVmb3JlIGJvb3QgKGUuZy4gRkxZUFJPCj4gU0ZQLTEw
R1QtQ1MtMzBNIHdpdGggQXF1YW50aWEgQVFSMTEzQyk6IHRoZSBwcm9iZSBub3cgcnVucyBhZnRl
cgo+IGluaXRpYWxpemF0aW9uIGlzIGNvbXBsZXRlIGFuZCBjb3JyZWN0bHkgcmV0dXJucyAwIOKA
lCBQSFkgZGV0ZWN0aW9uCj4gcHJvY2VlZHMgbm9ybWFsbHkuCgpJJ20gbm90IHN1cmUgSSdtIGdl
dHRpbmcgaXQsIGhvdyBjb21lIHRoZSBpbml0IGRvZXNuJ3QgaGF2ZSB0aW1lIHRvIGNvbXBsZXRl
CmZvciBtb2R1bGVzIHRoYXQgYXJlIHByZXNlbnQgYXQgYm9vdCwgd2hpbGUgaXQgd29ya3MgZm9y
IGhvdHBsdWdnZWQgbW9kdWxlcyA/CgpJJ2QgZXhwZWN0IG1vZHVsZXMgdG8gdGFrZSBldmVuIGxv
bmdlciB0byBpbml0IGZvciBob3RwbHVnZ2VkIG1vZHVsZXMsIGFzIHRoZXkKYXJlbid0IHNpdHRp
bmcgaW4gdGhlIGNhZ2UgZHVyaW5nIHRoZSB3aG9sZSBsaW51eCBib290LgoKTWF4aW1lCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
