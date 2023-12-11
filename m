Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CECEC10F05
	for <linux-phy@archiver.kernel.org>; Mon, 11 Dec 2023 17:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qCeDiGrl1LAWOvRPa1Ql9I3apNjgIo4ySiyavDbW1o=; b=B4o3GMRQqOlHoQ
	GxfVKRv82deVict1e6Zy/Z8VnuLjh/tXmOnCqpgFevaYg1YNV2+z1MLxUA7X6eNDShX2uiU6VQOLq
	egyDtVuZVtRc9reRH5/d4DZTSyZIEarSI58MNt8FHPHZlyjt0x/JOFHJP4w5KZZylY6/LOwIP7x2c
	mGlSF8sAYvEsGjEvhw8r8w0fZv4e+YyVxgMuRM4uDNG21KrZ77W6igJW3Nx8mFwvWY/OLQ6855WUp
	i7WRvDxcQfmpETzzur41x8Tb1lghl9P/tgT8wz1LdoaVkfnM9hNwdBWOnoWZQ/v8acgxTTCmC3+94
	5Z8b6QEouXitiLkp/UOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCkRO-006XiV-1C;
	Mon, 11 Dec 2023 17:51:38 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCkRK-006Xf3-2o
	for linux-phy@lists.infradead.org;
	Mon, 11 Dec 2023 17:51:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 75BA9B80F9D
	for <linux-phy@lists.infradead.org>; Mon, 11 Dec 2023 17:51:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32D10C433BC
	for <linux-phy@lists.infradead.org>; Mon, 11 Dec 2023 17:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702317092;
	bh=KHMh/NBx+V9FvchM6XxlPhtECkX5wYvdlSDH+eZVU08=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hEzttKnDkrXNAEagjD5WXl80DgU5a9fgE8TAygVuTVZ3vhHzBPcwXNEfM550M0wtL
	 lARFMjm8xVChvr0Bq/aOfG971STwxzTwnujmWFxFyl01DpjCP9LJLK2CyaeJXLQViQ
	 shGdLcnNkbbmSRD/tRn00VdTBqWC+F3xhOzXatbO4caE4XmGSbsKm5PmlNO5vwM0h1
	 kk83EiIxvziQqm3Mj0h3Dh6urtYkMnrpLQzt3RACPeV/n139Vytwn+aOWquOMOycnI
	 EAs33MlTE+6wZ83GmfOkZB44PzyhPExzaHr4RiunGQVti5dMMTMnC9I3GMfacpR/dc
	 bvIGM4XuB+RSA==
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50bef9b7a67so5393577e87.1
        for <linux-phy@lists.infradead.org>; Mon, 11 Dec 2023 09:51:32 -0800 (PST)
X-Gm-Message-State: AOJu0Yz3qsIQ32l4Py2Go7SSbAmb+018lhndpGEO1azoOeL42Sr+V/PK
	YgtmKZ5ADsYrQMTCxK9bo1LiDJvPzU/nU1RTBw==
X-Google-Smtp-Source: AGHT+IHiOu93WfH8l01zI34KfHkSlSHTJ1TyGTYqEU9hCnxbcVeLy8H3RzurBBb95xj/AfU4VIRFAO3HNR8zgtbLUTM=
X-Received: by 2002:ac2:4a91:0:b0:50c:11a2:ff38 with SMTP id
 l17-20020ac24a91000000b0050c11a2ff38mr1874745lfp.133.1702317090407; Mon, 11
 Dec 2023 09:51:30 -0800 (PST)
MIME-Version: 1.0
References: <20231201105207.11786-1-tychang@realtek.com> <20231201105207.11786-3-tychang@realtek.com>
In-Reply-To: <20231201105207.11786-3-tychang@realtek.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 11 Dec 2023 11:51:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLg7qRgk_P1FTMVeC3Q-CJHx6WXH4hwnoz_Z2LVO10gTA@mail.gmail.com>
Message-ID: <CAL_JsqLg7qRgk_P1FTMVeC3Q-CJHx6WXH4hwnoz_Z2LVO10gTA@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: realtek: pcie: Add PCIe PHY support for Realtek
 DHC RTD SoCs
To: Tzuyi Chang <tychang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Stanley Chang <stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_095135_197546_D289F317 
X-CRM114-Status: GOOD (  17.67  )
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

