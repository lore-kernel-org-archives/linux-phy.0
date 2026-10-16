Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA200CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 18:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uclQiTHcF3dW/c1PuXaNYgUZCyYyUOyvdSQWsBNmVco=; b=GwIFp35Msi/LE2
	Z56UDEcgjr0XB96Nab6AY8NP4galTZHW8pH9MPB54Gp5VBVdRIvD2e/A1fVWKbx2RZQ55Dh2cPWBi
	3XBbr1TimM/mYFVcr1EEnVMhVhadgP3t/aaSLqhx64hBAByTNa5h+afJtLruxnWr/aCdLmGADPmKe
	N7PAygcbdDpfkTIDxzeisrHZJaPMhXQM2DFY+JVQou11qDKTk2SMn/PpBaFIVjWjYwieF81IZM8lq
	7Qo8x48emvKBKVEpG1++JJYU3XRS9THabiVMwZwxGwELe8PBTzT/Ypl4YkSZqwVcnxFvbyw5IK9E9
	+JHkqTpvbL5xBSUCHmAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmSo-00000003db4-16pI;
	Fri, 16 Oct 2026 18:15:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmSn-00000003dad-36qq
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 18:15:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C492760A8C;
	Fri, 16 Oct 2026 18:15:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2376F1F000C4;
	Fri, 16 Oct 2026 18:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792174528;
	bh=g3838epcQ90A4CFP6/f2+EZAMF2xkCMDkMhALJrr/mY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nA6JeHP2oyu00Kgv3l2gEHiC57jXJgUCN207hcuAtjMVRMBbXRHHiKR0y2hV/n45H
	 H7HixgdCxFd7A8RCeJF5uYuc3mevFzTvHfgYEr3GhDHNMGqYoe0MZLtgWnrnrV/Gdt
	 El/qmczI/Mm66XaBsNnZwBr68KbvBpeTYjUiKogiXkHw6tWK9pOwGeWXPBLvENW31s
	 wbYj0NndaXnw+KZMwDdf1RPiIU59zxigT1FfNBhMVIFk5w51dOC3nUHOC4vqTw9/Qo
	 XwzIaRvMlvUHZO92YId7aPBDJTmibLoefonZzUIR77OthdObq2N318iipYtZV+mQz+
	 Gu96m2raPY21A==
Message-ID: <sashiko-outbox-174758@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 2/6] phy: realtek: usb2: introduce read and write
 functions to phy_reg_desc struct
To: "Rustam Adilov" <adilov@disroot.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016180314.31760-3-adilov@disroot.org>
References: <20261016180314.31760-1-adilov@disroot.org>
 <20261016180314.31760-3-adilov@disroot.org>
