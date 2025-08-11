Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42628CA0ED1
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 17:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcAN2v6KwyAUTWk7bumWzy81mjjM1VZnWGGi7XfgA9Y=; b=H2DuAM35Mcoe8a
	p5OxRhOZX3hdBEFN6grbs7K2oTXq35sLNWPcJc42jE8A+wLf7Gor3fEA8fikqLUvPUYZ0ZzjXYRBn
	u2F2uF0KWBvzfhpZfH1G/w7kKtJshwtgQkg60UsHeDcVdXdIVS7RSlvkqQg8yjyfqKNTzsElOGhtj
	5VcOev40W9JgD2GPJ/Qx+OTOIkQAD6cIVnDWCgu7mTZmFXR8KFPM4puJfQ8jyC1YUhOk5xu1tjR4Y
	XG2TuYm7MDcyZB9IthwHKaHY3jleTS56VdvZafuQcdj1PCGZ0VMZ+ZTuvbcEZ6OPbaK3EBdfG7sZz
	iweYxgc9luLC6pXOKGWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulWTK-00000008Zj0-40wS;
	Mon, 11 Aug 2025 17:38:10 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulU8p-0000000894j-3F6G
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 15:08:52 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-45a0feae86aso1979675e9.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 08:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754924930; x=1755529730; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b2mT07260j9zQg6uZKIOUV2LzSLtm0K5b/BNFoyA2cQ=;
        b=Jc5/fVg9orIMfwPDfB9JcoXKcM2aW9s/X2dYn0357K6XeIxnL/wn5PHn1qG90eIeeI
         QBd/McOn/ldvZLwN2WuobtQhqJLONvMr++kL3WUekQSU8rqvE12qyaCFwGvbDvx9OtH3
         dnRWaUTnTs9LJurSvCc1NpfkzFBZPMxnmNThidz8rub5ds8iiEPnBgTVCcQjzZmGWoyo
         5kh4bynVGBeVvhnfQEWuDKj3Kc4pSJBCQ5Jctk4gOUTQ1vfxYbM/d3HKEjuH5waEtGmH
         86YjYDk35jj9fQMf51YlctT2UXYpWzm+E2jiQu1vYXAPGQUhJHcliLq6KQ/OsnvyqVZg
         nrsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754924930; x=1755529730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b2mT07260j9zQg6uZKIOUV2LzSLtm0K5b/BNFoyA2cQ=;
        b=SuCrHvieNMNMARim2nLAGE2pIoQfLcxgzDg8s5qj4yd6ip915Jvr4KSyfyI903v8jJ
         G8WF672Vu7G9ObcoTLq5AkEJ/QN3JGzKlZGwpQMBmoKfzkpUE/nWTfjUkh/gVI5cZ6kq
         baaiqJmN8qbF2il5Xy9IJgooMZN2T/Ut22CA0J4G6nuKJ+0el8HbmCxbCVG/WY+Ni53c
         1iISL2pjAFF4NykaJ9Ln4Spyfjv/0wNBLjxdqP5XjPRfR33YKeHsX8eb2B6frIPcu+Rq
         09kGJZjiqTvIYTf9XA+P/XpLIAal2bx+IeAYHRMjvM8p/wzUDL2XEciwvbChZSOBqlcJ
         nhGw==
X-Forwarded-Encrypted: i=1; AJvYcCXXLccxbkPRHYv7yzu7O6gYF+dlB8pXLzU5l6+vYeOould+z2G1junpoXD4RVPeFXARdA49/31wSN4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzNVEpmKSs4pqqD16ym35rgtx/ujsbKpsYfpyBSpzWynnrHBmGY
	eRyK7abm6hb/4rl7XRTNlMIltjQVuX+xzc6wa3z0TIobI6rwR0JakLxACNl10IOU8+flWKvoDdr
	y0jx2yrmTXjdjhDynnVkwDoa03pwR1h0=
X-Gm-Gg: ASbGncuH4zr4XlTGdloO0eTDUvouOo/6EWMM+m7m9+JbnJbOyb8bt7vUBoHitIf9Jp2
	MM6YGJKutyNYbXGs3r72U9wkcQLfUpjFW8852tagMxCOHN9qwc1ZV8v54pmTWyWQCU55ocgm9uM
	/aCMUvbkRuIkVpTxmH5bmYKzXV9eAnym/4phaX0b6F7YtQfIC8TKTJg4s1RgHxliscgIkeqFEKg
	WhYL5Mv
X-Google-Smtp-Source: AGHT+IFPIwhbMGFzwumJFgEWDp5HfmM1oE91YavrIFuKWbHJMtZXc6O18JEPSbJNATNOBkMBfB1aDm8IoJjXYE6ZKLY=
X-Received: by 2002:a05:600c:4ecb:b0:459:d3ce:2cea with SMTP id
 5b1f17b1804b1-45a10b94197mr724745e9.6.1754924929716; Mon, 11 Aug 2025
 08:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250808215209.3692744-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdUWo=hYPWPrweoYn5rFC50aV5EV1xqwFHmLp27GRjEADw@mail.gmail.com>
