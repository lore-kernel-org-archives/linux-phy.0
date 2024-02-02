Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70E98C47DB3
	for <linux-phy@archiver.kernel.org>; Fri,  2 Feb 2024 13:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9WlBLrqSzKFe7okDNvZ2dSDp1D1c/RzQIbTWzgXozw=; b=QGSOer0LyTskhh
	KOBJVe1C9RC5mHgv58RvAkvL4ow5o8qxB2oORLtNnTeG8+VBPtzwcGDa6q5PnYtzZj1/Pd3b+Pz5z
	zIDX3b6CHMrGJxsY3UAp/4blq9s6kYd5c3jvPLLjfIwkTWP2NLHjPyVyZdQQXS4dUp673HCcnTfq3
	9DxJcZfEUV5zg7s7vAVaca3LM9RVldD2iBA3Xznm2shpI7o+0l1SSwnLFsJn4VULsNIu4u+rcTJIL
	ClfJRTHju4lIsfTUm327u1gP8+Ucdhm6z/ttEbLsf0wVnO3CBL+zL444A4Icd+nRJjD5vJyxALMUg
	azOOw6zR2TjIxny064RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVtOC-0000000BZd3-0JLa;
	Fri, 02 Feb 2024 13:15:28 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVtO3-0000000BZbv-43oK;
	Fri, 02 Feb 2024 13:15:27 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6dddf4fc85dso1631188b3a.0;
        Fri, 02 Feb 2024 05:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706879719; x=1707484519; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yWWxDbFc1s0H43msZb3R2yZAbYlHwiF4o6Dt1xNyb5c=;
        b=QBclAGadO+0HUgI15LCyOZ6g2OMLpglT3fum0oXxs7pq5nDJI/5vQrcTzSgAbk5FIz
         n+KJXQDFfW6/uQuSfTr+LZTvRUMzuHbLAFZypdFQaYjF/DLATTq9+ArfghQtI/D/Ko+X
         FmCqAEoIdNTL8O7+tG0sibST8OURxkHdNFPyMFoN+IHSoy0ULMLy/LmAL45YQo8xJnU7
         wb35D1j5DQ3+mPdTcJW90j/fZiyA6S1TU54Y2vkl9awpw6z8g/K56oxvhN0HBHIcQQbE
         MI2Ff/W4i24MPwZAlSdc0ao51nxRXezjqgNC/jCJ0l3xBvMkn7cbyzEZzsTsa848ySir
         9WGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706879719; x=1707484519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yWWxDbFc1s0H43msZb3R2yZAbYlHwiF4o6Dt1xNyb5c=;
        b=eXKOatcihF35xoJ1lT9Ab9UnVelNhG0143JFVRKMPu3Bpd+ocWIvnKHYeN9NracH6X
         JYVzRPnU5rZvogNg8oj7OXKNl6whF5lYuKPa0kt39RwE+qxK5ArwNdu+VPn+V6FhrZBK
         GDM5hYt1Rc/Ocy1z1kjEHYFM1nr1IUzrfAdUfcJjzEfIjRhaSS9NGpF1tl65GM/vvBym
         xSs/eCoE1eQUSmIKoAqwKph2T1yPm+/tGN+tVzRfQGkd9VxIn3b1qAirwWzASkkSarZM
         usB1bU++X2x2aerq/9jIuk64cq7UqXQ9i3oBF5JL06gAAD99NU/UXOeZj5HaZ/z79shw
         moQg==
X-Gm-Message-State: AOJu0YzJ2XFmL4EBQ2luxyH28V8ulUsodtGAtWiH8T+Z+Pm8KHQlTxiE
	H2/stYJ0Eg1DX0XQSwwaWyxugD2dDVTHT+/a3H/bNOi/9CiKhI+Qo4B1IsfRKlZ0w4pol+70eDX
	5jnPMbHnDjhksB/CIvEHmwHu3XdM=
X-Google-Smtp-Source: AGHT+IEEv/kGQPLAUBTIrzRoVfYRzZUzQ0pExjTA1QXrHHzOYJs3MVy1uMEAGhNsUBAO1SU8mvJcclAlTx41fWfFVN0=
X-Received: by 2002:a05:6a20:3149:b0:19c:9c77:853c with SMTP id
 9-20020a056a20314900b0019c9c77853cmr1606806pzk.33.1706879718762; Fri, 02 Feb
 2024 05:15:18 -0800 (PST)
