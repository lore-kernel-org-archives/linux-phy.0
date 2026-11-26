Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698E1606A321
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 12:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aBagSu68;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=io0S+nWD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KiV6xYhLiWIDiknFMA2t/I+IYGvfWHzEOSrJZj4eTa4=; b=aBagSu688h25F+NTkfOrbGTuGd
	hzY+Vw4LnfS8wg68PVTWg9Z40ZNIgxdBIzOqJk5OzKmWL0vCoxZJRO3AeAjv3dMRClbQcJtoC0uMu
	2zqfkJW4LvGJGGiUtxoVopaLodkNHDVol2d6YOE/tXHxwc9H13J6w61ZFfFdJkdLr3X7dEY55zq91
	2rT/5y4G+c+8k3bB6sBz4bdbFVt9lpFwx4IfBRZmfyykdn2mQ6/Gh3QoTzjh5LEM6LBpvvtaJVp63
	dQPkIBLuAjJ4neTqTiUduyna/Jz+1G9LkpOm06wd5Pe/3uf93/lbwenR47tX5JmpSA54MEQip1IlO
	+jGfWYMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWYMP-0000000D7kt-0inC;
	Thu, 26 Nov 2026 12:13:57 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWYMG-0000000D7jf-4BJJ
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 12:13:50 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-492fcbfaa88so4624116f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 04:13:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795695227; cv=none;
        d=google.com; s=arc-20260327;
        b=YWUaHu/1Uco6RhJzwRrUznZGuU++zVydDH4CXLJcmkbaBetBUZ3/VaHeDMIxnMn/fx
         7lOlP25VAo7LpFnSGsPj40hqMvpkHaF7DIm8tE1Gv20nj0uBHqsuQykaqtR4zHoG0O0p
         hCNuALUPmlj5R99RVsnpL11kJICdHC3Sb66bq+ltvme06JA2ccmPZBHo2BLgNOcf/vxK
         PpJQv/SvJzOTgoeF8fTEZwHeLBUXlQpJFOEbByqPfhMZHhraWjg6kMw59Ou1hZWg7FUK
         toxW7P76wnr4imgfe/wYcpeknqpge6ggBqT+NZ7Mgr6OFZBL6OkuK+FGUvTU/uUuZD+X
         eTaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8oQPuCvkPSk5AvgWx1uVWwUGY4FHBPq4s1ADy1aw6U4=;
        fh=QVPeMhE7XpFmZiOn40QAoImVXQp0ZdBad3tVZvwgcDU=;
        b=sn3vfxU5wz6tyXpS/JlSg9BrrrDfd0TFhXxV675KNXqJiwn6Ez9vP8ZE1pXyF29f/W
         rYBgBEHd5JaQVG/gG696fQ2nurorEGoe3sUCVQtWbMM3kv9BW/jvwN/LmOv60i3ZEHdO
         GwocXFTdSpY5uQN4CYpM0h2rB3gtw+9RIcXZsv/Wob6xI1zCrCQg/huqg4TkKkI62qES
         IcJCRrZ6cTRPLxL6lXXl5C3R0+xHrpK5Dj0Uw8wzF0ECR/B4RMrY/TcprcNSZWaiX/Jn
         c4V2378NBIxJhDhEKTG4eBH0p3IizD2beBAfTl/VQh0DuEKjsEKZEae4D2HC/o4oNPQ/
         GasA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795695227; x=1796300027; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8oQPuCvkPSk5AvgWx1uVWwUGY4FHBPq4s1ADy1aw6U4=;
        b=io0S+nWDPFyE5dENgXyr1OVT7GVZ4+YPMXecyhCWO2oZVgrpXA/JY4y+xO9yCj/usK
         jRYCd9giZ4UBCM/b7f39A7xNA9tAPW84Otv4GtYKi+Y13Lr7uwEflgjQe7wde52UjX61
         q0/G0jFLM9UYoUjx99FC/ybgsjRvWiTH4EtfjlH9/PMgyFYmlfXHDJpNpeOf5ET6dvUm
         sCWZSEWCW8cRcN5Y98Z8nIAaG6QRxBefGvyOFM+nwyNquQKQ3mKbvTIAbskfMkU+dO8S
         MPF10NTDQItlAaVeMPXrOKmGIduG0VoGLdXBVDbMhWS3X53ZENqKtNj8cRAnF2Vq9IXL
         oB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795695227; x=1796300027;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8oQPuCvkPSk5AvgWx1uVWwUGY4FHBPq4s1ADy1aw6U4=;
        b=GDUgHabpOyF4Ug+LOW3jB528gSNKQR/Z4jgX7NKFrXETIzXuoiGmzqTjk3Z2zaeoc1
         Sw8jhRO3jhpkQ3fwNpWdwaG6gvrD7ySDWUh+OEb7amJaAAmiZaNvLeRutRytgCsaPi7o
         dYyS3qPbV7XnpmZpVF70rdcP082wnmcKADmlvkgOFuy6/c0dXaocmV/PAJb6GjwUJR/W
         TPga0uozOTVc7KV9MRoI+s96py99vIqVEtEUYAP8JRGK5RgrN4P7F8Q1MgweBwwAYRkq
         rsio3ImR4wehXBnyyQHuFTcYUJ1oljwS3E/gNLTVKOubzloWCeasMKKs6FsjpTyC0+hB
         CJ6g==
