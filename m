Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6B29E7717D
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 10:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDkJHtIcn75422PzFAUbZ1i37Z4nYeTsUUbUjfwICjc=; b=Q95nGytgW4xdJh
	Q348m2IohgGGLiNNLzDvFUZgEznxq9Z1VL/hIh5vIGL0dc3hGZg2qCpZKH3Mq1cQ74dOulGNKyAyv
	llArHnZldL05TIpPvyMLYexODh3xhSjFgi0LII9v6mtIIAyexSOnwiyeNKEtWE/jxUWVGgggaaXfl
	gIRl6ES8zE0A5BL22um5QUL+x2Cwgfavj7Y6eX6eVhsGHO3bUYSp1PewbEN9bZOYINvKGVyMmc7xV
	EXBcZi9G4jl9wnzCpEQFsDcaZkt+JYhUrlfz2IsOpX12AoCALHMX63IW3IifTxFoD3GCPi2YuWB5v
	6GJagdrstZhTGv+swOnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKarq-00000007G8w-3zqc;
	Mon, 09 Dec 2024 10:19:54 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKaTl-00000007AwH-1iwq
	for linux-phy@lists.infradead.org;
	Mon, 09 Dec 2024 09:55:02 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-434fac2996fso5356065e9.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Dec 2024 01:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733738099; x=1734342899; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OB9He6hF6I8ijcVioJl0rUXSdngnWa1nHdHHNLYHYmA=;
        b=BAr1mGqP24p7Y/9e4tSWiSIkWhSpZBd5X4JmJxl4KoSGs6uw9o3CHVtc6Y6CcHqkH3
         uErMgIAPBmCSEvVPWQrI31nvKSsmIrj31BfRdApTfEmjLywmGvfBu17Wc8PIw0otAXLz
         S2eOaDZ+HJjHbrLgYa36AoSkCt+ww7YPReQWtWIF03Q1S86cLFaiq7xWcCfqKua1frVD
         lXRmop6iPcSsDM97/Oaw+e1HIcwiXq+XjJSw6jRmrnqn6VJ6K0rxoZfq+AOs5U71DNeP
         dTd7Y3N/r/YNjxad6UbMaHsCrl4/Cqmi1vUIWSYUbWp/EAJ1ALdswAL+HVSUDWbg9AR5
         cslg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733738099; x=1734342899;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OB9He6hF6I8ijcVioJl0rUXSdngnWa1nHdHHNLYHYmA=;
        b=t0d1HtEWhjYcYOiHhzb6rH6lIVI+kXapezhD4zLk9l3H0fDnHccXBdkDsE1WQ7FZrE
         SBO/s9kcY3WS7o4SWYUp18u0eYyR8OHqgOYhqjQu6vRctdiIqVSHGeD+kPT4K45MemS/
         uwSVDZMZvioS/7e6iN4mrdJK8JmEO7pQLXNI06bWXEXrDOPFVBARvehgOuGJLAIuqTUY
         t38ngUt4eqZfxcNOp4hH1AFQlrhEEdnGiuP4tcklkF+sza3TpCxigNQbgnWpRKHwJqec
         GRUYzTda60TW1/d5J7lsRhW0jPYCUADHKNymEnxLuwuKGaD1TdyKmlqwmK+rvG6UvX+N
         ex1A==
X-Forwarded-Encrypted: i=1; AJvYcCUpvgyxMVQuYhrb512iQn5W1XJWKD78LuKAWpechClCabI66ibQ5lB678R6ASKVPBay1+N5u8sklRg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAFjgUn2vL8vOj5W5jaCejyzQ2WBH6k8sX1bvl4qdyfm86QI5D
	okU1iARnq3vZdjJqarH6fzYrNLdbw7cb6vMRnuB4FF9zGBvLtFYLo1ePlt4m+xA=
X-Gm-Gg: ASbGncuPJFOQ1wWk/ECxngWy31Ji6n/lAj0S6ciUIdamBQ1YACXRx6wzTgGK42DV2hY
	zQ8mu1ko5aIxXbLWhgDCSpD0IXqABTwVvE99opDP8O51uvrNlb6uRTr1LNvmo+9llBWgpCHtPeh
	jf/hQVK4FvyanoOsfcXalF8Ws8V690tS8Nx/VeamGQsykBVh7H341E5/h8+sk27htcQHyu3fPCp
	ygOfODcqAchZhZN+nRouty/m4pg4qJaAX8vb31Nzo568hDGdbxoDA==
