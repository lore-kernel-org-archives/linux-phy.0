Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C356FCC9DB
	for <linux-phy@archiver.kernel.org>; Tue, 10 Mar 2026 08:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QE8GKPmmst7HXf9jZBLtTSDieTficINnN4ngy/M754U=; b=10bsH/L6DNNM4q
	vSUnkhRP11yyHyUqRhUhViS1qSKwYi1vNRARLXFjew2qjN0i+qEuxG3YUIAUhT8lcFRVPu5Yuo+Sg
	vapiXejuzJ0YWY94dLAVjiCMoiDmjI6V/J1L6Xzb2t6k7eiFru/slKnR7QEwGKhYwgV3+Fj0R55d3
	40scHj+kG3/bDtq/8DFSNfNiH+9cBknFDx7fvrg7ihyH6B/NJK7dBGYTbmaDM2P5lm8G9zUVrWuot
	XIoxbC2CfZ/MJPnv7j+fPpNXbXbDIjtSdfjHeOrce+SmP05ZTUmPOvl9PT37tOSU581Nz6D5Ag6F5
	mJI2SccsnWKXglmGXXiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsdX-00000008xdR-0gMx;
	Tue, 10 Mar 2026 08:40:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsdU-00000008xcz-0fGB;
	Tue, 10 Mar 2026 08:40:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=yI1UHILPTNXaKeOvDKeeej23Oy+HFd7sGSSVV/DcHrc=; b=w3BBJU2iM2VbTf9jd7UXZ0Jz5Y
	Y4zMHvJ6Dzc/U9LzqiLk3GgJnuY4xavhw/+J5zgSNaQ12NRf40a+NEWxumUC1yq98ID3U7BXctXYB
	UKbmb9PLwcLZhAVAJalnFeDBPEFpkUJakfdLI33OFgiFo+cpFKaodBURYVazxEP2oJJm7AytmJFZg
	uuX/P013NkkGt/A54Vzis9s7tiPuqeHXaF+kJC7GZuAhLducqOtA99QPIwWIzT5RfiKsAtJSYYLzZ
	+BElBwlHkjgsJeh//fvIhkj3UGZhjC7nUjL0jVIDp4jYs/yLVtMZnLiH2uiRxSFb1KK363Q27Egc0
	tbjd3+8w==;
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2] phy: rockchip: naneng-combphy: Consolidate SSC configuration
Date: Tue, 10 Mar 2026 09:40:11 +0100
Message-ID: <2899531.BEx9A2HvPv@phil>
In-Reply-To: <1772696450-139583-1-git-send-email-shawn.lin@rock-chips.com>
References: <1772696450-139583-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_014016_220782_BCE505BF 
X-CRM114-Status: UNSURE (   7.79  )
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

QW0gRG9ubmVyc3RhZywgNS4gTcOkcnogMjAyNiwgMDg6NDA6NTAgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBTaGF3biBMaW46Cj4gVGhlIFBDSWUgU1NDIGNvbmZpZ3VyYXRp
b24gZm9yIHRoZSBSSzM1ODggYW5kIFJLMzU3NiBTb0NzIHJlcXVpcmVkCj4gYWRkaXRpb25hbCB0
dW5pbmcgd2hpY2ggaXMgbWlzc2luZy4gV2hlbiBhZGRpbmcgdGhlc2Ugc2FtZSBTU0MKPiBjb25m
aWd1cmF0aW9ucyBmb3IgYm90aCBvZiB0aGVzZSB0d28gU29DcywgYXMgd2VsbCBhcyB1cGNvbWlu
Zwo+IHBsYXRmb3JtcywgaXQncyBvYnZpb3VzIHRoZSBTU0Mgc2V0dXAgY29kZSB3YXMgbGFyZ2Vs
eSBkdXBsaWNhdGVkCj4gYWNyb3NzIHRoZSBwbGF0Zm9ybS1zcGVjaWZpYyBjb25maWd1cmF0aW9u
IGZ1bmN0aW9ucy4gVGhpcyBiZWNvbWVzCj4gaGFyZGVyIHRvIG1haW50YWluIGFzIG1vcmUgcGxh
dGZvcm1zIGFyZSBhZGRlZC4KPiAKPiBTbyBleHRyYWN0IHRoZSBjb21tb24gU1NDIGxvZ2ljIGlu
dG8gYSBzaGFyZWQgaGVscGVyIGZ1bmN0aW9uLAo+IHJrX2NvbWJwaHlfY29tbW9uX2NmZ19zc2Mo
KS4gVGhpcyBjbGVhbnMgdXAgdGhlIHBlci1wbGF0Zm9ybSBkcml2ZXJzCj4gYW5kIGNlbnRyYWxp
emVzIHRoZSBzdGFuZGFyZCBjb25maWd1cmF0aW9uIGFzIHBvc3NpYmxlLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKClJldmlld2VkLWJ5
OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
