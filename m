Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A6D3C9831E
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 02:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBhW+k9givK7FWLD9SWkwxoR5KaliYoM6EtO0DyG+3Y=; b=GwLMev/PgrPjGH
	fkqh9n0HlXzzbZJZCXozpGIjFbTd6eT1pj1pglXn1GrJJNefusnQzl+5LAY3TmYnl14l6ZYeUra+V
	tqI211zytlMZjSZPxMDX0ldLN9PWLcPd0Een50teI/Aq/pGbcIgwOagZJ5bxtJPz7y8WaH3Th7TvY
	GLbi5FyIt1k6dkMGbJcs/Niyw6Mf+co+idxAePgPmtj7u+JeDvfIMpEiMGZl2kd9484hxE6OJblKB
	do74RsWN+/6rEe61HZUeL31wxsPNzbmOyfQL3XMWmk2j+2m9iXQYS8uLulcACQW+UGJl3pS7soc37
	a8ezRbttlouaL+BeT31g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9vIv-0000000CWMp-0rfD;
	Fri, 25 Sep 2026 02:04:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9vHy-0000000CVnY-2Yb6;
	Fri, 25 Sep 2026 02:03:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 06CDC43ECD;
	Fri, 25 Sep 2026 02:03:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8564D1F000FF;
	Fri, 25 Sep 2026 02:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790301829;
	bh=vHTRX6NVnIzYhl1q0206js2CPkE+VZBEqeQmH9KkdfM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=mgVAq8bPAQzYHrRjTciQZUSfWuf81rC3O6ZV9dfxyi/1aqkrqiZzI6GadkzgRL1y3
	 EfWbrkfsBKXOsq/2nZILOap+uN7fn76DwpkmTEuqSCmUJkVacefWLSdpt/Jan7Fcj9
	 QbFw3jA3WubUH5Am32CSY+w3DzEomay3CxSPCB9gPxifSTDWpjwEo2k9gGZ61bBTLb
	 s8ABaQVENxleT9nkB760gh2gDT7d7C+PuKbXGJPHwqEK/HwQdtgJPJCUxuU74Gj0+D
	 62bc75KHESnNyO7I79Ub1iBruwCERlWDJuqU1RnhZAH2fge4mMhSsfHdGJUidZtPrF
	 3OW84fTmqzrEg==
Subject: Re: [PATCH net-next v10 10/11] arm64: dts: rockchip:
 rk3568-photonicat: enable SGMII LAN port
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org,
 linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org
