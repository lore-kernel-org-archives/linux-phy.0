Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B75BEC02198
	for <linux-phy@archiver.kernel.org>; Sun, 16 Feb 2025 13:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAEupbvGJwI8pJgbloxMKc791qsU3/kprxyqLCzWVQQ=; b=ie78ZRRcaUTqz8
	NTbTxJBNH/NWJEW0FzLNXFCM0huu22xRBWVxHRa6cF4NLsu1HVt1JNlo6tKd6vex6wlKPVOzXvHGp
	l+33WTD4v2yCAn7h4FcaZOmSnWkx4LC/6sgx/T0TzgyQrZo5SeGbP15go6Vl/djuGaKmjRZRwG0Je
	objvIJ/UMFYWsCqLONeyHWMmonQvBn54Ut5Vi3YO+ZJzcilhpbxC1oEZue5h99O+1XBz50B4Pmmoe
	H5MTJGxbb7rkQGKckhV+nv0qHrPjlqgFs69YbPVAVxZaafWm4yeX0DaukSH6yonGsX/9/FZXLaFRk
	g46brEa2GGpVYEK+SEKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjfAe-00000001tjC-1ZLZ;
	Sun, 16 Feb 2025 13:58:56 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjf9A-00000001tY0-1Nyz;
	Sun, 16 Feb 2025 13:57:25 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-43690d4605dso21728005e9.0;
        Sun, 16 Feb 2025 05:57:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739714242; x=1740319042; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yJMYNx5xh9JOrzEUO5t5CueFCzDt0HEwgJdTTyYg3Z8=;
        b=Yq1O2aDAQJaYmxAQtXSqHsBPiovlp9y4zJxlYCWA/RmgScIQAOC3uRnZ/nOe/gk+XN
         +MjBxSxC3GkNfzIPHbFdwctLfj1daUMLxqVIBvcVV4R1lJzoj6Z4bgC/Lc14LYzLN5uE
         y3+A76eRcH9O5ph/ZStsWjK3pm33xyo7MoAfuRSHtFhy+q1i6T8C3FzVw+PW/S/eQ9Dv
         2CzaSuGlgTmiakk+fHjjprYH20/G8M/WiWFirQUkuXRoG+NFLw/mu2ZXGOUqHSuTyn74
         LXycbtF/8E15J6y5xsF18qTMjpwnZsBVqcbgV9I4H2BcmIfKn79IKDpe4czoCZjiTmep
         cl/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739714242; x=1740319042;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yJMYNx5xh9JOrzEUO5t5CueFCzDt0HEwgJdTTyYg3Z8=;
        b=jxdnF2CyMwfjIauyVKjWRO5PTAMcbhSZyj/vxe7XYH9nw+cDXSnxqYFmGNba3f7DBp
         FyXSwFoFjZfKlxNJ12x0YlMlrh3mLD2rXKzl/umDRD+3L58WBotF61BhNayZRuWjHN6d
         4TMbfstWR0+4BiFrZ/rCkUus0MRUKVNWGmL7LAojtNqIrEkr+7toZu6hmkQnp+FXLiSp
         Oyy2YHtXffEan18PT091PD7wwoxhsnB/9T+J0BWp5uGAvC7Xm4vs2yvx+vEsXu8KzNsx
         Jzsrke9tgFKaRYQXUhf7n8DynPV7g4oTqiiQX5KeYXGmz1P+VNptvOdgwSm/rQC0CjHD
         /w5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUJKaBk8QbbxyI1wef/0slrDOtpy53+GsRTrJ+B9BzxPA5vkBqlg6pUrd0CM/oognjAiHt2SaeNeWg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/oY1WIgfSw2ryV1UxOFAPJ8q0cApXuqv9Yj7rHgZcrxjunJi7
	ndYV1Vh0xPtnXkhgyY+xDhO+i25jS1pZEHts/VcKl8J2dllWIXI8
