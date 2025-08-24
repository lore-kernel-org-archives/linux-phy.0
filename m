Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25AA8CA0EFC
	for <linux-phy@archiver.kernel.org>; Sun, 24 Aug 2025 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVsTdqG5UIuQT9zTBGT8u7ZjGTyv+O76ERhikiFQ0Es=; b=nEzHwoyuY8r/QE
	t8KuaSJ/riIz35/XxesQaUz5iJp9vSaZp0Tk3aiGLAs4R3N13nrtH96g7FKmSra4vPQanJ87QlOLd
	iimZ5jbCNHUwMKgE+7uAD3AbwdAg3imEktsHeNgsjf/Rmo2VWqfb9EvPiTS0FimWji7T+QNoSmhZL
	7RJfGrSD+DLuyVqxwdm053al58R4KhU6eNa4XADssRWRVi00BgPBSf5eD5KVG3m3ojinZJl2HRUId
	twMQLXj44UQla2ba219sNB8vtFQywlw1lRga+1S930M0JsVLYpi/XG0DWEQU3dcaBBzcUxk7N8dl2
	LN1qVRVAjpgaBbMsghbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqClk-00000006Irz-3POW;
	Sun, 24 Aug 2025 15:36:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqCj7-00000006If9-0rc9;
	Sun, 24 Aug 2025 15:33:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 59D9A5C55A4;
	Sun, 24 Aug 2025 15:33:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC7BC4CEEB;
	Sun, 24 Aug 2025 15:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756049627;
	bh=oQzQEC/j+B5UVSDuvC80FiJ+MKY+IFlYoW/dIszqcuU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HSnUMQ4tlsLUIC9Waj7DTcg0C+4Q5PkV2X/ONEbyFx2fbKxd/S3t4gW3/5YBlJ6M2
	 UaiOBj+2tBwtGm2siDG6q0+wzYRi3f3ljnCA6Ug/37/MUj3lx04md6wZrKTgskj8JN
	 2O3YacNREIgXwcqlJKRKDMipgyBFG/eMHKD7C52ICZxZ8rnP5elIAr9uFNxDWfHHlD
	 oGLqLFzninpwNUMcMkW16ZlHBmO2mOCihjqPZUbNShr1voctFsQ8WbBjhAc/s9+eUO
	 qfcKyYqC5XAq1miXvOvqzDlxverCrf9L0Qc1AOU1RdfVhqbfQd6mlU1MvgKTY/80CN
	 HhLAeT1kmlVsw==
Message-ID: <96409a43-b3f7-4b9e-a1e8-fd0ac6503cd9@kernel.org>
Date: Sun, 24 Aug 2025 17:33:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 03/22] dt-bindings: phy: Add Apple Type-C PHY
To: Rob Herring <robh@kernel.org>, Janne Grunau <j@jannau.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
 <20250821-atcphy-6-17-v1-3-172beda182b8@kernel.org>
 <20250821163320.GE1270980@robin.jannau.net>
 <CAL_JsqL=y2OT4YrzT8z0O0T2hpM5X1k2pFEb8XjBRPoNMdO5kw@mail.gmail.com>
Content-Language: en-US
From: Sven Peter <sven@kernel.org>
In-Reply-To: <CAL_JsqL=y2OT4YrzT8z0O0T2hpM5X1k2pFEb8XjBRPoNMdO5kw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_083349_289392_A68940B2 
X-CRM114-Status: GOOD (  12.62  )
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

T24gMjIuMDguMjUgMDE6MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFRodSwgQXVnIDIxLCAy
MDI1IGF0IDExOjMz4oCvQU0gSmFubmUgR3J1bmF1IDxqQGphbm5hdS5uZXQ+IHdyb3RlOgo+Pgo+
PiBPbiBUaHUsIEF1ZyAyMSwgMjAyNSBhdCAwMzozODo1NVBNICswMDAwLCBTdmVuIFBldGVyIHdy
b3RlOgoKWy4uLl0KCj4+PiArCj4+PiArcHJvcGVydGllczoKPj4+ICsgIGNvbXBhdGlibGU6Cj4+
PiArICAgIGVudW06Cj4+PiArICAgICAgLSBhcHBsZSx0NjAwMC1hdGNwaHkKPj4+ICsgICAgICAt
IGFwcGxlLHQ2MDAwLWF0Y3BoeS1kcC1vbmx5ICMgUEhZIGhhcmR3aXJlZCB0byBEUC10by1IRE1J
IGNvbnZlcnRlciBvbiBNMiBQcm8gTWFjQm9vawo+Pgo+PiBUaGUgY29tbWVudCBpcyBtaXNsZWFk
aW5nLCAidDYwMDAtYXRjcGh5LWRwLW9ubHkiIHdvdWxkIGJlIGZvciBNMQo+PiBQcm8vTWF4IE1h
Y2Jvb2tzLiBNMiBQcm8vTWF4IE1hY2Jvb2tzIHVzZSB0aGUgc2FtZSBkZXNpZ24gc28gdGhlCj4+
IGNvcnJlc3BvbmRpbmcgImFwcGxlLHQ2MDIwLWF0Y3BoeS1kcC1vbmx5IiBjb21wYXRpYmxlIGlz
IG1pc3NpbmcuCj4+IEknbSBub3Qgc3VyZSB0aGlzIGlzIHRoZSBjb3JyZWN0IGRlc2lnbiB0aG91
Z2ggYXMgdGhlIEhXIGJsb2NrIGlzCj4+IGlkZW50aWNhbCB0byAiYXBwbGUsdDYwMDAtYXRjcGh5
Ii4KPj4gSSB0aGluayBpdCBtaWdodCBiZSBiZXR0ZXIgdG8gaGF2ZSBlaXRoZXIgdGhlIERSTSBL
TVMgZHJpdmVyIG9yIGEKPj4gY3VzdG9tIERQLT5IRE1JIGRybV9icmlkZ2Ugc3dpdGNoIHRoZSBt
b2RlIHRvIERQLW9ubHkuCj4+IE9yIGF0Y3BoeSBjb3VsZCBpbml0aWFsaXplIGl0c2VsZiB0byBE
UC1vbmx5IGJhc2VkIG9uIHRoZSBhdmFpbGFibGUKPj4gcG9ydHMuCj4gCj4gRG9lc24ndCBzb3Vu
ZCBsaWtlIHRoaXMgc2hvdWxkIGJlIGEgZGlmZmVyZW50IGNvbXBhdGlibGUuIFRoZXJlJ3MgYQo+
ICdwaHktbW9kZScgcHJvcGVydHkgb3IgeW91IGNhbiBkZWZpbmUgdGhlIG1vZGUgaW4gdGhlICdw
aHlzJyBjZWxscyBmb3IKPiB0aGUgRFAgY29udHJvbGxlci4KCk9rYXksIG1ha2VzIHNlbnNlLiBJ
J2xsIGRyb3AgdGhlIGNvbXBhdGlibGUuCgpJJ3ZlIG9ubHkgZm91bmQgImludGVsLHBoeS1tb2Rl
IiBpbnNpZGUgYmluZGluZ3MvcGh5IGJ1dCB3ZSBjYW4gZmlndXJlIAp0aGlzIG91dCBsYXRlciBv
bmNlIHdlIGFjdHVhbGx5IGdldCB0byB1cHN0cmVhbWluZyB3aGF0J3MgcmVxdWlyZWQgZm9yIApE
aXNwbGF5UG9ydCBhbmQgbW9zdGx5IGZvY3VzIG9uIFVTQjMgZm9yIHRoaXMgc2VyaWVzLgoKClRo
YW5rcwoKClN2ZW4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
