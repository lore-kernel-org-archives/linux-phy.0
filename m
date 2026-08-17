Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ED06C5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 23:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n45GucZff9If/+Hbzh4wZBvaFbQf1EdvaGaKvW919LY=; b=TroMbXvV4zI3js
	oi6JZjPxuB/I3+qCW/Hh3PqOSurBEFhGvMlEL9CHHI4NEaU7QO53Zjb8p71R8LDfvoSbJeWvwqGKP
	xAEmbDG9ZBXnmUfeeLnN6wQUagKutb9WhQ3hTMkGuysu1EOd79QLT36Jg2t9XMaXKxYwiveoX6E9g
	C1GLMg5BgsQx5zpUu+iwWWr+3eS2QD8VKtCoyY+JBVaX5AgDcFyJNXkxL6i9nrYn8B7W5HJCKz1a2
	C9Do4YSDNfRasdkx+3ELzrDv+xmhM+zfdkZ5wxDfNJHeFxAMPt/alsJKA8E2FOV84czMgX5C9Hr5P
	EI3/V0cIXfjLX+Tb3jcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww6hK-00000006yiy-2bZW;
	Mon, 17 Aug 2026 23:24:54 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww6hH-00000006yiH-3kmA
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 23:24:53 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-69a33fb0031so587508a12.1
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 16:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787009090; cv=none;
        d=google.com; s=arc-20260327;
        b=O9k5OWCNFIFRzncwAX/NKn/ZdsRpDeTR2OEeiZ3GE4T3odJrLZHD1u0i/SAH7chz9s
         AX0m+OhCv7x4DESbfR6a8Rx8LveVSNU6Pr5uBbf0ZiHOsB3yPmwm6sa7eonvB6VVQ8To
         KnRS9ybGItTJzvfiqKecus2bogWzM2nwOKGgGE2z6Jk8BZL9MR5FPwX/s5w2ryMF6n4R
         wTbRr1aigYvK0rmMV0q8+gPVspuSGpiALcaaPizAxA2hQCbs1pheecKlgaX7E3QqY/V5
         DUlRhMKxOyPwePTj2xzS+9u/DRlrs5uTjfuzYvg9EWehSJqGZoUBW2NinLTMIM0iawuk
         xVow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EIYXnjCAjNr4smxO9uOZzqY0HcNX6do2IlpDo8+jIR4=;
        fh=OdyfCTU9d5v1zEuC3SLZ6cm6FNfVFEOPsu7XeHdOvrk=;
        b=r2f+pbtE++Vx25ErF60IMyX0cWBSvumCKs/PlEa708M/g6J+XxmfCHzQipeWISd3ga
         P4MiGlxQX0iXGLOrxW2cPBBms0NzaQzsX+RmOijfsr7rxpOyGBbW0d5a7IVoYo8NRTDX
         8mNWsdAJuE81rugl5u3xEJisqC3gHr4uiB4rmf8pgTtxMOkLWe6eOTYLqnys0NAruAl3
         yjcuuHyNM2XiNeM8y0xAdHs6UASMxc0XNQTjB142NFfjXPHLQKogsZ3PqUC2D8dob0yx
         cD9uBgYSBfa6DIQTmtO09W5pfiRLl0reQEaaYNKEXaFM/iHmMiMLsn3hrGh8btiNBbpf
         4GWA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787009090; x=1787613890; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=EIYXnjCAjNr4smxO9uOZzqY0HcNX6do2IlpDo8+jIR4=;
        b=J1Ns2/mz73vaA15r2+osYwuOXCqdrw6wdC8Z4K0oltKdWuqg4Yl+7AMWdODCNi4/6Z
         xNsWYGAIZ5WsDE9kKchaj06UnbKH8PuI8V/yFgH+qfv8KSzb6FvXYXeG0a21APAcGNTE
         tB9BTK6zvltV/QXzvtqX+CY4HY1wbhToRmwlu68TDhVaqYHjt31PbiNQiP+vl8Sg0HKq
         6cenOmAuIB8PKdcf352D1D6IXqhjfq6jjbp7yrEtGJJBVkZJK/ocDC3sIvCAFgKSUsjh
         ph4v5Vab2hwNbDsTgTs+gDTrOKQPpAwHtiHsTf6VVwCbJJaWuALKzAN1gad2PcS9+S91
         s7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787009090; x=1787613890;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EIYXnjCAjNr4smxO9uOZzqY0HcNX6do2IlpDo8+jIR4=;
        b=bK+HOg1aT4WD7QbEKPlG1WJkL5BV2/s6pvxSTsaPigQITBm+pA+95uGj6qnGMxDdMH
         YXuJEFId6WbCH/K1dqlBe+Dlqp9YdJdiS8E4feUY4fWfS/xPbdtx3ISy7FKPqaf/TXot
         yndVSHK+jiWZtepSxwPs2tIR5vjs62iKLKIaF46gyVEljm2WYVXmaZ1mDoejciuL8Svj
         T2/lDRK6vJzP6RVkq7gaNhaBJ3rqErGlVoXYlmvxQSkcjK6BV3jqjaMhF7fXXAEQ3DFY
         5SZ8ixs+D/63Es+3f/e8BqMdNef6PijAAwOvShUxbiMxNEyRfPGASt6Z9sFzUMv1DxzU
         nePA==
