Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1173E7716C
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 07:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dt0y4jAWtgsN6h0kYKN/cFVfKV7C4TK3+B7RcFGtmDU=; b=A1Q6Cp+DN29vkM
	DRGPjPO94wd5lUqgiaeODty6ZATKobOQYPbMAkEabE/99H12vs6WqYhf3Uxr5csBbbJ8yZhyJtyTh
	b8H5DiNVsJZrZ/VMwQ/TsPvBBsf4PaWZd6ADrlWtGxhNSmUdYWvIB0L0bUPCtqrJF0NfKUxzrw7PM
	UFSsfWCTaoz97Ilnk30kR/cvjEiFCltJ3hRVDNyEWC/gTp8vPCnydmVPeJYITlwab5eLpsGkQOAxH
	hTdvNXDHQWmVLjVjs41JKRnC9i93MxacezN1sX6aBSd4yyPC8MqfIPhqvy5I4jvKN+EP5dJnGj2Re
	MEWj4k3BdHzRDZJ7z1aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6Nr-0000000F2FS-48mu;
	Thu, 05 Dec 2024 07:34:47 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MM-0000000F1hB-3Z3V
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 07:33:17 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a9a0ef5179dso66773266b.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 23:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383993; x=1733988793; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jyPCCbXGwL2HX2ZQQ75iZPGtqkwk+FZ+xBNeL3SfQvk=;
        b=ZXsaHppg0rACEdHk4jsIzGM+26GMEZf3W+DRYIw6XEg40e7B6pIAbWOOsh7lUf9PNu
         LDKLtsNKwDp1MjO6AYl73FAUhcf1LVU5DwuCcDM02etS4Jg7CXCrODn39JrV4lvHC4Fx
         D68DgDOaYiTblq+kV1Ik7UvXv/fLpvaO0nU5n3glcNx6MHiMHtnO43i5p4Rmn6oVN1vO
         UowW81XcesnTuKStL30KDCw8dLxJW4uvHGzhYtcG2BCBFvQfBRbo0E+7gdn/57E3EW6F
         NV90V/yX8yXKVfr5MmZ0SMyf1Qct974AIfJPPb647vS/2bwnT2n68gMLa1yBUNjbsGIK
         egcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383993; x=1733988793;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jyPCCbXGwL2HX2ZQQ75iZPGtqkwk+FZ+xBNeL3SfQvk=;
        b=it2FaqyThyaQMtJzZST8O97FyRzfLVpEPMftnH3GZ4Gvxrk600pw/mZsMB9JrvZWGv
         cgWCn80ukrSlYVvRqoVmf2jQPwnnvPB7zfnhj4/GJmKbFjB1lMDCWoTwKqOu92sJAd7X
         VS4iQy4XJK1JWzaHOV+zto8h18ywOrFRMNLDC4kYLDDEG65Eqb++4TW/7hXy/3a/yYrd
         97KsA/SQOxhoXt+NcaZROvsSEk5tqOnRD2htoMYJfq4yu5G/JgMlpklAtl8YkQtiJh3p
         XmbO0fIXNPYOgDR0Ds+uUSKXWKEhliOgU/1iZBJHA22bgm2gO2bYFA5xpHWRlshRq9sG
         T+Ow==
X-Forwarded-Encrypted: i=1; AJvYcCWthPhRtPxsl1y1m2xlRPlZWlqjW5YmobcTaz+ymSrAetsaAiXT5b+j5xmMd6DUa2CcV+yAyL/vK6U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyifDeUoGkdNB4DQkec38qQFzoOIBoydgg/wYfInXzCnzLmXU5K
	81P/HNPiFZ8h159XCCx4IeE8t10vcTV1RB4RWntAUOQU7Y4RAleeM6a9EymeGFs=
X-Gm-Gg: ASbGnctxr+OJNZMClxEdAMGdp8arZA6PzV1L/RePRQlob8l7zoVy5iBA3nbN01gPQlT
	tJB4bO8P+ThcsJRI9D/K9vZwqwfKmsglSIeoH1pd5uSt/A5dNVrPL+9QK6YGGUvw/9wX+mkgYrv
	hET4HIxwUcbDTctRVFuUeXTKJp0qy9wQTEXDyqCgi72T8/afrN8fLdlO8vcPNrjswkPUmpLuZ10
	kQYzjG+pmHFT+Iy/mWcW3mbVOWZqBH9R9iHPt1CKF/L+wXOLeqfq/sGnsMJBEXorOJ7X9Lpviky
	jixUIo0rGB1MbqZgbbOGCxEzeOqSuPZg5g==
