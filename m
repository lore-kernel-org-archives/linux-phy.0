Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3578E7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 15:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vz6Puf8A+0MpJGZ7yxkUiWDiUDyJ+9Xg7lJU8Fp0T4E=; b=G7rHOrAy7kM8Hh
	0rydf9rhvxKdZiz0SvrN0E2mSCIdRvbO/a+BIb23Ge8zu/VcgJ2Up2kN1Ndvjo+JZGWfM8Jtynjnj
	svwO/lMuat2n5+dHZMqdy1jjdRs+fkCdRaVplimKLaWPFDC317MMFhijV3AqyzRF/LQxIS/o1k12v
	U1pEXstItwgdEByD/QR40GpWxlsPHsmbcqjiEFWAuixBz1Flm3JrYEeebdOyET4P/hSc4b1B9CG2k
	2AryK9Lei+Lr2urYNpZSLKlCmj6VTXYBGIEmyZdzT5naf+F7hSAxv6bxBipAkQ+cer+vv9iCZHGnr
	3C2bIpri7pA6rO9FRzJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1nm-0000000BtSk-0W5z;
	Tue, 10 Dec 2024 15:05:30 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1nj-0000000BtS6-2TZa
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 15:05:28 +0000
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-46785fbb949so2349961cf.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:05:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733843125; x=1734447925;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b7MWr+x34y8+HIArGxN7+pSUdFwcwNgnGB9mNkNeiU8=;
        b=G7Z6iPLLYSIO9UkI9R45bhVNtMEbio+TWh1Td72R4/LEPqWXNpEtAZYB21oBmDUC33
         9A4jZw/LiTvA2HdfGWxVSdecyJvHl4U3GujMMcHEY4hNSjizseqO3fXfuT91ujuIvpuu
         mcVgJjd2VmqxHJ8vJz5hdXesO9u/KmxKDp5i9Xly8pMb4T2OkM7Xem+LpLta6nC+YLe6
         Jmhu0nKHOtLJ+uCTDTUQVzbogmV5bXX7H+iM1mLg3es6sGbL15hpRwWVJzWjk2nfZJbI
         pNuujO77Kfq0FxKyM7BThqQgP4yQldTvr5HPVy8yPDRR4kbhW5OU+SHI1A/Sj3gaYFUZ
         pYzA==
X-Forwarded-Encrypted: i=1; AJvYcCWc+sXEkLGLd33n9SzpOq9mfKjaeVlLw7ytDY5ZQAxSQ0gjijTb4lkXTpVcbDIQ2tTYGP73+zyL0jM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5uP/M8/CL8gc81HMBiZsHsyJHDSxxB2FFaZN5/o8TASBkRN3U
	kcPfqyAJrg/aCDvER9L46/EUKfZjmenIAvAQzu+IqZi3+pUwrMooYfVneQ/a
X-Gm-Gg: ASbGncvbOAaEtE4ijpXgEtiyPuSnB/mvlfNdbLVl+InVOyUkrxm1aCiFb8qxYhctgrB
	vUeNYToSypz7h3d8j5Dkd9LYpcUqc72/U2+aMHsqQYo8HLPNGzdOLSrlAhzmx2btd+8AQG7e8jI
	pTh2DXeIjSjHNfEnYllLRINZMoyXQlK03qptaaskj5pTa07ZxallIQ51RwElLpOZ+44IVKslyQc
	X0YJ1hGkJ/erVTna2h29s9fnGoHfiPJeu+vzS1rh1rB9h+LsZb1Mi8gV/Z+FxlIntHpwRFrIiAS
	3teL1ROO/Vt4+gB4tPKi
X-Google-Smtp-Source: AGHT+IEhDdHdjtlkLFiyvMNIQyDk0oLZ8mxQcSZC+m745VKa05gaFad/afLYAbU71hCO+GIBG2bEfg==
X-Received: by 2002:a05:622a:1248:b0:467:622d:896c with SMTP id d75a77b69052e-467622d902amr160133271cf.46.1733843125178;
        Tue, 10 Dec 2024 07:05:25 -0800 (PST)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com. [209.85.222.173])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-467753461c0sm9864231cf.57.2024.12.10.07.05.24
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 07:05:24 -0800 (PST)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7b6e8814842so33840485a.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:05:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUv5GI3bDmHu64MyzWpPskVovIasOe3dJ3uCe15qm/f5mVQjzfIw5z/hVLCu3g6URgKHwjaRW1mcds=@lists.infradead.org
X-Received: by 2002:a05:620a:19a6:b0:7b6:67a6:5adb with SMTP id
 af79cd13be357-7b6bcad4a8dmr2816602085a.21.1733843124497; Tue, 10 Dec 2024
 07:05:24 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-10-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-10-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 16:05:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWSgFwNEiijrnSCOif6VK5Ph1-d9=+NpWJsAbNVkaH0SA@mail.gmail.com>
Message-ID: <CAMuHMdWSgFwNEiijrnSCOif6VK5Ph1-d9=+NpWJsAbNVkaH0SA@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] phy: renesas: rcar-gen3-usb2: Fix an error
 handling path in rcar_gen3_phy_usb2_probe()
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com, 
	christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_070527_628069_6E0222C6 
X-CRM114-Status: GOOD (  16.04  )
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

T24gVHVlLCBOb3YgMjYsIDIwMjQgYXQgMTA6MjHigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5l
YUB0dXhvbi5kZXY+IHdyb3RlOgo+IEZyb206IENocmlzdG9waGUgSkFJTExFVCA8Y2hyaXN0b3Bo
ZS5qYWlsbGV0QHdhbmFkb28uZnI+Cj4KPiBJZiBhbiBlcnJvciBvY2N1cnMgYWZ0ZXIgdGhlIHJl
c2V0X2NvbnRyb2xfZGVhc3NlcnQoKSwKPiByZXNldF9jb250cm9sX2Fzc2VydCgpIG11c3QgYmUg
Y2FsbGVkLCBhcyBhbHJlYWR5IGRvbmUgaW4gdGhlIHJlbW92ZQo+IGZ1bmN0aW9uLgo+Cj4gVXNl
IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgpIHRvIGFkZCB0aGUgbWlzc2luZyBjYWxsIGFuZCBz
aW1wbGlmeSB0aGUKPiAucmVtb3ZlKCkgZnVuY3Rpb24gYWNjb3JkaW5nbHkuCj4KPiBGaXhlczog
NGVhZTE2Mzc1MzU3ICgicGh5OiByZW5lc2FzOiByY2FyLWdlbjMtdXNiMjogQWRkIHN1cHBvcnQg
dG8gaW5pdGlhbGl6ZSB0aGUgYnVzIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpBSUxM
RVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPgo+IFJldmlld2VkLWJ5OiBCaWp1IERh
cyA8YmlqdS5kYXMuanpAYnAucmVuZXNhcy5jb20+Cj4gW2NsYXVkaXUuYmV6bmVhOiByZW1vdmVk
ICJzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0YyA9IGRhdGE7IiBmcm9tCj4gIHJjYXJfZ2VuM19y
ZXNldF9hc3NlcnQoKV0KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5i
ZXpuZWEudWpAYnAucmVuZXNhcy5jb20+CgpSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVu
IDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAg
ICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBs
b3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJz
b25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBh
IGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAi
cHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
