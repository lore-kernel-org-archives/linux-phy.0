Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 712BDD2F320
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 15:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XtitQT35yEBOYKtVqaW78xKPWQQAlalBpmoh8pd0E0Q=; b=15WqFtdRmcNE3X
	++gQCHA9r1/hiJ/VJHQ7A79DONly7Fodff7G147xV9Hvt6dtkaP7JcgfSFZAH4GhNFlQ9IUyfKnaV
	mph4THTpzvZBpKVqVrZ0VXlslK3DqUxRIVwTyY+s8jv9DT2k+Sqr+osCUUVoGaUzew8X+xGTzKZxG
	iMullsQqh5iYoUx/dNIsLUqnmJnA5XWJuupugm6c4057waFQtGAdKgvXuY5k/3LbAPIeCkrOW/HMd
	qAoVl4/kXKPU+QdBI331VRxEnUdBskfhfb/cBWdY5+45+1vNRF4nguPF2lUaDqS7GFMgafyzKvjZL
	8q8+e7JxVS63pPcYKt1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfg3P-00000007Kzs-0pYb;
	Tue, 13 Jan 2026 15:11:31 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfg3M-00000007Kyu-1vQc
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 15:11:30 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id D414160029BD;
	Tue, 13 Jan 2026 15:11:25 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id EFa79Lnypwl6; Tue, 13 Jan 2026 15:10:55 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id E9591600140A;
	Tue, 13 Jan 2026 15:10:54 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1768317055;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xbxfq9jp74vtOydBQ9RJUch+aysnR2/gbokPt1O0PRU=;
	b=hQ8aVbNgfgrCXaG1NnhxmbPhehvMedmR85kuHoWkKJfQof85QlT61K7wLPQtao65dlgEeS
	pfAgnNKdSEz3gqPePO9+GB4XiOepQjmxDyiABWzmZ9trqhy8iM0MFZVSo7Eyl7HcX7vbFS
	hBNUfhA4S4XD9rwl5rJ8MCJQtjHw8NJXb1cbeWlnwuNSn2ZhjNh7y/1LrmVJOEcLtkfvIK
	32ARMFWkPMXN17ZtZXKgCHXcN00QRr+wtCDG0KMKrDI+tKzgI8mYaRiu4oLd2zRbXrbUAy
	U7XUYzexKWK/NEfEAj6SFpj7W5jgVQQH8BDHf1XrbrE3iS+mTk0EVzFRFgmb6w==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 7AA72360107;
	Tue, 13 Jan 2026 15:10:54 +0000 (WET)
Message-ID: <c3f54ffb-cf4b-47ae-871a-6dd60b17c9cb@tecnico.ulisboa.pt>
Date: Tue, 13 Jan 2026 15:10:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: tegra: xusb: Fix ordering issue when switching
 roles on USB2 ports
To: Jon Hunter <jonathanh@nvidia.com>, Mathias Nyman
 <mathias.nyman@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
 <20251204-diogo-tegra_phy-v1-3-51a2016d0be8@tecnico.ulisboa.pt>
 <86cd3ff0-1609-44cb-911c-f0e97652ca1b@nvidia.com>
 <ae36f759-e889-4371-8c08-b8ffd1b69250@tecnico.ulisboa.pt>
 <703a470d-87fc-4580-a743-952e422984d4@nvidia.com>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <703a470d-87fc-4580-a743-952e422984d4@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_071129_225167_72654CAA 
