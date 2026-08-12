Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B40DEC5CFC1
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 01:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMfk9OxKW/h9M4iZ6jURBXEBM11cow454fWqEf9JJOc=; b=Ty/5fAy3kdmaaV
	AmCyywfcpOS0h33NJF1Vh1zaZ+Ap6BMsfLQGqtNs5MIXI2prykoqRZn/l3PnURW/pCOwN4D++RwPb
	B4oE+m7xdQky6RBD6iFYP+km+gawxkpKhRpDBYpvyH+aCdpo7y1RRJUGvBgkJyrm6L8VfWdp6ZPGn
	+ilnTHI8TWMletBg5Rkw8U/5QXh0eV0fhBWZoF+4yiVgUKfaSj8LoztbqErxWRpsa1Y9opRVSuDOr
	0tyE0ilJ/BSX1smkdR1isad5/QVAlwRYTQdj/04W3lvQYqYaVlWtgjL29aqHcdcFIWxUmyfhPQH76
	aRjNxGPwe76lQ9gJ30OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxMp-0000000FAjO-1oOd;
	Wed, 12 Aug 2026 01:02:51 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxMf-0000000FAgj-0LDz;
	Wed, 12 Aug 2026 01:02:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B341D11A0F7;
	Wed, 12 Aug 2026 03:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1786496554;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=abWDjsJ7MsHebe5ntsIcqA1aci2Halsj83iswXsJtc4=;
	b=H1EsvCaaoRHgFznR+XCmsmsslT45Kre7HxxJyi6Y8Oq/4ZSuY4dgAKmCk0hoXaXQUJLS8X
	YYoB0bsgP1F8zuELGXr4LjXk9Rx40DYwGAN+GgLT0J4DmWFECTiOsuMIyTiM2mq5shYrm0
	zLNuzMRJ4ZlH8BD9LTm3G7JGPXyqrkMArBh/d6O1G9r4MxzFOmEon0As/sdOh41Xm0DzXg
	TELgugOCTWQQxpx2mLdCPCihv2CkePJ0lci/wEFy/CeMKJBMhvRBAdzdL+9Pq0n37W2LtG
	KXYTL/s4+NwLqyLj806PXfW1YvuaABIMDgaex8n/Bf9CzYvy1c1Fk/r3YVVMMQ==
