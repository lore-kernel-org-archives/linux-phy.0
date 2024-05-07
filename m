Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BA0CC25B5F
	for <linux-phy@archiver.kernel.org>; Tue,  7 May 2024 14:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MtEwWRMjGSTEDnqdefjBjRWhs6dkTYJzQ72lstHyUE=; b=ZUXDx4CQJAvmiu
	j5ZhU5HScPoSZnnKo2Hljfnn1Zzxocu6da7DB9itK0JZMstGTqkZcFOkjKs75IxmG7pKNtEVqEX95
	V9XHrocRP3wRbc1g+E/kRToFG+EEtfpq6h/O09IxpnGc9Jbskhm4LqBpb82QL3CWZXk7fJ/EtiCYM
	RHckYrM7x14AQJPWx7E40U/xA3e/DO2Pe2PG+yT92V0sBeS76j//yAvLMqQM0Q11x3dYhv9e1yOjn
	2iP7nMs5sW4ZL0GrYxr1noRT9+CDxRETFQSrolnaOvnBuZT08Tu0dp0G3E0xYKfAlWumHhnZ8Dl1N
	qPJ4H3Lk5vtNoEvLqimg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Lar-0000000BQX4-409J;
	Tue, 07 May 2024 14:14:57 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Lak-0000000BQS0-3EWr
	for linux-phy@lists.infradead.org;
	Tue, 07 May 2024 14:14:55 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a5200afe39eso838631866b.1
        for <linux-phy@lists.infradead.org>; Tue, 07 May 2024 07:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715091287; x=1715696087; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LRJY6HmSgpn53uyORMcRB9h2EnMXe+jzCDlKmur6pwc=;
        b=XtSYjE267deO5E5buO2f12Dw00h0srSpLlgg/02DpSZpodA9eAE8EuF3cIww1/xlWa
         gLlbCKEhENXs+elSq/UloLyxAd3mBdef1KOFzAK+ZCsi9xcMK5hAkRuy7NNJJz6mDL6e
         zTVU38V9P103XetjRzv1fBO2IlVYolyC/fT2lxr/oY0vMjPEtlXdmjJp1bGYttnx2/KI
         RQVevYhoxaddJRNMk9b0GkcN2e3Jdp/RWmwGSc+36oGi70DdxxPUN82s75VW7+cW9rtP
         lghBo8CQ0tCn2sUBFCAteZVBfVw++GHF9WX2HGtdlipKeu7rKOVAA8q5eQ9pTVahTyKI
         hLTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715091287; x=1715696087;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LRJY6HmSgpn53uyORMcRB9h2EnMXe+jzCDlKmur6pwc=;
        b=o1ev0imrDKKEmuDpBNMdAwMPE8ikqXs/0LpnCf9ZvYYVMh5LaFKrwowNqIBsR/xGJL
         UX2k3MWvTYTgdzV00gBV13g/rhOnnmHJBwbrSNiP8Az3GuMzFp6feBfwi+x1wpl4T2VO
         V89q/N+mXBDKjK5qEOyxCJTpySBJ5qZoXmcrg4Kd0dnKe4zteZaTKUQenIjsA0jM8Yex
         Bz6EgJzBjXXkkIOhIz8BS3BEEOXlr9p9DL3PrIMBtQHYkkU2g4fOXw8M7aeUHxxszB42
         +nI2le4bRw5eK7u69sUIkVQ1smICkDFt4J1O2lNY2wpbV/PolUP5j2XC0tGw4dDXUn6f
         V+cw==
X-Forwarded-Encrypted: i=1; AJvYcCWbLlxQDOKnzAseLZ8Pa+QFqw1rqJq7mA2ixitt8zDnGHpBG9gqWARxTxRlJVCwpYFIILnTKjaupjSad865Bv4pRrTjzk57XQpqPAobdw==
X-Gm-Message-State: AOJu0YxDRAIbROGvTJeLNkyr4FExfQ28kdLZYCiv3Nr3s00bu0rGsyEv
	/tMhicAvNy21e9wVU4kV3dLa9d0sygF7lLLHJoNO9kt5c7IwQNO6+j3C+LSCcG4=
