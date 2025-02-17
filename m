Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F4D9C021A4
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 09:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7BMJO/dEpih3rIhk+H2kymdO2pnL1vQ76MZpiRhAlM=; b=0zk6oTQp9uLjnJ
	YIe1iuYD1El64rFBfu7Z7jfa3mpl8dGLawXaqSwcOx+CXu7lwMxBFsCflNBZIm7OXXCo0/tpnPngD
	ycI/epQiuxToWDAgb9Y9By1RcJHcRAApPcZl4JTmIJVJ6p1G65A4fm4+mLoYKbiIllgakk4+4kcpJ
	z+nShKuvryTEBUe5D04rUtr32MRydURFAyIm4gI4VH2w+PWTBtH9cgTQi77MjekhSlmIySgUVlSLh
	65vX6Do29qzzgHxjNlmFf0y80zU+eClrPy/NlKY8IwQpPSigaz1O8AftoHKyl8nzXrOmUFKLSefUI
	0rUhoCAJzBPYdFfy2DpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxWo-00000003wnq-2Cpr;
	Mon, 17 Feb 2025 09:35:02 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxFW-00000003u0r-0LpA
	for linux-phy@lists.infradead.org;
	Mon, 17 Feb 2025 09:17:11 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso2058088f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 17 Feb 2025 01:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739783828; x=1740388628; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4ntcKW1tB+N27ADy4lWAK7yXsvL0R0RQM5l19jhhaJ8=;
        b=Sh43WOJxVLq3J6lQ8RRurUUy4fVJxnU1pvZy51+kws7MznEsrTF7Exo198utJ+NaRr
         lud5xrELpy5hdXIb6bw5bx5H/cCLBsGhpB/+ISyGsgK8TU7c5sufwYYGnCs6wY6TD2Hc
         FQPKQ5eZZQqZ/wZO1bCEddI7+UCVEzoDobDy/x3UlFncB2Mrm6AZ0DV32nYKSPGo81zt
         rvkGfaMTkD9FVdMwYSys7fl88qrPzuxHNr36o8DGaz3fWXTjBTNZW/YqyzcQQYYWAdYH
         fOAfonalMB5C1uizP+EWUVVM2z14n/2hVau5PxQgjPdfgYYBql3byV+zLJwkppIuy4X6
         bPPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739783828; x=1740388628;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4ntcKW1tB+N27ADy4lWAK7yXsvL0R0RQM5l19jhhaJ8=;
        b=GiuMFd3BYnuM9GKhXioSFSiRgb98zubiTPp6+syM1K5davktncc4NlBHcxgBTOgJvB
         UhIZuWUGV0566q0/aRMnz81cYwG09EKuRQTTejq6bBlzhm/D8/C7oiQQS0J26XWrXbWG
         9kFUNNVti5oPz4B7ENBOGXo6IYnm3XWcAoTsdwH24AKSF1Ui/9DArMWw1K3Hup169/JB
         sMxzLifRZfpp5RXyVET4+sGAAA5UiIBzTkZNCP7O+9b2jJrdxUg+OT/QaReoFRFzOMQX
         k1vnYsGEKj3Gk3MXDIeyltDII+NicMSHVWV8apivCoD4DqgBEQspfOKI8KTz2KCtEBRu
         6GFA==
X-Forwarded-Encrypted: i=1; AJvYcCXk92ULaFhNjLeBuSYf8/v8TuJY8ZkAYe57KXXBwMIu+Q3rQoV1HphXuy9xCbQT+wnCZzV08lCkoCc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJblkMAqHf8uySWJfP15jFqYYBbveaoN9wS51dnHkMQmfzQzFi
	xLsFaY7vRJiNe6mCI31MRr2qpM+3g6IVgYO4cse5b0DnDy7uzD1z/CkD3ykFNFM=
