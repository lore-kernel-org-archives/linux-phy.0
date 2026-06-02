Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8851FCD6E60
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 12:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mbXR0F5pXlt4Hk3nCQ9uPmQ1NFQk6IoNBZkxs+EVaQ=; b=z7eM+N/7jPM/ZB
	Dg+in7P3HvTelWEiwhL3/5J3atnRtu89HjhG6t0H8D7F6IMueyGiMYQ7zNpufjK1LUqoqbK3mQYjJ
	Q4OS1foZ03toFvr/lSHcRcH6iWgpR66Cm2JIB1O/8opfofXjS2t0uh/A1qWnF6bANbQF+CgfW8j2U
	6Daa/ixUeKu5PHXZ0BcV3xYYvKAYvy3ueAQenHyukcJGUIhUBpe0edLCSUpngEoV9M8PeJR46r9lS
	Ruh2xX/wzdW6OCbAVQirvu33vDmu3duRD+KNJwG64rfUySf0GyyKUlGoMbQ+vryX7TEn9bfeJbUye
	gm9SzCnvCBpAViaKOMAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUOPm-0000000D0NV-2gUm;
	Tue, 02 Jun 2026 12:40:14 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUOPi-0000000D0Mk-48eI
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 12:40:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B6D5250B5AE;
	Tue,  2 Jun 2026 14:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1780404005; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=R2nfexBzeT3y69ffHG5mi+zUFQP+2uBFKJLddW+7WaM=;
	b=MNReIQGnhOFsrTtxcvpE449+11XiJa5LVLE+tlgqpLGvVrd/T97k7T61/85DLXXvTzy9kb
	ctOPnuJsFG8OrKYZi0Zpa00HuLCwpCP2LMhXAAL6Ee2FEXZRlMWUshFExHZbg3CnNDmjyO
	gh9aI7w2n/QyOxHpcRAp6XCj9/2l/1HOhImQKYComSkAenB8KLAH7PE87DnwxvJcUhvryn
	nFYvhWXnFYbfOOSIcoU8g8be5uph6cBbl0IECPkABQ2BFUBf7xHo8MqZAz/fPg6INBCrKy
	VjL0+1ajfp+P2P7OaFmZamgK3Fq/W5Nu5544gspLeKWhWboInmWigbbVPXoqaQ==
Message-ID: <373aaeff-ca95-4e45-8e1a-ce7e79e91f42@cjdns.fr>
Date: Tue, 2 Jun 2026 14:40:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 1/2] dt-bindings: phy: econet: Document EN751221 USB PHY
To: Rob Herring <robh@kernel.org>
Cc: linux-mips@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260518141343.401555-1-cjd@cjdns.fr>
 <20260518141343.401555-2-cjd@cjdns.fr>
 <20260601225805.GA129257-robh@kernel.org>
Content-Language: en-US
From: Caleb James DeLisle <cjd@cjdns.fr>
In-Reply-To: <20260601225805.GA129257-robh@kernel.org>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_054011_533340_41A2D6BA 
X-CRM114-Status: GOOD (  19.87  )
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

