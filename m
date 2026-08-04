Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB932C55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 14:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeoKQHudtDb0P3pLIhK5frafunDvAqEHVaqhmPSEtQc=; b=TaplSuKQqkjhex
	JMinn7NQlukLMdZV+th4NAKMsrWz80X9I1xNdcRUJIooXeTLycwZ5QETiSMBURsFMWgv2vcF/4H8X
	Snc07d7+65zHdaB9H8w8biamM5T1URKXEMNBSMXwCACSybp1ylpXLqxEwnGShdNgekUK1qr7olCX1
	N35/nrTFP/iooSIpau+XK6k1JgAwGj1VAtbwTqo0BAYej3AY7jWQ+oJjAQlxNFAkGavfZbTik3SWY
	iN2w+Ur2YEwh/N/Xqje2tJlQYdiYEVWqta0j+qbTVZ6lag6/7mYcAWIohAR2r1B3FfMd2UZAasOnF
	ifQshhjaI3snPpENZ7Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrGIm-000000026LG-1W8s;
	Tue, 04 Aug 2026 14:39:32 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrGIj-000000026K8-2nCC
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 14:39:30 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-caf45fc5202so3308747a12.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 07:39:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785854369; cv=none;
        d=google.com; s=arc-20260327;
        b=WcQFRK3p8py51gnDODEG79MygW+6oIskKGeRjl7zB2yVWaF94ZPIb5sGaIyjQCxY/O
         1jv0NerGl8q5v/6E+PevZ4qwaajq78NXIgfiSDw6ZgxPfLB76WLB1VaijG4ZwA/Gg2gR
         OOG0OZgMagvUwsumEBq3IZOtT4E6P21nTmDoojZQCi72kMN1W7Pg/5tDcQf+wJWkk2u5
         j4xNTjmCErTcKmHOorLxTGLk8WvAwxgx+BZVKBoBJIqB4ZACFcTm6Q8K3q+IJXv4ieGM
         YnlYXUbJbQE+IXJGSbBqm9DR3gm58VQHhvFcxNV5Bbw2I3f4BNb1pwZcxi3ZfW/OsUHd
         ncPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bMjTSFpuZjUC9lqavTVveIP8dKLNYf4jxafs2Cnojt8=;
        fh=VAMF1wYsiWetXpdRuIT4uaHspkz9mR3e/AX6y+Xen5g=;
        b=ISo5oAmZUva+hZti3R0XBZgf8LeVQp9Kes1RTy/gGKDIRyZa5Fwq2jg5z46rid5aJv
         3wtjPBXznkewmpKENYZkkuNpsJaLB4zaUNFGNxmIQCgKwfYUvB1Gbj7Wi86XxN7IIRBu
         b8PGtkjQX+tE45MTHKVuOPKvjlQgfMhMbgfC8H7ilhIwgwOlOY6ASh7lEqrucEfwB5qX
         W3oBWecs+cxcQu6F3MKDGdV6TUcnRw+KYgHkpD+cm0GZo8Ke0AQSk6PPpAN/Jrjq6xBB
         XY04kvWqBzdFlaIpNzZorTyjyyjHQduggMqXjaLv42sQUjAIC7C2Ho8qZyBDtaVJjPag
         RarQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785854369; x=1786459169; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bMjTSFpuZjUC9lqavTVveIP8dKLNYf4jxafs2Cnojt8=;
        b=QoaYiUxnAKxDyD8XfFklZRjNi+GU7kOFB8wUN2FIPpTdXqLdV9f5Fj3XtNH8gze9eH
         RmlOjynM3xRJ8/2O7WngBa0iR/kx0CRetl0/x26rJRCJwgV/Uqzz3H2Ky0tC4N7SN3Z5
         jSWANrajZ5WXbPRRuTZLwpq2enOczqVzjXZ/nA5bhFWZ0N9Sx+7WsLNaAfcK2nboukfs
         dSOO+PMOJXiOHryM0mL9HRrkDvQM3C6b9pq4QsCDEebUPG9bSKpqmFZeoZuFJ7cLwV2K
         nl/lVbLWu/x8K3Yb32MxqcVV+WRD/DcwRHtjQ7RuopuPeivd8dD7GSH6eVGaQdqeHb/w
         LNWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785854369; x=1786459169;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bMjTSFpuZjUC9lqavTVveIP8dKLNYf4jxafs2Cnojt8=;
        b=TxfS9ddDu6jfj5IwU0vtY3tfeOEC66zWkLtCRbM7x6uhNv+Id+Hli4vxo18pCob+UN
         WmL5WcY6w7a8y1r1CW4Y7gDCXHyz7DdhelD0AhXWYsRSVWF5bQv7hvA6OTp+U2eWIRgZ
         znn5PDICyL76diRt/d6/mXvnuzjRHnbRZ7TzSiFRaFK9btJ0jvABtA7kNoz5We8Y+lAX
         cbKdpFJgZ0b5yLZdq4Vcb6JVaGq3oVBNOyE8aMQJlujqikGhGfGyoaFv/nwWzE4fqoIs
         2zP631pHxqcVFCIFbfbNuAfItl/9B5VTdOl1s944wBJo6Dk9xffEvZ5v23SZbavDMcuE
         64Wg==
