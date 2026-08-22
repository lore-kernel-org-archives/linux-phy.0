Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8EA4C5DF97
	for <linux-phy@archiver.kernel.org>; Sat, 22 Aug 2026 07:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Guzo3tS3CmaVz7+TR8hdqH+AtChs7wiKHQBCykmP9s=; b=mMPx/h+3WGhYQS
	7F9ijDuu9t4uMnVZEJtf2GW+/jW00qg2HspvhxFwr060ja5hKNhDJwvfxHlnw44yIm0OYXUAVxQKq
	pRFNeQ3MlQkQbqi9UZa0tcDNOulA03eJ5UmzDeFvBaVhnwpNzxiCR8DZO6DpFopwnhU3xDheOo7uc
	B9qrhAtGw3revOFEWvtqjaUH+1y5WQV/N2EHQtSGCfu/ZEwoDAbMlR198+RKav23GkNYV4dUhnfBq
	7cTrakLO5B2EF1RaL7SosbM4Ohm+mI4csh+tSeG52TKI2XUYmif7LmV45sXCqYzz9hQMkQwHSXogj
	rpo3P0TCPzto17OR8x0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgT4-0000000ELhu-1dSt;
	Sat, 22 Aug 2026 07:48:42 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgT0-0000000ELh3-3wx9;
	Sat, 22 Aug 2026 07:48:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4937D11C816;
	Sat, 22 Aug 2026 09:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1787384910;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Odsb7mrDdpSm6YigiuUwk+GtdjNZDbTtQ5jOjfU5W1I=;
	b=eIsFXOOIVYKHSWd7LVpLwO78iE4CvSivRKndkdHlqQOqRHqT/Ei6qgBep1wMhfmssbLc7Z
	MWZPpNwm9nQPcwWswY4QS8E5efuToAKmOvMWwI6lhrySkVaR91jelJcV8MTdzAuOzDurtu
	ANxqguOGHEbNhNm0uPT2Uwg/Rssl3ofvL0zT7FM4iXd5ZCTi/78luzMtrw1YBzNwC+fDIT
	GLUOhUJJpau7Lj8/t+eve3E+pF17QTb93e4B9FYsz7svrwQbVstHp6Iu+fEt/j5fY+miQ4
	7o3Rkgy/tMR0Lg39dPatnvDYf6eAXQTYaMJv7StoNyXmo5sEeZIpBKYLDlK9GA==