X-Gm-Gg: ASbGncs/1vz7uk6A9ecVG/TifNCwqTlDRWUtoKsLKXeWHYWmU+qAw9AbpyzW3mWtQJJ
	9X97vUgjX+wuU9vupV74jLWZwdx9mDWgU8WtEHJlut4HL2GD4PPRNvO0/onmroDX8EoBf4crUhB
	yebi3kx01wYx2i9QZ79m7/6LeuPrsX1zLB+1aBfukLFxhgx/4cn1dj/Y6H9fEkf1jbO5Rx25NQA
	cpqUj7+v8EyRB7WmtqM78CbOp4SGe5chiigOlvUKcgcNK/VWfgd7J97i0LzGlDgVIWe52FpSkyf
	tomypAK4x8xfyoqIoaJr/Jb/jYiskfG3QWxEF8b6ybX1uh/KYeJeESsw7f0gaWmyE+zSkA==
X-Google-Smtp-Source: AGHT+IFH9P92DQEv+xDDvDm9W5ccn+THKcRoWXfgct7p20f+QmQCJMvkd68mMzwjnpUEl/jDGCrMHg==
X-Received: by 2002:a05:600c:4450:b0:434:a525:7257 with SMTP id 5b1f17b1804b1-4396e750cd8mr46356975e9.21.1739714241511;
        Sun, 16 Feb 2025 05:57:21 -0800 (PST)
Received: from [192.168.1.105] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f8602sm9959504f8f.94.2025.02.16.05.57.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Feb 2025 05:57:21 -0800 (PST)
Message-ID: <cc6fc19e-cdcb-42bb-ba68-555cb8a9cbf5@gmail.com>
Date: Sun, 16 Feb 2025 15:57:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] phy: samsung: add Exynos2200 SNPS eUSB2 driver
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250215122409.162810-1-ivo.ivanov.ivanov1@gmail.com>
 <20250215122409.162810-4-ivo.ivanov.ivanov1@gmail.com>
 <a10f8a77-9440-477d-b6f6-9d651e3ab49a@kernel.org>
 <537698af-841f-48e7-bd7c-4077d0a240a1@gmail.com>
 <9b58a985-3d63-42bb-9a76-e5b04a4b6012@kernel.org>
 <f3d38b63-dc97-482e-aeac-b59e65f91424@gmail.com>
 <065ea296-480c-4ac4-bb4a-0fc2915b59f1@kernel.org>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <065ea296-480c-4ac4-bb4a-0fc2915b59f1@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_055724_387014_2BC2DB1B 
X-CRM114-Status: GOOD (  24.70  )
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

