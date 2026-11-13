Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE70606A33E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 19:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=okNjxTnz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=BShmhzl9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OlmrzI78BCv5NcI3Hp2c7S98qxMDypANquYlDp+8kgg=; b=okNjxTnzP4DcR5oo1+juQVTR49
	d1NH+B3D+wT9JaF/P1I26/M3HPhz1Ti/Sw0Xufgm2IfSPblM7ETJ7rDPnrCiFmD4Av3iyv1JZGtE2
	emTDtgwK7pLGaHGZU8YAKEyA+RogWPLc6iusoZ3CNB0KfdiKd6ty6GKrcG3J1cQOKdLsnGzLEgcT6
	6H7cW1k0jlgNM+hQ3ZtYeSZKAbC/PG/XEilCrjjJt926cGPf6GyWlFYtcu7ztmAUG5YSv8ZsMFwLO
	5MVKszeHVHu/gKq5lTwzZ/U61iLceRTr6eeUsNvHNlmsXXqkFomxv1r1uA7u+HlmYb/EB1M6vQ2D5
	eP4lNHpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxJx-0000000EIH2-0cV8;
	Fri, 13 Nov 2026 19:52:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxJu-0000000EIFp-37Rn;
	Fri, 13 Nov 2026 19:52:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gRcRRaZ0zBHR6AzzngEkus5puXdP7+q6G0foB4y3g6M=; b=BShmhzl9dtAhEXDTPI+MxqFOmI
	ymDsimlTtgfmpYEY77qbIna11D3R9X0ady2NKvpRJHx7EqkRD1WjlbPeN56FoZB4UKqyoDdkRwyGc
	LWN/mOZpHlON6O5VlpmLsmk/sSO2grns3NwCpBoXkKhR5ztd9236ugXebx/59fDl9j9hifB2EaUE4
	aOnrlfwGmm/2YTXQV2RBpJLsHZReDd1Rp6xLNH/J/VINijLSGVLYXuVaM5v+zSqt9UsEZUEMCY8ww
	kuBD+yHdFL4b6KsbCXnA9UAl3NEmSAw8bQCOC/L3Vt2bYxjSgwHNq9g72qY7JiO0RFi3Xz11SnyP+
	ISjIkexA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Guangshuo Li <liguangshuo@mail.sdu.edu.cn>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: inno-hdmi: Fix potential stale clock provider
Date: Fri, 13 Nov 2026 20:52:15 +0100
Message-ID: <lm0TpB3cRZ6mCNfPP6bL8A@sntech.de>
In-Reply-To: <20261110-9f141e6bc8-phy-rockchip@mail.sdu.edu.cn>
References: <20261110-9f141e6bc8-phy-rockchip@mail.sdu.edu.cn>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_115222_781057_FFBBA1DD 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDEwLiBOb3ZlbWJlciAyMDI2LCAxNTozMjoyNSBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIEd1YW5nc2h1byBMaToKPiBUaGUgY2xvY2sgcHJvdmlkZXIg
cmVtYWlucyByZWdpc3RlcmVkIGlmIFBIWSBwcm92aWRlciByZWdpc3RyYXRpb24gZmFpbHMuCj4g
RGV2aWNlLW1hbmFnZWQgY2xlYW51cCB0aGVuIGZyZWVzIHRoZSBjbG9jayBoYXJkd2FyZSBhbmQg
UEhZIHByaXZhdGUKPiBkYXRhIHN0aWxsIHJlZmVyZW5jZWQgYnkgdGhlIHByb3ZpZGVyLgo+IAo+
IFVzZSBhIGRldmljZS1tYW5hZ2VkIGNsb2NrIHByb3ZpZGVyIHNvIGJvdGggcHJvYmUgZmFpbHVy
ZSBhbmQgcmVtb3ZhbAo+IHVucmVnaXN0ZXIgaXQgYmVmb3JlIHRoZSBjbG9jayBoYXJkd2FyZSBp
cyByZWxlYXNlZC4KPiAKPiBUaGlzIGlzc3VlIHdhcyBmb3VuZCBieSBvdXIgc3RhdGljIGFuYWx5
c2lzIHRvb2wgdW5kZXIgZGV2ZWxvcG1lbnQuCj4gCj4gRml4ZXM6IDUzNzA2YTExNjg2MyAoInBo
eTogYWRkIFJvY2tjaGlwIElubm9zaWxpY29uIGhkbWkgcGh5IikKPiBDYzogc3RhYmxlQHZnZXIu
a2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IEd1YW5nc2h1byBMaSA8bGlndWFuZ3NodW9AbWFp
bC5zZHUuZWR1LmNuPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+CgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
