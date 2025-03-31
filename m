Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A20F1C36010
	for <linux-phy@archiver.kernel.org>; Mon, 31 Mar 2025 13:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlzPR0UPycFFYiSgFdoOmrR7/vf65VF8mnN0ACqbDDE=; b=Ltgbvnvt5zyKMe
	wGwGhqgSx4fKZ3r1UnmrTQZsC1nt44hNmvzaUTzVuo01KtRomjC8ASSVtfK9zxmRy1s0QKINjauZy
	IudRUWNHGDJ+GbnG8SSPZ+L+4lkE43jcLTDqu4XUd/1G+5MzTuHY2W5K/gJpz5R1GNcA5nPMgTbyL
	Zq8nZJRxLYrULJwgktQe96dxQlFJ7aDX3n9n4RZirS1f68AzlW26v6K03bBSags5frJH+TWSnior6
	ooA1z5DHGTspMd5T4+U0+LO89q/EOiuiCkfV1OF8bBtzHO1rRvvkKIhn69MZ6bX9643XnG+kSKT2P
	kekIjZ37Ga9iCRTZOGcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzFU4-00000000Tsk-1o0T;
	Mon, 31 Mar 2025 13:47:24 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzFSN-00000000TdX-0K2M
	for linux-phy@lists.infradead.org;
	Mon, 31 Mar 2025 13:45:40 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-301e05b90caso7779477a91.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Mar 2025 06:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743428738; x=1744033538; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SDFIPcBuRwgxrj+1+ohFmqtx+8KcK/O1S+ZXl0ksL7M=;
        b=VAdCHuGHTDx2SFqg4t02J/cK8aC6CVbCWOIbwBRfwN+GgV03kRZxqGv1XqxHvNDnMl
         ByWxvOzqr7vPzXnyIrevV40eCHrrueBGBOpCsIRtDiA6UQFq3xx98Qxs8f1GxsJuGmER
         wNDvmr/HMSIcriVVBA4SlpczdBrZxEFX5s4LgXSo1etq9d5+e4jxpSHts84EhjbyHbWW
         mYO7t/ADRPYDg1UjKlSTuehacIG5SA9MiXQp8f8NADPzcd0ndoLwuzPiFBKGzNQzfXGw
         Af+3oMdsGixV9Ro9P+hpIExaPi4Wa/Ybj5QJAYj7pp44AWpiOAY4NLEIUJfWxbUWu/FM
         sW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743428738; x=1744033538;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SDFIPcBuRwgxrj+1+ohFmqtx+8KcK/O1S+ZXl0ksL7M=;
        b=OTQzAXlRgsLbpL23RAKiPW+pErj3Eeg+2uizJMvBY2gIBMI1WBXcZfn6BBUbd+Sr+H
         vQgqSgtGGq8YZiatxqrx06PjFKaDKTYUVzavZfM0+WPpcg0/ADDkFGXinvIthMlH3NT3
         3cf+iV4JByPSgpdVnsdWrZ6bz/w38D/+uARHFJQq8JRN/5y0BVjKA7kchd8bKt9/8gnf
         IU0TLQfcf45hw3YK8nlIoELbR/WSqGLkX59L5CfPmTLUWyP913dRNHduXLkJDhdy7Y2v
         Klq9Xaj7lPhS7vF+KbxA/60xrjA3qALT0EKgwh+Js0ngMMGbgesSXNTkRom7Iaw9JkUo
         vxxw==
X-Forwarded-Encrypted: i=1; AJvYcCVtAEvnmYOmYy0FOoVXY1oE1rhTsQjqg8DO3dujLBx/TqXxiQB3yZQmPEiWZaNlWd0ZTG3G9STy+ok=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ8HgoUFhVhIhvIl7ZGDubZlEXGA7X4ef73KNoxzq1T0czPYoM
	Tux5CjvmuRGsWfFu5QgGvluBuznjxLE3q1t31n9pDs1J6N7SbOyRASZ00gpi4aItzF88B8+WUeg
	HTf90VKpZfPzNSR1Um9MP5XviwB8=
X-Gm-Gg: ASbGncu3we+93PYiP3SC022ci71wsARZojsmQiWoeJRP6kk12I0oOAf47uuRcsXSOmb
	JWxoiUTL5R9H1nyJrYnaZx1DbtVwXKax6bGooaNYjFb9SWGw2JK4tc4hLiyBzNXGd+xxMznJO/S
	8PAH12/nw4z5FGLT1aRd9g7PZbZw==
X-Google-Smtp-Source: AGHT+IG7eQvdLCXANjec8cgwFbTcMdCEAl8hgA2sYHgLaM5vanRKu3K7Py+t4ipQtdbmLb1st3IQAzxH09+63ff1xS0=
X-Received: by 2002:a17:90b:3d09:b0:2ff:6f88:b04a with SMTP id
 98e67ed59e1d1-305320adb7emr15434423a91.15.1743428738260; Mon, 31 Mar 2025
 06:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
 <v57uy3gddzcoeg3refyv7h6j3ypx23mobctybt27xzdyqy6bgb@atzdlqlytz3c>
 <Z861gsaGY6bGSisf@atmark-techno.com> <b2qwqacogz5vzfekhk5276owld6isgewu5a2iw3roag3lbtsgm@67vqf54c5tdh>
In-Reply-To: <b2qwqacogz5vzfekhk5276owld6isgewu5a2iw3roag3lbtsgm@67vqf54c5tdh>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 31 Mar 2025 08:45:26 -0500
X-Gm-Features: AQ5f1Jo2z6kzfmKJSOyma8wBydMAEZlyvY8zlwOFHnubdHzs4pQsCeI5AKenTec
Message-ID: <CAHCN7x+WkhPQGLUqJ40SjtmhTXx=Fn2rkqw8NQ=qgaNnpK97zQ@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Frieder Schrempf <frieder.schrempf@kontron.de>, 
	Marco Felsch <m.felsch@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_064539_114535_27F42D33 
X-CRM114-Status: GOOD (  12.12  )
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
CgpJZiBEb21pbmlxdWUgd29uJ3QgaGF2ZSB0aW1lLCBJIGNhbiB0cnkgdG8gY2xlYW4gdGhpcyB1
cCBhIGJpdC4gIEkgd2FzCm5vdCBsaWtpbmcgdGhlIG5hbWVzIGVpdGhlciwgYnV0IEkgd2FzIHRy
eWluZyB0byBrZWVwIHRoZW0gc21hbGwuCkknbGwgZGVmYXVsdCB0byB0aGlzIGNvbnZlbnRpb24g
bW9yZSBpbiB0aGUgZnV0dXJlLCBiYXNlZCBvbiB5b3VyCmZlZWRiYWNrLgoKYWRhbQo+Cj4gQmVz
dCByZWdhcmRzCj4gVXdlCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
