Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35F61C04FFE
	for <linux-phy@archiver.kernel.org>; Wed,  8 May 2024 17:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bkRR7oYln7fkTctCwsRGMENHJ4qs4VjKdknozG6OH7I=; b=cZE8sljgx/MeljrbfRFrjjV/bN
	rUhwVUN7E5RUwaWvZW5vvMHjvd3QA3n1bOEnDd3gL9TnhLvJuyK81VXQ0m5C7wKqd5mSKfx3l8ini
	rFYdyF+4X8+eifPM6nzxIbirc6ynvsTlzSX9yPkxJ5fSfQwL44m7oTAe1aetAz56CjHO3RySbRUES
	q83S8HUok0hkUMQu/6qqJrYRtl4R8DDKJT2ixsDiQcgaLRc4Dv+qF94oirpfEe1arQjzt74lEY1XK
	SZLV18x2i5yaa/PsSpHMsgdGHFVpEk24NvyVcj2BYAUeAu28VlpbIOhTQ1B6FZH1SlEFfBgl7xtPh
	i1gAplRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4ko2-0000000GIoy-3iwg;
	Wed, 08 May 2024 17:10:14 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4knz-0000000GInw-2p7g
	for linux-phy@lists.infradead.org;
	Wed, 08 May 2024 17:10:13 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-23d38cd0df6so7125fac.2
        for <linux-phy@lists.infradead.org>; Wed, 08 May 2024 10:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715188205; x=1715793005; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wnfoPIfYoKS2yj9dWrB2Bm7sN1KAr4/Uj2UFG5/Y+uE=;
        b=lrH6ncbJHab/QQIDSEIV5DcH38tZpLmDOtAxzwYCuIXZ5z0iw64kZH+BjDDjewaQlA
         o2nOa+NrCnW24CRCoBZyEU4amWfjDrGF1OJKKfWZ/XY5WvM83UilZtsNfEsSkW+IjZvI
         78rrsaO+8IoknAB4z/n+T7fDyhcAX2NERtrHTkQLoWJEvd59VCwCv8o5ynzENUoH2rQa
         BVV8Rs1t+Me05yuZfNKmUs/xqdK2E/s+Xo0tMeIyTyHJuAt5E+NZCzh8ANL4rnoLO1jK
         BW7c5d68WszdcGhz4s5RfNyH4dc+7hM1vOhiry1d2MNGd5MhTyHbEdeX1QXtL9Lx6Lba
         7trw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715188205; x=1715793005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wnfoPIfYoKS2yj9dWrB2Bm7sN1KAr4/Uj2UFG5/Y+uE=;
        b=CPpvwzri4V3vNAC8SKfTMj6A9SJieFkpIlyGE1qW4Z79SZo0wugxu6s6fZAEAlh8XR
         qEVw6LdIoNnmUoj3pDcSw5kM405HfOiST+lUHmQz1ciblHFsRfH58fxJDBzdcPJwoWoD
         afiiBCJJF4O/cC9W1x+VpSvCK6I8f8KHTqeuScqBuxMsDTP+88bhZieq2UOPMRyyl3u7
         A/a6yIeHg/EeQRw4zAwD7r8/Zgcp2vQU12pLnTUAmVO9+xjW7Moo4+6NuGm1/VO/+Yzi
         8Tkv0iYuwHRuWFu2TMdQTycY2hJw/DsFHyHY07hHqkebyVo8TzCNDa7lv3DYz9Zshd+2
         571Q==
X-Forwarded-Encrypted: i=1; AJvYcCUJWMQ9wmYdkZJQhoD5JTveLu3tI/KCFAX65WvU82o9Zo1SL/Lb+eTtEHKaFEVVC+oZ1cD8KDa2P6rw5LxT13mVQqn4X7oV2bcEBuETzg==
X-Gm-Message-State: AOJu0YxamuXGd1dI0TpCg9hbci24Xo7F0gRQ+JEUscoFGF09lYcHi6az
	GkijxAHNfp08KIT4laJtbcGIU9eQrb1KBjN9LAnu7mEbtKVA8Bet
