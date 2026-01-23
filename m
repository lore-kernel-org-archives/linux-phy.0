Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9279CD72372
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 11:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Sx3NH5zX73fH2bB8LOPpmf4h9OjXGpIZPAmfJWwuE8=; b=IEHqS9j3L2Bv2D
	UWRDVqWp66BQflvHUX/mhq/BkZBoJaSguhvaACakR4wtTywULutXg1PUp9RtCyMGQZ4bzoPzWY62i
	xXPQaLx6aAYYcMwK25LRDSlGMaV2WvOgEdnVTD1FH+Vz+BGw0y6JSdYIVaG3bD2VjfoAhYZxt4OT0
	UvfIv+flngmRAq6ooIsE1NUghSOaTxjTpDT8VgZipqkZwqpyRHlDiKtdLfns05ogqB2Bx1CQQUojX
	20MGSN/10GwsSMU1lig413s7Z8gepZByRa5UZaRCGHRfJhrFDKdRx2cLIt+hby2gHO5YRPbvfwXpT
	pgMy3Sad/UYG7ocVrHAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjF2S-00000008oTJ-1WTY;
	Fri, 23 Jan 2026 11:09:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjF2Q-00000008oSy-01wo
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 11:09:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 075DA403B0;
	Fri, 23 Jan 2026 11:09:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B57A8C4CEF1;
	Fri, 23 Jan 2026 11:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769166552;
	bh=DU4R/vh6HtH41Phs1tX6pkE7/HJlTdL2Clho8TNvyR0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YPiiP8wal8toWFTCjQ1NRIGngEzybNfyLzM2Pyzfggp0b43TzPT2KLr0hCVNUIVaa
	 Cl9CB4AvVPelSZBsh08uLettW1pf6iZlDAvS0sRrmkRtFZqyHToaFF2kjJ/Pqo8Gyu
	 vjBCBR8OA1zxqKCNTz3fRqE0dpM8EjwiB7vyFEbatMgyYXVnRylybMX4OD5tw7RRtg
	 fz8Vd6/nyx1La5ZMBvs9soQqZFNejYv0CHaCtawjiApUNZBcuccQusDHV6o9T+voz/
	 OMgm+j9uMTH0zKIfz7En2mWSmmfeu/Yhaw03S9DHMaXTuG62mMFAnIkTbsTsR2uy6P
	 24GoH6Ey2CdSw==
Message-ID: <06da8493-b8a5-4497-8cf6-54aaf44b70b1@kernel.org>
Date: Fri, 23 Jan 2026 12:09:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy] phy: enter drivers/phy/Makefile even without
 CONFIG_GENERIC_PHY
To: Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, linux-kernel@vger.kernel.org,
 Venkat Rao Bagalkote <venkat88@linux.ibm.com>
References: <20260123110600.3118561-1-vladimir.oltean@nxp.com>
Content-Language: fr-FR
From: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
In-Reply-To: <20260123110600.3118561-1-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_030914_064829_8FE699A7 
X-CRM114-Status: GOOD (  12.51  )
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

