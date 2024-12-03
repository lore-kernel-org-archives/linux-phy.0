Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19837E74AC3
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 16:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+Tkx7/G84uEsihV5frS+AyjNTVhIg+3NifJVImCDA4=; b=D7NOMNcQyW2Ss4
	WFY+15aZ8a8tOEEJM6A4KjRwuArc9ui4om4xv569NJFvAxUzJ20fcANfd9aUAMj9H3PlGFkfVNW7t
	Cjt9R5cgmjvMzts8U8CYO5+iWWsPB4PdUHKxi5AYyB0UxoFAl4O+wb6kHDl/z184Jc1Yc+qlVuHx1
	3oxmL2ILiK5Gk9FckDflWCH1b5An/RkDf21sDDe6e7yK/UEaSS1mJZs+1zjVnOfzmhF5kUP5B258H
	DNDA1DwLAbR0Yt9JaDi4MZ6T7Fobm8okKRkIROeHNNRUbKfe05o0Hj2veM2arBerPr0Z7SczOEFz0
	FnAc3qHOUTfZTHftp9oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIWBn-0000000AB0A-3R90;
	Tue, 03 Dec 2024 16:55:55 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIW7p-0000000AA70-3Hwy
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 16:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1733244709;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g9lt53vsuFinYfQPPMtO0BSGgjTyTuTC1kRLkpQGt78=;
	b=R3v60FEgfZRbsOu5UlLd9X76s9uDrc0pFfVtrWA4L/kqSIy37ESuHFcKGywt5cbW7KcTvc
	m4DgO+EcDyjfqkii/tgsc2fPbe9Ffhyg3hSZOMd49yr+EXTh2iDvQYZhhSjKJN2p5sxlie
	gbPQkqXg00HJ2d6v2SH5GYUWqqgyhqQ=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-386-JgfgMyehNWSHvVRYlErJ3Q-1; Tue, 03 Dec 2024 11:51:44 -0500
X-MC-Unique: JgfgMyehNWSHvVRYlErJ3Q-1
X-Mimecast-MFC-AGG-ID: JgfgMyehNWSHvVRYlErJ3Q
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5ec1c46df37so677972eaf.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 08:51:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733244704; x=1733849504;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g9lt53vsuFinYfQPPMtO0BSGgjTyTuTC1kRLkpQGt78=;
        b=NIlcuA4sqpKr8GtJdMv2oFaBpicHHxDDnIAAAQe5hY5VBDU+bpSbFl16KMK6apI2+1
         njJo7MKjR8sEvr048HhmbPg2FNXDyldYiGb+nmt6DAZf5ZMvwMnhjzYPbldxET2yGQ77
         nDba0fhYjPKYHaZqvCV9gj1gdhr1coPd8pngrzw3eRfHMycUEhtnz450Qd4F7Lw8AH0o
         TWpbfvhUFnAmDxUsyTK2aC1vAIeKa6AdXBI9SeimAhzEu+QwSbo7zUWUHr0m86i9hnyN
         5gwfcQJqYpMl41gA1v40DSkRDxnCbxfsLRRI/Am3xlHbjE017eHnMng9ZUhIY+T1eG39
         XLnA==
X-Forwarded-Encrypted: i=1; AJvYcCUO3qMVx741TnU0Z5hgZvfOY5ZDrSKA71sF1DKDdEqVhX4E35h4u3RliEJzjGeL1FS+2U6ILovvVr4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1tBCapksO+sbnE/5VVRHNEswaM+/+A1s2mw/uSx6aTPsvDbtr
	GrO0xAxsvsoGa0TARoc0ZePGVwLjVwwl9EB0ErxccuCw463YU4Fn9s24c5afaluax0s/XIAVyTM
	/aWUNAPDc/beVUm/8x6yUEtqoDfDAyjXt/aCObfT3LggVRhbshlCEzUFK4dXGeiQLn+TOkdrp9R
	wxXZUCRA8+DkEwANDgk5QzeIAlsywaGZPaW28jIw==
X-Gm-Gg: ASbGnctVtWx9mgpBfofSoKjHESjV8I90s/meVMVqGMMv/dvMxTHaiA1LbUj4VrD2gb+
	WYVEi9DnpCti4OqjabpJKhYQyD8bn6g==
