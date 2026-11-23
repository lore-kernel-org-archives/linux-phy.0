Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC11E606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 14:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=p7NOaM+H;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=AHokXboO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=BwXqQ4Gy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KCk+OKEYhVS00YHWz27eWYOU2RgeSEgZe74tlEyLN+k=; b=p7NOaM+HfWqWl5PlH7RXYXBKdQ
	BYSSB9Rb2cB4riF5FYRPiBHNIdHi5K0jgV8NzY2H1Uni2JLevzneMZMn2D3Dfbd3jokJUHZMw7gRa
	6hvGpC8UlYk6j3h9JcgzJGLMsku0ygmY4wNgYrAwjzg7GoRd4QKzEeS9+b1bc5bnDyHqpVFU2SJEx
	c/m6eHAvm3Usk1EAJEl5amSHAljvhwPc78l/VxCDECp0iXWOR5oE+1UwyfSQy51MRP5Z/sgfteztm
	5pWpKUJPfUFEN5q4c53XRgtGELf6afIB/iwYNXTXA80cXrKM3mk/MoFaGKcb8xyKtzUwT/ZUu7iCC
	NsyBa7Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVUzq-00000003jwM-2MmF;
	Mon, 23 Nov 2026 14:26:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVUze-00000003jmh-3YwJ
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Nov 2026 14:26:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=uxmsdlRkwXKs6xHOy9xMbMTKjN7AQ/1XvZ4ccJmXMbM=; b=AHokXboOUIn1QlSRGpgHocmm9g
	Mr3ioFyVNvDG/8EtQXFcjuHYsiKuGtuLBVeKrkWhEouulJy9il6I68SrKdAA2wmcA11eszB6Y36UW
	p6ttrXrnhMgBdnYj7Ab68p3SGtQ9dV7gDTLrIxdWPWcejE50RQi4fTaRdSHp4q+6qZNf5pwL1LdtA
	TKw4KUkMxqhNLNFvDV+5Ck/L/OIny6iGaCP7mp81+pHTn1Qd6FD94wjjiANP87I3fnDzTD6gSAJ17
	zd2fDoB4ysPXRS7ymDFP1Q9upuVgTOBAl00FZNrUtUldX1SJWMTSF8ShhNJpo1REgBX3bHEZf0t90
	oWh3r8kw==;
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVUzZ-00000003EcD-24rx
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 14:26:04 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c505b2e1cb9so639505666b.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 06:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795443956; x=1796048756; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uxmsdlRkwXKs6xHOy9xMbMTKjN7AQ/1XvZ4ccJmXMbM=;
        b=BwXqQ4GyslegtZR7ewDMADEfL1xczivT6OW2cCaP/zafFQi5aMeNmyr6T3uDJsrDNH
         qFAKm7eaqEwXkjVo26v7WjoFlE8xfU8roAazbHN8mBhLaekaxcLi4JoDKOU0AF9jX761
         /Y00gU9rPnrPA2BmoZQvAWK27hd82JyxCuJRcyM7OtLHf/8Qrzt4+Ze0dFEuGIQrGZOS
         EgUtVMdu5g1a2UF9FRoJegoXY8oA/eEyiHRdfQtAOzWfFAY0Q1mTQNXuz3P4soTTdE6j
         IqLHw+P4Bar1TojHr4KFgOcaZnhXHnkJS0zMCxra4ujbYcC2lNfeC1CVYxrzyI/QXN1f
         6C/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795443956; x=1796048756;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uxmsdlRkwXKs6xHOy9xMbMTKjN7AQ/1XvZ4ccJmXMbM=;
        b=WfhHo3ghF66B77InOjiRohbIPYxctatDe7sjnMpcAP1jQlBv8FnnkYJ/rqEaTfPi3d
         6Mhwqzut0GQ3dy6GLNN3TSiIO+kQzKf8fkefOZRZZOu3yZ+HDawOyR0eNZMvfnESUKyo
         7xfethSVwdaF0XgxzQ2SbxxcN3pGUjRd9soDh9ji5IbNPM4VZu3VA2Kcd1K9w5s7UiYS
         WJPZUrC5WOZVu/kaPUDehUpOrUB6pqGbf6gQrPmnXjpQPvmANep2EQlB37D/W+SFHqkq
         3zf2JrfUi4Gq624NUJD7VpBIiaNGcPi/gKGdQoSbjxnmQdXO8F/LzsmaDcBuRH4nrBrm
         JUGw==
X-Forwarded-Encrypted: i=1; AL+hErGinSTlyyZwBOppJqz0xlevEp4UhNU1o+T228mrKveYEnKFBmrSi1zMSis4HMrbHCWxzJXRFBNDTuM=@lists.infradead.org
X-Gm-Message-State: APuU4Z+T6Reea+mHhv58jUg2FE/X0l+h2HzW7i27CUtTvySJJwivwEzJ
	L5I0cstZ4TkfhBIeeJp7e4C8d9tZtPoW3Z+vVsJHWiWSpUsMllIvocu+r2k2mtSNEQU=
