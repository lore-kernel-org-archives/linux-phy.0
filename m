Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 295E2CD6E6B
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 11:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AyDURGyKwth05qGeJ+wRM2CCK71gDdhYpjbXMjbGX28=; b=x5L1BNgkSbX0e3
	yMhFg2YhjrecWImeAPa+cIgABrODeEsw/vbfwxrxGRXSR8/b4UlUvKu5EBYNVQWv5HTrQcny/xfNK
	FX9qJvR5+QdhBY6EQen5x6iO7D/zwt/Q8el1W7P62JD1j3aC58RPuyVO4lIKzE31SzOnI7FgAiafl
	9XmMnW8/kVfLCI8aCC3ldxOU/Zu1+xTaKY3EdtN627Xj6THsy/JHxgOP0qbr0u3SC+yQIXzuTf9mJ
	OhMJttKwYPvL3IjISLk6mW+UUE3AsvR2OzwEyWAeQcKSIynOAbZGmQqMs8hD5Zvl3qXpu7uWwQQpf
	lSxS38cNAfspT8gPuH+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5rq-0000000GbqH-3nuF;
	Thu, 04 Jun 2026 11:04:06 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5ro-0000000Gbpl-1FNp
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 11:04:05 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-68c08bfe5afso1036624a12.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 04:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780571042; x=1781175842; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qrF+chW03A8IR47Oi/Ih5ziYJf7j0S60VPCDD4Eshmo=;
        b=Xu7bWyv+d6pP0tKpsDGL63VOL/JLENlTqbnDCYsA1vIbdEDJWMdAk/7hvNTL2JIOa8
         sAwx+VZ5u0MmteLsJPIkw8dgqppwqgZIjHQ19dOmaJy0bGq5Cb8nw9madKrdrU4PVIuI
         k4yb5qKna+7oUvBLa6lcmaeAiWn8J8solynwnu2hNY5gS8QKvrCaz7NcMoowcuvp2bDx
         fEt6szU2o7oBpYS0NNjE/VqNrO7fLUDDC3FT+DMjpdQQFOsXd6REy1/OIqutyCDUf/ga
         HnPT9gwAXuMiWOWTXXssHrdEygearLSGMsnXX6xJik6uvMdLkZy0i225DScP2AfBul9l
         Oa5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780571042; x=1781175842;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qrF+chW03A8IR47Oi/Ih5ziYJf7j0S60VPCDD4Eshmo=;
        b=LrXUhOBtkt5p2gnOh9uWbR1VSNrMzd4ujcqcilJEplz1uRKEH+SBWwpCmS+hd1q5QU
         YHujoIMFdUoHWQSJ2Ne7zhlc+Qhno1/nJ9Ciff5DI6GaF1tjJkBZcO2ZYcRrhECU2BEH
         vrUKiTqaJbsZOJN3Xlilk0TVNaKFYpT3IZ8CDEILAyzqdBGbYuRAm+yr+k7R+Ek/vMFB
         njfXgxXZqklZpzDcsFHiUV1s3VetTQYsjAB8/S6+pFkEQBhgqqy4Z9SrvjUl8vnyRlD0
         75cn+7heKpufGaGv3Q43lAclecHeNinQHBt1Ogz25Ibn9v8rtX03/MBTMptjxd/kLK3a
         VCMg==
X-Forwarded-Encrypted: i=1; AFNElJ9g21Fpk47SkuRBTL4xwy5t1MZvK73I3cNrXfynKZ2X6xjB2+UdZUXhDLBqjW4YSLqZa9z9fe3Zygo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFpUCARRHf4/+Lhx9QFyjzKXPdQLUENWMSlU8obHyLc9KGo0qQ
	knER5BPOCeNz/D8rNtHVloibGnGMrUfSgIyLAuA2Dit+DqKA9dvvsNdcYBd2lNs0LCM=