X-Received: by 2002:a05:6870:b526:b0:29a:ea3b:a307 with SMTP id 586e51a60fabf-29e88852dedmr743620fac.10.1733244704078;
        Tue, 03 Dec 2024 08:51:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFzceRUoX3DvEQufLmwTQCJTEwNRUOUtXnGjhdEjvUwvKuNpVXgMIpmPswi4qlPBGvFF8FPGxubxqQ5PeUM7BE=
X-Received: by 2002:a05:6870:b526:b0:29a:ea3b:a307 with SMTP id
 586e51a60fabf-29e88852dedmr743612fac.10.1733244703832; Tue, 03 Dec 2024
 08:51:43 -0800 (PST)
MIME-Version: 1.0
References: <20240615093433.3659829-1-s-vadapalli@ti.com>
In-Reply-To: <20240615093433.3659829-1-s-vadapalli@ti.com>
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Tue, 3 Dec 2024 17:51:33 +0100
Message-ID: <CALE0LRssDPn2UAscbCdx2UsO3cQYuYHpBsdGxEWje9LCf4Hr4w@mail.gmail.com>
Subject: Re: [PATCH 0/2] Enable PCIe Multilink and USB support in Cadence
 Torrent SERDES driver
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: vkoul@kernel.org, kishon@kernel.org, sjakhade@cadence.com, 
	rogerq@kernel.org, thomas.richard@bootlin.com, robh@kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, srk@ti.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0GjagPCVETITfBmC0_5vVvzbEcw7iY7uPwxbuTmGCpI_1733244704
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_085149_901275_6FB686D8 
X-CRM114-Status: GOOD (  13.13  )
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

SGkgU2lkZGhhcnRoLAoKT24gU2F0LCBKdW4gMTUsIDIwMjQgYXQgMTE6MzXigK9BTSBTaWRkaGFy
dGggVmFkYXBhbGxpIDxzLXZhZGFwYWxsaUB0aS5jb20+IHdyb3RlOgo+Cj4gSGVsbG8sCj4KPiBU
aGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHN0YW5kYWxvbmUgUENJZSBNdWx0aWxpbmsgY29u
ZmlndXJhdGlvbgo+IGFsb25nIHdpdGggdGhlIHN1cHBvcnQgZm9yIFBDSWUgTXVsdGlsaW5rICsg
VVNCIGNvbmZpZ3VyYXRpb24gaW4gdGhlCj4gVG9ycmVudCBTRVJERVMgZHJpdmVyLgo+Cj4gU2Vy
aWVzIGlzIGJhc2VkIG9uIGxpbnV4LW5leHQgdGFnZ2VkIG5leHQtMjAyNDA2MTMuCj4KClNlZW1z
IHRoYXQgdGhlc2Ugc2VyaWVzIGRpZG4ndCBsYW5kLCBJIHRoaW5rIHRoZXkgYXJlIHN0aWxsIHJl
cXVpcmVkCmZvciB0aGUgQU02OS1TSyBib2FyZD8gVGhlcmUgaXMgYW55IGNoYW5jZSB0aGF0IGl0
IGNvdWxkIGJlIHJlYmFzZWQKYW5kIHJlc2VuZD8KClRoYW5rcywKICBFbnJpYwoKPiBSZWdhcmRz
LAo+IFNpZGRoYXJ0aC4KPgo+IFN3YXBuaWwgSmFraGFkZSAoMik6Cj4gICBwaHk6IGNhZGVuY2Ut
dG9ycmVudDogQWRkIFBDSWUgbXVsdGlsaW5rIGNvbmZpZ3VyYXRpb24gZm9yIDEwME1Iego+ICAg
ICByZWZjbGsKPiAgIHBoeTogY2FkZW5jZS10b3JyZW50OiBBZGQgUENJZSBtdWx0aWxpbmsgKyBV
U0Igd2l0aCBzYW1lIFNTQyByZWdpc3Rlcgo+ICAgICBjb25maWcgZm9yIDEwMCBNSHogcmVmY2xr
Cj4KPiAgZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMgfCAyNzYgKysr
KysrKysrKysrKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjU3IGluc2VydGlvbnMoKyks
IDE5IGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjQwLjEKPgo+CgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
