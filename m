Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE469C83033
	for <linux-phy@archiver.kernel.org>; Mon, 30 Jun 2025 21:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpnWawlUzC99ifSgnVCfbfdqZwo0/f52a2BVV6+rDKM=; b=e7DIUk3TTq9J6I
	YwxnbWtHPyrC4KWXGnMXXxFRx8ynGhYAKwwALdK5NW2uyfIdGXljQItTS6MFwCxLp4bmxrlfQZ3Ic
	aiYjKq5yO0rfDlFqGXVFma8quUqD7cQ3QsPCLkbTpJEHyfR4aUIn2TJSo//tdbd3InX6PjRBVDXMo
	hRV1jLLORwhB5ZosQuJuac37dYGucaEQivJcecNK7V9114gmU/eyrCQMu16ThR+rZI7imTcCg6Qkh
	86sSSJ9GClFhDAQVzQWXvuDapef5AjE6EO1D5B5kWzqLZLag9yqkzCc8+jepWy6dtrqAxmsu5SSh0
	dIi1teziWCmav9TTAGow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWM85-00000003Ur6-1UiD;
	Mon, 30 Jun 2025 21:33:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWM82-00000003Upm-2907;
	Mon, 30 Jun 2025 21:33:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BTJWDoX6+dZpqVbCI05HYOZjmWwxTYx7suIMcGN7BKI=; b=kXPOClJk1Kmb/DiiyBtViPQ7s4
	BtvZG0K9yDMyQ4fGAOW0in3ubCmp2jBQZQuvmSkNvuRkZoBH5+Cd9uXGWaJLcrZnzwTlI6ctkPg0E
	MPCtQMCm0MxNBF+z6YN3VNCvT0Y5AP4nvgRmrHCPBIAzCPyr/yGFufXgaB7zRpS5fSshucWqrdNkz
	cTRAN+LkSxuoc10IY9ad5dILrvGnMUn61DobyKVq28TF0PSvch2asNQdHHgXEZLWQArucI5zeklKY
	dl7HGTSabPyPOfaLNFCCXbNHXk2/MWobnlFcqn2HpHbxaBkwOcjzD90tFzh6Nld+AGVo80RkSVSmM
	XfhReTgw==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uWM7s-00084a-BS; Mon, 30 Jun 2025 23:33:20 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Rick wertenbroek <rick.wertenbroek@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Valmantas Paliksa <walmis@gmail.com>, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 3/4] phy: rockchip-pcie: Enable all four lanes if required
Date: Mon, 30 Jun 2025 23:33:19 +0200
Message-ID: <4006908.X513TT2pbd@diego>
In-Reply-To: <d3e7dc38bd287aa93a5d6bba87bf3c428ae92ca4.1751307390.git.geraldogabriel@gmail.com>
References: <cover.1751307390.git.geraldogabriel@gmail.com>
 <d3e7dc38bd287aa93a5d6bba87bf3c428ae92ca4.1751307390.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_143330_573245_F7E0CFC8 
X-CRM114-Status: GOOD (  17.32  )
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

