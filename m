Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85CF8C982CF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 12:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hpg1CQuc3jwn80Fww4viWCYyKScEdtctiA7UJzs4wr8=; b=gNJB6L8nEcnhtx
	5q2wf/INGktHyD6KsqhcIf5UNq66ej8gHnSEQMKD9qSsafAVKOdLNvQXmpxD0QXwIDo3MvyJ0K9wT
	2E+dNiZf8IJTob6CNtLVxRe0ek9pp/chvRDLVTfc01MKrC8wG8mXo45rV31jBQSzinSv3sd9Euzyf
	vEmzc4+l2d3sPyfJrxKkDXgVZ5ZvbN5+thiQfj9M885yEo6EfQMBc3KzEVpqnkU344lSBX28hgLX4
	T6F9aPYBsTLRO/LIfisTWWb0K85L56sM4gyGYhLUE/wHT+kaEoFHIw1ImQWZO/LQ+BWF8Qutwdlhv
	hgmOWTOS8pnLdBlQpK2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7BT7-0000000BK2b-0IWe;
	Thu, 17 Sep 2026 12:44:01 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7BT2-0000000BK24-2yGY
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 12:43:58 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a9984f9adcso1284311a12.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 05:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789649035; x=1790253835; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=T7EV5DL8qRH0a/MP26yVs5lc2kWIGglCyt84hDRgCrI=;
        b=lKjuP0PPd5YjslZkdR2jn/J+jkJUmEwBaddiFrDykPIMRgkEWALZ8m4kbcWtJoAlC9
         zURRWripuHnPW5boARkDwanv1urQ8fy3bZUHcgalzMWm2PV99CpFvjn8q7jDiLRaxJAH
         RjCAz04L2k5vTPLoh1rRA5lCTj5aIDGmGn2DasgRRVCwd7A0HRNAM4VFouzO1O5Xrzp5
         kLe+KRHroEhw8tF4mQJgAMMJ6FsDQTWe+eB0pv3InxhSvTw2Lcpz26+OD8p7yB2MM6zz
         iDHcurJnRNo2PZARwj592r0+dj11BLUWp9rzuPqOxj0ZD2gkGhzKWAN0Fhqaa8ADU/cN
         r93A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789649035; x=1790253835;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=T7EV5DL8qRH0a/MP26yVs5lc2kWIGglCyt84hDRgCrI=;
        b=uZhRkA0CYqlOuPyM4WBhOFZcUk/zLJH5r+5FRvGNgDh2sOxanWZ+d2jBNT/O6WsAdB
         WhcKGs1wOC5EVvKoOFYWyJQsq1lIM4Q+aUXzS7hYtD0PUssO7UHyGcspp8VsFdjUKWme
         fZ1BMtCHRZWeePjCSUzTJtBuznfqzOAlzqn6X2V3nghcgJKxrbgrIDXTAXoStVZh3GmE
         QEF7okwiHLiezpy54HgR0Xl5eQ7YujUDJkXKv5OHG7TKD+q73w4lH0WaBVRnBE2vuhNE
         Gh7g4xF+IFbfy3xDy4iGzcvDKmN1fGJwjKMEIAhA+K4O2K9Mubbjx3XPZZzzR8vEwOxJ
         xYVA==
X-Forwarded-Encrypted: i=1; AKwUvBy3yM4mjB5mR/1BFBNtRCRmRthnIXThPUNLBwUACHkBVYxLcm1Q7irvXtAdjhLT95e0pKblvs/NqAw=@lists.infradead.org
X-Gm-Message-State: AFuF++lSnVQLLQjzejuICnydPy9A0ftPfP7yGJMfP1SEEUO/vNmuVt0V
	8dlIxdbksv7sdmYNxW8zc/S3+9OlzWekBwrlmmuXuqGsGr+28yKu3FvGe/V4SAFBJRA=
X-Gm-Gg: AYBFou2EF/k/b3EyBVXaTC1CUznDE/sDYByrHFS6E7JR9WaGeJMIAh9kS5nIdITDjEa
	f5oETntKZlHuMeXThcXNijQBMpi8LHADq1YoS68Za5ttHUMOsMbErRm02zq5DDSU4jLI82h5EjN
	TWN/anhNLDvzJrFhF0BAMaYWj0xb35vd+gbBjRGlgLFPKj1AXxmL8i/RfOQ4J827i5D/q7iqnfQ
	NMvf+1RgAWtb3LUigBCr59c4oRv+nT/BASrmuNsLiiEx77RLzDkBGxoGf/guvYZ/2jMudLVjU+H
	LgYBUbJJJm9JvX4PkqvXs9BQ+A98oJLBy6JrOlcwcLBOZbi3qDqpIKDVHZ7h92pY5JG/EdZWcHE
	4Lucq24H4wv2uPV2FzvSifc0M4MLIWOI05MxffXCs++DrBQC9jod9j1BWmm5FwIJQO8bCwIeMbT
	OGegeVPmADeP/wJIYHeoprcxlljPyLYTQtk3lPsr9H4rO1WPZMhdw4h1lJHiR3+RVPmntoMJFDq
	1cZfPFFoYw=
X-Received: by 2002:a05:6402:360d:b0:6a7:ea53:f62c with SMTP id 4fb4d7f45d1cf-6aa2246021dmr5023762a12.43.1789649034670;
        Thu, 17 Sep 2026 05:43:54 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa1d228baesm3705562a12.9.2026.09.17.05.43.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2026 05:43:54 -0700 (PDT)
Message-ID: <be9f9890-1bca-4f25-9005-faa5a4413e98@linaro.org>
Date: Thu, 17 Sep 2026 13:43:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 3/5] phy: core: Add devm_phy_get_by_of_node()
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-3-f85c9103177e@linaro.org>
 <9e8ae55f-6d95-48a9-bef1-ab653d0f1c7d@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <9e8ae55f-6d95-48a9-bef1-ab653d0f1c7d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_054356_764623_2D0C264B 
X-CRM114-Status: UNSURE (   7.30  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTcvMDkvMjAyNiAxMzozMiwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+ICsrKyBiL2RyaXZl
cnMvcGh5L3BoeS1jb3JlLmMKPj4gQEAgLTgzMyw3ICs4MzMsNyBAQCBzdHJ1Y3QgcGh5ICpwaHlf
Z2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAKPj4gKnN0cmluZykKPj4gwqDCoMKg
wqDCoCBsaW5rID0gZGV2aWNlX2xpbmtfYWRkKGRldiwgJnBoeS0+ZGV2LCBETF9GTEFHX1NUQVRF
TEVTUyk7Cj4+IMKgwqDCoMKgwqAgaWYgKCFsaW5rKQo+PiAtwqDCoMKgwqDCoMKgwqAgZGV2X2Ri
ZyhkZXYsICJmYWlsZWQgdG8gY3JlYXRlIGRldmljZSBsaW5rIHRvICVzXG4iLAo+PiArwqDCoMKg
wqDCoMKgwqAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRlIGRldmljZSBsaW5rIHRvICVz
XG4iLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfbmFtZShwaHktPmRldi5wYXJl
bnQpKTsKPiAKPiBUaGlzIGNoYW5nZSBiZWxvbmdzIGluIGFub3RoZXIgcGF0Y2guCgp5ZWFoIHlv
dSdyZSByaWdodCBJIG1lc3NlZCB1cCBteSByZWJhc2UgLi4KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
