Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 316B1C021A0
	for <linux-phy@archiver.kernel.org>; Sat, 15 Feb 2025 10:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVdgnUBcEvXT5rByZEofnvpl24k9dD2VYFkJw6WxM4k=; b=mrtSjt393QAUfB
	dstBIbfG+dXzJNkECGTwUhKLsvLPgibGiHjn5AQqK+nNjMWruiAtXSVsYaANVKrnGuFhCdtoPey6J
	lvLquc9LBiF41JXExzoRnTeTrBAOjsmnUdSEMsCuIf3ZLxU9i5w+KY6TH382WPHIoJrtTBglWuXx2
	6AoyGvX44prHgeXn95iYd4m7/c7a21HHbrfMNv1H79nVYWdR7HbRGozzSdQuXDAt3EAP/6gGI989Z
	wlLZTOW1jU+T2Od1qwGwZgurkkRp7UKBtNHdQxtnw+AP7KQX4GOFbb8xXo7uBAJ+xW82IRXZfyEcq
	bNl7cpvWmLTBrqgrkHWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjFBD-0000000HQGI-2Mi8;
	Sat, 15 Feb 2025 10:13:47 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjF5Y-0000000HPRj-0ETd;
	Sat, 15 Feb 2025 10:07:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F1430A4034E;
	Sat, 15 Feb 2025 10:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 536A4C4CEDF;
	Sat, 15 Feb 2025 10:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739614074;
	bh=tIDU56jo1s+8ObGKmjKkETRM71pM0ipfljqXskOq1B8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qi/k3+A5Xa5039kXxfQKobZt5SEFykpdULmJVuAdf4Ztgd36omY3Lf+bxJhlx/VbV
	 WRsJpETiz1GYv450e5jyBRJ0e36rg68oYKFoBG11lZUzzgoyBfHdZfgtXurhXNocCt
	 dDOavZy8T4laQniqN+x2AsMc+C5lJ4t1VjWjKH0pZGZsJFJaLZApzg2Abu6wwbYsqj
	 39x2PBOWshqbq0xE7dylOxaEeUyaSrgJ85bpdCVQIqfB+kRAzNuV8jPB/1M4iUkZ0f
	 E++o3Rzp1T3cGznja9cbYRX/irFPEtl2BO//q+2Tbh1CKpAmMAjBMfKN3wJQw7yUvq
	 QYrckA0bbRP+g==
Message-ID: <7c0dcf24-187c-4dc8-aa4a-4a8f814775b2@kernel.org>
Date: Sat, 15 Feb 2025 11:07:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <CGME20241206163109eucas1p12aea3a9a6c404cd7c678009ea11aa5b3@eucas1p1.samsung.com>
 <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>
 <3c0b77e6-357d-453e-8b63-4757c3231bde@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <3c0b77e6-357d-453e-8b63-4757c3231bde@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_020756_227433_E24DB793 
X-CRM114-Status: GOOD (  18.09  )
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

