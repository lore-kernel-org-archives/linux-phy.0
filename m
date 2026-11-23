Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B40606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 14:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UWiQtAox;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=X7TNJr/b
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=zoObroEP/GrSNKZ9wkRQF+d9QlViaBFREBmEk/09WCo=; b=UWiQtAoxn+tvoDUO4IWHaaiJ94
	+nU8ioEL6TgabGKYAn4R6jXt3Ij0nNvRqhOy6VERR6d8fJa9Qyt4FU1aFLMvmjr5X3qVKMLsHkibK
	9aUxYdfs1BAg3cEmYO/pKIcTfj7iIJTTncY9VuR0a2QSGakg/ih3gTNIqdbv1DuPD01tnQWCqL6UL
	3UnZEoBjDLWwOWxBrORRIqm9Ktp7s1zAVy6qE7LPQbHISBe1B4kP2o+QzbLE0xFfEwTNbkEk/V4sH
	lc7TKqM3HWKertclO9JnngBpNTp4WyuhuWaNYCPQwCvN+i/xCVTP4j2cmYN/o4UuZqY3KblmHJ7+0
	rB9XLaGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVUzZ-00000003jiQ-2fBB;
	Mon, 23 Nov 2026 14:26:01 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVUzV-00000003jde-2Vgm
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 14:26:01 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-c513a854320so553376566b.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 06:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795443955; x=1796048755; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Cj3zguVu7lWCJCgLfs0Mb2vwVUbkkSnlbqSfbG7RdEA=;
        b=X7TNJr/bqRJFrnEVfCkE5Z55ZU3H4CvIcfIfsmJ2mBUGaQA3YZ2g5Yx5HMSaryYCTC
         drC7xpc6BEZKhmARDWCixSJ53aM8DdPI4A4uaP78EzmfdwGJve3GYuTnC+TYzILYI3Uo
         Fc2LRrAdPQ58RqqE+hJzrQd67tqua3qyqy8y0ysWso+RTulJJmEdE1Oig9en9QIVfhji
         88Dj9Wu56kzmmDDe0CO01qRPsJLjgOQf11GEwTML+1ywooRpctH19xOBkCUp6aPAgV3t
         Pnkve/rK9nn+jwLBQP4qUHzBfbAWUu27FDr80H0ViUhxcK0e0gTj56FqyfQZTc6SN6Qk
         B/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795443955; x=1796048755;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Cj3zguVu7lWCJCgLfs0Mb2vwVUbkkSnlbqSfbG7RdEA=;
        b=LDX5WV9KYIfJBzF9VUv0qKrFbje+kPniixktLvpBuhTP8Ebjda2w3zHBgwaYOgoqv+
         CBbsmT5OmnP3uIbdPlc0Ul2NHg9WBd6HZn3yJNCwx33Czdl6DCAq5m6LNpLLuPkCdC/f
         IBM3RqwthFnGrIu+4rgR3XGhDMhk8E89NSdlRS6dmwweL5x+3lco6/fpzKpDdwEyE5Fp
         gcPPpG2t66lNmbSSgsFzim/dLPRyU8Z5yNxzh5seqwLRMpYLAHaXENQtRnHO5Dy28o++
         2RW8Y5IkzEf09le8QzooChBoO3rOX0Xu1f/MLpNRCFlMxZ0eE8BC0G7B+4oZRiGsRKzn
         phMw==
X-Forwarded-Encrypted: i=1; AL+hErEdTK4WQhksNod5HjVAaHxFU9/CXvtiQbFHMO89P1fbAPkO7xukf7l4W2uDMHrc+GDAfNPSQOt9pJY=@lists.infradead.org
X-Gm-Message-State: APuU4Z+Hrvc1BN/CjhaFbU2oQ/edclpW6zzyrh6ZDB+eylVzIj5x8PmJ
	zOZK2FRRIefbphpkjZFus49oaqFJlrKnw930LlxyAEi9BKPhHOsqRrRtpJ6iWam1mHU=
