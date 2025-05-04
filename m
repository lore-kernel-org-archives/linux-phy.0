Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03BB5C369DC
	for <linux-phy@archiver.kernel.org>; Sun,  4 May 2025 20:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhJTr0XdlR5/0+/55RGaaVsGT/EvuzA4pO/+BVdqLf8=; b=uJAlcM3IXnU1qJ
	RARLsN6OfOrFY4oku+3xb0JMtDAiA/cYXCnpwcGSu02VudoJx78YadA9IB2MuRnKwP9dWYOZhwPSC
	K0FOPOsOaCON50gJyTGGEAb8+AV8K0SIPB58YJbrJOFJCKGWHHJcdy3jZysAqt0PtcB56Rd+ehK2B
	bKDbe+NE2y3I28psZS8l8QsqH67TZv1XAWi8eRpPOm5kK/KE9F8cEQ+az4pe/K3lnYn7zb1LguUn3
	/Ysk8ZY2ZZiq3AEbRWcmB+TdAOCuzEh45hSS3JX+LjSSgqwOaEUJ4HQh70AvcDxXFxlsygIh6iEKO
	knrnnNJJtDDDIuB8BVqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBgCV-00000005vy4-2dtX;
	Sun, 04 May 2025 20:44:39 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBgCU-00000005vxg-0Rj5
	for linux-phy@lists.infradead.org;
	Sun, 04 May 2025 20:44:39 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-b074d908e56so2676478a12.2
        for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 13:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746391477; x=1746996277; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hSKILzdTDxiKU27/grsD5TdquYD5c8qJmLIMuF/qQ64=;
        b=Vy0puEVIutzGiIR673Mv9SftvLRWpiK6QlUvZe74eakJmwkhmh2/tm+fvh6PxnOjoz
         wtskYS3Z/sQQb7yviAfHafGBcNB3DKhxUon40icioXAnHwsdxzcgtoq8zPjaTbPxFMoD
         OS4lo+HdEvgwCOkPAT5zU9aYMWw05B1n1IhPR4XtaN3gLv3PAnBTe+lfk0t8MPVWC0Ih
         nSfH4fx/Tqzb80tvBScI++zOtYISduF0rTcy2/ptCjHtBlkcE73Vou6KenCE6LHoep4l
         MUOXwGWML4WzVHuJO2MvSQBV7qSs0dcryF2xH41Odtl1CnlSn/wzcNW6wK8JuNkosRHd
         t1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746391477; x=1746996277;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hSKILzdTDxiKU27/grsD5TdquYD5c8qJmLIMuF/qQ64=;
        b=goV8O1smVV35RFswFZo5ZCB+WE6mi+Cfandglgq9co/i1ON8Gvtp6jlk7OKIHzJTAe
         am5fBndSmRrw0aBPs4rjsOCLULlDA/1uRBMGregAfyKkpAiFlTA1Re7xHPFErfMPmrS7
         ezHEVGhSRjpeJyiN9Vfb3dS/NCjzt4VbhcTOYSgIYXvtD+Lx8rQ488utNrccC+NAkoFK
         2u7iHl1zECvHAJsreOmTfZDHYpg1jg3DWBm4ef+NqKz9FFby3eyo5mtzh3G05auAqgYt
         ETd+6PFDjehlQbDBG9O9G9YDmA7kkMTZV2WWDlxzSJ73KREUmmRypVKvOdQ1wHr6eddf
         0HHA==
X-Forwarded-Encrypted: i=1; AJvYcCUHo3rDd9hWMs05tKkp9egn6BJQz+vMJDeqWCx5uKXMZPd3MsSdU8LyQIa9RHtVw1yneXKV3zU/Asg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxkDYTzfuSx3ASBY8PBBAZJqT2UsqfIYtsLX8y8Sp5oJoyCtKJr
	/iIsbhVzBjQqXyDeWm4Q5lPcfO6VHNZRfHV4BxnaJOZEAN7WVgu+Czv4bN2BFg88sw9l5pCqfco
	KipkqAw3qb9MO2Xb7bzXGfFB+c/4=
X-Gm-Gg: ASbGncsJjDZ6HX3/C9FmLZs+GtiAQPgOpuDHAYBRg3y2XO0g8hWkdrbeIx7p6Cz3uSz
	g3RQAE5cFSiB+5bduXeVzAHa9E2HL3IMQQC5Vx4OggNLmj0IKVUUrEohwFTw1/JXLa6Uuo436GV
	619TGpn+LxVRQIqeHskyTRCw==
