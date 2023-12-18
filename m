Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70A90C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 11:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fi1TiO+Yq/nQIHgvdSGfOCThpCOIazLVxXBx7qnp0us=; b=NzFDzTp/C0kBvP
	bZgG3+RuclFAHhTvHrV3aOTajPZO3yknGYLZEZGvWrieBIgMILzUYd9jio14FozISNg57iEk5F4oz
	Sk789JQHYFUjiKYzB3iWhSCatsZPt4jKHQOotaixkzqOuLq5pBojOsjmeyf+HxKuo5EtFFv8aPo2Y
	VonzPFHgfiB7tFkUP01kYyYrhB5SSCTV8uycViJsR1xS9QWPLAOnsRpyqbKoewbCaGgNXF7N7Rrel
	2sIKEoTWhjpVEurlqSRRheXgD/+HLvwGG95us4P02w4dziXnLPzDRvNAIcHc+WOVI/tjB8hQkHmix
	NU3lUbrgzLHpZ64rXaDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFC7V-00ALuF-09;
	Mon, 18 Dec 2023 11:49:13 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFC7R-00ALqY-1D
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 11:49:10 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-5cd51c0e8ebso972282a12.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 03:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702900147; x=1703504947; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WFiECuxQKf4bQHzOWrQB9O9iOx/6SZrLhJKr/Z2J67E=;
        b=IsUnI97yGKWqIOdURjSXzCMXbZDtJhCKdFyye75YLoR3dXNf8SfaxEKVhah7fe/C/E
         IjdxtD7FhsEclp3wmrz48P/AzVRqYRxs/sIMLbquvBI1/QDkv4pTwTTvEjNQHAnblXpN
         HUct7InRwvJ6RvhX79VWEb9GY8kzCWaYyyyNSIWius8tcZuo2Y1eEFQQJeygZgRPopf0
         s4PDysOxv9szHFjGjueRfLTUwnr+bRpUykXhS8B4HAdxfXqSBvkNfmsfGKt76381cbkc
         9QxRoob2qO0si64ZK8gcjmgT7vcANtVW7wJeziq3eFBuliMNFNzL7RBJmw6AuRaTVUh0
         Ddrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702900147; x=1703504947;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WFiECuxQKf4bQHzOWrQB9O9iOx/6SZrLhJKr/Z2J67E=;
        b=SXmzwo7XhQQZWXGL1G9OmU6A83N1lAbZj7puRGyL09M5aHDE44SDRI1mtp9HJTfmAA
         cFE6bK1sx0pk+mcP/UuzUCv0mEdR1FdLvd76sAWdRLqGF+LWcMZKxAkOSeia1cBnj/Ch
         VpxRSr8TmrFIS9YJSs1uiZPqTc4FEMIMvHOVW1dO6z5jWpHP3mxVRSDacCRGQzIwSm6t
         O2STA4EXrID4C56LvnXPn6vDdm9HB3OLdIHjSJKupZz4mQ6hIjsxIft/5/TaIlqY72Xx
         F4PWccyjKgpivYbnHB7Nthc/WgBjCXIUt/ifYvlCT6k+4a2MP2hwVc4e4Mk4ph03OhwU
         kobA==
X-Gm-Message-State: AOJu0Yym/lnd8QDCbpwfyuLYrAZsmoKP0Vq3V2kLZjzdfaISmvrv15NP
	vYmjGUstyt1zQil9Ze+9jDTF
X-Google-Smtp-Source: AGHT+IFNm7vnn6dj9ZJCS5JUQjewTTJwImMcXsK4yzYDnO65BIHPMtdEVIr3bR2Db4u/3gv4EFWJDQ==
X-Received: by 2002:a05:6a20:3d81:b0:190:c314:35f8 with SMTP id s1-20020a056a203d8100b00190c31435f8mr7847690pzi.46.1702900147590;
        Mon, 18 Dec 2023 03:49:07 -0800 (PST)
Received: from thinkpad ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id ha9-20020a17090af3c900b0028b8bb9e5cbsm1526025pjb.25.2023.12.18.03.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 03:49:07 -0800 (PST)
Date: Mon, 18 Dec 2023 17:18:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	sboyd@kernel.org, mturquette@baylibre.com,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 01/16] dt-bindings: phy: qmp-ufs: Fix PHY clocks
Message-ID: <20231218114858.GA2900@thinkpad>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
 <20231214091101.45713-2-manivannan.sadhasivam@linaro.org>
 <20231214172051.GA611674-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231214172051.GA611674-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_034909_477525_555C7C8A 
X-CRM114-Status: UNSURE (   9.40  )
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

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMTE6MjA6NTFBTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMDI6NDA6NDZQTSArMDUzMCwgTWFuaXZhbm5h
biBTYWRoYXNpdmFtIHdyb3RlOgo+ID4gQWxsIFFNUCBVRlMgUEhZcyBleGNlcHQgTVNNODk5NiBy
ZXF1aXJlIDMgY2xvY2tzOgo+ID4gCj4gPiAqIHJlZiAtIDE5LjJNSHogcmVmZXJlbmNlIGNsb2Nr
IGZyb20gUlBNaAo+ID4gKiByZWZfYXV4IC0gQXV4aWxpYXJ5IHJlZmVyZW5jZSBjbG9jayBmcm9t
IEdDQwo+ID4gKiBxcmVmIC0gUVJFRiBjbG9jayBmcm9tIEdDQyBvciBUQ1NSIChzaW5jZSBTTTg1
NTApCj4gPiAKPiA+IE1TTTg5OTYgb25seSByZXF1aXJlcyAncmVmJyBhbmQgJ3FyZWYnIGNsb2Nr
cy4gSGVuY2UsIGZpeCB0aGUgYmluZGluZyB0bwo+ID4gcmVmbGVjdCB0aGUgYWN0dWFsIGNsb2Nr
IHRvcG9sb2d5Lgo+IAo+IEJyZWFraW5nIHRoZSBBQkkgaXMgb2theSBiZWNhdXNlLi4uPyBQbGVh
c2UgZXhwbGFpbiBpbiB0aGUgY29tbWl0IG1zZy4KPiAKCkkgd2lsbCB1cGRhdGUgdGhlIGNvbW1p
dCBtZXNzYWdlIGluIHYyLgoKLSBNYW5pCgo+IFJvYgo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
