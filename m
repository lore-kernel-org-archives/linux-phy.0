Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D61E9CFA449
	for <linux-phy@archiver.kernel.org>; Wed, 23 Oct 2024 15:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ct8P8kjHI3R4T8+wf1GBCga6xsYBiQay4klikq5NaXs=; b=UD9CP2sT9x4m6a
	OV5cBQekOJWJaXNyq3pK5oWqJ22hNDDT4IRbul+4dJROXOWGxjTGXcOxFCnqeg62lf6BQeBi4Ogni
	a7sGhZ09GvL2nlVap9moh6bMMAjQofu8pdOzKBgTs8QeDmSnUwq9ewRjAhpiEBKvEM2VJt64xqi6K
	8uG2/XLiGwVSqO/VWWxeomA9aG0S9Kql4fcGRIyVETu2MpCIleLkFU8buPS6M4dxGPEUxnPKlFEQN
	kcxkDbyNK6yjJgXFPa9iuQDLlheT12fUtYobfdz34Th4qf4GqQLOThWZRv4gmda2CNo5KtHW+pLeN
	4A4rG/6jW0NvLrnDftYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3diu-0000000F3R6-0N0E;
	Wed, 23 Oct 2024 15:56:36 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3cv3-0000000EsQs-02zu
	for linux-phy@lists.infradead.org;
	Wed, 23 Oct 2024 15:05:06 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-6e3881042dcso62324977b3.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Oct 2024 08:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729695903; x=1730300703; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zuy/pIpGl6mn3xPw/OH7BSEVrrvkLmg7ErfqDPz7cEo=;
        b=hE7JC8uT1V/QPYWZBx1VpuJRCGYEVHtnrI31beiLqkHmzQECjDkd7rPruMVaUTUCr5
         5UzFvsA8f3Q5OW8pDUtjQttDXmwrO8m1oAImKsKkCRsuBd5ADbyuDy5tS8loYQjRCUEo
         ybp6bJ5gaXymgKe2BFsVDCIIivGKIwggq51TiFLmES9jas29aVaTEigXi7ULaBIxFsfN
         dvL+SuQp++KyEPAt6cVuKxEVcu1R7/mO0Qb+oxQpw40KIQ7WMMA6I3JFe7v6pIU+ssdj
         fPlRqTINImKan4Ir57OO3X7Q+D47oYy1s0c/l+VG1wQ1o0OKCWgdtyI14aHuXngoh0kc
         5q6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729695903; x=1730300703;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zuy/pIpGl6mn3xPw/OH7BSEVrrvkLmg7ErfqDPz7cEo=;
        b=WpZz3Rii7ONGELXMKGGkxypi/RjFYR4iRqy+Cb+C5MFeB9QBi2j91Y/+tI2qqABdYm
         swEV/37x7XWIVtOb4psRaKP3rgAfM3BATRPNwRqvqcCv3hW+rXzVrb5v1e9yw7xIHjy7
         QijXUrFzJGzlT2998UX7P9Y6OXw+Mel7mwLQoz3PFmLHTrWZaG2riD+wUeu2GLRrhwTy
         ukciQyYqWNIgYw7gIJMJf/jplI1e2btTl7kGLCKutGUj7gvyLZBYQ+I3IRkiJNVjWPXi
         g2rQ/TrRzsKgN0hRpNwU1MonpAV+WFhNmc9jr1DXCTVNPmyhqY9e77dKDs0qJWVillfO
         cpOA==
X-Gm-Message-State: AOJu0YyZ5ooOClUDNYQAR7a+jSE0BvCQBCpPTgjyogJmKdLh3fgr3FO1
	4WpAwaHQvr6Wp+corOgawa3zWS/jfAY2AKfTZ3A12pyMho2K0ThpnmF01w4BApy9+8Ss7QRtke+
	pBOywb249IrPoLle+GE2dP1LZdZU=
X-Google-Smtp-Source: AGHT+IE1Y01TpxnOIBcjtswNmEO/BbAvNPhtff4tFTfaBbeGDMf2QwNzGN8XWoriLkVPx1KQ0QiXg4NauA8R8LRwhVo=
X-Received: by 2002:a05:690c:dc7:b0:6e3:3019:6aad with SMTP id
 00721157ae682-6e7f0e71d8fmr30977617b3.20.1729695902914; Wed, 23 Oct 2024
 08:05:02 -0700 (PDT)
MIME-Version: 1.0
References: <20241020165102.340838-1-aford173@gmail.com> <4539cdd4-db5c-40ac-9c99-c15d4df49b70@kontron.de>
In-Reply-To: <4539cdd4-db5c-40ac-9c99-c15d4df49b70@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 23 Oct 2024 10:04:49 -0500
Message-ID: <CAHCN7xK70xJspeyQVHHZRpyGXp91gX+3=US7P3_mXBzLVZtH6Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] phy: freescale: fsl-samsung-hdmi: Expand Integer
 divider range
