Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E42E606A329
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 10:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PRUlCHq4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=WGoeTlto
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=eUsGBsJu//cpg3eNVF7hvHI37kNVXD9O04mFKdEluQg=; b=PRUlCHq43dLnUFBD/U+aIvzYqs
	i3MuhYeuspj27yXbdiAd7ZbCQLAClDiDfnPm9N8SvaCojnr5vjlSMTRXllxoLPUa7KWIesJc3DZuF
	/QLjzhYGJV8/6P1sDzf7QvpLeh28za6MJd9iHMZomZxFu1aI8wAYnH8yoLs8a0TWT74uaHG0GD2n1
	6UTXrUyivCNZaHdXWtPYRswivkV1rnbrcUVRG2ulz2sK8JAFdHmFZrByVYDisqwqxnW5WJsZdstem
	XloXV0+33EJCwxf7cDYMyn9a6r1OVc49Jk1sglPsQGBV0RNAFaV/vdeUPAntuYbxpkE3LqoM7+E7C
	ere54HJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtNV-0000000FdMF-3mHR;
	Fri, 27 Nov 2026 10:40:29 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtNS-0000000FdIX-1Wx2
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 10:40:27 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-6bab377105dso6862981a12.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 02:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795776024; x=1796380824; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=2c6Rb/UBk4azewF8bkRw1dkEc/rmGwcJQDMivDwr1lA=;
        b=WGoeTltoARgq8Ql83ueeiDRdlIE0YH4tb+/MEjw58nqHCNQqOYtULVCcCN+H4/vvIL
         vHDOF+zPe2RFVZy3TPubQQL80hdCQN3htJC0qfqpT/PzGtbjvjPb07lufjVyp5CH01X2
         r11WvW86lw8AXTTVsnQVEoy1G9DDL3WzpV+nqxMy+sBkaEzbxe3vO8ZsDwMNzCXsmPuG
         Lt6zS4Y2kgXP1I8hBYNmzqY7NmkTb3jqgHnoqwDjpGqdS4ywqOIEopNG7mboEEmgp8cz
         HCiMH7Bvb1zZjhk+s/UhHdLgp2e8qiSaU/AZ5NdEKuA7fD9HLBThQYgGsUeyHwym+v3V
         WOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795776024; x=1796380824;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=2c6Rb/UBk4azewF8bkRw1dkEc/rmGwcJQDMivDwr1lA=;
        b=aCfej4fLRdNXBmqKW1B/ZfvI2mAbOI3sXK8O5vpqbjTm7zlESJ9CLCrsjV6vN/Ygbi
         HeHXgyJTwdio+cmMFZgK+aiOtWImQyuNTFZWQxXUm/9yoZi9TS9DdWD1RgvR15+MH1mF
         Kiou4fKcnAeWUZqBwW4xT3/nAkBzN60pr9QDF8WOekSJW5GgtFnY4m0NeMhKiBVXQ3fS
         rHulFldcygrm/Jm+vcQhIa1U72nwu5kV1A6Xkkg6emSypot6TbcSaullHj1uo3ZnntKj
         23w92dWfnDtwyJdo6WuO4WDmOv05EpWo4zNBQlvRTFIxSATQesckxKSFb+CZyGwSQ4gR
         74zQ==
X-Forwarded-Encrypted: i=1; AL+hErHsJombNooCkM0oAClAvCAuGtJggpcRXSepat6qL2qk+YnJ5xNUCvVEIHbN3xit03np4nxxps/POcc=@lists.infradead.org
X-Gm-Message-State: APuU4Z+rjW4eujXpixF7hgvut1E/6HpLYFaWGsWCyj7eG1m0w5mcb4Px
	4r5UNJ2tu3GmM4k3GIzrUekNh76OsLGrkt4TSWfj0yV28HyATmuS0y6B4q8Pfi9ttQU=
