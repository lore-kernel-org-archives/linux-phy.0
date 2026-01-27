Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4CB5D2FEC0
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 17:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXKFhBAEFkgpq9lseI7pX8V+gh4Af7TiHv2NuBvqk50=; b=ip6N28wisr/YCo
	aL0ywQ8MqsVkQ14cyG1dryM7sXyVQ11DcAYfN+L2MA1JIXles/P4VXDUGrFVuP2CRB4caakXK2lCl
	2eOVpV/k7pzkwKtMEvSkguPoorgqhDUdZ/PU4SY9hKNbI7aL/hYGg3ofnxHaJyzAIAaWqIVwke2i3
	tWryS5LG/40xxfVG7VO2poKZp5jKlAS6UgdeDUBAHdrbP2JR/4wjVaMukbAhV1d7kBHiRMosP7bdl
	TlqUnXbI76EisDJ8/vi96RsZj39WR5wC+kbrVv4PQB/0TfvS2UlwqMV+6MaGVi/kOWpJqAmczjxKQ
	CJEz+qd7vwVzdBNOD70Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZW-0000000Ei00-0vN8;
	Tue, 27 Jan 2026 17:09:46 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZS-0000000EhyK-2bE7
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 17:09:44 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 48E1BC211CA;
	Tue, 27 Jan 2026 17:09:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2655B606F5;
	Tue, 27 Jan 2026 17:09:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7AE6D119A8699;
	Tue, 27 Jan 2026 18:09:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769533780; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=w1odAlmEkx+GduKelnjex71vq0A+kOfMC2EKAhxZ2Dk=;
	b=dhbVaD2N4fMAcH5gjf2sNIhFQahpWNk3cJY1d11xExAXjrKgUTUF72o6LKv2b13D27/92I
	MGRqnmEc/xAgEvvbjchv38L/0h2n0l7udPRKWQS+W//Bej0OJ+I7uN66kihlU4uvILRAjE
	ADCAstHbQA7jdTI0R6rcjx+X0ntFmsP5WD0vR3TL2Te173+0uqn7GgicKxx+h3X33JVUu9
	j+4IctmT1WpssDKErjCCqHnWVPUUbiBnDth2bgQU9K4lkB6OVWsYzdQ4WYTh0T+B0kBFX3
	HuQoBP9J9ablpodhsYGSQ/eT2IkJcmAkZkrAGAetH4tmCYgA6GrjmYXeat1byQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 27 Jan 2026 18:09:30 +0100
Subject: [PATCH v6 2/8] phy: sort Kconfig and Makefile
MIME-Version: 1.0
Message-Id: <20260127-macb-phy-v6-2-cdd840588188@bootlin.com>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
In-Reply-To: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_090942_797405_FF957794 
X-CRM114-Status: GOOD (  11.86  )
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