X-Forwarded-Encrypted: i=1; AHgh+RptvR4K/gu8o2B6OcTZFSPpEE/sh3/3a7IQ1lQpw+zMFwy9247LxaeMce0aX2jZQMTPfNSJKFzVrlc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3FG4N4bx1VI6XZcg1dg3l0qqPfIoJAne1jZWKWhkgXnfwHEa9
	ghyVnoFhyGopuEIAgS8sLRyJKDXiFSb8mtYCesjEICWG1svD4o74cRx6hhUXbmIgkHYjindBx2I
	3CRyJi4EbfLmh3vjQfR7+/ZcjmiEVdPc=
X-Gm-Gg: AR+sD13Dmb2MZJw/oW+Nxlsekx/EvyqhExmkAOdEn6vhhB0IWZZ5MkOIiWmHtSTpqe9
	w9aSem1EqT8zBx0MI3SMCeLlKreNSbEv0KoCXu1XZ8QKEE7xinGyzqegkhoNtcZElKz7guZpYLs
	XnLcSZKjd3y/1a03wSSDMrzG47iul4WTRK8tASuy9kO2lwcFhKiDHFTehSEELYAoGmfZ/2r2tL2
	vc9zd6oGnwhhmqQeUvweIjA/NitUBQotMtOZtZcBajIE/1G2opC8WBeYBV95ikwjnLVfU6zLZYN
	SyFx2QSkXNzmgySMlpiLRZ3nF44Si1i8O3rLp6747fXbnsg8UZ/3DXk=
X-Received: by 2002:a17:907:9403:b0:c1c:4ae9:b935 with SMTP id
 a640c23a62f3a-c212a22e029mr832073766b.3.1787009089753; Mon, 17 Aug 2026
 16:24:49 -0700 (PDT)
MIME-Version: 1.0
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
 <20260818-ti-am33-usb-v1-4-69ac5f92df45@gmail.com> <20260817215828.978C41F000E9@smtp.kernel.org>
In-Reply-To: <20260817215828.978C41F000E9@smtp.kernel.org>
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 04:54:38 +0530
X-Gm-Features: AcwNN1WTyBaZvgcQdpeEh6FbkgnwyFmOSVf8hYf16WKHI_bRxJfpI64Z7g1mdQU
Message-ID: <CAOWyW_4GF6iCzZ6VMbrPtn+gkgQe3tZ0U+WP4S1vJDsGxMYPpg@mail.gmail.com>
Subject: Re: [PATCH 4/7] dt-bindings: usb: ti,musb-am33xx: Convert to DT schema
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, dmaengine@vger.kernel.org, olteanv@gmail.com, 
	robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, vkoul@kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_162451_950215_22571136 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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

T24gVHVlLCBBdWcgMTgsIDIwMjYgYXQgMzoyOOKAr0FNIDxzYXNoaWtvLWJvdEBrZXJuZWwub3Jn
PiB3cm90ZToKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW0xvd10g
VGhlIGN1c3RvbSB2ZW5kb3Itc3BlY2lmaWMgcHJvcGVydHkgYG1lbnRvcixyYW0tYml0c2AgaXMg
bWlzc2luZyBhIHR5cGUgZGVmaW5pdGlvbiByZWZlcmVuY2UgKGAkcmVmYCksIHdoaWNoIHdpbGwg
Y2F1c2UgZGV2aWNlIHRyZWUgc2NoZW1hIHZhbGlkYXRpb24gdG8gZmFpbC4KYW55dGhpbmcgdGhh
dCBlbmRzIHdpdGggYml0cyBpcyBhbHJlYWR5IGRlZmluZWQgc28gbm8gbmVlZCBmb3IgJHJlZiwK
dGhlcmUgd291bGQgYmUgd2FybmluZyBpZiAkcmVmIGZvciB0aGlzIGlzIGFkZGVkCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