X-Gm-Gg: AZFdTZc827E8dV6b9ujF9tNxJ5FdqA1gXlsZz9yxpcCRzCePT84h3C2XNBaB6W3E8BS
	UJp14UtEQ+J0sTTuLpCCzKB7IVbagsslQocfYKm4iCnOaNZcYWUHt7alHA43nBt5RGUXjcU6IAf
	LwPWAkHknvm6JL9/Ylad5PVVvh2A2+J0zdejRQuW7FW22MwnACJX0Pe1+hciCnSpugcO1v+ngZ7
	ejTylyXQTMmcAkWaYeg7EUA/qOaPfkqJwopjldVDNN5kJPCn4dLZ5I1GOthjnSlh6OUCBnFH7XP
	AVKP0DRmnpks+KfCnNO9VrStx3vmfMCGuLj9mV9UEZ62Mo0pUckQlnh0P7cdMMLQtZgRCdPO5Az
	XCUy5fGf+236tknvsxJaSeQo/syIpqWWKcz71FIUR/mVyYP0FO0+yhZZTBoXaCgj+zdh0BzHECI
	pBglQD1Ag4/8LKKgthSLctQ6sxnZSUCY8Z0zz2PuG59l8zVRxhoby5C73sI8nZZaj+613CHIwnJ
	KkcHRGDoBoV3uV4Y95GG8PJX1M9rq7Z0vAUK9Vn6s9V+j7PQ9s6bx/2fVD7xLASokK8K1jw3wPN
	XTWHLW8i4GcmFFrYCWmZcOFEnl3iIddU48YUBMtnaJSLAJWsjnqogGohis5qLv0ETNwEkgWxGp4
	fTEsmvSV0wvFaM2q8QA==
X-Received: by 2002:a17:906:1c11:b0:c50:8d2b:4392 with SMTP id a640c23a62f3a-c513ab38967mr715904966b.49.1795443955446;
        Mon, 23 Nov 2026 06:25:55 -0800 (PST)
Received: from puffmais2.c.googlers.com (226.124.90.34.bc.googleusercontent.com. [34.90.124.226])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513ae67cbfsm428224366b.14.2026.11.23.06.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 06:25:55 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/2] phy: exynos5-usbdrd: gs101 PIPE3 init fixes
Date: Mon, 23 Nov 2026 14:25:53 +0000
Message-Id: <20261123-gs101-usb-phy-orientation-v2-0-3361fa5f7543@linaro.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPFMBGsC/42NQQrCMBBFr1Jm7UgmBqmuvEfpoolJOiBJSWqxl
 N7dsSdw8+F9eP9vUH1hX+HebFD8wpVzEtCnBtw4pOiRn8Kglb4S0Q1jJUX4rhanccUscpqHWSw
 0xrk2kAlKKxB/Kj7w59jueuGR65zLelwt9Gv/WV0ICW24OGMldesfL05DyedcIvT7vn8BPNREj
 sMAAAA=
X-Change-ID: 20261119-gs101-usb-phy-orientation-44cc8f14f020
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 RD Babiera <rdbabiera@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, phone-devel@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_062557_655486_9234A495 
X-CRM114-Status: UNSURE (   9.55  )
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

