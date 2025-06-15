Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 254FEC71135
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 15:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIgNQxyMOA7JbHkR00CYN5x4demwm5TeW6uX+2qbaD8=; b=oPs5HQpy7InTBW
	8ddZkwl+O8A3+PEgwVSY8CDUWpFfkG3PnN0msD5ExaCNM1FyZVVnYy+D+g4n/x2tfrnprsYBghV1R
	Qf8gdnwXVCBpko+Kec8YHgZoLJ276LMLwfXXslzgsGL7Fcv+I8dnpKW/iu4pxqmVSWaiqE9AmwGO+
	1PnJymjDzs6WP1H2Tz7eF6LuDix5LtwoIT6Ir6euraPggEUydXdC6IJ243OqGQP5Qo+7QPkIdPMcg
	4JRFQpfJhyZCKEEKMH1Ju9I9A8KyLdV/PuxGfArCEx5JIrqi9uIsr7WsHyByL5eMd6K40/wW1ig8H
	TjH1qiX98c5euwkB2q3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQpRm-00000002bvh-3Fkc;
	Sun, 15 Jun 2025 15:39:02 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQpRk-00000002bul-1GLM;
	Sun, 15 Jun 2025 15:39:01 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-450dd065828so28923035e9.2;
        Sun, 15 Jun 2025 08:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750001939; x=1750606739; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rME222jHVNJXTiRKF33r0lWMTw33bee8wdcsXHC+a1s=;
        b=RZ0EXsnqzJir+/XS2eko3P2asQ6rqk2AaE/DFrBJHRQNLpCM9RyziRjfkQSbf4iOGe
         GU32MlWmaz0RvzThqSGf2P877nNcNovK9arNI7fl3T0zDaBhUYEigq+qFzmXXu2w9Dv5
         oJcv/hCWfAKf+3w+L9RLBBaUJTFRMHH5y3ZaahMEsRnsoauMaMOkfjB2STJmDImEI1vq
         3OLzrOZszJTgSoZHxidCyYOmhOsk7QHe2oGKFih5a6TlqgdgaAPIlrGfLHAEsUKOBZIa
         IAVHYn/yZgnfh8V74vWwMnbY/ZXygN79E/pOCYXnAROVRLINHL5V9Ng3iqmq7DvxwI1x
         Zvgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750001939; x=1750606739;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rME222jHVNJXTiRKF33r0lWMTw33bee8wdcsXHC+a1s=;
        b=F3FX6pQXcZ3FuPQp8VOSI2ufM/pQFsEJ39D43mpYARUfxKZqGHNpdPrYWjMC0AQge+
         bJx1WOWtAnwLQTxk0cVH+MVfo8bAxk4GuYEfwi5in9qhxr98Z0USuYRCx5rg6bK2Dl1g
         gb0IRHYVb03Erxse5F78jn2Un1PmRb/ZslVHHkfM7AWFR+VV0gLD1D/5XmLmscg0YEbI
         7+QBFZF+MEg0bQzr53Mbz6vWw67mAlCerfR5H1gEw66de8zXOUML9twKPv07ZojaSKaW
         +d3hlkqMv60h+a0YKAgA8BqvkrLDQIwE/Qq8JrZXfLBEwZTdM4fiRcToACWv6qdTBt91
         3jUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV06vNKYNrfSseKuHvDz91hhsv4+B3NER7WLQCCk+ZcenG3YTA/qquqeJf/aOlBAggZKjY5YlLH4Avr0g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTQvhhGdq1zKEyNsOs9C+7loXj0gw69X0eeNZhQ7jsg57Bw3no
	FDmTK9/yRnoCWV8frPxMT7ct7y1NdHEC0K3YgHlJQhYxOn7MUUfBSkL2
X-Gm-Gg: ASbGnctvq9XlZV2MfYrxGWcSUbl/d/ppfuQNU2AJ0sndWDM8m9ktPBU493fYBFswKEu
	R4FSQR5wcSJ5d+whYJ361XMqUcRl4Vyjck6m0qUDLh8qbIkySkI1PDNxLsW4G4kUaZtnU1b4Da8
	Kv1wRaKF/J/CXbkPbu2fAzXrNLrFmqfiS+pSdFAiG7bKAlqnN9n31et+dbg1ZAmc3/3hq1PL8/R
	dd4MkSV35Iz/Ye/c9LSjUpujdJK4hlRvvI3U/ibqJyjWCibL59XOx+6HNhfxvc64ptJinmaBC9q
	9F4TklikX05WJ4G0lO1iHseGS2GVzkj8tcQjNghRE6h6H0wM4E1jAUlGSFO1V1Wf9V+WsODEySw
	tdCBY0LqgqhO37tUZ