X-Gm-Gg: Acq92OGWyKF77+3+PU1JA0ePTCfAUOm9aNoidMBx6RNZTToC7kx8yJo9wuuscOa0Mqw
	Z7BMhWAAldq9hhB2Fp5M/eIXsTIM9AVJNC9zthripf8phtr4x9z8vOPbkxqDmyHlEqJ5FzxmI7H
	YnJoPbeCQB6kkEAhhwRDOPPugy6LxYavXagbwTGgvFZcNQC4pGke0MSfHsJDBpYw1pBKosmHlrX
	H6C2KxLtckF9Fzz589lExisXATjC7PRD6NJ+LWYvNw/l9ygyqGUpXvg/wPfcxVCgxs1J5n504R+
	yRmbZQISpVXBFi9WB8MpUWRoH6WaFIwvkFsbmORmfN6w4ttvFIsnMZgFdWiQSzem9CdqYos5QnU
	j498wSE5t3lHgxeA3ppcWGCMM7nFCBcmYytJjsGbqtCK89gcgRcRcuP82qdLB16j+4EBVfQfhk0
	DWLhQ3v7N6jQi92QT1O97D5dTJwHdhvm2I10kf/zecr+pEV1U=
X-Received: by 2002:a17:907:6092:b0:bd2:bd3:1ef8 with SMTP id a640c23a62f3a-bf0ab021c93mr446755866b.35.1780571041852;
        Thu, 04 Jun 2026 04:04:01 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.175.228])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf05228a16csm287937966b.28.2026.06.04.04.04.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 04:04:01 -0700 (PDT)
Message-ID: <139130d0-1f59-49aa-b174-9e1860eb8465@linaro.org>
Date: Thu, 4 Jun 2026 12:04:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
 <ec98ef2f-02b4-4086-8b4b-07b6953dbd20@oss.qualcomm.com>
 <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
 <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
 <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
 <1b107aca-a857-4e58-a763-39c82af67747@linaro.org>
 <67b6f6ae-bfca-4afd-adfb-6ec1741105d8@linaro.org>
 <9ab0d8f4-e1b6-415b-976b-721ab7a29194@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <9ab0d8f4-e1b6-415b-976b-721ab7a29194@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_040404_390771_F5A2E994 
X-CRM114-Status: GOOD (  18.77  )
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

