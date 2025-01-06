Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49E31E77188
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jan 2025 14:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrmVMkAg5vmThYYv5nblQWQj38KHQ8F7Mx+25AVo2rQ=; b=V3b9A1BrZyulaR
	Klk6j8yvmEhwntZ9chW4So22UQBgqD8wyv8BUKyLjkgGwFTCzQP3kSLMswD341WuirrQgsfMw7F6p
	tmgy1d2CDhDneFlNGsbftaVInZ2xqEVpGCz4CyjGtXQghJgqPJ+lVFafju2Rie4NN/e5Rb0jJ0E6o
	6PsyCicvQomGkAt7UUHXZnMHSeGtGZcibEv542FAjQ6Ai8oCOhhteRPUNFYM59rZs2boEk0PHMmEw
	Suu6VjKswePyPpUYEg6DQPoMyApobzI7dilakWl1HlEe70YFev/ULmtWtTkysvzcAHaMA78jmm4aL
	uVstZ76LmtKDxR7riOTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoKu-00000001cT7-2Cdq;
	Mon, 06 Jan 2025 14:44:08 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUo3e-00000001ZJ4-3vNT
	for linux-phy@lists.infradead.org;
	Mon, 06 Jan 2025 14:26:20 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-436281c8a38so103360935e9.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Jan 2025 06:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736173577; x=1736778377; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dUKOALEI9aeR5s2n5lA7OidVcoOap78G2cp261c2lTU=;
        b=GzPRG1AOpmHlIUrnAj7f8dudbhhtVJYd8qIVqbxuDZ20OmuA3fuWSkGQisFQpHO6BA
         1X0hdnQ1EOG6IhDD67m/nYtHHrnW39cZuAUdEhTY/zrB/TqSbVB8TeuA3F3/xMB/hmS0
         mXHdGtRwQpwy/0xOowN1pMEk4ay3/MdniAcYe+D+ZM4xOopdTO7u05gl0L8hQPhVymW1
         lQMKuviVgn/5G6ouCesBYiNuekTXVyZgKlfuQWmHbzmySLJTPu1hcuy48lVcpkDeq7G2
         FGaOJyG039q6t7wlR3xl3zqADkQ/oHzHfrejjoHcHWqYDHJCG9YNaxvrE4jHtsb0f/ik
         f9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736173577; x=1736778377;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dUKOALEI9aeR5s2n5lA7OidVcoOap78G2cp261c2lTU=;
        b=ve1ydnDo8MwlF+lLkDOFdDZC7d/IICr6xbk0QSTcRyMGb1zQD/7mnuHomztIDVAtlS
         lQ38OdFlMHbPVHEnzURlINjcSeE7it4MiodBrBa1FohBmyxdqrZLQm90Z/NFln42701G
         pTJG418eDf/FWSTuOSs9s5mNTabEG5aTKDC3uUpc/iKVRtpo0nm3D+94+x5M6rCb2ABx
         VfTy6Nq3Xc5q6995cA+r+TvhnWRZb6Egf/FYLdgt3itN+kNyLJgofN6XeySEo5VftZfj
         X/cdN3K7nJ5Tw92Q16tZ1tZpHAZakQ/XkLCTdoqZkymqhYMu6Xa+DhOHp3HTWSenM1eO
         f23Q==
X-Forwarded-Encrypted: i=1; AJvYcCXStFMwNFo6+jzrKz0cd5A0tdG+xtMZMFnAw6WJBkk+eKqrNN6wYioJ5mugU4glVIoBIUrKGm2ImUI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwY0/kgeE65qmIFC3horsE0iqovIbrihnR4wOwFI4rA5mlRnUqf
	2EPe25NJHfa1QOXyzPYEPVkbJ2ua98Sw2quuxVLwtcl5LilNgfYVgGEoFNk4JQk=
X-Gm-Gg: ASbGncsWJHiAqgQSZIMTrM78lk/gSkiefQ5zf9/em2vUrAFfwbt4uQfyW6wYtEH53rG
	lVVXXequay203Zxfp8CXjnkqjLCHVA1DS89+2qghi5j99SaySNmbtOANAn0+kv52NaOV3T20kly
	HYl0MKy+MUnxvwdjNsLvgYuskyMK5KN8noq2//iJ7wMJUZSficFWQUz6HDEf0BcoXFeW5ickvmt
	+/XYvTQvo2VZY1n4g7tLWILU6lmOz5Q/QMiNR/dZ6HLdFqwPKKPifcqkXy0+g==
X-Google-Smtp-Source: AGHT+IHOkoMdmjm0GLPL83pp6L949p18auYRHzM3lpKZr0E0SW/vsqJg73EGdk1dd+rSaqR5yz1Q7g==
X-Received: by 2002:a05:600c:1d03:b0:434:a5bc:70fc with SMTP id 5b1f17b1804b1-43668642e70mr462080235e9.8.1736173577487;
        Mon, 06 Jan 2025 06:26:17 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea3e0sm576014055e9.7.2025.01.06.06.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 06:26:17 -0800 (PST)
Message-ID: <75e01bf815e5f7692d4b7aa261054851a943fece.camel@linaro.org>
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
Date: Mon, 06 Jan 2025 14:26:15 +0000
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
User-Agent: Evolution 3.52.1-4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_062618_967946_50F908B7 
X-CRM114-Status: UNSURE (   7.83  )
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

SGkgVmlub2QsCgpPbiBGcmksIDIwMjQtMTItMDYgYXQgMTY6MzEgKzAwMDAsIEFuZHLDqSBEcmFz
emlrIHdyb3RlOgo+IEhpLAo+IAo+IFRoaXMgc2VyaWVzIGVuYWJsZXMgVVNCMyBUeXBlLUMgbGFu
ZSBvcmllbnRhdGlvbiBkZXRlY3Rpb24gYW5kCj4gY29uZmlndXJhdGlvbiBvbiBwbGF0Zm9ybXMg
dGhhdCBzdXBwb3J0IHRoaXMgKEdvb2dsZSBnczEwMSksIGFuZCBpdAo+IGFsc28gYWxsb3dzIHRo
ZSBEV0MzIGNvcmUgdG8gZW50ZXIgcnVudGltZSBzdXNwZW5kIGV2ZW4gd2hlbiBVREMgaXMKPiBh
Y3RpdmUuCgpGcmllbmRseSBwaW5nIG9uIHRoaXMgc2VyaWVzIDotKSBEbyB5b3UgcmVxdWlyZSBh
bnl0aGluZyBlbHNlPwoKQ2hlZXJzLApBbmRyZScKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
