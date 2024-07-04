Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0EAAC2BD09
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jul 2024 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71R/DXsE8tsIKKAuG/k+ngPRdBfgjazkTa/3fS5VjUY=; b=OHAuPGBQKXyjEW
	EcBh85USWXJEd+NfVky37Ft4k4zUQiRCBsowXpA1shqZM4CW3gUBIWEV3+A5vpDs5WGW7Y3t34a/P
	gETTqM4kw//lrC7mzhXt18uft8QvfT7/f/G+jSM7tCuMJ4jjKIQTG4yELbXdyy4a7w0VRWvzWVMrY
	wMpN0vNVH3sh6Vutu7m0IYx/OyS4mVpQMP1jd6IMpbWz622UFZBNezJsepdhMCp78GWq7DAziwbOO
	PBFLyUzTBrLZQRFL0AromtkF4GD4ZffUOmlabx3NR2Qpw+LzxhZKwMCCCR1leUpFhnIKcVspT0bQ1
	mhGwogO0hQ1OyRrNTc8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPBaf-0000000Bt1K-0iys;
	Thu, 04 Jul 2024 01:48:53 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPBab-0000000Bt0M-0CHl
	for linux-phy@lists.infradead.org;
	Thu, 04 Jul 2024 01:48:51 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-52e9944764fso81934e87.3
        for <linux-phy@lists.infradead.org>; Wed, 03 Jul 2024 18:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720057726; x=1720662526; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G59GNkOWbkHEYhhvdW7B0tM3W2apbni9xrSBJTuFhGU=;
        b=eNNHpY5RUPh8DWfi4pV3Jprxg9pqCSMK/hxDHFjo4wdoyNHa0+wlkK2gztItYMn/b3
         jSgEs/dNOVp0n8Xu4FjkMwULqBryj/6KcGjIlzDJcKtTKsSK5j5p21+fzxI81KtJAIKN
         ehI5WoKEWumiVxUIuQV8Zn48ZR8PTkwScrBBOJ7qS+z1rIHASCLx8CcJJ3BvJ/LSar1G
         A4/SNoIinpwiPQoekTSDYro2HV0ec3ITf7mETZ/Pc3kerGfF7kBNFT+t6aiVgGqvmlUn
         QRohNvQ1RsQjRCN4LPsNn115GyggOyGZ/m0yhCYpqcjOo2i607++YgR9AA/bmonjA5bX
         TQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720057726; x=1720662526;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G59GNkOWbkHEYhhvdW7B0tM3W2apbni9xrSBJTuFhGU=;
        b=F3Oa5Y2ZCG9onSbtssBZuQAM8EzmZ90JjJqZyZSJsXdxvLJtAIovcT2WQ4uNufPiJJ
         +1NQi2xYH9BTDf9FTemaupYxqgaAFRi4aVfiXh+8WQ6W3UiaR8F8igYpSUyZtQnfsnhw
         ACIjJBDBVT04q01AEi87e1cy12EG0TA4Mdk5W3u/FEaUEQtdEpE3ys1LKI9PRuv706NY
         qywcB/8YZw+cORH4uZXylBmNtdmb8w13Y9nqjrjHMD06FqIE74YNLwVSlW0f6AgV89m9
         /7repSWm0bFd4jrrfDP8TIrpmov+oW0ZyfPgTuQPf4YniJJ/C6k6EYoHgS1BSi503Mn7
         dYLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXBKZLITnW1KUy5ZT6cbPr+0YRztnLLqf+zGmxkCk8tg9J1jPnvESmpnvMfXCnvpA+wekvT23xLVtir04c4g1HblmABsOKRO0DzqLaag==
X-Gm-Message-State: AOJu0YwDSSF+H31yK7FqILy/7ieMiLOSI5KNW1/b26A0yBFmIzCYmDA4
	WVFLqnHKAYUrS/cPuh4xYv1jHbwyzM9llZNd5LahIEcXMb0lT5U8p6BDCcLKvCjInB1UedJbuDb
	m0RWmh00oGkmpeb6O9ZvXIbKjxqnppzMuMsZ8Uw==
X-Google-Smtp-Source: AGHT+IHfLv4s+vQIweVjQ7Xr1GgMPxbR9W9NSDAeDl6zTwN0+s3wCrlLDx11lSg6hn3Q5ddlFYVlYAEAVqfoxvcoJwg=
X-Received: by 2002:a19:ca43:0:b0:52c:e1d4:8ecd with SMTP id
 2adb3069b0e04-52ea061309bmr84261e87.8.1720057726255; Wed, 03 Jul 2024
 18:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240703215905.2031038-1-robh@kernel.org>
In-Reply-To: <20240703215905.2031038-1-robh@kernel.org>
From: Shawn Guo <shawn.guo@linaro.org>
Date: Thu, 4 Jul 2024 09:48:34 +0800
Message-ID: <CAAQ0ZWQ4ua6aN15Wr+gJF7GkgNgzA-OunUhSMyeecZEJZq7DtA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: hisilicon,hi3798cv200-combphy: Convert
 to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jianguo Sun <sunjianguo1@huawei.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_184849_257728_EA505F06 
X-CRM114-Status: UNSURE (   6.69  )
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

T24gVGh1LCBKdWwgNCwgMjAyNCBhdCA1OjU54oCvQU0gUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBDb252ZXJ0IHRoZSBoaXNpbGljb24saGkzNzk4Y3YyMDAt
Y29tYnBoeSBiaW5kaW5nIHRvIERUIHNjaGVtYSBmb3JtYXQuCj4KPiBEcm9wIHRoZSBleGFtcGxl
IGFzIGFybS9oaXNpbGljb24vY29udHJvbGxlci9oaTM3OThjdjIwMC1wZXJpY3RybC55YW1sCj4g
YWxyZWFkeSBjb250YWlucyBhbiBleGFtcGxlIG9mIHRoaXMgYmluZGluZy4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+CgpBY2tlZC1ieTogU2hh
d24gR3VvIDxzaGF3bi5ndW9AbGluYXJvLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
