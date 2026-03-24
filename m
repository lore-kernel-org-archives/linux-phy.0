Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AB76F54AC0
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 14:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/81MOOx4x4VkYe72tE8jvwGo9xxTiTf4uO8uu5oI4h4=; b=1XBwKG9iRy/Ydg
	EvU8K84SWWnhQi2Y23sdUZWx0MXzB454hhJiULJyG3jtlH80N9Pqa4z5ug5fPATXBHEhgWdOuCDkK
	+4FZdGwkB4tn7GGLJp5udM7Nx+fCKftcY5pzXpd7FPZ8sQfsZ6r8bEtP8h/IxFTw0RmeROUDg9W4a
	cZFsLyyxldhpdHqDSgeEud2/k4nSIP4WajFWKaPmqCiDL3AHXjgTqFFY1U/4erGFXKwPGEEp3IV/l
	aXHd+MpI1ykkDz6E+xx5fJryPWql8/mUCN8ElCorZf/f61AhI5HA6OkldOBDD9rbsdICbM5pzKYBV
	QR44Gi26JSN65OHqwwDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52XH-00000001cMV-3Dkx;
	Tue, 24 Mar 2026 14:15:11 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52XF-00000001cM4-0eqD
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 14:15:10 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-43b467dcf0bso3864026f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 07:15:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774361707; cv=none;
        d=google.com; s=arc-20240605;
        b=RvmUKaGyElhXVipNF2XRRHBMEyWTVnnq1ZTCmq7/FKR7au4aEGPCnzc7vP9FuK4W0q
         ac7oKz6GAJUPuy0mswbBXNm8b5WERUHftluioZsxaqfBqmN71qw92YqZE476VAoQeysd
         JLLrS0dHVq94k86gdJL9Y8KOHifalpMyjPDbHub76INSC7gK/8Dyol8HwCQphuxI7Xur
         7r8bBpn2VizPIfiSPZn/cQVOe06dp9CjeF9jh2G0GEWF2hiwjqOPbvVyCMABIBHHVMcj
         q6kL6s2NRU7WdZf5TFMRC4fgjidJES0vsVzb+Yb+BI8eJQ4gvs39noLZVd4rC+OzgOZr
         rn/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=B2D0D4+AOw6I2d5eSn36/Uu9mBQlJgp6d//ZsHPIQmw=;
        fh=TF2m+EEnkC4+lnvgKaETBqQVaB11oaydwyuoiyu8umc=;
        b=OoPXVeYV788gqbGLpUT/DxRLylf+9Apff8Ut0LFKAlu0KM4ncmnjEVVp3WMz+DiIw5
         h2m2wtDfCoJH76MaUUUAuGU5LH3BmLXvxx+aiLUP1+gFeEanuJr1jNysLelgF4N7vYPn
         V53tp2baen+jiovUneEwcJ+fJDJ/NPSnM+f9UtDGUsTCV/zow3oasUvX5roGW5IVt/On
         IdcrKHowMnmanekn0RpBbsd6yB4UZ5TPEVTWVrJ2rCAngmHqFSySXZt8y/RSSLEOgka1
         HbKXm2rHudIQdfsQ7aYDdLn+/mcvewtadzXHDK2hkd8mIGGNHvDCkD6QYCyvl1mVrUFD
         M2CQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774361707; x=1774966507; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B2D0D4+AOw6I2d5eSn36/Uu9mBQlJgp6d//ZsHPIQmw=;
        b=m+fchGcgwkyn4btNEh8iaYjRJxrnPKKmWmxInzrlsvjeBHDxSWxWwNab5AsQOqcILe
         5lty78UoWixP9VxVCmRxI3VHJJdF8UTDgDF9p+6UVcC6bT3zmZZxg/zLxuSESr0U96WF
         NPyFZtrGKqi17Q+hWGU8r5vaqJ0G2J3+fyczlana+cwv0KpO6OU73jknEcUGvwU/k3SR
         EC8XqW8kSD/msTDs2KtLN7tykZn6O67rcJTQyuCQLKUxEYQMq0DeYmqppVwjlhS9CxD8
         C8nvyHJLUHL9hXjBwycSouqpiJq8YhHwF0+tSAg1dyn0Fmdn5FWf6TpYHN2yYWezqvP/
         tCXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774361707; x=1774966507;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B2D0D4+AOw6I2d5eSn36/Uu9mBQlJgp6d//ZsHPIQmw=;
        b=YAJRpFo4mvXra0g4aF1CiPv8XgEXj+41oZpMGjsSTigUJ6NlsDc+1HdWnKeybQ+k5Z
         M8I63WbG6+ktH8kSy+6rJzOAcHKfHCeJagXWelCAaMBj+4wsGdWnBFdennsnsOrrtPHh
         3xgW7lU4ljSnj0A3D1/GVrNYLtrPjYZjoaUx4M6p8jd17mvEH9tJMo6N6RmlqSYW0saK
         yKk1K5bJHs3isOYxVbskgDjR1iiRlkjFdzg0j7rDQEBrvxXfofxdWl+AFB11Sm/KzQ6A
         AX98o0IEXGJkOFwvJS+GIfIMA3gePXc07oQGRZf2VaiuG39AsXx+ZA7TwI0ZnHtrXx3q
         Pb1g==
