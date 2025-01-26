Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB370C0218C
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jan 2025 00:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQBvagtBS8pi66HJCF+ZM4QfYQmZXfBTldXq8cnS2hg=; b=bsR26QmZyDkq0p
	1E7yqX966ofk2DL9yDYkzzZHHWkJm+Mq6rbPSBEdTcEokCN3OgKeyexUEhZQ6mw5GHNOjlYUA0P4k
	QUl8zTBq2GN2rXhDvzZFsVG3KpUceZNo/sKGs60bQHfQJ69RkHyfDJiE2uutmnvQJQmVKrAdOUIRN
	aov1TGjLFFjqfuTwt3Zfs+nlZkMD80iJu+VCXkptdzRvp3WKQdHjJVdxCDMoLb8chvUO00y6Hb0kX
	K5gPV7r/yVl/RAOX1XzDGTGbv8Bn3YA9+GjHr3NT/riqW4Q5ux5qVpfncFPSF160ILw6c9uNBfJJP
	aEpu4LWk557vOCJYSvcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbqnH-0000000H0nu-09cU;
	Sun, 26 Jan 2025 00:46:31 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbqlz-0000000H0lB-00f2
	for linux-phy@lists.infradead.org;
	Sun, 26 Jan 2025 00:45:12 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5439a6179a7so3475578e87.1
        for <linux-phy@lists.infradead.org>; Sat, 25 Jan 2025 16:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737852307; x=1738457107; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e571IkY7EK87y3Sunky/t3TOpY/BAarwHBxbWfeNYyU=;
        b=cdbEaS6B7gnrqGR+8aWQUGjC9OnJ7P3s1Ex/VEp1p9wB3HzMi32otO0psGpPYIHmgm
         l1n9w+HyRLWiubOaIUVo5eh1PhSUOL9w25onnm+po2nsNU9fjZQzg3y+sJU+W5Amxken
         oScw4lgCih1reYGpGkvtr9gGkybximvwo+ehs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737852307; x=1738457107;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e571IkY7EK87y3Sunky/t3TOpY/BAarwHBxbWfeNYyU=;
        b=n1uh4LPGo8Cdcxe29hOGZh20/3RlwAV6A6ktI36ewzC/AclbXarqQ6Dsw5Zx7SCOZG
         Ozbaaw6CZZrQwfg07i/5G7+jHYhsSy4HhbAJGF4hGoYi5wRajw/Un+j3+zxebFfyGq4n
         qZdIuvdH5jwiNjxOU7oB2JzkGzx2aGmgUNfl/8Fv2s5M1w+TpCoAxB48uz/gjVZS+Dd0
         7v1EqfGoPCHzJG2Ho25NNSRdyeDExUn0yxa8oRCl7Rzoq7qMcZFYnk5iySAiplSnXLkr
         osxIjty+aqUdY39dFrZcx3AT7wdI8vTJMvkWPnO1YsiDB1uM8Jc9onlyC9lGKo1bTcR7
         wdEQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+MzAiWPBhYXXgrHh/+TNk3hfL6rclIWugrl/2ovVWKyTQAPAdjguhAfJUXdyuCYpEoh7dsMN7CDM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4RLEXzcpJVrhS9/M50V+zTAovOp92Mo+ge1S4AQfByLjVyqkz
	q3jbdMGLaIuE+SDDRmNwyRPzY9GSs2t+5pf1Hy6FrJtjtoGv6t8HxDxd7p5Rcdo4kOxRQMOYDct
	Skw==
X-Gm-Gg: ASbGncsWNoFxW4nQHJ8fRnPgwNyxkzntQHNKsdvLomUp/Qfmwb/ihWyz5tWdUgYtlhB
	GTOn4m92iTB6FsSpEqx6boE4oxnCnskVAa+oCEedcJRQI79k2DtRoK+yfvUsqqDCRVrV7Ar79ST
	rCVYljj3LNrvS442oxsHDDkAnQerxdd95BD4Jsu1dc0JpDFifuWTMWa8zuT9+Lw8DaKhWfSm90g
	waQ7i7gaF4Kblv15V/96SoZye3utZgAVAF5GYnTpW53rMSit8QZHJ+lt7JXsuWSuA0UNkiErNY1
	kDOV/2BEU9ywpqGS8ZKEV98Jjsm9Z8JmlusqXib/nc1esINm
X-Google-Smtp-Source: AGHT+IE/FoXB8r1SGMUYn+JVCGQk1GD9pfSClcCsKWXTKVWNCFS0jC5Tx0v0jvZe01yKFDX1y8zuMg==
X-Received: by 2002:a05:6512:3a86:b0:543:bb69:c635 with SMTP id 2adb3069b0e04-543c221aaa6mr4733336e87.15.1737852306695;
        Sat, 25 Jan 2025 16:45:06 -0800 (PST)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com. [209.85.208.176])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8368336sm761276e87.123.2025.01.25.16.45.04
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 16:45:04 -0800 (PST)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-304d757a9c1so36452551fa.0
        for <linux-phy@lists.infradead.org>; Sat, 25 Jan 2025 16:45:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXJMdFZ1+hP6UadCGcVr0B7ejvmcz7kQ5aWnI7/8G3M02I2YsYKrxGenbDJ+0uhqIsvocEtvO+87mo=@lists.infradead.org
