Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CAF5E74903
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xly/nCdGvOqvfwS20vgfAY/hIAizElsCU5z3bRO9FmE=; b=gZCpanBA8+oYJk
	r6pP7R8Fnmv7UAccTl1+sjgi8SbLv15egq/8WN7R33njPMrjwJTtEFoK2ixlSRMUgOjGfDZZ2rkC8
	dzn0TdAeUchlKTQbsyGbQD2HGjwXFRKuA2tI1wKu6r20E3T6cO5d55m3dpE3UA4zNkZisX+ZOsIwE
	sKn0Wf1eElJAiJ+qVvSBvwqqF13+bzj/MscK865LJ37oEIDxcjPc5kpA+ao8NGc5U7DCXML8YNOy4
	oRHpj1QWoIyzAuhrG5WMds/VqnOjAeuoTcqRrOiGemIS9XowFXeIUyoChq4DY2Xcl7lc1yXf8840T
	bHW6XE4fli3kdUHUVFmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYHSW-0000000GQxZ-3Zh7;
	Wed, 24 Dec 2025 05:30:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYHSV-0000000GQxM-22ls;
	Wed, 24 Dec 2025 05:30:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9154B60123;
	Wed, 24 Dec 2025 05:30:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF1F1C4CEFB;
	Wed, 24 Dec 2025 05:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766554250;
	bh=1X9APecdnLI/dPB5jwwC+T1kxLB0WLC073vyb8hkJgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SISDydjirDPYMUr4FcfxX40KBetH36Bjt+7pfTrpYmEmu1dd3hfUs3tTGX/NJ9qQF
	 X9Fm57cx+ptcwhFuNNkN5uGbHO5TM696KG63jvQbPbeLXIMWoSRPgCpeNPlB7uNiNl
	 RVsK/7XARw8cBznR0jdphIRjJBW9PrBsb5hKiBLaoONmjOQ76AUknCN3p2Gcp6OXPA
	 uBm0TPM9fBzuM+86esajXU34fbEWeVAd2/uXW+oOWiv5GQ7n5T+CC+/5F+CyCQ9p7O
	 x0kP0727nRjzkrInVLGaSyPnJR/4lVYXQdVCWjot+cn8BAk/DvXPZM2vtGmk89FaB8
	 pSw44WM1/otYg==
Date: Wed, 24 Dec 2025 11:00:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Roy Luo <royluo@google.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Badhri Jagan Sridharan <badhri@google.com>,
	Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Joy Chakraborty <joychakr@google.com>,
	Naveen Kumar <mnkumar@google.com>
Subject: Re: [PATCH v9 2/2] phy: Add Google Tensor SoC USB PHY driver
Message-ID: <aUt6hobN9DPUGbpz@vaman>
References: <20251222-phyb4-v9-0-82c0b671b070@google.com>
 <20251222-phyb4-v9-2-82c0b671b070@google.com>
 <aUqhbVFHczpL9qnL@vaman>
 <CA+zupgxP+_2iRYABhPM1OOJtRdkrcOvrsKH=Sxk45XwsiamzTw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+zupgxP+_2iRYABhPM1OOJtRdkrcOvrsKH=Sxk45XwsiamzTw@mail.gmail.com>
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

