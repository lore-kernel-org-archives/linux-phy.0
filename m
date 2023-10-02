Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A19EDE784BA
	for <linux-phy@archiver.kernel.org>; Mon,  2 Oct 2023 19:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=43K+n6IxfzkBJwXS/qCjlSHt/v1L53NS4r2DPeHnvk4=; b=3Q2krwunOLdBO9
	ZhziLis8j2Rr4EG8Bhu7t9aUq8j1qi3TwXdWWhlQvR3lDlEOuKwUPolWDp1SNAtcA7vq3hO2grgm7
	liJoKxfcBV5DBePGGDtGh8cnppAkuw47lHnNFxkcxfhZMkbXxkbvkg32YGDbxX/5MYRkgQkqooCf/
	OdF45HuqkadZWCK7BRi3aVvzjfVmkw8jywFA6PcNOnZyYGuCgLmzswfcGsNSBQ35ASzNRhvLPVvQa
	PHwKyocHWb6Lc2NyWneDh9VRAbe/a1qd/anvPevzvD17gVVo6VoFRv9yKaHlOlrx5gmT/o8c8GpAx
	P5z1A6rzCt+tk7jwAV6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnOh0-00DIPd-0i;
	Mon, 02 Oct 2023 19:34:58 +0000
Received: from mx1.hosting.skole.hr ([161.53.165.185] helo=mx.skole.hr)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnOgw-00DIOd-26
	for linux-phy@lists.infradead.org;
	Mon, 02 Oct 2023 19:34:57 +0000
Received: from mx1.hosting.skole.hr (localhost.localdomain [127.0.0.1])
	by mx.skole.hr (mx.skole.hr) with ESMTP id 9289D83C68;
	Mon,  2 Oct 2023 21:34:46 +0200 (CEST)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Date: Mon, 02 Oct 2023 21:34:37 +0200
Subject: [PATCH v2] dt-bindings: phy: Convert PXA1928 USB/HSIC PHY to DT
 schema
MIME-Version: 1.0
Message-Id: <20231002-pxa1928-usb-yaml-v2-1-121a7e02d29f@skole.hr>
X-B4-Tracking: v=1; b=H4sIAEwbG2UC/32NQQ6CMBBFr0Jm7ZiZgqZ1xT0Mi4rFNiIlrTYQ0
 rtbOYDL95L//gbRBGciXKoNgkkuOj8VEIcKequnh0F3LwyCRM1EjPOiWQmJn3jDVb9GlKRO54a
 kEA1Dmc3BDG7Zk9eusHXx7cO6PyT+2T+xxMioalJa9tRTPbTx6UdztAG6nPMXgTPhlq8AAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2723;
 i=duje.mihanovic@skole.hr; h=from:subject:message-id;
 bh=OgvaUU8MJ1mJrse/GI+YQsWTLsXAVZ4nX34xt2is75o=;
 b=owEBbQKS/ZANAwAIAZoRnrBCLZbhAcsmYgBlGxtQAQwZCkgVwqJPXJ3lPoXZFQ3pVhOdoaHX4
 nrUOGrmN7yJAjMEAAEIAB0WIQRT351NnD/hEPs2LXiaEZ6wQi2W4QUCZRsbUAAKCRCaEZ6wQi2W
 4V1HD/90P71Wo7UVPPNCqWe+cw/z5EzghrOwhiefUL2IEbNn+kV4vtonywqNdCLIATP9zhKBcfK
 GBbeLXRxfo8lHp9QrAIGvv2dZH58NuwLApujmxX8TGaEv7XLanBsKHUf6sBE0bN2wxBldnuaP9R
 9JD71DT0rRZs7MnvS+qqMCDupSTBfFy7Nixgjb8cSkzpUSj4KZw32MWGv8asx5CJAvi3hbkMHeD
 h8Z5CimS5Obgfsdo4nN5HzqVUfihpHISwPJeAvO+ICMljGKOAXQMb4MrPh2092fKCRgqX3xfkS4
 O8tpOS/BwkwhbuSX1rn1di9uyw265e4y6xWuIGQztnHLcIH6hjkfcZUT2z9uXbLj2BlCm1qq9Fq
 Gv/n8q8bXihLjNwFhMaWNtEaAX49iLX2RcBXs409bUDLcTNk0/SFZ1oGy7qOZ4MnXwAz7L5xyxM
 mpOToQiHPeAzOXtDjB3ld9mt2HOCf3FHbiU5YkdvxgbXxrQHSDXP3DIWM1DoGx+fMbxzRoa+noT
 lxKeqgWi0YFysW0kxdRbm4psxAqmJseL+HaGYckCJedrhsyl9Zcyk8NxVSjwa4vv9xyO5JMFmQO
 5mKmWaXXnohrV3Qrd4YlYi5SHBXCMJWt+XcQxOaxPYLDrkPK3Pswjm2/yR1uOnaooTYxqTYQhc2
 bU2q2QbYhgJBYtg==
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=53DF9D4D9C3FE110FB362D789A119EB0422D96E1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_123454_867158_AF3348BE 
X-CRM114-Status: GOOD (  11.12  )
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