X-Google-Smtp-Source: AGHT+IFaaughF501wrIicIPdZSmtM/WV0+01/gyRTwtKr7hDVNcSWz3eVWkWINX+wq9hJITrW3t+2g==
X-Received: by 2002:a05:6000:2883:b0:3a4:d3ff:cef2 with SMTP id ffacd0b85a97d-3a572e82213mr5614719f8f.27.1750001938625;
        Sun, 15 Jun 2025 08:38:58 -0700 (PDT)
Received: from giga-mm-7.home ([2a02:1210:8608:9200:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a5405asm8229858f8f.13.2025.06.15.08.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jun 2025 08:38:58 -0700 (PDT)
Message-ID: <3b9237628547fdaa65f524204b79176e5461cc71.camel@gmail.com>
Subject: Re: [PATCH v4 2/2] phy: sophgo: Add USB 2.0 PHY driver for Sophgo
 CV18XX/SG200X
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I	 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen Wang	 <unicorn_wang@outlook.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, Longbin Li
	 <looong.bin@gmail.com>
Date: Sun, 15 Jun 2025 17:39:10 +0200
In-Reply-To: <20250611081804.1196397-3-inochiama@gmail.com>
References: <20250611081804.1196397-1-inochiama@gmail.com>
	 <20250611081804.1196397-3-inochiama@gmail.com>
User-Agent: Evolution 3.56.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250615_083900_339778_B648B6E2 
X-CRM114-Status: UNSURE (   8.90  )
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

VGhhbmtzIGZvciB0aGUgcGF0Y2gsIElub2NoaSEKCk9uIFdlZCwgMjAyNS0wNi0xMSBhdCAxNjox
OCArMDgwMCwgSW5vY2hpIEFtYW90byB3cm90ZToKPiBBZGQgVVNCIDIuMCBQSFkgZHJpdmVyIGZv
ciBTb3BoZ28gQ1YxOFhYL1NHMjAwWC4gQ3VycmVudGx5Cj4gdGhpcyBkcml2ZXIgZG9lcyBub3Qg
c3VwcG9ydCBPVEcgbW9kZSBhcyBsYWNrIG9mIGRvY3VtZW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6
IElub2NoaSBBbWFvdG8gPGlub2NoaWFtYUBnbWFpbC5jb20+CgpTdWNjZXNzZnVsbHkgdGVzdGVk
IGluIGhvc3QgbW9kZSBvbiBNaWxrLVYgRHVvIE1vZHVsZSAwMSBFVkI6CgpUZXN0ZWQtYnk6IEFs
ZXhhbmRlciBTdmVyZGxpbiA8YWxleGFuZGVyLnN2ZXJkbGluQGdtYWlsLmNvbT4KCj4gLS0tCj4g
wqBkcml2ZXJzL3BoeS9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoCAxICsKPiDCoGRyaXZlcnMvcGh5L01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgwqAgMSArCj4gwqBkcml2ZXJzL3BoeS9zb3BoZ28vS2NvbmZpZ8KgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCAxOSArKysKPiDCoGRyaXZlcnMvcGh5L3NvcGhnby9NYWtlZmlsZcKg
wqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAyICsKPiDCoGRyaXZlcnMvcGh5L3NvcGhnby9waHktY3Yx
ODAwLXVzYjIuYyB8IDIyMiArKysrKysrKysrKysrKysrKysrKysrKysrKysKPiDCoDUgZmlsZXMg
Y2hhbmdlZCwgMjQ1IGluc2VydGlvbnMoKykKPiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L3BoeS9zb3BoZ28vS2NvbmZpZwo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3Nv
cGhnby9NYWtlZmlsZQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3NvcGhnby9w
aHktY3YxODAwLXVzYjIuYwoKLS0gCkFsZXhhbmRlciBTdmVyZGxpbi4KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