SGksCgpUaGlzIHNlcmllcyBjb250YWlucyB0d28gZml4ZXMgZm9yIHRoZSBVU0IgMy4xIFBJUEUz
IFBIWSBpbml0aWFsaXphdGlvbgpvbiBHb29nbGUgVGVuc29yIGdzMTAxOgoKMS4gUmUtaW5pdGlh
bGl6ZSB0aGUgUElQRTMgUEhZIGZyb20gdGhlIFR5cGUtQyBvcmllbnRhdGlvbiBzd2l0Y2gKICAg
Y2FsbGJhY2sgd2hlbiB0aGUgb3JpZW50YXRpb24gY2hhbmdlcyB3aGlsZSB0aGUgUEhZIGlzIGFs
cmVhZHkKICAgaW5pdGlhbGl6ZWQuIFdoZW4gYSBjYWJsZSBpcyBjb25uZWN0ZWQgZHVyaW5nIGJv
b3QsIHRoZSBQSFkgY2FuIGJlCiAgIGluaXRpYWxpemVkIGJlZm9yZSB0aGUgVENQQyByZXBvcnRz
IHRoZSBvcmllbnRhdGlvbiwgYW5kIERXQzMgcnVudGltZQogICBQTSBpcyBmb3JiaWRkZW4gYnkg
ZGVmYXVsdC4gV2l0aG91dCByZS1pbml0aWFsaXppbmcsIHRoZSBTdXBlclNwZWVkCiAgIGxhbmVz
IHN0YXkgcHJvZ3JhbW1lZCBmb3IgdGhlIHdyb25nIG9yaWVudGF0aW9uIGFuZCB0aGUgbGluayBj
b21lcyB1cAogICBpbiBoaWdoLXNwZWVkIG9ubHkuCgoyLiBBcHBseSB0aGUgZXhpc3RpbmcgZ3Mx
MDFfdHVuZXNfcGlwZTNfcG9zdGxvY2tbXSB0YWJsZSBvbmNlIHRoZSBQTEwKICAgYW5kIENEUiBo
YXZlIGxvY2tlZC4gSXQgZGlzYWJsZXMgdGhlIGhpZ2gtc3BlZWQgUlggc3F1ZWxjaCBkZXRlY3Rv
cgogICBpbiBQMyAvIFUzIHRvIHNhdmUgcG93ZXIgd2hpbGUgdGhlIGxpbmsgaXMgc3VzcGVuZGVk
LiBUaGUgdGFibGUgd2FzCiAgIGFkZGVkIGluIGNvbW1pdCAzMjI2N2MyOWJjN2QgKCJwaHk6IGV4
eW5vczUtdXNiZHJkOiBzdXBwb3J0IEV4eW5vcwogICBVU0JEUkQgMy4xIGNvbWJvIHBoeSAoSFMg
JiBTUykiKSBidXQgbmV2ZXIgYXBwbGllZC4KClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlr
IDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0tLQpDaGFuZ2VzIGluIHYyOgotIEFkZCBwYXRj
aCAyIHRvIGFwcGx5IHRoZSBleGlzdGluZyBnczEwMSBwb3N0bG9jayB0dW5pbmcgdGFibGUKICAo
UFRTX1BJUEUzX1BPU1RMT0NLKS4KLSBQYXRjaCAxIGlzIHVuY2hhbmdlZCBmcm9tIHYxLgotIExp
bmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjExMTktZ3MxMDEtdXNiLXBo
eS1vcmllbnRhdGlvbi12MS0xLWJmM2M0YmJmMzI4ZUBsaW5hcm8ub3JnCgotLS0KQW5kcsOpIERy
YXN6aWsgKDIpOgogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBnczEwMTogcmUtaW5pdCBQSVBF
MyBvbiBvcmllbnRhdGlvbiBjaGFuZ2UKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogYXBwbHkg
Z3MxMDEgcG9zdGxvY2sgdHVuaW5nCgogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11
c2JkcmQuYyB8IDYzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hh
bmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKLS0tCmJhc2UtY29tbWl0OiA3
NDlhNGRlMzcwNDA5NDY0Y2Y4NTAxZWM1YjI0NTFkZjQ1Yzg0ZWI0CmNoYW5nZS1pZDogMjAyNjEx
MTktZ3MxMDEtdXNiLXBoeS1vcmllbnRhdGlvbi00NGNjOGYxNGYwMjAKCkJlc3QgcmVnYXJkcywK
LS0gCkFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