X-CRM114-Status: GOOD (  22.82  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAxLzEzLzI2IDE0OjQ4LCBKb24gSHVudGVyIHdyb3RlOgo+IAo+IE9uIDEzLzAxLzIwMjYg
MTQ6MDUsIERpb2dvIEl2byB3cm90ZToKPj4KPj4KPj4gT24gMS8xMy8yNiAxMTo1NiwgSm9uIEh1
bnRlciB3cm90ZToKPj4+Cj4+PiBPbiAwNC8xMi8yMDI1IDIxOjI3LCBEaW9nbyBJdm8gd3JvdGU6
Cj4+Pj4gVGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gb2YgVVNCMiByb2xlIHN3aXRjaGluZyBv
biBUZWdyYSByZWxpZXMgb24KPj4+PiB3aGljaGV2ZXIgdGhlIHByZXZpb3VzIFVTQiBjb250cm9s
bGVyIGRyaXZlciB3YXMgdXNpbmcgdGhlIFBIWSB0byBmaXJzdAo+Pj4+ICJ5aWVsZCIgaXQgYmFj
ayB0byBVU0JfUk9MRV9OT05FIGJlZm9yZSB0aGUgbmV4dCBjb250cm9sbGVyIGNvbmZpZ3VyZXMK
Pj4+PiBpdCBmb3IgdGhlIG5ldyByb2xlLiBIb3dldmVyLCBubyBtZWNoYW5pc20gdG8gZ3VhcmFu
dGVlIHRoaXMgb3JkZXJpbmcKPj4+PiB3YXMgaW1wbGVtZW50ZWQsIGFuZCBjdXJyZW50bHksIGlu
IHRoZSBnZW5lcmFsIGNhc2UsIHRoZSBjb25maWd1cmF0aW9uCj4+Pj4gZnVuY3Rpb25zIHRlZ3Jh
X3hoY2lfaWRfd29yaygpIGFuZCB0ZWdyYV94dWRjX3VzYl9yb2xlX3N3X3dvcmsoKSBlbmQgdXAK
Pj4+PiBydW5uaW5nIGluIHRoZSBzYW1lIG9yZGVyIHJlZ2FyZGxlc3Mgb2YgdGhlIHRyYW5zaXRp
b24gYmVpbmcgSE9TVC0gCj4+Pj4gPkRFVklDRQo+Pj4+IG9yIERFVklDRS0+SE9TVCwgbGVhZGlu
ZyB0byBvbmUgb2YgdGhlc2UgdHJhbnNpdGlvbnMgZW5kaW5nIHVwIGluIGEKPj4+PiBub24td29y
a2luZyBzdGF0ZSBkdWUgdG8gdGhlIG5ldyBjb25maWd1cmF0aW9uIGJlaW5nIGNsb2JiZXJlZCBi
eSB0aGUKPj4+PiBwcmV2aW91cyBjb250cm9sbGVyIGRyaXZlciBzZXR0aW5nIFVTQl9ST0xFX05P
TkUgYWZ0ZXIgdGhlIGZhY3QuCj4+Pj4KPj4+PiBGaXggdGhpcyBieSBpbnRyb2R1Y2luZyBhIGhl
bHBlciB0aGF0IHdhaXRzIGZvciB0aGUgVVNCMiBwb3J04oCZcyBjdXJyZW50Cj4+Pj4gcm9sZSB0
byBiZWNvbWUgVVNCX1JPTEVfTk9ORSBhbmQgYWRkIGl0IGluIHRoZSBjb25maWd1cmF0aW9uIGZ1
bmN0aW9ucwo+Pj4+IGFib3ZlIGJlZm9yZSBzZXR0aW5nIHRoZSByb2xlIHRvIGVpdGhlciBVU0Jf
Uk9MRV9IT1NUIG9yCj4+Pj4gVVNCX1JPTEVfREVWSUNFLiBUaGUgc3BlY2lmaWMgcGFyYW1ldGVy
cyBvZiB0aGUgaGVscGVyIGZ1bmN0aW9uIGFyZQo+Pj4+IGNob2ljZXMgdGhhdCBzZWVtIHJlYXNv
bmFibGUgaW4gbXkgdGVzdGluZyBhbmQgaGF2ZSBubyBvdGhlciBiYXNpcy4KPj4+Cj4+PiBUaGlz
IGlzIG5vIGluZm9ybWF0aW9uIGhlcmUgYWJvdXQgd2h5IDYgKiA1MC82MHVzIGlzIGRlZW1lZCB0
byBiZSAKPj4+IHN1ZmZpY2llbnQ/IE1heSBiZSBpdCBpcywgYnV0IGEgY29tbWVudCB3b3VsZCBi
ZSBuaWNlLgo+Pj4KPj4+PiBUaGlzIHdhcyB0ZXN0ZWQgb24gYSBUZWdyYTIxMCBwbGF0Zm9ybSAo
U21hdWcpLiBIb3dldmVyLCBkdWUgdG8gdGhlIAo+Pj4+IHNpbWlsYXIKPj4+PiBhcHByb2FjaCBp
biBUZWdyYTE4NiBpdCBpcyBsaWtlbHkgdGhhdCBub3Qgb25seSB0aGlzIHByb2JsZW0gZXhpc3Rz
IAo+Pj4+IHRoZXJlCj4+Pj4gYnV0IHRoYXQgdGhpcyBwYXRjaCBhbHNvIGZpeGVzIGl0Lgo+Pj4+
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRGlvZ28gSXZvIDxkaW9nby5pdm9AdGVjbmljby51bGlzYm9h
LnB0Pgo+Pj4+IC0tLQo+Pj4+ICAgZHJpdmVycy9waHkvdGVncmEveHVzYi5jICAgICAgICAgICAg
fCAyMyArKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+ICAgZHJpdmVycy91c2IvZ2FkZ2V0L3Vk
Yy90ZWdyYS14dWRjLmMgfCAgNCArKysrCj4+Pj4gICBkcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVn
cmEuYyAgICAgICB8IDE1ICsrKysrKysrKystLS0tLQo+Pj4+ICAgaW5jbHVkZS9saW51eC9waHkv
dGVncmEveHVzYi5oICAgICAgfCAgMSArCj4+Pj4gICA0IGZpbGVzIGNoYW5nZWQsIDM4IGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvdGVncmEveHVzYi5jIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCj4+Pj4gaW5kZXggYzg5
ZGY5NWFhNmNhLi5lMDVjM2YyZDE0MjEgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9waHkvdGVn
cmEveHVzYi5jCj4+Pj4gKysrIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCj4+Pj4gQEAgLTc0
MCw2ICs3NDAsMjkgQEAgc3RhdGljIHZvaWQgCj4+Pj4gdGVncmFfeHVzYl9wYXJzZV91c2Jfcm9s
ZV9kZWZhdWx0X21vZGUoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCkKPj4+PiAgICAgICB9
Cj4+Pj4gICB9Cj4+Pj4gK2Jvb2wgdGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25vbmUo
c3RydWN0IHRlZ3JhX3h1c2JfcGFkY3RsIAo+Pj4+ICpwYWRjdGwsIGludCBpbmRleCkKPj4+PiAr
ewo+Pj4+ICsgICAgc3RydWN0IHRlZ3JhX3h1c2JfdXNiMl9wb3J0ICp1c2IyID0gCj4+Pj4gdGVn
cmFfeHVzYl9maW5kX3VzYjJfcG9ydChwYWRjdGwsCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaW5kZXgpOwo+Pj4+ICsgICAgaW50IHJldHJpZXMgPSA1Owo+Pj4+
ICsKPj4+PiArICAgIGlmICghdXNiMikgewo+Pj4+ICsgICAgICAgIGRldl9lcnIoJnVzYjItPmJh
c2UuZGV2LCAibm8gcG9ydCBmb3VuZCBmb3IgVVNCMiBsYW5lIAo+Pj4+ICV1XG4iLCBpbmRleCk7
Cj4+Pgo+Pj4gVGhpcyBhcHBlYXJzIHRvIGJlIGEgYnVnLiBJZiAhdXNiMiB0aGVuIGRlcmVmZXJl
bmNlIHVzYjItPmJhc2UgYW55d2F5Lgo+Pgo+PiBJdCBpcyBhIGJ1Zywgd2lsbCBmaXggaW4gdjIu
Cj4+Cj4+Pj4gKyAgICAgICAgcmV0dXJuIGZhbHNlOwo+Pj4+ICsgICAgfQo+Pj4+ICsKPj4+PiAr
ICAgIGRvIHsKPj4+PiArICAgICAgICBpZiAodXNiMi0+cm9sZSA9PSBVU0JfUk9MRV9OT05FKQo+
Pj4+ICsgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKPj4+PiArCj4+Pj4gKyAgICAgICAgdXNsZWVw
X3JhbmdlKDUwLCA2MCk7Cj4+Pj4gKyAgICB9IHdoaWxlIChyZXRyaWVzLS0pOwo+Pj4+ICsKPj4+
PiArICAgIGRldl9lcnIoJnVzYjItPmJhc2UuZGV2LCAidGltZWQgb3V0IHdhaXRpbmcgZm9yIFVT
Ql9ST0xFX05PTkUiKTsKPj4+PiArCj4+Pj4gKyAgICByZXR1cm4gZmFsc2U7Cj4+Pj4gK30KPj4+
PiArCj4+Pj4gICBzdGF0aWMgaW50IHRlZ3JhX3h1c2JfdXNiMl9wb3J0X3BhcnNlX2R0KHN0cnVj
dCAKPj4+PiB0ZWdyYV94dXNiX3VzYjJfcG9ydCAqdXNiMikKPj4+PiAgIHsKPj4+PiAgICAgICBz
dHJ1Y3QgdGVncmFfeHVzYl9wb3J0ICpwb3J0ID0gJnVzYjItPmJhc2U7Cj4+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvdGVncmEteHVkYy5jIGIvZHJpdmVycy91c2IvIAo+
Pj4+IGdhZGdldC8gdWRjL3RlZ3JhLXh1ZGMuYwo+Pj4+IGluZGV4IDBjMzhmYzM3YjZlNi4uNzJk
NzI1NjU5ZTVmIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvdGVncmEt
eHVkYy5jCj4+Pj4gKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy90ZWdyYS14dWRjLmMKPj4+
PiBAQCAtNjk4LDggKzY5OCwxMiBAQCBzdGF0aWMgdm9pZCAKPj4+PiB0ZWdyYV94dWRjX3Jlc3Rv
cmVfcG9ydF9zcGVlZChzdHJ1Y3QgdGVncmFfeHVkYyAqeHVkYykKPj4+PiAgIHN0YXRpYyB2b2lk
IHRlZ3JhX3h1ZGNfZGV2aWNlX21vZGVfb24oc3RydWN0IHRlZ3JhX3h1ZGMgKnh1ZGMpCj4+Pj4g
ICB7Cj4+Pj4gKyAgICBpbnQgcG9ydCA9IHRlZ3JhX3h1c2JfcGFkY3RsX2dldF9wb3J0X251bWJl
cih4dWRjLT5jdXJyX3V0bWlfcGh5KTsKPj4+PiAgICAgICBpbnQgZXJyOwo+Pj4+ICsgICAgaWYg
KCF0ZWdyYV94dXNiX3VzYjJfcG9ydF93YWl0X3JvbGVfbm9uZSh4dWRjLT5wYWRjdGwsIHBvcnQp
KQo+Pj4+ICsgICAgICAgIHJldHVybjsKPj4+PiArCj4+Pj4gICAgICAgcG1fcnVudGltZV9nZXRf
c3luYyh4dWRjLT5kZXYpOwo+Pj4+ICAgICAgIHRlZ3JhX3BoeV94dXNiX3V0bWlfcGFkX3Bvd2Vy
X29uKHh1ZGMtPmN1cnJfdXRtaV9waHkpOwo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9o
b3N0L3hoY2ktdGVncmEuYyBiL2RyaXZlcnMvdXNiL2hvc3QveGhjaS0gCj4+Pj4gdGVncmEuYwo+
Pj4+IGluZGV4IDljNjlmY2NkYzZlOC4uOTk0NDU5MzE2NmEzIDEwMDY0NAo+Pj4+IC0tLSBhL2Ry
aXZlcnMvdXNiL2hvc3QveGhjaS10ZWdyYS5jCj4+Pj4gKysrIGIvZHJpdmVycy91c2IvaG9zdC94
aGNpLXRlZ3JhLmMKPj4+PiBAQCAtMTM1MiwxOCArMTM1MiwyMyBAQCBzdGF0aWMgdm9pZCB0ZWdy
YV94aGNpX2lkX3dvcmsoc3RydWN0IAo+Pj4+IHdvcmtfc3RydWN0ICp3b3JrKQo+Pj4+ICAgICAg
IHN0cnVjdCB0ZWdyYV94dXNiX21ib3hfbXNnIG1zZzsKPj4+PiAgICAgICBzdHJ1Y3QgcGh5ICpw
aHkgPSB0ZWdyYV94dXNiX2dldF9waHkodGVncmEsICJ1c2IyIiwKPj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB0ZWdyYS0+b3RnX3VzYjJfcG9ydCk7Cj4+Pj4gKyAgICBlbnVtIHVz
Yl9yb2xlIHJvbGUgPSBVU0JfUk9MRV9OT05FOwo+Pj4+ICAgICAgIHUzMiBzdGF0dXM7Cj4+Pj4g
ICAgICAgaW50IHJldDsKPj4+PiAgICAgICBkZXZfZGJnKHRlZ3JhLT5kZXYsICJob3N0IG1vZGUg
JXNcbiIsIHN0cl9vbl9vZmYodGVncmEtIAo+Pj4+ID5ob3N0X21vZGUpKTsKPj4+PiAtICAgIG11
dGV4X2xvY2soJnRlZ3JhLT5sb2NrKTsKPj4+Cj4+PiBFeHRyYSBibGFuayBsaW5lIGhlcmUuCj4+
Cj4+IFdpbGwgZml4IGluIHYyLgo+Pgo+Pj4+IC0gICAgaWYgKHRlZ3JhLT5ob3N0X21vZGUpCj4+
Pj4gLSAgICAgICAgcGh5X3NldF9tb2RlX2V4dChwaHksIFBIWV9NT0RFX1VTQl9PVEcsIFVTQl9S
T0xFX0hPU1QpOwo+Pj4+IC0gICAgZWxzZQo+Pj4+IC0gICAgICAgIHBoeV9zZXRfbW9kZV9leHQo
cGh5LCBQSFlfTU9ERV9VU0JfT1RHLCBVU0JfUk9MRV9OT05FKTsKPj4+PiArICAgIGlmICh0ZWdy
YS0+aG9zdF9tb2RlKSB7Cj4+Pj4gKyAgICAgICAgaWYgKCF0ZWdyYV94dXNiX3VzYjJfcG9ydF93
YWl0X3JvbGVfbm9uZSh0ZWdyYS0+cGFkY3RsLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHRlZ3JhLT5vdGdfdXNiMl9wb3J0KSkKPj4+PiArICAgICAgICAgICAgcmV0dXJuOwo+
Pj4+ICsgICAgICAgIHJvbGUgPSBVU0JfUk9MRV9IT1NUOwo+Pj4+ICsgICAgfQo+Pj4+ICsKPj4+
PiArICAgIG11dGV4X2xvY2soJnRlZ3JhLT5sb2NrKTsKPj4+PiArICAgIHBoeV9zZXRfbW9kZV9l
eHQocGh5LCBQSFlfTU9ERV9VU0JfT1RHLCByb2xlKTsKPj4+PiAgICAgICBtdXRleF91bmxvY2so
JnRlZ3JhLT5sb2NrKTsKPj4+Cj4+PiBJIGFtIHRyeWluZyB0byB1bmRlcnN0YW5kIHdoeSB5b3Ug
b3B0ZWQgdG8gaW1wbGVtZW50IGl0IHRoaXMgd2F5IAo+Pj4gYXJvdW5kIGFuZCBub3QgYWRkIHRo
ZSB3YWl0IGxvb3AgYWZ0ZXIgc2V0dGluZyB0byB0aGUgbW9kZSB0byAKPj4+IFVTQl9ST0xFX05P
TkUgaW4gdGhlIG9yaWdpbmFsIGNvZGUgYWxsIHdpdGhpbiB0aGUgY29udGV4dCBvZiB0aGUgbXV0
ZXg/Cj4+Cj4+IEkgZGlkIHRoYXQgdG8gbWluaW1pemUgdGhlIGFtb3VudCBvZiB0aW1lIHdlIHdh
aXQgd2hpbGUgaG9sZGluZyB0aGUKPj4gbXV0ZXgsIGFzIHdlIGNhbiBub3cgcG9zc2libHkgd2Fp
dCBhIHNpZ25pZmljYW50IGFtb3VudCBvZiB0aW1lIGZvciB0aGUKPj4gcm9sZSBzd2l0Y2guIElz
IHRoaXMgYW4gdW5uZWNjZXNzYXJ5IG9wdGltaXphdGlvbj8KPiAKPiBEbyB5b3UgbWVhbiBpdCB3
aWxsIGJlIGxvbmdlciB0aGFuIGEgZmV3IDEwMHVzPwoKQ3VycmVudGx5IHRoZSB3b3JzdCBjYXNl
IGluIHdhaXRfcm9sZV9ub25lKCkgaXMgYXJvdW5kIDMwMHVzIGJ1dCBhZ2Fpbgp0aGlzIGlzIHNp
bXBseSBiZWNhdXNlIEkgY2hvc2UgdGhlIHZhbHVlcyB3aXRoIG5vIGNyaXRlcmlhIGV4Y2VwdCB0
aGF0CmluIG15IHRlc3RpbmcgdGhleSBoYXZlIHdvcmtlZCB0aHVzIGZhci4gRG8geW91IGhhdmUg
YWNjZXNzIHRvIGFueQppbnRlcm5hbCBkb2N1bWVudGF0aW9uIHdoZXJlIHRoZSB0cmFuc2l0aW9u
IGxlbmd0aCBpcyBkb2N1bWVudGVkPwoKSW4gYW55IGNhc2UgSSB0aGluayB0aGF0IHRoZSB1bmRl
cmx5aW5nIHByaW5jaXBsZSBvZiBtaW5pbWl6aW5nIHRoZSB0aW1lCndlIGhvbGQgdGhlIG11dGV4
IGlzIHNvbGlkLCBubz8KCkRpb2dvCgo+IEpvbgo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
