Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51E4ECD4F39
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVZnGdZyDVNoDDXkq1vdNJ2pECQ5EQ9UKy3scQZBlg0=; b=Rab8uQmQV54wQe
	+vpQDqpZyxNYzLJJtSIQuxnUOJlvMc/E1HEPeHQBM1ffys6t6nomMsZId7toEr+qKGDsZOl67xtHJ
	4hA1hQI1NqIks5PzmUnZd9l9RsZ55VJKyLMGm0GaGFZXhEAscOFgDaIqkQjZJun7uFHBFf46RanG/
	Ls0Os/supd3n65eIDnTAvCqY57jtFddgYLIsbS2X5/dHUjC7euDoAMN7B+vGCF47CzsKEhtkijHXp
	lFpYfnZkIIjUkvfzzA7UpJaRgjkcz98AgeE5YJsMNnMiTjWhLDiTHScEZaDokzH53o3fLVSUDlA0J
	5ghB2KOASAajNW5a5eXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNOsO-00000004eG9-1hrg;
	Thu, 14 May 2026 05:44:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNOsL-00000004eFb-3DQD
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 05:44:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2EB6943B73;
	Thu, 14 May 2026 05:44:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A59AFC2BCB7;
	Thu, 14 May 2026 05:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778737488;
	bh=H/+ligJMcqnsftu46EjlCwh92QGuF7zRIdAgI725xe0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=JSaNookrt/HD3/So/BLwd6sybK9u980Ub22mkOz8+WeEsL5ibSt867CVKnnAaVXQ7
	 PflsChz/JTH0X3oJ1xG1Vs2+l2grgm7ztZviOuFG8unGQ588+eiyb3L0VJwkI1Drtq
	 P61SEuq/N+UbPEm18jjj1HWmzibMOsljFnJGZtaiS8ZjpUigBE7SP0TsNCbk7Gn+FB
	 GEip4c1XmRieIwzsnSBVaUE8JQ7hnm9K0uCpAdm7k/wYUslMm5SRauO6GqjJpUjzB8
	 kitS94jOJ2m4A/LA9Bq3tziU58zgvZUVMLut0fbGkxPzQaJk67jYdlSMZ4cjwqnOL8
	 hPq7VD/bmNyUg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