From: Marek Vasut <marex@nabladev.com>
To: linux-usb@vger.kernel.org
Cc: fabrice.gasnier@foss.st.com,
	Pankaj Dev <pankaj.dev@st.com>,
	Rahul Kumar <rahul.kumar05@st.com>,
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
Subject: [PATCH v3 1/9] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO PHY
Date: Sat, 22 Aug 2026 09:46:34 +0200
Message-ID: <20260822074816.548662-2-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260822074816.548662-1-marex@nabladev.com>
References: <20260822074816.548662-1-marex@nabladev.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_004839_315513_57603D54 
X-CRM114-Status: GOOD (  14.42  )
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
ZmVyZW50IGNvbXBhdGlibGUgc3RyaW5nCnRvIGRpc2Nlcm4gdGhlbS4KClNpZ25lZC1vZmYtYnk6
IFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgpDby1kZXZlbG9wZWQtYnk6IFJhaHVsIEt1
bWFyIDxyYWh1bC5rdW1hcjA1QHN0LmNvbT4KU2lnbmVkLW9mZi1ieTogUmFodWwgS3VtYXIgPHJh
aHVsLmt1bWFyMDVAc3QuY29tPgpDby1kZXZlbG9wZWQtYnk6IEZhYnJpY2UgR2FzbmllciA8ZmFi
cmljZS5nYXNuaWVyQGZvc3Muc3QuY29tPgpTaWduZWQtb2ZmLWJ5OiBGYWJyaWNlIEdhc25pZXIg
PGZhYnJpY2UuZ2FzbmllckBmb3NzLnN0LmNvbT4KQ28tZGV2ZWxvcGVkLWJ5OiBDbMOpbWVudCBM
ZSBHb2ZmaWMgPGNsZW1lbnQubGVnb2ZmaWNAZm9zcy5zdC5jb20+ClNpZ25lZC1vZmYtYnk6IENs
w6ltZW50IExlIEdvZmZpYyA8Y2xlbWVudC5sZWdvZmZpY0Bmb3NzLnN0LmNvbT4KQ28tZGV2ZWxv
cGVkLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAbmFibGFkZXYuY29tPgpTaWduZWQtb2ZmLWJ5OiBN
YXJlayBWYXN1dCA8bWFyZXhAbmFibGFkZXYuY29tPgotLS0KQ2M6IEFsZXhhbmRyZSBUb3JndWUg
PGFsZXhhbmRyZS50b3JndWVAZm9zcy5zdC5jb20+CkNjOiBDaHJpc3RpYW4gQnJ1ZWwgPGNocmlz
dGlhbi5icnVlbEBmb3NzLnN0LmNvbT4KQ2M6IENvbm9yIERvb2xleSA8Y29ub3IrZHRAa2VybmVs
Lm9yZz4KQ2M6IEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNuaWVyQGZvc3Muc3QuY29tPgpD
YzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KQ2M6IEty
enlzenRvZiBLb3psb3dza2kgPGtyemsrZHRAa2VybmVsLm9yZz4KQ2M6IE1heGltZSBDb3F1ZWxp
biA8bWNvcXVlbGluLnN0bTMyQGdtYWlsLmNvbT4KQ2M6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFy
bXN0cm9uZ0BsaW5hcm8ub3JnPgpDYzogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+CkNj
OiBSYWh1bCBLdW1hciA8cmFodWwua3VtYXIwNUBzdC5jb20+CkNjOiBSb2IgSGVycmluZyA8cm9i
aEBrZXJuZWwub3JnPgpDYzogUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+CkNjOiBUaGlu
aCBOZ3V5ZW4gPFRoaW5oLk5ndXllbkBzeW5vcHN5cy5jb20+CkNjOiBWaW5vZCBLb3VsIDx2a291
bEBrZXJuZWwub3JnPgpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGtlcm5lbEBk
aC1lbGVjdHJvbmljcy5jb20KQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20K
Q2M6IGxpbnV4LXVzYkB2Z2VyLmtlcm5lbC5vcmcKLS0tClYyOiAtIEZpeCB1cCBTb2IvQ2RiIGxp
bmVzCiAgICAtIEZpeCB1cCBjb21wYXRpYmxlIHN0cmluZyBpbiBleGFtcGxlCiAgICAtIFVzZSBh
ZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKICAgIC0gRXhwYW5kIGRlc2NyaXB0aW9uOgogICAg
LSBVc2UgY2xvY2stY2VsbHMgPSA8MT4gdG8gZGlzY2VybiBPU0MgYW5kIGZ1dHVyZSBQTEwgY2xv
Y2sgZnJvbSB0aGUgUEhZClYzOiAtIE1vdmUgY2xvY2stY2VsbHMgbmV4dCB0byBQSFkgY2VsbHMK
ICAgIC0gRml4IHRoZSBiaW5kaW5ncwogICAgLSBGaXggdXAgU29iL0NkYiBsaW5lcyBmdXJ0aGVy
Ci0tLQogLi4uL2JpbmRpbmdzL3BoeS9zdCxzdG0zMi11c2IycGh5LnlhbWwgICAgICAgIHwgNjcg
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDY3IGluc2VydGlvbnMoKykKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0
LHN0bTMyLXVzYjJwaHkueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9zdCxzdG0zMi11c2IycGh5LnlhbWwKbmV3IGZpbGUgbW9kZSAx
MDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwMC4uY2M1MDQ0NzkwYmVlYQotLS0gL2Rldi9udWxsCisr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBo
eS55YW1sCkBAIC0wLDAgKzEsNjcgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwt
Mi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2Rl
dmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L3N0LHN0bTMyLXVzYjJwaHkueWFtbCMKKyRzY2hlbWE6
IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIworCit0aXRsZTog
U1RNaWNyb2VsZWN0cm9uaWNzIFNUTTMyIE1QVSBIaWdoLVNwZWVkIFVTQiBQSFkKKworZGVzY3Jp
cHRpb246CisgIFVTQjIgUEhZIGJsb2NrIGluIFNUTTMyIGlzIGF0dGFjaGVkIHRvIFVTQiAyLjAg
SG9zdCBjb250cm9sbGVyIGFuZAorICBVU0IgMi4wIHNpZGUgb2YgRFdDMyBEUkQgY29udHJvbGxl
ciwgYW5kIHByb3ZpZGVzIHRoZSBVU0IgTFMvRlMvSFMKKyAgY29ubmVjdGl2aXR5LiBCb3RoIFBI
WXMgYXJlIHRoZSBGRU1UTy1QSFksIGJ1dCB0aGVpciBjb25maWd1cmF0aW9uCisgIGJpdHMgaW4g
dGhlIHN5c3RlbSBjb250cm9sIHJlZ2lzdGVyIGFyZSBkaWZmZXJlbnQgZm9yIGVhY2ggdmFyaWFu
dC4KKworbWFpbnRhaW5lcnM6CisgIC0gRmFicmljZSBHYXNuaWVyIDxmYWJyaWNlLmdhc25pZXJA
Zm9zcy5zdC5jb20+CisgIC0gTWFyZWsgVmFzdXQgPG1hcmV4QG5hYmxhZGV2LmNvbT4KKyAgLSBQ
YW5rYWogRGV2IDxwYW5rYWouZGV2QHN0LmNvbT4KKworcHJvcGVydGllczoKKyAgY29tcGF0aWJs
ZToKKyAgICBlbnVtOgorICAgICAgLSBzdCxzdG0zMm1wMjUtdXNiMnBoeTEKKyAgICAgIC0gc3Qs
c3RtMzJtcDI1LXVzYjJwaHkyCisKKyAgIiNjbG9jay1jZWxscyI6CisgICAgY29uc3Q6IDEKKwor
ICAiI3BoeS1jZWxscyI6CisgICAgY29uc3Q6IDAKKworICByZWc6CisgICAgbWF4SXRlbXM6IDEK
KworICBjbG9ja3M6CisgICAgbWF4SXRlbXM6IDEKKworICByZXNldHM6CisgICAgbWF4SXRlbXM6
IDEKKworICB2ZGQzMy1zdXBwbHk6CisgICAgZGVzY3JpcHRpb246IFBoYW5kbGUgdG8gcmVndWxh
dG9yIHByb3ZpZGluZyAzVjMgcG93ZXIgc3VwcGx5IHRvIHRoZSBVU0IyIEhTIFBIWQorCityZXF1
aXJlZDoKKyAgLSBjb21wYXRpYmxlCisgIC0gIiNjbG9jay1jZWxscyIKKyAgLSAiI3BoeS1jZWxs
cyIKKyAgLSBjbG9ja3MKKyAgLSByZXNldHMKKyAgLSB2ZGQzMy1zdXBwbHkKKworYWRkaXRpb25h
bFByb3BlcnRpZXM6IGZhbHNlCisKK2V4YW1wbGVzOgorICAtIHwKKyAgICAjaW5jbHVkZSA8ZHQt
YmluZGluZ3MvY2xvY2svc3Qsc3RtMzJtcDI1LXJjYy5oPgorICAgICNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9yZXNldC9zdCxzdG0zMm1wMjUtcmNjLmg+CisKKyAgICB1c2ItcGh5QDI0MDAgeworICAg
ICAgICBjb21wYXRpYmxlID0gInN0LHN0bTMybXAyNS11c2IycGh5MSI7CisgICAgICAgIHJlZyA9
IDwweDI0MDAgMHgyND47CisgICAgICAgICNwaHktY2VsbHMgPSA8MD47CisgICAgICAgICNjbG9j
ay1jZWxscyA9IDwxPjsKKyAgICAgICAgY2xvY2tzID0gPCZyY2MgQ0tfS0VSX1VTQjJQSFkxPjsK
KyAgICAgICAgcmVzZXRzID0gPCZyY2MgVVNCMlBIWTFfUj47CisgICAgICAgIHZkZDMzLXN1cHBs
eSA9IDwmdmRkMzN1c2I+OworICAgIH07Ci0tIAoyLjUzLjAKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
