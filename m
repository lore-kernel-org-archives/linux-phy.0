Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB9CFD2AB3C
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 13:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLbjQX48kyKYibsDehmyUjKWWRdBMUxYV8f+irLGL6o=; b=s3tPRbt1+LIZJe
	qNZDCVjKoDvKiGY0hMCQkCPyVMHyt1I2dDiJtlupIUUDqxpf1RHbI+ij+O8asq9t9+FknpA2PExeT
	Yoz30f3iPmIJlqfeVVqxu0VveBRGwC7cR4vcbTKXsc6FC95yXcMroEKCwL0GKmAPx0w8x6Urtl79T
	r/vSxUt1+mgScshe5uQ4VYiAVGZFqd3a2abTq7VD2WfpHIflrjV+lzbWmS9OWF/rntGEgwNKCW1ZJ
	LXGSUD2prW78138aWDcGjrAC9tkCcnCOo821iopoLVcXZGC8uVuhNvlJGCI1hyNAW3P/dulxdiHRl
	PSaxCXCsLT0vVJz0/jxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mUc-0000000Ebkl-1r7g;
	Tue, 29 Oct 2024 13:42:42 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mRl-0000000EbIn-0J4S
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 13:39:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4B21CA42E51;
	Tue, 29 Oct 2024 13:37:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AB20C4CEE9;
	Tue, 29 Oct 2024 13:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730209182;
	bh=jj3QSdkt7HgsL+0jGXGGXLBhwpp0NyA9zHvIeDdUtTE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JlQU7Zt7jiwk9oGNwjU/HMTb+2ShaKBDK3O13vtfL6/WB7HRJJYLCl1rqUBzYdEUe
	 eZuHFdL6nUO1EEhjVSJ+/5NpgSk5fmXUP5+afqGLerGgrVHmq0uP6phi7bejFgu2z7
	 dAeUC1718KlSGe5fMjmI5Y7c5oupjs9Pb9mL1a36/KOxe6a2wcD5o4yGCvOEgNacJn
	 63s7piaIyFOU8crfHtuD8AIEDu1mb0R062/UQhz1aSPRUcCfRmcYb6bci46MIIPIjE
	 mWiG7FjWvnueEVZ41aJvxiVBcRsc8rPI9AnGrhvwoauqL1nGQ8ZdTzJdkwypUf+bKo
	 OD55CyBv0ZoFg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t5mS1-000000002sW-3cst;
	Tue, 29 Oct 2024 14:40:01 +0100
Date: Tue, 29 Oct 2024 14:40:01 +0100
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
Subject: Re: [PATCH v2 1/6] phy: core: Fix that API devm_phy_put() fails to
 release the phy
Message-ID: <ZyDlsWaA5aiRa_ry@hovoldconsulting.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
 <20241024-phy_core_fix-v2-1-fc0c63dbfcf3@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024-phy_core_fix-v2-1-fc0c63dbfcf3@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_063945_242514_8760E444 
X-CRM114-Status: GOOD (  17.40  )
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