QW0gTW9udGFnLCAzMC4gSnVuaSAyMDI1LCAyMDoyMjowMSBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIEdlcmFsZG8gTmFzY2ltZW50bzoKPiBDdXJyZW50IGNvZGUgZW5hYmxl
cyBvbmx5IExhbmUgMCBiZWNhdXNlIHB3cl9jbnQgd2lsbCBiZSBpbmNyZW1lbnRlZCBvbgo+IGZp
cnN0IGNhbGwgdG8gdGhlIGZ1bmN0aW9uLiBMZXQncyByZW9yZGVyIHRoZSBlbmFibGVtZW50IGNv
ZGUgdG8gZW5hYmxlCj4gYWxsIDQgbGFuZXMgdGhyb3VnaCBHUkYuCj4gCj4gUmV2aWV3ZWQtYnk6
IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+IFJldmlld2VkLWJ5
OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFZhbG1hbnRhcyBQYWxpa3NhIDx3YWxtaXNAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEdl
cmFsZG8gTmFzY2ltZW50byA8Z2VyYWxkb2dhYnJpZWxAZ21haWwuY29tPgoKaG1tLCBpZiBWYWxt
YW50YXMgaXMgdGhlIG9yaWdpbmFsIGF1dGhvciB5b3Ugc2hvdWxkIHByb2JhYmx5IGtlZXAgdGhh
dCBhdXRob3JzaGlwCiAgZ2l0IGNvbW1pdCAtLWFtZW5kIC0tYXV0aG9yPSJWYWxtYW50YXMgUGFs
aWtzYSA8d2FsbWlzQGdtYWlsLmNvbT4iCnNob3VsZCBkbyB0aGUgdHJpY2suCgpUaGUgZmlyc3Qg
c2lnbmVkLW9mZiBzaG91bGQgYmUgZnJvbSB0aGUgcGF0Y2ggYXV0aG9yLCB0aGVuIHlvdXIgc2ln
bmVkLW9mZgppbmRpY2F0ZXMgeW91IGhhbmRsaW5nIHRoZSBwYXRjaCBsYXRlciBhcyBwYXJ0IG9m
IHRoaXMgc2VyaWVzLgoKW29yLCBpZiB5b3UgbW9kaWZpZWQgdGhlIGNvZGUgb2YgdGhlIHBhdGNo
IGhlYXZpbHksIENvLWRldmVsb3BlZC1ieSBjb3VsZAogYWxzbyBiZSBhcHByb3ByaWF0ZV0KCkhl
aWtvCgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtcGNpZS5jIHwg
MTIgKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1wY2llLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtcGNpZS5jCj4g
aW5kZXggYmQ0NGFmMzZjNjdhLi5mMjJmZmI0MWNkYzIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXBjaWUuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC1wY2llLmMKPiBAQCAtMTYwLDYgKzE2MCwxMiBAQCBzdGF0aWMgaW50
IHJvY2tjaGlwX3BjaWVfcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPiAgCj4gIAlndWFy
ZChtdXRleCkoJnJrX3BoeS0+cGNpZV9tdXRleCk7Cj4gIAo+ICsJcmVnbWFwX3dyaXRlKHJrX3Bo
eS0+cmVnX2Jhc2UsCj4gKwkJICAgICBya19waHktPnBoeV9kYXRhLT5wY2llX2xhbmVvZmYsCj4g
KwkJICAgICBISVdPUkRfVVBEQVRFKCFQSFlfTEFORV9JRExFX09GRiwKPiArCQkJCSAgIFBIWV9M
QU5FX0lETEVfTUFTSywKPiArCQkJCSAgIFBIWV9MQU5FX0lETEVfQV9TSElGVCArIGluc3QtPmlu
ZGV4KSk7Cj4gKwo+ICAJaWYgKHJrX3BoeS0+cHdyX2NudCsrKSB7Cj4gIAkJcmV0dXJuIDA7Cj4g
IAl9Cj4gQEAgLTE3NiwxMiArMTgyLDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3BoeV9w
b3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4gIAkJCQkgICBQSFlfQ0ZHX0FERFJfTUFTSywKPiAg
CQkJCSAgIFBIWV9DRkdfQUREUl9TSElGVCkpOwo+ICAKPiAtCXJlZ21hcF93cml0ZShya19waHkt
PnJlZ19iYXNlLAo+IC0JCSAgICAgcmtfcGh5LT5waHlfZGF0YS0+cGNpZV9sYW5lb2ZmLAo+IC0J
CSAgICAgSElXT1JEX1VQREFURSghUEhZX0xBTkVfSURMRV9PRkYsCj4gLQkJCQkgICBQSFlfTEFO
RV9JRExFX01BU0ssCj4gLQkJCQkgICBQSFlfTEFORV9JRExFX0FfU0hJRlQgKyBpbnN0LT5pbmRl
eCkpOwo+IC0KPiAgCS8qCj4gIAkgKiBObyBkb2N1bWVudGVkIHRpbWVvdXQgdmFsdWUgZm9yIHBo
eSBvcGVyYXRpb24gYmVsb3csCj4gIAkgKiBzbyB3ZSBtYWtlIGl0IGxhcmdlIGVub3VnaCBoZXJl
LiBBbmQgd2UgdXNlIGxvb3AtYnJlYWsKPiAKCgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
