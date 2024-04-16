Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C109C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 12:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZH1/pTMWcW/02OzuejMUKyw0P147sAwvXMD8sPP+V0=; b=aMR4MpSVtQi2cn
	Zle4QQ1E6SZQPGaT4+vW1kxi43mK6qatRBF+0MKWLZQeaetyZqYIcTlgr5wyLVf0T+ok49mmrpCVc
	GCJ5Nux3y4nzZaMznxUK+qRypEGKRhq/7oD434k1zd+CZIDM/U/3FanxARWUQiWYKY1akwF2jMdG/
	nbozLyMe22Xawm503U//3IjT+QTAG4V4SyfsOquLQRs39IG6S6T0E+HSO12cz+Pm3x1Ajpcx+8QN5
	vhzrx2OyE/iG3EBtfWsWi+/pSo0L1EsO7m6YuCnk5LHkqb20R8BzNGtZiXCqB4Ao9ygVJow0wQyxV
	w8qE0+eW/UhqvqiPG0aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhhT-0000000C5M2-0V2J;
	Tue, 16 Apr 2024 12:14:11 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhhQ-0000000C5Kl-3k2x
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:14:10 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-5aa400b917dso2805192eaf.0
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 05:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713269646; x=1713874446; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z6x8KfkMeFuCLUkF0VuQt50edEuiXuMJGbYVUcWevqo=;
        b=WzFT9SiwdhOreUKyjpuwKrXGtI5TTYhUOvqikwexNtNnuszPCe6kgSWjnQsILY4ef0
         TZAMleNp5fZ7QebxmjjmlJwJKQT1/pJTQ4dm3b5SHKRKd0Y0XLMDwi6c1wC/qX9W8Wdf
         ZdqDR+ksvDRYg5y6YBnrRxteV/UiBxLGFvoAIhmeVowW/63SagoExGJ3ZD156sLgEdwO
         03KjDiug2WkZ82zKy8F20kSDNDpsjk9KOfsNKpzpFFvQw17fauJ7uHIGDBzCoSIm6m0e
         yI2sez8wEr4yk5Z0PkW0LTWjFys3H8jHKWbW+kIzJrpMaE6SOoWtBIZzXXTuyaono9Wo
         oDLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713269646; x=1713874446;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z6x8KfkMeFuCLUkF0VuQt50edEuiXuMJGbYVUcWevqo=;
        b=ViNSef6zoqjgWWRUZu9V/zP0KXTe6HM2krGo2VxMDIHOs2EFdObe89U+H/q/oZ5dfW
         bp7RsJM2LErKJkwe9hrpBjvuuWuZl/hKAlN+x2GsexdmEgztcvH2jB0K8KnmHocY/Yqa
         XKr1Dhm4JlpMfY76Eui6NtXvq5vwQTTDmaTowtwdBeEccJzIzlLTx9+ZmJtV86St0kDJ
         8Iw0HMaoBpt+CwrzxaGd+pVfZsnTtkGUxCZdHmjD38q07lWiS9t/ShxcpjUyMT+ixIoG
         J35xTIWqdzmRU68NVfK79zbC9ipd1bMJxlt5ee2FBmHPZh8z0tmYLDTOEmhqUmMIFYuc
         6QrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkyuUNAOz+fhealIJfZjuwsGjPHagAnrmHCkWaUUc6sSKBwG3WqDMJQcMThUdYnS1b/mylO5oLlAKopxLFgSPT9BFPZniQueadqkbVbA==
X-Gm-Message-State: AOJu0YyhqGbzJuRE8HB+fDVi8yevV3GRQzuNs6H+YHtzY2+WXhrngI21
	oBW4PGeqvcwGsb8zvWDgg1vD9Hiv6++bj5cDHcN9ilqGG7CR4rrhiox8LhJTBZZWVustXihFcoI
	TVDZLAzdsGSmYtCbrtnWMCGT2drMiH8t+PRgi5A==