X-Google-Smtp-Source: AGHT+IHAhiNooIpPGcrRCqHDRtoIYORliPqN5en1djw9W4Wxrx4e8Uupmstc4prF4UFr8f78JAENWtuStoxKGacbUgg=
X-Received: by 2002:a17:90a:d00e:b0:2ff:64c3:3bd9 with SMTP id
 98e67ed59e1d1-30a61a32e84mr5386869a91.23.1746391477095; Sun, 04 May 2025
 13:44:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
 <v57uy3gddzcoeg3refyv7h6j3ypx23mobctybt27xzdyqy6bgb@atzdlqlytz3c>
 <Z861gsaGY6bGSisf@atmark-techno.com> <b2qwqacogz5vzfekhk5276owld6isgewu5a2iw3roag3lbtsgm@67vqf54c5tdh>
In-Reply-To: <b2qwqacogz5vzfekhk5276owld6isgewu5a2iw3roag3lbtsgm@67vqf54c5tdh>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 4 May 2025 15:44:26 -0500
X-Gm-Features: ATxdqUGAD9cqDbJ7UUJGb5IVH1hS8Q6sH_Ahy5Rc8JNt7SM8YhAKAPxXHAGV_Zc
Message-ID: <CAHCN7x+q-K067u6o=+E9ybREi_jopwhMTyMN=JKfCS4r6K=HWA@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Frieder Schrempf <frieder.schrempf@kontron.de>, 
	Marco Felsch <m.felsch@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_134438_148203_D7E98FA0 
X-CRM114-Status: GOOD (  13.54  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMTE6MTLigK9BTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5r
bGVpbmUta29lbmlnQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4KPiBIZWxsbyBEb21pbmlxdWUsCj4K
PiBPbiBNb24sIE1hciAxMCwgMjAyNSBhdCAwNjo0ODo1MFBNICswOTAwLCBEb21pbmlxdWUgTWFy
dGluZXQgd3JvdGU6Cj4gPiBbLi4uXSBhbmQgSSdtIHN1cmUgdGhlcmUgYXJlIG90aGVyIGltcHJv
dmVtZW50cyB0aGF0IGNvdWxkIGJlIG1hZGUgYXQKPiA+IHRoZSBlZGdlcy4KPgo+IE9uZSB0aGlu
ZyB0aGF0IGlycml0YXRlZCBtZSBpcyB0aGUgZnVuY3Rpb24gbmFtZXMuIGBwaHlfY2xrX3JvdW5k
X3JhdGVgCj4gc291bmRzIHRvbyBnZW5lcmljLiBgZnNsX3NhbXN1bmdfaGRtaV9waHlfY2xrX3Jv
dW5kX3JhdGVgIGlzIGxvbmcsIGJ1dAo+IEknZCBzYXkgd291bGQgYmUgYSBiZXR0ZXIgbWF0Y2gu
ClV3ZSwKCkkganVzdCBzZW50IGEgcGF0Y2ggdG8gcmVuYW1lIHJvdW5kX3JhdGUgYW5kIHNldCBy
YXRlIGZ1bmN0aW9ucyB0byBiZQptb3JlIGV4cGxpY2l0LiAgSSBhbHNvIHRyaWVkIHRvIHJlZmFj
dG9yIHRoZSBkcml2ZXIgYXMgeW91IHJlcXVlc3RlZApieSBzaW1wbGlmeWluZyB0aGUgY29kZSwg
YnV0IEkgZGlkbid0IGhhdmUgdGltZSB0byBpbnRlZ3JhdGUgbXkKZnJhY3Rpb25hbC1kaXZkZXIg
Y29kZSB5ZXQuCgpJIHdpbGwgYmUgdHJhdmVsaW5nIGZvciBtb3N0IG9mIE1heSwgc28gSSB3b24n
dCBiZSBhYmxlIHRvIHJldmlzaXQKdGhpcyBhZ2FpbiB1bnRpbCBhZnRlciBNYXkgMjQuICBIb3Bl
ZnVsbHkgdGhlIHBhdGNoZXMgSSBzdWJtaXR0ZWQgbWVldAp5b3VyIHNhdGlzZmFjdGlvbiwgYW5k
IEkgaG9wZSB0aGV5IGFkZHJlc3Mgc29tZSBvZiB0aGUgY29uY2VybnMgZnJvbQpEb21pbmlxdWUu
ICBJIGFsc28gQ0MnZCBGcmllZGVyLCBzaW5jZSBoZSdzIGJlZW4gYWN0aXZlIHdpdGggdGhpcwpk
cml2ZXIgYXMgd2VsbC4KCmFkYW0KPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
