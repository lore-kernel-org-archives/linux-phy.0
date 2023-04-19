Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED5FFC6FD18
	for <linux-phy@archiver.kernel.org>; Wed, 19 Apr 2023 12:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbWc7wNMfP8j1RwZ/l2hoAQdPSpV8RfUvoFs0OIXBdQ=; b=zja1gFAwZnna6i
	VImkaMB/mKKF4HMgq3qkHRCrLu3OxscwaBxsDRdmKGdjM1YejF/iCeJnax2WBToOZU+JlotZAahCH
	xlcGzG7co4uwJOST0PKDjsSZXAsN3BwMDautrGa538czoygsBuJdmcr1vmcZFyZfc8kWhc9u6/3QX
	lxQlQ5AotpFdacTLnvvgjY5WLVAHS7WCFjAxWL9ctTH7ZKpvhr7kymPC+0np2+JAe40hinRsqoxgq
	NlmB59zhI32mVELscYZjWtF2ZQzmWZU6Gv8pkMmEOX9pu6uDo2Q0VwGTniYQIeVZcdv4vsZ0sGwbh
	1LW0a3EGOVtq1xBZdqww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp6w2-005OGs-1y;
	Wed, 19 Apr 2023 12:29:18 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp6vy-005ODx-1S;
	Wed, 19 Apr 2023 12:29:15 +0000
Received: from [IPV6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2] (unknown [IPv6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 415966603255;
	Wed, 19 Apr 2023 13:29:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681907351;
	bh=n4H4lWi+eMSYO2Ve2dgwZfLNR5C1f0+gyK2oXDwGi70=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TGzetHNIvs9mBDuUupc0UaeoOqvROtO1SsTZCDBY7lARr6E2G+u4QyGY4/uh3sJOz
	 gwwdEjNDOM9HdmreV6WGhnAGvyiV4aPP6AFBwe8Og/zT5tlanT20pAtnc0jt2xCeyF
	 Pwza0dmQtdsXdlp+s1h9MJ0a+L7TkT9abOW+sP0L4eaKbUt1nOFLP3KfWOXovClBBx
	 m25Ul/fDDK/PCPllUeD2uoOFDraIanty6K5RUoPxjfodOeZ0aZPAQtvgIW+qroPJ/8
	 llklopdG4ZRaE9PuP7EzWu0iMikbG+OhWrcTkPt7zSFU+0ylmvo2zlX3DRhWMCKcux
	 e3igAQ5sv1UaA==
Message-ID: <9d1acd01-b973-2c1c-88dc-170d3c86c4dc@collabora.com>
Date: Wed, 19 Apr 2023 14:29:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] phy: mediatek: Avoid floating point constants
Content-Language: en-US
To: Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Guillaume Ranquet <granquet@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jonathan Hunter <jonathanh@nvidia.com>
References: <20230419122131.2167122-1-thierry.reding@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230419122131.2167122-1-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_052914_707187_17CAEB82 
X-CRM114-Status: GOOD (  12.36  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SWwgMTkvMDQvMjMgMTQ6MjEsIFRoaWVycnkgUmVkaW5nIGhhIHNjcml0dG86Cj4gRnJvbTogVGhp
ZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4KPiAKPiBXaGVuIGJ1aWxkaW5nIHdpdGgg
b2xkIHZlcnNpb25zIG9mIEdDQyAoNi4zIGluIHRoaXMgY2FzZSksIHRoZSBjb21waWxlcgo+IHN0
dW1ibGVzIG92ZXIgdGhlIGZsb2F0aW5nIHBvaW50IGNvbnN0YW50cyBpbiB0aGlzIGRyaXZlcjoK
PiAKPiAJZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jOiBJbiBmdW5j
dGlvbiDigJhtdGtfaGRtaV9wbGxfcHJlcGFyZeKAmToKPiAJZHJpdmVycy9waHkvbWVkaWF0ZWsv
cGh5LW10ay1oZG1pLW10ODE5NS5jOjMzMToyMzogZXJyb3I6IOKAmC1tZ2VuZXJhbC1yZWdzLW9u
bHnigJkgaXMgaW5jb21wYXRpYmxlIHdpdGggZmxvYXRpbmctcG9pbnQgY29kZQo+IAkgIH0gZWxz
ZSBpZiAocGl4ZWxfY2xrID49IDc0LjE3NSAqIE1FR0EgJiYgcGl4ZWxfY2xrIDw9IDMwMCAqIE1F
R0EpIHsKPiAKPiAJZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jOjM2
MToxMjogZXJyb3I6IOKAmC1tZ2VuZXJhbC1yZWdzLW9ubHnigJkgaXMgaW5jb21wYXRpYmxlIHdp
dGggZmxvYXRpbmctcG9pbnQgY29kZQo+IAkgc3RhdGljIGludCBtdGtfaGRtaV9wbGxfcHJlcGFy
ZShzdHJ1Y3QgY2xrX2h3ICpodykKPiAJCSAgICBefn5+fn5+fn5+fn5+fn5+fn5+fgo+IAlkcml2
ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmM6MzYxOjEyOiBlcnJvcjog4oCY
LW1nZW5lcmFsLXJlZ3Mtb25seeKAmSBpcyBpbmNvbXBhdGlibGUgd2l0aCBmbG9hdGluZy1wb2lu
dCBjb2RlCj4gCj4gRml4IHRoaXMgYnkgc3dpdGNoaW5nIHRvIHRoZSBLSUxPIG1hY3JvIGluc3Rl
YWQgYW5kIG11bHRpcGx5aW5nIHRoZQo+IGNvbnN0YW50cyBieSAxMDAwIHRvIGdldCByaWQgb2Yg
dGhlIGZsb2F0aW5nIHBvaW50Lgo+IAo+IEZpeGVzOiA0NTgxMGQ0ODZiYjQgKCJwaHk6IG1lZGlh
dGVrOiBhZGQgc3VwcG9ydCBmb3IgcGh5LW10ay1oZG1pLW10ODE5NSIpCj4gUmVwb3J0ZWQtYnk6
IEpvbmF0aGFuIEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
VGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4KClJldmlld2VkLWJ5OiBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEu
Y29tPgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