Date: Fri, 25 Sep 2026 02:03:48 +0000
Message-ID: <179030182812.2160803.15624484068208460829@kernel.org>
In-Reply-To: <20260922200336.2201212-11-coiaprant@gmail.com>
References: <20260922200336.2201212-11-coiaprant@gmail.com>
X-sashiko-severity: Low
MIME-Version: 1.0
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIGNvbW1pdCBtZXNzYWdlIG9mICJh
cm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4LXBob3RvbmljYXQ6CiAgZW5hYmxlIFNHTUlJIExB
TiBwb3J0IiBkZXNjcmliZXMgdGhlIGNvbWJwaHkyLCB4cGNzL3hwY3NfbWlpMCBhbmTigKYKCi0t
Cgphcm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4LXBob3RvbmljYXQ6IGVuYWJsZSBTR01JSSBM
QU4gcG9ydAoKVGhpcyBjb21taXQgZW5hYmxlcyB0aGUgU0dNSUkgTEFOIHBvcnQgb24gdGhlIEFy
aWFib2FyZCBQaG90b25pY2F0LiBJdApyb3V0ZXMgY29tYnBoeTIgdG8gR01BQzAsIGVuYWJsZXMg
dGhlIHhwY3Mgbm9kZSwgY29uZmlndXJlcyBnbWFjMCBmb3IKU0dNSUkgYW5kIGFkZHMgdGhlIFlU
ODUyMVNDIFBIWSBvbiBtZGlvMC4gSXQgYWxzbyBhZGRzIExFRCBub2RlcyB0byBib3RoCnRoZSBu
ZXcgU0dNSUkgUEhZIGFuZCB0aGUgZXhpc3RpbmcgUkdNSUkgV0FOIFBIWSBvbiBtZGlvMS4KCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBob3Rvbmlj
YXQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcGhvdG9uaWNhdC5k
dHMKPiBpbmRleCA1OGMxMDUyYmE4ZWYzLi5mZGFhNGEyYTQzMjhiIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBob3RvbmljYXQuZHRzCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcGhvdG9uaWNhdC5kdHMKClsgLi4u
IF0KCj4gQEAgLTI2MCw5ICsyNjIsMTggQEAgJmNwdTMgewo+ICAJY3B1LXN1cHBseSA9IDwmdmRk
X2NwdT47Cj4gIH07Cj4gIAo+IC0vKiBNb3RvcmNvbW0gWVQ4NTIxU0MgTEFOIHBvcnQgKHJlcXVp
cmUgU0dNSUkpICovCj4gKy8qIE1vdG9yY29tbSBZVDg1MjFTQyBMQU4gcG9ydCAqLwo+ICAmZ21h
YzAgewo+IC0Jc3RhdHVzID0gImRpc2FibGVkIjsKPiArCWFzc2lnbmVkLWNsb2NrcyA9IDwmY3J1
IFNDTEtfR01BQzBfUlhfVFg+Owo+ICsJYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xrX2dt
YWMwX3hwY3NfbWlpPjsKPiArCW1hbmFnZWQgPSAiaW4tYmFuZC1zdGF0dXMiOwo+ICsJcGNzLWhh
bmRsZSA9IDwmeHBjc19taWkwPjsKPiArCXBoeS1oYW5kbGUgPSA8JnNnbWlpX3BoeT47Cj4gKwlw
aHktbW9kZSA9ICJzZ21paSI7Cj4gKwlwaHktc3VwcGx5ID0gPCZ2Y2NfM3YzPjsKPiArCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JmdtYWMwX21paW0+Owo+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+ICB9OwoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcs
IGJ1dCB0aGUgY29tbWl0IG1lc3NhZ2UgZGVzY3JpYmVzIHRoZSBjb21icGh5MiwKeHBjcy94cGNz
X21paTAgYW5kIG1kaW8wIGNoYW5nZXMgYW5kIG5vdCB0aGlzICZnbWFjMCByZXdvcmsuIFRoZSBn
bWFjMApyZXdvcmsgaXMgdGhlIG1haW4gZnVuY3Rpb25hbCBjaGFuZ2UgaW4gdGhlIHBhdGNoLiBD
b3VsZCB0aGUgbWVzc2FnZQpkZXNjcmliZSBpdCB0b28/CgpJbiB0aGlzIGh1bmssIHN0YXR1cyA9
ICJkaXNhYmxlZCIgYmVjb21lcyBhIGZ1bGwgU0dNSUkgY29uZmlndXJhdGlvbgp0aGF0OgoKICAt
IHJlcGFyZW50cyBTQ0xLX0dNQUMwX1JYX1RYIHRvIHRoZSAxMjUgTUh6IGNsa19nbWFjMF94cGNz
X21paSBjbG9jawogICAgdGhyb3VnaCBhc3NpZ25lZC1jbG9jay1wYXJlbnRzCiAgLSBzZXRzIG1h
bmFnZWQgPSAiaW4tYmFuZC1zdGF0dXMiLiBUaGUgY29tbWl0ICJuZXQ6IHN0bW1hYzogZHdtYWMt
cms6CiAgICBhZGQgU0dNSUkgc3VwcG9ydCBmb3IgUkszNTY4IiBzYXlzIGJvYXJkcyBtdXN0IHVz
ZSBpdCBiZWNhdXNlCiAgICBvdXQtb2YtYmFuZCBTR01JSSBicmVha3MgUlggYXQgMTAvMTAwCiAg
LSBhZGRzIHBjcy1oYW5kbGUgPSA8JnhwY3NfbWlpMD4sIHBoeS1oYW5kbGUsIHBoeS1zdXBwbHkg
YW5kIHRoZQogICAgZ21hYzBfbWlpbSBwaW5jdHJsCgpUaGUgY29tbWl0IG1lc3NhZ2UgYWxzbyBz
YXlzOgoKICAiQWxzbyBhZGQgTEVEIGNvbmZpZ3VyYXRpb24gZm9yIHRoZSBleGlzdGluZyBSR01J
SSBQSFkgb24gbWRpbzEgZm9yCiAgY29uc2lzdGVuY3kuIgoKVGhvc2UgTEVEX0ZVTkNUSU9OX1dB
TiBub2RlcyBnbyBvbiByZ21paV9waHksIHdoaWNoIGRyaXZlcyB0aGUgc2VwYXJhdGUKV0FOIHBv
cnQgdGhhdCBhbHJlYWR5IHdvcmtzLiBDb3VsZCB0aGF0IGdvIGluIGl0cyBvd24gcGF0Y2g/IEFz
IGl0CnN0YW5kcywgcmV2ZXJ0aW5nIG9yIGJpc2VjdGluZyB0aGUgU0dNSUkgTEFOIGVuYWJsZW1l
bnQgYWxzbyBkcm9wcyB0aGUKV0FOIExFRCBjaGFuZ2UuCgpbIC4uLiBdCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2FzaGlrby8jL3Bh
dGNoc2V0LzIwMjYwOTIyMjAwMzM2LjIyMDEyMTItMS1jb2lhcHJhbnQlNDBnbWFpbC5jb20KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
