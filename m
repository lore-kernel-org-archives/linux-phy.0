Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB411C982FD
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 05:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22NhDTowhtOAzTGFWF+6cXPPGSk+4NjM2fD/7pM0sco=; b=oH0byofwDHbhAU
	hgIbkqhYiWCkEpcuOlfkzoJZM+Oy7V8IEelFfQA7hDsbTQGf2vMgPq72NVTHPvmaJvQwkGuN8qf5/
	wgQYoKDadNxn2b7etGD8NvdrZoo2H4V7ET/DnfmAlkeE/jWBoDjdGRwnVDPxfmigJ7zOgJZtVZoPp
	oQALPKjhkHW7DXql2Xa5jcxiATTbxFghf97Q/h3a1lEbgNOaa6Y+ywEwuj9I7X97sHx3pwdKiYt0i
	7AgVdjPQvay4oOXILLL3TAffdBmfCtmiTrhOwUVoz4/R8A4lHIq8C7alpqkiGQB1RPLlAhN71SXaj
	rsvenZBOie4EOEL8o5oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9bs7-0000000A2Y4-2HWp;
	Thu, 24 Sep 2026 05:19:51 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9bs5-0000000A2Xj-2Fpb
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 05:19:50 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c2630e38cffso86543766b.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 22:19:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790227187; cv=none;
        d=google.com; s=arc-20260327;
        b=GRaq5r5FFWRAwaC06I5QcRTWhdiQtniPss/bw/KbSMTM+2EAjIzNCmqbz+/es0IxNu
         qTbRkksuYxmky/RphSTJDFjZefaF2kxXJvzr3HRx65FB9WxGU3ASL3AyZgsr6Lsnjdi+
         9zSwypvbvL5XvV96hXCljFnqLx3XevvKIHjRGwM+TL2ECwg+mw5YA5OT4HxcGT5neKpx
         q+bgln35YktCOA7V2HtOZYn97C/m2xsLj0bQFYjYUgazD7+KhIpmQwyGZ8tnx7Fd+oVb
         zQ8QdGphBWHd6b6//FFUT4TTCfEojy5d9FOoaIAfbdR8I5SLFNUGWohUnPy9aVtdemaT
         0MjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=aZi2NFi10YHBsp1z9jKGGzufOnJ7M9wxb7MCM4kAzcQ=;
        fh=HHqWVBJVQr4fFwrfeSlhQ1Ts2IW0LQdJcwQ2g4ytqm0=;
        b=Fx/VVY6sB8EkXnj1hFXJoOoHMfi/769kjLUKT0vEkMLpAIAdMgnDyBuE+WjFM07cQA
         uKxVD5e2k72YijVyyAy/qujqIP35R/GAijiescDBbMK7hGAW88FY56Vqid7hn98xuesL
         gqfoYGCCSPSLUSaJK456dYamARKCNgmESPljkuZpMWnWKuQyvVw7CD5qTH/5pG2QKmzl
         0eG+IY9XuBlaOoxfON2IozAqPK+IxU/oojYljI7KypXPW+CW+Uvm+SDFKU3DHSaFRinB
         zuOP+CRzgFlFYc8SWrNJLwG34zqZWovxCG+3nP3nUbNsNvXZaSUfoCIakgGtyMU4PIlh
         /0tg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790227187; x=1790831987; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=aZi2NFi10YHBsp1z9jKGGzufOnJ7M9wxb7MCM4kAzcQ=;
        b=sNDy1mEgNfP4c23R50EIRP9DC+n/5Q4y6NyXvD8/JZNt+aI/4GBuUSN6qnAyiSMoQ0
         wvZAXLMslAdGafJOwXh1gM1k9WnYik74Ci4UvSsuLuTdZc9wp9swqKb2FOnxI9tht1qJ
         emx3my3yOH/Y3s29DgbvKKFZ1tmKomowfT+8NClDBgpyY9sKkZ6jLZX1sFUPuoRda9cT
         Jl3Q7GOhRfMg/amvXizKs3JsdJnV84/WPIXgd06mkNhSFqEwehnI1CEfktTorewC9YfX
         szAH6gnPYiyTYPOtJ6iKf8kjII7waBQvMfiktC3fo94xtUA5A8B6XaFvb7ymrycdT9Un
         6ztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790227187; x=1790831987;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aZi2NFi10YHBsp1z9jKGGzufOnJ7M9wxb7MCM4kAzcQ=;
        b=Tf8UAsMcEph6NQKb6+S02D+D4rYDG7FOkD6k1D2aquEMQVdnUxhRJw+3dTlu4Vs3+d
         jzRCgjAD8TtMzy3GcU/xx5zWu8kcd29NQDpeIFCJ/Zu/lt9aLSwGyfEwQbXYjVC6tjKC
         /RmDfkRZb6i9BsIOL/ft056HfY8FbbUGnNJ/cBWbUGBqInqi2defskb1HvGQHpKeFd8z
         nO/uM9AA1xjX8M792l5wX2ccEi1xkoD0qp3H26/Y64dj5OkjqKxTqrMeH+jQVZaiHdwK
         nesbY6/3MJuIVDCqnMKVkRsUGw27W6xSnqEGO2inx7hz4yjZt3VTRtRqUnQQgCdqv4Wm
         H2kQ==
