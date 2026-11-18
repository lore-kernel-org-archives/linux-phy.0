Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214B6606A32F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 15:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bzVzaDZM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=bVFtW+ZU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=g/xUlYmuUYiLLWj1LluYYjKJ4p92Gu1QF7kefK/pHU8=; b=bzVzaDZM9jtm9Nz2qWeT2X/naK
	AHC4mbHQbGOBe7oUZf08T1aQgNGCj8ypJ8IKtVFA3ul2A9pSDSTNCW3wJMQx2sBg4v9ROkA8KsivN
	yRdqnsaHBHaVnzvhydYjcqGh7Ai0J9J1dHMbljutZfqa0l68q/79NHA1BHCy+Hl+tAmNXh/P5IzNb
	3MO2pFUTcwP/VzpIltNc6M+QG+dqKQQ9lRumq5rbN5vrz7yjyrR4Rg5vrAmoXVuMEyG7UZ78/wWjZ
	l/9Dct5MJEtE6vq+4+x9bedT56YVcXSME85tdUDzA7VdzZ3L8lpFXhjih6enXyPN+86N3To1L7mUQ
	JZrymyoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xThuO-00000009MWy-1gKj;
	Wed, 18 Nov 2026 15:49:16 +0000
Received: from mail-pi2-x05.google.com ([2607:f8b0:4864:3a::5])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xThuL-00000009MVr-2gCB
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 15:49:15 +0000
Received: by mail-pi2-x05.google.com with SMTP id 41be03b00d2f7-cdb9382f3baso306959a12.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 07:49:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795016952; x=1795621752; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cer8YfO6jgJ8rX/jlVTUPHJd3RGw4HKBsstgFxqYGYA=;
        b=bVFtW+ZU8QczR0DnO87ajhVTMzMUdHGVq+tKbDbEveTPADG/aYRyZ9AANkv7y2PWov
         qYOHSvfLgVqxkC7uiosqKpZ6N8+CwYc4SWzp0NLjWPVNGGiLMp7/Z1V9wAiu4CJkvZg5
         LwblZe2GxLU7k/NJ7eGRZLT0zcpjPjI4QjsGUIS57N82R1OkT0JBCD0RDn8zX/m3hYYE
         6vn05JvB5yAAV25iaiV6HiD1EoMRYBrYcyZ8fK2icNumAFaetSpxnwxY5NLeqdCC8x4a
         pUpce7FqyPOyFXLnzCBX6L0QKKO7QD2ALT/t17Porpg1/HpyHrg5DXRN2703fUN046Z1
         at6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795016952; x=1795621752;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cer8YfO6jgJ8rX/jlVTUPHJd3RGw4HKBsstgFxqYGYA=;
        b=r9qegtysWVK4rbyHPbSJSFohcn2P0n/swSiV/y227riUs0Sj0ZwwX0HiX8/bH5AGPl
         7NWZVb7VWPWr1mldlJJeHoQzsGnAzahrT6qzJkNIB+3pF06ggnACrYk07I6Dy3giWmcQ
         yOM417LpSezexiQiM1CI9QT7klpprdPCAzIUwL1zzWLzo9Upo3DxZZDzY/VjxxF8n9B5
         QveGyJQZsmug+4YA/IxJMmhjntZ1fDpwxN5CzraSK8vJJYbGc9TOjvy1pTfXwUFfNYOD
         e6aUN2Rh5L1LJVX22jiHUrWpEZx2ws6pzrqTKK+d2mbhbeE6ZW7l9HvRTS94blzUewXv
         DknQ==
X-Forwarded-Encrypted: i=1; AL+hErGS0WWtRjoeyytYo0ZXH8DsYxKtWC+oM3y6vxfEZJ2Kju2wJib5OQDxNQab53YAf/JaVkJWMhS3vg8=@lists.infradead.org
X-Gm-Message-State: APuU4Z91Si5TwU+dmzqsjjxm0ZDDNeb7nznTe6mUM+X0aeEKmxjeKNtt
	wmKwW3xD4y71D+ufakXPB561dDe7eCvNRX5EHglFrDYs6MHhWQn4O9Is
