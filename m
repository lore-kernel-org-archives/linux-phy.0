Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBFDDC678D4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 10:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlDOP43fJqalSmMQc4nUyyXtZavvnNdUPcNzJWPbrA0=; b=AsVqGdildgzx7T
	n/wXF9J6tAlpcZS1STXP4DGY4d64aoOlOjfOscqKNmofXW09N7t+XJxL9MrGbC7fKZFjKrxl7UoFs
	SFjcdmr6bZuJ3xBn/C7OqHP5LuznEpRpVL89oKZej3vzrbqMNYx89PRxmg/M175Fr/eHZcGPMPA2F
	fRbfus5uM4CJFEtuJ0QE4y703wSb1TAMHnTvDObMVViQB/sXeeQDwWci/SW0qRDM7N7DvIy3GOxOq
	Q7yuUznoCPnkHA2VIoZbGtWMouyXnyXR3M1Ws7DY6lTeUIA0PKYr4cprud+pbZjkHc+5lTVJSIbXp
	d0kSh3OMptAy8YS/CRTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY2xf-0064Be-7s; Fri, 03 Mar 2023 10:48:27 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY2xb-0064AM-Ph
	for linux-phy@lists.infradead.org; Fri, 03 Mar 2023 10:48:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 476C8CE20FC;
	Fri,  3 Mar 2023 10:48:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F6A2C433EF;
	Fri,  3 Mar 2023 10:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677840493;
	bh=okozz4AY2el34L2QlCjDBtxJAFsbbVEKqcfLhlw1EBk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HK54mxmwGQPNbD1pW6I15F99TXYAu6nzM7X9F8nmR1gsX/K5u+QzHgIODmTJNbJs7
	 l3f9+c6TbiF6hJXjoy+wHMLp0zXfucD1AhugIaX2wKhrL8hjAq0WnDjlAH+sbiFm0i
	 WAEXjDaMg5a0OyEZpLRQy+eBJHXTdg/ujjB8y0+nFqI41QCuqdWxcOnnR/1vofdxQs
	 V5m6oC+BrYhIl+9HEixsnpzpjMpc8ipMvCHuudKbCg/7v58cFsXi2Uev+gNXwBS2RD
	 RD3QKT/2pPF8iYGKRbnMO0EPdZiraWDtV1CCyC8SY0CHyWvdhPDqfRse8FzycWF/NS
	 7xNzSNHxhy+Dw==
Date: Fri, 3 Mar 2023 10:48:07 +0000
From: Lee Jones <lee@kernel.org>
To: Colin Foster <colin.foster@in-advantage.com>
Cc: linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [RFC v1 net-next 2/7] mfd: ocelot: add ocelot-serdes capability
Message-ID: <20230303104807.GW2303077@google.com>
References: <20230216075321.2898003-1-colin.foster@in-advantage.com>
 <20230216075321.2898003-3-colin.foster@in-advantage.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230216075321.2898003-3-colin.foster@in-advantage.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_024824_215046_E38C555A 
X-CRM114-Status: GOOD (  16.40  )
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