To: "Dimitri Fedrau via B4 Relay" <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Cc: olteanv@gmail.com, krzk+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260513-tja1145-support-v5-2-38720a7ee63e@liebherr.com>
References: <20260513-tja1145-support-v5-2-38720a7ee63e@liebherr.com>
Date: Thu, 14 May 2026 05:44:47 +0000
Message-Id: <20260514054447.A59AFC2BCB7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_224449_850477_A514730D 
X-CRM114-Status: GOOD (  19.43  )
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkcml2ZXIgZmFp
bHMgdG8gZW5hYmxlIHRoZSBoYXJkd2FyZSBwb3dlciBzdXBwbGllcyAoYHZjYy1zdXBwbHlgLCBg
dmlvLXN1cHBseWAsIGB2YmF0LXN1cHBseWApIGJlZm9yZSBjb21tdW5pY2F0aW5nIHdpdGggdGhl
IGRldmljZS4KLSBbSGlnaF0gVGhlIGRyaXZlciBkb2VzIG5vdCBvYnNlcnZlIHRoZSByZXF1aXJl
ZCBtb2RlIHRyYW5zaXRpb24gZGVsYXkgd2hlbiBwb3dlcmluZyBvbiB0aGUgUEhZLgotIFtNZWRp
dW1dIE1pc3Npbmcgcm9sbGJhY2sgdG8gc3RhbmRieSBtb2RlIGluIHRoZSBlcnJvciBwYXRoIG9m
IGB0amExMTQ1X3BoeV9wb3dlcl9vbmAuCi0tCgpjb21taXQgMjg4MTM0ZTE3OTk5MmNiMmU2OTBm
ZjdhOTc1MDJlNzJmMDRlOWQ1YQpBdXRob3I6IERpbWl0cmkgRmVkcmF1IDxkaW1pdHJpLmZlZHJh
dUBsaWViaGVyci5jb20+CgpwaHk6IGFkZCBiYXNpYyBzdXBwb3J0IGZvciBOWFBzIFRKQTExNDUg
Q0FOIHRyYW5zY2VpdmVyCgpUaGlzIGNvbW1pdCBhZGRzIGJhc2ljIGRyaXZlciBzdXBwb3J0IGZv
ciB0aGUgTlhQIFRKQTExNDUgQ0FOIHRyYW5zY2VpdmVyLgpJdCBpbXBsZW1lbnRzIHRoZSBQSFkg
b3BlcmF0aW9ucyB0byBicmluZyB0aGUgaGFyZHdhcmUgdXAgYW5kIGRvd24gYnkKc3dpdGNoaW5n
IGJldHdlZW4gbm9ybWFsIGFuZCBzdGFuZGJ5IG1vZGVzIHVzaW5nIFNQSSBjb21tYW5kcy4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1ueHAtdGphMTE0NS5jIGIvZHJpdmVycy9waHkv
cGh5LW54cC10amExMTQ1LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAw
MDAwMDAuLjFlOGJkMTY5NzQzYWIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkv
cGh5LW54cC10amExMTQ1LmMKClsgLi4uIF0KCj4gK3N0YXRpYyBpbnQgdGphMTE0NV9waHlfcG93
ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+ICt7Cj4gKwlzdHJ1Y3QgcmVnbWFwICptYXAgPSBwaHlf
Z2V0X2RydmRhdGEocGh5KTsKPiArCWludCByZXQ7Cj4gKwo+ICsJLyoKPiArCSAqIFN3aXRjaCBv
cGVyYXRpbmcgbW9kZSB0byBub3JtYWwgd2hpY2ggaXMgdGhlIGFjdGl2ZSBvcGVyYXRpbmcgbW9k
ZS4KPiArCSAqIEluIHRoaXMgbW9kZSwgdGhlIGRldmljZSBpcyBmdWxseSBvcGVyYXRpb25hbC4K
PiArCSAqLwo+ICsJcmV0ID0gcmVnbWFwX3VwZGF0ZV9iaXRzKG1hcCwgVEpBMTE0NV9NT0RFX0NU
UkwsIFRKQTExNDVfTU9ERV9DVFJMX01DLAo+ICsJCQkJIFRKQTExNDVfTU9ERV9DVFJMX05PUk1B
TCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7CgpBY2NvcmRpbmcgdG8gdGhlIGhhcmR3
YXJlIGRhdGFzaGVldCwgdHJhbnNpdGlvbmluZyB0aGUgdHJhbnNjZWl2ZXIgdG8gbm9ybWFsCm1v
ZGUgY2FuIHRha2UgdXAgdG8gNDAgdXMuIERvZXMgdGhpcyBzZXF1ZW5jZSBuZWVkIGEgaGFyZHdh
cmUgdHJhbnNpdGlvbgpkZWxheSBiZWZvcmUgc2VuZGluZyB0aGUgYWN0aXZlIG1vZGUgY29tbWFu
ZD8KCldpdGggYSBmYXN0IFNQSSBidXMsIHRoZSBuZXh0IGNvbW1hbmQgbWlnaHQgYXJyaXZlIGJl
Zm9yZSB0aGUgaGFyZHdhcmUgc3RhdGUKbWFjaGluZSBmaW5pc2hlcyB0cmFuc2l0aW9uaW5nLCB3
aGljaCBjb3VsZCBjYXVzZSB0aGUgYWN0aXZlIG1vZGUgY29tbWFuZCB0bwpiZSBpZ25vcmVkLgoK
PiArCj4gKwkvKgo+ICsJICogU3dpdGNoIHRvIENBTiBvcGVyYXRpbmcgbW9kZSBhY3RpdmUgd2hl
cmUgdGhlIFBIWSBjYW4gdHJhbnNtaXQgYW5kCj4gKwkgKiByZWNlaXZlIGRhdGEuCj4gKwkgKi8K
PiArCXJldHVybiByZWdtYXBfdXBkYXRlX2JpdHMobWFwLCBUSkExMTQ1X0NBTl9DVFJMLCBUSkEx
MTQ1X0NBTl9DVFJMX0NNQywKPiArCQkJCSAgVEpBMTE0NV9DQU5fQ1RSTF9BQ1RJVkUpOwoKSWYg
dGhpcyBzZWNvbmQgcmVnbWFwX3VwZGF0ZV9iaXRzKCkgZmFpbHMsIHRoZSBmdW5jdGlvbiByZXR1
cm5zIGFuIGVycm9yCndpdGhvdXQgcmV2ZXJ0aW5nIHRoZSBkZXZpY2UgdG8gc3RhbmRieSBtb2Rl
LgoKU2luY2UgdGhlIFBIWSBmcmFtZXdvcmsga2VlcHMgdGhlIHBvd2VyX2NvdW50IGF0IDAgb24g
YW4gZXJyb3IgcmV0dXJuLApwaHlfcG93ZXJfb2ZmKCkgd2lsbCBub3QgYmUgY2FsbGVkIGR1cmlu
ZyBzaHV0ZG93biBvciBzdXNwZW5kLiBDb3VsZCB0aGlzCmxlYXZlIHRoZSBoYXJkd2FyZSBwZXJt
YW5lbnRseSBzdHVjayBpbiBub3JtYWwgbW9kZSwgZHJhd2luZyBwb3dlcgp1bmludGVudGlvbmFs
bHk/Cgo+ICt9CgpbIC4uLiBdCgo+ICtzdGF0aWMgaW50IHRqYTExNDVfcHJvYmUoc3RydWN0IHNw
aV9kZXZpY2UgKnNwaSkKPiArewo+ICsJc3RydWN0IHBoeV9wcm92aWRlciAqcGh5X3Byb3ZpZGVy
Owo+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gJnNwaS0+ZGV2Owo+ICsJc3RydWN0IHJlZ21hcCAq
bWFwOwo+ICsJc3RydWN0IHBoeSAqcGh5Owo+ICsJaW50IHJldDsKPiArCj4gKwltYXAgPSBkZXZt
X3JlZ21hcF9pbml0X3NwaShzcGksICZ0amExMTQ1X3JlZ21hcF9jb25maWcpOwo+ICsJaWYgKElT
X0VSUihtYXApKQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihtYXApLCAi
ZmFpbGVkIHRvIGluaXQgcmVnbWFwXG4iKTsKPiArCj4gKwlyZXQgPSB0amExMTQ1X2NoZWNrX2lk
ZW50KGRldiwgbWFwKTsKCldpbGwgdGhpcyBmYWlsIHRvIGNvbW11bmljYXRlIHdpdGggdGhlIGhh
cmR3YXJlIG9uIHBsYXRmb3JtcyB3aGVyZSBwb3dlcgpzdXBwbGllcyBhcmUgZHluYW1pY2FsbHkg
Y29udHJvbGxlZD8KClRoZSBkZXZpY2UgdHJlZSBiaW5kaW5nIGRlZmluZXMgdmNjLXN1cHBseSwg
dmlvLXN1cHBseSwgYW5kIHZiYXQtc3VwcGx5IGFzCnBvd2VyIHNvdXJjZXMsIGJ1dCB0aGV5IGRv
IG5vdCBhcHBlYXIgdG8gYmUgcmVxdWVzdGVkIG9yIGVuYWJsZWQgaW4gdGhpcwpmdW5jdGlvbiBi
ZWZvcmUgdGphMTE0NV9jaGVja19pZGVudCgpIGlzIGNhbGxlZC4KClRoaXMgbWlnaHQgbGVhdmUg
dGhlIFBIWSB1bnBvd2VyZWQsIGNhdXNpbmcgdGhlIFNQSSByZWFkIHRvIHJldHVybiBnYXJiYWdl
CmRhdGEgYW5kIGZhaWwgdGhlIHByb2JlIHdpdGggLUVOT0RFVi4KCj4gKwlpZiAocmV0KQo+ICsJ
CXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiZmFpbGVkIHRvIGlkZW50aWZ5IGRldmlj
ZVxuIik7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwNTEzLXRqYTExNDUtc3VwcG9ydC12NS0wLTM4NzIwYTdlZTYzZUBsaWViaGVy
ci5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