T24gVGh1LCBPY3QgMjQsIDIwMjQgYXQgMTA6Mzk6MjZQTSArMDgwMCwgWmlqdW4gSHUgd3JvdGU6
Cj4gRnJvbTogWmlqdW4gSHUgPHF1aWNfemlqdWh1QHF1aWNpbmMuY29tPgo+IAo+IEZvciBkZXZt
X3BoeV9wdXQoKSwgaXRzIGNvbW1lbnQgc2F5cyBpdCBuZWVkcyB0byBpbnZva2UgcGh5X3B1dCgp
IHRvCj4gcmVsZWFzZSB0aGUgcGh5LCBidXQgaXQgZG9lcyBub3QgaW52b2tlIHRoZSBmdW5jdGlv
biBhY3R1YWxseSBzaW5jZQo+IGRldnJlc19kZXN0cm95KCkgd2lsbCBub3QgY2FsbCBkZXZtX3Bo
eV9yZWxlYXNlKCkgYXQgYWxsIHdoaWNoIHdpbGwKPiBjYWxsIHRoZSBmdW5jdGlvbiwgYW5kIHRo
ZSBtaXNzaW5nIHBoeV9wdXQoKSBjYWxsIHdpbGwgY2F1c2U6CgpQbGVhc2Ugc3BsaXQgdGhlIGFi
b3ZlIHVwIGluIGF0IGxlYXN0IHR3byBzZW50ZW5jZXMgdG8gbWFrZSBpdCBlYXNpZXIgdG8KcGFy
c2UuIFNwbGl0IGl0IGFmdGVyIGRldm1fcGh5X3JlbGVhc2UoKSBhbmQgcmVwaHJhc2UgdGhlIGxh
dHRlciBwYXJ0CihlLmcuIGJ5IGRyb3BwaW5nICJhdCBhbGwgd2hpY2ggd2lsbCBjYWxsIHRoZSBm
dW5jdGlvbiIpLgogCj4gLSBUaGUgcGh5IGZhaWxzIHRvIGJlIHJlbGVhc2VkLgo+IC0gZGV2bV9w
aHlfcHV0KCkgY2FuIG5vdCBmdWxseSB1bmRvIHdoYXQgQVBJIGRldm1fcGh5X2dldCgpIGRvZXMu
Cj4gLSBMZWFrIHJlZmNvdW50IG9mIGJvdGggdGhlIG1vZHVsZSBhbmQgZGV2aWNlIGZvciBiZWxv
dyB0eXBpY2FsIHVzYWdlOgo+IAo+ICAgZGV2bV9waHlfZ2V0KCk7IC8vIG9yIGl0cyB2YXJpYW50
Cj4gICAuLi4KPiAgIGVyciA9IGRvX3NvbWV0aGluZygpOwo+ICAgaWYgKGVycikKPiAgICAgICBn
b3RvIGVycl9vdXQ7Cj4gICAuLi4KPiAgIGVycl9vdXQ6Cj4gICBkZXZtX3BoeV9wdXQoKTsKPiAK
PiAgIFRoZSBmaWxlKHMpIGFmZmVjdGVkIGJ5IHRoaXMgaXNzdWUgYXJlIHNob3duIGJlbG93IHNp
bmNlIHRoZXkgaGF2ZSBzdWNoCj4gICB0eXBpY2FsIHVzYWdlLgo+ICAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9jYWRlbmNlL3BjaWUtY2FkZW5jZS5jCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC90
aS9hbTY1LWNwc3ctbnVzcy5jCj4gCj4gRml4ZWQgYnkgdXNpbmcgZGV2cmVzX3JlbGVhc2UoKSBp
bnN0ZWFkIG9mIGRldnJlc19kZXN0cm95KCkgd2l0aGluIHRoZSBBUEkKPiAKPiBGaXhlczogZmY3
NjQ5NjM0NzlhICgiZHJpdmVyczogcGh5OiBhZGQgZ2VuZXJpYyBQSFkgZnJhbWV3b3JrIikKPiBD
Yzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IENjOiBMb3JlbnpvIFBpZXJhbGlzaSA8bHBpZXJh
bGlzaUBrZXJuZWwub3JnPgo+IENjOiAiS3J6eXN6dG9mIFdpbGN6ecWEc2tpIiA8a3dAbGludXgu
Y29tPgo+IENjOiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgo+IENjOiAiRGF2
aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KPiBDYzogRXJpYyBEdW1hemV0IDxl
ZHVtYXpldEBnb29nbGUuY29tPgo+IENjOiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3Jn
Pgo+IENjOiBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
WmlqdW4gSHUgPHF1aWNfemlqdWh1QHF1aWNpbmMuY29tPgoKRGlmZiBpdHNlbGYgbG9va3MgZ29v
ZC4gTmljZSBmaW5kLgoKSm9oYW4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