X-Forwarded-Encrypted: i=1; AKwUvBzr9mAvmuAy0I6sKTxZ45LdZoFAPyOeZJh8kOOrQ9Qgl/vicnIzfTPoW7KPGT7/+CSP91P+yjrByXY=@lists.infradead.org
X-Gm-Message-State: AFuF++kD8e6Mb8Y5Jcp+ll7/c1yTvPs4TGFQcZy7EVwbw7iqkcTExjAy
	AeZN7RFQ9bkE8ofUxibLyS914KJYwnTnDEHE2+SjbbppfA/iH3znPRcr83k/+bbb/urVI318aA9
	onrg+dRFWQ55oUr9VxYR74pyObWIXOXM=
X-Gm-Gg: AYBFou0exhWOgPJ0n7uB7qxsqnKUTyWZ2MpJ0AUeahuIy1VWD/bY4JJiSXVadKr+Kkl
	F0K4eoEvENjXt4LHRety7UdHv8qEnJKbdGZIK8D/UfYiRuh3Tvl4VjSgS6MGF1/JD4zHMmwW/bm
	IHiizLgPnA4FeL8577pyGD44/UfWuTpHQAfeEg8Y7SHJzC8DbloyNYPP+tHpJRH6gf7BY8c/V9o
	NmRW6n+09tmsDWeiHY7FJtlXK5MlMiX6qgWzQE9fm3GExzSvIypGO7DQXvBVrN09XvcEONrBjJK
	JLJtLIXX2xumwQ1bAQznEk3g4A7CiAr9VxT1mqnUOykGVzFbz7vXWgEl+Q==
X-Received: by 2002:a17:907:d0e:b0:c26:19de:9ad2 with SMTP id
 a640c23a62f3a-c2ac2350b4bmr97952466b.42.1790227187226; Wed, 23 Sep 2026
 22:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922200336.2201212-6-coiaprant@gmail.com>
 <20260923200523.283221F00893@smtp.kernel.org>
In-Reply-To: <20260923200523.283221F00893@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 24 Sep 2026 13:19:35 +0800
X-Gm-Features: AclHuK_aBAIYVt_FhqySgCnrHx4QX15E0Szwa3KdjFmkTLDcEfRg1C4TlGocFf8
Message-ID: <CALj3r0ienmi95CNDDxqyiRsJAEe2w6vOzV2Gs=r6kpGvqab2rA@mail.gmail.com>
Subject: Re: [PATCH net-next v10 05/11] arm64: dts: rockchip: rk3568: add XPCS
 and fixed-clock nodes
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, wsa+renesas@sang-engineering.com, olteanv@gmail.com, 
	linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, 
	robh@kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_221949_597057_D80C97BA 
X-CRM114-Status: UNSURE (   6.60  )
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

PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IOS6jjIwMjblubQ55pyIMjTml6Xlkajlm5sgMDQ6MDXl
hpnpgZPvvJoKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDIgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW0xvd10g
YXJtNjQ6IGR0czogbWlzc2luZyByZXF1aXJlZCBwaHlzIGFuZCBwaHktbmFtZXMgaW4geHBjcyBu
b2RlCj4gLSBbTG93XSBhcm02NDogZHRzOiBpbnZhbGlkIHN0YXR1cyBwcm9wZXJ0eSBpbiBldGhl
cm5ldC1wY3MtbWlpIHN1Ym5vZGVzCgpGb3IgdGhlIGZpcnN0IHBvaW50OiBkdGJzX2NoZWNrIHNr
aXBzIHJlcXVpcmVkIHByb3BlcnR5IHZhbGlkYXRpb24gZm9yCmRpc2FibGVkIG5vZGVzLCBhcyBj
b25maXJtZWQgYnkgUm9iIEhlcnJpbmcgaGVyZToKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC9DQUxfSnNxSm5PYV85UG96ODZ2T1dCQ1FpZ3Z2LUFiNFR0MWhyd1R4U2E1ek5yYVZ4WFFAbWFp
bC5nbWFpbC5jb20vCgpUaGUgeHBjcyBub2RlIGlzIGRpc2FibGVkIGluIHRoZSBTb0MgZHRzaSwg
c28gcGh5cyBhbmQgcGh5LW5hbWVzIGFyZQpub3QgcmVxdWlyZWQgdGhlcmUuIE5vIGNoYW5nZSBu
ZWVkZWQuCgpGb3IgdGhlIHNlY29uZCBwb2ludDogc3RhdHVzIGlzIGEgc3RhbmRhcmQgcHJvcGVy
dHkgdGhhdCBkdC12YWxpZGF0ZQphbGxvd3Mgb24gYWxsIG5vZGVzLCByZWdhcmRsZXNzIG9mIGFk
ZGl0aW9uYWxQcm9wZXJ0aWVzLiBMaXN0aW5nIGl0IGluCnByb3BlcnRpZXMgYXJlIG5vdCByZXF1
aXJlZCBhbmQgbm90IGN1c3RvbWFyeS4KCk5vIGNoYW5nZXMgbmVlZGVkLgoKQ29pYQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