T24gV2VkLCAxNSBGZWIgMjAyMywgQ29saW4gRm9zdGVyIHdyb3RlOgoKPiBBZGQgc3VwcG9ydCBm
b3IgdGhlIE9jZWxvdCBTRVJERVMgbW9kdWxlIHRvIHN1cHBvcnQgZnVuY3Rpb25hbGl0eSBvZiBh
bGwKPiBub24taW50ZXJuYWwgcGh5IHBvcnRzLgoKTG9va3Mgbm9uLWNvbnRyb3ZlcnNpYWwuCgpQ
bGVhc2UgcHJvdmlkZSBzb21lIGV4cGxhbmF0aW9uIG9mIHdoYXQgU0VSREVTIG1lYW5zIC8gaXMu
CiAKPiBTaWduZWQtb2ZmLWJ5OiBDb2xpbiBGb3N0ZXIgPGNvbGluLmZvc3RlckBpbi1hZHZhbnRh
Z2UuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9vY2Vsb3QtY29yZS5jIHwgMTMgKysrKysrKysr
KysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKSSdkIGV4cGVjdCB0aGlz
IHRvIGdvIGluIHZpYSBNRkQgb25jZSBpdCBjb21lcyBvdXQgb2YgUkZDLgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZmQvb2NlbG90LWNvcmUuYyBiL2RyaXZlcnMvbWZkL29jZWxvdC1jb3JlLmMK
PiBpbmRleCBiMGZmMDVjMTc1OWYuLmMyMjI0ZjhhMTZjMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L21mZC9vY2Vsb3QtY29yZS5jCj4gKysrIGIvZHJpdmVycy9tZmQvb2NlbG90LWNvcmUuYwo+IEBA
IC00NSw2ICs0NSw5IEBACj4gICNkZWZpbmUgVlNDNzUxMl9TSU9fQ1RSTF9SRVNfU1RBUlQJMHg3
MTA3MDBmOAo+ICAjZGVmaW5lIFZTQzc1MTJfU0lPX0NUUkxfUkVTX1NJWkUJMHgwMDAwMDEwMAo+
ICAKPiArI2RlZmluZSBWU0M3NTEyX0hTSU9fUkVTX1NUQVJUCQkweDcxMGQwMDAwCj4gKyNkZWZp
bmUgVlNDNzUxMl9IU0lPX1JFU19TSVpFCQkweDAwMDAwMTI4Cj4gKwo+ICAjZGVmaW5lIFZTQzc1
MTJfQU5BX1JFU19TVEFSVAkJMHg3MTg4MDAwMAo+ICAjZGVmaW5lIFZTQzc1MTJfQU5BX1JFU19T
SVpFCQkweDAwMDEwMDAwCj4gIAo+IEBAIC0xMjksOCArMTMyLDEzIEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcmVzb3VyY2UgdnNjNzUxMl9zZ3Bpb19yZXNvdXJjZXNbXSA9IHsKPiAgCURFRklORV9S
RVNfUkVHX05BTUVEKFZTQzc1MTJfU0lPX0NUUkxfUkVTX1NUQVJULCBWU0M3NTEyX1NJT19DVFJM
X1JFU19TSVpFLCAiZ2NiX3NpbyIpLAo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBy
ZXNvdXJjZSB2c2M3NTEyX3NlcmRlc19yZXNvdXJjZXNbXSA9IHsKPiArCURFRklORV9SRVNfUkVH
X05BTUVEKFZTQzc1MTJfSFNJT19SRVNfU1RBUlQsIFZTQzc1MTJfSFNJT19SRVNfU0laRSwgImhz
aW8iKSwKPiArfTsKPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmVzb3VyY2UgdnNjNzUxMl9z
d2l0Y2hfcmVzb3VyY2VzW10gPSB7Cj4gIAlERUZJTkVfUkVTX1JFR19OQU1FRChWU0M3NTEyX0FO
QV9SRVNfU1RBUlQsIFZTQzc1MTJfQU5BX1JFU19TSVpFLCAiYW5hIiksCj4gKwlERUZJTkVfUkVT
X1JFR19OQU1FRChWU0M3NTEyX0hTSU9fUkVTX1NUQVJULCBWU0M3NTEyX0hTSU9fUkVTX1NJWkUs
ICJoc2lvIiksCj4gIAlERUZJTkVfUkVTX1JFR19OQU1FRChWU0M3NTEyX1FTX1JFU19TVEFSVCwg
VlNDNzUxMl9RU19SRVNfU0laRSwgInFzIiksCj4gIAlERUZJTkVfUkVTX1JFR19OQU1FRChWU0M3
NTEyX1FTWVNfUkVTX1NUQVJULCBWU0M3NTEyX1FTWVNfUkVTX1NJWkUsICJxc3lzIiksCj4gIAlE
RUZJTkVfUkVTX1JFR19OQU1FRChWU0M3NTEyX1JFV19SRVNfU1RBUlQsIFZTQzc1MTJfUkVXX1JF
U19TSVpFLCAicmV3IiksCj4gQEAgLTE3Niw2ICsxODQsMTEgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBtZmRfY2VsbCB2c2M3NTEyX2RldnNbXSA9IHsKPiAgCQkudXNlX29mX3JlZyA9IHRydWUsCj4g
IAkJLm51bV9yZXNvdXJjZXMgPSBBUlJBWV9TSVpFKHZzYzc1MTJfbWlpbTFfcmVzb3VyY2VzKSwK
PiAgCQkucmVzb3VyY2VzID0gdnNjNzUxMl9taWltMV9yZXNvdXJjZXMsCj4gKwl9LCB7Cj4gKwkJ
Lm5hbWUgPSAib2NlbG90LXNlcmRlcyIsCj4gKwkJLm9mX2NvbXBhdGlibGUgPSAibXNjYyx2c2M3
NTE0LXNlcmRlcyIsCj4gKwkJLm51bV9yZXNvdXJjZXMgPSBBUlJBWV9TSVpFKHZzYzc1MTJfc2Vy
ZGVzX3Jlc291cmNlcyksCj4gKwkJLnJlc291cmNlcyA9IHZzYzc1MTJfc2VyZGVzX3Jlc291cmNl
cywKPiAgCX0sIHsKPiAgCQkubmFtZSA9ICJvY2Vsb3Qtc3dpdGNoIiwKPiAgCQkub2ZfY29tcGF0
aWJsZSA9ICJtc2NjLHZzYzc1MTItc3dpdGNoIiwKPiAtLSAKPiAyLjI1LjEKPiAKCi0tIApMZWUg
Sm9uZXMgW+adjueQvOaWr10KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
