Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B1EEE7717D
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 16:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DB4yv9J3CDDL6Tlkdlos9Oh5A0f2bdLYqepjVpCzP/c=; b=iFuiiGLWnzRtwk
	lCG/IZ5SkJcb6GEW8QWCeJAHNqZ74dXsPl6iojGZzE/YEQCd/9UPyxn4y9zoTmRELHX+TLIOmtOdL
	cHQNrBpj6xn4dxaRXdfiAY3xV3EtMXFr72CS5aKzz1+AkI8D2TEBMwvkKE7CIy2t31rYwJ0dKcbSL
	yCFl5+n+Gv3RyOUDUbyYXaQzwKF5bH0LF4nJQ43EMKN+NAM+Qjln8n99WDYh85LMuTyuDnzrN+VxE
	E1gvvF7qrKgeqlhqUyz0sh7IiXtdCaZFf0r1hxqgmL1Ri5HmPMnbTXNPOv+swQ8OU8kt2BNYuySTa
	kfq47le0V7b9O8YFpncg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbIS-00000002BUc-3I2I;
	Fri, 06 Dec 2024 16:35:16 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbEP-00000002AEJ-3W2U
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 16:31:08 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-385e1f12c82so1954443f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Dec 2024 08:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502664; x=1734107464; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=KhcHPotYrU6XRRnuI3kkqTobLkcadO8v33TKusIJzxpX3G9ULAwUb898dRxx3R+4ta
         cJuuFmDalBnG+PLkyCU5WZQID01YyWKLM9IfPAPjVGxy/JU0akiPeP8/ZCE4byiPZ/J3
         9tpD0S6WIqSkwHy6TEtEEVh+2LYgz+rE3lKg+0nta96pcQ8CmIKKRGRthsqA8weDec5V
         qM6/hmhk5Z8lo663a/GWLXEN2zoBs8Km3uRucH1Vq2b/m/OHDGuTLUk1tKYJkKneECtt
         AwUcxgl8Ujv9JdlTBxrNFcwV4hIRuNITyjLt/6vXoUQnEdgUIM+IVO5pA6NQReEjgq2f
         v6YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502664; x=1734107464;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=k9iNV0O5tYDqSS5ud6cD0Kf8S7pFG5r3Z9jCi4W0aCPbWfsviaP0PxMkWVz/fj2Wrz
         cFhCHiSYuqQewvSrQ6m/8SHKwDerQPRhAm30Q0AwEBS6q2YhgejTS+KZQWLmhXciv880
         hprfjqtRdoWfME8Bvs/sxAUdGo5srG2iGfTslFVhlGu25p0MalyUp6/b+olK0t5cbN1v
         ZBHABw31QHVLd1pJm+l51em9gC7BfInNCEa7eYQFDv+khrsPez4AFJAWxcYAmh3wcXMX
         IV50oQlIlFX0o1gJloZjLdDP0ZxMZwvIvQJTfRcNN9hbUVrGANp1ryEDMgkk1xbmUwMn
         h1jg==
X-Forwarded-Encrypted: i=1; AJvYcCWoFmbUj1abHBqwIlBxXomXp8MyOQIIi5QjC2xX8WoxcP3hzOi9AUzq2n4WA71q6sO7pNSKNAACZpQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPogdwOMwPldNtlc74SrOY/qd+/eoVmYijFCG/QgdMJfml2gdr
	kmg9eBot5MfOt4RecJ0GhCFoSHqX3FpjhrUje+uPt8n3QlOMK2xXYdp6MOQ6/UQ=
X-Gm-Gg: ASbGncthMQW7snlUe0zF6HkmVBEUGhbUx1CX6inCz+/izpBxW0u5o9bdTdqrgmEdx0f
	IpIJ70cZjJQ569NI2DFYODBwq9vbZREgkkvZspTJW1fCnqNurQ6u60vDFRDWwyFRaNngCsbpWHa
	nG63z7nDdLUFMesDG0cHmhisCkE6Ebmtp8Kg9bDU0aA6MKG2z8MiyfplmZwIQtRVa5vaIX97uns
	CIPOlr2/8dUSNbzwPu+L5DhRyaUe8p4F2cnMe+TeYyNkkiLVApdLrquaTvgqRgzCmZyqkn2UCha
	NQ0f4RKBFRywLp0qF6eAJI0XsImi8KTh4g==