CgpMZSAyMy8wMS8yMDI2IMOgIDEyOjA2LCBWbGFkaW1pciBPbHRlYW4gYSDDqWNyaXTCoDoKPiBL
Y29uZmlnIG9wdGlvbiBDT05GSUdfUEhZX0NPTU1PTl9QUk9QUywgd2hpY2ggYnVpbGRzCj4gZHJp
dmVycy9waHkvcGh5LWNvbW1vbi1wcm9wcy5jLCB3YXMgaW50ZW5kZWQgdG8gYmUgc2VsZWN0YWJs
ZQo+IGluZGVwZW5kZW50bHkgb2YgQ09ORklHX0dFTkVSSUNfUEhZLiBZZXQgaXQgbGl2ZXMgaW4g
ZHJpdmVycy9waHkvLCB3aGljaAo+IGlzIGVudGVyZWQgYnkgdGhlIE1ha2VmaWxlIG9ubHkgaWYg
Q09ORklHX0dFTkVSSUNfUEhZIGlzIHNldC4KPiAKPiBBbGxvdyB0aGUgTWFrZWZpbGUgdG8gZW50
ZXIgb25lIGxldmVsIGRlZXBlciwgYnV0IHN0b3AgYXQgZHJpdmVycy9waHkvCj4gaWYgQ09ORklH
X0dFTkVSSUNfUEhZIGlzIHVuc2VsZWN0ZWQgKGkuZS4gZG8gbm90IGVudGVyIHZlbmRvciBmb2xk
ZXJzKS4KPiBUaGUgb3RoZXIgc3R1ZmYgZnJvbSBkcml2ZXJzL3BoeS9NYWtlZmlsZSBleGNlcHQg
Zm9yIENPTkZJR19QSFlfQ09NTU9OX1BST1BTLAo+IGxpa2UgQ09ORklHX1BIWV9OWFBfUFROMzIy
MiwgYWxsIGRlcGVuZHMgb24gQ09ORklHX0dFTkVSSUNfUEhZLgo+IAo+IEZpeGVzOiBlNzU1NmI1
OWJhNjUgKCJwaHk6IGFkZCBwaHlfZ2V0X3J4X3BvbGFyaXR5KCkgYW5kIHBoeV9nZXRfdHhfcG9s
YXJpdHkoKSIpCj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzQzZWEwMjAy
LTg5MWQtNDU4Mi05ODBiLTVjYjU1N2I0MTExNEBsaW51eC5pYm0uY29tLwo+IFJlcG9ydGVkLWJ5
OiBWZW5rYXQgUmFvIEJhZ2Fsa290ZSA8dmVua2F0ODhAbGludXguaWJtLmNvbT4KPiBEZWJ1Z2dl
ZC1ieTogIkNocmlzdG9waGUgTGVyb3kgKENTIEdST1VQKSIgPGNobGVyb3lAa2VybmVsLm9yZz4K
PiBTaWduZWQtb2ZmLWJ5OiBWbGFkaW1pciBPbHRlYW4gPHZsYWRpbWlyLm9sdGVhbkBueHAuY29t
PgoKUmV2aWV3ZWQtYnk6IENocmlzdG9waGUgTGVyb3kgKENTIEdST1VQKSA8Y2hsZXJveUBrZXJu
ZWwub3JnPgoKPiAtLS0KPiAgIGRyaXZlcnMvTWFrZWZpbGUgICAgIHwgMiArLQo+ICAgZHJpdmVy
cy9waHkvTWFrZWZpbGUgfCAyICstCj4gICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9NYWtlZmlsZSBiL2Ry
aXZlcnMvTWFrZWZpbGUKPiBpbmRleCBjY2MwNWYxZWFlM2UuLjUzZmJkMmUwYWNkZCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9NYWtlZmlsZQo+IEBAIC0x
MCw3ICsxMCw3IEBAIG9iai15CQkJCSs9IGNhY2hlLwo+ICAgb2JqLXkJCQkJKz0gaXJxY2hpcC8K
PiAgIG9iai15CQkJCSs9IGJ1cy8KPiAgIAo+IC1vYmotJChDT05GSUdfR0VORVJJQ19QSFkpCSs9
IHBoeS8KPiArb2JqLXkJCQkJKz0gcGh5Lwo+ICAgCj4gICAjIEdQSU8gbXVzdCBjb21lIGFmdGVy
IHBpbmN0cmwgYXMgZ3Bpb3MgbWF5IG5lZWQgdG8gbXV4IHBpbnMgZXRjCj4gICBvYmotJChDT05G
SUdfUElOQ1RSTCkJCSs9IHBpbmN0cmwvCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L01ha2Vm
aWxlIGIvZHJpdmVycy9waHkvTWFrZWZpbGUKPiBpbmRleCAzMGIxNTBkNjhkZTcuLjkzNzE1ZWEw
ZDAxMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMv
cGh5L01ha2VmaWxlCj4gQEAgLTE1LDcgKzE1LDcgQEAgb2JqLSQoQ09ORklHX1BIWV9TTlBTX0VV
U0IyKQkJKz0gcGh5LXNucHMtZXVzYjIubwo+ICAgb2JqLSQoQ09ORklHX1VTQl9MR01fUEhZKQkJ
Kz0gcGh5LWxnbS11c2Iubwo+ICAgb2JqLSQoQ09ORklHX1BIWV9BSVJPSEFfUENJRSkJCSs9IHBo
eS1haXJvaGEtcGNpZS5vCj4gICBvYmotJChDT05GSUdfUEhZX05YUF9QVE4zMjIyKQkJKz0gcGh5
LW54cC1wdG4zMjIyLm8KPiAtb2JqLXkJCQkJCSs9IGFsbHdpbm5lci8JXAo+ICtvYmotJChDT05G
SUdfR0VORVJJQ19QSFkpCQkrPSBhbGx3aW5uZXIvCVwKPiAgIAkJCQkJICAgYW1sb2dpYy8JXAo+
ICAgCQkJCQkgICBicm9hZGNvbS8JXAo+ICAgCQkJCQkgICBjYWRlbmNlLwlcCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