X-Forwarded-Encrypted: i=1; AL+hErFXK8C8kZtwbEMO/JCLnBIg97DLXN7tJo+5Risu2b7wsSIEzafyt2u/nK1mYzrrux7ZWwm+ZxkINFw=@lists.infradead.org
X-Gm-Message-State: APuU4Z8aom1WMVfLDHqPWPitl+ybvG1Nk1JuiZyh0G46RnJmAzQvKKXs
	romWUhtRSccio5YHjhuFda78j1M0khxD/RMx+BS+wMqU8YmOYMZiLQIAPL6aArAzzxwjk6LF7+X
	Eqw6HrSgjxGUab0cCZ+mnLHYEoD/vK04=
X-Gm-Gg: AZFdTZcaQ3g0ZcHVeIiFeW7yeMsdLpt7usjEHvDifnCZIKKUSR0zh63MWIlAnOsWnCu
	kKik58ovHcUwbwythkCJyt4hl819w0YtvbK/+TUx7r2TyzPvSEXeHsRHcOAo815JoRAWnAqPGJk
	gOP4WYI/oED+kv3X+wX8UOCJZRTd4e/WEcvyqhW+/ZlqxNJDP7oKUpJhcVs9pgnTtYKw2KbDIzZ
	7f4YkjkUgqITV3hSS3ztnz7+GNYz+bzFPVSl6vjYPyxWzJT7y5Owy5mNEpdyjQS7nqC++LQ3FSm
	aq+QQH9RPkYoj71r/GDR9ku91042JHFWWayPC0X0n/2HIXB+zAuGG7H0iWesYKQwePlFr0+fRUk
	gFIJ1ps3EC8bRErjyQUBSBWEed7uD2KUneuHecGt8qPc8xiUc+iAvtBV6Zv+A6jgJLNHjKaJ9ee
	hpb0So9LtQPvqpEOHddbr5wNyRQ1twAUjqL2BItG5hhEnQouEk0qFXloNR4A==
X-Received: by 2002:a05:600c:6219:b0:4bb:60b1:4409 with SMTP id
 5b1f17b1804b1-4bb88816525mr406462305e9.19.1795695226899; Thu, 26 Nov 2026
 04:13:46 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261102104907.16007-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20261102104907.16007-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 26 Nov 2026 12:13:20 +0000
X-Gm-Features: Aa3M54o554CBQDS46Q5cL_QVod_O_1ZDWVlLVSBjQ9SBzaVxWUHV8HeeuRLzrP0
Message-ID: <CA+V-a8s-GdrW_d1OY42awLqBapVY1LpKbpq_u8ZvGmij_Mnzug@mail.gmail.com>
Subject: Re: [PATCH v3] phy: renesas: rcar-gen3-usb2: Keep OTG VBUS disabled
 until role is known
