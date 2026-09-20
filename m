Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 517CDC982CC
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 06:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tF7IndO0MD0ZPU23Y6itRsgWmCPx50xWSa03JIMm/A=; b=kYG2+Di5AOb1T9
	7dzMqRl9KRyubWjWlyRZLY6o36IMsnFQWGJ+0OwK5ko5Gh6j7MMbRgseAq8pnmiH94Cp74511r43J
	Hcof0qIu4NU9eZttNJ3Nbt6FnAd9+WD2kEtnDDhOb6bVp1p8rISgohhRZc8NJ2iEUAwprrPWbZEhE
	1Do6V9bcDqrNEnsclyVs/60nYazv1g4rLAx2B/j8QZbXuuPpyD+9ryUmkTtbMgKuqaRATLKvPMBoH
	/uLY8oVA969S7gXXy8VqK6ugylI5uuDkyHgyvFYJOYLSVVsKiGGxopnRyU8ycPEdZL118zVXsaYAb
	hxr1fvitOFAqqiobM9bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BS7-0000000H0Vg-06c4;
	Sun, 20 Sep 2026 06:55:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BS5-0000000H0V2-06FW
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 06:55:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7821C601FD;
	Sun, 20 Sep 2026 06:55:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 915DB1F00893;
	Sun, 20 Sep 2026 06:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789887304;
	bh=jphBmYPzMwPlIjB52qdb9Xjlf3297t06mdooQTvMhRs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EAm3aAgOrBXh4oh7rsy8h/PBRLbbFow3HWgDVGZCPYwGPuCwEdDLN3CY2zgrA5TKm
	 1zJoVELBtx+KDBpIkwvvuPFOwYHAPg0hWTLLsbbJFrU4MhmiIy0LV8CNlI9T0q4A4u
	 BKcouMU9m6pJzc5JpXvF+NWW5VsNwEYNtTh0KyXhAfroYLQYtM+sJYa4zKsIFYr68f
	 fmJVI5wKc6GqSAMznPMlCm+ax7B8GmO7Xi2Jn0yq/UR0GtM/oj8EO9h3izsEvKuuyX
	 IC/87i05/gzwHbTL4+DVhz4N9+McMywdH23cF+AfxprmZY+nBjNk7N1T7OdY+0pIlb
	 9ND0Y0/I42P/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 12/12] arm64: dts: s32g: Add S32G3-RDB3 SerDes
 routing variants
To: =?utf-8?b?SmFuIFBldHJvdXMgKE9TUyk=?= <jan.petrous@oss.nxp.com>
Cc: neil.armstrong@linaro.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, vkoul@kernel.org, wsa+renesas@sang-engineering.com, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260919-s32g_serdes-v3-12-9d68868c1e89@oss.nxp.com>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-12-9d68868c1e89@oss.nxp.com>
Date: Sun, 20 Sep 2026 06:55:03 +0000
Message-Id: <20260920065503.915DB1F00893@smtp.kernel.org>
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

PiBGcm9tOiAiSmFuIFBldHJvdXMgKE9TUykiIDxqYW4ucGV0cm91c0Bvc3MubnhwLmNvbT4KPiAK
PiBUaGUgUzMyRzMtVk5QLVJEQjMgYm9hcmQgd2lyZXMgR01BQzAgdG8gYW4gb24tYm9hcmQgS1Na
OTAzMSBSR01JSSBQSFkgYnkKPiBkZWZhdWx0LiBBZGQgdHdvIGRldmljZSB0cmVlIHZhcmlhbnRz
IHRoYXQgcmVyb3V0ZSBHTUFDMCBvdmVyIHRoZQo+IFNlckRlc18wIFhQQ1MgbGFuZSBmb3IgU0dN
SUksIG1hdGNoaW5nIHRoZSB0d28gU2VyRGVzIGxhbmUgbGF5b3V0czoKPiAKPiAgIC0gTW9kZSAx
OiBQQ0llIHgxIHJvb3QgY29tcGxleCBvbiBsYW5lIDAgcGx1cyAxRyBTR01JSSB2aWEgR01BQzAK
PiAgICAgKFhQQ1MwKSBvbiBsYW5lIDEuCj4gICAtIE1vZGUgMzogZHVhbCBTR01JSSwgR01BQzAg
KFhQQ1MwKSBvbiBsYW5lIDAgYW5kIFBGRV9FTUFDXzIgKFhQQ1MxKQo+ICAgICBvbiBsYW5lIDEu
Cj4gCj4gVGhlIFNlckRlcyBTVUJTWVNfTU9ERSBpcyBkZXJpdmVkIGZyb20gdGhlIGxhbmUgY2hp
bGQgbm9kZXMgcHJlc2VudCwgc28KPiBlYWNoIGxheW91dCByZXF1aXJlcyBpdHMgb3duIGJvYXJk
IGRldmljZSB0cmVlLiBUaGUgTW9kZSAxIHZhcmlhbnQKPiBlbmFibGVzIGJvdGggUENJZSByb290
IGNvbXBsZXhlcyBhbmQgZXh0ZW5kcyB0aGVpciByb290IHBvcnRzIGJ5IGxhYmVsCj4gKHBjaWUw
X3JwLCBwY2llMV9ycCksIG1hdGNoaW5nIHRoZSBSREIzIHdpcmluZzogUENJZV8wIHJlYWNoZXMg
dGhlIE0uMgo+IFsgLi4uIF0KPiAgIC0gTW9kZSAxOiBHTUFDMCBTR01JSSBwYXRoIHVwLCBhbmQg
Ym90aCBQQ0llIHJvb3QgY29tcGxleGVzIGNvbWUgdXAgLQo+ICAgICBQQ0llXzEgZW51bWVyYXRl
cyB0aGUgY2FyZC1zbG90IE5JQyBhbmQgcGFzc2VzIHRyYWZmaWMgYXQgZnVsbCBsaW5lCj4gICAg
IHJhdGUsIFBDSWVfMCBlbnVtZXJhdGVzIHRoZSBNLjIgc2xvdCB3aXRoIFNXMTctMiBPTi4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBKYW4gUGV0cm91cyAoT1NTKSA8amFuLnBldHJvdXNAb3NzLm54cC5j
b20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMu
IEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDkxOS1zMzJnX3NlcmRlcy12My0wLTlkNjg4NjhjMWU4OUBv
c3MubnhwLmNvbT9wYXJ0PTEyCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
