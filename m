Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0452CCD193
	for <linux-phy@archiver.kernel.org>; Fri, 24 Oct 2025 02:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ca1rC4gNYWDpMt0UbyQKxp9uHiCEd2IFzbsVa8KQjng=; b=poz/nJA0+8v3Il
	atxfqxMuvkWlfVCoTWIUrUPZUpnsMBj+JFMGpZFZpjhTp3FWot+D1nGQO6xIpwjMyBj6bGnyKqUIx
	u2oRUGL6UUb03t1vYRQedMgk41BRdbTJQhWY0YHQAWigyMJdtOXtXhy4Mxe6SF/eNyebba+HqkZCX
	9nUvGV6gFal+qbh6BksWh+xFt5pTtHzdQ/3ZnT+1AA432bWtka0Sh51kV8rOxF+oToTHs369CTiLx
	3WMlZ+zznjmXB2cVk13K7TJ6lhom8t1CsGnfXgN+crK3fSMHF95MCqbzGzQF7kl4xMP2QJj74Ko51
	o/x78lHmlt0po3kovGhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC7xI-000000085TN-0shk;
	Fri, 24 Oct 2025 02:55:04 +0000
Received: from mail-m49220.qiye.163.com ([45.254.49.220])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC7xF-000000085S3-0Kzs;
	Fri, 24 Oct 2025 02:55:02 +0000
Received: from [172.16.12.149] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 270392de1;
	Fri, 24 Oct 2025 10:54:54 +0800 (GMT+08:00)
Message-ID: <3a24bd7f-c247-4541-8cf5-c1e66e2af5a0@rock-chips.com>
Date: Fri, 24 Oct 2025 10:54:52 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/9] usb: typec: Add notifier functions
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20251023033009.90-1-kernel@airkyi.com>
 <20251023033009.90-2-kernel@airkyi.com> <aPni4AeDaem_rfZH@kuha.fi.intel.com>
 <aPnvoSRJefwDlpNO@kuha.fi.intel.com> <aPn4-S7upPOOtenr@kuha.fi.intel.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aPn4-S7upPOOtenr@kuha.fi.intel.com>
X-HM-Tid: 0a9a1423fc4303abkunm4d0d6ba0277ced
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkMaHVYZGU1PQ0lLSksaSk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gmcha7yuuy2CrfoJTdnhI28g8WBtmL6HRH9Mdyp3PkXa22Ic+yNinMzirWLDo1sTbwJVUhRbRenlG1jXmIyMJdhn2Is0wH2sqNKx0KDDv2BfwRPbBJ0P629GC7/OLFQ5/1dtLeizfRYMEGojJWZS/eHoEMLejymKWKBGpFP+TiQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=N/ZJiet+D4kgJuaGh5t2VPX+e1fCgDJpBS23oXLL2Nk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_195501_641442_3ED1873D 
X-CRM114-Status: GOOD (  20.40  )
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

