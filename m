Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D700AD609D1
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZbiESOsgrnwhYwNfSVJF6OIzXvEJ0twzSfmdpmnTuXM=; b=yjnU+wpXDLBNc6
	eqrxy/jfsaXc2KWKuNcTlGh3DCE263ikeffuJnJ4a/aaUM/oxK2+trUOHcxMHj6afCX+pg/I2pw5i
	+mw1hGsIkvFuEYk9tCqLzbZIIpOsAK9021L04K2aAYatY/wWEZLsGY6TqBCcCJZpsbYfHNXY9Rdke
	MPlFAeS40K+XIF7rAr1MziAJAHwnOPUePizUGhOnsUklx8Mchd5jHNJKwe69XdxHm4WXvcKljjKMK
	1WLEaBdk30wJlbfb8e9pqIE1jqwUMdR6RKEDTx0TX74R2MrzGKK5ycfzlCLpUVRGNve5H9WkXNfdk
	3OWRzGTYX/u0lHbnsSQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkO-0000000CvEe-2fu6;
	Wed, 27 Nov 2024 10:58:16 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkM-0000000CvBV-1xOv
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:58:15 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5cfadf851e2so8763296a12.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705092; x=1733309892; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FnSBghT1PQvjEoqKzE6lYaSFxfTQgIMEYx5M8qLoZaE=;
        b=bqEHQRIdOeBN8aMZQ8+uU9psoh946dD6ssfoXFMWN6t5WWedmwgi/4q7jgfRlLELlV
         Y2LpOxAe0QPmOdUbIsi/ZXi1a8gRwsOpYYOkH8lhPSz6iA4nO9PThgrU5oczZY7Tzerl
         +ukHf8aOzygWZIRZpojCsiEpuX6a5D4ffZju+0KQ7NYMhIBcl1W6Y0DfxKZyMJ2ggOPB
         eEIo4blO/7H2jKtnKVPyVuUhAFg61AaVpbC3+mvNWJo6Pj8v2BZIu7U9U2K6hO47tQlm
         Lw1dXEYjFrccKmUCBOsVAYHKK61fmC30W7KQztGdIGM30vgG8EFDjVCeJCbhObrCiw1h
         n0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705092; x=1733309892;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FnSBghT1PQvjEoqKzE6lYaSFxfTQgIMEYx5M8qLoZaE=;
        b=UhncERqj04BnmzzqEwEMfQ0EMyWDezineXKu6wRlBammGyRhsrP1ImqurK3Xdn+LMt
         1ooI4rDGMXTnAOxsWIzESrVaUD2YVKsBgwRHS/h93rKVm4DgMioVQ+PKDtakgJkBQBzE
         Q/vZ6kQvwKrzdJzOZQPgTF0tVNM+ocpw2ifZ3OC2rNSY2hVCW1tHe7ngeRCMVTzllPb1
         lk2D6/tJeS9e4mBilbH+4WOKbu3YBU3eMCGVfeXmzY7I0vQ9Eoym7BQ3I1hfC9zxUNQJ
         ETSy8tG0gVXTXmhC2wPXGgq2eoPA+ir3FRJTBlQ6US/556DKBrgDS68lAuWkQoFjfa9W
         wRzg==
X-Forwarded-Encrypted: i=1; AJvYcCXoTeWNAqpdAAYsb+YhD4AeRQnSvVLWigvLPbokUEjvUHqlCB+pW5DUfKL97nvn45yu2xRvyjkj2Dc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhrS3UG+XSPzQDo1UxfWgtY5MJXvB2GW5UUyBbyuxuYCNrXrZz
	Ye2zekA072C8SS+6EKLRejXOflbWiJJJvsn9ppek6bmfj0PHmuKQJfxzezn45lI=
X-Gm-Gg: ASbGnct1ds9PpujuxSZHCSi5MlmeiX5IQjoqh0++CpDWlM77YIz0xAZOQ8kckKCrkZM
	dcyHKiv1CdnZJeyi+EMisqIl/cczjBhah7mTnd8Le/s1TuuQHoo4jxDfRx/+KU0W93Z29nY07HQ
	df3Y6eu4FxpcN7t9Pp+aHTY+r/YdnPWNYvb9LMy1CPEMhbTPwf3hiuSVRRWd6Cz7CKOzAQDGlMY
	8R3lcML8g7T4zEIrtLVk+3sSBI2BSGymRB5zmzZuD16DY0ol77R6mOofVU12F8b9UOD2hFhEv+Z
	QrHvpt62tAp/vJZh4iXvYa5g+bcKCsgbcQ==