To: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: linux-phy@lists.infradead.org, aford@beaconembedded.com, sandor.yu@nxp.com, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Dominique Martinet <dominique.martinet@atmark-techno.com>, 
	Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_080505_090432_A6629E7E 
X-CRM114-Status: GOOD (  20.01  )
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

T24gVHVlLCBPY3QgMjIsIDIwMjQgYXQgMjowNOKAr0FNIEZyaWVkZXIgU2NocmVtcGYKPGZyaWVk
ZXIuc2NocmVtcGZAa29udHJvbi5kZT4gd3JvdGU6Cj4KPiBPbiAyMC4xMC4yNCA2OjUwIFBNLCBB
ZGFtIEZvcmQgd3JvdGU6Cj4gPiBUaGUgSW50ZWdlciBkaXZkZXIgdXNlcyB2YWx1ZXMgb2YgUCxN
LCBhbmQgUyB0byBkZXRlcm1pbmUgdGhlIFBMTAo+ID4gcmF0ZS4gIEN1cnJlbnRseSwgdGhlIHJh
bmdlIG9mIE0gd2FzIHNldCBiYXNlZCBvbiBhIHNlcmllcyBvZgo+ID4gdGFibGUgZW50cmllcyB3
aGVyZSB0aGUgcmFuZ2Ugd2FzIGxpbWl0ZWQuICBTaW5jZSB0aGUgcmVmIG1hbnVhbAo+ID4gc2hv
d3MgaXQgaXMgOC1iaXQgd2lkZSwgZXhwYW5kIHRoZSByYW5nZSB0byBiZSB1cCB0byAyNTUuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+Cj4KPiBX
aXRoIHRoZSB0eXBvIGJlbG93IGZpeGVkOgo+Cj4gUmV2aWV3ZWQtYnk6IEZyaWVkZXIgU2NocmVt
cGYgPGZyaWVkZXIuc2NocmVtcGZAa29udHJvbi5kZT4KClRoYW5rcyBmb3IgdGhlIHJldmlldy4g
IEknbGwgcG9zdCBWMiBpbiB0aGUgbmV4dCBmZXcgZGF5cy4KPgo+ID4gLS0tCj4gPiAgZHJpdmVy
cy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgfCAxMSArKysrKy0tLS0tLQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRt
aS5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiA+IGlu
ZGV4IDJjODAzODg2NDM1Ny4uM2Y5NTc4ZjNmMGFjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9w
aHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5
L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gPiBAQCAtNDA2LDE2ICs0MDYsMTUg
QEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgZnNsX3NhbXN1bmdfaGRtaV9waHlfZmluZF9wbXModW5z
aWduZWQgbG9uZyBmb3V0LCB1OCAqcCwgdTEKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGNvbnRpbnVlOwo+ID4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAvKgo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAqIFRPRE86IFJlZiBNYW51YWwgZG9lc24ndCBzdGF0ZSB0aGUgcmFu
Z2Ugb2YgX20KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgKiBzbyB0aGlzIHNob3VsZCBiZSBm
dXJ0aGVyIHJlZmluZWQgaWYgcG9zc2libGUuCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICog
VGhpcyByYW5nZSB3YXMgc2V0IGJhc2VkIG9uIHRoZSBvcmlnaW5hbCB2YWx1ZXMKPiA+IC0gICAg
ICAgICAgICAgICAgICAgICAgKiBpbiB0aGUgbG9va3VwIHRhYmxlCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICogVGhlIFJlZiBtYW51YWwgZG9lc24ndCBleHBsaWNpdGx5IHN0YXRlIHRoZSBy
YW5nZSBvZiBNLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAqIGJpdCBpdCBkb2VzIHNob3cg
aXQgYXMgYW4gOC1iaXQgdmFsdWUsIHNvIHdlJ2xsIHJlamVjdAo+Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXiBidXQKCndob29wcyEgIEdvb2QgY2F0Y2guCgphZGFtCj4KPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgKiBhbnkgdmFsdWUgYWJvdmUgMjU1Lgo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAqLwo+ID4gICAgICAgICAgICAgICAgICAgICAgIHRtcCA9ICh1NjQpZm91dCAq
IChfcCAqIF9zKTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBkb19kaXYodG1wLCAyNCAqIE1I
Wik7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgX20gPSB0bXA7Cj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgaWYgKF9tIDwgMHgzMCB8fCBfbSA+IDB4N2IpCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgaWYgKHRtcCA+IDI1NSkKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNv
bnRpbnVlOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIF9tID0gdG1wOwo+ID4KPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAvKgo+ID4gICAgICAgICAgICAgICAgICAgICAgICAqIFJldiAyIG9m
IHRoZSBSZWYgTWFudWFsIHN0YXRlcyB0aGUKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
