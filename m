Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 345D1C61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUd2VXgpt67bhEbj/agZXxZZdPKdrfcmvA/rrhYM2Eo=; b=Wkxc7kmifoRio/
	/F0hthgKmdXWHnbo42EZXe6SLnBZ4N2KCMtO/kDHs9NNZMw4z0HBRq3qlXASDXHUm+lUoZ1iD4UnA
	wDbgxj+TAvP9kR4smnFxrz/ZPe31eltHCVEFGgB3eUKJWU69KYOalEhIx7DOEfRPm+iSa7sA6k/dH
	HQp8ZdrAwGu4eBYN/kIMqBOWlXulFmy/k5VSSaM+wBDH1fQcN7UEegU4ww0ME+LChLPTaJWlvic/1
	I/7jS7MjDuqPkn3XxprjBklFD24YsvqsQjiPI87P3iA8CdlISkJOg8/+rsx3ql6I2RB5+oWW23UPE
	HL0m8IJrKijJs7PrlWIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyoI-00000001Xi6-3msc;
	Tue, 25 Aug 2026 21:35:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyoH-00000001XhU-1gHj
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:35:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A3CBB60053;
	Tue, 25 Aug 2026 21:35:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4D691F00A3A;
	Tue, 25 Aug 2026 21:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693756;
	bh=Qm8Kj6dzkUYon3/ELXvm/yvPx7iY64uZ3RX73svnXbU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XJ4APmpvjracUV6Hz21xkco7mNA42533TpkhhtmWbjKEZ89Wix9ECc9CIlbmLgf8P
	 3zuJCDdpXgMAcyeDdCALtgM0X1Srrot3hl9/lU0NeUX1fAujcr6MH9mk/Dm2bdW38n
	 AUcBSHaJ1/yeu1kbUmNq1s16lVQk7jssqC+t8Gh2sVnbIlC73z3Erncga7/EHD9hFv
	 EZI81xln8RPV31hjCd06BYK/fPuAu8hi8Wc+zeCZV1oJfpvSU9s65kVRXDWzWJdesQ
	 YyIixHBn/wEAMU4mXwVwz7vfmNCvVQhSWDsW71MQtZqzlVWkgK7mKf7DSGCxWtpkEz
	 5tCI/6qEAwF8A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 12/12] reset: zte: Add a zx297520v3 reset driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, robh@kernel.org, lee@kernel.org, olteanv@gmail.com, mfd@lists.linux.dev, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260826-zx29clk-v11-12-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-12-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:35:55 +0000
Message-Id: <20260825213555.E4D691F00A3A@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBUaGlzIGRyaXZlcyB0aGUgTUZEIGNoaWxkIGRldmljZXMgY3JlYXRlZCBieSB0aGUgenRlLXp4
Mjk3NTIwdjMtY3JtCj4gZHJpdmVyLgo+IAo+IFJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxw
LnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIg
PHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBh
dGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgyNi16eDI5Y2xr
LXYxMS0wLWY4YWQ1OWM2NDI2Y0BnbWFpbC5jb20/cGFydD0xMgoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