X-Forwarded-Encrypted: i=1; AHgh+RqgUsfO1kOiuTF1TKzH1P/T4iHj/AliLrHaSHQkbiPQD5+xZP1DlLxItPsxunsc1GlkvFWMo3t4kOw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxIfajamG4HEC3Jk674h2+4xZ1j3xVMqhso0i/A2Yt0F0WdIwtF
	9nIf5Rx2IdvEJbkAVIk30vY07MkhF/u38n63soDXEpQXwhLHUytoNfjloIoOdBzLQDhZGxV5UXd
	/ou2HNdSQjcdY3N0CEDdvAvTtJ7nFnR4=
X-Gm-Gg: AR+sD13R1PEKyQF0q5gJQd577cujcDOoaM/kF8g9KwxECwhZN1X+eJbwvKqIoXIDOtL
	9dkjpN/OFq4BFJK9WuvBrFhkvnpoXzAa7tzMuM6vXyjpYrBNm0VlQxtarimBPhch3lBS1xauiuk
	ec7IhO7H3sUY8DKJYMRh02ouV23IevHJ8DADqwg4dj3Dp7287PS898CXq4KZ8XtvulD+NelMr7R
	rMudhgUl3lKQ9B5Y244karKGUjVfKui4zjAgQK/qEqyO4CwGLUtXjpLh87ZWjpC90oocFQIfkZ0
	mbJXL8InhP+TtL8hrfvHar5elJyRgFZb+cxNF3VLTLcfalFT3hw1JCVTtTErSm2fIHBlhad+ox5
	vTHNKcKSOvGEb2dvfxyK2Uf3Ze9rqryKwjw==
X-Received: by 2002:a05:6a21:1f87:b0:3c3:875d:7053 with SMTP id
 adf61e73a8af0-3c92a4d7467mr14184745637.8.1785854368571; Tue, 04 Aug 2026
 07:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260803-rcar-gen2-1-v1-1-4796ea6e76d8@gmail.com> <TY3PR01MB11346B7C0EECC1BFBDCAE069386D52@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346B7C0EECC1BFBDCAE069386D52@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 4 Aug 2026 22:39:16 +0800
X-Gm-Features: AUfX_myLeceJ1yO2UsOeWf_1wS8ekOkk6L1ACbyEAwFFU_FXEvt76wsYaYwuMEM
Message-ID: <CAN4SLj1WbUQRNj17zAq2F=gh20z8ao69JG0NH1mH2_QXEB_8Rw@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen2: Return -EINVAL for out-of-range
 channel reg
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, 
	Ulrich Hecht <uli+renesas@fpond.eu>, "wsa+renesas" <wsa+renesas@sang-engineering.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_073929_707092_301D9629 
X-CRM114-Status: UNSURE (   8.70  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCA5OjI24oCvUE0gQmlqdSBEYXMgPGJpanUuZGFzLmp6QGJw
LnJlbmVzYXMuY29tPiB3cm90ZToKPgo+IEhpIEZlbGl4IEd1LAo+Cj4gQ2FuIHdlIHVzZSBkZXZf
ZXJyb3JfcHJvYmUoKSBoZXJlIGFzIHdlbGw/Pwo+Cj4gQ2hlZXJzLAo+IEJpanUKPgpIaSBCaWp1
LApJdCBtYXkgYmUgYmV0dGVyIHRvIGNvbnZlcnQgdG8gdXNlIGRldl9lcnJfcHJvYmUgaW4gdGhl
IHByb2JlIGZ1bmN0aW9uCndpdGggYSBuZXcgcGF0Y2guCkkgd2lsbCBzZW5kIG91dCBvbmUgbGF0
ZXIuCgpCZXN0IHJlZ2FyZHMsCkZlbGl4CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