T24gMi8xNi8yNSAxNToxOSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAxNi8wMi8y
MDI1IDEwOjUxLCBJdmF5bG8gSXZhbm92IHdyb3RlOgo+Pj4+PiAgWW91IG5lZWQgdG8KPj4+Pj4g
aW50ZWdyYXRlIHRoZSBjaGFuZ2VzLCBub3QgY3JlYXRlIGR1cGxpY2F0ZWQgZHJpdmVyLgo+Pj4+
IEkgY2FuIGRvIHRoYXQsIGJ1dCBpdCB3b3VsZCBiZSBjb21lIGEgYml0IGNsdXR0ZXJlZCwgd29u
J3QgaXQ/IERlcGVuZHMgb24KPj4+PiBpZiB3ZSB3YW50IHRvIGZvbGxvdyB0aGUgY3VycmVudCBv
ZW0tcHJvdmlkZWQgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2UsIG9yCj4+Pj4gdHJ5IGFuZCBmdWxs
eSByZXVzZSB3aGF0IHdlIGhhdmUgaW4gdGhlcmUuCj4+PiBJIHRoaW5rIGl0IGR1cGxpY2F0ZXMg
YSBsb3QsIHNvIGl0IHdvbid0IGJlIGNsdXR0ZXIuIFdlIGhhdmUgbWFueQo+Pj4gZHJpdmVycyBo
YXZpbmcgY29tbW9uIGNvZGUgYW5kIHBlci12YXJpYW50IG9wcy4KPj4gU28gdGhlIGFwcHJvYWNo
IHRvIHRha2UgaGVyZSBpcyB0byBtYWtlIGEgY29tbW9uIGRyaXZlcj8KPiBGb3IgZXhhbXBsZTog
b25lIGNvbW1vbiBtb2R1bGUgYW5kIHR3byBtb2R1bGVzIHBlciBlYWNoIHNvYywgYmVjYXVzZSBJ
Cj4gYXNzdW1lIHNvbWUgcGVyLXNvYyBzdHVmZiBtaWdodCBiZSBuZWVkZWQuIEJ1dCBtYXliZSBl
dmVuIHRoZXNlIHR3bwo+IG1vZHVsZXMgYXJlIG5vdCBuZWNlc3NhcnkgYW5kIGV2ZXJ5dGhpbmcg
Y291bGQgYmUgaW4gb25lIGRyaXZlci4KClRoZSBpc3N1ZSBoZXJlIGlzIHRoYXQsIHdoaWxlIGJv
dGggUUNPTSBhbmQgU0FNU1VORyB1c2UgdGhhdCBJUCwgYSBsb3Qgb2YKdGhlIHJlZ2lzdGVycyBh
cmUgbm90IG1hcHBlZCBmb3IgRXh5bm9zZXMuCgpGb3IgZXhhbXBsZSB3aXRoIFFDT006CmBgCiNk
ZWZpbmUgVVNCX1BIWV9VVE1JX0NUUkwwICgweDNjKQojZGVmaW5lIFBIWV9VVE1JX0NUUkw1ICgw
eDUwKQpgYAoKRXh5bm9zZXM6CmBgCi8qIG5vdGhpbmcgYmVmb3JlIHRoaXMgKi8KI2RlZmluZSBF
WFlOT1MyMjAwX0VVU0IyX1JTVF9DVFJMIDB4MApgYAoKSGVyZSBFWFlOT1MyMjAwX0VVU0IyX1JT
VF9DVFJMIHNlZW1zIHRvIGJlIHRoZSBzYW1lIHJlZ2lzdGVyIGFzClFDT01fUEhZX1VUTUlfQ1RS
TDUuIEFub3RoZXIgaW5zdGFuY2UgaXM6CmBgCiNkZWZpbmUgVVRNSV9QSFlfQ01OX0NUUkwwICgw
eDk4KQojZGVmaW5lIFRFU1RCVVJOSU4gQklUKDYpCmBgCgpFeHlub3NlczoKYGAKI2RlZmluZSBF
WFlOT1MyMjAwX0VVU0IyX1RFU1RTRSAoMHgyMCkKI2RlZmluZSBFWFlOT1MyMjAwX1RFU1RfSURE
USBCSVQoNikKYGAKCkJ1dCBhdCB0aGUgc2FtZSB0aW1lIHRoZXJlIGFyZSBzb21lLi4gaW5jb25z
aXN0ZW5jaWVzIGJldHdlZW4gdGhlbS4KTG9va2luZyBhdCB0aGUgcmVnaXN0ZXIgbGF5b3V0IGZv
ciB0aGUgZXh5bm9zIGltcGxlbWVudGF0aW9uIGZvciBUWCB0dW5pbmcKdGhlIGZvbGxvd2luZyBy
ZWdpc3RlciBvZmZzZXQgYW5kIGJpdHMgYXJlIGRlc2NyaWJlZDoKYGAKLyoKwqAqIE9mZnNldCA6
IDB4MDAxNArCoCogRGVzY3JpcHRpb246IHR1bmUgcmVnaXN0ZXIgb2YgdHggZHJpdmVyCsKgKi8K
dHlwZWRlZiB1bmlvbiB7CsKgIHUzMiBkYXRhOwrCoCBzdHJ1Y3QgewrCoMKgIC8vIGJpdFswXSA6
CsKgwqAgdW5zaWduZWQgZnNsc19zbGV3X3JhdGUgOiAxOwrCoMKgIC8vIGJpdFsyOjFdIDoKwqDC
oCB1bnNpZ25lZCBmc2xzX3ZyZWZfdHVuZSA6IDI7CsKgwqAgLy8gYml0WzNdIDoKwqDCoCB1bnNp
Z25lZCBmc2xzX3ZyZWdfYnlwYXNzIDogMTsKwqDCoCAvLyBiaXRbNjo0XQrCoMKgIHVuc2lnbmVk
IGhzX3ZyZWZfdHVuZSA6IDM7CsKgwqAgLy8gYml0IFs4OjddCsKgwqAgdW5zaWduZWQgaHNfeHYg
OiAyOwrCoMKgIC8vIGJpdCBbMTE6OV0KwqDCoCB1bnNpZ25lZCBwcmVlbXAgOiAzOwrCoMKgIC8v
IGJpdCBbMTM6MTJdCsKgwqAgdW5zaWduZWQgcmVzIDogMjsKwqDCoCAvLyBiaXQgWzE1OjE0XQrC
oMKgIHVuc2lnbmVkIHJpc2UgOiAyOwrCoMKgIC8vIGJpdFszMToxNl0KwqDCoCB1bnNpZ25lZCBS
U1ZEMzFfMTYgOiAxNjsKwqAgfSBiOwp9IEVVU0JDT05fUkVHX1RYVFVORV9vLCAqRVVTQlBIWV9S
RUdfVFhUVU5FX3A7CmBgCgpBbmQgZm9yIFFDT00gdGhlIGxhdHRlciBmdW5jdGlvbmFsaXR5IGlz
IHNwbGl0IGludG8gdHdvIHNlcGFyYXRlIHJlZ2lzdGVyCm9mZnNldHM6CmBgCiNkZWZpbmUgVVNC
X1BIWV9DRkdfQ1RSTF84ICgweDc4KQojZGVmaW5lIFBIWV9DRkdfVFhfRlNMU19WUkVGX1RVTkVf
TUFTSyBHRU5NQVNLKDEsIDApCiNkZWZpbmUgUEhZX0NGR19UWF9GU0xTX1ZSRUdfQllQQVNTIEJJ
VCgyKQojZGVmaW5lIFBIWV9DRkdfVFhfSFNfVlJFRl9UVU5FX01BU0sgR0VOTUFTSyg1LCAzKQoj
ZGVmaW5lIFBIWV9DRkdfVFhfSFNfWFZfVFVORV9NQVNLIEdFTk1BU0soNywgNikKCiNkZWZpbmUg
VVNCX1BIWV9DRkdfQ1RSTF85ICgweDdjKQojZGVmaW5lIFBIWV9DRkdfVFhfUFJFRU1QX1RVTkVf
TUFTSyBHRU5NQVNLKDIsIDApCiNkZWZpbmUgUEhZX0NGR19UWF9SRVNfVFVORV9NQVNLIEdFTk1B
U0soNCwgMykKI2RlZmluZSBQSFlfQ0ZHX1RYX1JJU0VfVFVORV9NQVNLIEdFTk1BU0soNiwgNSkK
I2RlZmluZSBQSFlfQ0ZHX1JDQUxfQllQQVNTIEJJVCg3KQpgYAoKU28sIEV4eW5vczIyMDAgaGFz
IGEgbXVjaCBzaW1wbGVyIGV1c2IgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2UgdGhhbiB3aGF0Cmlz
IHByZXNlbnQgaW4gbWFpbmxpbmUgZm9yIFFDT01zLiBJIHN0aWxsIGRvbid0IHJlYWxseSB0aGlu
ayB0aGUgZHJpdmVycwpzaG91bGQgYmUgbWVyZ2VkLCBhcyB3ZSBhcmVuJ3QgcmVhbGx5IGR1cGxp
Y2F0aW5nIGNvZGUgcGVyLXNheS4KCkkndmUgYWxyZWFkeSBzdGFydGVkIHdvcmtpbmcgb24gbWVy
Z2luZyB0aGVtLCBhbmQgbXkgY3VycmVudCBpZGVhIGlzIHRvCm5vdCByZWRlZmluZSB0aGUgcmVn
aXN0ZXJzIG9uY2UgYWdhaW4gZm9yIDIyMDAsIGJ1dCByYXRoZXIgbWFrZSBhbiBlbnVtCnRoYXQg
ZGVmaW5lcyBpZiB0aGUgU29DIGlzIGEgUUNPTSBvciBFWFlOT1MsIGFuZCBzZWxlY3QgdGhlIHJl
Z2lzdGVyCm9mZnNldHMgZHluYW1pY2FsbHkgLSBzaW1pbGFybHkgYXMgaG93IEkgZGlkIHdpdGgg
VVNJdjEuIElmIGEgcmVnaXN0ZXIKb2Zmc2V0IGlzIG5vdCBwcmVzZW50LCBpdCdkIGp1c3Qgbm90
IGRvIHRoZSB3cml0ZS4gTXkgZ3Vlc3MgaXMgdGhhdCB0aGlzCndpbGwgbWFrZSBpdCB3b3JrIHdp
dGggdGhlIHF1YWxjb21tIGluaXQgc2VxdWVuY2UgYXMgd2VsbCwgc28gaXQnZCByZXN1bHQKaW4g
ZXZlbiBsZXNzIHJlZHVuZGFudCBjb2RlIChhcGFydCBmcm9tIHRoZSBlVVNCIHR1bmluZywgd2hp
Y2ggY2FuIGJlCm9taXR0ZWQgZm9yIG5vdykuCgo+Cj4+IFdoYXQgYWJvdXQgdGhlIGN1cnJlbnQg
bW9kZWxsaW5nIHNjaGVtZSwgYXMtaW4gdGFraW5nIHRoZSBwaGFuZGxlIHRvCj4+IHRoZSB1c2Jj
b24gcGh5IGFuZCBoYW5kbGluZyBpdD8KPiBXaGF0IGFib3V0IGl0PyAKCkFzIEkgc2FpZCBpbiB0
aGUgY29tbWl0IGRlc2NyaXB0aW9uLCBJJ20gcGFzc2luZyB0aGUgVVNCQ09OIHBoeSBhcyBhCnBo
YW5kbGUgdG8gdGhlIGV1c2IyIG5vZGUgYW5kIGVuYWJsaW5nL2Rpc2FibGluZyBpdCB3aGVuIG5l
ZWRlZC4gSSdtCm5vdCAxMDAlIHN1cmUgaXQgd291bGQgYmUgYWRlcXVhdGUgdG8gaW5jbHVkZSB0
aGF0IGluIGEgY29tbW9uIHNucHMgRVVTQgpkcml2ZXIsIGFzIGl0IHNlZW1zIHRvIG1vcmUgb2Yg
YSBxdWlyayB3aXRoIHRoZSBleHlub3Nlcy4gQnV0IHRoZW4gaG93CmNhbiBJIG1vZGVsIGl0IHNv
IHRoYXQgaXQncyBjb3JyZWN0bHkgZGVzY3JpYmVkIGFjY29yZGluZyB0byBob3cgdGhlCmhhcmR3
YXJlIHdvcmtzIChhcy1pbiB1c2Jjb24gIm11eGluZyIgYmV0d2VlbiBjaGlsZCBwaHlzLCBpbiB0
aGlzIGNhc2UKZVVTQiBhbmQgc25wcyBVU0JEUCBjb21ib3BoeSkKClJlZ2FyZGluZyByZXBlYXRl
cnMsIEkgc3RpbGwgZG9uJ3QgaGF2ZSB0aGUgVEkgcmVwZWF0ZXIgaW1wbGVtZW50ZWQuCgpCZXN0
IHJlZ2FyZHMsCkl2YXlsbwoKPiBEaWQgeW91IGxvb2sgYXQgdGhlIGJpbmRpbmdzIG9mIHFjb20g
c25wcyBldXNiMj8gQXJlIHlvdQo+IHNheWluZyB5b3UgZG8gbm90IGhhdmUgaGVyZSByZXBlYXRl
cj8gSWYgc28sIHRoZW4gdGhpcyBwaHkgcGhhbmRsZSBtaWdodAo+IG5vdCBiZSBjb3JyZWN0Lgo+
Cj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
