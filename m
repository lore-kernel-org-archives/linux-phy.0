Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D97AC3271E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jul 2024 18:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7D723jhAgEzbJ1w0UpUNpeP5+AB/7N9XkRz7aQuZyTQ=; b=Q4rslsceb8Iy8R
	V8rTOjVU7sUd0zGb2qG89RARa0hvW7Is8fCN9iYe0i8ILdIm037MdoKvbQ0QXgXFw5yjL0ZBERgQG
	71rZsC7pPkyodaKksE/dzZbDr5q569+VxpkEei4Yj7oNoNdZiFaPvSBbVo3w41wnIs534palmFtWn
	C4O7J4rnkvh7F9/HhpW9IECkiSvj1A5p8B+4nuSJvYBqm85VX5cw8H4Ddc8m5WBONItRfFl1/LQex
	huFJkzxCkamT1lGvawugWPis9diMAS61FnuE5icSxLbitykV5kUqtHYvOW3ztjtXSbru0rivMG569
	LVXBq4QiEbaT9bJGMbDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQt5D-00000004hf8-30pq;
	Mon, 08 Jul 2024 18:27:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQt5C-00000004hf0-0KXR
	for linux-phy@bombadil.infradead.org;
	Mon, 08 Jul 2024 18:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:Subject:References:Cc:To:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=nlMaB/JpuH88DM3GoVX7G0Uuyms0smFzf26TAoL12eY=; b=mxTNaed3DeNBKXNZta3LMgUDiM
	v5JbkyjvSlR7MhgUH2mJiTid//+/4I0aNiNt5XUbijMvOjAh+cMXBtmwwDZml6UkBjekz9okK3O/D
	WBpZjsS8e1MGY6lLMtjEwtlRTaY2gEuxWq4XrV5QAvVJAgHSonGGXbw0n5p5AnsBX+2N2dEaWZ/Gh
	Gffxz0/BDY+eZwPipL0JTQ91l8n10/gC9U+vKf0IHHakM0wkOwjPJH7SoGnt9brndr4L5dMdbDDaG
	pLR91z/Vu6NBNdnkp78PZEF76zcF5szdUVtfGaH4hT+0KnEOQ1CrI0n2qqwXL4m8Waxt/qrWDrlxx
	FPgAdBzA==;
Received: from mout.web.de ([212.227.15.14])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQt58-000000073vw-13zs
	for linux-phy@lists.infradead.org;
	Mon, 08 Jul 2024 18:27:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1720463221; x=1721068021; i=markus.elfring@web.de;
	bh=nlMaB/JpuH88DM3GoVX7G0Uuyms0smFzf26TAoL12eY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=U42852DnVa/l/aji1gejCv+ivNU+NkM4U5x6NGXf5TvqMP9Xk2pH/t4Jhzq7X3XP
	 EbD4aiGoae03rLAynmSTj7EcqkN6Jwr1fCcLTNkoFZQsJtpT8hJFyZIqDGsNFpdd4
	 8bIOvTlKrNCaZ3EpRcXQChvanqNrz+C6yAB44ejdhm9s98rz7IBnk/ZJJ4LriY+Kp
	 bH998OUSPjblxjKtXkmw08Myiw9N0yqq7hPxVgkW3TwpNtb67yStLOK4r4qOvxWU4
	 JUroRYfaehz5sQUiK1JL1ikR5EJhq0+vdqCFLF1s3P/aUQIcyyKTwqFhJLl4m0WiE
	 M3TBaNM7ILgLHTVvpg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.91.95]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MYu16-1svjin0mFE-00P4Ko; Mon, 08
 Jul 2024 20:27:01 +0200
Message-ID: <25435c69-d33b-49fe-be7f-c0d93af639fc@web.de>
Date: Mon, 8 Jul 2024 20:26:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Sam Protsenko <semen.protsenko@linaro.org>, Vinod Koul <vkoul@kernel.org>
References: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix error code in probe()
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
X-Provags-ID: V03:K1:L1Gdda1KHAXM3MhKUbikQbsc/6T6hLXGu6hHFu4HvtGFPADfB02
 WlMPZMzYETWo0QrMiYcSyNHt23xaeUr92HSMZuqJX1AfiMd5bAuPiNA8FV764pis/yZNtQZ
 osO7PAeDwjfRYpDrD/leT18EEtrcjetiUalGglPNEOYDSSF/qelGMjCQSV4PEKzS5cnX/sZ
 i6VHdDyQUGfeY9oufJM8A==
UI-OutboundReport: notjunk:1;M01:P0:2ZYuXBedkdA=;jzqSJq1FcYwTlwfIq9xFK4UBb9t
 p922l9+XcoZ53L1uXsFwWz+btk37W13Xlxmrjm0SIXsCUgrESut+KhOZYXXq7w0p8ZlfQfSJ/
 Jly2DeIhvYmlMB0I1v3D5gFM1zeyBn4j9MRGfibesQnM6oZc33Dj270/8DqhcXZTKOdpfHxCa
 Hx0QKn0qg+cutDaq1IwA6odNYKeU6MjdkGJtzEY7HuDEsBx+AW/Zu/kvkD4uxsMXaTQbJhOYO
 Ol1OXXagRkA3cQpUKRkmgPd20+YgCM3k5fc78/b4efLwi5HeKmeiE3Srin/gqrtSAc1ZPVWNr
 feNTxf3FG5zDHQIajNczj7ByM3OL7Rooohtqgo4tb7gvHGi5LAV52cMxYw4J6AQt1OTfVtUyo
 QubjONSTcweqXpH8EXexcoW5QCTOfqsOhKakO/RS2kW/N0gBtlp4bd+5y2EqnKb1pX1np5JMF
 0gzqWSpidzLsxMcdNhyHQS0kcbX2sS10uEq4wfXkvsDIIfqGFo/h/8npMlG8rOpNC2mDv5j6J
 r7hIVjin5InYgLP6o0/S8UaZhJaOPZkj4jJCS8i1GRQaK6FbJGWkNGfm1Dl9PJHgqn/zoRakP
 xBK7zMRdhcZXrcf73k6EU9KVawX5Hc7lGR3aodOs/esEouNJHvpaMEhPXur3QacaXrXELc/9x
 w5X18yJddD2ZacBidkJEYAVDedkB98dsYeFxFtjGUgGxz1rbG/GWSv4Dl01SVumDR42soFoD7
 SVAK3wyn1DKh+e5jyNvDLTMfQKh8n+vlhWeZyeB3ZAFG30P7z+2LCbqm7VsCBeZq+2ELNgv4e
 RSu8ygyWqtmYw9Kx/3Kvy2+r8/WlsB+r2WaPTiCbSdH8g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_192722_362875_8E28DB10 
X-CRM114-Status: UNSURE (   3.24  )
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

PiBSZXR1cm4gbmVnYXRpdmUgLUVOT01FTSBpbnN0ZWFkIG9mIHBvc2l0aXZlIEVOT01FTS4KCldv
dWxkIHlvdSBsaWtlIHRvIHJlZmVyIHRvIHRoZSBmdW5jdGlvbiBuYW1lIOKAnGV4eW5vczVfdXNi
ZHJkX3BoeV9wcm9iZeKAnQppbiB0aGUgc3VtbWFyeSBwaHJhc2U/CgpSZWdhcmRzLApNYXJrdXMK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