X-Google-Smtp-Source: AGHT+IG1rlIGyO/nnPLuP1Na7RwgQmQmvS86new+NKYuNxLnewiatbb2kxtQ1hikVy0uIxEBRnzdMw==
X-Received: by 2002:a05:6000:1865:b0:385:ed1e:20fe with SMTP id ffacd0b85a97d-3862b3e649amr3139459f8f.59.1733502663773;
        Fri, 06 Dec 2024 08:31:03 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:03 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Dec 2024 16:31:04 +0000
Subject: [PATCH v4 4/7] phy: exynos5-usbdrd: fix EDS distribution tuning
 (gs101)
MIME-Version: 1.0
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-4-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
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
X-CRM114-CacheID: sfid-20241206_083105_887485_22F70F7F 
X-CRM114-Status: GOOD (  12.34  )
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

VGhpcyBjb2RlJ3MgaW50ZW50aW9uIGlzIHRvIGNvbmZpZ3VyZSBsYW5lMCBhbmQgbGFuZTIgdHVu
aW5ncywgYnV0IGZvcgpsYW5lMiB0aGVyZSBpcyBhIHR5cG8gYW5kIGl0IGVuZHMgdXAgdHVuaW5n
IHNvbWV0aGluZyBlbHNlLgoKRml4IHRoZSB0eXBvLCBhcyBpdCBkb2Vzbid0IGFwcGVhciB0byBt
YWtlIHNlbnNlIHRvIGFwcGx5IGRpZmZlcmVudAp0dW5pbmdzIGZvciBsYW5lMCB2cyBsYW5lMi4K
ClRoZSBzYW1lIHR5cG8gYXBwZWFycyB0byBleGlzdCBpbiB0aGUgYm9vdGxvYWRlciwgaGVuY2Ug
d2UgcmVzdG9yZSB0aGUKb3JpZ2luYWwgdmFsdWUgaW4gdGhlIHR5cG8nZCByZWdpc3RlcnMgYXMg
d2VsbC4gVGhpcyBjYW4gYmUgcmVtb3ZlZApvbmNlIC8gaWYgdGhlIGJvb3Rsb2FkZXIgaXMgdXBk
YXRlZC4KCk5vdGUgdGhhdCB0aGlzIGlzIGluY29ycmVjdCBpbiB0aGUgZG93bnN0cmVhbSBkcml2
ZXIgYXMgd2VsbCAtIHRoZQp2YWx1ZXMgaGFkIGJlZW4gY29waWVkIGZyb20gdGhlcmUuCgpSZXZp
ZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgpUZXN0ZWQt
Ynk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KU2lnbmVkLW9mZi1i
eTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCi0tLQp2MjoKKiBj
b2xsZWN0IHRhZ3MKLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5j
IHwgNyArKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJk
LmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IGNlYWU0
YjQ3Y2VjZS4uMmE3MjRkMzYyYzJkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3Bo
eS1leHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUt
dXNiZHJkLmMKQEAgLTE1MTAsOCArMTUxMCwxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGV4eW5v
czVfdXNiZHJkX3BoeV90dW5pbmcgZ3MxMDFfdHVuZXNfcGlwZTNfcHJlaW5pdFtdID0gewogCVBI
WV9UVU5JTkdfRU5UUllfUE1BKDB4MDllMCwgLTEsIDB4MDApLAogCVBIWV9UVU5JTkdfRU5UUllf
UE1BKDB4MDllNCwgLTEsIDB4MzYpLAogCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MWU3YywgLTEs
IDB4MDYpLAotCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MWU5MCwgLTEsIDB4MDApLAotCVBIWV9U
VU5JTkdfRU5UUllfUE1BKDB4MWU5NCwgLTEsIDB4MzYpLAorCVBIWV9UVU5JTkdfRU5UUllfUE1B
KDB4MTllMCwgLTEsIDB4MDApLAorCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MTllNCwgLTEsIDB4
MzYpLAorCS8qIGZpeCBib290bG9hZGVyIGJ1ZyAqLworCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4
MWU5MCwgLTEsIDB4MDIpLAorCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MWU5NCwgLTEsIDB4MGIp
LAogCS8qIGltcHJvdmUgTFZDQyAqLwogCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MDhmMCwgLTEs
IDB4MzApLAogCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MThmMCwgLTEsIDB4MzApLAoKLS0gCjIu
NDcuMC4zMzguZzYwY2NhMTU4MTktZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