T24gMjMtMTItMjUsIDA5OjUzLCBSb3kgTHVvIHdyb3RlOgo+IE9uIFR1ZSwgRGVjIDIzLCAyMDI1
IGF0IDY6MDTigK9BTSBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4g
PiBPbiAyMi0xMi0yNSwgMjE6MzEsIFJveSBMdW8gd3JvdGU6Cgo+ID4gPiArc3RydWN0IGdvb2ds
ZV91c2JfcGh5IHsKPiA+ID4gKyAgICAgc3RydWN0IGRldmljZSAqZGV2Owo+ID4gPiArICAgICBz
dHJ1Y3QgcmVnbWFwICp1c2JfY2ZnX3JlZ21hcDsKPiA+ID4gKyAgICAgdW5zaWduZWQgaW50IHVz
YjJfY2ZnX29mZnNldDsKPiA+ID4gKyAgICAgdm9pZCBfX2lvbWVtICp1c2JkcF90b3BfYmFzZTsK
PiA+ID4gKyAgICAgc3RydWN0IGdvb2dsZV91c2JfcGh5X2luc3RhbmNlIGluc3RzW0dPT0dMRV9V
U0JfUEhZX05VTV07Cj4gPgo+ID4gc28geW91IGhhdmUgYW4gYXJyYXkgZm9yIG9uZSBwaHk/Cj4g
Cj4gV2hpbGUgdGhlIGN1cnJlbnQgcGF0Y2ggb25seSBzdXBwb3J0cyB1c2IyLCBJIHVzZWQgYW4g
YXJyYXkKPiB0byBzaW1wbGlmeSBmdXR1cmUgc3VwcG9ydCBmb3IgdXNiMyBhbmQgRFAuIEkgdW5k
ZXJzdGFuZCB0aGlzCj4gbWlnaHQgc2VlbSBsaWtlIG92ZXItZW5naW5lZXJpbmcgZm9yIG5vdywg
YW5kIHdlIGNvdWxkCj4gY2VydGFpbmx5IHdhaXQgdG8gaW1wbGVtZW50IHRoZSBhcnJheSB1bnRp
bCB0aGUgc2Vjb25kIHBoeQo+IHN1cHBvcnQgaXMgYWRkZWQuIEnigJltIGhhcHB5IHRvIG1vdmUg
YXdheSBmcm9tIGFycmF5IGlmCj4geW914oCZZCBwcmVmZXIgYSBzaW1wbGVyIGFwcHJvYWNoIGZv
ciB0aGlzIGl0ZXJhdGlvbi4KClJhdGhlciB0aGFuIGRvIGFycmF5LCBhbGxvY2F0ZSBtZW0gYXMg
cHJvYmUgYmFzZWQgb24gaG93IG1hbnkgcGh5cyB3aWxsCmJlIHRoZXJlIGFuZCB1c2UgdGhhdC4g
VGhhdCB3b3VsZCBiZSBhIGJldHRlciBhcHByb2FjaCB0aGFuIHN0YXRpYwphbGxvY2F0aW9uIGhl
cmUKCj4gPiA+ICtzdGF0aWMgaW50IGdvb2dsZV91c2IyX3BoeV9leGl0KHN0cnVjdCBwaHkgKl9w
aHkpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIHN0cnVjdCBnb29nbGVfdXNiX3BoeV9pbnN0YW5jZSAq
aW5zdCA9IHBoeV9nZXRfZHJ2ZGF0YShfcGh5KTsKPiA+ID4gKyAgICAgc3RydWN0IGdvb2dsZV91
c2JfcGh5ICpncGh5ID0gdG9fZ29vZ2xlX3VzYl9waHkoaW5zdCk7Cj4gPiA+ICsgICAgIHUzMiBy
ZWc7Cj4gPiA+ICsKPiA+ID4gKyAgICAgZGV2X2RiZyhncGh5LT5kZXYsICJleGl0aW5nIHVzYjIg
cGh5XG4iKTsKPiA+ID4gKwo+ID4gPiArICAgICBndWFyZChtdXRleCkoJmdwaHktPnBoeV9tdXRl
eCk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgcmVnbWFwX3JlYWQoZ3BoeS0+dXNiX2NmZ19yZWdtYXAs
IGdwaHktPnVzYjJfY2ZnX29mZnNldCArIFVTQkNTX1VTQjJQSFlfQ0ZHMjFfT0ZGU0VULCAmcmVn
KTsKPiA+ID4gKyAgICAgcmVnICY9IH5VU0JDU19VU0IyUEhZX0NGRzIxX1BIWV9FTkFCTEU7Cj4g
PiA+ICsgICAgIHJlZ21hcF93cml0ZShncGh5LT51c2JfY2ZnX3JlZ21hcCwgZ3BoeS0+dXNiMl9j
Zmdfb2Zmc2V0ICsgVVNCQ1NfVVNCMlBIWV9DRkcyMV9PRkZTRVQsIHJlZyk7Cj4gPiA+ICsKPiA+
ID4gKyAgICAgcmVzZXRfY29udHJvbF9idWxrX2Fzc2VydChpbnN0LT5udW1fcnN0cywgaW5zdC0+
cnN0cyk7Cj4gPiA+ICsgICAgIGNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKGluc3QtPm51bV9j
bGtzLCBpbnN0LT5jbGtzKTsKPiA+ID4gKwo+ID4gPiArICAgICByZXR1cm4gMDsKPiA+ID4gK30K
PiA+ID4gKwo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIGdvb2dsZV91c2IyX3Bo
eV9vcHMgPSB7Cj4gPiA+ICsgICAgIC5pbml0ICAgICAgICAgICA9IGdvb2dsZV91c2IyX3BoeV9p
bml0LAo+ID4gPiArICAgICAuZXhpdCAgICAgICAgICAgPSBnb29nbGVfdXNiMl9waHlfZXhpdCwK
PiA+ID4gK307Cj4gPgo+ID4gT25seSB0d28gb3BzPyBJIHdvdWxkIGV4cGVjdCBtb3JlLi4uIE5v
IHBvd2VyX29uL29mZiBvciBzZXRfbW9kZT8KPiA+Cj4gPiAtLQo+ID4gflZpbm9kCj4gCj4gTm8s
IGNvbmZpZ3VyaW5nIHVzYjIgcGh5IGlzIHByZXR0eSBzdHJhaWdodGZvcndhcmQuIFRoZSBoYXJk
d2FyZQo+IGRvZXMgbm90IGRpc3Rpbmd1aXNoIGJldHdlZW4gImluaXRpYWxpemVkIiBhbmQgInBv
d2VyZWQgb24iIHN0YXRlcywKPiBpdCBhbHNvIGRvZXMgbm90IGRpc3Rpbmd1aXNoIHBoeSBtb2Rl
LgoKb2sKCi0tIAp+Vmlub2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
