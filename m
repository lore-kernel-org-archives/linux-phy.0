Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48E76C98338
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 14:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKpsKQPA/DaJgsFN/cjAW2SSQ21bQsjkkjLuQqsRhDE=; b=XDXSoFBqYWSm+0
	XSNacDxSu0gEPi79eC3tPXi7erpoZWNGiV4rxpTA2ZPVKIvGtJlS/a6AG5netIGHSrllYc+QBm/2r
	x6+KOO2kUACzK72/e9fmbp7JNxt7nYS4x4kuuEoZccn1H5lLklOJ4xrliq8b6pSg2kXDGxuAYL30d
	L+l16SkxJ3M0PhzFvmNkWZjNOXkvftdCrMq+jXzIIPLmRpUHjz/1WYsT68ywkDxnQQGDq9qPORjA+
	n5GPK9t/cjZ85EBw5A1ZYgn6BluSCBB+y2gN35WIS3QFfta73nLkkz9QABtDpsKuhUpvbjV8UBBv4
	z3bsfn6C37UDEvf4IKaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATjd-0000000FXrN-0SXJ;
	Sat, 26 Sep 2026 14:50:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATjc-0000000FXrG-0QVd
	for linux-phy@lists.infradead.org;
	Sat, 26 Sep 2026 14:50:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8D8A444017;
	Sat, 26 Sep 2026 14:50:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E35AD1F000FF;
	Sat, 26 Sep 2026 14:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790434239;
	bh=IuGwpOHeRjNLjV8Fq9b30mY1ktaZg7MQmsaIKLLH7zY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WXj0k3lPQ88DhFd3NStQAZNqS4sHup391qcDa6hYjkM90tKN7ThbGSHaCKcduzRGl
	 ATk8JwvY/5nB4N8cwiXCDrSvp6CqJq1A6u7+yzCaK0dOOgyTANuobplOanHGgGAfAQ
	 LcqQWKdfogFcICJnRZRppVbOaZ29xyVMcR9i6i4cx3fWlql2u39t2NXN9oNLeO+2di
	 T1x1+OhdU28kA5lT9SYi/s4HZwvHjB1zuK+oWjV43qK8SvpP0DA5/FLu9F0ado0cPR
	 4086Ib0QouAZ4Ve2SxCv6egv87udLNzXkM8oL+L0jMCg3cxevlM+8r7YeRmTAiXf0w
	 wDNrTs1Fmga8Q==
Date: Sat, 26 Sep 2026 16:50:21 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Felix Gu <ustc.gu@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] phy: renesas: rcar-gen2: three cleanups
Message-ID: <jcv3cggtoxl4lyzaepopm5jrk4onplqdm5gc4bnwe3bco7odih@6dyxdvfivf75>
References: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
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

T24gVHVlLCBBdWcgMDQsIDIwMjYgYXQgMTE6MjQ6MTZQTSArMDgwMCwgRmVsaXggR3Ugd3JvdGU6
CgpQbGVhc2UgYWRkIGRlc2NyaXB0aW9uIHRvIHRoZSBjb3ZlciBsZXR0ZXIgdG8gc3VtbWFyaXNl
IHdoYXQgdGhlIHNlcmllcyBkb2VzLgoKPiBTaWduZWQtb2ZmLWJ5OiBGZWxpeCBHdSA8dXN0Yy5n
dUBnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFu
bmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
