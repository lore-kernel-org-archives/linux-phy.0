Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45458CCD19A
	for <linux-phy@archiver.kernel.org>; Sun, 16 Nov 2025 14:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt9VSdOptV1hj25CAR8JoLbSNqv0OBv4Lz2R6O+uRUc=; b=KKggFlnKVtl1bc
	1Dc7EgF3WG9QdJp4n4kNVwxqhHQu+tdFCFQ7UwiGdeC7ue5VNTNab3OPUeR7wy0kzBSiJdeIkIRNU
	jmVjIywMUnkCvnrM3mFNBfWNC3qHBJbvN+idXy4dYDybxOVlT0eMXek1YxTguLZjff8/bbD1gna6A
	0FgLH62GYWLRHWVjfPbcKrmaUNm5HbCCSiO8TjzbgFBsNP6eGfSUmPbX23bcy9z3FM6JCQtCyv8N2
	JFa9FcpSt5KvXd1P7u3RTNelQGqsiEm6GmC4nfOokfvlbCMWm7dhloCoqzLENf6rtCOoqKAmIrTnc
	aIaDFbeEjWPpypWlvD1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKdLv-0000000Eiqk-3VXA;
	Sun, 16 Nov 2025 14:03:39 +0000
Received: from mail-lf1-f50.google.com ([209.85.167.50])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKdLs-0000000EiqL-0CFl
	for linux-phy@lists.infradead.org;
	Sun, 16 Nov 2025 14:03:38 +0000
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5958187fa55so2480422e87.3
        for <linux-phy@lists.infradead.org>; Sun, 16 Nov 2025 06:03:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763301813; x=1763906613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1P5GUNQOH0XPCOyCgZr+gwsMYMYyLhVYsxtxGdPiZx4=;
        b=Qgy+HM+J55GNq4KE+ngZNkEUStA3QT+GoX9akwCFDRBa5dIOQ1n5vb2HW+OGrzttSO
         BR3hmVMF2bHNVi9PnKH96Z1lxP3efGs2NwnXia+kMWC77/LE7jmlAPTxW+OraoIkHl5k
         Lnr7Flg0H1Pq5Yy8On/oUqi2iSDBa3R1UfF6zMX6MZhVaM3SIAlJqCM9JtESSAcLVwoI
         bq8PZpdphu6ex9xPN105WumnsWWoGWkTY+78NcmDrbUd+/s1Ww4d46t9O/WDlEBbw/eg
         z58wQZOUVDkqLcTqs/ESf5XHvgbbvgLH7ZoATK1zOiTWPVELM0mAfOm5CNDglHujhAq5
         wexw==
X-Forwarded-Encrypted: i=1; AJvYcCXcN0YAy3t9h1miDtyveRkUgv1q9as31wn93kMgat6whWNhOLnURcmUnnQJb3E5HuccOgADE5/+9bU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5otts+INLLbgZsuekwtVcuzWouuwuGzZPvGSpV+/UTPTOaDQ+
	o+v5IUDHRXOkVHLEn9IpAtu1PColUYBPRoDloOhvIGYOtSQY21TQg2StQGH8uGP+4ek=
X-Gm-Gg: ASbGncs5EfcgFYD3kI96lgJnQxDq5Whtg1xUroRhAZy6lmXcP5ujlluQgUgkyJCYbXL
	owLMPKI34talkVUoBHKIPLmMIt4l1UYeEasaO6sjwDwXopBEpog+vBlb3ha4C3hiWBDMqUawKnP
	hpjl4oeOoXmfFNq+A5VkkzYWqIEnhQOuh4l1H9vB0+SP0Pp+di4bRUukLB4b4uIpbBkWJbH/llW
	q8MFefyk4T4vMIj7cTjb2b+NKJkJ4OpFkJqN7nFpn0jboXvCcQ3ql3fXTON+eZai61Kd+JbXwuV
	Na+V0Tjjhx1liXq2D4fLZqxBgNDljRKdqb/H5BhvyTnQqrMJPlRm4Dq6uFGwHlzoqNcPNK+UlkY
	bMfhUtwK9Sw9FVnbPKqWan8WqDgIBbPnJWL/lM7U0g28/onNSqF391fGEggP6KJveE6Nh3KA1IC
	7uOFEMmhjxvRaS/bzChDmCP+vLC3ZqbcObvTZpsIdCCws=