Ck9uIDAyLzA2LzIwMjYgMDA6NTgsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIE1vbiwgTWF5IDE4
LCAyMDI2IGF0IDAyOjEzOjQyUE0gKzAwMDAsIENhbGViIEphbWVzIERlTGlzbGUgd3JvdGU6Cj4+
IERvY3VtZW50IHRoZSBVU0IgUEhZIGRldmljZXMgd2hpY2ggYXBwZWFyIGluIEVjb05ldCBFTjc1
MTIyMSwgRU43NTE2MjcsCj4+IGFuZCBFTjc1MjggYmFzZWQgU29Dcy4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogQ2FsZWIgSmFtZXMgRGVMaXNsZSA8Y2pkQGNqZG5zLmZyPgo+PiAtLS0KPj4gICAuLi4v
YmluZGluZ3MvcGh5L2Vjb25ldCxlbjc1MTIyMS11c2ItcGh5LnlhbWwgfCAxMjggKysrKysrKysr
KysrKysrKysrCj4+ICAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICA2ICsKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDEzNCBpbnNlcnRpb25zKCspCj4+ICAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
ZWNvbmV0LGVuNzUxMjIxLXVzYi1waHkueWFtbAo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9lY29uZXQsZW43NTEyMjEtdXNiLXBoeS55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9lY29uZXQsZW43NTEyMjEt
dXNiLXBoeS55YW1sCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAw
MC4uYTQ0ZjU5NjAxNzQ3Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9lY29uZXQsZW43NTEyMjEtdXNiLXBoeS55YW1sCj4+IEBA
IC0wLDAgKzEsMTI4IEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9u
bHkgT1IgQlNELTItQ2xhdXNlCj4+ICsjIENvcHlyaWdodCAoQykgMjAyNCBFY29OZXQKPj4gKyVZ
QU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Bo
eS9lY29uZXQsZW43NTEyMjEtdXNiLXBoeS55YW1sIwo+PiArJHNjaGVtYTogaHR0cDovL2Rldmlj
ZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+ICsKPj4gK3RpdGxlOiBFY29OZXQg
RU43NTEyMjEgVVNCIFBIWQo+PiArCj4+ICttYWludGFpbmVyczoKPj4gKyAgLSBDYWxlYiBKYW1l
cyBEZUxpc2xlIDxjamRAY2pkbnMuZnI+Cj4+ICsKPj4gK2Rlc2NyaXB0aW9uOiB8Cj4gRG9uJ3Qg
bmVlZCAnfCcgdW5sZXNzIHRoZXJlIGlzIGZvcm1hdHRpbmcgdG8gcHJlc2VydmUuCj4KPj4gKyAg
VVNCIFBIWSBjb250cm9sbGVyIGZvdW5kIG9uIEVjb05ldCBFTjc1MTIyMSBTb0NzIGFzIHdlbGwg
YXMgb24gRU43NTE2MjcgYW5kCj4+ICsgIEVONzUyOC4gVGhlc2UgZGV2aWNlcyBnZW5lcmFsbHkg
aGF2ZSB0d28gcG9ydHMsIG9uZSBvZiB3aGljaCBpcyBhIFVTQiAzLjAsCj4+ICsgIGFuZCB0aGUg
b3RoZXIgaXMgVVNCIDIuMC4gVGhlIFVTQiAzLjAgcG9ydCBpcyBkcml2ZW4gYnkgb25lIG9mIHR3
byBQSFkKPj4gKyAgYmxvY2tzLCBkZXBlbmRpbmcgb24gd2hldGhlciB0aGUgY29ubmVjdGVkIGRl
dmljZSBoYXMgbmVnb3RpYXRlZCBVU0IgMy4wIG9yCj4+ICsgIDIuMC4gVGhlc2UgUEhZcyBhcmUg
YWxzbyB1c2VkIG9uIG90aGVyIEVjb05ldCBzaWxpY29uIGluIHZhcnlpbmcKPj4gKyAgY29uZmln
dXJhdGlvbnMsIHN1Y2ggYXMgb25seSBwb3J0IDAgKHRoZSBVU0IgMy4wIHBvcnQpLCBvciBvbmx5
IHBvcnQgMSAodGhlCj4+ICsgIFVTQiAyLjAgcG9ydCkuCj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+
ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAgZW51bToKPj4gKyAgICAgIC0gZWNvbmV0LGVuNzUxMjIx
LXVzYi1waHkKPj4gKyAgICAgIC0gZWNvbmV0LGVuNzUxNjI3LXVzYi1waHkKPj4gKyAgICAgIC0g
ZWNvbmV0LGVuNzUyOC11c2ItcGh5Cj4+ICsKPj4gKyAgcmVnOgo+PiArICAgIG1heEl0ZW1zOiAx
Cj4+ICsKPj4gKyAgIiNhZGRyZXNzLWNlbGxzIjogdHJ1ZQo+PiArICAiI3NpemUtY2VsbHMiOiB0
cnVlCj4+ICsgIHJhbmdlczogdHJ1ZQo+PiArCj4+ICsgIGNsb2NrczoKPj4gKyAgICBtYXhJdGVt
czogMQo+PiArICAgIGRlc2NyaXB0aW9uOiB8Cj4+ICsgICAgICBDcnlzdGFsIG9zY2lsbGF0b3Ig
Y2xvY2sgc291cmNlLiBFY29OZXQgZGV2aWNlcyBydW4gYXQgZWl0aGVyIDIwTWh6IG9yCj4+ICsg
ICAgICAyNU1oei4gMjVNaHogZGV2aWNlcyByZXF1aXJlIGFkZGl0aW9uYWwgdHVuaW5nIGluIHRo
ZSBVU0IgMy4wIFBIWS4KPj4gKwo+PiArICBjbG9jay1uYW1lczoKPj4gKyAgICBpdGVtczoKPj4g
KyAgICAgIC0gY29uc3Q6IHh0YWwKPj4gKwo+PiArcGF0dGVyblByb3BlcnRpZXM6Cj4+ICsgICJe
dXNiLXBoeUBbMC05YS1mXSskIjoKPj4gKyAgICB0eXBlOiBvYmplY3QKPj4gKyAgICBkZXNjcmlw
dGlvbjogVVNCIDIuMCBvciAzLjAgUEhZIHN1Yi1ub2RlLgo+PiArCj4+ICsgICAgcHJvcGVydGll
czoKPj4gKyAgICAgIGNvbXBhdGlibGU6Cj4+ICsgICAgICAgIGVudW06Cj4+ICsgICAgICAgICAg
LSBlY29uZXQsdXNiMi1waHkKPj4gKyAgICAgICAgICAtIGVjb25ldCx1c2IzLXBoeQo+PiArCj4+
ICsgICAgICByZWc6Cj4+ICsgICAgICAgIG1heEl0ZW1zOiAxCj4+ICsKPj4gKyAgICAgIHJlc2V0
czoKPj4gKyAgICAgICAgbWF4SXRlbXM6IDEKPj4gKwo+PiArICAgICAgZWNvbmV0LHVzYi1wb3J0
LWlkOgo+PiArICAgICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91
aW50MzIKPj4gKyAgICAgICAgZW51bTogWzAsIDFdCj4+ICsgICAgICAgIGRlc2NyaXB0aW9uOiB8
Cj4+ICsgICAgICAgICAgUGh5c2ljYWwgcG9ydCBudW1iZXIuIFNpbmNlIFVTQiAzLjAgcmVxdWly
ZXMgYSBzZWNvbmQgUEhZIGZvciB0aGUgMi4wCj4+ICsgICAgICAgICAgZmFsbGJhY2ssIG11bHRp
cGxlIFBIWXMgY2FuIG1hcCB0byB0aGUgc2FtZSBwaHlzaWNhbCBwb3J0Lgo+IFdoYXQgaXMgc3Bl
Y2lhbCBhYm91dCB0aGlzIHBsYXRmb3JtIG5lZWRpbmcgdGhpcyBwcm9wZXJ0eS4KCkZvciBtZWFz
dXJpbmcgdGhlIGZyZXF1ZW5jeSB0byBzZXQgdGhlIHNsZXcgcmF0ZSwgd2UgbmVlZCB0byBrbm93
IHdoaWNoIApwb3J0IHdlJ3JlIHdvcmtpbmcgd2l0aC4gQWxzbyB0aGUgaGFyZHdhcmUgcmV2aXNp
b24gaGFzIHRvIGJlIHNldCAKZGlmZmVyZW50bHkgb24gcG9ydCAxIHRoYW4gcG9ydCAwLgoKPiBM
b3RzIG9mCj4gcGxhdGZvcm1zIGhhdmUgMiBwaHlzIGZvciBVU0IgMi4wIGFuZCAzLjAgeWV0IGRv
bid0IG5lZWQgYSBwcm9wZXJ0eQo+IGxpa2UgdGhpcy4KSSBjb3BpZWQgdGhlIGlkZWEgZnJvbSBn
b29nbGUsZXh0Y29uLXVzYmMtY3Jvcy1lYyB3aGljaCB1c2VzIApnb29nbGUsdXNiLXBvcnQtaWQu
Cj4gQ2FuJ3QgeW91IGZpZ3VyZSBvdXQgd2hpY2ggcGh5cyBhcmUgdGhlIHNhbWUgVVNCIHBvcnQg
YnkgdGhlCj4gVVNCIGNvbnRyb2xsZXIgJ3BoeXMnIHByb3BlcnR5IHdoaWNoIHdvdWxkIGRlZmlu
ZSB0aGF0PwoKVW5mb3J0dW5hdGVseSB0aGUgTWVkaWF0ZWsgZHJpdmVyIGhhbmRsZXMgYWxsIG9m
IHRoZSBwb3J0cyBhbmQgb25seSB1c2VzIApvbmUgRFQgbm9kZS4gSSBzdXBwb3NlIEkgY291bGQg
ZW5jb2RlIHRoZSBpbmZvcm1hdGlvbiBpbiB0aGUgY29tcGF0aWJsZSAKb2YgdGhlIHN1Ym5vZGUs
IHNvbWV0aGluZyBsaWtlOgoKCnVzYi1waHlAMWZhODAwMDAgewogICAgICAgY29tcGF0aWJsZSA9
ICJlY29uZXQsZW43NTEyMjEtdXNiLXBoeSI7CgogwqAgwqAgwqAgLi4uCgogICAgICAgdXNiLXBo
eUAxZmE4MDgwMCB7CiAgICAgICAgICAgY29tcGF0aWJsZSA9ICJlY29uZXQsdXNiMi1wb3J0MC1w
aHkiOwogICAgICAgICAgIC4uLgogICAgICAgfTsKICAgICAgIC4uLgp9OwoKSSdtIG5vdCByZWFs
bHkgc3VyZSB3aGljaCB3YXkgaXMgbW9yZSBjb3JyZWN0LiBJZiB5b3UgaGF2ZSBhbiBvcGluaW9u
IG9uIHRoaXMsIGxldCBtZSBrbm93LgoKVGhhbmtzLApDYWxlYgoKPgo+IFJvYgo+CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