In-Reply-To: <CAMuHMdUWo=hYPWPrweoYn5rFC50aV5EV1xqwFHmLp27GRjEADw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 11 Aug 2025 16:08:23 +0100
X-Gm-Features: Ac12FXzh41CBAYGJYTtCIB8SAaZtRyhBbjbdQizzy-i4NhoC-8oCDnrAWA1TbFA
Message-ID: <CA+V-a8vW2-YG8=-u3kUcrou+nPVLn2uhE-W+JOHpu9Cahyw2ZQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: renesas,usb2-phy: Add RZ/T2H and
 RZ/N2H support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Conor Dooley <conor.dooley@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_080851_812581_41E01868 
X-CRM114-Status: GOOD (  21.27  )
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

SGkgR2VlcnQsCgpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuCgpPbiBNb24sIEF1ZyAxMSwgMjAy
NSBhdCAyOjM04oCvUE0gR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4g
d3JvdGU6Cj4KPiBIaSBQcmFiaGFrYXIsCj4KPiBPbiBGcmksIDggQXVnIDIwMjUgYXQgMjM6NTIs
IFByYWJoYWthciA8cHJhYmhha2FyLmNzZW5nZ0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gRnJvbTog
TGFkIFByYWJoYWthciA8cHJhYmhha2FyLm1haGFkZXYtbGFkLnJqQGJwLnJlbmVzYXMuY29tPgo+
ID4KPiA+IERvY3VtZW50IHRoZSBVU0IyIFBIWSBjb250cm9sbGVyIGZvciB0aGUgUmVuZXNhcyBS
Wi9UMkggKHI5YTA5ZzA3NykgYW5kCj4gPiBSWi9OMkggKHI5YTA5ZzA4NykgU29Dcy4gVGhlc2Ug
U29DcyBzaGFyZSB0aGUgc2FtZSBQSFkgYmxvY2ssIHdoaWNoIGlzCj4gPiBzaW1pbGFyIHRvIHRo
ZSBvbmUgb24gUlovRzJMIGJ1dCBkaWZmZXJzIGluIGNsb2NrcywgcmVzZXRzLCBhbmQgcmVnaXN0
ZXIKPiA+IGJpdHMuIFRvIGFjY291bnQgZm9yIHRoZXNlIGRpZmZlcmVuY2VzLCBhIG5ldyBjb21w
YXRpYmxlIHN0cmluZwo+ID4gYHJlbmVzYXMsdXNiMi1waHktcjlhMDlnMDc3YCBpcyBpbnRyb2R1
Y2VkLgo+ID4KPiA+IFRoZSBSWi9OMkggU29DIHVzZXMgdGhlIHNhbWUgUEhZIGFzIFJaL1QySCwg
c28gaXQgcmV1c2VzIHRoZSBSWi9UMkgKPiA+IGNvbXBhdGlibGUgc3RyaW5nIGFzIGEgZmFsbGJh
Y2suCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTGFkIFByYWJoYWthciA8cHJhYmhha2FyLm1haGFk
ZXYtbGFkLnJqQGJwLnJlbmVzYXMuY29tPgo+ID4gQWNrZWQtYnk6IENvbm9yIERvb2xleSA8Y29u
b3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+Cj4KPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCj4KPiA+
IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcmVuZXNhcyx1c2Iy
LXBoeS55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3JlbmVzYXMsdXNiMi1waHkueWFtbAo+Cj4gPiBAQCAtMTIwLDYgKzEyNiwxNyBAQCBhbGxPZjoK
PiA+ICAgICAgICByZXF1aXJlZDoKPiA+ICAgICAgICAgIC0gcmVzZXRzCj4gPgo+ID4gKyAgLSBp
ZjoKPiA+ICsgICAgICBwcm9wZXJ0aWVzOgo+ID4gKyAgICAgICAgY29tcGF0aWJsZToKPiA+ICsg
ICAgICAgICAgY29udGFpbnM6Cj4gPiArICAgICAgICAgICAgY29uc3Q6IHJlbmVzYXMsdXNiMi1w
aHktcjlhMDlnMDc3Cj4gPiArICAgIHRoZW46Cj4gPiArICAgICAgcHJvcGVydGllczoKPiA+ICsg
ICAgICAgIGNsb2NrczoKPiA+ICsgICAgICAgICAgbWluSXRlbXM6IDIKPiA+ICsgICAgICAgIHJl
c2V0czogZmFsc2UKPgo+IEJ5IHRoZSB0aW1lIHRoaXMgaGl0cyB1cHN0cmVhbSwgeW91IHdpbGwg
cHJvYmFibHkgaGF2ZSByZXNldCBzdXBwb3J0Cj4gZm9yIFJaL1QySCBhbmQgUlovTjJILCBzbyB5
b3UganVzdCBhZGQgcmVuZXNhcyx1c2IyLXBoeS1yOWEwOWcwNzcKPiB0byB0aGUgY29uZGl0aW9u
YWwgc2VjdGlvbiBhYm92ZT8KPgpCdXQgdGhlIGFib3ZlIHdpbGwgc3RpbGwgYmUgdHJ1ZSBhcyBN
UkNUTEEvRS9JL00gcmVnaXN0ZXIgZG9lc24ndCBoYXZlCmFueSBiaXRzIHRvIHJlc2V0IFVTQntQ
SFl9IG9yIGFtIEkgbWlzc2luZyBzb21ldGhpbmc/CgpDaGVlcnMsClByYWJoYWthcgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
