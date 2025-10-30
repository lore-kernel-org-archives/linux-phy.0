Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FB45CCF9F8
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 16:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOz/Ghj8xMAmT0b8HD6J7LlER5Op3jbotfvQoKHSUVw=; b=DNbBJq84u4cnUy
	t14h4QIVcVNJMV5AhRyUSlgI0Q29H6Bv+arEuViNg3YqwwKnsWrCCQqPdPzq9ZzwvMq42F8C+K/DZ
	m8ZTvkJoamgLHDUgNlkNQUDY1vYKkihdhOCYjBn7cTWQSIxwMOSxUQqvIMacfoPWruC4UhqNDgPgd
	yXJQF34Pv8DmAs8L5Etz92snB5ixgkLYFvx/4+r/QL4fSRSpP96KNvGhvVOejnZm/8FGj2jl43sIa
	E8m1Bd+Zxps5xv496LNgr/0bFmldqZy6fR96lP9vgta+D7RPw5Te9Op10jP+2s8FEbNAHTGxhmmrU
	QYzCcVQXaHDTwgirtQwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEVPa-00000004Rte-2DGg;
	Thu, 30 Oct 2025 16:22:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEVPY-00000004RtG-344A
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 16:22:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0435D40B45;
	Thu, 30 Oct 2025 16:22:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47798C4CEF1;
	Thu, 30 Oct 2025 16:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761841323;
	bh=F+ThUuZwTPoqOt/a8AaNAZXa9DD3eH4/OEJNQKNPueM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NakRxAgf5j+AWB35aj0q8wYpPF+yCxnIwpGI2id4YibssjyXZWke4BL9F6dtizBqQ
	 qIniLzOK/Wd7ucdaHgZyZLTD77gLzl0O8eSGDEW2dbkhlNseTkDJ6iNZYqv8iTiYJ1
	 8OSb/667+qkK60On9KiL+um9H7xAasMWdKBvisHlSFKtFCEd5wyez4vKvYodGqolHa
	 ovMHAzka3vDfe3jXQldAjcnqFgr5ygOKGcX0Z2LUxDWTDKhP0YMpw4g56cKwU4xLi4
	 9ZCwlj9jwO9tYT9LKEDdKVyAWWWpQvYYBXSdimAyOjYmndLfb29ADBaty3bcCDVJ3r
	 gzsjIXXopBw8g==
Date: Thu, 30 Oct 2025 11:25:11 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: Add PCIe 3 regulators for
 HAMOA-IOT-EVK board
Message-ID: <5rpmcr23gsoiefmgxaci3fcc5yf3iwo4pbgywz6wuzljcnuxxe@pjn3g7dizim4>
References: <20251030084804.1682744-1-ziyue.zhang@oss.qualcomm.com>
 <20251030084804.1682744-5-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251030084804.1682744-5-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_092204_831187_F14351DF 
X-CRM114-Status: GOOD (  17.16  )
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