T24gMDQvMDYvMjAyNiAxMDoyMCwgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+IE9uIDYvNC8y
NiAxMjowNiwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4gT24gMDQvMDYvMjAyNiAwOTo0Niwg
VmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+Pj4gT24gNi80LzI2IDAzOjMwLCBCcnlhbiBPJ0Rv
bm9naHVlIHdyb3RlOgo+Pj4+IE9uIDA0LzA2LzIwMjYgMDE6MDcsIFZsYWRpbWlyIFphcG9sc2tp
eSB3cm90ZToKPj4+Pj4gT24gNi80LzI2IDAwOjE4LCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+
Pj4+Pj4gT24gMDMvMDYvMjAyNiAyMTo1MSwgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+Pj4+
Pj4+PiBBY3R1YWxseSwgb25lIG1vcmUgdGhpbmcsIFdoeSBpc24ndCBUSVRBTiBUT1AgR0RTQyBo
ZXJlPz4+Pj4gKwo+Pj4+Pj4+IElmIENTSVBIWXMgYXJlIHRydWUgc3ViZGV2aWNlcyB1bmRlciB0
aGUgdW1icmVsbGEgQ0FNU1MgZGV2aWNlIGFuZAo+Pj4+Pj4+IHdlbGwKPj4+Pj4+PiBkZXNjcmli
ZWQgYXMgc3Vibm9kZXMsIHRoZW4gbGlrZWx5IG5vbmUgb2YgcG93ZXIgZG9tYWlucyBhcmUgbmVl
ZGVkCj4+Pj4+Pj4gdG8gYmUKPj4+Pj4+PiByZXBlYXRlZGx5IGRlc2NyaWJlZCBpbiB0aGUgY2hp
bGRyZW4gZGV2aWNlIG5vZGVzLCBzaW5jZSB0aGlzCj4+Pj4+Pj4gaW5mb3JtYXRpb24KPj4+Pj4+
PiBjYW4gYmUgb2J0YWluZWQgZnJvbSB0aGUgcGFyZW50IGRldmljZSBieSB0aGUgZHJpdmVyLgo+
Pj4+Pj4+Cj4+Pj4+Pj4gVGVjaG5pY2FsbHkgJ3Bvd2VyLWRvbWFpbnMnIHByb3BlcnR5IGNhbiBi
ZSBzYWZlbHkgcmVtb3ZlZCwgSSAKPj4+Pj4+PiBiZWxpZXZlLgo+Pj4+Pj4KPj4+Pj4+IFRoZSBw
b2xpY3kgaXMgdG8gZGVzY3JpYmUgdGhlIHBvd2VyLWRvbWFpbiBkZXBlbmRlbmN5IGZ1bGx5IHNp
bmNlIERUCj4+Pj4+PiBkZXNjcmliZXMgaGFyZHdhcmUgbm90IHNvZnR3YXJlIGFyY2hpdGVjdHVy
ZS4KPj4+Pj4KPj4+Pj4gSXQgYnJpbmdzIG5vIGNvbnRhcmRpY3Rpb24gdG8gdGhlIHN0YXRlbWVu
dCBJJ3ZlIGdpdmVuIGFib3ZlLCB0aGUgCj4+Pj4+IG5lZWRlZAo+Pj4+PiBwb3dlciBkb21hbnMg
d2lsbCBiZSBwcm9wZXJseSBkZXNjcmliZWQgaW4gdGhlIHBhcmVudCBkZXZpY2UsIGFuZCAKPj4+
Pj4gdGhlcmUKPj4+Pj4gaXMgbm8KPj4+Pj4gc2Vuc2UgdG8gcmVwZWF0IHRoZSBwcm9wZXJ0aWVz
IGl0IGFnYWluIGFuZCBhZ2FpbiBpbiBldmVyeSBjaGlsZAo+Pj4+PiBzdWJkZXZpY2UuCj4+Pj4+
Cj4+Pj4+PiBBbHNvIGZvciBhIHZlcnkgcHJhY3RpY2FsIHJlYXNvbiBhIHN1Yi1kZXZpY2VzIGNh
biBwcm9iZS9ydW4KPj4+Pj4+IGFzeW5jaHJvbm91c2x5IG9mIHRoZSBwYXJlbnQgZGV2aWNlIGJl
aW5nIGFjdGl2ZSBzbyBpbiBmYWN0IHdlIGRvIAo+Pj4+Pj4gbmVlZAo+Pj4+Pj4gdG8gZGVzY3Jp
YmUgdGhlIFBEcyBmdWxseS4KPj4+Pj4KPj4+Pj4gSW4gb3Bwb3NpdGUgdG8gdGhlIGFib3ZlIHRo
aXMgb25lIGlzIHByZWNpc2VseSBhIHNvZnR3YXJlIGNlbnRyaWMKPj4+Pj4gYXJndW1lbnQsCj4+
Pj4+IHdoaWNoIHNob3VsZCBiZSBleGNsdWRlZCBmcm9tIHRoZSBjb25zaWRlcmF0aW9uLCBhcyB3
ZWxsIGl0J3Mgbm90IGEgCj4+Pj4+IGJpZwo+Pj4+PiBkZWFsIHRvIG1ha2UgYSBwcm9wZXIgYXN5
bmMgaW5pdGlhbGl6YXRpb24sIHJlbW92aW5nIGV4Y2Vzc2l2ZSBkdAo+Pj4+PiBwcm9wZXJ0aWVz
Cj4+Pj4+IGlzIHdvcnRoIGl0Lgo+Pj4+Pgo+Pj4+Cj4+Pj4gUmlnaHQgbG9vayBmb3JnZXQgYWJv
dXQgdGhhdC4KPj4+Pgo+Pj4+IC0gRFQgcmVxdWlyZXMgeW91IHRvIGRlc2NyaWJlIHlvdXIgaGFy
ZHdhcmUuIFlvdSdyZSBub3QgZW50aXRsZWQgdG8gCj4+Pj4gaGF2ZQo+Pj4+IMKgwqDCoMKgIHNv
bWUgb3RoZXIgZGV2aWNlIHZvdGUgZm9yIGEgY2xvY2sgb3IgYSBQRCB5b3UgcmVseSBvbi4KPj4+
Pgo+Pj4KPj4+IEFib3ZlIGFyZSB0d28gdW5jb3JyZWxhdGVkIGJldHdlZW4gZWFjaCBvdGhlciBz
ZW50ZW5jZXMuCj4+Pgo+Pj4gQSBkZXZpY2UgKCJjb25zdW1lciIpIGNhbiBhc2sgYW5vdGhlciBk
ZXZpY2UgKCJwcm92aWRlciIpIHRvIGJlaGF2ZSBpbgo+Pj4gb25lIG9yIGFub3RoZXIgd2F5LCB0
aGlzIGlzIHRoZSBvbmx5IHBvc3NpYmxlIGFuZCB0aHVzIG5hdHVhbGx5IHNlbGVjdGVkCj4+PiBz
eXN0ZW0gZGVzaWduLCBhbmQgbm90aGluZyBiZWhpbmQgaXQgd2FzIGFza2VkLiBUaGVyZSBpcyBu
byAKPj4+IGp1c3RpZmljYXRpb24KPj4+IGZvciB0aGUgcHJvcG9zZWQgZmxvb2Qgb2YgbXVsdGlw
bHkgcmVwZWF0ZWQgZGF0YSwgaXQncyBhdm9pZGFibGUuCj4+Cj4+IENBTVNTIG9yIHJhdGhlciB0
aGUgY29tcG9uZW50cyBvZiBDQU1TUyBtb2RlbGxlZCBpbiB0aGUgY3VycmVudCBub2RlLAo+PiBp
cy9hcmUgbm90IHRoZSBwcm92aWRlciBvZiB0aGUgR0RTQ3Mgb3IgdGhlIHBvd2VyLWRvbWFpbnMs
IGl0L3RoZXkgYXJlCj4+IGNvbnN1bWVycyB0aGVtc2VsdmVzIGZyb20gQ0FNQ0MuCj4gCj4gV2Vs
bCwgdGhpcyBpcyB0aGUgYXJndW1lbnQgYWJvdXQgc29mdHdhcmUsIGFuZCBzb2Z0d2FyZSBjYW4g
YmUgY2hhbmdlZC4KPiAKPj4gVGhlIHByb2R1Y2VyL2NvbnN1bWVyIG1vZGVsIGlzIENBTUNDIHRv
IGNvbXBvbmVudHMgd2l0aGluIHRoZSBDYW1lcmEKPj4gYmxvY2suIFNvbWUgY29tcG9uZW50cyBk
ZXBlbmQgb24gc2F5IE1YQSwgTVhDLCBzb21lIGRvIG5vdC4gTm90aGluZyBpbgo+PiBDQU1TUyBp
dHNlbGYgaXMgYSBwb3dlci1kb21haW4gcHJvdmlkZXIuCj4+Pj4gwqDCoMKgwqAgVGhhdCdzIGV4
YWN0bHkgdGhlIHR5cGUgb2YgZG93bnN0cmVhbSBzaG9ydCBjdXQgd2UgYXJlIHRyeWluZyAKPj4+
PiB0byB6YXAuCj4+Pj4KPj4+PiAtIEluIG91ciBjYXNlIHdlIGFsc28gbmVlZCB0byB2b3RlIG9u
IFBEcyBpbmRpdmlkdWFsbHkgd2hlbiB0aGUgUEhZCj4+Pj4gwqDCoMKgwqAgaXMgYWN0aXZlLgo+
Pj4+Cj4+Pj4gSW4gZXh0cmVtaXMgc2F5IHdlIGFyZSBvbmx5IHJ1bm5pbmcgdGhlIFRQRyB0aGVu
IHdlIGhhdmUgbm8gcmVhc29uIHRvCj4+Pj4gdm90ZSBmb3IgQ1NJUEhZIHNwZWNpZmljIHJhaWxz
IG9yIG9wZXJhdGluZyBwb2ludHMgaW4gdGhlIHBhcmVudCAKPj4+PiBkZXZpY2UuCj4+Pgo+Pj4g
U28sIFRQRyBzaGFsbCBjb21tdW5pY2F0ZSB3aXRoIENBTVNTLCB0aGVyZSBpcyBubyBDU0lQSFkg
aW4gdGhlIAo+Pj4gZXF1YXRpb24uCj4+Cj4+IFJpZ2h0IGJ1dCBpdCB3b3VsZCBiZSBpbmFwcHJv
cHJpYXRlIHRvIGVuYWJsZSBhbGwgb2YgdGhlIFBEcyBmb3IgYWxsIG9mCj4+IHRoZSBjb21wb25l
bnRzIGluIHRoZSBDQU1TUyBibG9jayB3aGVuIHdlIGNhbiBkbyBzbyBtb3JlIGdyYW51bGFybHku
Cj4gCj4gV2hlbmV2ZXIgaXQgaXMgYWN0dWFsbHkgbmVjZXNzYXJ5LCBpdCBzaG91bGQgYmUgcG9z
c2libGUgdG8gc3BsaXQgUERzIGludG8KPiBnZW5lcmljL3BhcmVudCBhbmQgc3ViZGV2aWNlIHNw
ZWNpZmljIGdyb3VwcywgaXQncyBhIHBhcnQgb2Ygc29mdHdhcmUKPiBpbXBsZW1lbnRhdGlvbi4g
SW4gc29tZSBjYXNlcyB0aGVyZSBtaWdodCBiZSBubyBuZWVkIHRvIGRlZmluZSBhbnkgY2hpbGQK
PiBzaWRlIFBEcywgbGlrZWx5IENTSVBIWSBmYWxscyBpbnRvIHRoaXMgY2F0ZWdvcnkuCgoKQ29t
cGxldGVseSBub3QgYSBkaXNjdXNzaW9uIGFib3V0IHNvZnR3YXJlLiBEVCBuZWVkcyB0byByZXBy
ZXNlbnQgCmhhcmR3YXJlLiBJdHMgYSBkaWZmZXJlbnQgbWluZHNldC4KCkkgZG9uJ3QgdGhpbmsg
d2UgYXJlIGdvaW5nIHRvIHJlc29sdmUgdGhpcyBkZWJhdGluZyB0aGUgc2FtZSB0aGluZyBhZ2Fp
bi4KCk15IHBvc2l0aW9uIGlzIHRoZSBDU0lQSFkgc2hvdWxkIGxpc3QgdGhlIHNldCBvZiBwb3dl
ci1kb21haW4gCmRlcGVuZGVuY2llcyBpdCBoYXMuIFRoZSBQRHMgZG9uJ3QgY29tZSBmcm9tIGFu
eSBvdGhlciB0aGluZyBpbiB0aGUgCkNBTVNTIGJsb2NrIHNvIHRoZSBwcm9kdWNlci9jb25zdW1l
ciBtb2RlbCBpcyBDU0lQSFkgdG8gQ0FNQ0MgYW5kIENTSVBIWSAKdG8gUlBNUEQgcmVzcGVjdGl2
ZWx5LgoKSSdsbCBqdXN0IGFzayBAUm9iLCBAS3J6eXN6dG9mIG9yIEBDb25vciB0byBvZmZlciB1
cCB0aGVpciBvcGluaW9uIGFzIERUIAptYWludGFpbmVycyBhbmQgd29yayBmcm9tIHRoZXJlLgoK
LS0tCmJvZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
