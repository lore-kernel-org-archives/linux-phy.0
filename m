Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D840C48292
	for <linux-phy@archiver.kernel.org>; Sun,  4 Feb 2024 14:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtdLTn0OqvCHVKyUjt+t6iydUIS/yveDko+5cknNIGg=; b=lXxs1cO0/baHLu
	brMOg+kjBz2zbHwAX7Hjy3fRDcAdWTtFp52wGZ2MRFK/VMgrplis4V1qNlo30Q3Boe6xNWo9ZeoC/
	X7rxD9P5MQHjp5YflbuGm77jcwIGnRkP+KaXGTyVPv74lf1984PYgnzhaZ0UFpB7IkMjKfMEivzBm
	lQSrRPNF5HFbT+ecK+sNtbqE59W+IDNiqJz1Op30rMbY4gxkDhdPkBGkpuNeT5/bxnKQZpNXJxeyy
	+A6nO60lO+RD72BPDyxO2XbOncpdhifXVXFKiSBT7QTNTGhv6FYYM3e61wWhioxpLXxvat7gLli9q
	NvqHSiF4p1W8mHk2qH5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWdt7-000000010H0-3ZmF;
	Sun, 04 Feb 2024 14:54:29 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWdt4-000000010F8-1rRa;
	Sun, 04 Feb 2024 14:54:27 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6e03af57c97so52666b3a.3;
        Sun, 04 Feb 2024 06:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707058465; x=1707663265; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pgWoWhZI6Jt4ifeI2jAQa8yY6PW0nUJE61HeVZboEZ8=;
        b=IpD6Xy73e29s4Ep81knUFBS0YtzDN5ufbtJB1/cndudzP6frIDVokqGtk/0JxOHUf5
         HgAjyrEa1b7U3Gy7fyRHnmWl/BoS74nMWflf4Tw67b3M3VMzRY88L+K83J4F9lI0n2K7
         1AmpziTMo95shvm0Vm47rc+cJGTCGalS+y6ujd9hZX1Z0EYSIg0LPGGGX1ekjSAXsQYV
         sH46Sr1IUd74Vf8IdGxUWMrHeeKL0A9KORlURlmY03jnVrzDjuNM+cF1DcAVi5YZvW3E
         dHrv5+f2ClDSOgT+lXaqcaluyHcUA7yM5vRLykndwT33JkdZIInjgOworp8PO6NMT0sB
         ZJZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707058465; x=1707663265;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pgWoWhZI6Jt4ifeI2jAQa8yY6PW0nUJE61HeVZboEZ8=;
        b=ipodoGstjfKh+3yK9VxETf0Bk93sB0YaIx5qvcVH1LGvslPzIHWBgjcU4O5X715GSh
         Bjf4zDfAEXge0nR6O9NFJ98Q7iw68ftUEbS8nz7dEIh9k9TLL68UGszKY7HNs+PaCXx7
         AZF5nXW0RODiWkBPlQFPcYxUi2UkEy4W310Dua4Vy76l7lVtU/NHl/h4IL+NHGoTdesf
         8z39cwsKkYnpQ5IvHLF+fW/gBvq5Cs1zrhM8yv3m5R3j+CGrxwtd3SYJW3LYUOENdez4
         nw5/BxNe/LK/tlkpSADj0QypoLsRRpuoBYUsjD2zaWl+T6vJG2dnHoZ4hfafsEIXMTA4
         s77g==
X-Gm-Message-State: AOJu0YypUR6CzBoGvpICnp5NMeh3iUKZIrCm+3BSXCVjgeAJkndMdBR+
	o7H3YHZxxZYLja9ZRPLSDkhPiXlG/aWZ1n3QbHcA66fgNE7Orp8aDsgZPG9BdlsXKHieVnZ8sk0
	/72Ax+laIH9MFTPVhu8pJfSIPVkk=
X-Google-Smtp-Source: AGHT+IGSX8kX5MA8ZbTQDoQMsW8S27tIoZz4dXskIGi/iCXvA3jGKdesaVZqnt2TBMScGsd6VoU8nD7JHy3LffXnc2s=
X-Received: by 2002:a62:ce86:0:b0:6e0:3769:eb92 with SMTP id
 y128-20020a62ce86000000b006e03769eb92mr1260042pfg.25.1707058465268; Sun, 04
 Feb 2024 06:54:25 -0800 (PST)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-7-aford173@gmail.com>
 <20240204120033.GA4656@francesco-nb>
In-Reply-To: <20240204120033.GA4656@francesco-nb>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 4 Feb 2024 08:54:13 -0600
Message-ID: <CAHCN7xKGMNpiTxy_7vMKd+rSsS6aya7N+duVVwFNKnpG0M0gBQ@mail.gmail.com>
Subject: Re: [PATCH V8 06/12] arm64: dts: imx8mp: add HDMI irqsteer
To: Francesco Dolcini <francesco@dolcini.it>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de, 
	alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de, 
	Lucas Stach <l.stach@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_065426_501293_DDEBA92C 
X-CRM114-Status: GOOD (  16.45  )
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

T24gU3VuLCBGZWIgNCwgMjAyNCBhdCA2OjAw4oCvQU0gRnJhbmNlc2NvIERvbGNpbmkgPGZyYW5j
ZXNjb0Bkb2xjaW5pLml0PiB3cm90ZToKPgo+IE9uIFNhdCwgRmViIDAzLCAyMDI0IGF0IDEwOjUy
OjQ2QU0gLTA2MDAsIEFkYW0gRm9yZCB3cm90ZToKPiA+IEZyb206IEx1Y2FzIFN0YWNoIDxsLnN0
YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4KPiA+IFRoZSBIRE1JIGlycXN0ZWVyIGlzIGEgc2Vjb25k
YXJ5IGludGVycnVwdCBjb250cm9sbGVyIHdpdGhpbiB0aGUgSERNSQo+ID4gc3Vic3lzdGVtIHRo
YXQgbWFwcyBhbGwgSERNSSBwZXJpcGhlcmFsIElSUXMgaW50byBhIHNpbmdsZSB1cHN0cmVhbQo+
ID4gSVJRIGxpbmUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hA
cGVuZ3V0cm9uaXguZGU+Cj4KPiBUaGlzIGlzIG1pc3NpbmcgeW91ciBzaWduZWQtb2ZmLWJ5LCBh
bmQgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcwoKT3Bwcy4gIEkgdGhvdWdodCBJIGNh
dWdodCBhbGwgdGhvc2UuCgo+IHlvdXIgc2lnbmVkLW9mZi1ieSBpcyBub3QgdGhlIGxhc3QsIGFz
IGl0IHNob3VsZCBiZS4KPgo+IFBsZWFzZSBoYXZlIGEgbG9vayBhbmQgZml4IHRoaXMgYW5kIHRo
ZSBvdGhlciBpbnN0YW5jZXMuCj4KCk9LLiAgSSBoYXZlIHNvbWUgd29yayB0byBkbyBvbiBzb21l
IG90aGVyIHBvcnRpb25zLCBzbyBJJ2xsIGNsZWFuIHVwIHRoYXQgdG9vLgoKYWRhbQo+IFRoYW5r
cyBmb3IgdGhpcyB3b3JrIQoKVGhhbmtzIGZvciB0aGUgZmVlZGJhY2suCgphZGFtCj4KPiBGcmFu
Y2VzY28KPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