X-Gm-Gg: AYBFou0DlpL4pGVbTLeFbmgcHBGUG4lNvYlRBJ3R6Zm6rt40iVIoxXyU9RnJ0mjXn2g
	WBhgrGX+TqrYJYulT7RU1Y5Tct/dkNDlBdPIUaMyopLcgyt0cpryohkElFXN7NdmCGLjXaLnwjh
	pgguvz23HoyFhIMr0KByt5Rj3ueps90xUep1ThFgKOjswA18gBWM1vomXYVemUnDIIp3OMTqJD/
	MebPxwIu9FtoMxrtrHEDvegwvF8DURfyLn1227K6mcmBt/OmtUuzlhkB37/wZCBwn2ZpIfwOlw3
	kJEhLxAsMtwOzcjJfKG2qMSP2yL0L+CcdhEzQrcP4CabvwFpS//0LlCZxBrhI1O/7fqkZo5zFCq
	uj1i7WbPtzRn3ynXi9kQpsDJIHzl8AEd/ffHUeLYBDbU3OuBdboifts7pJAlkIeakNUq9381o7T
	fC1KzOjUKKSWcHeuG3ZjfzPQjSv39qUz0bDF6QjbNFSjnJWw78FOlYvkUvYb8+Tfr0lDKqemFKc
	sSSX3D+sL34ZhYACvC2Ej1i1wgTr/T8qq9o3ONlrxHb3qjhuJJKwkLTjsGABSuDQHHPvhIY6Y+r
	uvY=
X-Received: by 2002:a05:6a21:6e0c:b0:3e1:bb35:476c with SMTP id adf61e73a8af0-3fe8bdd7c38mr2965829637.72.1795016951931;
        Wed, 18 Nov 2026 07:49:11 -0800 (PST)