TmVpdGhlciBLY29uZmlnIG5vciBNYWtlZmlsZSBhcmUgc29ydGVkOyByZW9yZGVyIHRoZW0uCgok
IGRpZmYgLVUxMDAgPChncmVwIF5jb25maWcgZHJpdmVycy9waHkvS2NvbmZpZykgXAogICAgICAg
ICAgICAgPChncmVwIF5jb25maWcgZHJpdmVycy9waHkvS2NvbmZpZyB8IHNvcnQpCgokIGRpZmYg
LVUxMDAgPChncmVwIF5vYmotXFwkIGRyaXZlcnMvcGh5L01ha2VmaWxlKSBcCiAgICAgICAgICAg
ICA8KGdyZXAgXm9iai1cXCQgZHJpdmVycy9waHkvTWFrZWZpbGUgfCBzb3J0KQoKU2lnbmVkLW9m
Zi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KLS0tCiBkcml2ZXJz
L3BoeS9LY29uZmlnICB8IDYyICsrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvcGh5L01ha2VmaWxlIHwgIDYgKystLS0KIDIgZmlsZXMg
Y2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L0tjb25maWcKaW5kZXggNjc4ZGQwNDUy
ZjBhLi40ZjFiMWQ3ZjVkMjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L0tjb25maWcKKysrIGIv
ZHJpdmVycy9waHkvS2NvbmZpZwpAQCAtMjUsNiArMjUsMjYgQEAgY29uZmlnIEdFTkVSSUNfUEhZ
X01JUElfRFBIWQogCSAgUHJvdmlkZXMgYSBudW1iZXIgb2YgaGVscGVycyBhIGNvcmUgZnVuY3Rp
b25zIGZvciBNSVBJIEQtUEhZCiAJICBkcml2ZXJzIHRvIHVzLgogCitjb25maWcgUEhZX0FJUk9I
QV9QQ0lFCisJdHJpc3RhdGUgIkFpcm9oYSBQQ0llLVBIWSBEcml2ZXIiCisJZGVwZW5kcyBvbiBB
UkNIX0FJUk9IQSB8fCBDT01QSUxFX1RFU1QKKwlkZXBlbmRzIG9uIE9GCisJc2VsZWN0IEdFTkVS
SUNfUEhZCisJaGVscAorCSAgU2F5IFkgaGVyZSB0byBhZGQgc3VwcG9ydCBmb3IgQWlyb2hhIFBD
SWUgUEhZIGRyaXZlci4KKwkgIFRoaXMgZHJpdmVyIGNyZWF0ZSB0aGUgYmFzaWMgUEhZIGluc3Rh
bmNlIGFuZCBwcm92aWRlcyBpbml0aWFsaXplCisJICBjYWxsYmFjayBmb3IgUENJZSBHRU4zIHBv
cnQuCisKK2NvbmZpZyBQSFlfQ0FOX1RSQU5TQ0VJVkVSCisJdHJpc3RhdGUgIkNBTiB0cmFuc2Nl
aXZlciBQSFkiCisJc2VsZWN0IEdFTkVSSUNfUEhZCisJc2VsZWN0IE1VTFRJUExFWEVSCisJaGVs
cAorCSAgVGhpcyBvcHRpb24gZW5hYmxlcyBzdXBwb3J0IGZvciBDQU4gdHJhbnNjZWl2ZXJzIGFz
IGEgUEhZLiBUaGlzCisJICBkcml2ZXIgcHJvdmlkZXMgZnVuY3Rpb24gZm9yIHB1dHRpbmcgdGhl
IHRyYW5zY2VpdmVycyBpbiB2YXJpb3VzCisJICBmdW5jdGlvbmFsIG1vZGVzIHVzaW5nIGdwaW9z
IGFuZCBzZXRzIHRoZSBhdHRyaWJ1dGUgbWF4IGxpbmsKKwkgIHJhdGUsIGZvciBDQU4gZHJpdmVy
cy4KKwogY29uZmlnIFBIWV9MUEMxOFhYX1VTQl9PVEcKIAl0cmlzdGF0ZSAiTlhQIExQQzE4eHgv
NDN4eCBTb0MgVVNCIE9URyBQSFkgZHJpdmVyIgogCWRlcGVuZHMgb24gT0YgJiYgKEFSQ0hfTFBD
MThYWCB8fCBDT01QSUxFX1RFU1QpCkBAIC0zNiw2ICs1NiwxNyBAQCBjb25maWcgUEhZX0xQQzE4
WFhfVVNCX09URwogCSAgVGhpcyBkcml2ZXIgaXMgbmVlZCBmb3IgVVNCMCBzdXBwb3J0IG9uIExQ
QzE4eHgvNDN4eCBhbmQgdGFrZXMKIAkgIGNhcmUgb2YgZW5hYmxpbmcgYW5kIGNsb2NrIHNldHVw
LgogCitjb25maWcgUEhZX05YUF9QVE4zMjIyCisJdHJpc3RhdGUgIk5YUCBQVE4zMjIyIDEtcG9y
dCBlVVNCMiB0byBVU0IyIHJlZHJpdmVyIgorCWRlcGVuZHMgb24gSTJDCisJZGVwZW5kcyBvbiBP
RgorCXNlbGVjdCBHRU5FUklDX1BIWQorCWhlbHAKKwkgIEVuYWJsZSB0aGlzIHRvIHN1cHBvcnQg
TlhQIFBUTjMyMjIgMS1wb3J0IGVVU0IyIHRvIFVTQjIgUmVkcml2ZXIuCisJICBUaGlzIHJlZHJp
dmVyIHBlcmZvcm1zIHRyYW5zbGF0aW9uIGJldHdlZW4gZVVTQjIgYW5kIFVTQjIgc2lnbmFsbGlu
ZworCSAgc2NoZW1lcy4gSXQgc3VwcG9ydHMgYWxsIHRocmVlIFVTQiAyLjAgZGF0YSByYXRlczog
TG93IFNwZWVkLCBGdWxsCisJICBTcGVlZCBhbmQgSGlnaCBTcGVlZC4KKwogY29uZmlnIFBIWV9Q
SVNUQUNISU9fVVNCCiAJdHJpc3RhdGUgIklNRyBQaXN0YWNoaW8gVVNCMi4wIFBIWSBkcml2ZXIi
CiAJZGVwZW5kcyBvbiBNSVBTIHx8IENPTVBJTEVfVEVTVApAQCAtNzAsMzcgKzEwMSw2IEBAIGNv
bmZpZyBVU0JfTEdNX1BIWQogCSAgaW50ZXJmYWNlIHRvIGludGVyYWN0IHdpdGggVVNCIEdFTi1J
SSBhbmQgVVNCIDMueCBQSFkgdGhhdCBpcyBwYXJ0CiAJICBvZiB0aGUgSW50ZWwgbmV0d29yayBT
T0MuCiAKLWNvbmZpZyBQSFlfQ0FOX1RSQU5TQ0VJVkVSCi0JdHJpc3RhdGUgIkNBTiB0cmFuc2Nl
aXZlciBQSFkiCi0Jc2VsZWN0IEdFTkVSSUNfUEhZCi0Jc2VsZWN0IE1VTFRJUExFWEVSCi0JaGVs
cAotCSAgVGhpcyBvcHRpb24gZW5hYmxlcyBzdXBwb3J0IGZvciBDQU4gdHJhbnNjZWl2ZXJzIGFz
IGEgUEhZLiBUaGlzCi0JICBkcml2ZXIgcHJvdmlkZXMgZnVuY3Rpb24gZm9yIHB1dHRpbmcgdGhl
IHRyYW5zY2VpdmVycyBpbiB2YXJpb3VzCi0JICBmdW5jdGlvbmFsIG1vZGVzIHVzaW5nIGdwaW9z
IGFuZCBzZXRzIHRoZSBhdHRyaWJ1dGUgbWF4IGxpbmsKLQkgIHJhdGUsIGZvciBDQU4gZHJpdmVy
cy4KLQotY29uZmlnIFBIWV9BSVJPSEFfUENJRQotCXRyaXN0YXRlICJBaXJvaGEgUENJZS1QSFkg
RHJpdmVyIgotCWRlcGVuZHMgb24gQVJDSF9BSVJPSEEgfHwgQ09NUElMRV9URVNUCi0JZGVwZW5k
cyBvbiBPRgotCXNlbGVjdCBHRU5FUklDX1BIWQotCWhlbHAKLQkgIFNheSBZIGhlcmUgdG8gYWRk
IHN1cHBvcnQgZm9yIEFpcm9oYSBQQ0llIFBIWSBkcml2ZXIuCi0JICBUaGlzIGRyaXZlciBjcmVh
dGUgdGhlIGJhc2ljIFBIWSBpbnN0YW5jZSBhbmQgcHJvdmlkZXMgaW5pdGlhbGl6ZQotCSAgY2Fs
bGJhY2sgZm9yIFBDSWUgR0VOMyBwb3J0LgotCi1jb25maWcgUEhZX05YUF9QVE4zMjIyCi0JdHJp
c3RhdGUgIk5YUCBQVE4zMjIyIDEtcG9ydCBlVVNCMiB0byBVU0IyIHJlZHJpdmVyIgotCWRlcGVu
ZHMgb24gSTJDCi0JZGVwZW5kcyBvbiBPRgotCXNlbGVjdCBHRU5FUklDX1BIWQotCWhlbHAKLQkg
IEVuYWJsZSB0aGlzIHRvIHN1cHBvcnQgTlhQIFBUTjMyMjIgMS1wb3J0IGVVU0IyIHRvIFVTQjIg
UmVkcml2ZXIuCi0JICBUaGlzIHJlZHJpdmVyIHBlcmZvcm1zIHRyYW5zbGF0aW9uIGJldHdlZW4g
ZVVTQjIgYW5kIFVTQjIgc2lnbmFsbGluZwotCSAgc2NoZW1lcy4gSXQgc3VwcG9ydHMgYWxsIHRo
cmVlIFVTQiAyLjAgZGF0YSByYXRlczogTG93IFNwZWVkLCBGdWxsCi0JICBTcGVlZCBhbmQgSGln
aCBTcGVlZC4KLQogc291cmNlICJkcml2ZXJzL3BoeS9hbGx3aW5uZXIvS2NvbmZpZyIKIHNvdXJj
ZSAiZHJpdmVycy9waHkvYW1sb2dpYy9LY29uZmlnIgogc291cmNlICJkcml2ZXJzL3BoeS9icm9h
ZGNvbS9LY29uZmlnIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvTWFrZWZpbGUgYi9kcml2ZXJz
L3BoeS9NYWtlZmlsZQppbmRleCBiZmIyN2ZiNWE0OTQuLjk5NDNkNzQyNTcxZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9waHkvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9waHkvTWFrZWZpbGUKQEAgLTUs
MTQgKzUsMTQgQEAKIAogb2JqLSQoQ09ORklHX0dFTkVSSUNfUEhZKQkJKz0gcGh5LWNvcmUubwog
b2JqLSQoQ09ORklHX0dFTkVSSUNfUEhZX01JUElfRFBIWSkJKz0gcGh5LWNvcmUtbWlwaS1kcGh5
Lm8KK29iai0kKENPTkZJR19QSFlfQUlST0hBX1BDSUUpCQkrPSBwaHktYWlyb2hhLXBjaWUubwog
b2JqLSQoQ09ORklHX1BIWV9DQU5fVFJBTlNDRUlWRVIpCSs9IHBoeS1jYW4tdHJhbnNjZWl2ZXIu
bwogb2JqLSQoQ09ORklHX1BIWV9MUEMxOFhYX1VTQl9PVEcpCSs9IHBoeS1scGMxOHh4LXVzYi1v
dGcubwotb2JqLSQoQ09ORklHX1BIWV9YR0VORSkJCQkrPSBwaHkteGdlbmUubworb2JqLSQoQ09O
RklHX1BIWV9OWFBfUFROMzIyMikJCSs9IHBoeS1ueHAtcHRuMzIyMi5vCiBvYmotJChDT05GSUdf
UEhZX1BJU1RBQ0hJT19VU0IpCQkrPSBwaHktcGlzdGFjaGlvLXVzYi5vCiBvYmotJChDT05GSUdf
UEhZX1NOUFNfRVVTQjIpCQkrPSBwaHktc25wcy1ldXNiMi5vCitvYmotJChDT05GSUdfUEhZX1hH
RU5FKQkJCSs9IHBoeS14Z2VuZS5vCiBvYmotJChDT05GSUdfVVNCX0xHTV9QSFkpCQkrPSBwaHkt
bGdtLXVzYi5vCi1vYmotJChDT05GSUdfUEhZX0FJUk9IQV9QQ0lFKQkJKz0gcGh5LWFpcm9oYS1w
Y2llLm8KLW9iai0kKENPTkZJR19QSFlfTlhQX1BUTjMyMjIpCQkrPSBwaHktbnhwLXB0bjMyMjIu
bwogb2JqLXkJCQkJCSs9IGFsbHdpbm5lci8JXAogCQkJCQkgICBhbWxvZ2ljLwlcCiAJCQkJCSAg
IGJyb2FkY29tLwlcCgotLSAKMi41Mi4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
