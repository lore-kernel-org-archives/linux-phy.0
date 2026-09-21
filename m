Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF0E0C982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vw5DEFnmHtGEN9r4fubcAm6AVMdi7372RXJOLGAE1y8=; b=s1U/v+mZTkpbsH
	6VO1FaXt/6CYCSCWir3+8iM3t6RSCjhatlTfwbw+0G6ezCh/mKedS1uY9v3GpAbWaUoQ1ZLi5x9Tw
	utzvZTdApSFkwB569lGXk+p+8oPPZhbTiWkSEdrCUx0oqolQ/JwR+mkHZF1GhKUXbdazFNcExNudy
	Qnh9HvJVEPknk9WoO0eqcLo0kUDkDRezzsZehabVBtcAbnsPdsiyK0USV40UHicjyHPOnX5vwx53R
	fqq9UbONYLbDkcuOToR1Wdau0LwjPplUAEHUdQoUK5xDuxDLdNrDa5FoIdqQMwaVoETYPR4H+Ywvx
	hyREGhtqBbdoZQc8GEyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cc2-00000001yzR-20jl;
	Mon, 21 Sep 2026 11:55:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cc1-00000001yzC-1aVK
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:55:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E06A244925;
	Mon, 21 Sep 2026 11:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 592601F000FF;
	Mon, 21 Sep 2026 11:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789991708;
	bh=nK1A2wjpEHFyOqcSnc2DeOTvPdBOcuCe16Ggt/qd/zc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l9LQvYpqmniKRiMrpK1OzLhq+RRwNjXNZPJRrSrxJfIljsYETCKia/uppVAVMC4kt
	 eQF4c4grXXO07xQ58wxOslg/8rqDt8MWGinHjgCaEjWcvVM8bnJ2EP4vrrO7mJawmM
	 +H9hTy/KUNgzNOONAUhEm8fwccNxEQUeQM+2HgVbIZuult4L6w2U1VoJJgOcn+5uca
	 pYlSud8lp3RMZbcgA/BDhqhet98P+DDvZ9gbdLnO1j5CRF1W58Hls9LzAHnj+hQLus
	 wK2jFJ3oos/riXUMejhUE1AberRFk82Etu79y73/2k/8KMQ98b+BAFLXBJe1PoVo++
	 ucKXT0oM7/+Ew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] phy: qcom: qmp-combo: Add USB3+DP PHY support
 for Nord
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260921-nord-usb-phy-v3-3-68aa02b12b96@oss.qualcomm.com>
References: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
 <20260921-nord-usb-phy-v3-3-68aa02b12b96@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:55:07 +0000
Message-Id: <20260921115508.592601F000FF@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWVhbmluZ2Z1bCBj
b2RlIGFuZCBjb21taXQgbWVzc2FnZSBtaXNtYXRjaCBmb3Igbm9yZF91c2IzX3R4X3RibAotLQoK
Y29tbWl0IDQ2MzgwOGRlNWY5MThmYTY1NmUwNzBiYjI4Y2IzYzQ5MTM1MDcyZmIKQXV0aG9yOiBC
YXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3c2tpQG9zcy5xdWFsY29tbS5jb20+
CgpwaHk6IHFjb206IHFtcC1jb21ibzogQWRkIFVTQjMrRFAgUEhZIHN1cHBvcnQgZm9yIE5vcmQK
ClRoaXMgY29tbWl0IGFkZHMgVVNCMytEUCBjb21ibyBQSFkgc3VwcG9ydCBmb3IgdGhlIE5vcmQg
U29DLCBpbnRyb2R1Y2luZyBhCm5ldyBsYXlvdXQgb2Zmc2V0IHRhYmxlICh2NikgdG8gaGFuZGxl
IGl0cyBkZWRpY2F0ZWQgVVNCM19QQ1NfQU9OIHJlZ2lvbi4KCj4gICAgIE5vcmQgU29DIHByb3Zp
ZGVzIHR3byBVU0IzK0RQIGNvbWJvIFBIWXMuIFRoZWlyIGluaXRpYWxpc2F0aW9uIHNlcXVlbmNl
cwo+ICAgICBhcmUgaWRlbnRpY2FsIHRvIHNtODU1MCwgYnV0IHRoZSBzdWItYmxvY2tzIGFyZSBu
b3QgbGFpZCBvdXQgdGhlIHNhbWUgd2F5OgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtY29tYm8uYwo+IGluZGV4IGE0ZjEzMGZjMzNlMzkuLmM0ZTg4YjAzODRjYjUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwpbIC4uLiBdCj4gQEAg
LTIzNTYsNiArMjM1NiwyMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90Ymwg
aGF3aV91c2IzX3Bjc191c2JfdGJsW10gPSB7Cj4gIAlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjEw
X1BDU19VU0IzX1JDVlJfRFRDVF9ETFlfVTNfSCwgMHgwMCksCj4gIH07Cj4gIAo+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90Ymwgbm9yZF91c2IzX3R4X3RibFtdID0gewo+ICsJ
UU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X1RYX1JFU19DT0RFX0xBTkVfVFgsIDB4MDApLAo+
ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X1RYX1JFU19DT0RFX0xBTkVfUlgsIDB4MDAp
LAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X1RYX1JFU19DT0RFX0xBTkVfT0ZGU0VU
X1RYLCAweDFmKSwKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9UWF9SRVNfQ09ERV9M
QU5FX09GRlNFVF9SWCwgMHgwOSksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfVFhf
TEFORV9NT0RFXzEsIDB4ZjUpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X1RYX0xB
TkVfTU9ERV8zLCAweDNmKSwKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9UWF9MQU5F
X01PREVfNCwgMHgzZiksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfVFhfTEFORV9N
T0RFXzUsIDB4NWYpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X1RYX1JDVl9ERVRF
Q1RfTFZMXzIsIDB4MTQpLAoKW1NldmVyaXR5OiBNZWRpdW1dCklzIHRoaXMgdmFsdWUgaW50ZW50
aW9uYWw/IFRoZSBjb21taXQgbWVzc2FnZSBleHBsaWNpdGx5IGNsYWltcyB0aGF0IHRoZQppbml0
aWFsaXNhdGlvbiBzZXF1ZW5jZXMgZm9yIE5vcmQgYXJlICJpZGVudGljYWwgdG8gc204NTUwIi4g
SG93ZXZlciwgdGhlCnNtODU1MCBlcXVpdmFsZW50IHVzZXMgMHgxMiBmb3IgUVNFUkRFU19WNl9U
WF9SQ1ZfREVURUNUX0xWTF8yLCB3aGVyZWFzCm5vcmRfdXNiM190eF90Ymwgc2V0cyBpdCB0byAw
eDE0LgoKRG9lcyB0aGUgY29tbWl0IG1lc3NhZ2UgbmVlZCB0byBiZSB1cGRhdGVkIHRvIGRvY3Vt
ZW50IGFuIGludGVudGlvbmFsCmhhcmR3YXJlIHR3ZWFrIGZvciBOb3JkLCBvciBpcyB0aGlzIHZh
bHVlIGEgdHlwbz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjA5MjEtbm9yZC11c2ItcGh5LXYzLTAtNjhhYTAyYjEyYjk2QG9zcy5x
dWFsY29tbS5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
