Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5C7CFEEF25
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 11:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QjOGlwY31gpC7m/hG+My8fcU8L50sagHTFpHTkgxxgE=; b=NIAAnJEmysgXzQ
	ClnipJS+iE9uX48VglLUldbP5UehW+hHEkyVAMHPlNUofdkhm5zbTB4HzpJ9ZFINo85rmqfBCzLG5
	hHv0SuT4kDmbZOmuAiJTpd0DolAbNKCaXjeQfJ6ZVlv0Ncemq0oHZFufvjfGBUK6YY73Xh93K+ws+
	03uY/bHfF2ICyNJF7XJWFrl6JYr/mtiAhjgfq3QuPbPJtcLjjdIzpy6/bQzDQ7RLwIDytDnZGtWsT
	C0gcySg2Mv6YdZye8NnRLJN7Uy5mh8Yc0Z5FIjf97I8nkuFzQFMeFv9tQXAgsBO2xobCF79Dw7q3S
	6bjarljL5OrC9YM9zGvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4pu-00000006O6C-15d7;
	Tue, 07 Apr 2026 11:43:14 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4pr-00000006O4T-1eFD;
	Tue, 07 Apr 2026 11:43:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=m8+dxvmtECNtO6/nlvcPTQOUYVBF4c5AJ3AT7nnB+dY=; b=lqLvqhF3ilaOrBHq8SKJmK6IJv
	ypuf7HzVvhUCp4JK/C6quvv7u1N0L0XY1DKGnEA1k+Ndys6s+N3Wk7jq5JErjE4ECWaiCx9p/sZ2d
	VYVwGQNJgfLe8a6FmhdGP9TAwUHztx/BWLd0bMB6/rzoRADtoKpdVJ3P7wiThH6Q2OkKPr05rOFMO
	hFMEeMNFS6VfhK6GJgUr17EZtyp+LVe9VxQHJXq27a8J7d9DtDwy0VEawEQJ/7gBoijtc9C0+3EZX
	E2/q+dw/V1jczghDcQiMUlstZKNp1eJYg/nK+HgT4ZYt1lVvqZt0wDNBpBIFmHw70zsJQHRmXtZOj
	Nb8wtueA==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pn-000IJI-0U;
	Tue, 07 Apr 2026 13:43:07 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pl-000PKA-1n;
	Tue, 07 Apr 2026 13:43:06 +0200
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Roger Quadros <rogerq@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v4 0/5] J722S SGMII support
Date: Tue,  7 Apr 2026 13:42:32 +0200
Message-ID: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27964/Tue Apr  7 08:24:40 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_044311_545457_2C2349E1 
X-CRM114-Status: GOOD (  11.53  )
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