X-Received: by 2002:a05:651c:205c:b0:300:17a3:7af9 with SMTP id
 38308e7fff4ca-30761c517bdmr37753901fa.19.1737852303712; Sat, 25 Jan 2025
 16:45:03 -0800 (PST)
MIME-Version: 1.0
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com> <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
 <CAD=FV=WKsA9fcq-LzGcYmgbMuMLUp5SMggpzBzZnvd3sxGf9BQ@mail.gmail.com> <7ef0454b-fddd-44c0-be4a-c81c443f08f6@rock-chips.com>
In-Reply-To: <7ef0454b-fddd-44c0-be4a-c81c443f08f6@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 25 Jan 2025 16:44:51 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XZOfqcV51Sog3CNBe0mengYyX5cRbftdDY0e73mZNWQA@mail.gmail.com>
X-Gm-Features: AWEUYZlT8dd77sVC0SZMqkozj-k92yxOjbM1lGN9IVzDz0DDUqySb4xOYDl6kKM
Message-ID: <CAD=FV=XZOfqcV51Sog3CNBe0mengYyX5cRbftdDY0e73mZNWQA@mail.gmail.com>
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model LP079QX1-SP0V
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, 
	l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	algea.cao@rock-chips.com, kever.yang@rock-chips.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250125_164511_055702_E803E3BF 
X-CRM114-Status: GOOD (  12.46  )
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

SGksCgpPbiBGcmksIEphbiAyNCwgMjAyNSBhdCA4OjE44oCvUE0gRGFtb24gRGluZyA8ZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiA+Pj4gICAjZGVmaW5lIEVEUF9QQU5FTF9F
TlRSWSh2ZW5kX2Nocl8wLCB2ZW5kX2Nocl8xLCB2ZW5kX2Nocl8yLCBwcm9kdWN0X2lkLCBfZGVs
YXksIF9uYW1lKSBcCj4gPj4+ICAgeyBcCj4gPj4+ICAgICAgICAuaWRlbnQgPSB7IFwKPiA+Pj4g
QEAgLTE5NTUsNiArMTk2MSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZWRwX3BhbmVsX2VudHJ5
IGVkcF9wYW5lbHNbXSA9IHsKPiA+Pj4gICAgICAgIEVEUF9QQU5FTF9FTlRSWSgnQycsICdTJywg
J1cnLCAweDExMDAsICZkZWxheV8yMDBfNTAwX2U4MF9kNTAsICJNTkI2MDFMUzEtMSIpLAo+ID4+
PiAgICAgICAgRURQX1BBTkVMX0VOVFJZKCdDJywgJ1MnLCAnVycsIDB4MTEwNCwgJmRlbGF5XzIw
MF81MDBfZTUwLCAiTU5CNjAxTFMxLTQiKSwKPiA+Pj4KPiA+Pj4gKyAgICAgRURQX1BBTkVMX0VO
VFJZKCdFJywgJ1QnLCAnQycsIDB4MDAwMCwgJmRlbGF5XzUwXzUwMF9lMjAwLCAiTFAwNzlRWDEt
U1AwViIpLAo+ID4KPiA+IEkgZG9uJ3QgbG92ZSB0aGF0IHRoZSBJRCBpcyAweDAwMDAuIFRoYXQg
bWFrZXMgbWUgbmVydm91cyB0aGF0IHRoZQo+ID4gcGFuZWwgdmVuZG9yIGlzbid0IHNldHRpbmcg
dGhlIElEIHByb3Blcmx5LiAuLi5idXQgYXQgbGVhc3QgdGhlIHN0cmluZwo+ID4gbWF0Y2hlcyBp
biB0aGUgRURJRCBzbyBob3BlZnVsbHkgdGhhdCB3aWxsIGJlIGVub3VnaCB0byB1bmlxdWVseQo+
ID4gaWRlbnRpZnkgdGhpbmdzLgo+ID4KPiA+Cj4KPiBUaGUgSUQgIjB4MDAwMCIgbWFrZXMgbWUg
bmVydm91cyB0b28sIGJ1dCB0aGUgRURJRCBvYnRhaW5lZCBmcm9tIHRoaXMKPiBwYW5lbCBpbmRl
ZWQgc2hvdyBpdCwgd2hpY2ggaXMgcXVpdGUgc3VycHJpc2luZy4gTWF5IEkgc3RpbGwgc2V0IGl0
IHRvCj4gIjB4MDAwMCIgYXMgaXQgcmVhbGx5IGlzPwoKWWVhaCwga2VlcCBpdCBhcyAweDAwMDAu
IFNpbmNlIHRoZSBwYW5lbCBuYW1lIGlzIGluIHRoZSBFRElEIHRoZW4KY29tbWl0IGJmMjAxMTI3
YzFiOCAoImRybS9wYW5lbC1lZHA6IE1hdGNoIGVkcF9wYW5lbHMgd2l0aCBwYW5lbAppZGVudGl0
eSIpIHNob3VsZCBwcm92aWRlIHNvbWUgc2FmZXR5LgoKLURvdWcKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
