Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F495606A326
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 22:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HXei8bSj;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.a=rsa-sha256 header.s=20260707 header.b=AhqVxwLS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+H7l6MgIx0JF1mPYqMNgLZehEm0Fk3+Qkk07YynnnCQ=; b=HXei8bSjou/wOK1oRN2f1EUitG
	sxs73P+olYwkVkXWJB8pG+3PDbXsJ3jwK1DJFQlxJZzUKLgH/UIXhRb8UvWtDFEUIJ8g5YmKYTPij
	ZEx+Hh4rdUy6pdtnWM1MIin5PVxCPJoImhRxj+1csBaHaYL3zssSLyiVd4FMMmNw/P6jWmdrdfJHb
	bquwMqwIK5iZea08XkCRggTOwSDC6uYwgp6w8N8lfeoHF76F/N39EESfOJagEtFgcVAdwojIauXtw
	MDB3UMXrCJS/OdEFDnoGY6AkExMizB+HbJuRGzvALPY4MrP+CM6awg2ykAcI9jDtKxNIuePFmd/Kf
	AJl1G9OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyeT-00000007xao-12NR;
	Tue, 24 Nov 2026 22:06:13 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyeQ-00000007xZU-0Nxr
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 22:06:11 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-8b360828905so46761757b3.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 14:06:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795557968; cv=none;
        d=google.com; s=arc-20260327;
        b=RcedDbgQjbhmVLuuJyUWAKenx/hESuMJ3mwhi8tkyKqfnPW6KoKDWv+ewesR9yLLsJ
         b5mhFTCyBcE2gaeA0EqR1h2Xs12Oz/hh3jxmrLCndtLYRpXinBBSfm/1M0xKYRBgG9EQ
         vlrNygcLMh83zvbR+Va1qUuLmW+zdJtZokXIlyHz0PvQX9OpPwSCpeBJRBvT4KMWv+iD
         +Oxkr1u+VcVlNj4hhM0P0WZfUU/Ha9mJ0WgZXdRdjT6VDUkMmG9ez7IJD1fKLKnuhASW
         wI5w/R3ZzXVvByIbXBPS0mSfiKAZewMF0RywkHt87v9TpfCDoelq64k3RoatdsTt3s2j
         uAUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=csthBXWoYuqZlipfPcre6aDWuJqEg0KlKenjY0/u3Xc=;
        fh=u1B7Rv88IITTIP43yzeYFTrmdTPzpG1pvW0m5LX+OlY=;
        b=WvQn63pMb4dBZdposxNg6CHhmBi/bZD6Xyhehpb6OnLMaytvdkvd3tHusETuXfbN1B
         MYItBTSEoHlWDq8ZCyUK97AhVMefHua7euiIflCF6eJ4CEsMTEBzp2wzESx/lV6c4jXo
         Bm+4aAGwbVlKPVsY8lzVkIlNx9Y5Ms9sM2BBNGQbeHwuhlKooSpuLCi4Swk5gWmK1ag/
         ricW7eDkYc4f9YDjSbmupAEK4uKipt2zU1t7uX3krK4C+npAn/cp76kB+avbSDDziNGX
         KfgKxjBIoQLeRTFI6mjQN6nk79x1P2FlXUyS0PaMXT0YxdFcTrTDKvjGWD0n9SCgI44a
         6BtA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20260707; t=1795557968; x=1796162768; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=csthBXWoYuqZlipfPcre6aDWuJqEg0KlKenjY0/u3Xc=;
        b=AhqVxwLSgjgAG7V0kNF3adCyY7mxk2N2UgoBcI+3x3RvrGNz8DOk/mE14XQaclSnOc
         mk7xX0paYGCpEbmwN2T8GvsEgoMWBvXd43E6e/cqhlTra2J+wMVNoXD2YPPSbmwM4uOq
         uYqe/C+4Wx78HaYWVfGtJyD+GHxeSzdP5HYV8pjdFCg5XT3lSo20p5bc/pbfN032woXh
         H336EtNIUGVWBjelXxoibQ35Y8ie+5zqUtLXy94FjwlV125ZjY9/YKjqBMRCUtFCNBN/
         fGYtofewXuSAbGYABaACHVVKhLJXZidN+KVGHdi4SwWFkdKF4Tj2PI+hSopV7OOdCTtc
         fL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795557968; x=1796162768;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=csthBXWoYuqZlipfPcre6aDWuJqEg0KlKenjY0/u3Xc=;
        b=vABYpuI+r980uFe6R/gDWP2lxpab+/MNlghAoTj/h9FInUT9EWPPqdSNYG4nCcazIA
         R7HA9P3hgXr9QgcqmOEg6fGb59bvD0OkKt2cwNaMdb2NJThVpHfBWvla68RvKYTuEYyx
         i2/aW9P/OlX0E7zSZiwliHHNmAhdcp/wcIxIdDxq2oDNAjcc6MUjKHnmpgp5wrVyfDvj
         VREmw3Ytc19pMxNsfK0D1VM7nBkHqFRO1rcvacUI4A2ppdA1QOrRsBQDpCZrEMnY7NZZ
         PqVh1KQwixm6/42nLMQfAOZFbrwfTIiuqDEopxghlJ21G2uLPTLN1TSYHr/2ECugqW4J
         kNyg==
