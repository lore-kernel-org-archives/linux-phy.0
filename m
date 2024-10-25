Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7996BD1171E
	for <linux-phy@archiver.kernel.org>; Fri, 25 Oct 2024 08:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tH8tGMqmSdb5haxWNFnM4CFV5eAIlABHshz7HtCaDgk=; b=TNfXjbCVZLmbfB
	COJXy3YqGe3P+jQZvS7x5b7i21XcASjfv+aFawQAkFQQGdNF5jBCKoFgEDCI3twKSK0baJv5Xtaoi
	FQT/XHrm4UuMPNDDXsyC1FlyW3Xf2McUnuO2u4F3VLM9LjlmuV4PYsCfoN2VVROeXV5aJs9Hu1rgD
	jVqypNzblsoWHvst52x6IA9jhOPCxuoIreAdgt07TiBSkN3dPq+hf8eAyZLqe02LPJlkk+d1sX4Ij
	BxDgzySb+dPBhseGVpRcVPX863UUJok5KlOlUZiPzY6bIfMwXkz5oq5ccZoT0UKghg1JnkgjMA57V
	KxzKs3KmHMrAB6A4xfcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4FTy-00000002wvx-2elW;
	Fri, 25 Oct 2024 08:15:42 +0000
Received: from bulk0.mail-out.lima-city.de ([91.216.248.212])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4FKj-00000002v1r-28LA;
	Fri, 25 Oct 2024 08:06:11 +0000
From: mailinglist1@johanneskirchmair.de
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=johanneskirchmair.de;
	s=securedbylima-20161106; t=1729843565;
	bh=P3R6bpWXHVToa3o5mnFLcdTIAER9hOUy5GkSK3oxbIU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dClucyDY1RF8+yabq5q7fGMmYV0yilRAK4cAeI6j/16NJ/0+n0VCZ1uDg18uP5/DZ
	 E9YptnsWHT40GY0Oeylm2JwhtJZz8unLpwecO7ppMg+Vw1ND8U0laH6sdlAAhg6YCF
	 qjnfFRZm8I/4Lph4zPSAPiQDmt+7CQtlyx7q7n5s=
To: aford173@gmail.com
Cc: johannes.kirchmair@skidata.com,
	Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	alexander.stein@ew.tq-group.com,
	andrzej.hajda@intel.com,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	kernel@pengutronix.de,
	kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	l.stach@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	maarten.lankhorst@linux.intel.com,
	marex@denx.de,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	p.zabel@pengutronix.de,
	rfoss@kernel.org,
	robh+dt@kernel.org,
	s.hauer@pengutronix.de,
	shawnguo@kernel.org,
	tzimmermann@suse.de,
	ulf.hansson@linaro.org,
	victor.liu@nxp.com,
	vkoul@kernel.org,
	will@kernel.org
Subject: imx8mp: HDMI display blank/black problems
Date: Fri, 25 Oct 2024 10:05:44 +0200
Message-Id: <20241025080544.136280-1-mailinglist1@johanneskirchmair.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_010609_992288_602AD6A1 
X-CRM114-Status: UNSURE (   8.00  )
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

SGV5LCAKV2UgaGFkIHNvbWUgcHJvYmxlbXMgd2l0aCB0aGUgaGRtaSBvbiB0aGUgaW14OG1wIGFu
ZCB3YW50ZWQgdG8gbGVhdmUsIHdoYXQgd2UgZm91bmQgb3V0IGFib3V0IGl0LCBzb21ld2hlcmUg
Zm9yIG90aGVycyB0byBmaW5kIGl0LgoKVGhlIHByb2JsZW0gd2FzIHRoYXQgb3VyIGhkbWkgZGlz
cGxheSBzb21ldGltZXMgc3RheWVkIGJsYW5rIGFmdGVyIGhvdCBwbHVnZ2luZyBhbmQgc29tZXRp
bWVzIGF0IHN0YXJ0dXAuIE9uIG9sZGVyIGtlcm5lbCB2ZXJzaW9ucyA2LjYgd2UgZGlkIG5vdCBo
YXZlIHRoZSBwcm9ibGVtIHdpdGggdGhlIG5vdCBtYWlubGluZWQgaGRtaSBwYXRjaGVzLiAKV2Ug
dHJhY2tlZCB0aGUgY29tbWl0IGRvd24gdGhhdCBpbnRyb2R1Y2VkIHRoZSBwcm9ibGVtIGZvciB1
cy4gSXQgd2FzIHRoZSBmb2xsb3dpbmcg4oCcZHJpdmVyIGNvcmU6IEVuYWJsZSBmd19kZXZsaW5r
PXJwbSBieSBkZWZhdWx04oCdICBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjMxMTEz
MjIwOTQ4LjgwMDg5LTEtc2FyYXZhbmFrQGdvb2dsZS5jb20vClNvIHdlIHN3aXRjaGVkIGJhY2sg
dG8gRldfREVWTElOS19GTEFHU19PTiB2aWEga2VybmVsIHBhcmFtZXRlci4gRG9u4oCZdCByZWFs
bHkgdW5kZXJzdGFuZCB3aGF0IHRoZSBwcm9ibGVtIHdpdGggUlBNIGlzLgoKU28sIHRoaXMgaW5m
b3JtYXRpb24gaXMganVzdCBmb3IgcmVmZXJlbmNlLiBNYXliZSBzb21lb25lIGhhcyBhbiBpZGVh
IHdoYXQgaXMgZ29pbmcgb24gaGVyZS4gQW5kIGhvdyB0byBmaXggdGhlIHByb2JsZW0gaW4gYSBt
b3JlIHByb3BlciB3YXkuCgpCZXN0IHJlZ2FyZHMgSm9oYW5uZXMKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