T24gMTQvMDIvMjAyNSAyMDozMCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBPbiAwNi4xMi4y
MDI0IDE3OjMxLCBBbmRyw6kgRHJhc3ppayB3cm90ZToKPj4gZ3MxMDEncyBTUyBwaHkgbmVlZHMg
dG8gYmUgY29uZmlndXJlZCBkaWZmZXJlbnRseSBiYXNlZCBvbiB0aGUKPj4gY29ubmVjdG9yIG9y
aWVudGF0aW9uLCBhcyB0aGUgU1MgbGluayBjYW4gb25seSBiZSBlc3RhYmxpc2hlZCBpZiB0aGUK
Pj4gbXV4IGlzIGNvbmZpZ3VyZWQgY29ycmVjdGx5Lgo+Pgo+PiBUaGUgY29kZSB0byBoYW5kbGUg
cHJvZ3JhbW1pbmcgb2YgdGhlIG11eCBpcyBpbiBwbGFjZSBhbHJlYWR5LCB0aGlzIGNvbW1pdAo+
PiBub3cgYWRkcyB0aGUgbWlzc2luZyBwaWVjZXMgdG8gc3Vic2NyaWJlIHRvIHRoZSBUeXBlLUMg
b3JpZW50YXRpb24KPj4gc3dpdGNoIGV2ZW50Lgo+Pgo+PiBOb3RlIHRoYXQgZm9yIHRoaXMgYWxs
IHRvIHdvcmsgd2UgcmVseSBvbiB0aGUgVVNCIGNvbnRyb2xsZXIKPj4gcmUtaW5pdGlhbGlzaW5n
IHVzLiBJdCBzaG91bGQgaW52b2tlIG91ciAuZXhpdCgpIHVwb24gY2FibGUgdW5wbHVnLCBhbmQK
Pj4gZHVyaW5nIGNhYmxlIHBsdWcgd2UnbGwgcmVjZWl2ZSB0aGUgb3JpZW50YXRpb24gZXZlbnQg
YWZ0ZXIgd2hpY2ggd2UKPj4gZXhwZWN0IG91ciAuaW5pdCgpIHRvIGJlIGNhbGxlZC4KPj4KPj4g
QWJvdmUgcmVpbml0aWFsaXNhdGlvbiBoYXBwZW5zIGlmIHRoZSBEV0MzIGNvbnRyb2xsZXIgY2Fu
IGVudGVyIHJ1bnRpbWUKPj4gc3VzcGVuZCBhdXRvbWF0aWNhbGx5LiBGb3IgdGhlIERXQzMgZHJp
dmVyLCB0aGlzIGlzIGFuIG9wdC1pbjoKPj4gICAgICBlY2hvIGF1dG8gPiAvc3lzL2RldmljZXMv
Li4uLzExMTEwMDAwLnVzYi9wb3dlci9jb250cm9sCj4+IE9uY2UgZG9uZSwgdGhpbmdzIHdvcmsg
YXMgbG9uZyBhcyB0aGUgVURDIGlzIG5vdCBib3VuZCBhcyBvdGhlcndpc2UgaXQKPj4gc3RheXMg
YnVzeSBiZWNhdXNlIGl0IGRvZXNuJ3QgY2FuY2VsIC8gc3RvcCBvdXRzdGFuZGluZyBUUkJzLiBG
b3Igbm93Cj4+IHdlIGhhdmUgdG8gbWFudWFsbHkgdW5iaW5kIHRoZSBVREMgaW4gdGhhdCBjYXNl
Ogo+PiAgICAgICBlY2hvICIiID4gc3lzL2tlcm5lbC9jb25maWcvdXNiX2dhZGdldC8uLi4vVURD
Cj4+Cj4+IE5vdGUgdGhhdCBpZiB0aGUgb3JpZW50YXRpb24tc3dpdGNoIHByb3BlcnR5IGlzIG1p
c3NpbmcgZnJvbSB0aGUgRFQsCj4+IHRoZSBjb2RlIHdpbGwgYmVoYXZlIGFzIGJlZm9yZSB0aGlz
IGNvbW1pdCAobWVhbmluZyBmb3IgZ3MxMDEgaXQgd2lsbAo+PiB3b3JrIGluIFNTIG1vZGUgaW4g
b25lIG9yaWVudGF0aW9uIG9ubHkpLiBPdGhlciBwbGF0Zm9ybXMgYXJlIG5vdAo+PiBhZmZlY3Rl
ZCBlaXRoZXIgd2F5Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUu
ZHJhc3ppa0BsaW5hcm8ub3JnPgo+Pgo+PiAtLS0KPj4gdjM6Cj4+ICogZHJvcCBpbml0IHRvIC0x
IG9mIHBoeV9kcmQtPm9yaWVudGF0aW9uIChWaW5vZCkKPj4gKiBhdm9pZCAjaWZkZWYgYW5kIHN3
aXRjaCB0byBub3JtYWwgY29uZGl0aW9uYWwgSVNfRU5BQkxFRCgpIGZvcgo+PiAgICBDT05GSUdf
VFlQRUMKPj4KPj4gdjI6Cj4+ICogbW92ZSAjaW5jbHVkZSB0eXBlY19tdXguaCBmcm9tIHBhcmVu
dCBwYXRjaCBpbnRvIHRoaXMgb25lIChQZXRlcikKPj4gLS0tCj4+ICAgZHJpdmVycy9waHkvc2Ft
c3VuZy9LY29uZmlnICAgICAgICAgICAgICB8ICAxICsKPj4gICBkcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jIHwgNTYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2Nv
bmZpZwo+PiBpbmRleCBmMTBhZmEzZDdmZjUuLmZjN2JkMTA4ODU3NiAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcv
S2NvbmZpZwo+PiBAQCAtODAsNiArODAsNyBAQCBjb25maWcgUEhZX0VYWU5PUzVfVVNCRFJECj4+
ICAgCXRyaXN0YXRlICJFeHlub3M1IFNvQyBzZXJpZXMgVVNCIERSRCBQSFkgZHJpdmVyIgo+PiAg
IAlkZXBlbmRzIG9uIChBUkNIX0VYWU5PUyAmJiBPRikgfHwgQ09NUElMRV9URVNUCj4+ICAgCWRl
cGVuZHMgb24gSEFTX0lPTUVNCj4+ICsJZGVwZW5kcyBvbiBUWVBFQyB8fCAoVFlQRUM9biAmJiBD
T01QSUxFX1RFU1QpCgpCVFcsIHRoaXMgc3ludGF4IG5ldmVyIG1hZGUgYW55IHNlbnNlIC0gaXQg
ZGlkIG5vdCB3b3JrLiBUaGUgb3B0aW9uYWwKZGVwZW5kZW5jeSBpcyBleHByZXNzZWQgYXM6Cglk
ZXBlbmRzIG9uIFRZUEVDIHx8ICFUWVBFQwoKYnV0IHdoYXQgaXQgZXB4cmVzc2VkIGlzIHRoYXQg
aXQgaXMgcG9zc2libGUgdG8gYnVpbGQgaXQgd2l0aG91dCB0eXBlYwpvbmx5IGZvciBjb21waWxl
IHRlc3QsIHdoaWNoIGlzIG9kZCBpZiB0aGlzIHdhcyBtZWFudCB0byBiZSBvcHRpb25hbC4KQW5k
IGZ1cnRoZXIgY29kZToKCWlmICghSVNfRU5BQkxFRChDT05GSUdfVFlQRUMpKQoKY2xlYXJseSBz
dWdnZXN0cyB0aGlzIHNob3VsZCBiZSBvcHRpb25hbC4KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRv
ZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