X-Forwarded-Encrypted: i=1; AL+hErGX11noeSKMy5rBFoFtz5XVJ4B8Cyjm9U7l3Z1ahBSxMaWoQvlH7iYG++FcgXmmmx0WOng65FXYvKg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+oTOgl48tUOo407Krr6nahf/gZIxn/v+DO2zo6RIyiBXiNJLtl
	0tW6BT2F9zrbHK5LGVTE+Z81J+Viae7ndyCF7NuZBixlmnQ5/3+8wNE9BfFKEI3WjbHKDPA2xzF
	IuThgHae6LInua/uln0jozYJz8rqN/pU=
X-Gm-Gg: AZFdTZenUg6hWEnJPKGPmixfYvvbr0SBLw6tm33r9wIWMbE1iMtq2mZ3z8JIPQSmAjB
	2O6iwgF7/URJsl/2T0YXgMrkj0rc+tdePoboWaB1WKFUsv8KztUJ5mEnlcGqKQ3seBrpuAftWDn
	OnNuA/l6oSH8eAfUWpQRyDWjY9GPNtzeWva60DRZEylWz8s7wTjgbwsCkWUtGSTDDZAZI3TqnLl
	Ibmf+7zDiwFOz63WpeSpBNucko15kBu709lEoJCdhF4aTINWNJ4Li6NHjUjyfXq7k9ivwMd0bZH
	Fx3LWS3lddjh5nJo0MBBQ/w4PXqYyW6JErjYgM3fy9nnFK9BlJZSRVROPkQS2ibn2m0aAKsXNHv
	gDL86thplg8K84hwfPQBFHMTMw0XP+KCw1OcVEVXkcbE2MxEEDNsFvl8hO7IuA3dcs9ZU5g==
X-Received: by 2002:a05:690c:4806:b0:8b3:33cf:1ff8 with SMTP id
 00721157ae682-8b52047e1abmr62214977b3.51.1795557968035; Tue, 24 Nov 2026
 14:06:08 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261123-meson-drm-create-hdmitx-phy-v4-0-3fb94f5534ca@aliel.fr>
In-Reply-To: <20261123-meson-drm-create-hdmitx-phy-v4-0-3fb94f5534ca@aliel.fr>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 24 Nov 2026 23:05:57 +0100
X-Gm-Features: Aa3M54obAOudEtwcvYkDuGnJHvL3A4XdBNW-oHonc9K3rZo32rUzvFY7EEi7VPQ
Message-ID: <CAFBinCD822UPQrrd_8ZbVRUVCVJ-3pGN69vbZBxUE+0yeMcysg@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] phy/drm: amlogic: Extract Meson HDMI TX PHY into
 a dedicated driver