T24gRnJpLCBEZWMgMSwgMjAyMyBhdCA0OjUy4oCvQU0gVHp1eWkgQ2hhbmcgPHR5Y2hhbmdAcmVh
bHRlay5jb20+IHdyb3RlOgo+Cj4gSW1wbGVtZW50IHRoZSBwaHkgZHJpdmVyIHRvIHN1cHBvcnQg
UENJZSBQSFkgZm9yIFJlYWx0ZWsgREhDIChEaWdpdGFsIEhvbWUKPiBDZW50ZXIpIFJURCBTb0Nz
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogVHp1eWkgQ2hhbmcgPHR5Y2hhbmdAcmVhbHRlay5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvcGh5L3JlYWx0ZWsvS2NvbmZpZyAgICAgICAgfCAgIDggKwo+ICBkcml2
ZXJzL3BoeS9yZWFsdGVrL01ha2VmaWxlICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9waHkvcmVh
bHRlay9waHktcnRrLXBjaWUuYyB8IDczOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
ICAzIGZpbGVzIGNoYW5nZWQsIDc0NyBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstcGNpZS5jCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcmVhbHRlay9LY29uZmlnIGIvZHJpdmVycy9waHkvcmVhbHRlay9LY29uZmlnCj4g
aW5kZXggNzVhYzdlN2MzMWFlLi4xMWM1MWYzNzE0ZjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
aHkvcmVhbHRlay9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9waHkvcmVhbHRlay9LY29uZmlnCj4g
QEAgLTI5LDQgKzI5LDEyIEBAIGNvbmZpZyBQSFlfUlRLX1JURF9VU0IzUEhZCj4gICAgICAgICAg
IERXQzMgVVNCIElQLiBUaGlzIGRyaXZlciB3aWxsIGRvIHRoZSBQSFkgaW5pdGlhbGl6YXRpb24K
PiAgICAgICAgICAgb2YgdGhlIHBhcmFtZXRlcnMuCj4KPiArY29uZmlnIFBIWV9SVERfUENJRQo+
ICsgICAgICAgdHJpc3RhdGUgIlJlYWx0ZWsgUlREIFBDSWUgUEhZIGRyaXZlciIKPiArICAgICAg
IGRlcGVuZHMgb24gT0YKPiArICAgICAgIHNlbGVjdCBHRU5FUklDX1BIWQo+ICsgICAgICAgaGVs
cAo+ICsgICAgICAgICBFbmFibGUgdGhpcyB0byBzdXBwb3J0IHRoZSBQQ0llIFBIWSBvbiBSZWFs
dGVrIERIQyAoZGlnaXRhbCBob21lIGNlbnRlcikKPiArICAgICAgICAgUlREIHNlcmllcyBTb0Nz
Lgo+ICsKPiAgZW5kaWYgIyBBUkNIX1JFQUxURUsgfHwgQ09NUElMRV9URVNUCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3JlYWx0ZWsvTWFrZWZpbGUgYi9kcml2ZXJzL3BoeS9yZWFsdGVrL01h
a2VmaWxlCj4gaW5kZXggZWQ3YjQ3ZmY4YTI2Li5hMWYwYWQxOTk0NzYgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvcmVhbHRlay9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsv
TWFrZWZpbGUKPiBAQCAtMSwzICsxLDQgQEAKPiAgIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMAo+ICBvYmotJChDT05GSUdfUEhZX1JUS19SVERfVVNCMlBIWSkgICAgICArPSBwaHkt
cnRrLXVzYjIubwo+ICBvYmotJChDT05GSUdfUEhZX1JUS19SVERfVVNCM1BIWSkgICAgICArPSBw
aHktcnRrLXVzYjMubwo+ICtvYmotJChDT05GSUdfUEhZX1JURF9QQ0lFKSAgICAgICAgICAgICAg
ICAgICAgICs9IHBoeS1ydGstcGNpZS5vCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JlYWx0
ZWsvcGh5LXJ0ay1wY2llLmMgYi9kcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstcGNpZS5jCj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjhlYzg0NTg5MDI3MQo+
IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstcGNpZS5j
Cj4gQEAgLTAsMCArMSw3MzggQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAtb3ItbGF0ZXIKPiArLyoKPiArICogUmVhbHRlayBESEMgUENJZSBQSFkgZHJpdmVyCj4gKyAq
Cj4gKyAqIENvcHlyaWdodCAoYykgMjAyMyBSZWFsdGVrIFNlbWljb25kdWN0b3IgQ29ycC4KPiAr
ICovCj4gKwo+ICsjaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nvbi5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9udm1lbS1jb25zdW1lci5oPgo+ICsjaW5j
bHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+
CgpZb3UgcHJvYmFibHkgZG9uJ3QgbmVlZCB0aGlzIGhlYWRlciBhbmQgdGhlIGltcGxpY2l0IGlu
Y2x1ZGVzIGl0IG1ha2VzCmFyZSBkcm9wcGVkIG5vdyBpbiBsaW51eC1uZXh0LiBQbGVhc2UgY2hl
Y2sgd2hhdCB5b3UgYWN0dWFsbHkgbmVlZCBhbmQKbWFrZSB0aGVtIGV4cGxpY2l0LgoKb2ZfYWRk
cmVzcy5oIGlzIGxpa2VseSBub3QgbmVlZGVkIGVpdGhlci4gUGxlYXNlIGNoZWNrLgoKUm9iCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