X-Forwarded-Encrypted: i=1; AJvYcCX6cJ2zkm7/k5aZKR5HKAT/Jwkzhps0BM0sAXiWixokoBLBS79D15SRYDDKIZR4BuHejAHAwIFHwG8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzh1fYQpy8o1dyXvEpDFCFUp19qpOyHHPKi5LMw6C3PoMa2ylN0
	Cz0Y+rYhnUYGod5Szi13SM1VgEsKNUgnG1Y4EwX6921Av4y1qp0zig/MWvXTazGmCSapqFtzp9o
	ef5TxeiML5mBmda4ccN0DolHrwG5KNt8=
X-Gm-Gg: ATEYQzzDH81uUziJnCEFQqCtaFI6kHtnU0lGDEt2HwyI6+j+U6xwmtizjBvA+47Pc1Z
	SZ64zGWDX+BhzKusnv9zmvi6Mxh0kRRS5OeFytUkPlpl140ZShH5CDaDQ9EF6DJO0e/Ow3b96uN
	jr+QDkm3VPUGuOviULWtYYeqqYH0iBj/t4vRYbTqJ5gOmUCpEybLrpNED5xhJb1h6IyvjPLxXaQ
	o23X0MsXvDHRbItbaUptCukiPF3811zcsr4POC3MLMOtq3xjl8KWVxuBZ3TIQrvc6TkIXv8Do/u
	gKtR34Q0niEDh8siPG6I1+waP1Ff6UVNxgB3kIavbBpyNNqbRevG3m0r+tge82Fh+Lx2aw==
X-Received: by 2002:a5d:5c8a:0:b0:43b:7481:f899 with SMTP id
 ffacd0b85a97d-43b8052efcbmr6038979f8f.7.1774361705907; Tue, 24 Mar 2026
 07:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <20260324121608.3444943-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdV_94xOmqRqDKW_e740ckmRoyW+oaHvorphNg27JNKUrw@mail.gmail.com>
In-Reply-To: <CAMuHMdV_94xOmqRqDKW_e740ckmRoyW+oaHvorphNg27JNKUrw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 24 Mar 2026 14:14:39 +0000
X-Gm-Features: AQROBzBUPNwZp5gKyz8Dv35PHiHje_gQgwLV9LKjrD1-LD60-apIs2rcFkO59Dg
Message-ID: <CA+V-a8t+eH-40xRZOS1zvme3Nubj5b12M0qkTAiFVrswZX_omA@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Simplify ID/VBUS detection logic
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Pavel Machek <pavel@nabladev.com>, linux-renesas-soc@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_071509_220145_52A82500 
X-CRM114-Status: GOOD (  16.61  )
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

