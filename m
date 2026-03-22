Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C82FC72C5
	for <linux-phy@archiver.kernel.org>; Sun, 22 Mar 2026 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgI58ctszq6+fDABCzO9iXjSK6H+NeNNE8Kziegkarw=; b=kwgr2lglKDewXS
	QKKTtK/LPBPGQKQ5pGiW+pobVAY7tBCjg58rOxVXixwglZ7lQnI17qSHr5rdy915hjy5+wiO/PKBz
	n9DKoM2YdeoeJrDstpzVD3Ypf1H8MtBoO4PsMbv2aGjU4YQAFUvkwnmBjq4YZzS+1kuusrNeXhhTS
	S+ERSI6alXea3HNrqaZQFIcuYzAhHYJDmMlgg4WWsOLkrPqjo5qT1ail/cLQAHceIr6pI+7Hi2E1U
	QyjW8F2n16mdzkbnV19CMAGuSKdCOCAOrAVRLWmhhbad6djJxWpyv+j42f1jGgD+74P5iIDMtno9r
	QEyhlhzBvwMlsHhtsonA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Iso-0000000FMrW-16cO;
	Sun, 22 Mar 2026 13:30:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Ism-0000000FMqQ-0hWM
	for linux-phy@lists.infradead.org;
	Sun, 22 Mar 2026 13:30:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 46BE96012B
	for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 13:30:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E435CC2BCB4
	for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 13:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774186218;
	bh=+r4DJixed9qR03jrcBvB9qDQ5jUMnFCb5a5xczMslvQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=t7IpZlnROV0e1DCl+84kGg5osfHKgXcocBKtSBG7gA6yyaPgWxIonLs1CChM+T5YG
	 tiqlfp1agbFL2+oR3k2F80AMmDAdVAn5HaFHIDjXi2MiIiVuIdmjA23HsVNfqPSZQM
	 Q9xjlXAIbg7I9lbti2tQPbHw8e/tOPlNN4vc1/SMiJsAVMus3W4t+n3FpHr9mP6kEo
	 YAL+B4mX+GW684f9nRhUiqYai2XqbdPY1+MIzmHlzBlHOg0yXlawOjh3gF6QJ41fUc
	 4OpzOE1E0CO+EPOcduFEoxeyiH4YNLPXLMUDWa/Luiq5Z9l3R6wMO51Yk2rM/Gj0+u
	 ISYjXp5xZcMsQ==
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-12732e6a123so3915203c88.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 06:30:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWDd0Wg5R5LZnY7UBm5+ec0nFNEmm5WM0ZwczbZodJKpTrr2uVFv3y1hzk0LjM5nPJounMNrQkEM8g=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiY2Bd7TPJ7tW3MM99YypfdFo3QK9O1oVwUeKfbUWqmDMb5wNF
	CRSLejdrxon+oVTTjGou5s4772DhCA925Ei6s0Eh/tTd6uYahaGkQ6yaa/1QryhaOJcbpRg/Dfk
	36EBh9P/ToYf1L8G2owIHuAlMuUXMMA==
X-Received: by 2002:a05:7022:10f:b0:11e:f6ef:4988 with SMTP id
 a92af1059eb24-12a726e7fb3mr3981540c88.36.1774186218230; Sun, 22 Mar 2026
 06:30:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1771863641.git.l.scorcia@gmail.com> <92530e0a31eca1feb822f5c5fd4ac894937dd6c7.1771863641.git.l.scorcia@gmail.com>
In-Reply-To: <92530e0a31eca1feb822f5c5fd4ac894937dd6c7.1771863641.git.l.scorcia@gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 22 Mar 2026 13:30:06 +0000
X-Gmail-Original-Message-ID: <CAAOTY_8JiyK0jbRsKfFkSguMNBgLXrMF07fZZ=7iNZWCb3p7Qg@mail.gmail.com>
X-Gm-Features: AaiRm51_S1J__pLk1a4D71_Q_McB7o8n-vG8FQQ5qEkWpejUVhVFdJ1R0hMpTzo
Message-ID: <CAAOTY_8JiyK0jbRsKfFkSguMNBgLXrMF07fZZ=7iNZWCb3p7Qg@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: phy: mediatek,dsi-phy: Add support
 for mt8167
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
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

SGksIEx1Y2E6CgpMdWNhIExlb25hcmRvIFNjb3JjaWEgPGwuc2NvcmNpYUBnbWFpbC5jb20+IOaW
vCAyMDI25bm0MuaciDIz5pel6YCx5LiAIOS4i+WNiDQ6Mjblr6vpgZPvvJoKPgo+IEFkZCBzdXBw
b3J0IGZvciB0aGUgTWVkaWFUZWsgbXQ4MTY3IFNvQzogdGhlIERTSSBQSFkgZm91bmQKPiBpbiB0
aGlzIGNoaXAgaXMgZnVsbHkgY29tcGF0aWJsZSB3aXRoIHRoZSBvbmUgZm91bmQgaW4gdGhlIG10
MjcwMSBTb0MuCgpBcHBsaWVkIHRvIG1lZGlhdGVrLWRybS1uZXh0IFsxXSwgdGhhbmtzLgoKWzFd
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2NodW5rdWFu
Zy5odS9saW51eC5naXQvbG9nLz9oPW1lZGlhdGVrLWRybS1uZXh0CgpSZWdhcmRzLApDaHVuLUt1
YW5nLgoKPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgTGVvbmFyZG8gU2NvcmNpYSA8bC5zY29yY2lh
QGdtYWlsLmNvbT4KPiBSZXZpZXdlZC1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFu
Z2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPiBBY2tlZC1ieTogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgo+IC0t
LQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLGRzaS1w
aHkueWFtbCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLGRz
aS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0
ZWssZHNpLXBoeS55YW1sCj4gaW5kZXggYWNkYmNlOTM3YjBhLi5jNmQwYmJkYmUwZTIgMTAwNjQ0
Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxk
c2ktcGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L21lZGlhdGVrLGRzaS1waHkueWFtbAo+IEBAIC0yMyw2ICsyMyw3IEBAIHByb3BlcnRpZXM6Cj4g
ICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgICAtIGVudW06Cj4gICAgICAgICAgICAgICAgLSBt
ZWRpYXRlayxtdDc2MjMtbWlwaS10eAo+ICsgICAgICAgICAgICAgIC0gbWVkaWF0ZWssbXQ4MTY3
LW1pcGktdHgKPiAgICAgICAgICAgIC0gY29uc3Q6IG1lZGlhdGVrLG10MjcwMS1taXBpLXR4Cj4g
ICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgICAtIGVudW06Cj4gLS0KPiAyLjQzLjAKPgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
