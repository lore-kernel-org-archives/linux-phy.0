Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A230C624D3
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIuPhErTmeSz+dd2oTFt+LwFBiQHXuYdVMvldurL/K4=; b=uAoSkgjmouVBKM
	O6GGOM5uTvgWM25IG6aLTybcY25gbOBuWj0lnUdWm7qs1CpKWlRzRR8QUtqqWphHbqt4/7f2BCjvr
	TzICWrQFksFcQn/kZH7GkFYl3R78NI87zdssH6JByaAgqDUDsShXkhRO3BLX8tC/phBHd6EdCxXO+
	sYuQwUkGwinKOUxyLXS+dt44XyBX66xlNckojwB3RLfrFf8a6lhkWhO/Jpdf7NR26OPxYgFrlr6Bc
	crL3cYjt1wcPTnF5kJ7MROlhTxWQ+BwtWyNJ1Zao8uhvkx2CPlKuLO7Ty58fE2ORieQjrI+GPFiBi
	ILcuK4F+/IJkudUUfv+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U1J-00000002EGA-3gOz;
	Fri, 04 Sep 2026 13:31:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U1I-00000002EFj-1gA3
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:31:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D4C17600CB;
	Fri,  4 Sep 2026 13:31:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 154A51F00A3D;
	Fri,  4 Sep 2026 13:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788528711;
	bh=gM2+Na6lCEHQBMxk+PB55G0kVJNJHy+Up3YtZhB7FfQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bmlrpCoXqLyfkBbMFcVLNTLDLojXbQolAGXpeaZjpcj/Lw6WF2tJHCT2ZVpQ0mcGm
	 Ph7r+XSf2nTnCo7Tx4xb/zFqip8xSUTDcnZ+LCJSkMSxy0viPOXbgE2Q/THo2cmUjW
	 ssXQS9/8hZ2bAc673SQckYm52pVIgIPZ7CVLUAravXhQ6OqA7RaFcMiokbXMjkoxTa
	 GNeIJ5IhqS1sw6MFLK/AbHXSZN4kaPcDJh6C/k5Oe8BC+26MbU+79nLukASVfsLaCc
	 dv8Fu0SFVb94xGHjvCNsF7QH9ajiOuHi5s4mhbpQxv+ECpbscgOuTSg7aFZHrITo8G
	 pOhbEhS5J8wFA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 06/19] dt-bindings: display: verisilicon: Add
 starfive,jh7110-dc8200
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, mfd@lists.linux.dev, linux-clk@vger.kernel.org, lee@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org
In-Reply-To: <20260904-jh7110-clean-send-v3-6-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132719eucas1p1c900149ffa1b8771aca238e6441482ee@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-6-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:31:50 +0000
Message-Id: <20260904133151.154A51F00A3D@smtp.kernel.org>
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

PiBUaGUgSkg3MTEwIGVtYmVkcyBhIERDODIwMC4gVGhlIGJpbmRpbmcgcmVxdWlyZXMgYW4gU29D
IHNwZWNpZmljCj4gY29tcGF0aWJsZSBhaGVhZCBvZiB0aGUgZ2VuZXJpYyBvbmUsIHNvIGFkZCB0
aGUgSkg3MTEwIHRvIHRoZSBlbnVtLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXaWxjenlu
c2tpIDxtLndpbGN6eW5za2lAc2Ftc3VuZy5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlz
IHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkwNC1qaDcx
MTAtY2xlYW4tc2VuZC12My0wLTQ4NGY5YWU3MjcxNUBzYW1zdW5nLmNvbT9wYXJ0PTYKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