SGkgR2VlcnQsCgpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuCgpPbiBUdWUsIE1hciAyNCwgMjAy
NiBhdCAxOjA14oCvUE0gR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4g
d3JvdGU6Cj4KPiBIaSBQcmFiaGFrYXIsCj4KPiBPbiBUdWUsIDI0IE1hciAyMDI2IGF0IDEzOjE2
LCBQcmFiaGFrYXIgPHByYWJoYWthci5jc2VuZ2dAZ21haWwuY29tPiB3cm90ZToKPiA+IEZyb206
IExhZCBQcmFiaGFrYXIgPHByYWJoYWthci5tYWhhZGV2LWxhZC5yakBicC5yZW5lc2FzLmNvbT4K
PiA+Cj4gPiBSZWFkIHRoZSBVU0IyX0FEUENUUkwgcmVnaXN0ZXIgb25jZSBpbiByY2FyX2dlbjNf
Y2hlY2tfaWQoKSBhbmQgcmV1c2UKPiA+IHRoZSB2YWx1ZSBpbnN0ZWFkIG9mIHBlcmZvcm1pbmcg
bXVsdGlwbGUgTU1JTyByZWFkcy4KPiA+Cj4gPiBTaW1wbGlmeSB0aGUgcmV0dXJuIGxvZ2ljIGJ5
IGNvbXBhcmluZyB0aGUgSURESUcgYW5kIFZCVVNWQUxJRCBiaXRzCj4gPiBkaXJlY3RseS4gVGhp
cyBwcmVzZXJ2ZXMgdGhlIGV4aXN0aW5nIGJlaGF2aW91ciB3aGlsZSBpbXByb3ZpbmcgY29kZQo+
ID4gY2xhcml0eSBhbmQgYXZvaWRpbmcgcmVkdW5kYW50IHJlZ2lzdGVyIGFjY2Vzc2VzLgo+ID4K
PiA+IFJlcG9ydGVkLWJ5OiBQYXZlbCBNYWNoZWsgPHBhdmVsQG5hYmxhZGV2LmNvbT4KPiA+IENs
b3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2FjSlYtWHEtMnVxX0pGTW5AZHVvLnVj
dy5jei8KPiA+IFNpZ25lZC1vZmYtYnk6IExhZCBQcmFiaGFrYXIgPHByYWJoYWthci5tYWhhZGV2
LWxhZC5yakBicC5yZW5lc2FzLmNvbT4KPgo+IFRoYW5rcyBmb3IgeW91ciBwYXRjaCEKPgo+ID4g
LS0tIGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+ID4gKysrIGIv
ZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+ID4gQEAgLTMxNCwxMyAr
MzE0LDE0IEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2VuM19pbml0X2Zyb21fYV9wZXJpX3RvX2FfaG9z
dChzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNoKQo+ID4gIHN0YXRpYyBib29sIHJjYXJfZ2VuM19j
aGVja19pZChzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNoKQo+ID4gIHsKPiA+ICAgICAgICAgaWYg
KGNoLT5waHlfZGF0YS0+dmJsdmxfY3RybCkgewo+ID4gKyAgICAgICAgICAgICAgIHUzMiB2YWwg
PSByZWFkbChjaC0+YmFzZSArIFVTQjJfQURQQ1RSTCk7Cj4gPiAgICAgICAgICAgICAgICAgYm9v
bCB2YnVzX3ZhbGlkOwo+ID4gICAgICAgICAgICAgICAgIGJvb2wgZGV2aWNlOwo+ID4KPiA+IC0g
ICAgICAgICAgICAgICBkZXZpY2UgPSAhIShyZWFkbChjaC0+YmFzZSArIFVTQjJfQURQQ1RSTCkg
JiBVU0IyX0FEUENUUkxfSURESUcpOwo+ID4gLSAgICAgICAgICAgICAgIHZidXNfdmFsaWQgPSAh
IShyZWFkbChjaC0+YmFzZSArIFVTQjJfQURQQ1RSTCkgJiBVU0IyX0FEUENUUkxfVkJVU1ZBTElE
KTsKPiA+ICsgICAgICAgICAgICAgICBkZXZpY2UgPSAhISh2YWwgJiBVU0IyX0FEUENUUkxfSURE
SUcpOwo+ID4gKyAgICAgICAgICAgICAgIHZidXNfdmFsaWQgPSAhISh2YWwgJiBVU0IyX0FEUENU
UkxfVkJVU1ZBTElEKTsKPgo+IFBlcmhhcHMgY29tYmluZSB2YXJpYWJsZSBkZWNsYXJhdGlvbnMg
YW5kIGFzc2lnbm1lbnRzPwo+IFRoZSAiISEiIGlzIG5vdCBuZWVkZWQgd2hlbiBhc3NpZ25pbmcg
dG8gYSBib29sLgo+CkFncmVlZCwgSSB3aWxsIGFkZHJlc3MgaXQgYW5kIHNlbmQgYSB2Mi4KCkNo
ZWVycywKUHJhYmhha2FyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