X-Gm-Gg: AZFdTZf0P0HB1CNvd1Q0rTujGxUxz0RNKxx8IFsuOPfRipWYl1Mp1z9ZgOL7DdR1Ljq
	VilSKx4m30AT4rBZ+9m0Q2SfBtN9KL0M9kEqgJ4/W5k2V3DS3kcqEAtxQC7SgpJMMP7hjE5GMGB
	9VZdOmShCDj+97wR3B5ZnnPx4J3W7wIu1gvTbqotHolF56/ou9mYsRSggPkhJjN+vt5cN/FVst9
	ntv/qRqd7M7cbUCngCwQCCQ2QYsIHLm6EzADmaZZt7JqTDDm+L6SszP1FdDBTHnfSL1gBGMp825
	m2WAqdf9/QAafFB+9YKz8XMcG90kmIbW1pLRnz0kVR/4Msb+m4B/sbiwYq40fxEum/FjyIsAd3E
	BpahcHov9h6tci+zU/sqbuXwio//BZbX+ndniJ/fCaejFKPV5UzMYF0Hcn1cowonhqG+gdyA3hw
	7IhvMw6TAofSQlN9+ujhTpKuIAgJUtDtnhW2jBixYFBmjEqT49lr/k5clYYLslBwku1IVJa0NbW
	QP0ad5XdfTWwdOuXCMd0aYVXzmQVbA2l/sHOpXjdHykAhdbeQUuOr6oOL74yZR0tvLrM0+zahyH
	NYCLbc/nhvWvR9vQJwd8J9717KtcscHUgFiEBgpKxnHjhm0K6UyBTZbAS17QK0H2TUkT3OehF8C
	Tn2pnmy742yUGxznxzA==
X-Received: by 2002:a05:6402:1492:b0:6b8:68fd:bf30 with SMTP id 4fb4d7f45d1cf-6ba37d5bf2dmr12996663a12.13.1795776024088;
        Fri, 27 Nov 2026 02:40:24 -0800 (PST)
Received: from puffmais2.c.googlers.com (226.124.90.34.bc.googleusercontent.com. [34.90.124.226])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6bb11ff543fsm3919199a12.2.2026.11.27.02.40.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 02:40:23 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/3] phy: samsung-ufs: fix gs101 OOB read and use counted
 config tables
Date: Fri, 27 Nov 2026 10:40:20 +0000
Message-Id: <20261127-gs101-ufs-phy-oob-v1-0-144b0e04c3a8@linaro.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABReCWsC/x3MSQqAMAxA0atI1gaaOiBeRVw4pG02VhoURby7x
 eVb/P+AchJW6IsHEp+iErcMKgtYwrR5RlmzwRrbEtkGvZIhPJziHm6MccbOVKaa2oZcPUPu9sR
 Orv85jO/7AcBI7qxjAAAA
X-Change-ID: 20261125-gs101-ufs-phy-oob-80303a651f4b
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <ndesaulniers@google.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
 Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-hardening@vger.kernel.org, 
 llvm@lists.linux.dev, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_024026_422876_BFF2E4F4 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgpCb290aW5nIGEgZ3MxMDEgcGxhdGZvcm0gd2l0aCBnZW5lcmljIEtBU0FOIGVuYWJsZWQg
