Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2FE606A329
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 10:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cPCqI5AV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Ix+mIwtO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qVKhAVA5NB9QqZQs7dcy0f6zzDsmko1pMbxefZMOF54=; b=cPCqI5AVF70ETl3ae6Et6UggTF
	dqAY6QFegbnhr0OIHfia4Xvut8nfVpuMabXqfzTVwV/Xb2VW2xgyHBGSi/H8RKRaErvZlNjF51tiw
	UOsPtvD2OHI3tv6TTO+xKSuUz/Yg47KHYR4dCAjXcuc0XLkyXQUCW9NqNGJ2TrmHRj/Vneku5/Azm
	yNL+I9qyjxVNZUv1i83UcUVOYUD9CkzILUe6bvU0lFRppFxyAwWuAHenuLgr+868EJL2VZqIQrUak
	0rXVJOCwl+3if825vq+WQjDQlRqk67ViQSyl/poQ/4sX9tpnmqJ+GjweD+mtr9aeTPhhquXRVkWth
	MitdMvAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYJJ-000000050jq-17jW;
	Wed, 04 Nov 2026 10:33:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYJI-000000050jD-0BOn;
	Wed, 04 Nov 2026 10:33:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1DC7460DD5;
	Wed,  4 Nov 2026 10:33:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10D081F000C1;
	Wed,  4 Nov 2026 10:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793788418;
	bh=1v+vPQfoGkHCsYpx/z+qXBL8qgnFTSPKxQiCiSOUl6I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ix+mIwtOotDrvMTMvDOWVWhNcuHZp2MmOo5SOh/5vik9pHX+wphcZRkXh6OM5O2/X
	 QIObD5khAH4S4R7YgYZDKnsYysgXsY0FjlXVSTekeUTw4h924CjD4L3wRqQzej3lgd
	 CwyVUe4nn1IwD6qMcciN+QEbpGip/SvHoEoxH7EmHW7NG0Q29Zq8wEXx15FE21WX+V
	 Tvt6JV0uTrbVLbs9ziTdVnWdYhkKwubFB/9nyNX00GG7eWg4np6SMcRREE6DZp3OoM
	 8eWyK3sO+IFvb2eF7uoOg+Rd0e5cbiQbuXhD0PTS/99PTQudUVuE7OgEI7nhqxBAkN
	 OY7T/RiIS7A1Q==
Date: Wed, 4 Nov 2026 11:33:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hongliang Yang =?utf-8?B?KOadqOWuj+S6rik=?= <hongliang.yang@cixtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Gary Yang =?utf-8?B?KOadqOaWsOS8nyk=?= <Gary.Yang@cixtech.com>, 
	Fugang Duan =?utf-8?B?KOauteWvjOWImik=?= <fugang.duan@cixtech.com>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: phy: Add CIX Sky1 USB3 PHY
Message-ID: <20261104-ethereal-cassowary-of-revolution-ecdda2@quoll>
References: <20261103074913.1971025-1-hongliang.yang@cixtech.com>
 <20261103074913.1971025-2-hongliang.yang@cixtech.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261103074913.1971025-2-hongliang.yang@cixtech.com>
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

T24gVHVlLCBOb3YgMDMsIDIwMjYgYXQgMDc6NDk6MjBBTSArMDAwMCwgSG9uZ2xpYW5nIFlhbmcg
KOadqOWuj+S6rikgd3JvdGU6Cj4gQWRkIGRldmljZSB0cmVlIGJpbmRpbmcgZm9yIHRoZSBDSVgg
U2t5MSBVU0IzIFBIWSwgYSBtdWx0aS1wb3J0Cj4gU3VwZXJTcGVlZFBsdXMgUEhZIHN1cHBvcnRp
bmcgdXAgdG8gdHdvIFVTQjMgbGFuZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSG9uZ2xpYW5nIFlh
bmcgPGhvbmdsaWFuZy55YW5nQGNpeHRlY2guY29tPgoKQWxzbywgZG9lcyBub3QgbWF0Y2ggRnJv
bSBmaWVsZC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