T24gVGh1LCBPY3QgMzAsIDIwMjUgYXQgMDQ6NDg6MDRQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gSEFNT0EtSU9ULUVWSyBib2FyZCBpbmNsdWRlcyBhIFBDSWUzIGNvbnRyb2xsZXIgYW5k
IHg4IHNsb3QgdGhhdCByZXF1aXJlCj4gcHJvcGVyIHBvd2VyIHJhaWwgYW5kIGNvbnRyb2wgc2ln
bmFsIGNvbmZpZ3VyYXRpb24uIFRoaXMgdXBkYXRlIGFkZHMKPiBgdmRkcGUtM3YzLXN1cHBseWAg
YW5kIGByZWd1bGF0b3ItcGNpZS0xMnZgIHRvIHByb3ZpZGUgMy4zViB0byB0aGUgUEhZCj4gYW5k
IDEyViB0byB0aGUgc2xvdCBmb3IgZXh0ZXJuYWwgZGV2aWNlcy4KPiAKPiBJdCBhbHNvIGludHJv
ZHVjZXMgUE0gR1BJT3MgdG8gbWFuYWdlIHBvd2VyIGVuYWJsZSBhbmQgcmVzZXQgc2lnbmFscywK
PiBlbnN1cmluZyBzdGFibGUgcG93ZXIgc2VxdWVuY2luZyBhbmQgcmVsaWFibGUgUENJZTMgb3Bl
cmF0aW9uLgoKSSdtIGFmcmFpZCBJIGRvbid0IHVuZGVyc3RhbmQgdGhpcyBwYXJhZ3JhcGguIElu
IHRoZSBmaXJzdCBwYXJhZ3JhcGggeW91CmVzdGFibGlzaCB0aGF0IHlvdSBoYXZlIFBDSWUzLCB0
aGVyZSBpcyBhIHg4IHNsb3QsIGFuZCB0aGVyZSdzIDMuM1YgYW5kCjEyViBzdXBwbGllcy4KCkJ1
dCB3aGVyZSBpbiB0aGUgcGF0Y2ggZG8geW91IGVzdGFibGlzaCAicmVzZXQgc2lnbmFscyIgYW5k
ICJlbnN1cmUKc3RhYmxlIHBvd2VyIHNlcXVlbmNpbmciPwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBa
aXl1ZSBaaGFuZyA8eml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNvbT4KPiAtLS0KPiAgYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL2hhbW9hLWlvdC1ldmsuZHRzIHwgNzkgKysrKysrKysrKysrKysr
KysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNzkgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaGFtb2EtaW90LWV2ay5kdHMgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vaGFtb2EtaW90LWV2ay5kdHMKPiBpbmRleCAyNGMyZGNlZjBiYTgu
LjA5ODRhNmVlZDIyNiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaGFt
b2EtaW90LWV2ay5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaGFtb2EtaW90
LWV2ay5kdHMKPiBAQCAtNDE0LDYgKzQxNCw0OCBAQCB2cmVnX3d3YW46IHJlZ3VsYXRvci13d2Fu
IHsKPiAgCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiAgCX07Cj4gIAo+ICsJdnJlZ19wY2llXzEydjog
cmVndWxhdG9yLXBjaWUtMTJ2IHsKCmh0dHBzOi8vZG9jcy5rZXJuZWwub3JnL2RldmljZXRyZWUv
YmluZGluZ3MvZHRzLWNvZGluZy1zdHlsZS5odG1sI29yZGVyLW9mLW5vZGVzCgoyLiBOb2RlcyB3
aXRob3V0IHVuaXQgYWRkcmVzc2VzIHNoYWxsIGJlIG9yZGVyZWQgYWxwaGEtbnVtZXJpY2FsbHkg
YnkKICAgdGhlIG5vZGUgbmFtZS4gRm9yIGEgZmV3IG5vZGUgdHlwZXMsIHRoZXkgY2FuIGJlIG9y
ZGVyZWQgYnkgdGhlIG1haW4KICAgcHJvcGVydHksIGUuZy4gcGluIGNvbmZpZ3VyYXRpb24gc3Rh
dGVzIG9yZGVyZWQgYnkgdmFsdWUgb2Yg4oCccGluc+KAnQogICBwcm9wZXJ0eS4KClJlZ2FyZHMs
CkJqb3JuCgo+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiArCj4gKwkJcmVn
dWxhdG9yLW5hbWUgPSAiVlJFR19QQ0lFXzEyViI7Cj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3Zv
bHQgPSA8MTIwMDAwMDA+Owo+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEyMDAwMDAw
PjsKPiArCj4gKwkJZ3BpbyA9IDwmcG04NTUwdmVfOF9ncGlvcyA4IEdQSU9fQUNUSVZFX0hJR0g+
Owo+ICsJCWVuYWJsZS1hY3RpdmUtaGlnaDsKPiArCj4gKwkJcGluY3RybC0wID0gPCZwY2llX3g4
XzEydj47Cj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCX07Cj4gKwo+ICsJdnJl
Z19wY2llXzN2M19hdXg6IHJlZ3VsYXRvci1wY2llLTN2My1hdXggewo+ICsJCWNvbXBhdGlibGUg
PSAicmVndWxhdG9yLWZpeGVkIjsKPiArCj4gKwkJcmVndWxhdG9yLW5hbWUgPSAiVlJFR19QQ0lF
XzNQM19BVVgiOwo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICsJ
CXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICsKPiArCQlncGlvID0gPCZw
bWM4MzgwXzNfZ3Bpb3MgOCBHUElPX0FDVElWRV9ISUdIPjsKPiArCQllbmFibGUtYWN0aXZlLWhp
Z2g7Cj4gKwo+ICsJCXBpbmN0cmwtMCA9IDwmcG1fc2RlN19hdXhfM3AzX2VuPjsKPiArCQlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJfTsKPiArCj4gKwl2cmVnX3BjaWVfM3YzOiByZWd1
bGF0b3ItcGNpZS0zdjMgewo+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiAr
Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAiVlJFR19QQ0lFXzNQMyI7Cj4gKwkJcmVndWxhdG9yLW1p
bi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8
MzMwMDAwMD47Cj4gKwo+ICsJCWdwaW8gPSA8JnBtYzgzODBfM19ncGlvcyA2IEdQSU9fQUNUSVZF
X0hJR0g+Owo+ICsJCWVuYWJsZS1hY3RpdmUtaGlnaDsKPiArCj4gKwkJcGluY3RybC0wID0gPCZw
bV9zZGU3X21haW5fM3AzX2VuPjsKPiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICt9
Owo+ICsKPiAgCXNvdW5kIHsKPiAgCQljb21wYXRpYmxlID0gInFjb20seDFlODAxMDAtc25kY2Fy
ZCI7Cj4gIAkJbW9kZWwgPSAiWDFFODAxMDAtRVZLIjsKPiBAQCAtODQ0LDYgKzg4NiwxMiBAQCAm
bWRzc19kcDNfcGh5IHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAgCj4gKyZwY2llM19w
b3J0IHsKPiArCXZwY2llMTJ2LXN1cHBseSA9IDwmdnJlZ19wY2llXzEydj47Cj4gKwl2cGNpZTN2
My1zdXBwbHkgPSA8JnZyZWdfcGNpZV8zdjM+Owo+ICsJdnBjaWUzdjNhdXgtc3VwcGx5ID0gPCZ2
cmVnX3BjaWVfM3YzX2F1eD47Cj4gK307Cj4gKwo+ICAmcGNpZTUgewo+ICAJdmRkcGUtM3YzLXN1
cHBseSA9IDwmdnJlZ193d2FuPjsKPiAgfTsKPiBAQCAtODcyLDYgKzkyMCwxNyBAQCB1c2IwXzNw
M19yZWdfZW46IHVzYjAtM3AzLXJlZy1lbi1zdGF0ZSB7Cj4gIAl9Owo+ICB9Owo+ICAKPiArJnBt
ODU1MHZlXzhfZ3Bpb3Mgewo+ICsJcGNpZV94OF8xMnY6IHBjaWUtMTJ2LWRlZmF1bHQtc3RhdGUg
ewo+ICsJCXBpbnMgPSAiZ3BpbzgiOwo+ICsJCWZ1bmN0aW9uID0gIm5vcm1hbCI7Cj4gKwkJb3V0
cHV0LWVuYWJsZTsKPiArCQlvdXRwdXQtaGlnaDsKPiArCQliaWFzLXB1bGwtZG93bjsKPiArCQlw
b3dlci1zb3VyY2UgPSA8MD47Cj4gKwl9Owo+ICt9Owo+ICsKPiAgJnBtODU1MHZlXzlfZ3Bpb3Mg
ewo+ICAJdXNiMF8xcDhfcmVnX2VuOiB1c2IwLTFwOC1yZWctZW4tc3RhdGUgewo+ICAJCXBpbnMg
PSAiZ3BpbzgiOwo+IEBAIC04ODMsNiArOTQyLDI2IEBAIHVzYjBfMXA4X3JlZ19lbjogdXNiMC0x
cDgtcmVnLWVuLXN0YXRlIHsKPiAgCX07Cj4gIH07Cj4gIAo+ICsmcG1jODM4MF8zX2dwaW9zIHsK
PiArCXBtX3NkZTdfYXV4XzNwM19lbjogcGNpZS1hdXgtM3AzLWRlZmF1bHQtc3RhdGUgewo+ICsJ
CXBpbnMgPSAiZ3BpbzgiOwo+ICsJCWZ1bmN0aW9uID0gIm5vcm1hbCI7Cj4gKwkJb3V0cHV0LWVu
YWJsZTsKPiArCQlvdXRwdXQtaGlnaDsKPiArCQliaWFzLXB1bGwtZG93bjsKPiArCQlwb3dlci1z
b3VyY2UgPSA8MD47Cj4gKwl9Owo+ICsKPiArCXBtX3NkZTdfbWFpbl8zcDNfZW46IHBjaWUtbWFp
bi0zcDMtZGVmYXVsdC1zdGF0ZSB7Cj4gKwkJcGlucyA9ICJncGlvNiI7Cj4gKwkJZnVuY3Rpb24g
PSAibm9ybWFsIjsKPiArCQlvdXRwdXQtZW5hYmxlOwo+ICsJCW91dHB1dC1oaWdoOwo+ICsJCWJp
YXMtcHVsbC1kb3duOwo+ICsJCXBvd2VyLXNvdXJjZSA9IDwwPjsKPiArCX07Cj4gK307Cj4gKwo+
ICAmcG1jODM4MF81X2dwaW9zIHsKPiAgCXVzYjBfcHdyXzFwMTVfcmVnX2VuOiB1c2IwLXB3ci0x
cDE1LXJlZy1lbi1zdGF0ZSB7Cj4gIAkJcGlucyA9ICJncGlvOCI7Cj4gLS0gCj4gMi4zNC4xCj4g
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