Date: Fri, 16 Oct 2026 18:15:26 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogbWlzc2luZyBO
VUxMIGNoZWNrIGZvciBvZl9pb21hcCgpIGluIHBhcnNlX3BoeV9kYXRhKCkKLS0KCmNvbW1pdCBh
OTUyODIxM2MyYWRlMzg3ZDIyNTJkNTI2ZTJlMWUyYzIxNjJlZWJhCkF1dGhvcjogUnVzdGFtIEFk
aWxvdiA8YWRpbG92QGRpc3Jvb3Qub3JnPgoKcGh5OiByZWFsdGVrOiB1c2IyOiBpbnRyb2R1Y2Ug
cmVhZCBhbmQgd3JpdGUgZnVuY3Rpb25zIHRvIHBoeV9yZWdfZGVzYyBzdHJ1Y3QKClJUTDk2MDdD
IGlzIGEgYmlnIGVuZGlhbiBTb0Mgd2l0aCBsaXR0bGUgZW5kaWFuIFVTQiBob3N0IGNvbnRyb2xs
ZXIgYnV0CnZzdGF0dXMgcmVnaXN0ZXIgaXMgZnJvbSBiaWcgZW5kaWFuIG1lbW9yeSByZWdpb24g
YW5kIHRodXMgZXhpc3RpbmcKd3JpdGVsIGRvZXNuJ3Qgd29yay4gSXQgbmVlZHMgZWl0aGVyIF9f
cmF3X3dyaXRlbCBvciBpb3dyaXRlMzJiZQppbnN0ZWFkLgoKVG8gaGFuZGxlIHRoaXMgc2l0dWF0
aW9uLCBpbnRyb2R1Y2UgcmVhZCBhbmQgd3JpdGUgZnVuY3Rpb24gdG8gdGhlCnBoeV9yZWdfZGVz
YyBzdHJ1Y3QgYW5kIGFkZCBhIGRlZmF1bHQgdmFyaWF0aW9uIHRoYXQgaXMgZ29pbmcgdG8gYmUK
cG9udGVkIGJ5IHRoZSBleGlzdGluZyBydGRfcGh5X3JlZ19kZXNjLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsv
cGh5LXJ0ay11c2IyLmMKPiBpbmRleCBlOGQwZjAxMTllYzBhLi41ZTQ4M2M4NTNmMDJmIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jClsgLi4uIF0KPiBAQCAtMjA0LDggKzIxNiw4
IEBAIHN0YXRpYyBpbnQgcnRrX3BoeV93cml0ZShzdHJ1Y3QgcGh5X3JlZyAqcGh5X3JlZywgY2hh
ciBhZGRyLCBjaGFyIGRhdGEpCj4gIAlpbnQgcmV0ID0gMDsKPiAgCj4gIAkvKiB3cml0ZSBkYXRh
IHRvIFZTdGF0dXNPdXQyIChkYXRhIG91dHB1dCB0byBwaHkpICovCj4gLQl3cml0ZWwoKHUzMilk
YXRhIDw8IHNoaWZ0X2JpdHMsCj4gLQkgICAgICAgcmVnX3dyYXBfdnN0YXR1cyArIHJlZ19kZXNj
LT52c3RhdHVzX29mZnNldCk7Cj4gKwlyZWdfZGVzYy0+d3JpdGUoKHUzMilkYXRhIDw8IHNoaWZ0
X2JpdHMsCj4gKwkJICAgICAgIHJlZ193cmFwX3ZzdGF0dXMgKyByZWdfZGVzYy0+dnN0YXR1c19v
ZmZzZXQpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSByaXNrIGRlcmVmZXJlbmNp
bmcgYSBOVUxMIHBvaW50ZXIgaWYgb2ZfaW9tYXAoKSBmYWlscz8KCkluIHBhcnNlX3BoeV9kYXRh
KCksIHRoZSByZXN1bHRzIG9mIG9mX2lvbWFwKCkgYXJlIGFzc2lnbmVkIHRvIGJvdGgKcmVnX3dy
YXBfdnN0YXR1cyBhbmQgcmVnX2d1c2IycGh5YWNjMCB3aXRob3V0IGJlaW5nIGNoZWNrZWQgZm9y
IE5VTEw6CgpwYXJzZV9waHlfZGF0YSgpIHsKICAgIC4uLgogICAgcGh5X3BhcmFtZXRlci0+cGh5
X3JlZy5yZWdfd3JhcF92c3RhdHVzID0gb2ZfaW9tYXAobnAsIDApOwogICAgcGh5X3BhcmFtZXRl
ci0+cGh5X3JlZy5yZWdfZ3VzYjJwaHlhY2MwID0gb2ZfaW9tYXAobnAsIDEpICsgaW5kZXg7CiAg
ICAuLi4KfQoKTGF0ZXIsIGluIHJ0a19waHlfd3JpdGUoKSwgdGhlIHJlZ193cmFwX3ZzdGF0dXMg
cG9pbnRlciBpcyBkZXJlZmVyZW5jZWQgaGVyZQp3aGVuIHdyaXRpbmcgdG8gdGhlIHJlZ2lzdGVy
LiBTaG91bGQgd2UgdmVyaWZ5IHRoYXQgdGhlIGRldmljZSB0cmVlIG1lbW9yeQptYXBwaW5ncyB3
ZXJlIHN1Y2Nlc3NmdWwgYmVmb3JlIHRoZXkgYXJlIHVzZWQ/CgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDE2MTgwMzE0LjMxNzYw
LTEtYWRpbG92QGRpc3Jvb3Qub3JnP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