X-Google-Smtp-Source: AGHT+IHtqYL91H6SMMvksK3ZTB/2Fzc9xaGKysfgcuXFtHMmqYC6TditIFw1AYITQuYQn85K2iSkAQ==
X-Received: by 2002:a17:906:1bb2:b0:aa2:c73:3720 with SMTP id a640c23a62f3a-aa58107846bmr200250766b.58.1732705092241;
        Wed, 27 Nov 2024 02:58:12 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:11 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/9] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
Date: Wed, 27 Nov 2024 10:58:10 +0000
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEL7RmcC/x2NQQqDQAxFryJZG5iEoa1epbgYnFQDZZSJFEW8e
 4PL9+G9f4JJVTHomxOq/NR0KQ7UNjDOqUyCmp2BA0cifuJkFAjX+cBvKmK4uF62tLl3r9xlDuM
 jv2Jm8Mpa5aP7/fAerusPwzyMdXEAAAA=
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_025814_495434_22A44933 
X-CRM114-Status: UNSURE (   8.95  )
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
LWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KQW5kcsOp
IERyYXN6aWsgKDkpOgogICAgICBkdC1iaW5kaW5nczogcGh5OiBzYW1zdW5nLHVzYjMtZHJkLXBo
eTogYWxpZ24gdG8gdW5pdmVyc2FsIHN0eWxlCiAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IHNhbXN1
bmcsdXNiMy1kcmQtcGh5OiBhZGQgb3B0aW9uYWwgb3JpZW50YXRpb24tc3dpdGNoCiAgICAgIGR0
LWJpbmRpbmdzOiBwaHk6IHNhbXN1bmcsdXNiMy1kcmQtcGh5OiBnczEwMTogcmVxdWlyZSBUeXBl
LUMgcHJvcGVydGllcwogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IHRvIGRldl9l
cnJfcHJvYmUKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogZml4IEVEUyBkaXN0cmlidXRpb24g
dHVuaW5nIChnczEwMSkKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogZ3MxMDE6IGVuc3VyZSBw
b3dlciBpcyBnYXRlZCB0byBTUyBwaHkgaW4gcGh5X2V4aXQoKQogICAgICBwaHk6IGV4eW5vczUt
dXNiZHJkOiBnczEwMTogY29uZmlndXJlIFNTIGxhbmVzIGJhc2VkIG9uIG9yaWVudGF0aW9uCiAg
ICAgIHBoeTogZXh5bm9zNS11c2JkcmQ6IHN1YnNjcmliZSB0byBvcmllbnRhdGlvbiBub3RpZmll
ciBpZiByZXF1aXJlZAogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBhbGxvdyBEV0MzIHJ1bnRp
bWUgc3VzcGVuZCB3aXRoIFVEQyBib3VuZCAoRTg1MCspCgogLi4uL2JpbmRpbmdzL3BoeS9zYW1z
dW5nLHVzYjMtZHJkLXBoeS55YW1sICAgICAgICAgfCAgMjAgKysKIGRyaXZlcnMvcGh5L3NhbXN1
bmcvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcGh5L3Nh
bXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgICAgICAgICAgIHwgMjIyICsrKysrKysrKysrKysr
KystLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxOTcgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25z
KC0pCi0tLQpiYXNlLWNvbW1pdDogZWQ5YTRhZDZlNWJkM2E0NDNlODE0NDY0NzY3MThhYmViZWU0
N2U4MgpjaGFuZ2UtaWQ6IDIwMjQxMTI3LWdzMTAxLXBoeS1sYW5lcy1vcmllbnRhdGlvbi1waHkt
MjlkMjBjNmQ4NGQyCgpCZXN0IHJlZ2FyZHMsCi0tIApBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJh
c3ppa0BsaW5hcm8ub3JnPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