From: Marek Vasut <marex@nabladev.com>
To: linux-usb@vger.kernel.org
Cc: Pankaj Dev <pankaj.dev@st.com>,
	=?UTF-8?q?Cl=C3=A9ment=20Le=20Goffic?= <clement.legoffic@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Marek Vasut <marex@nabladev.com>,
	Rahul Kumar <rahul.kumar05@st.com>,
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
Subject: [PATCH 1/8] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO PHY
Date: Wed, 12 Aug 2026 02:55:41 +0200
Message-ID: <20260812010157.1772849-2-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260812010157.1772849-1-marex@nabladev.com>
References: <20260812010157.1772849-1-marex@nabladev.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_180241_419202_020F76EF 
X-CRM114-Status: GOOD (  13.42  )
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
IENsw6ltZW50IExlIEdvZmZpYyA8Y2xlbWVudC5sZWdvZmZpY0Bmb3NzLnN0LmNvbT4KU2lnbmVk
LW9mZi1ieTogRmFicmljZSBHYXNuaWVyIDxmYWJyaWNlLmdhc25pZXJAZm9zcy5zdC5jb20+ClNp
Z25lZC1vZmYtYnk6IE1hcmVrIFZhc3V0IDxtYXJleEBuYWJsYWRldi5jb20+ClNpZ25lZC1vZmYt
Ynk6IFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgpTaWduZWQtb2ZmLWJ5OiBSYWh1bCBL
dW1hciA8cmFodWwua3VtYXIwNUBzdC5jb20+Ci0tLQpDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxl
eGFuZHJlLnRvcmd1ZUBmb3NzLnN0LmNvbT4KQ2M6IENocmlzdGlhbiBCcnVlbCA8Y2hyaXN0aWFu
LmJydWVsQGZvc3Muc3QuY29tPgpDYzogQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3Jn
PgpDYzogRmFicmljZSBHYXNuaWVyIDxmYWJyaWNlLmdhc25pZXJAZm9zcy5zdC5jb20+CkNjOiBH
cmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpDYzogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJuZWwub3JnPgpDYzogTWF4aW1lIENvcXVlbGluIDxt
Y29xdWVsaW4uc3RtMzJAZ21haWwuY29tPgpDYzogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ry
b25nQGxpbmFyby5vcmc+CkNjOiBQYW5rYWogRGV2IDxwYW5rYWouZGV2QHN0LmNvbT4KQ2M6IFJh
aHVsIEt1bWFyIDxyYWh1bC5rdW1hcjA1QHN0LmNvbT4KQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtl
cm5lbC5vcmc+CkNjOiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KQ2M6IFRoaW5oIE5n
dXllbiA8VGhpbmguTmd1eWVuQHN5bm9wc3lzLmNvbT4KQ2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtl
cm5lbC5vcmc+CkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwpDYzoga2VybmVsQGRoLWVs
ZWN0cm9uaWNzLmNvbQpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNj
OiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpDYzogbGludXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQpDYzog
bGludXgtdXNiQHZnZXIua2VybmVsLm9yZwotLS0KIC4uLi9iaW5kaW5ncy9waHkvc3Qsc3RtMzIt
dXNiMnBoeS55YW1sICAgICAgICB8IDcyICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCA3MiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zdCxzdG0zMi11c2IycGh5LnlhbWwKCmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0LHN0bTMyLXVzYjJwaHku
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNi
MnBoeS55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMDAuLmNhOWZj
M2I4NzM4M2MKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3N0LHN0bTMyLXVzYjJwaHkueWFtbApAQCAtMCwwICsxLDcyIEBACisjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1M
IDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9zdCxzdG0z
Mi11c2IycGh5LnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hl
bWFzL2NvcmUueWFtbCMKKwordGl0bGU6IFNUTWljcm9lbGVjdHJvbmljcyBTVE0zMiBNUFUgSGln
aC1TcGVlZCBVU0IgUEhZCisKK2Rlc2NyaXB0aW9uOgorICBVU0IyIFBIWSBibG9jayBpbiBTVE0z
MiBpcyBhdHRhY2hlZCB0byBVU0IgMi4wIEhvc3QgY29udHJvbGxlciBhbmQKKyAgVVNCIDIuMCBz
aWRlIG9mIERXQzMgRFJEIGNvbnRyb2xsZXIsIGFuZCBwcm92aWRlcyB0aGUgVVNCIExTL0ZTL0hT
CisgIGNvbm5lY3Rpdml0eS4KKworbWFpbnRhaW5lcnM6CisgIC0gRmFicmljZSBHYXNuaWVyIDxm
YWJyaWNlLmdhc25pZXJAZm9zcy5zdC5jb20+CisgIC0gTWFyZWsgVmFzdXQgPG1hcmV4QG5hYmxh
ZGV2LmNvbT4KKyAgLSBQYW5rYWogRGV2IDxwYW5rYWouZGV2QHN0LmNvbT4KKworcHJvcGVydGll
czoKKyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgorICAgICAgLSBzdCxzdG0zMm1wMjUtdXNiMnBo
eTEKKyAgICAgIC0gc3Qsc3RtMzJtcDI1LXVzYjJwaHkyCisKKyAgIiNwaHktY2VsbHMiOgorICAg
IGNvbnN0OiAwCisKKyAgY2xvY2tzOgorICAgIG1heEl0ZW1zOiAxCisKKyAgcmVzZXRzOgorICAg
IG1heEl0ZW1zOiAxCisKKyAgdmRkMzMtc3VwcGx5OgorICAgIGRlc2NyaXB0aW9uOiBQaGFuZGxl
IHRvIHJlZ3VsYXRvciBwcm92aWRpbmcgM1YzIHBvd2VyIHN1cHBseSB0byB0aGUgVVNCMiBIUyBQ
SFkKKworICBzdCxzeXNjZmc6CisgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5p
dGlvbnMvcGhhbmRsZS1hcnJheQorICAgIGRlc2NyaXB0aW9uOiBQaGFuZGxlIHRvIHN5c3RlbSBj
b25maWd1cmF0aW9uIGNvbnRyb2xsZXIuCisgICAgaXRlbXM6CisgICAgICAtIGl0ZW1zOgorICAg
ICAgICAgIC0gZGVzY3JpcHRpb246IHBoYW5kbGUgdG8gc3lzY2ZnCisgICAgICAgICAgLSBkZXNj
cmlwdGlvbjogVVNCMlBIWSBjb250cm9sIG9mZnNldCB3aXRoaW4gc3lzY2ZnCisKKyAgIiNjbG9j
ay1jZWxscyI6CisgICAgY29uc3Q6IDAKKworcmVxdWlyZWQ6CisgIC0gY29tcGF0aWJsZQorICAt
ICIjY2xvY2stY2VsbHMiCisgIC0gIiNwaHktY2VsbHMiCisgIC0gY2xvY2tzCisgIC0gcmVzZXRz
CisgIC0gc3Qsc3lzY2ZnCisgIC0gdmRkMzMtc3VwcGx5CisKK3VuZXZhbHVhdGVkUHJvcGVydGll
czogZmFsc2UKKworZXhhbXBsZXM6CisgIC0gfAorICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9j
bG9jay9zdCxzdG0zMm1wMjUtcmNjLmg+CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0
L3N0LHN0bTMybXAyNS1yY2MuaD4KKworICAgIHVzYjJfcGh5MjogdXNiLXBoeSB7CisgICAgICAg
IGNvbXBhdGlibGUgPSAic3Qsc3RtMzJtcDI1LXVzYjJwaHkiOworICAgICAgICAjY2xvY2stY2Vs
bHMgPSA8MD47CisgICAgICAgICNwaHktY2VsbHMgPSA8MD47CisgICAgICAgIGNsb2NrcyA9IDwm
cmNjIENLX0tFUl9VU0IyUEhZMj47CisgICAgICAgIHJlc2V0cyA9IDwmcmNjIFVTQjJQSFkyX1I+
OworICAgICAgICBzdCxzeXNjZmcgPSA8JnN5c2NmZyAweDI4MDA+OworICAgICAgICB2ZGQzMy1z
dXBwbHkgPSA8JnZkZDMzdXNiPjsKKyAgICB9OwotLSAKMi41My4wCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