MIME-Version: 1.0
References: <20240106221907.325127-1-aford173@gmail.com> <20240106221907.325127-2-aford173@gmail.com>
 <20240202122036.7aa66d9d@booty>
In-Reply-To: <20240202122036.7aa66d9d@booty>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 2 Feb 2024 07:15:07 -0600
Message-ID: <CAHCN7x+Fyy76_Qo0757fx3bjg5RWUHU=NQHJu+WenSi9PQrwOg@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] phy: freescale: add Samsung HDMI PHY
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: dri-devel@lists.freedesktop.org, 
	Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_051525_994057_6730A4F7 
X-CRM114-Status: GOOD (  14.61  )
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

T24gRnJpLCBGZWIgMiwgMjAyNCBhdCA1OjIw4oCvQU0gTHVjYSBDZXJlc29saSA8bHVjYS5jZXJl
c29saUBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBIZWxsbyBBZGFtLAo+Cj4gT24gU2F0LCAgNiBK
YW4gMjAyNCAxNjoxOTowNSAtMDYwMAo+IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPiB3
cm90ZToKPgo+ID4gRnJvbTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4g
Pgo+ID4gVGhpcyBhZGRzIHRoZSBkcml2ZXIgZm9yIHRoZSBTYW1zdW5nIEhETUkgUEhZIGZvdW5k
IG9uIHRoZQo+ID4gaS5NWDhNUCBTb0MuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3Rh
Y2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBZGFtIEZvcmQg
PGFmb3JkMTczQGdtYWlsLmNvbT4KPgo+IEkgaGFkIGFscmVhZHkgdGVzdGVkIHRoZSB2MiBmcm9t
IEx1Y2FzLCBob3dldmVyIEkgYWxzbyB0ZXN0ZWQgdGhpcwo+IHZlcnNpb24gd2hpY2ggd29ya3Mg
YXMgd2VsbCwgb24gdjYuOC1yYzEsIGN1c3RvbSBoYXJkd2FyZSBiYXNlZCBvbiB0aGUKPiBBdm5l
dCBpLk1YOE1QIFNNQVJDIFNvTS4KPgo+IFRlc3RlZC1ieTogTHVjYSBDZXJlc29saSA8bHVjYS5j
ZXJlc29saUBib290bGluLmNvbT4KPgpUaGFua3MgZm9yIHRlc3RpbmcuCgo+IEdlbmVyYWxseSBz
cGVha2luZywgYXMgdGhlcmUgYXJlIHNldmVyYWwgc21hbGwgcGF0Y2ggc2VyaWVzIGFyb3VuZCB3
aGljaAo+IHRvZ2V0aGVyIGltcGxlbWVudCBIRE1JIG9uIGlNWDhNUCBhbmQgc2ltaWxhciwgSSB0
aGluayBpdCB3b3VsZCBiZSBtdWNoCj4gZWFzaWVyIGZvcmUgcmV2aWV3aW5nIGFuZCB0ZXN0aW5n
IGlmIHRoZXkgd2VyZSBncm91cGVkIGludG8gYSB1bmlxdWUKPiBzZXJpZXMuCgpUaGF0IHdpbGwg
aGFwcGVuIGZvciBteSBuZXh0IGF0dGVtcHQgdG8gcHVzaCB0aGlzIHNlcmllcy4gIEl0IHdhcyBh
CmhlYWRhY2hlIGZvciBtZSB0byBnYXRoZXIgdGhlbSBhbGwuICBJIGhhdmUgYSBnaXRodWIgcmVw
byBzZXR1cCB3aXRoCm15IGxhdGVzdCBlZGl0cyBoZXJlIGlmIHlvdSdyZSBpbnRlcmVzdGVkOgoK
aHR0cHM6Ly9naXRodWIuY29tL2Fmb3JkMTczL2xpbnV4L3RyZWUvZm9yLTYuOS1pbXg4bXAtaGRt
aQoKCmFkYW0KPgo+IEx1Y2EKPgo+IC0tCj4gTHVjYSBDZXJlc29saSwgQm9vdGxpbgo+IEVtYmVk
ZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKPiBodHRwczovL2Jvb3RsaW4uY29tCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