X-Google-Smtp-Source: AGHT+IHjbw9BdGe0LBffamuGVcO3Fjs/dxkO1OlPwbcLBOwnYZIDIIIMJZvaH9S0UdI3wP+pcdkx10/t2jWsgTG3mgE=
X-Received: by 2002:a4a:9893:0:b0:5ac:9fc0:cc6a with SMTP id
 a19-20020a4a9893000000b005ac9fc0cc6amr6760168ooj.4.1713269645676; Tue, 16 Apr
 2024 05:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-7-peter.griffin@linaro.org> <560e9a5b236728f62be4bfd8df187071c4bffb23.camel@linaro.org>
In-Reply-To: <560e9a5b236728f62be4bfd8df187071c4bffb23.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 13:13:54 +0100
Message-ID: <CADrjBPois-nLGkNdXRp9SF2t4xv1fr4MvSK7yT-7GA+QwkA2NA@mail.gmail.com>
Subject: Re: [PATCH 06/17] arm64: dts: exynos: gs101: Add the hsi2 sysreg node
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_051408_938617_3E20E5E8 
X-CRM114-Status: GOOD (  16.51  )
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

SGkgQW5kcsOpLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKT24gRnJpLCA1IEFwciAyMDI0IGF0
IDA4OjMzLCBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToK
Pgo+IEhpIFBldGUsCj4KPiBPbiBUaHUsIDIwMjQtMDQtMDQgYXQgMTM6MjUgKzAxMDAsIFBldGVy
IEdyaWZmaW4gd3JvdGU6Cj4gPiBUaGlzIGhhcyBzb21lIGNvbmZpZ3VyYXRpb24gYml0cyBzdWNo
IGFzIHNoYXJhYmlsaXR5IHRoYXQKPiA+IGFyZSByZXF1aXJlZCBieSBVRlMuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgo+ID4g
LS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0c2kgfCA2
ICsrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9nb29nbGUvZ3MxMDEuZHRzaQo+ID4gaW5kZXggMzhh
YzRmYjEzOTdlLi42MDgzNjljZWM0N2IgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2V4eW5vcy9nb29nbGUvZ3MxMDEuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0c2kKPiA+IEBAIC0xMjY1LDYgKzEyNjUsMTIgQEAgY211
X2hzaTI6IGNsb2NrLWNvbnRyb2xsZXJAMTQ0MDAwMDAgewo+ID4gICAgICAgICAgICAgICAgICAg
ICAgIGNsb2NrLW5hbWVzID0gIm9zY2NsayIsICJidXMiLCAicGNpZSIsICJ1ZnNfZW1iZCIsICJt
bWNfY2FyZCI7Cj4gPiAgICAgICAgICAgICAgIH07Cj4gPgo+ID4gKyAgICAgICAgICAgICBzeXNy
ZWdfaHNpMjogc3lzY29uQDE0NDIwMDAwIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb21w
YXRpYmxlID0gImdvb2dsZSxnczEwMS1oc2kyLXN5c3JlZyIsICJzeXNjb24iOwo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIHJlZyA9IDwweDE0NDIwMDAwIDB4MTAwMD47Cj4KPiBTaG91bGQgdGhl
IGxlbmd0aCBub3QgYmUgMHgxMDAwMD8KClRoZSBkb3duc3RyZWFtIGtlcm5lbCB1c2VzIGEgbGVu
Z3RoIG9mIDB4MTAwMCBmb3IgYWxsIHRoZQpmb29iYXItc3lzcmVnIG5vZGVzLCBidXQgY2hlY2tp
bmcgdGhlIHNwZWNzIGl0IGRvZXMgaW5kZWVkIHNlZW0gdGhhdAp0aGUgbGVuZ3RoIHNob3VsZCBi
ZSAweDEwMDAwIChhbmQgdGhhdCBpcyB3aGF0IHdlJ3ZlIHVzZWQgZm9yIGFsbCB0aGUKb3RoZXIg
c3lzcmVnIG5vZGVzIHVwc3RyZWFtKS4KCldpbGwgdXBkYXRlIHRoaXMgaW4gdjIuCgpyZWdhcmRz
LAoKUGV0ZQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
