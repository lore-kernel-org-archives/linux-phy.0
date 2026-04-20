Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72C08F588F2
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzyPolpJrct9dN8nzcToKk7ElZw8FsuTWa+UxoPu6bA=; b=fwBkDXS/o3TCm4
	7KUssGUE0XeOEztVT2E2oLpCjEB68Mvq7A8h+cTunxfppEv/TjzjgFqQxno5PnHkXCY+kid1Ong/8
	MwmHHxptwSxILEpC6D/zviP1jrKoffjw7Ntszm0QXwz4508dCJc4FGvYqex/YlpORDL3E8UJL6uWt
	hST1+0Mmk42+NKEU+q06C9i9T8pVDWcuSOVSECFBYKzW8SMsxZWQ2VCBDPL2KnWYYgZvOV9TzNbEn
	5wle2BBBPJv3qeGgHuEkrEO+z35QVHwCBZeX0FkyikUAl3Suys9FSc033b8OHXDwL3J/WtvBDCW6G
	Ypyk/Kw8Jjw7yDidfbhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wErqy-00000007SW7-0Mrz;
	Mon, 20 Apr 2026 16:52:08 +0000
Received: from mail.lvkasz.us ([2a01:4f8:c0c:b86d::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wErqv-00000007SUw-283i;
	Mon, 20 Apr 2026 16:52:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lvkasz.us; s=vps;
	t=1776703920; bh=2IHn37+cMsbWYkDsy6cJEMCnVMxpyEd3hiZhGarHxt4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gSf26RAzleLxCuDaz1ZlUE6GSUTBEsw+vqGcDicob5TfGtK4hlqYFantxpgi4Q+BX
	 hNGMlh1tqvCwWF88GDM3ZZOxdhbLq2NWlN9NYEs/QFOoaQCe3XFw+w4SOYeIvSNzj+
	 tQ0M0F2EK3nrGwrqO8dQ/9Vw9OAe+jLY/PeAkrarK1qS2XQP2hBd+V7cqImsg+3gPi
	 wZJhMIP92WpYu8GLvV1ryQHld3iC9UQ9KFBEM20gch8NPkHPIvfDe2KgG+r4VdyYX/
	 PgylcGPBA3EGvcy6jEQJVWI4v/cAYbLpDxVdd9WPUFkJ6FbsNNM2xdQN5sI6m84pQJ
	 P0cmFVvrl5xzA==
Received: from [10.30.1.147] (5.185.72.109.ipv4.public.orange.pl [5.185.72.109])
	by mail.lvkasz.us (Postfix) with ESMTPSA id 36A60E061C;
	Mon, 20 Apr 2026 18:51:59 +0200 (CEST)
Message-ID: <84f4bc8a-f94d-495e-9ab2-7997798953c2@lvkasz.us>
Date: Mon, 20 Apr 2026 18:51:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: exynos5-usbdrd: fix USB 2.0 HS PHY tuning values
 for Exynos7870
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org, krzk@kernel.org, alim.akhtar@samsung.com,
 andre.draszik@linaro.org, pritam.sutar@samsung.com, kauschluss@disroot.org,
 johan@kernel.org, ivo.ivanov.ivanov1@gmail.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260406135627.234835-1-kernel@lvkasz.us>
Content-Language: en-US, pl-PL
From: =?UTF-8?B?xYF1a2FzeiBMZWJpZWR6acWEc2tp?= <kernel@lvkasz.us>
In-Reply-To: <20260406135627.234835-1-kernel@lvkasz.us>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_095205_741893_896D7797 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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

T24gNC82LzI2IDE1OjU2LCDFgXVrYXN6IExlYmllZHppxYRza2kgd3JvdGU6Cj4gVGhlIGV4aXN0
aW5nIFBIWVBBUkFNMCB0dW5pbmcgdmFsdWVzIGZvciBFeHlub3M3ODcwIGFyZSBpbmNvcnJlY3Qs
Cj4gY2F1c2luZyB0aGUgVVNCIDIuMCBQSFkgdG8gZmFpbCBoaWdoLXNwZWVkIG5lZ290aWF0aW9u
IGFuZCBmYWxsIGJhY2sKPiB0byBmdWxsLXNwZWVkICgxMk1icHMpIG9wZXJhdGlvbi4KPiAKPiBG
aXggVFhWUkVGVFVORSAodHJhbnNtaXR0ZXIgdm9sdGFnZSByZWZlcmVuY2UpIGZyb20gMTQgdG8g
MywKPiBUWFJFU1RVTkUgKHRyYW5zbWl0dGVyIGltcGVkYW5jZSkgZnJvbSAzIHRvIDIsIGFuZCBT
UVJYVFVORQo+IChzcXVlbGNoIHRocmVzaG9sZCkgZnJvbSA2IHRvIDUuIEFsc28gZXhwbGljaXRs
eSBzZXQKPiBUWFBSRUVNUFBVTFNFVFVORSB0byAwLCB3aGljaCB3YXMgcHJldmlvdXNseSBtaXNz
aW5nIGZyb20gdGhlCj4gdHVuaW5nIHRhYmxlIGRlc3BpdGUgYmVpbmcgaW5jbHVkZWQgaW4gdGhl
IHJlZ2lzdGVyIG1hc2suCj4gCj4gQWxsIHZhbHVlcyBhcmUgZGVyaXZlZCBmcm9tIHRoZSB2ZW5k
b3Iga2VybmVsIGZvciB0aGUgU2Ftc3VuZwo+IEdhbGF4eSBBNiAoU00tQTYwMEZOKSwgYXMgbm8g
cHVibGljIGhhcmR3YXJlIGRvY3VtZW50YXRpb24gaXMKPiBhdmFpbGFibGUgZm9yIHRoZSBFeHlu
b3M3ODcwIFVTQiBEUkQgUEhZLiBXaXRoIHRoZXNlIGNvcnJlY3Rpb25zLAo+IHRoZSBQSFkgc3Vj
Y2Vzc2Z1bGx5IG5lZ290aWF0ZXMgaGlnaC1zcGVlZCAoNDgwTWJwcykgb3BlcmF0aW9uLgo+IAo+
IEZpeGVzOiA1ODhkNWQyMGNhOGQgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBhZGQgZXh5bm9zNzg3
MCBVU0JEUkQgc3VwcG9ydCIpCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBUZXN0ZWQt
Ynk6IEthdXN0YWJoIENoYWtyYWJvcnR5IDxrYXVzY2hsdXNzQGRpc3Jvb3Qub3JnPgo+IFJldmll
d2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFs
Y29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBMZWJpZWR6acWEc2tpIDxrZXJuZWxA
bHZrYXN6LnVzPgoKRnJpZW5kbHkgcGluZy4KCkknZCBhbHNvIGxpa2UgdG8gbWVudGlvbiB0aGF0
IHRoaXMgcGF0Y2ggd2FzIHRlc3RlZCBvbiB0d28gZGV2aWNlczoKU2Ftc3VuZyBHYWxheHkgQTYg
KFNNLUE2MDBGTikgYnkgbWUgYW5kIFNhbXN1bmcgR2FsYXh5IEo2IChTTS1KNjAwRk4pCmJ5IEth
dXN0YWJoIENoYWtyYWJvcnR5IDxrYXVzY2hsdXNzQGRpc3Jvb3Qub3JnPi4KCgpSZWdhcmRzLArF
gXVrYXN6CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