Received: from localhost ([2403:2c80:6::107b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c6660c2e4csm1055183b3a.22.2026.11.18.07.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 07:49:11 -0800 (PST)
Date: Wed, 18 Nov 2026 23:49:05 +0800
Message-ID: <e4eb5f5b7ed8b3b6bf47d709e4344e0a.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Icenowy Zheng <uwu@icenowy.me>, Guodong Xu <docular.xu@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yao Zi <me@ziyao.cc>,
 Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 15/17] riscv: dts: spacemit: k3-pico-itx: enable the
 DisplayPort output
In-Reply-To: <9d97d5dbcc619a9c52904ff8c6704a91fe8351e7.camel@icenowy.me>
References: <20260809-k3-display-v2-0-327d7910bf71@gmail.com>
 <20260809-k3-display-v2-15-327d7910bf71@gmail.com>
 <576146d4f2752c3c3f6ec6c42812cb9956406383.camel@icenowy.me>
 <f4b8c87eb0676500661ebea67363ac27.docular.xu@gmail.com>
 <9d97d5dbcc619a9c52904ff8c6704a91fe8351e7.camel@icenowy.me>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_074913_682560_C436E0F9 
X-CRM114-Status: GOOD (  21.29  )
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

SGkgSWNlbm93eSwgR3VvZG9uZywKCk9uIFdlZCwgMTggTm92IDIwMjYgMTQ6MjU6MzggKzA4MDAs
IEljZW5vd3kgWmhlbmcgd3JvdGU6Cj4g5ZyoIDIwMjYtMTEtMTfkuoznmoQgMTU6NTEgLTA1MDDv
vIxHdW9kb25nIFh15YaZ6YGT77yaCj4gPiBPbiBUaHUsIDAzIFNlcCAyMDI2IDIwOjA5OjQyICsw
ODAwLCBJY2Vub3d5IFpoZW5nIHdyb3RlOgo+ID4gPiBUaGUgY29ubmVjdG9yIGF2YWlsYWJsZSBv
biB0aGUgUGljby1JVFggbWFpbmJvYXJkIGlzbid0IGEKPiA+ID4gRGlzcGxheVBvcnQKPiA+ID4g
cG9ydCAtLSBpdCdzIGEgVVNCIFR5cGUtQyBwb3J0IGluc3RlYWQuCj4gPgo+ID4gUmlnaHQsIGl0
IGlzIGEgVHlwZS1DIHJlY2VwdGFjbGUsIGFuZCB0aGUgY29tbWl0IG1lc3NhZ2Ugc2hvdWxkIHNh
eQo+ID4gc28uCgpBZ3JlZWQ7IHYzIHdpbGwgc2F5IFR5cGUtQyByZWNlcHRhY2xlIGluIHRoZSBj
b21taXQgbWVzc2FnZS4KCj4gPiA+IEkgdGhpbmsgeW91IG5lZWQgdG8gbW9kZWwgdGhlIFR5cGUt
QyBwb3J0IGFuZCBhbHQgZnVuY3Rpb25zIG9mIGl0Lgo+ID4KPiA+IEkgYW0gbm90IHN1cmUgdGhh
dCBjYW4gYmUgZG9uZSBvbiB0aGlzIGJvYXJkLiBUaGUgcmVkcml2ZXIvbXV4IGluCj4gPiBmcm9u
dCBvZiB0aGUgcmVjZXB0YWNsZSBhbmQgdGhlIFBEIGNvbnRyb2xsZXIgdGhhdCBzdGVlcnMgaXQg
Ym90aAo+ID4gc2l0IG9uIHRoZSBFQydzIG93biBJMkMgYnVzLCBhbmQgdGhlaXIgaW50ZXJydXB0
IGdvZXMgdG8gdGhlIEVDIHRvby4KPiA+IFRoZSBTb0MgaGFzIG5vIGJ1cyB0byBlaXRoZXIgY2hp
cDsgYWxsIGl0IGdldHMgZnJvbSB0aGF0IHNpZGUgaXMgdGhlCj4gPiBEUDEgSFBEIGxpbmUuCj4K
PiBUaGUgQ2hyb21lT1MgRUMgZmlybXdhcmUgZXhwb3NlcyBzb21lIGNvbnRyb2wgZm9yIGEgVHlw
ZS1DIHBvcnQsIHlvdQo+IGNhbiBzZWFyY2ggZm9yIGBnb29nbGUsY3Jvcy1lYy10eXBlY2AgYW5k
IGBnb29nbGUsZXh0Y29uLXVzYmMtY3Jvcy1lY2AKPiBjb21wYXRpYmxlIHN0cmluZyBpbiBhcmNo
L2FybTY0L2Jvb3QvZHRzIGZvciBtb3JlIGRldGFpbHMuCj4KPiBBbHRob3VnaCB0aGUgSzMgUGlj
byBJVFggaGFyZHdhcmUgY29ubmVjdHMgdGhlIEVDIHRvIHRoZSBTb0Mgd2l0aCBzb21lCj4gbm90
LXNvLWVtYmVkZGVkIGludGVyZmFjZSAoZVNQSSksIHdoaWNoIG5lZWRzIHRvIGJlIGhhbmRsZWQg
Zmlyc3QuCgpUaGFua3MgZm9yIHRoZSBwb2ludGVycywgYW5kIHRoYW5rcyBib3RoIGZvciB0aGUg
cmV2aWV3LiBXaXRoIHRoYXQsIEkKdGhpbmsgaW4gdjMgSSB3aWxsIGxlYXZlIHRoZSBkcDFfb3V0
IGVuZHBvaW50IHVuY29ubmVjdGVkLCBhcyBpdCBpcyBpbgp2Mi4gTGV0IG1lIGtub3cgaWYgeW91
IGRpc2FncmVlLgoKQ29keQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