X-Google-Smtp-Source: AGHT+IHfI+UCHItr2vvHKPBrNf3u5if9tiRttGFiL6E80p15Kq2YgAQozShUjLutF89S1nrAwt0aIw==
X-Received: by 2002:a17:907:1ded:b0:aa5:2d9a:1528 with SMTP id a640c23a62f3a-aa5f7f40800mr661936566b.60.1733383993082;
        Wed, 04 Dec 2024 23:33:13 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:12 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 0/8] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
Date: Thu, 05 Dec 2024 07:33:11 +0000
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADdXUWcC/43NQQqDMBQE0KtI1k35+QatXXmP0kVMogYkkURCR
 bx7v25KV+1yBubNxpKNziZ2LzYWbXbJBU+hvBRMj8oPljtDmSGgFAJrPiQBgs/jyiflbeKB5n5
 RC+3OFhuDoCtzkwYZKXO0vXudD48n5dGlJcT1PMziaP+3s+DARVf32qJsKujayXkVwzXEgR14x
 g+IUP4GkUAJRvekVjWYL3Df9zelo8+vIAEAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_233314_889859_F783A3AC 
X-CRM114-Status: GOOD (  12.46  )
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

SGksCgpUaGlzIHNlcmllcyBlbmFibGVzIFVTQjMgVHlwZS1DIGxhbmUgb3JpZW50YXRpb24gZGV0
ZWN0aW9uIGFuZApjb25maWd1cmF0aW9uIG9uIHBsYXRmb3JtcyB0aGF0IHN1cHBvcnQgdGhpcyAo
R29vZ2xlIGdzMTAxKSwgYW5kIGl0CmFsc28gYWxsb3dzIHRoZSBEV0MzIGNvcmUgdG8gZW50ZXIg
cnVudGltZSBzdXNwZW5kIGV2ZW4gd2hlbiBVREMgaXMKYWN0aXZlLgoKRm9yIGxhbmUgb3JpZW50
YXRpb24sIHRoaXMgZHJpdmVyIG5vdyBvcHRpb25hbGx5IChiYXNlZCBvbiBEVCkKc3Vic2NyaWJl
cyB0byB0aGUgVENQQydzIGxhbmUgb3JpZW50YXRpb24gbm90aWZpZXIgYW5kIHJlbWVtYmVycyB0
aGUKb3JpZW50YXRpb24gdG8gbGF0ZXIgYmUgdXNlZCBkdXJpbmcgcGh5X2luaXQoKS4KClRvIGVu
YWJsZSBEV0MzIHJ1bnRpbWUgc3VzcGVuZCwgdGhlIGdhZGdldCBuZWVkcyB0byBpbmZvcm0gdGhl
IGNvcmUgdmlhCmR3YzNfZ2FkZ2V0X2ludGVycnVwdCgpIHdpdGggZXZlbnQgdHlwZSA9PSBEV0Mz
X0RFVklDRV9FVkVOVF9ESVNDT05ORUNUCm9mIGEgY2FibGUgZGlzY29ubmVjdC4gRm9yIHRoYXQg
dG8gYWxsb3cgdG8gaGFwcGVuLCB0aGlzIGRyaXZlcgp0aGVyZWZvcmUgbmVlZHMgdG8gc3RvcCBm
b3JjaW5nIHRoZSBWYnVzIGFuZCBidmFsaWQgc2lnbmFscyB0byBhY3RpdmUKYW5kIGluc3RlYWQg
Y2hhbmdlIHRoZWlyIHN0YXRlIGJhc2VkIG9uIGFjdHVhbCBjb25kaXRpb25zLiBUaGUgc2FtZQpU
Q1BDIG5vdGlmaWVyIGlzIHVzZWQgdG8gZGV0ZWN0IHRoaXMsIGFuZCBwcm9ncmFtIHRoZSBoYXJk
d2FyZQphY2NvcmRpbmdseS4KClRoYXQgc2lnbmFsIHN0YXRlIGlzIGJhc2VkIG9uIGFkdmljZSBn
aXZlbiBieSBUaGluaCBpbgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDA4MTMyMzA2
MjUuamdrYXRxc3R5aGNtcGV6dkBzeW5vcHN5cy5jb20vCgpCb3RoIGNoYW5nZXMgdG9nZXRoZXIg
bm93IGFsbG93IGNhYmxlIG9yaWVudGF0aW9uIGRldGVjdGlvbiB0byB3b3JrLCBhcwp0aGUgRFdD
MyB3aWxsIG5vdyBjYWxsIHBoeV9leGl0KCkgb24gY2FibGUgZGlzY29ubmVjdCwgYW5kIHdlIGNh
bgpyZXByb2dyYW0gdGhlIGxhbmUgbXV4IGluIHBoeV9pbml0KCkuCgpPbiB0b3Agb2YgdGhhdCwg
dGhlcmUgYXJlIHNvbWUgc21hbGwgcmVsYXRlZCBjbGVhbnVwIHBhdGNoZXMuCgpTaWduZWQtb2Zm
LWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KQ2hhbmdl
cyBpbiB2MzoKLSBwYXRjaGVzIDEgJiAyOiB1cGRhdGUgYXMgcGVyIFJvYidzIHN1Z2dlc3Rpb25z
Ci0gcGF0Y2ggNyAmIDg6IGRyb3AgaW5pdCB0byAtMSBvZiBwaHlfZHJkLT5vcmllbnRhdGlvbiAo
Vmlub2QpCi0gcGF0Y2ggNzogYXZvaWQgYW4gI2lmZGVmIAotIExpbmsgdG8gdjI6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNDEyMDMtZ3MxMDEtcGh5LWxhbmVzLW9yaWVudGF0aW9uLXBo
eS12Mi0wLTQwZGNmMWI3NjcwZEBsaW5hcm8ub3JnCgpDaGFuZ2VzIGluIHYyOgotIHNxdWFzaCBw
YXRjaGVzICMyIGFuZCAjMyBmcm9tIHYxIHRvIGFjdHVhbGx5IGRpc2FsbG93CiAgb3JpZW50YXRp
b24tc3dpdGNoIG9uICFnczEwMSAobm90IGp1c3Qgb3B0aW9uYWwpIChDb25vcikKLSB1cGRhdGUg
YmluZGluZ3MgY29tbWl0IG1lc3NhZ2UgdG8gY2xhcmlmeSB0aGF0IHRoZSBpbnRlbnRpb24gZm9y
IHRoZQogIGRyaXZlciBpcyB0byB3b3JrIHdpdGggb2xkIGFuZCBuZXcgRFRTIChDb25vcikKLSBh
ZGQgY2Mtc3RhYmxlIGFuZCBmaXhlcyB0YWdzIHRvIHBvd2VyIGdhdGluZyBwYXRjaCAoS3J6eXN6
dG9mKQotIGZpeCBhbiAjaW5jbHVkZSBhbmQgdHlwbyAoUGV0ZXIpCi0gTGluayB0byB2MTogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI0MTEyNy1nczEwMS1waHktbGFuZXMtb3JpZW50YXRp
b24tcGh5LXYxLTAtMWI3ZmNlMjQ5NjBiQGxpbmFyby5vcmcKCi0tLQpBbmRyw6kgRHJhc3ppayAo
OCk6CiAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IHNhbXN1bmcsdXNiMy1kcmQtcGh5OiBhZGQgYmxh
bmsgbGluZXMgYmV0d2VlbiBEVCBwcm9wZXJ0aWVzCiAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IHNh
bXN1bmcsdXNiMy1kcmQtcGh5OiBnczEwMTogcmVxdWlyZSBUeXBlLUMgcHJvcGVydGllcwogICAg
ICBwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IHRvIGRldl9lcnJfcHJvYmUKICAgICAgcGh5
OiBleHlub3M1LXVzYmRyZDogZml4IEVEUyBkaXN0cmlidXRpb24gdHVuaW5nIChnczEwMSkKICAg
ICAgcGh5OiBleHlub3M1LXVzYmRyZDogZ3MxMDE6IGVuc3VyZSBwb3dlciBpcyBnYXRlZCB0byBT
UyBwaHkgaW4gcGh5X2V4aXQoKQogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBnczEwMTogY29u
ZmlndXJlIFNTIGxhbmVzIGJhc2VkIG9uIG9yaWVudGF0aW9uCiAgICAgIHBoeTogZXh5bm9zNS11
c2JkcmQ6IHN1YnNjcmliZSB0byBvcmllbnRhdGlvbiBub3RpZmllciBpZiByZXF1aXJlZAogICAg
ICBwaHk6IGV4eW5vczUtdXNiZHJkOiBhbGxvdyBEV0MzIHJ1bnRpbWUgc3VzcGVuZCB3aXRoIFVE
QyBib3VuZCAoRTg1MCspCgogLi4uL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55
YW1sICAgICAgICAgfCAgMjEgKy0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZyAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUt
dXNiZHJkLmMgICAgICAgICAgIHwgMjE1ICsrKysrKysrKysrKysrKystLS0tLQogMyBmaWxlcyBj
aGFuZ2VkLCAxOTAgaW5zZXJ0aW9ucygrKSwgNDcgZGVsZXRpb25zKC0pCi0tLQpiYXNlLWNvbW1p
dDogYzI0NWE3YTc5NjAyY2NiZWU3ODBjMDA0YzFlNGFiY2RhNjZhZWMzMgpjaGFuZ2UtaWQ6IDIw
MjQxMTI3LWdzMTAxLXBoeS1sYW5lcy1vcmllbnRhdGlvbi1waHktMjlkMjBjNmQ4NGQyCgpCZXN0
IHJlZ2FyZHMsCi0tIApBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
