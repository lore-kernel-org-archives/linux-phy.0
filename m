Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2DF4D31769
	for <linux-phy@archiver.kernel.org>; Tue,  5 Nov 2024 17:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81I5XstEwnKEdaimxfBifNbS6H7rBPi8qvGP9XBm/G4=; b=3y7qX5oNE8wO0N
	xU0wB6nB13WC2nfaVSX80VrocGj7QJp/KmXoAdtLhFhSS17rtzTQxoJhBgXSg8ybW2EHmr4VEMC9N
	M0EB42sJiIB3G/wZ3MyS/myMG64sKk8W96dmE2OXLYEjOeGXCQ9o04SXGkD1hxF3c8dBxKEofA2ni
	IRb+/XttQ8GRtL7fng9mECYxlgzjVdBAToS7gzk8pudrpSCP8y07Wy0uFAxXheRrr9HgUX5i6GJlo
	GqjILip66N8Qh9s9x4+Am9CbXUIzwMUAA9B3hk3RIvGFYefnhxEsjCDjXrwloV+5f4pNfwNMy/NPh
	BJn/wHhUOTiU+220Amng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8NO0-00000000D6o-3VWT;
	Tue, 05 Nov 2024 17:30:36 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8N7Y-00000000B2o-1dnB
	for linux-phy@lists.infradead.org;
	Tue, 05 Nov 2024 17:13:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4CA13A43709;
	Tue,  5 Nov 2024 17:11:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E617AC4CECF;
	Tue,  5 Nov 2024 17:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730826815;
	bh=lkpmN3vsfZtO6cDirzgiuE357QAQvJ3r+L0Hlwna7Ic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LCC2z8FJt4xw1wAuL0Gjhx7kImmaJ8s5bG6bPX8rzOU5ATOzKplBa58yxMbPHEXyN
	 uUrBRl0BnwYTeCQ4E4GoKonU9AYCkBdHslwtbmOXwZjK8E7Mtwk+TFPXgaBq/yrtqV
	 giXrGM0VjpgGwfDMymM0+TBAK4d2KTAVbgKH3FxKc9V5kkGZsOuaK9hRcwgiGEpGqP
	 JWCMDzzjTLNjCsOrW2llEixCEl9ajJ3vqEemCYrqRn396wRC1HTJEsWod6/VvWAoPx
	 zZfZYzJZBLKANYJq+hF0Ma4YN0TW+uB7PRH6kgR8da8LtF/TRVwl5bdhTBFwYr5QGk
	 ps9Ha0NiEJDyA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t8N7V-000000008Tc-3Nfi;
	Tue, 05 Nov 2024 18:13:34 +0100
Date: Tue, 5 Nov 2024 18:13:33 +0100
From: Johan Hovold <johan@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felipe Balbi <balbi@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Lee Jones <lee@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	stable@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v4 1/6] phy: core: Fix that API devm_phy_put() fails to
 release the phy
Message-ID: <ZypSPb7qSR9zYSFv@hovoldconsulting.com>
References: <20241102-phy_core_fix-v4-0-4f06439f61b1@quicinc.com>
 <20241102-phy_core_fix-v4-1-4f06439f61b1@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241102-phy_core_fix-v4-1-4f06439f61b1@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_091336_576782_2BDFD48B 
X-CRM114-Status: GOOD (  16.53  )
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

