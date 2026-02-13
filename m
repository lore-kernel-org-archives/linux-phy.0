Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58927EF48DC
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 08:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjyWXJVyAgLdR+8KakItUoAYTXkQ7fDUlA0W4Nt5aRA=; b=t3B5tawxOM/0Yp
	uLELXqnRNSGObDtmY81lgz61FhJ7HP8a23af/kqh6TOSInxrSKqTF/ROI93n43xWicZRR9/UHShKS
	IBajs2DggkyUXMoA9+Udg5VP9W0jZky3+JwvVBE0UBJ2wpuYxV6EvT6Aa2wATwShdHum2ohAbqM6o
	6M1oFJSSd5nYFEjxXRNwImCVLj0dZflfpkxvphEkHlPdZMvt3Ap4a+TX3aCn0/89nohqI9IdqYJ+z
	VfbepU8wjy54eTFR7vYUX5JGh696qu+BiuI+3w8CuN5Bhs2qjiJKKKnjIn0a+QveFPbjiZkavQRB/
	FPTfjwFkUxfRlHzJzoWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqoFk-0000000397W-0KBB;
	Fri, 13 Feb 2026 08:10:16 +0000
Received: from mout.web.de ([212.227.15.3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqoFg-0000000396h-2Msn
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 08:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1770970208; x=1771575008; i=markus.elfring@web.de;
	bh=UEjhHh6Fcvlu+HzIkHkBKi5Qqzn3ILfK7/QXjC2ikGY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=OYBLKvC940xauY8R6lGHRiRTd0HBZc9V83EUPyCWa6t6pODJwYyQnoQIb4qsiILZ
	 JEexzrIgqYMTg12xlm4+ZY40mE4r/zDlMUKzC6PlFUA4ZTo9tzC27B7EYC0y0kNbg
	 RobXLOSLT5mr3puwUt7IregCTtDHmVd0fYl6lPL8Fw0rzrg92P2Y7/ER+Ejuv3s1N
	 zPi7nhV9L5l/AA+Lhj4cc6lESOqM890tMjCuLemohB0E08CXBU/vrx5GA6pg7FybJ
	 tvGK2I5PQMJUoo2+cEscxx20dovLOvIogRmJqkVeU57fS1FumX6LQt7v9A0IB8Qa3
	 XHjvGcYMmvYxWaRJQg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.69.207]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MALeR-1vxAAV0bZT-005ivR; Fri, 13
 Feb 2026 09:10:08 +0100
Message-ID: <ffafec42-8d5f-429a-92b5-1b92c7643642@web.de>
Date: Fri, 13 Feb 2026 09:09:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Felix Gu <ustc.gu@gmail.com>, linux-phy@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
References: <20260212-wiz-v2-1-6e8bd4cc7a4a@gmail.com>
Subject: Re: [PATCH v2] phy: ti: j721e-wiz: Fix device node reference leak in
 wiz_get_lane_phy_types()
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20260212-wiz-v2-1-6e8bd4cc7a4a@gmail.com>
X-Provags-ID: V03:K1:70Ly/JfCzAnIyZ1updGPCI07IT3iLMNtkQkx+p28EKqxpyh+Ph8
 mXSxmnz0mxOtPe9JR+BwwScuHlmHT512AI0Um4ngWLLIDxCtdskpyhwXcjWRMg50zDC9I7H
 81x5KG9i1sOSUg7darhWNv66ObwCF0AV3JPixzyVKXXY62osZPJ8rAJ9Q7UAHTPQc4MU0h3
 DnK/4ovpSTqkOHLtq/LCg==
UI-OutboundReport: notjunk:1;M01:P0:MdR26s9NANI=;ItUBG4diUPgZpElMVp4n6i3UDfp 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 2WEY2Is5HAbPs6P1ZyrA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_001012_960089_1B95EE8F 
X-CRM114-Status: UNSURE (   4.40  )
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

4oCmCj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIFVzZSBvZl9ub2RlX3B1dCgpIHN1Z2dlc3Rl
ZCBieSBWbGFkaW1pciBPbHRlYW4uCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzIwMjYwMjExLXdpei12MS0xLWZkZDAxOGQwMmYzM0BnbWFpbC5jb20KPiAtLS0KPiAg
ZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIHwgMiArKwrigKYKCiogV291bGQgeW91IGxp
a2UgdG8gY29tcGxldGUgdGhlIGV4Y2VwdGlvbiBoYW5kbGluZyBieSB1c2luZyBhbm90aGVyIGdv
dG8gY2hhaW4/CiAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2NvZGluZy1z
dHlsZS5yc3Q/aD12Ni4xOSNuNTI2CgoqIEhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdG8gaW5jcmVh
c2UgdGhlIGFwcGxpY2F0aW9uIG9mIHNjb3BlLWJhc2VkIHJlc291cmNlIG1hbmFnZW1lbnQKICBi
eSBhZGRpdGlvbmFsIHVwZGF0ZSBzdGVwcz8KICBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC92Ni4xOS1yYzUvc291cmNlL2luY2x1ZGUvbGludXgvY2xlYW51cC5oI0wxNTctTDE2MQoK
ClJlZ2FyZHMsCk1hcmt1cwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