Q29udmVydCB0aGUgYmluZGluZyBmb3IgdGhlIE1hcnZlbGwgUFhBMTkyOCBVU0IgYW5kIEhTSUMg
UEhZcyBmcm9tIFRYVAp0byBEVCBzY2hlbWEuCgpTaWduZWQtb2ZmLWJ5OiBEdWplIE1paGFub3Zp
xIcgPGR1amUubWloYW5vdmljQHNrb2xlLmhyPgotLS0KQ2hhbmdlcyBpbiB2MjoKLSBBZGQgbXlz
ZWxmIGFzIG1haW50YWluZXIKLSBDb21iaW5lIEhTSUMgYW5kIFVTQiBiaW5kaW5ncyBpbnRvIG9u
ZQotIERyb3AgdW5uZWVkZWQgcXVvdGVzCi0gUmVtb3ZlIGV4YW1wbGUgYXMgaXQgY2FuJ3QgY29t
cGlsZSAocHJvYmFibHkgYmVjYXVzZSBvZiBjbG9jawogIHJlZmVyZW5jZSkKLSBMaW5rIHRvIHYx
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjMxMDAxLXB4YTE5MjgtdXNiLXlhbWwtdjEt
MS05MzA5YThjMGMwM2ZAc2tvbGUuaHIKLS0tCiAuLi4vYmluZGluZ3MvcGh5L21hcnZlbGwscHhh
MTkyOC11c2ItcGh5LnlhbWwgICAgICB8IDQxICsrKysrKysrKysrKysrKysrKysrKysKIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9weGExOTI4LXVzYi1waHkudHh0ICAgIHwgMTggLS0tLS0t
LS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21hcnZl
bGwscHhhMTkyOC11c2ItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L21hcnZlbGwscHhhMTkyOC11c2ItcGh5LnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi42MGNmM2ZhOGQzYmMKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21hcnZlbGwscHhhMTkyOC11c2ItcGh5
LnlhbWwKQEAgLTAsMCArMSw0MSBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCislWUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvbWFydmVsbCxweGExOTI4LXVzYi1waHkueWFtbCMKKyRz
Y2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIworCit0
aXRsZTogTWFydmVsbCBQWEExOTI4IFVTQi9IU0lDIFBIWQorCittYWludGFpbmVyczoKKyAgLSBE
dWplIE1paGFub3ZpxIcgPGR1amUubWloYW5vdmljQHNrb2xlLmhyPgorCitwcm9wZXJ0aWVzOgor
ICAkbm9kZW5hbWU6CisgICAgcGF0dGVybjogJ15waHlAW2EtZjAtOV0rJCcKKworICBjb21wYXRp
YmxlOgorICAgIG9uZU9mOgorICAgICAgLSBpdGVtczoKKyAgICAgICAgICBjb25zdDogbWFydmVs
bCxweGExOTI4LXVzYi1waHkKKyAgICAgIC0gaXRlbXM6CisgICAgICAgICAgY29uc3Q6IG1hcnZl
bGwscHhhMTkyOC1oc2ljLXBoeQorCisgIHJlZzoKKyAgICBtYXhJdGVtczogMQorCisgIGNsb2Nr
czoKKyAgICBtYXhJdGVtczogMQorCisgICcjcGh5LWNlbGxzJzoKKyAgICBjb25zdDogMAorCisg
IHJlc2V0czoKKyAgICBtYXhJdGVtczogMQorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisg
IC0gcmVnCisgIC0gY2xvY2tzCisgIC0gJyNwaHktY2VsbHMnCisKK2FkZGl0aW9uYWxQcm9wZXJ0
aWVzOiBmYWxzZQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9weGExOTI4LXVzYi1waHkudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9weGExOTI4LXVzYi1waHkudHh0CmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCBkYTk0NDI2YWE2OTQuLjAwMDAwMDAwMDAwMAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3B4YTE5MjgtdXNiLXBoeS50eHQKKysrIC9kZXYvbnVsbApAQCAtMSwx
OCArMCwwIEBACi0qIE1hcnZlbGwgUFhBMTkyOCBVU0IgYW5kIEhTSUMgUEhZcwotCi1SZXF1aXJl
ZCBwcm9wZXJ0aWVzOgotLSBjb21wYXRpYmxlOiAibWFydmVsbCxweGExOTI4LXVzYi1waHkiIG9y
ICJtYXJ2ZWxsLHB4YTE5MjgtaHNpYy1waHkiCi0tIHJlZzogYmFzZSBhZGRyZXNzIGFuZCBsZW5n
dGggb2YgdGhlIHJlZ2lzdGVycwotLSBjbG9ja3MgLSBBIHNpbmdsZSBjbG9jay4gRnJvbSBjb21t
b24gY2xvY2sgYmluZGluZy4KLS0gI3BoeXMtY2VsbHM6IHNob3VsZCBiZSAwLiBGcm9tIGNvbW1v
biBwaHkgYmluZGluZy4KLS0gcmVzZXRzOiByZWZlcmVuY2UgdG8gdGhlIHJlc2V0IGNvbnRyb2xs
ZXIKLQotRXhhbXBsZToKLQotCXVzYnBoeTogcGh5QDcwMDAgewotCQljb21wYXRpYmxlID0gIm1h
cnZlbGwscHhhMTkyOC11c2ItcGh5IjsKLQkJcmVnID0gPDB4NzAwMCAweGUwPjsKLQkJY2xvY2tz
ID0gPCZhcG11X2Nsb2NrcyBQWEExOTI4X0NMS19VU0I+OwotCQkjcGh5LWNlbGxzID0gPDA+Owot
CX07Ci0KCi0tLQpiYXNlLWNvbW1pdDogNjQ2NWUyNjBmNDg3OTA4MDdlZWYwNmI1ODNiMzhjYTk3
ODliNjA3MgpjaGFuZ2UtaWQ6IDIwMjMxMDAxLXB4YTE5MjgtdXNiLXlhbWwtODA5NTY0MDgyMjQx
CgpCZXN0IHJlZ2FyZHMsCi0tIApEdWplIE1paGFub3ZpxIcgPGR1amUubWloYW5vdmljQHNrb2xl
LmhyPgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
