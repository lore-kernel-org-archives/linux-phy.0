Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAFB1C5DF66
	for <linux-phy@archiver.kernel.org>; Sun, 16 Aug 2026 21:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aH2lArXz/MSxuyUzRyPzYKjBlL5RkstN30mEVm4f4Q=; b=12EO1u0nyUWjpx
	o6xood2s+ghQrGFCyOHCwVI1Uf8BLhNndXexEJGVqZeflhBKu2kOW6HCo0eyD+J1z1tatUnB/LU9X
	EBk4QQO1JGk70UbbWgzrWRfhIoqHg1MC5as0HL2dJyYmja1OYPbZbZpbq8CSuA9DUi2Sz8h2yQZR1
	VIs0n6N/6gd72uqpYjPCTlRTncZInSXpQCw3sSn3Hqmemuuw1cPnoNZAaT9FFWT3iBp9lYik1MSdY
	F3gGlHtgK6u96+3mBpi5autUz35WBdSct2Rgbjlm/OdpVS/qZtTxgd2dqPS4+vhUas01eQJ/zp5UX
	NPe6ckH3yAn2eDnSdSOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wviZb-000000057B7-3RW8;
	Sun, 16 Aug 2026 21:39:19 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wviZV-0000000578u-3Hj4;
	Sun, 16 Aug 2026 21:39:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 31B8911C1C0;
	Sun, 16 Aug 2026 23:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1786916346;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=txBnKCBqQRTdt+Nk6gIA5IiW+sEtrE2NAj8RLoyHUgY=;
	b=Uz6Z/DGKUNauOOSijlWWme5Ad5ptcspXiuVTJ04N7iwc0w8BKrowKzQ5wk8wmmTfMu+7Aq
	IxYvZJAHgUXfP7VVvMrsrTBg4a6mTVADfFG8njJWYKw7BM4Q2eo9d9vT4TfS8/Mgd4Ue6d
	48bcz3wv4b5mGetXrCBvRWm69vrV8vXB+hsokEmmzbDa/PpkVOuklzClWWSaogb4fgfBdM
	m81W/OdWsVrMl+zgN+oaNQ163XDy6vWc0yF/54RoyJUNgM7hayBuAeim0PzN3z+u9USIFS
	JFiNbt9mKZy4bawsHfW7Gsx63BwtIaEJNlzeTv5oJD3eQw1m/i/Sjzb8Hbq5/Q==
From: Marek Vasut <marex@nabladev.com>
To: linux-usb@vger.kernel.org
Cc: Pankaj Dev <pankaj.dev@st.com>,
	Rahul Kumar <rahul.kumar05@st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	=?UTF-8?q?Cl=C3=A9ment=20Le=20Goffic?= <clement.legoffic@foss.st.com>,
	Marek Vasut <marex@nabladev.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christian Bruel <christian.bruel@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Rosen Penev <rosenp@gmail.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 1/9] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO PHY
Date: Sun, 16 Aug 2026 23:37:03 +0200
Message-ID: <20260816213849.1044073-2-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260816213849.1044073-1-marex@nabladev.com>
References: <20260816213849.1044073-1-marex@nabladev.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_143914_123251_0B38064C 
X-CRM114-Status: GOOD (  14.50  )
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

RnJvbTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+CgpEb2N1bWVudCBVU0IyIFBIWSBm
b3IgU1RNMzJNUDI1IFVTQjIgY29udHJvbGxlcnMsIHdoaWNoIGluY2x1ZGVzIHRoZQpVU0IyLjAg
aG9zdC1vbmx5IGNvbnRyb2xsZXIgYW5kIFVTQiAyLjAgcGFydCBvZiB0aGUgRFdDMyBjb250cm9s
bGVyLgpUd28gc3VjaCBQSFlzIGluIHRvdGFsIGFyZSBwcmVzZW50IGluIFNUTTMyTVAyNSBTb0Ms
IHRoZXkgYm90aCBhcmUKc2xpZ2h0bHkgZGlmZmVyZW50LCB0aGVyZWZvcmUgdGhleSB1c2UgZGlm
ZmVyZW50IGNvbXBhdGlibGUgc3RyaW5nCnRvIGRpc2Nlcm4gdGhlbS4KCkNvLWRldmVsb3BlZC1i
eTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+ClNpZ25lZC1vZmYtYnk6IFBhbmthaiBE
ZXYgPHBhbmthai5kZXZAc3QuY29tPgpDby1kZXZlbG9wZWQtYnk6IFJhaHVsIEt1bWFyIDxyYWh1
bC5rdW1hcjA1QHN0LmNvbT4KU2lnbmVkLW9mZi1ieTogUmFodWwgS3VtYXIgPHJhaHVsLmt1bWFy
MDVAc3QuY29tPgpDby1kZXZlbG9wZWQtYnk6IEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNu
aWVyQGZvc3Muc3QuY29tPgpTaWduZWQtb2ZmLWJ5OiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2Uu
Z2FzbmllckBmb3NzLnN0LmNvbT4KQ28tZGV2ZWxvcGVkLWJ5OiBDbMOpbWVudCBMZSBHb2ZmaWMg
PGNsZW1lbnQubGVnb2ZmaWNAZm9zcy5zdC5jb20+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IExl
IEdvZmZpYyA8Y2xlbWVudC5sZWdvZmZpY0Bmb3NzLnN0LmNvbT4KU2lnbmVkLW9mZi1ieTogTWFy
ZWsgVmFzdXQgPG1hcmV4QG5hYmxhZGV2LmNvbT4KLS0tCkNjOiBBbGV4YW5kcmUgVG9yZ3VlIDxh
bGV4YW5kcmUudG9yZ3VlQGZvc3Muc3QuY29tPgpDYzogQ2hyaXN0aWFuIEJydWVsIDxjaHJpc3Rp
YW4uYnJ1ZWxAZm9zcy5zdC5jb20+CkNjOiBDb25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5v
cmc+CkNjOiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBmb3NzLnN0LmNvbT4KQ2M6
IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+CkNjOiBLcnp5
c3p0b2YgS296bG93c2tpIDxrcnprK2R0QGtlcm5lbC5vcmc+CkNjOiBNYXhpbWUgQ29xdWVsaW4g
PG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+CkNjOiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1z
dHJvbmdAbGluYXJvLm9yZz4KQ2M6IFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgpDYzog
UmFodWwgS3VtYXIgPHJhaHVsLmt1bWFyMDVAc3QuY29tPgpDYzogUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz4KQ2M6IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPgpDYzogVGhpbmgg
Tmd1eWVuIDxUaGluaC5OZ3V5ZW5Ac3lub3BzeXMuY29tPgpDYzogVmlub2QgS291bCA8dmtvdWxA
a2VybmVsLm9yZz4KQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNjOiBrZXJuZWxAZGgt
ZWxlY3Ryb25pY3MuY29tCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
Q2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCkNjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCkNj
OiBsaW51eC11c2JAdmdlci5rZXJuZWwub3JnCi0tLQpWMjogLSBGaXggdXAgU29iL0NkYiBsaW5l
cwogICAgLSBGaXggdXAgY29tcGF0aWJsZSBzdHJpbmcgaW4gZXhhbXBsZQogICAgLSBVc2UgYWRk
aXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCiAgICAtIEV4cGFuZCBkZXNjcmlwdGlvbjoKICAgIC0g
VXNlIGNsb2NrLWNlbGxzID0gPDE+IHRvIGRpc2Nlcm4gT1NDIGFuZCBmdXR1cmUgUExMIGNsb2Nr
IGZyb20gdGhlIFBIWQotLS0KIC4uLi9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55YW1s
ICAgICAgICB8IDczICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3MyBpbnNl
cnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9zdCxzdG0zMi11c2IycGh5LnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0LHN0bTMyLXVzYjJwaHkueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55YW1sCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMDAuLmFiNmM5NDNhZjlhMjUKLS0t
IC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0
LHN0bTMyLXVzYjJwaHkueWFtbApAQCAtMCwwICsxLDczIEBACisjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEuMgorLS0tCisk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9zdCxzdG0zMi11c2IycGh5Lnlh
bWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFt
bCMKKwordGl0bGU6IFNUTWljcm9lbGVjdHJvbmljcyBTVE0zMiBNUFUgSGlnaC1TcGVlZCBVU0Ig
UEhZCisKK2Rlc2NyaXB0aW9uOgorICBVU0IyIFBIWSBibG9jayBpbiBTVE0zMiBpcyBhdHRhY2hl
ZCB0byBVU0IgMi4wIEhvc3QgY29udHJvbGxlciBhbmQKKyAgVVNCIDIuMCBzaWRlIG9mIERXQzMg
RFJEIGNvbnRyb2xsZXIsIGFuZCBwcm92aWRlcyB0aGUgVVNCIExTL0ZTL0hTCisgIGNvbm5lY3Rp
dml0eS4gQm90aCBQSFlzIGFyZSB0aGUgRkVNVE8tUEhZLCBidXQgdGhlaXIgY29uZmlndXJhdGlv
bgorICBiaXRzIGluIHRoZSBzeXN0ZW0gY29udHJvbCByZWdpc3RlciBhcmUgZGlmZmVyZW50IGZv
ciBlYWNoIHZhcmlhbnQuCisKK21haW50YWluZXJzOgorICAtIEZhYnJpY2UgR2FzbmllciA8ZmFi
cmljZS5nYXNuaWVyQGZvc3Muc3QuY29tPgorICAtIE1hcmVrIFZhc3V0IDxtYXJleEBuYWJsYWRl
di5jb20+CisgIC0gUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+CisKK3Byb3BlcnRpZXM6
CisgIGNvbXBhdGlibGU6CisgICAgZW51bToKKyAgICAgIC0gc3Qsc3RtMzJtcDI1LXVzYjJwaHkx
CisgICAgICAtIHN0LHN0bTMybXAyNS11c2IycGh5MgorCisgICIjcGh5LWNlbGxzIjoKKyAgICBj
b25zdDogMAorCisgIGNsb2NrczoKKyAgICBtYXhJdGVtczogMQorCisgIHJlc2V0czoKKyAgICBt
YXhJdGVtczogMQorCisgIHZkZDMzLXN1cHBseToKKyAgICBkZXNjcmlwdGlvbjogUGhhbmRsZSB0
byByZWd1bGF0b3IgcHJvdmlkaW5nIDNWMyBwb3dlciBzdXBwbHkgdG8gdGhlIFVTQjIgSFMgUEhZ
CisKKyAgc3Qsc3lzY2ZnOgorICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRp
b25zL3BoYW5kbGUtYXJyYXkKKyAgICBkZXNjcmlwdGlvbjogUGhhbmRsZSB0byBzeXN0ZW0gY29u
ZmlndXJhdGlvbiBjb250cm9sbGVyLgorICAgIGl0ZW1zOgorICAgICAgLSBpdGVtczoKKyAgICAg
ICAgICAtIGRlc2NyaXB0aW9uOiBwaGFuZGxlIHRvIHN5c2NmZworICAgICAgICAgIC0gZGVzY3Jp
cHRpb246IFVTQjJQSFkgY29udHJvbCBvZmZzZXQgd2l0aGluIHN5c2NmZworCisgICIjY2xvY2st
Y2VsbHMiOgorICAgIGNvbnN0OiAxCisKK3JlcXVpcmVkOgorICAtIGNvbXBhdGlibGUKKyAgLSAi
I2Nsb2NrLWNlbGxzIgorICAtICIjcGh5LWNlbGxzIgorICAtIGNsb2NrcworICAtIHJlc2V0cwor
ICAtIHN0LHN5c2NmZworICAtIHZkZDMzLXN1cHBseQorCithZGRpdGlvbmFsUHJvcGVydGllczog
ZmFsc2UKKworZXhhbXBsZXM6CisgIC0gfAorICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9j
ay9zdCxzdG0zMm1wMjUtcmNjLmg+CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3N0
LHN0bTMybXAyNS1yY2MuaD4KKworICAgIHVzYjJfcGh5MjogdXNiLXBoeSB7CisgICAgICAgIGNv
bXBhdGlibGUgPSAic3Qsc3RtMzJtcDI1LXVzYjJwaHkxIjsKKyAgICAgICAgI2Nsb2NrLWNlbGxz
ID0gPDE+OworICAgICAgICAjcGh5LWNlbGxzID0gPDA+OworICAgICAgICBjbG9ja3MgPSA8JnJj
YyBDS19LRVJfVVNCMlBIWTI+OworICAgICAgICByZXNldHMgPSA8JnJjYyBVU0IyUEhZMl9SPjsK
KyAgICAgICAgc3Qsc3lzY2ZnID0gPCZzeXNjZmcgMHgyODAwPjsKKyAgICAgICAgdmRkMzMtc3Vw
cGx5ID0gPCZ2ZGQzM3VzYj47CisgICAgfTsKLS0gCjIuNTMuMAoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