X-Gm-Gg: ASbGncvg7oN/ZmxI+xWeFg5CW9hE0FGG39EHU6ckG7apTLmlI+UUZ/+izvkrvY/IQJh
	r6sNe7SVnDVvwKpG1e3UE0KNgAkQf4u2PSUR2gWxrcV+FF05mE4kAezQ3YlOuGVDy+P7C0KLtzz
	eJHOSuzWQG0zDPEtltGxgnF5VJPKU3XmToFyGdezWCACj0p80JyT9kyNaYcMxGd/3j+K9UAJQ7N
	pV2ArY1v2/HQk5dt5NDwari8LOmd45+nT3OcddXw/QMxLI931dDpptA7IipRUVa3bMZNbbclw9v
	IQCnvq0wl8cRrseU04c=
X-Google-Smtp-Source: AGHT+IEtKLFRxuP1nVmL4IgHksUscZagskY4I9yGJDc/hGcqpUxar3eun+zNllhMxzPrVCBSF8kWUg==
X-Received: by 2002:a5d:4684:0:b0:38d:d8c0:1f8c with SMTP id ffacd0b85a97d-38f3406cb07mr8581595f8f.38.1739783828394;
        Mon, 17 Feb 2025 01:17:08 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258ccdabsm11679604f8f.28.2025.02.17.01.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 01:17:08 -0800 (PST)
Message-ID: <f940d41b549becc79538a9b100ac2d65e1bd6804.camel@linaro.org>
Subject: Re: [PATCH v3] phy: exynos5-usbdrd: Fix broken USB on Exynos5422
 (TYPEC dependency)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Peter
 Griffin <peter.griffin@linaro.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Marek Szyprowski
	 <m.szyprowski@samsung.com>
Date: Mon, 17 Feb 2025 09:17:07 +0000
In-Reply-To: <20250217090518.137606-1-krzysztof.kozlowski@linaro.org>
References: <20250217090518.137606-1-krzysztof.kozlowski@linaro.org>
User-Agent: Evolution 3.52.2-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_011710_128508_A6DDD691 
X-CRM114-Status: UNSURE (   7.46  )
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

T24gTW9uLCAyMDI1LTAyLTE3IGF0IDEwOjA1ICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9sZGVyIEV4eW5vcyBkZXNpZ25zLCBsaWtlIEV4eW5vczU0MjIsIGRvIG5vdCBoYXZl
IFVTQiBUeXBlLUMgYW5kIHRoZQo+IFVTQiBEUkQgUEhZIGRvZXMgbm90IHJlYWxseSBuZWVkIENP
TkZJR19UWVBFQyBmb3IgdGhlc2UgZGV2aWNlcyBhdCBhbGwuCj4gSW5jb3JyZWN0bHkgYWRkZWQg
b3B0aW9uYWwgZGVwZW5kZW5jeSBvbiBDT05GSUdfVFlQRUMgY2F1c2VkIHRoaXMgZHJpdmVyCj4g
dG8gYmUgbWlzc2luZyBmb3IgZXh5bm9zX2RlZmNvbmZpZyBhbmQgYXMgcmVzdWx0IEV4eW5vczU0
MjItYmFzZWQgYm9hcmRzCj4gbGlrZSBIYXJka2VybmVsIE9kcm9pZCBIQzEgZmFpbGVkIHRvIHBy
b2JlIFVTQi4KPiAKPiBSZXBvcnRlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJu
ZWwub3JnPgo+IENsb3NlczogaHR0cHM6Ly9rcnprLmV1LyMvYnVpbGRlcnMvMjEvYnVpbGRzLzYx
MzkKPiBSZXBvcnRlZC1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcu
Y29tPgo+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzNjMGI3N2U2LTM1N2Qt
NDUzZS04YjYzLTQ3NTdjMzIzMWJkZUBzYW1zdW5nLmNvbS8KPiBGaXhlczogMDlkYzY3NDI5NWEz
ICgicGh5OiBleHlub3M1LXVzYmRyZDogc3Vic2NyaWJlIHRvIG9yaWVudGF0aW9uIG5vdGlmaWVy
IGlmIHJlcXVpcmVkIikKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5
c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpSZXZpZXdlZC1ieTogQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
