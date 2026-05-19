Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2059FCD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 08:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gtHNL97CK4CcXnoPvovC2u7sa/hRgl4fYu6APmJPac=; b=m20eG1OOQgxAY8
	zBbKJDZX/NAMBZLFwph1RITcG+jX/M3jhmAfYJcDjZrocPC3nD/zz3Vtbg8wQgKSG/VEPuStO2hiI
	AYIrnwFxfY03nKbga/Nox1upM5q2AQDq4tYEuGhVZ3BnU/lcYIUB3Lol1Y0/YYN+UNkJkGIFt/msN
	4U477FC+NWamWI5MgJzzMXz0HqGqMUIPMzouwbLHNL1HCB+Dw9jvXKyuOCiY5Bi4RszfHUHpsaQSP
	NNcNBSLLxU0zZaO8FydSyimw8Idsr7EzWeFS1a87Y/y+18QTXBh0Ie6N9odSSMEK74zI6BvMLw7BS
	xE299zrvYuC/ySLRN8Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPGEU-00000000lhA-2zNH;
	Tue, 19 May 2026 08:55:22 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPGET-00000000lf0-0Zog
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 08:55:22 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5a40d02b58bso2435970e87.3
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 01:55:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779180919; cv=none;
        d=google.com; s=arc-20240605;
        b=Rwd34QwEjD02QI/8/JYxXpoCRqwh1yeatO2u3xeT3WEa37UIqEAO4xrw8+8id44k5X
         dOYq3Q5mtXyzh+g9ZDLmTqt0xstGqdbMzub0Pv0iEwrRKsSJDK1OJLeeivRN+/IkErHN
         i03u7FkwfwTvavixABEfARYd0rXM+bIFBwaQxB2DwSMipFa01KyUf0Vr1xejgSbCKPQh
         H1AQprBdbct8whf569MSo8odUq5bUoNJzn7d1b0IRPyo8pjAHNBO7GJyG3v6A3xce7Hp
         n3whOpMc+yMCJUBu7i1wn8zHyfHbc4iG0dMNtanjg+pQaqF5phityCecGaFOcpBwYlp6
         OWKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bzBw1qUIBcmeOCPN5JvcVHysajbuSgtQaJ2TvoQitTU=;
        fh=zcwxtNRqvvIlWKtvefKKRIadcRphqz8iljGBRlMx2fk=;
        b=RbKFnskP4qdOvu9tmv+nNIYR8W5KLrjjUGT0pyhie+Ye/JhtER71ArYfMx/ja+BzXi
         5153FTaSqUb819nIpWKvHMmQwie9yI5LDRFnqBc0EHdi/xu8AbLoJOCu2Ee3UrWZerR8
         ft6KjgjOmQaBk+OsEK4jK2M+MJv1j0S8TcQCUzpukdgjcwipPuRrxmQXvcHV33siIr8J
         q7dvhhYbXN5gvj1tIE8h/elr5Bt6vSM0g6dQ+K8AwOCRUgD/Bx/4XNORSWgsMPKoY1G6
         BwWQNTNqSFaGW7ODZgOYaCXWraMUpqvTU2s/qMFMmUilD9+938ywk0aen/rkl0P7wMFg
         YK9g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1779180919; x=1779785719; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bzBw1qUIBcmeOCPN5JvcVHysajbuSgtQaJ2TvoQitTU=;
        b=ddjDVajstIiGAK4kigtrFwDq02XvkaqVfODRGW3UDLSo+NUn/hjR8yrPO7EbM6lFhp
         FeqaEKtDAgurOPX0bT3q4EPmzkPszwvohX6wOgN+CZ4rJbQ51USPW3eTpboVNNXCu+ye
         BpLG+C7Rw7aNaVgiMtqg+jVDZMIsk+dChNsUK5UsRcBZekibUFtGyd2iWXsr6OmWzYYE
         +ES4oND9U6uwusTkdP2nVo605bT+mzQrRNho/nM4TTJfRdJRdwbgyL3Yfb98rc0l0Wld
         54TzRY0sOeAYme5iE8Kmp5Qocdn4pYETSZIgjoQlTIumWSodUlcQOFakpsA7d9pfWh6v
         /xZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779180919; x=1779785719;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bzBw1qUIBcmeOCPN5JvcVHysajbuSgtQaJ2TvoQitTU=;
        b=mmmJS30smQU0GWWI45Xkc5CakCvPZhP4XFv2diJG35YR8MVAiQoAtuHCqo9nTGT/pz
         xsQLfg2eUrh2+IPBvIKuplKikAYYgmDRJLXCwtJhkTamzbS2xymLRlMLLnn5r/y3fFQx
         0KNjcVzZUh6GHj9Jr1PS+/Aev7CaIOP+xB6bPuzzMn4LG/XsktX+E8W+t7BM3f2dVzRn
         XK25lmCRsNKrFPytXx86DyvtJ6SaTMW94TVjeZg7b2jpLAjy7v+4PP6zBHy1xkjKpkJO
         0ngNDILWdeBfAErqZU3LitjR32R8Yd7Z2gpef2OmDqsKxnRLC9ILOWmFzsgXB7btKzcH
         qo5A==