VGhlIEo3MjJTIENQU1cgYW5kIFNFUkRFUyBhcmUgdmVyeSBzaW1pbGFyIHRvIHRoZSB2YXJpYW50
cyBmb3VuZCBvbiB0aGUKQU02NCwgYnV0IHRoZXkgYWRkaXRpb25hbGx5IHN1cHBvcnQgU0dNSUku
IEludHJvZHVjZSBuZXcgY29tcGF0aWJsZQpzdHJpbmdzIGZvciB0aGUgSjcyMlMgdG8gYWRkIHRo
aXMgc3VwcG9ydCB0byB0aGUgZHJpdmVycy4KClRoaXMgaXMgYSBwcmVyZXF1aXNpdGUgZm9yIHRo
ZSBTaW5nbGUtUGFpciBFdGhlcm5ldCBpbnRlcmZhY2Ugb2YgdGhlClRRLVN5c3RlbXMgTUJhNjd4
eCBiYXNlYm9hcmQgZm9yIHRoZSBUUU1hNjd4eCBTb00sIHdoaWNoIHdpbGwgYmUKc3VibWl0dGVk
IHNlcGFyYXRlbHkuCgpGb3IgU0dNSUkgdG8gYWN0dWFsbHkgd29yayBvbiB0aGUgSjcyMlMsIHRo
ZSBhbTY1LWNwc3cgbmVlZHMgdG8gYmUgZXh0ZW5kZWQKYXMgd2VsbCwgd2hpY2ggaGFzIGJlZW4g
c3VibWl0dGVkIGZvciBuZXQtbmV4dDoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9q
ZWN0L25ldGRldmJwZi9saXN0Lz9zZXJpZXM9MTA3ODExMQoKRmFsbGJhY2sgY29tcGF0aWJsZSBz
dHJpbmdzIGFsbG93IGZvciB0aGUgcGF0Y2hlcyB0byBiZSBhcHBsaWVkIGluIGFueQpvcmRlciBh
bmQgdG8gZ28gdGhyb3VnaCBkaWZmZXJlbnQgdHJlZXMgd2l0aG91dCBicmVha2luZyBleGlzdGlu
ZwpmdW5jdGlvbmFsaXR5LgoKdjQ6Ci0gcmVtb3ZlIHJlZHVuZGFudCBpdGVtczogbGV2ZWwgZnJv
bSBEVCBiaW5kaW5nIFlBTUxzCgp2MzoKLSBEcm9wIGFtNjUtY3BzdyBjaGFuZ2VzIGZyb20gdGhp
cyBzZXJpZXMsIHRoZXkgbmVlZCB0byBnbyB0aHJvdWdoIG5ldC1uZXh0Ci0gRml4IG1pc3Npbmcg
UEhZX0dNSUlfU0VMX1JHTUlJX0lEX01PREUgYW5kIFBIWV9HTUlJX1NFTF9GSVhFRF9UWF9ERUxB
WSBpbgogIGdtaWktc2VsIGRyaXZlciBmb3IgUkdNSUkgZGVsYXkgbW9kZSBjb25maWd1cmF0aW9u
Cgp2MjoKLSBLZWVwIHN1cHBvcnQgZm9yIHRoZSBBTTY0IGNvbXBhdGlibGUgc3RyaW5ncyBhcyBh
IGZhbGxiYWNrLCBhZGp1c3QgY29tbWl0CiAgbWVzc2FnZXMKLSBEcm9wIHJlZmVyZW5jZSB0byBB
TTY0X0NQU1dfUVVJUktfQ1VUX1RIUlUgZmxhZywgd2hpY2ggb25seSBleGlzdHMgaW4gdGhlCiAg
VEkgdmVuZG9yIGtlcm5lbAoKTm9yYSBTY2hpZmZlciAoNSk6CiAgZHQtYmluZGluZ3M6IHBoeTog
dGk6IHBoeS1qNzIxZS13aXo6IEFkZCB0aSxqNzIycy13aXotMTBnIGNvbXBhdGlibGUKICBkdC1i
aW5kaW5nczogcGh5OiB0aTogcGh5LWdtaWktc2VsOiBBZGQgdGksajcyMnMtcGh5LWdtaWktc2Vs
CiAgICBjb21wYXRpYmxlCiAgcGh5OiB0aTogcGh5LWo3MjFlLXdpejogYWRkIHN1cHBvcnQgZm9y
IEo3MjJTIFNvQyBmYW1pbHkKICBwaHk6IHRpOiBnbWlpLXNlbDogYWRkIHN1cHBvcnQgZm9yIEo3
MjJTIFNvQyBmYW1pbHkKICBhcm02NDogZHRzOiB0aTogazMtajcyMnMtbWFpbjogdXNlIEo3MjJT
IGNvbXBhdGlibGVzIGZvciBXSVosIGdtaWktc2VsCiAgICBhbmQgQ1BTVzNHCgogLi4uL2JpbmRp
bmdzL3BoeS90aSxwaHktZ21paS1zZWwueWFtbCAgICAgICAgIHwgMjMgKysrKysrKysrKystLS0t
LS0tCiAuLi4vYmluZGluZ3MvcGh5L3RpLHBoeS1qNzIxZS13aXoueWFtbCAgICAgICAgfCAxOSAr
KysrKysrKystLS0tLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMnMtbWFpbi5kdHNp
ICAgICB8IDEyICsrKysrKysrLS0KIGRyaXZlcnMvcGh5L3RpL3BoeS1nbWlpLXNlbC5jICAgICAg
ICAgICAgICAgICB8IDEzICsrKysrKysrKysKIGRyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXou
YyAgICAgICAgICAgICAgICB8IDI0ICsrKysrKysrKysrKysrKysrKysKIDUgZmlsZXMgY2hhbmdl
ZCwgNzMgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgotLSAKVFEtU3lzdGVtcyBHbWJI
IHwgTcO8aGxzdHJhw59lIDIsIEd1dCBEZWxsaW5nIHwgODIyMjkgU2VlZmVsZCwgR2VybWFueQpB
bXRzZ2VyaWNodCBNw7xuY2hlbiwgSFJCIDEwNTAxOApHZXNjaMOkZnRzZsO8aHJlcjogRGV0bGVm
IFNjaG5laWRlciwgUsO8ZGlnZXIgU3RhaGwsIFN0ZWZhbiBTY2huZWlkZXIKaHR0cHM6Ly93d3cu
dHEtZ3JvdXAuY29tLwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