X-Google-Smtp-Source: AGHT+IHhy1QdaK8wxtjp6E+xo3gR/HOstaZfXmZpR7oXzX9YW0REQY+LknB+sjCBs/ondJxCa7FRbw==
X-Received: by 2002:a05:6870:530a:b0:233:56e5:ff99 with SMTP id 586e51a60fabf-24097c7122fmr3440543fac.23.1715188204005;
        Wed, 08 May 2024 10:10:04 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id pi22-20020a056871d11600b0022eae2de4ecsm3029084oac.51.2024.05.08.10.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 10:10:03 -0700 (PDT)
Message-ID: <c3f99ece-7f66-4c6f-a262-4d8894154ae9@gmail.com>
Date: Wed, 8 May 2024 12:10:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 RESEND 0/8] ipq9574: Enable PCI-Express support
To: Devi Priya <quic_devipriy@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
 <569087fe-e675-41a4-b975-2d01d95b6d3c@quicinc.com>
Content-Language: en-US
From: mr.nuke.me@gmail.com
In-Reply-To: <569087fe-e675-41a4-b975-2d01d95b6d3c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_101011_748422_AE7F5EB6 
X-CRM114-Status: GOOD (  20.22  )
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

T24gNS84LzI0IDE6MTYgQU0sIERldmkgUHJpeWEgd3JvdGU6Cj4gCj4gCj4gT24gNS8xLzIwMjQg
OTo1OCBBTSwgQWxleGFuZHJ1IEdhZ25pdWMgd3JvdGU6Cj4+IFRoZXJlIGFyZSBmb3VyIFBDSWUg
cG9ydHMgb24gSVBROTU3NCwgcGNpZTAgdGhydSBwY2llMy4gVGhpcyBzZXJpZXMKPj4gYWRkcmVz
c2VzIHBjaWUyLCB3aGljaCBpcyBhIGdlbjN4MiBwb3J0LiBUaGUgYm9hcmQgSSBoYXZlIG9ubHkg
dXNlcwo+PiBwY2llMiwgYW5kIHRoYXQncyB0aGUgb25seSBvbmUgZW5hYmxlZCBpbiB0aGlzIHNl
cmllcy4gcGNpZTMgaXMgYWRkZWQKPj4gYXMgYSBzcGVjaWFsIHJlcXVlc3QsIGJ1dCBpcyB1bnRl
c3RlZC4KPj4KPj4gSSBiZWxpZXZlIHRoaXMgbWFrZXMgc2Vuc2UgYXMgYSBtb25vbGl0aGljIHNl
cmllcywgYXMgdGhlIGluZGl2aWR1YWwKPj4gcGllY2VzIGFyZSBub3QgdGhhdCB1c2VmdWwgYnkg
dGhlbXNlbHZlcy4KPiAKPiBIaSBBbGV4YW5kcnUsCj4gCj4gQXMgRG1pdHJ5IHN1Z2dlc3RlZCwg
d2UgYXJlIHdvcmtpbmcgb24gZW5hYmxpbmcgdGhlIFBDSWUgTk9DIGNsb2Nrcwo+IHZpYSBJbnRl
cmNvbm5lY3QuIFdlIHdpbGwgYmUgcG9zdGluZyB0aGUgUENJZSBzZXJpZXMgd2l0aAo+IEludGVy
Y29ubmVjdCBzdXBwb3J0IFsxXSBzaG9ydGx5LgoKSSBhbSBnZW5lcmFsbHkgdmVyeSBoZXNpdGFu
dCB0byBkZXBlbmQgb24gdW5tZXJnZWQgc2VyaWVzLCBhcyB0aGlzIGNhbiAKY2F1c2UgdW5kdWUg
ZGVsYXlzLiBJbiB0aGlzIHBhcnRpY3VsYXIgY2FzZSwgSSBjb25zaWRlcmVkIHRoYXQgYm90aCAK
c2VyaWVzIGNhbiBjb250aW51ZSB0byBzdGF5IGluZGVwZW5kZW50LCB3aXRoIHRoZSBhYmlsaXR5
IHRvIGNvbnZlcnQgdGhlIApQQ0llIHVzZXJzIHRvIHRoZSBuZXcgY2xvY2sgc2NoZW1lIHdoZW4g
dGhlIHRpbWUgaXMgcmlnaHQuCgo+IFsxXSAtIAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LWFybS1tc20vMjAyNDA0MzAwNjQyMTQuMjAzMDAxMy0xLXF1aWNfdmFyYWRhQHF1aWNpbmMu
Y29tLwoKV2hhdCBjaGFuZ2VzIHdvdWxkIGJlIG5lZWRlZCB0byB0aGlzIHNlcmllcyB0byBtYWtl
IHVzZSBvZiB0aGlzPyBIb3cgCmRvZXMgb25lIHVzZSB0aGUgImludGVyY29ubmVjdGVkIiBjbG9j
a3M/CgpBbGV4Cgo+IFRoYW5rcywKPiBTLkRldmkgUHJpeWEKPj4KPj4gSW4gdjIsIEkndmUgaGFk
IHNvbWUgaXNzdWVzIHJlZ2FyZGluZyB0aGUgZHQgc2NoZW1hIGNoZWNrcy4gRm9yCj4+IHRyYW5z
cGFyZW5jeSwgSSB1c2VkIHRoZSBmb2xsb3dpbmcgdGVzdCBpbnZvY2F0aW9ucyB0byB0ZXN0Ogo+
Pgo+PiDCoMKgwqDCoMKgwqAgbWFrZSBkdF9iaW5kaW5nX2NoZWNrICAgICAKPj4gRFRfU0NIRU1B
X0ZJTEVTPXFjb20scGNpZS55YW1sOnFjb20saXBxODA3NC1xbXAtcGNpZS1waHkueWFtbAo+PiDC
oMKgwqDCoMKgwqAgbWFrZSBkdGJzX2NoZWNrICAgICAgICAgICAKPj4gRFRfU0NIRU1BX0ZJTEVT
PXFjb20scGNpZS55YW1sOnFjb20saXBxODA3NC1xbXAtcGNpZS1waHkueWFtbAo+Pgo+PiBDaGFu
Z2VzIHNpbmNlIHYzOgo+PiDCoCAtICJjb25zdCJpZnkgLmh3LmluaXQgZmllbGRzIGZvciB0aGUg
UENJRSBwaXBlIGNsb2Nrcwo+PiDCoCAtIFVzZWQgcGNpZXBoeV92NV9yZWdzX2xheW91dCBpbnN0
ZWFkIG9mIHY0IGluIHBoeS1xY29tLXFtcC1wY2llLmMKPj4gwqAgLSBJbmNsdWRlZCBNYW5pdmFu
bmFuJ3MgcGF0Y2ggZm9yIHFjb20tcGNpZS5jIGNsb2Nrcwo+PiDCoCAtIERyb3BwZWQgcmVkdW5k
YW50IGNvbW1lbnRzIGluICJyYW5nZXMiIGFuZCAiaW50ZXJydXB0LW1hcCIgb2YgcGNpZTIuCj4+
IMKgIC0gQWRkZWQgcGNpZTMgYW5kIHBjaWUzX3BoeSBkdHMgbm9kZXMKPj4gwqAgLSBNb3ZlZCBz
bm9jIGFuZCBhbm9jIGNsb2NrcyB0byBQQ0llIGNvbnRyb2xsZXIgZnJvbSBQSFkKPj4KPj4gQ2hh
bmdlcyBzaW5jZSB2MjoKPj4gwqAgLSByZXdvcmtlZCByZXNldHMgaW4gcWNvbSxwY2llLnlhbWwg
dG8gcmVzb2x2ZSBkdCBzY2hlbWEgZXJyb3JzCj4+IMKgIC0gY29uc3RyYWluZWQgInJlZyIgaW4g
cWNvbSxwY2llLnlhbWwKPj4gwqAgLSByZXdvcmtlZCBtaW4vbWF4IGludGVtcyBpbiBxY29tLGlw
cTgwNzQtcW1wLXBjaWUtcGh5LnlhbWwKPj4gwqAgLSBkcm9wcGVkIG1zaS1wYXJlbnQgZm9yIHBj
aWUgbm9kZSwgYXMgaXQgaXMgaGFuZGxlZCBieSAibXNpIiBJUlEKPj4KPj4gQ2hhbmdlcyBzaW5j
ZSB2MToKPj4gwqAgLSB1cGRhdGVkIG5ldyB0YWJsZXMgaW4gcGh5LXFjb20tcW1wLXBjaWUuYyB0
byB1c2UgbG93ZXJjYXNlIGhleCAKPj4gbnVtYmVycwo+PiDCoCAtIHJlb3JnYW5pemVkIHFjb20s
aXBxODA3NC1xbXAtcGNpZS1waHkueWFtbCB0byB1c2UgYSBzaW5nbGUgbGlzdCBvZiAKPj4gY2xv
Y2tzCj4+IMKgIC0gcmVvcmdhbml6ZWQgcWNvbSxwY2llLnlhbWwgdG8gaW5jbHVkZSBjbG9ja3Mr
cmVzZXRzIHBlciBjb21wYXRpYmxlCj4+IMKgIC0gUmVuYW1lZCAicGNpZTJfcW1wX3BoeSIgbGFi
ZWwgdG8gInBjaWUyX3BoeSIKPj4gwqAgLSBtb3ZlZCAicmFuZ2VzIiBwcm9wZXJ0eSBvZiBwY2ll
QDIwMDAwMDAwIGhpZ2hlciB1cAo+Pgo+PiBBbGV4YW5kcnUgR2Fnbml1YyAoNyk6Cj4+IMKgwqAg
ZHQtYmluZGluZ3M6IGNsb2NrOiBBZGQgUENJZSBwaXBlIHJlbGF0ZWQgY2xvY2tzIGZvciBJUFE5
NTc0Cj4+IMKgwqAgY2xrOiBxY29tOiBnY2MtaXBxOTU3NDogQWRkIFBDSWUgcGlwZSBjbG9ja3MK
Pj4gwqDCoCBkdC1iaW5kaW5nczogUENJOiBxY29tOiBBZGQgSVBROTU3NCBQQ0llIGNvbnRyb2xs
ZXIKPj4gwqDCoCBQQ0k6IHFjb206IEFkZCBzdXBwb3J0IGZvciBJUFE5NTc0Cj4+IMKgwqAgZHQt
YmluZGluZ3M6IHBoeTogcWNvbSxpcHE4MDc0LXFtcC1wY2llOiBhZGQgaXBxOTU3NCBnZW4zeDIg
UEhZCj4+IMKgwqAgcGh5OiBxY29tLXFtcC1wY2llOiBhZGQgc3VwcG9ydCBmb3IgaXBxOTU3NCBn
ZW4zeDIgUEhZCj4+IMKgwqAgYXJtNjQ6IGR0czogcWNvbTogaXBxOTU3NDogYWRkIFBDSWUyIGFu
ZCBQQ0llMyBub2Rlcwo+Pgo+PiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gKDEpOgo+PiDCoMKgIFBD
STogcWNvbTogU3dpdGNoIHRvIGRldm1fY2xrX2J1bGtfZ2V0X2FsbCgpIEFQSSB0byBnZXQgdGhl
IGNsb2Nrcwo+PiDCoMKgwqDCoCBmcm9tIERldmljZXRyZWUKPj4KPj4gwqAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1swqDCoMKgIHzCoCAzNyArKysrCj4+IMKgIC4u
Li9waHkvcWNvbSxpcHE4MDc0LXFtcC1wY2llLXBoeS55YW1swqDCoMKgwqDCoMKgwqAgfMKgwqAg
MSArCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE5NTc0LmR0c2nCoMKgwqDCoMKg
wqDCoMKgIHwgMTc4ICsrKysrKysrKysrKysrKysrLQo+PiDCoCBkcml2ZXJzL2Nsay9xY29tL2dj
Yy1pcHE5NTc0LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDc2ICsrKysrKysr
Cj4+IMKgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jwqDCoMKgwqDCoMKg
wqAgfCAxNjQgKysrLS0tLS0tLS0tLS0tLQo+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtcGNpZS5jwqDCoMKgwqDCoCB8IDEzNiArKysrKysrKysrKystCj4+IMKgIC4uLi9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy1wY2llLXY1LmjCoMKgIHzCoCAxNCArKwo+PiDC
oCBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3Fjb20saXBxOTU3NC1nY2MuaMKgIHzCoMKgIDQg
Kwo+PiDCoCA4IGZpbGVzIGNoYW5nZWQsIDQ2OSBpbnNlcnRpb25zKCspLCAxNDEgZGVsZXRpb25z
KC0pCj4+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
