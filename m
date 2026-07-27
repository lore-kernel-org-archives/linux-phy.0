Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35635C53209
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 19:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMj6L7BGs9cuCF+lpvPSRFpl6eyBVelM3o2VAl50d9A=; b=fs0QgexBhOtxIu
	1lHOd8c2HWRHZEP4vH4zDfrKnarhWz25bV6s76JCCNEkKRnSh2O0+aaMkcNrwXKGAy9/QiWi9EwTW
	fYtSzY4Ibpri9SIfqeiKZO9gRnlriHlR+qaABSonV+4MBaMrozIPQfa3M5qrFNC/49e6oysJmY5/X
	ff0HJu3wv9VP9VWRcm1QnoSvyK6ldOUL/7EKKSe9varPUMx0Exg20muYihEfRWyHgXGhY2GUoippR
	1Pg+IeXDhECrcVOCpdyja4+BlDxnbZUkBKBPIIzCvgb6A5/7ob3G3eRaC6YlhJROiMYvs05PPR0QV
	7ckEXn5hZbft8aE+ISpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRHl-00000003mKI-22Jb;
	Mon, 27 Jul 2026 19:46:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRHk-00000003mJg-09i7
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 19:46:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BC3F3600FC;
	Mon, 27 Jul 2026 19:46:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFB791F000E9;
	Mon, 27 Jul 2026 19:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785181606;
	bh=dC77rrmIXF5PAv/WXHs24kfBnZE7Bir/lS+jlqP9ZR0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KvrsIWCD+xlBUPUzVGf+3i5md8Uu9OYkcTpB6PfPxhlww0S8PVlfLHkfbeizABjzM
	 z0E23DS6XMWRPPMzjCi2mqJC3F6G+FlXxnu4rpbvXE+xfAYFZ9yWN7tAnHy+BI3mX8
	 AwvSSQcWvkx3FtOoeibhqdi7wu/L/P7O5ceiMX/i3b6sp9P8dI49e0cXOhwGo7wu+v
	 66xxb2J87jXC5t1IE6aNVtMpyqh0iMuBFmeaY8yix6nVWO3ZrbSKUXfplpyBlfE9ma
	 nbGZhIWKAjbSKLoiI/EIOymSBdO4HoSIqTUEi87pIkakafHpszhqkRzztdke5HPMge
	 4cJdMQaMrSLUw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 10/12] clk: zte: Introduce a driver for zx297520v3
 LSP clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, lee@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260727-zx29clk-v8-10-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-10-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 19:46:45 +0000
Message-Id: <20260727194645.DFB791F000E9@smtp.kernel.org>
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

PiAiTFNQIiBpcyBaVEUncyB0ZXJtIGZvciB0aGlzIHBhcnQgb2YgdGhlIFNvQywgSSBzdXNwZWN0
IGl0IHN0YW5kcyBmb3IKPiAibG93IHNwZWVkIHBlcmlwaGVyYWxzIi4gVGhlIG1haW4gVUFSVCBp
cyBoZXJlLCB0b2dldGhlciB3aXRoIHRoZSBmbGFzaAo+IGNvbnRyb2xsZXIgYW5kIG1vcmUgc3Vy
cGx1cyBwcm9wcmlldGFyeSB0aW1lcnMuCj4gCj4gSXQgYWxzbyBoYXMgb25lIG1vcmUgSTJDIGNv
bnRyb2xsZXIgdGhhdCBzdXBwb3NlZGx5IGNvbm5lY3RzIHRvIGEKPiBiYXR0ZXJ5IGNoYXJnZXIs
IFNQSSBmb3IgZGlzcGxheXMgYW5kIEkyUyBmb3IgYW5hbG9nIHRlbGVwaG9uZXMuIFRoZQo+IGJv
YXJkcyBJIGhhdmUgZG9uJ3QgaGF2ZSBhbnkgb2YgdGhlc2UgY29tcG9uZW50cyB0aG91Z2guCj4g
Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWls
LmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vl
cy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzI3LXp4MjljbGstdjgtMC03YTEwN2IwMGYxZGRAZ21h
aWwuY29tP3BhcnQ9MTAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
