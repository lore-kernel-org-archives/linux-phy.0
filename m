Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21E95C021A7
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 06:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8N0AklvwFXf/3qyobTLPX4T3GuKHVq7dC0Jn8fcxXU=; b=SlIUF8BEQruzuX
	wjwTCSQbo+G9TNCT2tws1tRrkjccOpxsx8SgptTkUZY+P7GD2vCjEf37E51vtBsyc+WTKPkFlGZ+B
	Cf+3rgQKGkTu/rPCZFIYPJYPCj3qmxWSGsAxSbqyIE9PtimtGKCOAAUffAQJpvnY3HUHP0HmPKZba
	V4Xn5UfeM+J76k+ywAWlquZCjJiCZsnd/viJCRmyMlaicHzEgnwJ8gvwp++WSKy0qpQwZ+/X9ggN4
	4UnVYKxSuBbytw2J9Y8r6rlbLT6zoyNPWSPEw+SwUcgVq0QVFOOPrtMxCIveBhnrFl0q3+/7ex7F0
	xaD708zGnv2qyjL1zOhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiTCT-0000000A1o6-09tB;
	Thu, 13 Feb 2025 06:59:53 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiTCQ-0000000A1nL-3OqS
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 06:59:52 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-439350f1a0bso2767455e9.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 22:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739429988; x=1740034788; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=L+lWu/Bg4y/1hXkYeBGzl87ktHtA28/BQP0FvLsbWBU=;
        b=w2nkoYBkU6Gs2rbJXOSWA9zrYE2TgT/7i56HDg2L9IjSV0QgNbfIBF5j1p8UN1CZ31
         yxFV8Q9xZAGEPBW5H0LrfiWa/xHH3SUBCnQ9wCDBdEpGfXGaRuQE3/DcBVnxBcaFxiXG
         e8t0E2/q+780xE4xAgtJan8jDXBt0fQaPIb2e7x/AiKiufXvERQMj+3FpkBG8Hn1DTYf
         8xqrLSA37OsFOsvFDos7Oq5iZXfjRLEV/pMlUX02tIsfP63TR4wqUlsPJXWtGGcW2s9X
         V778ohwqb6HXAaO9jWB7KrjBuG9gNzkr+wM/98kR8KztWcpruxh7YcDGK16f++RW43Md
         BQsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739429988; x=1740034788;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L+lWu/Bg4y/1hXkYeBGzl87ktHtA28/BQP0FvLsbWBU=;
        b=o6c/r2evukI2oOxzpsG1cdaqwRS7aENPDOMpxHe/JIoR7wQ31j0gC7wu0TDg4zk0EG
         tv8deix43nQY0fwkngNWEvQfwBAIqbBc/TKys0n7BkxTDsZgUoH5ly4qjSOMJ1FYhNtq
         tlZtVIbacdSgQGav7BoObXpvZ/+2gu7XBy9s1KW7IHycxsSB6l03/bEyuoPSwd1kKROL
         wjFrls4WLWhgNoLlCIi3Fot9vmI0/xMxMcJBBd57M95R+t43I3u1qno1MBv5/SUKyaiQ
         0TBlA0TMYon6gZlrLcqxuq9KRAUYn20iG+MqpuSj1+H6uH3tSBqjwqrSbRGUDv/0Ii+W
         /Bmw==
X-Forwarded-Encrypted: i=1; AJvYcCXKZAgAbUcmXqT9KvbTlKcTEauxH+Td67pdESIbLjvQkHNXqSfxoxiOP2coWI7fD3f1IclATA6Tm2I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzq4QLRDbcnCXeiJVSetAynD9Rs2/7wQZUQWGxSzbDO6FVeOJfa
	6miODaN7MY6KNY95HSalxzWKPbGO2IPAfJ5MJNQ83RG+M2r21JywcllpA0lPFLU=
X-Gm-Gg: ASbGncsXKu19UXTgpnjIUHnhNkzcBDb1CnS/gGDRLZftCEBsAkC+JkIx4ZGGoNFQ/Mc
	alnq8HGyOFDPNipOMOunIusz9+NatA3OozshXD1F3QmkBx/sagD56/QxKu5Dgs/JrViVdMMoXoX
	H+i76qK8IggMfs/ftxrXh/9jcNyxrgRJg5Fpov+3bnM+1QbL4eWEdJMlJPWkB4Yo3tJph0+f+Ny
	kYOb2QuZDASQ0rFnrtISZsOOu295zpCeTamU/RlrytB7bVZFtAtG5xUiSM+ztfil231M7InOTH3
	SmvkBSpssg/sozVcp1I=
X-Google-Smtp-Source: AGHT+IEcIbIDDwYQdOV615CUjCJxgeMnQC+DGesANA1ClWsaF9ced93N0m+sAVSXmRf6DZmkMUCY+w==
X-Received: by 2002:a05:600c:214:b0:438:a313:cda9 with SMTP id 5b1f17b1804b1-43960c068d9mr13823075e9.10.1739429988348;
        Wed, 12 Feb 2025 22:59:48 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f85c2sm995229f8f.91.2025.02.12.22.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 22:59:47 -0800 (PST)
Message-ID: <f5f6194db4d3ab2e61ef8800531475af1b5680d9.camel@linaro.org>
Subject: Re: [PATCH v4 0/7] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Marek Szyprowski
 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 13 Feb 2025 06:59:46 +0000
In-Reply-To: <75e01bf815e5f7692d4b7aa261054851a943fece.camel@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
	 <75e01bf815e5f7692d4b7aa261054851a943fece.camel@linaro.org>
User-Agent: Evolution 3.52.2-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_225950_853510_DCB1803A 
X-CRM114-Status: GOOD (  10.12  )
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

SGkgVmlub2QsCgpPbiBNb24sIDIwMjUtMDEtMDYgYXQgMTQ6MjYgKzAwMDAsIEFuZHLDqSBEcmFz
emlrIHdyb3RlOgo+IEhpIFZpbm9kLAo+IAo+IE9uIEZyaSwgMjAyNC0xMi0wNiBhdCAxNjozMSAr
MDAwMCwgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gPiBIaSwKPiA+IAo+ID4gVGhpcyBzZXJpZXMg
ZW5hYmxlcyBVU0IzIFR5cGUtQyBsYW5lIG9yaWVudGF0aW9uIGRldGVjdGlvbiBhbmQKPiA+IGNv
bmZpZ3VyYXRpb24gb24gcGxhdGZvcm1zIHRoYXQgc3VwcG9ydCB0aGlzIChHb29nbGUgZ3MxMDEp
LCBhbmQgaXQKPiA+IGFsc28gYWxsb3dzIHRoZSBEV0MzIGNvcmUgdG8gZW50ZXIgcnVudGltZSBz
dXNwZW5kIGV2ZW4gd2hlbiBVREMgaXMKPiA+IGFjdGl2ZS4KPiAKPiBGcmllbmRseSBwaW5nIG9u
IHRoaXMgc2VyaWVzIDotKSBEbyB5b3UgcmVxdWlyZSBhbnl0aGluZyBlbHNlPwoKUGluZyBhZ2Fp
biA6LSkKCkNoZWVycywKQW5kcmUnCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