X-Gm-Gg: AZFdTZfXR2+5zM7aY9fNUesuPhFa0G7S1XrpEJRcNPDYYyK3Ez7Rt/Vls+A++Rt5n7z
	KUnMuNUMXaRoUbY2XxOfym6PwusqSm62K5OTUys1NcXDwVHJD63nctjLrgZN/BjJmSWWJ420WNH
	HhHOHW/K3rf8Hl/aWWP4Wgj5H1nN1Z2b1QaA7sl7ALFwKnHCGecAFtzksVf+VgSAuiZcpqewmKv
	PfpzXqzG12NIhBY9KTFPqmOizeYUgEDpW4CE4RDnqhiQUNNo19rIY2tzWQFbnsMgH6zZBZGbcq5
	Y0AZciyPCAE4a/9GsFAPrGpCE/jDAGQa7YYmJtdrY6DNJlij+H4s0EYglUWZtsZWZOZbFbI7iNO
	k/oo1gXB4mlNAgWGT7heNZDVCZSW8r0JyZXgWSHGKmhTvmpnwndWoFJLQDlyUEvNZfSp9FMRRh1
	MxzkhaXFgbNc/Xdto7GQxLXJHlbJPr0xLIabSfe0KwOQt42Xm525WAsTri78jwSEykEgxR6bYG9
	2eGjK8kmej5MaZ/bm0wWgT/TsL6rAbdmuOCQqTiarZQ7ED+z6cOMAZwR6sadVc5TXQEUmt7zf1l
	dVTpOw7GLuKRzUX2O80p3li42fSeY8HGFlbwl3Chmn8oHDnL+lZQH4kNtdwfnXPM2eKVuVWbEmc
	YX/xwPyhbecKKNVGu/Q==
X-Received: by 2002:a17:907:a890:b0:c41:266:68a7 with SMTP id a640c23a62f3a-c513aacd82cmr967497166b.10.1795443956585;
        Mon, 23 Nov 2026 06:25:56 -0800 (PST)
Received: from puffmais2.c.googlers.com (226.124.90.34.bc.googleusercontent.com. [34.90.124.226])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513ae67cbfsm428224366b.14.2026.11.23.06.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 06:25:56 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 23 Nov 2026 14:25:55 +0000
Subject: [PATCH v2 2/2] phy: exynos5-usbdrd: apply gs101 postlock tuning
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261123-gs101-usb-phy-orientation-v2-2-3361fa5f7543@linaro.org>
References: <20261123-gs101-usb-phy-orientation-v2-0-3361fa5f7543@linaro.org>
In-Reply-To: <20261123-gs101-usb-phy-orientation-v2-0-3361fa5f7543@linaro.org>
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
X-CRM114-CacheID: sfid-20261123_142602_560364_5DC1E902 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
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

UGh5IHR1bmluZ3MgdG8gYmUgYXBwbGllZCBhZnRlciBsb2NrIGFyZSBuZXZlciBhcHBsaWVkIG9u
IGdzMTAxLgoKT24gZ3MxMDEsIGdzMTAxX3R1bmVzX3BpcGUzX3Bvc3Rsb2NrW10gZGlzYWJsZXMg
dGhlIGhpZ2gtc3BlZWQgc3F1ZWxjaApkZXRlY3RvciB3aGVuIGluIFAzIC8gVTMgdG8gc2F2ZSBz
b21lIHBvd2VyLiBJbiBVMyAoVVNCMyBzdXNwZW5kKSB0aGVyZQppcyBubyBTdXBlclNwZWVkIGRh
dGEgdHJhZmZpYyB0byBkZXRlY3QsIGFuZCBsaW5rIHdha2V1cCB1c2VzIExGUFMKdGhyb3VnaCBh
IHNlcGFyYXRlIGxvdy1mcmVxdWVuY3kgZGV0ZWN0b3IuIERpc2FibGluZyB0aGUgaGlnaC1zcGVl
ZCBSWApzcXVlbGNoIGRldGVjdG9yIGluIFUzIGF2b2lkcyBrZWVwaW5nIGl0IHBvd2VyZWQgd2hp
bGUgdGhlIGxpbmsgaXMKc3VzcGVuZGVkLgoKQXBwbHkgUFRTX1BJUEUzX1BPU1RMT0NLIG9uY2Ug
dGhlIFBMTCBhbmQgdGhlIENEUiBoYXZlIGxvY2tlZC4KCkZpeGVzOiAzMjI2N2MyOWJjN2QgKCJw
aHk6IGV4eW5vczUtdXNiZHJkOiBzdXBwb3J0IEV4eW5vcyBVU0JEUkQgMy4xIGNvbWJvIHBoeSAo
SFMgJiBTUykiKQpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBBbmRy
w6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvcGh5L3Nh
bXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11
c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKaW5kZXgg
Y2NhZjBmMjdjNGM4Li5mNjQ3Njg4YzNiZmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1
bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKKysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5
bm9zNS11c2JkcmQuYwpAQCAtMTc0NSw2ICsxNzQ1LDggQEAgc3RhdGljIGludCBleHlub3M1X3Vz
YmRyZF9nczEwMV9waXBlM19pbml0KHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQp
CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAorCWV4eW5vczVfdXNiZHJkX2FwcGx5X3BoeV90
dW5lcyhwaHlfZHJkLCBQVFNfUElQRTNfUE9TVExPQ0spOworCiAJLyoKIAkgKiBTZXQgdGhpcyB3
aGlsZSBzdGlsbCBob2xkaW5nIHBoeV9tdXRleCwgc28gdGhhdCB0aGUgb3JpZW50YXRpb24KIAkg
KiBzd2l0Y2ggY2FsbGJhY2sgY2FuJ3QgbWlzcyBhbiBvcmllbnRhdGlvbiBjaGFuZ2UuCgotLSAK
Mi41Ni4xLjc1MC5nZjcwZGM2ODJjZi1nb29nCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