SGkgSGVpa2tpLAoKT24gMTAvMjMvMjAyNSA1OjQ0IFBNLCBIZWlra2kgS3JvZ2VydXMgd3JvdGU6
Cj4gT24gVGh1LCBPY3QgMjMsIDIwMjUgYXQgMTI6MDQ6NDRQTSArMDMwMCwgSGVpa2tpIEtyb2dl
cnVzIHdyb3RlOgo+PiBPbiBUaHUsIE9jdCAyMywgMjAyNSBhdCAxMToxMDoyMEFNICswMzAwLCBI
ZWlra2kgS3JvZ2VydXMgd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvdXNiL3R5cGVjX25vdGlmeS5oIGIvaW5jbHVkZS9saW51eC91c2IvdHlwZWNfbm90
aWZ5LmgKPj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4u
YTNmMWYzYjNhZTQ3Cj4+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+ICsrKyBiL2luY2x1ZGUvbGludXgv
dXNiL3R5cGVjX25vdGlmeS5oCj4+Pj4gQEAgLTAsMCArMSwxNyBAQAo+Pj4+ICsvKiBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLwo+Pj4+ICsKPj4+PiArI2lmbmRlZiBfX1VTQl9U
WVBFQ19OT1RJRlkKPj4+PiArI2RlZmluZSBfX1VTQl9UWVBFQ19OT1RJRlkKPj4+PiArCj4+Pj4g
KyNpbmNsdWRlIDxsaW51eC9ub3RpZmllci5oPgo+Pj4+ICsKPj4+PiArZW51bSB1c2JfdHlwZWNf
ZXZlbnQgewo+Pj4+ICsJVFlQRUNfQUxUTU9ERV9SRUdJU1RFUkVECj4+Pj4gK307Cj4+PiBEb24n
dCB5b3UgbmVlZCB0byBrbm93IHdoZW4gdGhlIGFsdG1vZGUgaXMgcmVtb3ZlZD8KPj4gSSBub3Rp
Y2VkIHRoYXQgeW91IGRvbid0IGJlY2F1c2UgZHJtX2RwX2hwZF9icmlkZ2VfcmVnaXN0ZXIoKSBp
cwo+PiBhbHdheXMgcmVzb3VyY2UgbWFuYWdlZC4gQnV0IEkgdGhpbmsgeW91IGNvdWxkIHN0aWxs
IHNlbmQgYW4gZXZlbnQKPj4gYWxzbyB3aGVuIHRoZSBhbHRtb2RlIGlzIHJlbW92ZWQgYWxyZWFk
eSBub3cuIFRoYXQgd2F5IGl0IGRvZXMgbm90Cj4+IG5lZWQgdG8gYmUgc2VwYXJhdGVseSBhZGRl
ZCBpZiBhbmQgd2hlbiBpdCBpcyBuZWVkZWQuCj4gSG9sZCBvbiEgRXZlcnkgYnVzIGhhcyBhbHJl
YWR5IGEgbm90aWZpZXIgY2hhaW4uIFRoYXQncyB0aGUgb25lIHRoYXQKPiB3ZSBzaG91bGQgYWxz
byB1c2UuIFNvcnJ5IGZvciBub3Qgbm90aWNpbmcgdGhhdCBlYXJsaWVyLgo+Cj4gU28gbGV0J3Mg
anVzdCBleHBvcnQgdGhlIGJ1cyB0eXBlIGluIHRoaXMgcGF0Y2ggLSB5b3UgY2FuIHRoZW4gdXNl
Cj4gYnVzX3JlZ2lzdGVyX25vdGlmaWVyKCkgaW4geW91ciBkcml2ZXI6Cj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy91c2IvdHlwZWMvYnVzLmMgYi9kcml2ZXJzL3VzYi90eXBlYy9idXMuYwo+IGlu
ZGV4IGE4ODRjZWM5YWI3ZS4uNjVkZWQ5ZTNjZGFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdXNi
L3R5cGVjL2J1cy5jCj4gKysrIGIvZHJpdmVycy91c2IvdHlwZWMvYnVzLmMKPiBAQCAtNTQ3LDMg
KzU0Nyw0IEBAIGNvbnN0IHN0cnVjdCBidXNfdHlwZSB0eXBlY19idXMgPSB7Cj4gICAgICAgICAg
LnByb2JlID0gdHlwZWNfcHJvYmUsCj4gICAgICAgICAgLnJlbW92ZSA9IHR5cGVjX3JlbW92ZSwK
PiAgIH07Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKHR5cGVjX2J1cyk7Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvdXNiL3R5cGVjL2J1cy5oIGIvZHJpdmVycy91c2IvdHlwZWMvYnVzLmgKPiBpbmRleCA2
NDNiOGM4MTc4NmQuLmFmOWVkYjNkYjlkMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3VzYi90eXBl
Yy9idXMuaAo+ICsrKyBiL2RyaXZlcnMvdXNiL3R5cGVjL2J1cy5oCj4gQEAgLTUsNyArNSw2IEBA
Cj4gICAKPiAgICNpbmNsdWRlIDxsaW51eC91c2IvdHlwZWNfYWx0bW9kZS5oPgo+ICAgCj4gLXN0
cnVjdCBidXNfdHlwZTsKPiAgIHN0cnVjdCB0eXBlY19tdXg7Cj4gICBzdHJ1Y3QgdHlwZWNfcmV0
aW1lcjsKPiAgIAo+IEBAIC0yOCw3ICsyNyw2IEBAIHN0cnVjdCBhbHRtb2RlIHsKPiAgIAo+ICAg
I2RlZmluZSB0b19hbHRtb2RlKGQpIGNvbnRhaW5lcl9vZihkLCBzdHJ1Y3QgYWx0bW9kZSwgYWRl
dikKPiAgIAo+IC1leHRlcm4gY29uc3Qgc3RydWN0IGJ1c190eXBlIHR5cGVjX2J1czsKPiAgIGV4
dGVybiBjb25zdCBzdHJ1Y3QgZGV2aWNlX3R5cGUgdHlwZWNfYWx0bW9kZV9kZXZfdHlwZTsKPiAg
IAo+ICAgI2RlZmluZSBpc190eXBlY19hbHRtb2RlKF9kZXZfKSAoX2Rldl8tPnR5cGUgPT0gJnR5
cGVjX2FsdG1vZGVfZGV2X3R5cGUpCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvdXNiL3R5
cGVjLmggYi9pbmNsdWRlL2xpbnV4L3VzYi90eXBlYy5oCj4gaW5kZXggMzA5MjUxNTcyZTJlLi5j
NmZkNDY5MDJmY2UgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC91c2IvdHlwZWMuaAo+ICsr
KyBiL2luY2x1ZGUvbGludXgvdXNiL3R5cGVjLmgKPiBAQCAtMjAsMTIgKzIwLDE1IEBAIHN0cnVj
dCB0eXBlY19wb3J0Owo+ICAgc3RydWN0IHR5cGVjX2FsdG1vZGVfb3BzOwo+ICAgc3RydWN0IHR5
cGVjX2NhYmxlX29wczsKPiAgIAo+ICtzdHJ1Y3QgYnVzX3R5cGU7Cj4gICBzdHJ1Y3QgZndub2Rl
X2hhbmRsZTsKPiAgIHN0cnVjdCBkZXZpY2U7Cj4gICAKPiAgIHN0cnVjdCB1c2JfcG93ZXJfZGVs
aXZlcnk7Cj4gICBzdHJ1Y3QgdXNiX3Bvd2VyX2RlbGl2ZXJ5X2Rlc2M7Cj4gICAKPiArZXh0ZXJu
IGNvbnN0IHN0cnVjdCBidXNfdHlwZSB0eXBlY19idXM7Cj4gKwo+ICAgZW51bSB0eXBlY19wb3J0
X3R5cGUgewo+ICAgICAgICAgIFRZUEVDX1BPUlRfU1JDLAo+ICAgICAgICAgIFRZUEVDX1BPUlRf
U05LLAo+Cj4gdGhhbmtzLAoKSSBub3RpY2VkIHRoZSBmb2xsb3dpbmcgc3RhdGVtZW50IGluIHR5
cGVjX3JlZ2lzdGVyX2FsdG1vZGUoKToKCmBgYAoKIMKgIMKgIC8qIFRoZSBwYXJ0bmVycyBhcmUg
YmluZCB0byBkcml2ZXJzICovCiDCoCDCoCBpZiAoaXNfdHlwZWNfcGFydG5lcihwYXJlbnQpKQog
wqAgwqAgwqAgwqAgYWx0LT5hZGV2LmRldi5idXMgPSAmdHlwZWNfYnVzOwoKYGBgCgpJZiB0aGUg
Y29uZGl0aW9uIGlzIG5vdCBtZXQsIHRoZSBidXMgd2lsbCBub3QgYmUgc2V0LCB3aGljaCBtZWFu
cyBidXNfbm90aWZ5KCkgd29uJ3QgYmUgYWJsZSB0byB0YWtlIGVmZmVjdC4gRGlkIEkgbWlzcyBz
b21ldGhpbmc/CgoKLS0gCkJlc3QsCkNoYW95aQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
