Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF468CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 10:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0D556Bu1EUFR+qQfRwALzWEjxTw2lYI5t/msPKJunY=; b=TmX52Po2KDOCWl
	A/tuAfpWp4dTb6awReh4pw6K3QmfSnciMNn1b1CSURLjhaTDEf5NkHbatZ5MaY2OgO3POEBM3FWm8
	rEmSD1u8sRMbPokmSxIJz5mWaLQ2QXE/JjTDK3iycjg0Oh7HXsJkxZ61vrpEEy0NRT3iWB4U+MRWr
	u2ZyLNvaO9GcsOtJLEZLPU3I464K6FiZx3GuqmSDXQFKlFMuEMIGOjeyvQ2VvrhXfGJl2rt84ptag
	14iqGx5RyB55WyPe5z3/VD1e7gaX5lqYa5fRoMMxdgOHNBbMceaISVIML1G06kyGpS/0wNaC+p+f4
	vhcErsiDMbk4H7wCW1Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB9kB-0000000GeMq-1OsC;
	Tue, 21 Oct 2025 10:37:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB9k9-0000000GeLG-1NBa;
	Tue, 21 Oct 2025 10:37:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BA0596238E;
	Tue, 21 Oct 2025 10:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27116C19421;
	Tue, 21 Oct 2025 10:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761043046;
	bh=Wv4YlboMbpQNw6u3IhV6GaaoBps8Bfhjrkcb7CsF0xc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fI4IDXhUCP7sgAbKQnnlEnGS+mH6+q/DVxfBVgsj499VkGJQLro2SipZv+UsgT+zu
	 8B9BQ/N8PLADF+mv0npm2WR18SHOSCTkY6IIWB+/4KWxdz0HaqNaCd+VpwNF+jRHei
	 3ov8wsowSbIjE7ehwZJQCM5XDSZ8yb88yR9ym4/iD1GrsxZuohsf4L75d3zn6Oo8ZL
	 n/EM6KAHijRdlgGUc7o7fjyhsti167l3ftZbDgbosTZ+9qyXpVrt8OKaPBS6REela5
	 1PzcamUK2QhpQhPmKuhJ64ytVkT/HOGaF6eImS7MwUdj0xA7m9KQpsd53N7fkQp+0Z
	 1s/kfAndNZ8Fg==
Date: Tue, 21 Oct 2025 11:37:15 +0100
From: Lee Jones <lee@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-iio@vger.kernel.org, linux-media@vger.kernel.org,
	netdev@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
Message-ID: <20251021103715.GA475031@google.com>
References: <20251015232015.846282-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251015232015.846282-1-robh@kernel.org>
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