To: Vinod Koul <vkoul@kernel.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Manivannan Sadhasivam <mani@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Prabhakar <prabhakar.csengg+renesas@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_041349_078927_E4C5AB1B 
X-CRM114-Status: GOOD (  34.80  )
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
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gTW9uLCBOb3YgMiwgMjAyNiBhdCAxMDo0OeKAr0FNIFByYWJoYWthciA8cHJhYmhha2FyLmNz
ZW5nZ0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogTGFkIFByYWJoYWthciA8cHJhYmhha2Fy
Lm1haGFkZXYtbGFkLnJqQGJwLnJlbmVzYXMuY29tPgo+Cj4gT24gT1RHIGNoYW5uZWxzIG9mIFNv
Q3Mgd2l0aG91dCBBRFAgY29udHJvbCwgdGhlIFZCVVMgcmVndWxhdG9yIGlzCj4gYWNxdWlyZWQg
d2l0aCBkZXZtX3JlZ3VsYXRvcl9nZXRfZXhjbHVzaXZlKCkgYW5kIGl0cyBvdXRwdXQgaXMgc3dp
dGNoZWQKPiBieSByY2FyX2dlbjNfZW5hYmxlX3ZidXNfY3RybCgpIHVzaW5nIHJlZ3VsYXRvcl9o
YXJkd2FyZV9lbmFibGUoKSBvbmNlCj4gdGhlIHBvcnQgcm9sZSBpcyBrbm93bi4KPgo+IFRoZSBo
ZWxwZXIgYWNxdWlyaW5nIHRoZSByZWd1bGF0b3IgaGFzIHRoZSBmb2xsb3dpbmcgcHJvYmxlbXM6
Cj4KPiAtIFRoZSBpbnRlcm5hbCByZWd1bGF0b3IgaXMgdW5jb25kaXRpb25hbGx5IGVuYWJsZWQg
YXQgcHJvYmUsIHNvIFZCVVMKPiAgIGlzIGRyaXZlbiBiZWZvcmUgdGhlIHBvcnQgcm9sZSBpcyBr
bm93bi4gSWYgdGhlIHBvcnQgaXMgY29ubmVjdGVkIHRvCj4gICBhbiBleHRlcm5hbCBob3N0IHRo
aXMgY2FuIGJhY2stcG93ZXIgaXQuCj4KPiAtIHJlZ3VsYXRvcl9nZXRfZXhjbHVzaXZlKCkgaGFu
ZHMgdGhlIGNvbnN1bWVyIGFuIGVuYWJsZSByZWZlcmVuY2UgaWYKPiAgIHRoZSByZWd1bGF0b3Ig
aXMgYWxyZWFkeSBlbmFibGVkLCBmb3IgZXhhbXBsZSBieSB0aGUgYm9vdGxvYWRlci4gVGhlCj4g
ICB1bmNvbmRpdGlvbmFsIHJlZ3VsYXRvcl9lbmFibGUoKSB0aGVuIHRha2VzIGEgc2Vjb25kIHJl
ZmVyZW5jZSB3aGlsZQo+ICAgb25seSBvbmUgaXMgcmVsZWFzZWQgb24gdW5iaW5kLCBsZWF2aW5n
IHRoZSByZWd1bGF0b3IgZW5hYmxlZCBhbmQKPiAgIHRyaWdnZXJpbmcgdGhlIFdBUk5fT04oKSBp
biBfcmVndWxhdG9yX3B1dCgpLgo+Cj4gRml4IHRoaXMgYnkgbWFraW5nIHN1cmUgdGhlIGRyaXZl
ciBhbHdheXMgaG9sZHMgZXhhY3RseSBvbmUgcmVmZXJlbmNlCj4gdG8gdGhlIHJlZ3VsYXRvcjog
cmV1c2UgdGhlIHJlZmVyZW5jZSBoYW5kZWQgb3ZlciBieSB0aGUgZXhjbHVzaXZlIGdldAo+IGlm
IHRoZSByZWd1bGF0b3IgaXMgYWxyZWFkeSBlbmFibGVkLCBhbmQgY2FsbCByZWd1bGF0b3JfZW5h
YmxlKCkKPiBvdGhlcndpc2UuIFJlZ2lzdGVyIHRoZSBkaXNhYmxlIGFjdGlvbiBpbiBib3RoIGNh
c2VzLCB0aGVuIHR1cm4gb2ZmIHRoZQo+IHBoeXNpY2FsIFZCVVMgb3V0cHV0IHdpdGggcmVndWxh
dG9yX2hhcmR3YXJlX2VuYWJsZSgpIHVudGlsIHRoZSBwb3J0Cj4gcm9sZSBpcyBlc3RhYmxpc2hl
ZC4gRW5hYmxpbmcgYSBkaXNhYmxlZCByZWd1bGF0b3IgdG8gdGFrZSB0aGUKPiByZWZlcmVuY2Ug
bWF5IGJyaWVmbHkgZHJpdmUgVkJVUyBkdXJpbmcgcHJvYmU7IHRoaXMgY2Fubm90IGJlIGF2b2lk
ZWQKPiB3aXRoIHRoZSByZWd1bGF0b3IgQVBJLgo+Cj4gUmVuYW1lIHRoZSByZWd1bGF0b3IgaGVs
cGVyIHRvIHJlZmxlY3QgdGhhdCBpdCBhY3F1aXJlcyB0aGUgcmVndWxhdG9yCj4gd2l0aG91dCBk
aXJlY3RseSBlbmFibGluZyBpdHMgcGh5c2ljYWwgVkJVUyBvdXRwdXQuCj4KPiBGaXhlczogYjZk
N2RkMTU3NzYzICgicGh5OiByZW5lc2FzOiByY2FyLWdlbjMtdXNiMjogQWRkIHJlZ3VsYXRvciBm
b3IgT1RHIFZCVVMgY29udHJvbCIpCj4gU2lnbmVkLW9mZi1ieTogTGFkIFByYWJoYWthciA8cHJh
Ymhha2FyLm1haGFkZXYtbGFkLnJqQGJwLnJlbmVzYXMuY29tPgo+IFRlc3RlZC1ieTogVG9tbWFz
byBNZXJjaWFpIDx0b21tYXNvLm1lcmNpYWkueHJAYnAucmVuZXNhcy5jb20+Cj4gUmV2aWV3ZWQt
Ynk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFs
Y29tbS5jb20+Cj4gLS0tCj4gdjItPnYzOgo+IC0gQWRkZWQgRml4ZXMgdGFnCj4gLSBBZGRlZCBS
ZXZpZXdlZC1ieSBhbmQgVGVzdGVkLWJ5IHRhZ3MKPgo+IHYxLT52MjoKPiAtIHJlZ3VsYXRvcl9l
bmFibGUoKSBpcyBvbmx5IGNhbGxlZCBpZiB0aGUgcmVndWxhdG9yIGlzIG5vdCBhbHJlYWR5IGVu
YWJsZWQsCj4gICBlbnN1cmluZyBleGFjdGx5IG9uZSByZWZlcmVuY2UgaXMgaGVsZC4KPiAtIERy
b3BwZWQgZW5hYmxlIHBhcmFtZXRlciBmcm9tIHRoZSBmdW5jdGlvbgo+IC0gUmVuYW1lZCBmdW5j
dGlvbiByY2FyX2dlbjNfcGh5X3VzYjJfdmJ1c19yZWd1bGF0b3JfZ2V0X2V4Y2x1c2l2ZV9lbmFi
bGUoKQo+ICAgdG8gcmNhcl9nZW4zX3BoeV91c2IyX3ZidXNfcmVndWxhdG9yX2dldF9leGNsdXNp
dmUoKQo+IC0gVXBkYXRlZCBjb21taXQgbWVzc2FnZQo+IC0tLQo+ICBkcml2ZXJzL3BoeS9yZW5l
c2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jIHwgMzUgKysrKysrKysrKysrKysrKystLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPgpHZW50
bGUgcGluZy4KCkNoZWVycywKUHJhYmhha2FyCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9y
ZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jIGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNh
ci1nZW4zLXVzYjIuYwo+IGluZGV4IGI1YmE3NTE4MDVhYS4uMzQ4MTUwNWRlYTJlIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiArKysgYi9k
cml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4gQEAgLTExMTQsOCArMTEx
NCw3IEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2VuM19waHlfdXNiMl92YnVzX2Rpc2FibGVfYWN0aW9u
KHZvaWQgKmRhdGEpCj4gICAgICAgICByZWd1bGF0b3JfZGlzYWJsZSh2YnVzKTsKPiAgfQo+Cj4g
LXN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3ZidXNfcmVndWxhdG9yX2dldF9leGNsdXNp
dmVfZW5hYmxlKHN0cnVjdCByY2FyX2dlbjNfY2hhbiAqY2hhbm5lbCwKPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBib29s
IGVuYWJsZSkKPiArc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfdmJ1c19yZWd1bGF0b3Jf
Z2V0X2V4Y2x1c2l2ZShzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNoYW5uZWwpCj4gIHsKPiAgICAg
ICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGNoYW5uZWwtPmRldjsKPiAgICAgICAgIGludCByZXQ7
Cj4gQEAgLTExMzMsMTcgKzExMzIsMzUgQEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJf
dmJ1c19yZWd1bGF0b3JfZ2V0X2V4Y2x1c2l2ZV9lbmFibGUoc3RydWN0IHJjYXJfZ2UKPiAgICAg
ICAgICAgICAgICAgcmV0dXJuIDA7Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIGlmIChlbmFibGUp
IHsKPiArICAgICAgIHJldCA9IHJlZ3VsYXRvcl9pc19lbmFibGVkKGNoYW5uZWwtPnZidXMpOwo+
ICsgICAgICAgaWYgKHJldCA8IDApCj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKwo+
ICsgICAgICAgaWYgKCFyZXQpIHsKPiAgICAgICAgICAgICAgICAgcmV0ID0gcmVndWxhdG9yX2Vu
YWJsZShjaGFubmVsLT52YnVzKTsKPiAgICAgICAgICAgICAgICAgaWYgKHJldCkKPiAgICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICAgICAgICAgfQo+Cj4gLSAgICAgICBpZiAo
cmVndWxhdG9yX2lzX2VuYWJsZWQoY2hhbm5lbC0+dmJ1cykpCj4gLSAgICAgICAgICAgICAgIHJl
dHVybiBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoZGV2LCByY2FyX2dlbjNfcGh5X3VzYjJfdmJ1
c19kaXNhYmxlX2FjdGlvbiwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBjaGFubmVsLT52YnVzKTsKPiArICAgICAgIC8qCj4gKyAgICAgICAgKiBBbiBl
eGNsdXNpdmUgZ2V0IG9mIGFuIGVuYWJsZWQgcmVndWxhdG9yIGFscmVhZHkgaG9sZHMgYSByZWZl
cmVuY2UsIHNvCj4gKyAgICAgICAgKiBhZGQgYSBjbGVhbnVwIGFjdGlvbiB0byBkaXNhYmxlIGl0
IHdoZW4gdGhlIGRldmljZSBpcyByZWxlYXNlZC4KPiArICAgICAgICAqLwo+ICsgICAgICAgcmV0
ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgcmNhcl9nZW4zX3BoeV91c2IyX3ZidXNf
ZGlzYWJsZV9hY3Rpb24sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y2hhbm5lbC0+dmJ1cyk7Cj4gKyAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAgICAgICByZXR1
cm4gcmV0Owo+Cj4gLSAgICAgICByZXR1cm4gMDsKPiArICAgICAgIC8qCj4gKyAgICAgICAgKiBU
aGUgcmVndWxhdG9yIGlzIGVuYWJsZWQgb25seSBzbyB0aGF0IHRoZSByZWd1bGF0b3IgY29yZSBo
b2xkcyBhCj4gKyAgICAgICAgKiByZWZlcmVuY2UgdG8gaXQuIERvIG5vdCBkcml2ZSBWQlVTIHVu
dGlsIHRoZSBwb3J0J3Mgcm9sZSBpcyBrbm93bjsKPiArICAgICAgICAqIHJjYXJfZ2VuM19lbmFi
bGVfdmJ1c19jdHJsKCkgc3dpdGNoZXMgaXQgZnJvbSB0aGVuIG9uLgo+ICsgICAgICAgICoKPiAr
ICAgICAgICAqIFRoZSBWQlVTIHJlZ3VsYXRvciB1c2VkIG9uIHRoZXNlIFNvQ3MgaW1wbGVtZW50
IHRoZSAuZW5hYmxlLy5kaXNhYmxlCj4gKyAgICAgICAgKiBvcHMsIHNvIHJlZ3VsYXRvcl9oYXJk
d2FyZV9lbmFibGUoKSBjYW5ub3QgZmFpbCB3aXRoIC1FT1BOT1RTVVBQIGhlcmUKPiArICAgICAg
ICAqIGFuZCBubyBzcGVjaWFsIGhhbmRsaW5nIGZvciBpdCBpcyBuZWVkZWQuCj4gKyAgICAgICAg
Ki8KPiArICAgICAgIHJldHVybiByZWd1bGF0b3JfaGFyZHdhcmVfZW5hYmxlKGNoYW5uZWwtPnZi
dXMsIGZhbHNlKTsKPiAgfQo+Cj4gIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3ZidXNf
cmVndWxhdG9yX3JlZ2lzdGVyKHN0cnVjdCByY2FyX2dlbjNfY2hhbiAqY2hhbm5lbCkKPiBAQCAt
MTE1MSw3ICsxMTY4LDYgQEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfdmJ1c19yZWd1
bGF0b3JfcmVnaXN0ZXIoc3RydWN0IHJjYXJfZ2VuM19jaGFuICpjaGEKPiAgICAgICAgIHN0cnVj
dCBkZXZpY2UgKmRldiA9IGNoYW5uZWwtPmRldjsKPiAgICAgICAgIHN0cnVjdCByZWd1bGF0b3Jf
Y29uZmlnIHJjZmcgPSB7IC5kZXYgPSBkZXYsIH07Cj4gICAgICAgICBzdHJ1Y3QgcmVndWxhdG9y
X2RldiAqcmRldjsKPiAtICAgICAgIGJvb2wgZW5hYmxlID0gZmFsc2U7Cj4KPiAgICAgICAgIHJj
Zmcub2Zfbm9kZSA9IG9mX2dldF9hdmFpbGFibGVfY2hpbGRfYnlfbmFtZShkZXYtPm9mX25vZGUs
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
InZidXMtcmVndWxhdG9yIik7Cj4gQEAgLTExNjUsMTAgKzExODEsOSBAQCBzdGF0aWMgaW50IHJj
YXJfZ2VuM19waHlfdXNiMl92YnVzX3JlZ3VsYXRvcl9yZWdpc3RlcihzdHJ1Y3QgcmNhcl9nZW4z
X2NoYW4gKmNoYQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICJGYWlsZWQgdG8gY3JlYXRlIHZidXMtcmVndWxhdG9yXG4iKTsKPgo+ICAgICAgICAgICAgICAg
ICBjaGFubmVsLT5vdGdfaW50ZXJuYWxfcmVnID0gdHJ1ZTsKPiAtICAgICAgICAgICAgICAgZW5h
YmxlID0gdHJ1ZTsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgcmV0dXJuIHJjYXJfZ2VuM19waHlf
dXNiMl92YnVzX3JlZ3VsYXRvcl9nZXRfZXhjbHVzaXZlX2VuYWJsZShjaGFubmVsLCBlbmFibGUp
Owo+ICsgICAgICAgcmV0dXJuIHJjYXJfZ2VuM19waHlfdXNiMl92YnVzX3JlZ3VsYXRvcl9nZXRf
ZXhjbHVzaXZlKGNoYW5uZWwpOwo+ICB9Cj4KPiAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3Vz
YjJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAtLQo+IDIuNTYuMAo+Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