T24gU2F0LCBOb3YgMDIsIDIwMjQgYXQgMTE6NTM6NDNBTSArMDgwMCwgWmlqdW4gSHUgd3JvdGU6
Cj4gRnJvbTogWmlqdW4gSHUgPHF1aWNfemlqdWh1QHF1aWNpbmMuY29tPgo+IAo+IEZvciBkZXZt
X3BoeV9wdXQoKSwgaXRzIGNvbW1lbnQgc2F5cyBpdCBuZWVkcyB0byBpbnZva2UgcGh5X3B1dCgp
IHRvCj4gcmVsZWFzZSB0aGUgcGh5LCBidXQgaXQgd2lsbCBub3QgYWN0dWFsbHkgaW52b2tlIHRo
ZSBmdW5jdGlvbiBzaW5jZQo+IGRldnJlc19kZXN0cm95KCkgZG9lcyBub3QgY2FsbCBkZXZtX3Bo
eV9yZWxlYXNlKCksIGFuZCB0aGUgbWlzc2luZwo+IHBoeV9wdXQoKSBjYWxsIHdpbGwgY2F1c2U6
CgpJIHN0aWxsIHRoaW5rIHRoZSBhYm92ZSBzaG91bGQgaGF2ZSBiZWVuIHNwbGl0IGluIHR3byBz
ZW50ZW5jZXMsIGJ1dAp0aGlzIGFsc28gd29ya3MuCgo+IC0gVGhlIHBoeSBmYWlscyB0byBiZSBy
ZWxlYXNlZC4KPiAtIGRldm1fcGh5X3B1dCgpIGNhbiBub3QgZnVsbHkgdW5kbyB3aGF0IEFQSSBk
ZXZtX3BoeV9nZXQoKSBkb2VzLgo+IC0gTGVhayByZWZjb3VudCBvZiBib3RoIHRoZSBtb2R1bGUg
YW5kIGRldmljZSBmb3IgYmVsb3cgdHlwaWNhbCB1c2FnZToKPiAKPiAgIGRldm1fcGh5X2dldCgp
OyAvLyBvciBpdHMgdmFyaWFudAo+ICAgLi4uCj4gICBlcnIgPSBkb19zb21ldGhpbmcoKTsKPiAg
IGlmIChlcnIpCj4gICAgICAgZ290byBlcnJfb3V0Owo+ICAgLi4uCj4gICBlcnJfb3V0Ogo+ICAg
ZGV2bV9waHlfcHV0KCk7IC8vIGxlYWsgcmVmY291bnQgaGVyZQo+IAo+ICAgVGhlIGZpbGUocykg
YWZmZWN0ZWQgYnkgdGhpcyBpc3N1ZSBhcmUgc2hvd24gYmVsb3cgc2luY2UgdGhleSBoYXZlIHN1
Y2gKPiAgIHR5cGljYWwgdXNhZ2UuCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2Uv
cGNpZS1jYWRlbmNlLmMKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bzdy1udXNz
LmMKPiAKPiBGaXhlZCBieSB1c2luZyBkZXZyZXNfcmVsZWFzZSgpIGluc3RlYWQgb2YgZGV2cmVz
X2Rlc3Ryb3koKSB3aXRoaW4gdGhlIEFQSS4KCk5pdDogaW4gdGhlIGZ1dHVyZSwgdHJ5IHRvIHVz
ZSBpbXBlcmF0aXZlIG1vb2QgaW4geW91ciBjb21taXQgbWVzc2FnZXMKKGUuZy4gImZpeCIgaW5z
dGVhZCBvZiAiZml4ZWQiKSBhcyB0aGUgcHJvY2VzcyBkb2N1bWVudGF0aW9uIHN1Z2dlc3RzLgoK
PiBGaXhlczogZmY3NjQ5NjM0NzlhICgiZHJpdmVyczogcGh5OiBhZGQgZ2VuZXJpYyBQSFkgZnJh
bWV3b3JrIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IENjOiBMb3JlbnpvIFBpZXJh
bGlzaSA8bHBpZXJhbGlzaUBrZXJuZWwub3JnPgo+IENjOiAiS3J6eXN6dG9mIFdpbGN6ecWEc2tp
IiA8a3dAbGludXguY29tPgo+IENjOiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29t
Pgo+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KPiBDYzogRXJp
YyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPgo+IENjOiBKYWt1YiBLaWNpbnNraSA8a3Vi
YUBrZXJuZWwub3JnPgo+IENjOiBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+Cj4gQ2M6
IEpvaGFuIEhvdm9sZCA8am9oYW5Aa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBaaWp1biBI
dSA8cXVpY196aWp1aHVAcXVpY2luYy5jb20+CgpSZXZpZXdlZC1ieTogSm9oYW4gSG92b2xkIDxq
b2hhbitsaW5hcm9Aa2VybmVsLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
