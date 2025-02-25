Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF451C021BE
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 21:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYKg5RY0y8Nw3weIkNKNH+cTSErIcwHPNJkiu37N+fs=; b=sZ27kBLdrdAZoR
	DESnRVxLJ7gds5XLuSBfc3p7dbfJfrtJmCBnPx1hTwvwdMe+4Q+HDyqHauG2To1O1XojjBxPN9dKz
	xYr20GSEZq+2Jfci6iPIxfru15dmf/3hRP7Fvxd4t14bJGzpFave7GfmNb3weqvOJDgQmHh3aI90j
	dKuCpSvuVNMMemz/pq9PYxeJ3eZ8Yt7Cp/C1zi2sLRCYAvwvgpZgsE3PTI+MunjZ41MtUX9HAKGmk
	kuXvfyDnOjrUxqAg8CZwngZ1otLnDWy/daoQuCBdNFDm9mtsafRS7cUcsTOcOjSK9jgZcMTwILvrU
	n+zgPmodoivuXqP4H09A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tn2ST-00000001YGn-2Ej7;
	Tue, 25 Feb 2025 21:27:17 +0000
Received: from mail-vk1-xa34.google.com ([2607:f8b0:4864:20::a34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tn2GW-00000001VSj-0LRt
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 21:14:57 +0000
Received: by mail-vk1-xa34.google.com with SMTP id 71dfb90a1353d-520af4b872bso1616093e0c.2
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 13:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740518095; x=1741122895; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AW5QcpgIQeo7y06TiRKbv/Zl5iFBz580MvzxJVvIe9c=;
        b=RoSg0ZqstaoGK36OsTNj8NhfrbpFGfdYTKUDlxPTCAklPeS5MgTWyse9s9S45Z85z+
         RZmQiFUlzCBilhPhhaHH64dsLY1W1Bwvt4EdpC4oKSr/DVAb9/AzgUq7yCanIIugk6dY
         rMvP/WTd+yOhNlFf0GN6rb5/WLfHHcNMoWa5qG8N/6KUGnIpxPfVJ3zR2lzrfqbJAvW8
         imzi5sWh72xmzk/oMqF9KL/1q52aDq3lI9u9i2e7MgLDa2aijJDLlGNyK/WyxtJplpdh
         himB68XsDxj2NAWllbT8Y0IxdnRaveoAWKmyEHRKuDqKLp0hzsMO2+agrTlD7CZRl7v+
         vR9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740518095; x=1741122895;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AW5QcpgIQeo7y06TiRKbv/Zl5iFBz580MvzxJVvIe9c=;
        b=g1Wljb53WLdwWzDokIL/i0wKFyntDnqmTgmGKgH7ZCpK650Uv243q+6DJxal12v6HD
         pCPmsmDXq9+kck2soK+UqKyjIXHUfF7WghLGvbt1kLYB1HOvjSWz0hBVH77E63vlYEhy
         gSd2afSCVJvYY2q+U7nVFmNlojf5sJw+R9EeEyq4bg1aXBdZB1gNO21E80OuXPbRKwRw
         aIbrqlRYaJT7BSw/fNuCNDP0PaVXoI6a3VPWK0ctjZ7XSxPz2vUDEsSYUY++HZ6TF6oN
         pivIVpU5N7gueiRbaE6wS+yrzp7nPOf4MgOY8vbTerXBwnPot8zW7cTxBXKZ/ro6ocoD
         IF6A==
X-Forwarded-Encrypted: i=1; AJvYcCXZy7t8CaNJeTzUqSyRwaLDcMyueghTeVzcIY0/nAhfC4/mpCNX084IEEm9V6BA2VLVRg7H5N/XWsE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjNAa8WotzXnqDhRloel0MxXkpedtOuzoMo9zvI07N8xAR6WhJ
	wmSgmP8qO1qw31SJsWTP9JZFYqG42aovWhig6jebdtYqiA4OTqq5IIdxHWzFxsmJRqgLxtO2lpu
	7r6IV2p7JVR7DCg1ezA6EtaopVFc=
X-Gm-Gg: ASbGncvd43xTidZNMEijJGsGRUd96tcOerwHKNsokvETDbcnFJ5V7w+VBCrCNbDIXhz
	Lve+nj+NIqKxfpzxp85mWBmRbMgyT8xR5CKeI4qPPiSvRorS2YRrM8JUvfoRcGFP9BgE8wgfKsn
	P373vxqL0=
X-Google-Smtp-Source: AGHT+IH+22l/nhV/eo+LsoUBWcRRFcH+qjcSVfVQhj06cmg5RN57DPWPOTTnjdaIgqgufqGoSWJZ4zcmh/LpTAenPzM=
X-Received: by 2002:a05:6122:370f:b0:51f:3e67:75df with SMTP id
 71dfb90a1353d-5223cd67f1cmr2916625e0c.10.1740518094826; Tue, 25 Feb 2025
 13:14:54 -0800 (PST)
MIME-Version: 1.0
References: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com> <20250225105907.845347-5-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250225105907.845347-5-claudiu.beznea.uj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 25 Feb 2025 21:14:28 +0000
X-Gm-Features: AQ5f1JpFrcLSR2PdWwsq0IaFGDrBnxPMoaqIzSsoFrcOvJ3nNscVLCVZEzeeiPI
Message-ID: <CA+V-a8sX4TwV=7rr17_fhaYKQr2cB6nScFgydqdTmb2jVBqaRg@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] phy: renesas: rcar-gen3-usb2: Assert PLL reset on
 PHY power off
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org, kishon@kernel.org, 
	horms+renesas@verge.net.au, fabrizio.castro.jz@renesas.com, 
	linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_131456_117437_0C72F357 
X-CRM114-Status: GOOD (  15.79  )
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

T24gVHVlLCBGZWIgMjUsIDIwMjUgYXQgMTE6MDHigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5l
YUB0dXhvbi5kZXY+IHdyb3RlOgo+Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6
bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gQXNzZXJ0IFBMTCByZXNldCBvbiBQSFkgcG93ZXIg
b2ZmLiBUaGlzIHNhdmVzIHBvd2VyLgo+Cj4gRml4ZXM6IGYzYjVhOGQ5YjUwZCAoInBoeTogcmNh
ci1nZW4zLXVzYjI6IEFkZCBSLUNhciBHZW4zIFVTQjIgUEhZIGRyaXZlciIpCj4gQ2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcKPiBSZXZpZXdlZC1ieTogWW9zaGloaXJvIFNoaW1vZGEgPHlvc2hp
aGlyby5zaGltb2RhLnVoQHJlbmVzYXMuY29tPgo+IFRlc3RlZC1ieTogWW9zaGloaXJvIFNoaW1v
ZGEgPHlvc2hpaGlyby5zaGltb2RhLnVoQHJlbmVzYXMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENs
YXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPiAtLS0KPgo+
IENoYW5nZXMgaW4gdjI6Cj4gLSBjb2xsZWN0ZWQgdGFncwo+IC0gYWRkIGFuIGVtcHR5IGxpbmUg
YWZ0ZXIgZGVmaW5pdGlvbiBvZiB2YWwgdG8gZ2V0IHJpZCBvZgo+ICAgdGhlIGNoZWNrcGF0Y2gu
cGwgd2FybmluZwo+Cj4gIGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMg
fCAxMCArKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPgpSZXZpZXdlZC1ieTogTGFkIFByYWJoYWthciA8cHJhYmhha2FyLm1haGFkZXYt
bGFkLnJqQGJwLnJlbmVzYXMuY29tPgoKQ2hlZXJzLApQcmFiaGFrYXIKCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMgYi9kcml2ZXJzL3BoeS9y
ZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4gaW5kZXggNWMwY2ViYTA5YjY3Li4yMWNmMTRl
YTM0MzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVz
YjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiBA
QCAtNTM3LDkgKzUzNywxNyBAQCBzdGF0aWMgaW50IHJjYXJfZ2VuM19waHlfdXNiMl9wb3dlcl9v
ZmYoc3RydWN0IHBoeSAqcCkKPiAgICAgICAgIHN0cnVjdCByY2FyX2dlbjNfY2hhbiAqY2hhbm5l
bCA9IHJwaHktPmNoOwo+ICAgICAgICAgaW50IHJldCA9IDA7Cj4KPiAtICAgICAgIHNjb3BlZF9n
dWFyZChzcGlubG9ja19pcnFzYXZlLCAmY2hhbm5lbC0+bG9jaykKPiArICAgICAgIHNjb3BlZF9n
dWFyZChzcGlubG9ja19pcnFzYXZlLCAmY2hhbm5lbC0+bG9jaykgewo+ICAgICAgICAgICAgICAg
ICBycGh5LT5wb3dlcmVkID0gZmFsc2U7Cj4KPiArICAgICAgICAgICAgICAgaWYgKHJjYXJfZ2Vu
M19hcmVfYWxsX3JwaHlzX3Bvd2VyX29mZihjaGFubmVsKSkgewo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHUzMiB2YWwgPSByZWFkbChjaGFubmVsLT5iYXNlICsgVVNCMl9VU0JDVFIpOwo+ICsK
PiArICAgICAgICAgICAgICAgICAgICAgICB2YWwgfD0gVVNCMl9VU0JDVFJfUExMX1JTVDsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICB3cml0ZWwodmFsLCBjaGFubmVsLT5iYXNlICsgVVNCMl9V
U0JDVFIpOwo+ICsgICAgICAgICAgICAgICB9Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgaWYg
KGNoYW5uZWwtPnZidXMpCj4gICAgICAgICAgICAgICAgIHJldCA9IHJlZ3VsYXRvcl9kaXNhYmxl
KGNoYW5uZWwtPnZidXMpOwo+Cj4gLS0KPiAyLjQzLjAKPgo+CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