X-Google-Smtp-Source: AGHT+IEdZxa78ehLtOjVAh87nK9d2t0R1fsYeVK5kmd0WktV4j/K80OYdHHk5mz5N7FPqzg+kN+QUg==
X-Received: by 2002:a50:a45c:0:b0:572:9dc3:ce3b with SMTP id v28-20020a50a45c000000b005729dc3ce3bmr11623041edb.1.1715091287502;
        Tue, 07 May 2024 07:14:47 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id x2-20020a056402414200b00572cf08369asm5621928eda.23.2024.05.07.07.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 07:14:47 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 May 2024 15:14:47 +0100
Subject: [PATCH 4/5] phy: exynos5-usbdrd: fix definition of
 EXYNOS5_FSEL_26MHZ
MIME-Version: 1.0
Message-Id: <20240507-samsung-usb-phy-fixes-v1-4-4ccba5afa7cc@linaro.org>
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org>
In-Reply-To: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_071450_826741_3FB9C253 
X-CRM114-Status: GOOD (  11.99  )
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

VXNpbmcgMHg4MiBzZWVtcyBvZGQsIHdoZXJlIGV2ZXJ5dGhpbmcgZWxzZSBpcyBqdXN0IGEgc2Vx
dWVuY2UuCgpPbiBFODUwLCB0aGlzIG1hY3JvIGlzbid0IHVzZWQgKGFzIGEgcmVnaXN0ZXIgdmFs
dWUpLCBvbmx5IHRvIGFzc2lnbgppdHMgdmFsdWUgdG8gdGhlICdleHRyZWZjbGsnIHZhcmlhYmxl
LCB3aGljaCBpcyBvdGhlcndpc2UgdW51c2VkIG9uCnRoYXQgcGxhdGZvcm0uIE9sZGVyIHBsYXRm
b3JtcyBkb24ndCBhcHBlYXIgdG8gc3VwcG9ydCAyNk1IeiBpbiB0aGUKZmlyc3QgcGxhY2UgKHNp
bmNlIHRoaXMgbWFjcm8gd2FzIGFkZGVkIGZvciBFODUwKS4KCkZ1cnRoZXJtb3JlLCB0aGUgZG93
bnN0cmVhbSBkcml2ZXIgdXNlcyAweDgyIHRvIGRlbm90ZQpVU0JQSFlfUkVGQ0xLX0RJRkZfMjZN
SFogKHdoYXRldmVyIHRoYXQgbWVhbnMgZXhhY3RseSksIGJ1dCBmb3IgYWxsIHRoZQpvdGhlciB2
YWx1ZXMgd2UgbWF0Y2ggZG93bnN0cmVhbSdzIG5vbi1ESUZGIG1hY3Jvcy4KClVwZGF0ZSB0byBh
dm9pZCBjb25mdXNpb24uIE5vIGZ1bmN0aW9uYWwgY2hhbmdlIGludGVuZGVkLgoKU2lnbmVkLW9m
Zi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KLS0tCiBkcml2
ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5
LWV4eW5vczUtdXNiZHJkLmMKaW5kZXggZWQ0ODk4NzQxYzk5Li4xZGE3YTQ4ODFmNzIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKKysrIGIvZHJp
dmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwpAQCAtMzAsNyArMzAsNyBAQAog
I2RlZmluZSBFWFlOT1M1X0ZTRUxfMTlNSFoyCQkweDMKICNkZWZpbmUgRVhZTk9TNV9GU0VMXzIw
TUhaCQkweDQKICNkZWZpbmUgRVhZTk9TNV9GU0VMXzI0TUhaCQkweDUKLSNkZWZpbmUgRVhZTk9T
NV9GU0VMXzI2TUhaCQkweDgyCisjZGVmaW5lIEVYWU5PUzVfRlNFTF8yNk1IWgkJMHg2CiAjZGVm
aW5lIEVYWU5PUzVfRlNFTF81ME1IWgkJMHg3CiAKIC8qIEV4eW5vczU6IFVTQiAzLjAgRFJEIFBI
WSByZWdpc3RlcnMgKi8KCi0tIAoyLjQ1LjAucmMxLjIyNS5nMmEzYWU4N2U3Zi1nb29nCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