X-Google-Smtp-Source: AGHT+IEIMyjc7dtI3CByxPdjMLurWF2TT/uZU82RA3167R0tbmjLK8kZCLE4Qf44rNM0X+eYwVruhg==
X-Received: by 2002:a05:6512:3c91:b0:595:7d95:eacd with SMTP id 2adb3069b0e04-5958419e715mr3019016e87.8.1763301812166;
        Sun, 16 Nov 2025 06:03:32 -0800 (PST)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com. [209.85.208.179])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804002absm2418342e87.69.2025.11.16.06.03.32
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Nov 2025 06:03:32 -0800 (PST)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-37b999d0c81so20044901fa.2
        for <linux-phy@lists.infradead.org>; Sun, 16 Nov 2025 06:03:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX0hGHeA7zr6EYdIVcFVixJ1ksSMEnQz96zy6Nky1h4wensqzb7bP/eDq3JKwjx2aMATliK7NldTxc=@lists.infradead.org
X-Received: by 2002:a05:651c:440f:10b0:37b:9e27:89f with SMTP id
 38308e7fff4ca-37babd73323mr19895421fa.37.1763301811739; Sun, 16 Nov 2025
 06:03:31 -0800 (PST)
MIME-Version: 1.0
References: <20250221161751.1278049-1-kuba@szczodrzynski.pl> <20251116134609.447043-1-kuba@szczodrzynski.pl>
In-Reply-To: <20251116134609.447043-1-kuba@szczodrzynski.pl>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 16 Nov 2025 22:03:18 +0800
X-Gmail-Original-Message-ID: <CAGb2v67V01k8zj2r+Dd+JDEsH2LX2Jtx+CP=i8aQfX_JyFtLfg@mail.gmail.com>
X-Gm-Features: AWmQ_bnVpj5bkGX3ksszDMr19xhbiJNyazuPC_F2JRblaiVwkcXftIdoMcMBl8Q
Message-ID: <CAGb2v67V01k8zj2r+Dd+JDEsH2LX2Jtx+CP=i8aQfX_JyFtLfg@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] drm/sun4i: Support LVDS on D1s/T113 combo D-PHY
To: =?UTF-8?Q?Kuba_Szczodrzy=C5=84ski?= <kuba@szczodrzynski.pl>
Cc: Maxime Ripard <mripard@kernel.org>, Samuel Holland <samuel@sholland.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, parthiban@linumiz.com, paulk@sys-base.io
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_060336_336926_0653D960 
X-CRM114-Status: GOOD (  19.20  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBOb3YgMTYsIDIwMjUgYXQgOTo0NuKAr1BNIEt1YmEgU3pjem9kcnp5xYRza2kKPGt1
YmFAc3pjem9kcnp5bnNraS5wbD4gd3JvdGU6Cj4KPiBbcmVwbHlpbmcgdG8gdjEgdG8ga2VlcCB0
aGUgc2FtZSBzZXJpZXMgb24gUGF0Y2h3b3JrXQoKVGhhdCBpcyBub3QgdGhlIHJpZ2h0IHdheSB0
byBkbyBpdC4KCklmIHlvdSByZXBseSB0byBhbiBvbGQgc2VyaWVzLCB0aGUgdG9vbGluZyBkb2Vz
IG5vdCBwaWNrdXAgdGhlIG5ldyB2ZXJzaW9uCmFzIGEgc2VwYXJhdGUgc2VyaWVzLgoKQ2hlbll1
Cgo+IFNvbWUgQWxsd2lubmVyIGNoaXBzIChub3RhYmx5IHRoZSBEMXMvVDExMyBhbmQgdGhlIEEx
MDApIGhhdmUgYSAiY29tYm8KPiBNSVBJIERTSSBELVBIWSIgd2hpY2ggaXMgcmVxdWlyZWQgd2hl
biB1c2luZyBzaW5nbGUtbGluayBMVkRTMC4gVGhlIHNhbWUKPiBQRDAuLlBEOSBwaW5zIGFyZSB1
c2VkIGZvciBlaXRoZXIgRFNJIG9yIExWRFMuCj4KPiBPdGhlciB0aGFuIGhhdmluZyB0byB1c2Ug
dGhlIGNvbWJvIEQtUEhZLCBMVkRTIG91dHB1dCBpcyBjb25maWd1cmVkIGluCj4gdGhlIHNhbWUg
d2F5IGFzIG9uIG9sZGVyIGNoaXBzLgo+Cj4gVGhpcyBzZXJpZXMgZW5hYmxlcyB0aGUgc3VuNmkg
TUlQSSBELVBIWSB0byBhbHNvIHdvcmsgaW4gTFZEUyBtb2RlLiBJdAo+IGlzIHRoZW4gY29uZmln
dXJlZCBieSB0aGUgTENEIFRDT04sIHdoaWNoIGFsbG93cyBjb25uZWN0aW5nIGEKPiBzaW5nbGUt
bGluayBMVkRTIGRpc3BsYXkgcGFuZWwuCj4KPiBDaGFuZ2VzIGluIHYyL3YzOgo+IC0gQXBwbGll
ZCBjb2RlIGZvcm1hdHRpbmcgY2hhbmdlcyBmcm9tIHJldmlldyBjb21tZW50cwo+IC0gQ2hhbmdl
ZCAiZHBoeSIgdG8gImNvbWJvLXBoeSIKPiAtIE1hZGUgdGhlIExWRFMgc2V0dXAvdGVhcmRvd24g
ZnVuY3Rpb25zIGFib3J0IGVhcmx5IGluIGNhc2Ugb2YgZXJyb3IKPiAgIChhZGRpbmcgYSBwcm9w
ZXIgcmV0dXJuIHZhbHVlIHdvdWxkIHJlcXVpcmUgY2hhbmdlcyBpbiBzZXZlcmFsIGxldmVscwo+
ICAgIG9mIGNhbGxlciBmdW5jdGlvbnM7IHBlcmhhcHMgY291bGQgYmUgZG9uZSBpbiBhIHNlcGFy
YXRlIHBhdGNoKQo+IC0gQWRkZWQgdGhlIFBIWSBwcm9wZXJ0aWVzIHRvIERUIGJpbmRpbmdzCj4g
LSBSZW5hbWVkIGx2ZHMwX3BpbnMgdG8gbGNkX2x2ZHMwX3BpbnMKPiAtIFJlYmFzZWQgb24gdG9w
IG9mIGRybS9taXNjL2tlcm5lbC9mb3ItbGludXgtbmV4dAo+IC0gSG9wZWZ1bGx5IGNvcnJlY3Rl
ZCB0aGUgaW5jb21wbGV0ZSBwYXRjaCBsaXN0IG9mIHYyLCB3aGljaCBoYXBwZW5lZAo+ICAgZHVl
IHRvIGFuIFNNVFAgZXJyb3IKPgo+IEt1YmEgU3pjem9kcnp5xYRza2kgKDYpOgo+ICAgcGh5OiBh
bGx3aW5uZXI6IHBoeS1zdW42aS1taXBpLWRwaHk6IFN1cHBvcnQgTFZEUyBpbiBjb21ibyBELVBI
WQo+ICAgZHJtL3N1bjRpOiBTdXBwb3J0IExWRFMgdXNpbmcgTUlQSSBEU0kgY29tYm8gRC1QSFkK
PiAgIGRybS9zdW40aTogRW5hYmxlIExWRFMgb3V0cHV0IG9uIHN1bjIwaSBEMXMvVDExMwo+ICAg
ZHQtYmluZGluZ3M6IGRpc3BsYXk6IHN1bjRpOiBBZGQgRDFzL1QxMTMgY29tYm8gRC1QSFkgYmlu
ZGluZ3MKPiAgIHJpc2N2OiBkdHM6IGFsbHdpbm5lcjogZDFzLXQxMTM6IEFkZCBELVBIWSB0byBU
Q09OIExDRDAKPiAgIHJpc2N2OiBkdHM6IGFsbHdpbm5lcjogZDFzLXQxMTM6IEFkZCBMVkRTMCBw
aW5zCj4KPiAgLi4uL2Rpc3BsYXkvYWxsd2lubmVyLHN1bjRpLWExMC10Y29uLnlhbWwgICAgIHwg
IDYgKysKPiAgLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW54aS1kMXMtdDExMy5kdHNpICAgIHwg
MTEgKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV90Y29uLmMgICAgICAgICAgICB8
IDUwICsrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX3Rjb24uaCAg
ICAgICAgICAgIHwgIDYgKysKPiAgZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW42aS1taXBp
LWRwaHkuYyAgIHwgNzAgKysrKysrKysrKysrKysrKysrLQo+ICA1IGZpbGVzIGNoYW5nZWQsIDE0
MSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjI1LjEKPgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
