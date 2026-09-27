Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32D26C9832F
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVJH7GrkTCIpIZutsibWPHPUqbVAqUOurdCzKiS3BGg=; b=N7NyPZqH/ZqEPb
	ielUU017Fs93iPjQFvkaBwyORmyA8Bue5EXTm6YqAOCC3UnJLqtdIB4ARJ17/KSE3RWymQyM3uUnD
	XweyFxWPCNdrpp7y8FUdtSpOukpsMM+EVr8ktguvT6qZwt+aC5whNyrx9MV5riTc9wwEGhmmedrri
	OeBsVCHsi672x74FxzGvYnDVXcJCCiVM5XBrYfG7Mp1RiYw+XsVtWyNqLKV9wuGTd2AuJPTow3jFp
	RMje003cFsaqD6QTvczhPcUVKAOqjgUjUCJeL0+T7VBmKIGJigF+4Yz+gmIBLh8lty49uPr/mMpQP
	mU1vn8bkhEm+1mlo+C5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvyU-0000000GrJw-3okG;
	Sun, 27 Sep 2026 20:59:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvyU-0000000GrJp-2boB
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:59:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EC6D360052;
	Sun, 27 Sep 2026 20:59:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14E781F000FF;
	Sun, 27 Sep 2026 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542793;
	bh=uZJC3u/e59+JogXEuTPL9E+ANzaRd8epWClATpQe50c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lQ5H1r+vZxMbROC3tJUyFid1AnLkJvT4F58T7RLI/Sm+CDcecnRFrkwAi9tPlX6xm
	 kwGdRdNqd3lrbM8Sxx+ee1oLVuoj0IGhNr87XKSng6OXxpNhmFxE5/hTcw1n1uX96l
	 vcwWSLYjXN/jMv0lY6i6DkwngcJUAZlQbWZ0IltwH4pNh7ymBV3Vdte6xKKCDnugOP
	 zIbElpeF/gzljmLdzuyueccyip3ma7R3FXVpqXLnIdpdYwVIEvE3Zf53nYOfPYzFIt
	 HFHNOK5TFYY5O232STOoENjCkQUNh0SY60g4/vCN8+xowsjUdM+GkH/ASv24LO1NxB
	 gH4bRO/fEoEfw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 06/13] clk: zte: Add Clock registration
 infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-clk@vger.kernel.org, mfd@lists.linux.dev, robh@kernel.org, lee@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260927-zx29clk-v13-6-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-6-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 20:59:52 +0000
Message-Id: <20260927205953.14E781F000FF@smtp.kernel.org>
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

PiBUaGUgbmV4dCBwYXRjaGVzIHdpbGwgaW1wbGVtZW50IHRoZSByZWdtYXAgY2xvY2tzIGFuZCBQ
TEwgZHJpdmVyLiBUaGUKPiBhY3R1YWwgaGFyZHdhcmUgc3BlY2lmaWMgY2xvY2sgbGlzdGluZyB3
aWxsIGxpdmUgaW4gYSBzZXBhcmF0ZSBtb2R1bGUuCj4gCj4gUmV2aWV3ZWQtYnk6IEJyaWFuIE1h
c25leSA8Ym1hc25leUByZWRoYXQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5n
ZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlz
IHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyNy16eDI5
Y2xrLXYxMy0wLTcwZDhmNjczMzg2Y0BnbWFpbC5jb20/cGFydD02CgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