X-Forwarded-Encrypted: i=1; AFNElJ/hg4Lb+DfsfbaT3Oud+xvozxdJtJPOnSsrxputd1F/1F+IDAGkY3WWrf5pIAiEw1XqcZTPBLSQ0vU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwkzuU2W5l6dgEoV7T2/40JjYcI65hAzXnREs+rhU0R4eT/T316
	CbknTYg28WIBfCq7cJy9Dg2z8DWx/mymOzPH7DMS/hM+c81TWr+uMGnymXyTwtjF3wO/j0o2leP
	Sy1uUJGTe8q4C0izirzWtvXPeV4DnsARYII3FxCHNkA==
X-Gm-Gg: Acq92OHUJ2cyOaCrK5k5M6l1S4zJys35bmfpRpP/dc9O5PEyUR6xwqogLXE6t0xYXR8
	58VR4MkM66/PoWHeun+DcTzMpwU+4k7e4FuWUciurLf8hkvC8oVMB0V/4ZIwqk+3MPavZoWwGLq
	3BPKf4NdFEL+MO26NLFVbNukVWg6zoKqA5AGYNgq/pzxe7qDfEoh4JcxKDKxkLB7mM08sHKU0yN
	0Cpca6dnu+QYc7+pBcyuoriBaYMggQAWIQwD5fDI7SE8cS2lw/VlP3KJQl6WfxtT/q7K8DXN1Y9
	RaqV8tWMRGS5itxJgBo=
X-Received: by 2002:a05:6512:1595:b0:5a8:97d7:8c30 with SMTP id
 2adb3069b0e04-5aa0e774304mr5385517e87.40.1779180918688; Tue, 19 May 2026
 01:55:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260507131439.264906-1-marco.crivellari@suse.com>
In-Reply-To: <20260507131439.264906-1-marco.crivellari@suse.com>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Tue, 19 May 2026 10:55:07 +0200
X-Gm-Features: AVHnY4IEbJxwu66sSWBlyaE0jtPF4Vn3tY5Ts5mqxHfEipsaJISwo6T43pzuMrg
Message-ID: <CAAofZF7nuZGb-BqHP0pCENCyoH=dUjsdhHzHCMAD-AJzEARBnw@mail.gmail.com>
Subject: Re: [RFC PATCH] phy: ti: tusb1210: Move long delayed work on system_dfl_long_wq
To: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Frederic Weisbecker <frederic@kernel.org>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
	Michal Hocko <mhocko@suse.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_015521_187237_334099E7 
X-CRM114-Status: UNSURE (   7.68  )
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

T24gVGh1LCBNYXkgNywgMjAyNiBhdCAzOjE04oCvUE0gTWFyY28gQ3JpdmVsbGFyaQo8bWFyY28u
Y3JpdmVsbGFyaUBzdXNlLmNvbT4gd3JvdGU6Cj4gWy4uLl0KPiAgZHJpdmVycy9waHkvdGkvcGh5
LXR1c2IxMjEwLmMgfCA2ICsrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQoKR2VudGxlIHBpbmcuCgpUaGFua3MhCgotLSAKCk1hcmNvIENyaXZl
bGxhcmkKClNVU0UgTGFicwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