X-Google-Smtp-Source: AGHT+IF0aY320LKmbb9VsSh4Bu/wLdBuFlAilYWTSx5YOCp9lTexIQIbfl6KTwoZqY9Q3xeWbQxuNA==
X-Received: by 2002:a05:600c:3783:b0:434:f5c0:3288 with SMTP id 5b1f17b1804b1-434f5c03c29mr28643785e9.29.1733738099338;
        Mon, 09 Dec 2024 01:54:59 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f3c96ca2sm52326465e9.24.2024.12.09.01.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 01:54:58 -0800 (PST)
Message-ID: <bbc6654e3ce7d28c4a98e25db270615b07a42c01.camel@linaro.org>
Subject: Re: [PATCH v3 5/8] phy: exynos5-usbdrd: gs101: ensure power is
 gated to SS phy in phy_exit()
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Greg KH <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,  Alim Akhtar
 <alim.akhtar@samsung.com>, Peter Griffin <peter.griffin@linaro.org>, Tudor
 Ambarus <tudor.ambarus@linaro.org>, Sam Protsenko
 <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, Roy
 Luo <royluo@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, stable@vger.kernel.org, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 09 Dec 2024 09:54:57 +0000
In-Reply-To: <Z1W9xuCrn40uPWbr@vaman>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
	 <20241205-gs101-phy-lanes-orientation-phy-v3-5-32f721bed219@linaro.org>
	 <2024120528-poker-thinness-6cfb@gregkh> <Z1W9xuCrn40uPWbr@vaman>
User-Agent: Evolution 3.52.1-4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_015501_465991_9267F961 
X-CRM114-Status: GOOD (  12.78  )
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

SGkgVmlub2QsCgpPbiBTdW4sIDIwMjQtMTItMDggYXQgMjE6MDkgKzA1MzAsIFZpbm9kIEtvdWwg
d3JvdGU6Cj4gT24gMDUtMTItMjQsIDA5OjA0LCBHcmVnIEtIIHdyb3RlOgo+ID4gT24gVGh1LCBE
ZWMgMDUsIDIwMjQgYXQgMDc6MzM6MTZBTSArMDAwMCwgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4g
PiA+IFdlIGN1cnJlbnRseSBkb24ndCBnYXRlIHRoZSBwb3dlciB0byB0aGUgU1MgcGh5IGluIHBo
eV9leGl0KCkuCj4gPiA+IAo+ID4gPiBTaHVmZmxlIHRoZSBjb2RlIHNsaWdodGx5IHRvIGVuc3Vy
ZSB0aGUgcG93ZXIgaXMgZ2F0ZWQgdG8gdGhlIFNTIHBoeSBhcwo+ID4gPiB3ZWxsLgo+ID4gPiAK
PiA+ID4gRml4ZXM6IDMyMjY3YzI5YmM3ZCAoInBoeTogZXh5bm9zNS11c2JkcmQ6IHN1cHBvcnQg
RXh5bm9zIFVTQkRSRCAzLjEgY29tYm8gcGh5IChIUyAmIFNTKSIpCj4gPiA+IENDOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnwqAjIDYuMTErCj4gPiAKPiA+IFdoeSBpcyBhIHBhdGNoIDUvOCBhIHN0
YWJsZSB0aGluZz/CoCBJZiB0aGlzIGlzIHN1Y2ggYW4gaW1wb3J0YW50IGJ1Z2ZpeCwKPiA+IGl0
IHNob3VsZCBiZSBzZW50IHNlcGFyYXRlbHkgYXMgYSAxLzEgcGF0Y2gsIHJpZ2h0Pwo+IAo+IENv
cnJlY3QsIG9uZSBzaG91bGQgbW92ZSBmaXhlcyB0byB0b3Agb2YgdGhlIHNlcmllcy4uCgpUaGFu
a3MgVmlub2QsIGFuZCBzb3JyeSBmb3IgdGhhdCAtIHNlcGFyYXRlZCBvdXQgYXMgcGVyIEdyZWcn
cwpyZXF1ZXN0IGhlcmU6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTIwNS1nczEw
MS11c2ItcGh5LWZpeC12NC0xLTAyNzg4MDlmYjgxMEBsaW5hcm8ub3JnLwoKQ2hlZXJzLApBbmRy
ZScKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