To: linux-kernel-dev@aliel.fr, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Ulf Hansson <ulfh@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_140610_366713_00E016D1 
X-CRM114-Status: GOOD (  13.17  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgUm9uYWxkLCBIaSBOZWlsLAoKZmlyc3Qgb2YgYWxsOiB0aGFua3MgUm9uYWxkIGZvciBwaWNr
aW5nIHRoaXMgdXAhCkkgbGlrZSB0aGUgb3ZlcmFsbCBhcHByb2FjaC4gQmVmb3JlIEkgZGl2ZSBk
ZWVwIGludG8gdGhpcyBzZXJpZXMgSQp3aWxsIGZpbmlzaCB0aGUgY29kZS1yZXZpZXcgb2YgVmFs
ZXJpbydzIEFVRElOIHNlcmllcy4KClR3byBxdWljayBub3RlcyBiZWxvdy4KCk9uIE1vbiwgTm92
IDIzLCAyMDI2IGF0IDg6MzjigK9QTSBSb25hbGQgQ2xhdmVhdSB2aWEgQjQgUmVsYXkKPGRldm51
bGwrbGludXgta2VybmVsLWRldi5hbGllbC5mckBrZXJuZWwub3JnPiB3cm90ZToKWy4uLl0KPiBP
dmVydmlldyBvZiB0aGUgc2VyaWVzOgo+IC0gUGF0Y2hlcyAxLTM6IEZpeCBjb21wYXRpYmxlIG1h
dGNoaW5nIGluIG1lc29uLWd4LWhoaS1zeXNjdHJsIGJpbmRpbmdzLAo+ICAgYWRkIHRoZSBuZXcg
YW1sb2dpYyxtZXNvbi1oZG1pLXR4LXBoeSBEVCBzY2hlbWEsIGFuZCBhbGxvdyB0aGUKPiAgICJo
ZG1pLXBoeSIgY2hpbGQgbm9kZSB1bmRlciB0aGUgSEhJIHN5c2Nvbi4KSXQncyBiZWVuIGEgbG9u
ZyB0aW1lLCBidXQgSSB0aGluayB3ZSd2ZSBiZWVuIGFza2VkIGJ5IHRoZSBkZXZpY2V0cmVlCm1h
aW50YWluZXJzIHRvIGhhdmUgcmVnIHByb3BlcnRpZXMgZm9yIHRoZSBub2RlcyB3aXRoaW4gJmho
aQpCdXQgSSBjYW4ndCBmaW5kIHRoZSBtZXNzYWdlIGF0IHRoZSBtb21lbnQuCgo+IC0gUGF0Y2gg
NDogQWRkIHRoZSBuZXcgTWVzb24gSERNSSBUWCBQSFkgZHJpdmVyIGltcGxlbWVudGluZyB0aGUg
SERNSQo+ICAgUEhZIGNvbmZpZ3VyYXRpb24gb3BzLCBhbG9uZyB3aXRoIHRoZSB0ZW1wb3Jhcnkg
bGVnYWN5IGNyZWF0aW9uCj4gICBoZWxwZXIuCkF0IHF1aWNrIGdsYW5jZSB5b3VyIFBIWSBhcHBy
b2FjaCB3b3VsZCBhbHNvIGZpdCBwaHktbWVzb244LWhkbWktdHguYwpUaGVyZSBzZWVtIHRvIGJl
IG1pbm9yIGRpZmZlcmVuY2VzOgotIHR3byBhZGRpdGlvbmFsIGVuYWJsZSBiaXRzIGluIEhISV9I
RE1JX1BIWV9DTlRMMSBvbiBHWEJCIGFuZCBuZXdlcjoKSERNSV9GSUZPX0VOQUJMRT1CSVQoMikg
YW5kICBIRE1JX0ZJRk9fV1JfRU5BTEJFPUJJVCgzKQotIG5ld2VyIFNvQ3Mgc2VlbSB0byBoYXZl
IEhISV9IRE1JX1BIWV9DTlRMMy4uNQoKTWVzb244LzhiLzhtMiBIRE1JIHN1cHBvcnQgaXMgbm90
IHVwc3RyZWFtIHlldC4gVGhhdCdzIHdoeSB0aG9zZSBTb0Mncwp3b24ndCBuZWVkIHRoZSBiYWNr
d2FyZHMgY29tcGF0aWJpbGl0eSBjb2RlLiBTbyBpZiB5b3UgbmVlZCB0byB0d2Vhawp0aGUgZHJp
dmVyOiBmZWVsIGZyZWUsIHRoZXJlJ3Mgbm90IG11Y2ggeW91IGNhbiBicmVhayEKCgpCZXN0IHJl
Z2FyZHMsCk1hcnRpbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
