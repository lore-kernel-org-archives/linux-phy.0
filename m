Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A893CD4F52
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 10:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pwjGSrSr4MoTWmWtLN7BcJU5ilnPEPl03mhM+23RdM=; b=DJb42YdXGPraoC
	z0GgW2FY8NL4ugUIVjRzkAlKlVTU/QUDI1+vnF0X2cxOMQfrFF06yBzdoca2V/nRcZ7/WI9xYaPdH
	PxEtMqCK8i6a/wxCQOZ9ZxeIXmv7Bdpjmxg3xhmFqrILE0PevwqZK/rFmjue1ONyrih8fVh5ErbMW
	odJNxkEMbC90GNeXv5yGIlqDZilYeXEJ756ySxO6oM9m/J/wznpqpMU9+vCZLIp+YCIcPVPdwNxbI
	T9ISBJTBexCuKrMU2MtNuU6sFKLSFM1iJSF8SmkoCNc5031Fa/0t2Su8VYNxPh4qHYgOp1qTSJQme
	5y9dGZvztFBXLQiFXawA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvVu-0000000FJBL-2z46;
	Mon, 18 May 2026 10:47:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvVq-0000000FJA4-3Jvw
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 10:47:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6E094445C1;
	Mon, 18 May 2026 10:47:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0F5DC2BCC6;
	Mon, 18 May 2026 10:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779101274;
	bh=15Lrki1qnue4iCVlWxRlamDE2lMl6PPjO95TQJWLv9Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=UMaa6bdCoBvqnIs0zEFu5QT/pGkcP5GN1FuBkF79jRhT7CrA8LHyJO1/7thsg5iuF
	 A3qbrBfSRzjNoVT7qdu9EoV1B6XwNBIYvVbn1f44NGtsjxUmnaJsoJKDpdajiUCKcA
	 kIEjPhuAynhRx4j+gQpba5FfBgEqkgeFgws1ml3lWWrIY+62IBzDkBABQNjjJeMKMt
	 /Xbf+GfoaNfuSrP5LHrM8xaSof55VhWqhRVWIWqRq1eqPBy25IHCIfnpcQnITQDRDK
	 H3OLU4kQNJfkhw5/waoyTEfi2+TzVbm/79z+2Av1ByUQY4wFP2idP+/+m3l6QSZ5sR
	 JlnLQeeweIQgw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E
 description for USB4
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260518-topic-usb4phy-v1-1-71d827c49dca@oss.qualcomm.com>
References: <20260518-topic-usb4phy-v1-1-71d827c49dca@oss.qualcomm.com>
Date: Mon, 18 May 2026 10:47:53 +0000
Message-Id: <20260518104753.F0F5DC2BCC6@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_034754_867326_1703D755 
X-CRM114-Status: UNSURE (   8.77  )
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGJpbmRpbmcgaW5j
b3JyZWN0bHkgcmVsYXhlcyBjbG9jayBjb25zdHJhaW50cyBieSBncm91cGluZyAneDFlODAxMDAn
IHdpdGggJ3NjNzE4MCcgYW5kICdzZG04NDUnIGFuZCBnbG9iYWxseSBjaGFuZ2luZyB0aGUgNXRo
ICdjbG9jay1uYW1lcycgaXRlbSB0byBhbiBlbnVtLgotLQoKY29tbWl0IDU0ZDFmMGZkMjM0NmQw
ZGJmNDg2Y2E1MjEyNzY3YWQzM2Y1OWZkZTAKQXV0aG9yOiBLb25yYWQgRHliY2lvIDxrb25yYWQu
ZHliY2lvQG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBxY29tLHFtcC11c2Iz
LWRwOiBFeHRlbmQgWDFFIGRlc2NyaXB0aW9uIGZvciBVU0I0CgpUaGlzIGNvbW1pdCBleHRlbmRz
IHRoZSBRTVAgY29tYm8gUEhZIGJpbmRpbmcgZm9yIFgxRTgwMTAwIHRvIHN1cHBvcnQgVVNCNApj
b21tdW5pY2F0aW9uLiBJdCB1cGRhdGVzIHRoZSBzY2hlbWEgdG8gYWxsb3cgYSBuZXcgY2xvY2ss
IFAyUlIyUCwgd2hpY2ggaXMKcmVxdWlyZWQgZm9yIHN3aXRjaGluZyB0byBVU0I0IG1vZGUsIGFu
ZCBhZGRzIGEgY29ycmVzcG9uZGluZyBkZWZpbml0aW9uLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2I0M2Rw
LXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNj
ODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1sCj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1sCj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFt
cC11c2I0M2RwLXBoeS55YW1sCj4gQEAgLTUyLDcgKzUyLDcgQEAgcHJvcGVydGllczoKPiAgICAg
ICAgLSBjb25zdDogcmVmCj4gICAgICAgIC0gY29uc3Q6IGNvbV9hdXgKPiAgICAgICAgLSBjb25z
dDogdXNiM19waXBlCj4gLSAgICAgIC0gY29uc3Q6IGNmZ19haGIKPiArICAgICAgLSBlbnVtOiBb
IHAycnIycF9waXBlLCBjZmdfYWhiIF0KCkRvZXMgdGhpcyBnbG9iYWwgZW51bSBjaGFuZ2UgaW5h
ZHZlcnRlbnRseSByZWxheCB0aGUgY29uc3RyYWludCBmb3IgYWxsCnZhcmlhbnRzPwoKSXQgYXBw
ZWFycyB0aGF0IG9sZGVyIHZhcmlhbnRzIHdoaWNoIHByZXZpb3VzbHkgc3RyaWN0bHkgcmVxdWly
ZWQgY2ZnX2FoYgpjb3VsZCBub3cgcGFzcyBzY2hlbWEgdmFsaWRhdGlvbiB1c2luZyBwMnJyMnBf
cGlwZSBpbnN0ZWFkLCBhbmQgdmljZSB2ZXJzYS4KClsgLi4uIF0KCj4gQEAgLTE4Niw2ICsxODYs
NyBAQCBhbGxPZjoKPiAgICAgICAgICAgIGVudW06Cj4gICAgICAgICAgICAgIC0gcWNvbSxzYzcx
ODAtcW1wLXVzYjMtZHAtcGh5Cj4gICAgICAgICAgICAgIC0gcWNvbSxzZG04NDUtcW1wLXVzYjMt
ZHAtcGh5Cj4gKyAgICAgICAgICAgIC0gcWNvbSx4MWU4MDEwMC1xbXAtdXNiMy1kcC1waHkKPiAg
ICAgIHRoZW46Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAgICAgY2xvY2tzOgoKU2hvdWxk
IHgxZTgwMTAwIGJlIHBsYWNlZCBpbiBpdHMgb3duIGlmL3RoZW4gYmxvY2s/CgpHcm91cGluZyB4
MWU4MDEwMCB3aXRoIHNjNzE4MCBhbmQgc2RtODQ1IG1lYW5zIHRoZSBzY2hlbWEgb25seSBlbmZv
cmNlcyB0aGUKbWF4aW11bSBudW1iZXIgb2YgaXRlbXMsIGJ1dCBkb2Vzbid0IHN0cmljdGx5IHRp
ZSB0aGUgNXRoIGNsb2NrIHRvIHRoZQpzcGVjaWZpYyBoYXJkd2FyZSBnZW5lcmF0aW9uLiBBIHNl
cGFyYXRlIGJsb2NrIHdvdWxkIGVuc3VyZSB4MWU4MDEwMCBpcwpyZXN0cmljdGVkIHRvIHAycnIy
cF9waXBlLCB3aGlsZSB0aGUgb2xkZXIgdmFyaWFudHMgcmVtYWluIHJlc3RyaWN0ZWQgdG8KY2Zn
X2FoYi4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA1MTgtdG9waWMtdXNiNHBoeS12MS0wLTcxZDgyN2M0OWRjYUBvc3MucXVhbGNv
bW0uY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