dHJpZ2dlcnMgYQpnbG9iYWwtb3V0LW9mLWJvdW5kcyByZWFkIGR1cmluZyBVRlMgUEhZIGNhbGli
cmF0aW9uIGJlY2F1c2UKdGVuc29yX2dzMTAxX3ByZV9wd3JfaHNfY29uZmlnW10gb21pdHMgdGhl
IEVORF9VRlNfUEhZX0NGRyBzZW50aW5lbC4KClRoaXMgc2VyaWVzIHN0YXJ0cyB3aXRoIHRoZSBt
aW5pbWFsIGZpeCBzdWl0YWJsZSBmb3IgYmFja3BvcnRpbmcgdG8Kc3RhYmxlIGtlcm5lbHMsIGZv
bGxvd2VkIGJ5IHR3byBoYXJkZW5pbmcgcGF0Y2hlcyB0byBwcmV2ZW50IG1pc3NpbmcKc2VudGlu
ZWxzIGFuZCBvdXQtb2YtYm91bmRzIGNvbmZpZyB0YWJsZSBhY2Nlc3NlcyBpbiB0aGUgZnV0dXJl
OgoKLSBGaXggdGhlIGdsb2JhbC1vdXQtb2YtYm91bmRzIHJlYWQgb24gZ3MxMDEgYnkgYWRkaW5n
IHRoZSBtaXNzaW5nCiAgRU5EX1VGU19QSFlfQ0ZHIHRlcm1pbmF0b3IgKHRhZ2dlZCBmb3Igc3Rh
YmxlKS4KLSBFbWJlZCB0aGUgcGVyLVNvQyBjb25maWcgcG9pbnRlciBhcnJheXMgaW4gc3RydWN0
CiAgc2Ftc3VuZ191ZnNfcGh5X2RydmRhdGEgd2l0aCBmaXhlZCBib3VuZHMgYW5kIG1vdmUgdGhl
bSB0byAucm9kYXRhLgotIFJlcGxhY2UgRU5EX1VGU19QSFlfQ0ZHIHNlbnRpbmVsIGl0ZXJhdGlv
biB3aXRoIEFSUkFZX1NJWkUoKS1jb3VudGVkCiAgdGFibGVzIGFubm90YXRlZCB3aXRoIF9fY291
bnRlZF9ieV9wdHIoKS4KCk9uIGFybTY0IChub24tZGVidWcgYnVpbGQpLCB0aGUgdHdvIHJlZmFj
dG9yIHBhdGNoZXMgc2hyaW5rCnBoeS1leHlub3MtdWZzLm8gYnkgMTQ0IGJ5dGVzIG92ZXJhbGwg
KC50ZXh0IC0xNjAsIC5kYXRhIC0xNzYsCi5yb2RhdGEgKzE5MikuCgpOb3RlIHRoYXQgZXh5bm9z
YXV0b3Y5X3Vmc19waHkud2FpdF9mb3JfY2RyIGlzIG5ldmVyIGNhbGxlZCAoYmVmb3JlIG9yCmFm
dGVyIHRoaXMgc2VyaWVzKSwgYmVjYXVzZSBleHlub3NhdXRvdjkgZGVmaW5lcyBuZWl0aGVyIGEK
Q0ZHX1BPU1RfUFdSX0hTIHRhYmxlIG5vciBoaWJlcm44IHRhYmxlcyAtIHRoaXMgc2VyaWVzIHBy
ZXNlcnZlcyB0aGUKZXhpc3Rpbmcgd2FpdF9mb3JfY2RyIGJlaGF2aW91ci4KClRlc3RlZCBvbiBQ
aXhlbCA2IChnczEwMSkgd2l0aCBnZW5lcmljIEtBU0FOIGFuZCBVQlNBTl9CT1VORFMgZW5hYmxl
ZCwKaW5jbHVkaW5nIFVGUyBoaWJlcm44IGVudGVyL2V4aXQgY3ljbGVzLgoKQ2hlZXJzCkFuZHJl
JwoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9y
Zz4KLS0tCkFuZHLDqSBEcmFzemlrICgzKToKICAgICAgcGh5OiBzYW1zdW5nOiBnczEwMS11ZnM6
IHRlcm1pbmF0ZSBwcmVfcHdyX2hzIGNvbmZpZwogICAgICBwaHk6IHNhbXN1bmctdWZzOiBlbWJl
ZCBjZmdzIGFycmF5cyBpbiBkcnZkYXRhCiAgICAgIHBoeTogc2Ftc3VuZy11ZnM6IHVzZSBjb3Vu
dGVkIGNvbmZpZyB0YWJsZXMKCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M3LXVmcy5j
ICAgICAgICB8IDE3ICsrKystLS0tLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vc2F1
dG92OS11ZnMuYyAgIHwgMTQgKysrLS0tLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5v
c2F1dG92OTIwLXVmcy5jIHwgMjUgKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1mc2QtdWZzLmMgICAgICAgICAgICB8IDIzICsrKysrKy0tLS0tLS0KIGRyaXZlcnMvcGh5
L3NhbXN1bmcvcGh5LWdzMTAxLXVmcy5jICAgICAgICAgIHwgMjYgKysrKysrLS0tLS0tLS0tCiBk
cml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1zYW1zdW5nLXVmcy5jICAgICAgICB8IDQ4ICsrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LXNhbXN1bmctdWZz
LmggICAgICAgIHwgMjYgKysrKysrKysrKysrLS0tCiA3IGZpbGVzIGNoYW5nZWQsIDg3IGluc2Vy
dGlvbnMoKyksIDkyIGRlbGV0aW9ucygtKQotLS0KYmFzZS1jb21taXQ6IDMxOTEwNjM2NDlkYmY3
YzBkMGI3NjhlMWYzNjU1ZTRjNWZjNmVkYjUKY2hhbmdlLWlkOiAyMDI2MTEyNS1nczEwMS11ZnMt
cGh5LW9vYi04MDMwM2E2NTFmNGIKCkJlc3QgcmVnYXJkcywKLS0gCkFuZHLDqSBEcmFzemlrIDxh
bmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
