Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79B97D6EBEE
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 09:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYy4q0MHpFbJdNvDvAteZFO9QjXJDPfAK82IpWvysao=; b=giodUeHwglZweI
	6w+BJYH1HAlo7G6Caa+y6gfwKl1XiNMQXQGLdjubma4lycPf9rUkfGQFqicjk4qVkwLCADin7bEQ+
	JqopFCX4aI/2qQktuE/RKsn+BPt3Xhp9s2ogwSUxNGbEG8w5sVN8LFOSXXi5qbKBMOEEsTRDM8OBA
	KjaHrZlxZ5WUit+y/NUY66P+oZ8H2OAVwqkesl5uXJbjF41uccIOx/UMBXRvP2VFc8Yxa7jArBfqb
	jfbEnlyHZT+QLL0l6kMsBKq6Do7wOdxQWCI77zFv/Bfj9EO2BThBFMer+0Kgrrx/7WfYFIQkIgX2e
	VT6//qcXMLYsUbD4D8Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGxO7-0000000HLWE-2wim;
	Fri, 29 Nov 2024 09:34:11 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGxO5-0000000HLVa-3PC6
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 09:34:10 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-2965e10da1bso828726fac.0
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 01:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732872848; x=1733477648; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xNgvtRisS5u9cN6139hn+NK3qqVv5Yd3nHI/xvwV1jw=;
        b=EEsupXpTYTVQTKudkoSKB2NdCtGlizSqPZY5Q/ANjA8fQQ+/24KrW7oGISVJhNtEOx
         vBLs/7u+0FWSDPnKcpFHh+6pwptNgip/6gIHJQZCB+CekelDBCF0wRqzqyKcbh9GNXwT
         0t4W9HfFLJmtVG04u8N+EBwqNcGmMxIku7mSV5eVS0udAm3d71j2vWsZHrcUcq1Z1b/J
         U3VAvB0j2EXk93UlSyK5b3Uird9RwdJ9MVualrkkjR/+3zJwqUZ+9dj4cIUu6zclT/rk
         3m2uwqXMavZCx5e6igI+QdaiYpEpt9FHHmOuIPjW0gGG780WN14MfvbOX47PJ8SmLTmq
         enYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732872848; x=1733477648;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xNgvtRisS5u9cN6139hn+NK3qqVv5Yd3nHI/xvwV1jw=;
        b=oP24ejIYqVluq5XAk1eC01fQjqAFFp8BifKTcQvt+AoqZZdTEN1AEfQXu7tZwC/3zT
         Ih5pYuliHQwnZGwxHMgkE4k/GqY3UVaqdBQX75p0RfSbUXbc7aJjHZzK22evxHliGZ/n
         JHeJRoQzukhXTQMRqI0vdALcSQcUnVYOQJcfFlmCp+pBxFLozMBRaV9uKx3avq93fGKK
         OEol7f3iCG+bSlonCWalUqEzenPKq/PQWAlYjzooPAwdukzLl62Gm+HMxIurJ7hSKVfe
         bR3xQ3mKlYB7+6T5dOZZp45eb4EJBP5gIPpYvKpKWAXwNvOIfjA/I48Gla42pKBJdBOi
         JzTA==
X-Forwarded-Encrypted: i=1; AJvYcCWxX+juPio8+oKqIlkjPwC2bcMdM63gjeJiQdk58nCntSHfFEPXpdiPGv5NYEdg2tPS+XhwmUGyWH4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwY7Z4Emrae3zcUe1YqLmhyL05NpzUDD/bhZpSStwFnLP7npyHi
	GP8ZshZhxFtUnLFa9Eqcrx42R7G9YNJGA/xapsgaU0NTg2wej3oOyVte4HOxzgLUVGlTMSQRzfp
	/1C/w+5zwg5ldbLliSSOzwPVCadhB0xinfKFq8Q==
X-Gm-Gg: ASbGncvUqpl48wtQyDhJI3HP127bi5cOkY4LwFQLx/U6tqsKSz9Q377u4yGzXh+4jde
	j9pymzjQgd58ZQF+JrT2J8aQ9PmAjiCuX
X-Google-Smtp-Source: AGHT+IHSSMxnaGOmFOSkOhhOzzx4jvQ52FptkRVrDxK4pnBkB3GqM5Uuf4cKswcMzu4vXxrMnL3Y6LE0/UTLwqBgt4s=
X-Received: by 2002:a05:6871:321c:b0:29d:c624:7cd3 with SMTP id
 586e51a60fabf-29dc6247fbdmr5795597fac.4.1732872848629; Fri, 29 Nov 2024
 01:34:08 -0800 (PST)
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-6-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-6-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 29 Nov 2024 09:33:57 +0000
Message-ID: <CADrjBPpLDLoPkvAno5dqsUtZGAcxuTMf3X913syKmY68ndwggw@mail.gmail.com>
Subject: Re: [PATCH 6/9] phy: exynos5-usbdrd: gs101: ensure power is gated to
 SS phy in phy_exit()
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_013409_854258_CE5E3A6B 
X-CRM114-Status: UNSURE (   7.50  )
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

SGkgQW5kcsOpLAoKT24gV2VkLCAyNyBOb3YgMjAyNCBhdCAxMDo1OCwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBXZSBjdXJyZW50bHkgZG9uJ3Qg
Z2F0ZSB0aGUgcG93ZXIgdG8gdGhlIFNTIHBoeSBpbiBwaHlfZXhpdCgpLgo+Cj4gU2h1ZmZsZSB0
aGUgY29kZSBzbGlnaHRseSB0byBlbnN1cmUgdGhlIHBvd2VyIGlzIGdhdGVkIHRvIHRoZSBTUyBw
aHkgYXMKPiB3ZWxsLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRy
YXN6aWtAbGluYXJvLm9yZz4KPiAtLS0KClJldmlld2VkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRl
ci5ncmlmZmluQGxpbmFyby5vcmc+CgpyZWdhcmRzLAoKUGV0ZXIKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
