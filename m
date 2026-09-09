Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68080C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgYRbYDChSzFBm9meMABLX1GWKNcD1IScoZxhrsxgRw=; b=f+QtqY+CfbmhZQ
	BbEadfIMkU7dooNt2DQiKWftGDnqSboEric0nCypH9qEv+crYtg5ffNZxIqUMnu71LL+RsuUoz+rd
	KHKwYXBvFBvIXyjFFIRiWIzoLRgkTzH4m85AJ6QrqEVchN48HlIHwSsBFfKgsaEr/zjc73RryXwl0
	wKhU34F0SZlAfB6Ii3VAaTRPqgK0gSGaICj2CKqWEgaJp1bn8aok7pLwJH/Wbv1xRHdD8rBrrhZvQ
	jxhQhhH1NTfn/JNOi2qP6ZfE0+611BYUgWM++mHtttxmPE7rCY3R+l0bMrb+mZjQ4s/dGDIWA2NnS
	/6WRpdi9L0DFFjw71QFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gsq-0000000BdB3-0JIV;
	Wed, 09 Sep 2026 11:54:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gsm-0000000BdAP-2QZT
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:54:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E22C06020C;
	Wed,  9 Sep 2026 11:54:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26C3F1F00A3D;
	Wed,  9 Sep 2026 11:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788954867;
	bh=3hM1jR5pl0jDpG1TMAugpv372yE6P8xFVcSGWnVrUzQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Bz5f35mCzXzOapjFkSJnBwEw5gM48jG69Ha7sp0Ns7b2GMZZFmmGWPhkKY9qTDqMI
	 0s5/nqpjntrS31PisezWK13n7HT83SznfbXLw2CiqiNJ2UH0+OZ3bB9+3mfq29HE8u
	 jzACKfGvsHAlLEX/63fB58dSSAvtTXX+ynkaEwdSYraK5VqskRHq4hWomD3GpoNyZX
	 9gwM5P6ikupHToKWtJg+ehU/0bnuJUWsySmXiCLTP4LudMaobIjKQGhoG70l7J5g5N
	 X8N2fRCaIgxXhShIZ70sz1duDfRQyJ5I3799DJpQ71rNiFsdE0oZPp2BGBcJATU+5w
	 TEofJDSRE6VlQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/5] phy: qcom: qmp: Move
 qphy_setbits/clrbits/checkbits to common header
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, linux-pci@vger.kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260909-nord-v3-4-b0a82721c547@oss.qualcomm.com>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-4-b0a82721c547@oss.qualcomm.com>
Date: Wed, 09 Sep 2026 11:54:26 +0000
Message-Id: <20260909115427.26C3F1F00A3D@smtp.kernel.org>
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

PiBxcGh5X3NldGJpdHMoKSwgcXBoeV9jbHJiaXRzKCkgYW5kIHFwaHlfY2hlY2tiaXRzKCkgd2Vy
ZSBkdXBsaWNhdGVkCj4gdmVyYmF0aW0gYWNyb3NzIHBoeS1xY29tLXFtcC1wY2llLmMsIHBoeS1x
Y29tLXFtcC1wY2llLW1zbTg5OTYuYywKPiBwaHktcWNvbS1xbXAtdWZzLmMsIHBoeS1xY29tLXFt
cC11c2IuYywgcGh5LXFjb20tcW1wLXVzYmMuYyBhbmQKPiBwaHktcWNvbS1xbXAtY29tYm8uYy4g
TW92ZSB0aGVtIHRvIHRoZSBzaGFyZWQgcGh5LXFjb20tcW1wLWNvbW1vbi5oLAo+IHdoaWNoIGFs
bCBvZiB0aGVzZSBkcml2ZXJzIGFscmVhZHkgaW5jbHVkZSwgYW5kIGRyb3AgdGhlIGxvY2FsIGNv
cGllcy4KPiAKPiBUaGlzIGFsc28gbWFrZXMgdGhlIGhlbHBlcnMgYXZhaWxhYmxlIHRvIHBoeS1x
Y29tLXFtcC1wY2llLW11bHRpcGh5LmMKPiB3aXRob3V0IGludHJvZHVjaW5nIHlldCBhbm90aGVy
IGNvcHkuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBRaWFuZyBZdSA8cWlhbmcueXVAb3NzLnF1YWxjb21t
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5h
LmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0
Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA5LW5vcmQtdjMt
MC1iMGE4MjcyMWM1NDdAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTQKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
