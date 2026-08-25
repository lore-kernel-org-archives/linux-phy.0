Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70B1EC61DB9
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWd/rNhEFXAT2Zu2Dx0KGdHVV0Sx3LnSuJ7c8qExq6Q=; b=RvosodUt3MCqW2
	gcKPNfgb0RSF1U33Y90q00IfCIhVt3tS4JP2K6S7coz2P0RTPY4Czuu/WDNbbt4G2HyOy9F6InCx0
	SnnJZFiUlF98UuY3HhPVFhT83yfBmZs2miiCXGgJEkgZoQkJliaKpmIwjkTZcDOkuRzXiJ/ws4aV4
	sBRtIHMkJPzacwH3NyeZig4Eqb6gnfVGRL0EGbahjhq9PZJa0cKv3RXhZYgd7LWbGNP/qbvFaVNgt
	pKOQG/jp9h/W6mz0HxYFDI9mn4gluV8DG8ZaQNipUlbIHrVyIH+Jan6PAyabub2DhV7VR1xRlJjrD
	MJFBb3MQZyt60MNN5n3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyoj-00000001XlJ-0ezB;
	Tue, 25 Aug 2026 21:36:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyoh-00000001Xl1-1wV0
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:36:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E18CF6020E;
	Tue, 25 Aug 2026 21:36:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 050081F000E9;
	Tue, 25 Aug 2026 21:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693782;
	bh=o5YeD70/ORnxydtKowMsMEI3YukA1ESa4sVb8PGk4Ns=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eJawlffBifyqvGtp04z4QzX5gMpHP4CIdOUYp0vsXH702mY/ihqoL3+xYAq8Eb0ks
	 bx5EkzLXk946NSQ9ytEok6MSRDYn7hLl8gQNOkEfYokTymms7/Vc4tC4Hk61lx4MVO
	 QXa3vuz6ytx/0XhXo76RHCYySYMEfNVZQ/j7xd0CB8Bl3Rq1scyOx7dz576s/O5+wG
	 5jZrcv6gCcz6BOERjAxip7rI1T4f7+vjbwMOR822YB/qCc2c1J1O+7SU85WeJoyYPm
	 rhrUHyDoD+iV9HXE9OsLtBz0emZdi5fmkG54c7gxJ2H9YOxrNoK7eUJk1/Dp9EWgjU
	 WrvA0hWcI02Vg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 10/12] clk: zte: Introduce a driver for zx297520v3
 matrix clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: vkoul@kernel.org, conor+dt@kernel.org, lee@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, linux-clk@vger.kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260826-zx29clk-v11-10-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-10-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:36:21 +0000
Message-Id: <20260825213622.050081F000E9@smtp.kernel.org>
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

PiBUaGlzIGNsb2NrIGNvbnRyb2xsZXIgY29udHJvbHMgaGlnaCBzcGVlZCBkZXZpY2VzOiBDUFUs
IERNQSwgUkFNLCBTRElPLAo+IEV0aGVybmV0LiBUaGUgb25seSBub24tY2xvY2ssIG5vbi1yZXNl
dCByZWdpc3RlcnMgSSBoYXZlIHNwb3R0ZWQgaGVyZQo+IGFyZSBoYXJkd2FyZSBzcGlubG9ja3Mu
Cj4gCj4gUmV2aWV3ZWQtYnk6IEJyaWFuIE1hc25leSA8Ym1hc25leUByZWRoYXQuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+
CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0
IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDgyNi16eDI5Y2xrLXYxMS0wLWY4YWQ1OWM2NDI2Y0BnbWFpbC5j
b20/cGFydD0xMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
