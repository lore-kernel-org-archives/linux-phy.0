Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 305A6CDB482
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1BQHE9lfCzFMd92r8e248S66wtJDRL4EVaysYkz/xQ=; b=svCnJ1KtbWDMh1
	+bX2irnXvmOZ01TrLOKIeMyz8VThS6m2zGIEJ+jW+7CWCf8LiTFRoUa8YEhaV8V/x7dErfAYewZI3
	MvyYIueud6zyIqLGGTFIqU/P3xCL3V2ruKCgVsAS8cGwwfdPjSR5gx0XhYuIBNltc1wJDwXys6Qxp
	1cvIALDrQDxlA0OHvaUJ2VzmkBMH4eja9M9Y2U33ajmJ0wde3QGuPE013yDoFeEwoPMAr7XLKjHNi
	rncBEBRQJAObXZoYYwd7ycAYOCRDwfJQDuiLeJFzXXDQtnslXPZqhV9TeTMiLN5cQp0DmweGGjOY6
	kifkNb2jCLRFaDWDMH7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFeN-003EJw-2r;
	Fri, 13 Oct 2023 10:44:11 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFeE-003EEr-0I
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 10:44:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 46C12CE2E76;
	Fri, 13 Oct 2023 10:43:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 635EAC433C7;
	Fri, 13 Oct 2023 10:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193837;
	bh=JVPe1ma/Ed+P35neF7yaxCDpkQ3MjQ9w7c4PvaAOM+k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ovVdzscBiTqQF0j21wfy3LIsCGZ7bRmRGAf+VU1txLKAcsz+sxslfdLI67h61WY/T
	 yfpg8n7Cc9eyN9cj9xDv3CG2K07nIB5KdJc66tYeB8HlNbaoryNr62Wyhkvv0GUMeu
	 EwWNNPHFaewzVZhqM8nQbIzUD6F9uYrFR6+LL1AkSxOXHYWNDVAUxF6XzVCDhcG6WJ
	 HBFnv18WuJ3i1cvOUXi13u5YJyjdLgSIF/ErFjfcg6BphiAucV2t6uXq6GLzUOMzvB
	 VhCEjzmnPeJZ97QIhKVDv97plGuSZ1wZF/v64QVMSGWN6w6itnV15vWEEXP7vAcR8Z
	 2+9w00pg4aZYw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231004-pxa1928-usb-yaml-v3-1-150c9ef3ab9d@skole.hr>
References: <20231004-pxa1928-usb-yaml-v3-1-150c9ef3ab9d@skole.hr>
Subject: Re: (subset) [PATCH v3] dt-bindings: phy: Convert PXA1928 USB/HSIC
 PHY to DT schema
Message-Id: <169719383504.165658.18236925418957176222.b4-ty@kernel.org>
Date: Fri, 13 Oct 2023 16:13:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034402_323527_1444C6A8 
X-CRM114-Status: UNSURE (   4.28  )
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

Ck9uIFdlZCwgMDQgT2N0IDIwMjMgMTY6MzQ6NDMgKzAyMDAsIER1amUgTWloYW5vdmnEhyB3cm90
ZToKPiBDb252ZXJ0IHRoZSBiaW5kaW5nIGZvciB0aGUgTWFydmVsbCBQWEExOTI4IFVTQiBhbmQg
SFNJQyBQSFlzIGZyb20gVFhUCj4gdG8gRFQgc2NoZW1hLgo+IAo+IAoKQXBwbGllZCwgdGhhbmtz
IQoKWzEvMV0gZHQtYmluZGluZ3M6IHBoeTogQ29udmVydCBQWEExOTI4IFVTQi9IU0lDIFBIWSB0
byBEVCBzY2hlbWEKICAgICAgY29tbWl0OiAwM2M4NjZjYWI0MjBlMmUzMzgxY2E4MTdiZTY2NGU3
MTQxMDdlMzliCgpCZXN0IHJlZ2FyZHMsCi0tIAp+Vmlub2QKCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