T24gV2VkLCAxNSBPY3QgMjAyNSwgUm9iIEhlcnJpbmcgKEFybSkgd3JvdGU6Cgo+IHlhbWxsaW50
IGhhcyBnYWluZWQgYSBuZXcgY2hlY2sgd2hpY2ggY2hlY2tzIGZvciBpbmNvbnNpc3RlbnQgcXVv
dGluZwo+IChtaXhlZCAiIGFuZCAnIHF1b3RlcyB3aXRoaW4gYSBmaWxlKS4gRml4IGFsbCB0aGUg
Y2FzZXMgeWFtbGxpbnQgZm91bmQKPiBzbyB3ZSBjYW4gZW5hYmxlIHRoZSBjaGVjayAob25jZSB0
aGUgY2hlY2sgaXMgaW4gYSByZWxlYXNlKS4gVXNlCj4gd2hpY2hldmVyIHF1b3RpbmcgaXMgZG9t
aW5hdGUgaW4gdGhlIGZpbGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgKEFybSkg
PHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgLi4uL2FybS9hbHRlcmEvc29jZnBnYS1jbGstbWFu
YWdlci55YW1sICAgICAgIHwgIDQgKystLQo+ICAuLi4vYmluZGluZ3MvY2xvY2svbnZpZGlhLHRl
Z3JhMTI0LWNhci55YW1sICAgfCAgOCArKysrLS0tLQo+ICAuLi4vYmluZGluZ3MvY2xvY2svbnZp
ZGlhLHRlZ3JhMjAtY2FyLnlhbWwgICAgfCAgNiArKystLS0KPiAgLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZ3Bpby9ncGlvLW14cy55YW1sICAgIHwgIDkgKysrKystLS0tCj4gIC4uLi9iaW5kaW5n
cy9ncGlvL3NucHMsZHctYXBiLWdwaW8ueWFtbCAgICAgICB8ICA0ICsrLS0KPiAgLi4uL2JpbmRp
bmdzL2lpby90ZW1wZXJhdHVyZS9hZGksbHRjMjk4My55YW1sIHwgMjAgKysrKysrKysrLS0tLS0t
LS0tLQo+ICAuLi4vbWFpbGJveC9xY29tLGFwY3Mta3Bzcy1nbG9iYWwueWFtbCAgICAgICAgfCAx
NiArKysrKysrLS0tLS0tLS0KPiAgLi4uL21haWxib3gveGxueCx6eW5xbXAtaXBpLW1haWxib3gu
eWFtbCAgICAgIHwgIDIgKy0KPiAgLi4uL2JpbmRpbmdzL21lZGlhL2ZzbCxpbXg2cS12ZG9hLnlh
bWwgICAgICAgIHwgIDIgKy0KCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9hc3BlZWQt
bHBjLnlhbWwgICB8ICA0ICsrLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3RpLHR3
bC55YW1sICAgICAgIHwgIDQgKystLQoKQWNrZWQtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5v
cmc+Cgo+ICAuLi4vYmluZGluZ3MvbmV0L2V0aGVybmV0LXN3aXRjaC55YW1sICAgICAgICAgfCAg
MiArLQo+ICAuLi4vcGNpL3BsZGEseHByZXNzcmljaDMtYXhpLWNvbW1vbi55YW1sICAgICAgfCAg
MiArLQo+ICAuLi4vYmluZGluZ3MvcGh5L21vdG9yb2xhLGNwY2FwLXVzYi1waHkueWFtbCAgfCAg
NCArKy0tCj4gIC4uLi9waW5jdHJsL21pY3JvY2hpcCxzcGFyeDUtc2dwaW8ueWFtbCAgICAgICB8
IDEyICsrKysrLS0tLS0tCj4gIC4uLi9iaW5kaW5ncy9waW5jdHJsL3Fjb20scG1pYy1ncGlvLnlh
bWwgICAgICB8IDEwICsrKysrLS0tLS0KPiAgLi4uL2JpbmRpbmdzL3BpbmN0cmwvcWNvbSxwbWlj
LW1wcC55YW1sICAgICAgIHwgIDYgKysrLS0tCj4gIC4uLi9iaW5kaW5ncy9waW5jdHJsL3JlbmVz
YXMscGZjLnlhbWwgICAgICAgICB8ICA0ICsrLS0KPiAgLi4uL2JpbmRpbmdzL3BpbmN0cmwvcmVu
ZXNhcyxyemExLXBvcnRzLnlhbWwgIHwgIDIgKy0KPiAgLi4uL3BpbmN0cmwvcmVuZXNhcyxyemcy
bC1waW5jdHJsLnlhbWwgICAgICAgIHwgIDIgKy0KPiAgLi4uL3BpbmN0cmwvcmVuZXNhcyxyenYy
bS1waW5jdHJsLnlhbWwgICAgICAgIHwgIDIgKy0KPiAgLi4uL2JpbmRpbmdzL3Bvd2VyL3JlbmVz
YXMsc3lzYy1ybW9iaWxlLnlhbWwgIHwgIDQgKystLQo+ICAuLi4vc29jL21pY3JvY2hpcC9hdG1l
bCxhdDkxcm05MjAwLXRjYi55YW1sICAgfCAgOCArKysrLS0tLQo+ICAuLi4vc29jL3RlZ3JhL252
aWRpYSx0ZWdyYTIwLXBtYy55YW1sICAgICAgICAgfCAxMiArKysrKy0tLS0tLQo+ICAyNCBmaWxl
cyBjaGFuZ2VkLCA3NSBpbnNlcnRpb25zKCspLCA3NCBkZWxldGlvbnMoLSkKClsuLi5dCgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
