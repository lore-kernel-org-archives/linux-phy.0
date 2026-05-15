Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 857DBCD4851
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 08:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7s5w8d/j435hR0NsfOPnLqSJ7GC0xIM7L0tXREolNS0=; b=lY1DJSAL1Q8Q+8
	oKjNNWkkmnAYVj3k22C91J5hAfSnQLz+XmksAbXAK8mDqh1eTntH5gRW/R1v/Tl/nzF13Ww5Y5fz1
	wcL+0obCt4KLb2vsG7+0mPSZJL2K37bcyn2G+mD2Vj3TwxxPSdDKpUQ+Oagrz9K01nriJ3bCW5JZC
	lChiCIh+rRhiUCnf43U7wk1HaQdUtQ8+psakrz2/NSr4I488pxrplTJ8qmLuzgJRIE74IEjBxksy/
	IxvbO605v1g1J//AVD/PuXGfoZojta+HtidIV1qwndWVAEDB5ZpEF9xkyoXMScIZ64YVXOnjLo8BB
	GuWiBQc1q2SPHJAlHKvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNo5U-00000007lNR-1DwS;
	Fri, 15 May 2026 08:40:04 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNo5R-00000007lML-3GXd
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 08:40:02 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-2f0d3e07e30so21214022eec.0
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 01:40:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778834401; cv=none;
        d=google.com; s=arc-20240605;
        b=BtPf7TWYAklolNuMDintcv/eR5q2sQVNuK12b6PgK9EOYHk2CzMogcExmAtBt2vZT4
         Avcbv1Y2cKokqnESzyUzUcTdwDlHmy/Oz+ltnG4EpphvwvgRrKfKoG/roXXatkVWIU/x
         3dtitLMg8EHrgURPKtIh89S5OIn3UZtjJmtMFsEWXMzefsyUz3pVO5gAYK1F5ozU53Oa
         hWeh+wKeP1jX8Vsi3YwDeSeVqqz39jSrGkbApzvBFufyS+0ZgVaotRsww/SKO85TcYVl
         PlW/yPEEybX/ZSHNk8CBiLAmj7KbPmeF1dflo2IJnYZpttOKUbBW9Hi5hCNSYiX0NjCs
         qTQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=V9o04x0HaWnrCGllcDop+2XHXFTs0K8A0nGkD2mPC7Y=;
        fh=ZRsuMd0/u+27oJQS1mhyFxn2UOHdX4DAvcwQnKRin0o=;
        b=TgVD7ZiFm3P4rAu7jo0zD1WyvSZM4lNBrOQQaXuTRP3nGboGyJ4HFD8BEwMH13J+bA
         dWtZpdYfeBJOL4W25w9Ca/YCIgmpq1cECTeHFcF4dOp6GkwSSroGHQI0qetDAYWlGxUO
         NFwoaf0Tx298bd6Z/erVgJvydeABZsIQHVRPzv2M4u+tRllxU0BaG4TGrm6WNV8VBzba
         6aw2r01IR9xwAUNq5jNfQbuKyrH1L2PTVqX0sLMeazoavmGJpZKOLAuG0JZ7z7/zlsqf
         1RmiwQqKPIxWxDvyr6rNY82XxAKBwHfQvuHgJ1Q5VKNGMUvpzI4S7uxYqHdN1dGeEXFk
         GE4Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778834401; x=1779439201; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9o04x0HaWnrCGllcDop+2XHXFTs0K8A0nGkD2mPC7Y=;
        b=sht2iPL+FebzcW+h6kGWjlI4yF+0NwpNztC9jZUtpGRKhrevAqE5x+vXj3/hY9Xz7z
         pZKPIwQ+WtOhv3DZPMjDO21X89LynEvue3fA71UOzcTWf8UZ6BtQ5Z9VqmVAi5cDVFA6
         vwyjgRqcINn4SxwPiAo++oaWO4MLjmHsexnWVRMeeX82kB7HnoOn98OYA+68pJERWXAq
         IVzwwSOmLnSwHzDbLW60HgyhQw9e3H95rrxE6lC/6xeLMvA3H4IyXVw3BquEaYVqn1xB
         HYqa5l2TTHNevDcO38dAvtrl7INohoRy4bAFo+SEVWPfaZv8nvMk+LyKHD6olNDh4Jbt
         KENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778834401; x=1779439201;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V9o04x0HaWnrCGllcDop+2XHXFTs0K8A0nGkD2mPC7Y=;
        b=QoSZgGrSRplcEHYk7khyhBfQYG/zHjBma/SAscW3rHni9UfUth6TdauWs7m1UjVoMu
         iKbh11kaD22a1jVM0+ptn1aURYIyeQWUbxzUuE37rh/FLtswktQFXlVUp3HP6M8y6bGu
         9w/U1gdTNPbWKMvPib0ofujNRUtMA6HBzvZt6dXxxIxGTICmF0oJREK04+NkdOEGNHXU
         Ie+NZHjIF3Rthte1Ae+WcsdxeiadcNu9I8wznizX/LBqZJMBreLY8xksyEOEC2nJK5WG
         DLaQbEqA1yTpA24upDkvCTBe9e8T4c81a69mchuTw/Qa0Jtb6VSxctKVEo/KwIB+sLyh
         qchg==
X-Forwarded-Encrypted: i=1; AFNElJ+EmbhwuTk7xJ33zfBPtnthf0DtoGhr/fyR6Te7tPzdv37fe6hjv6UMr+ti2vGkayqdpTP5z6RN5TA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3IPacOpDA/HiEbPA375kiTpRw2QVlWdjUbOgTTOafmxY6Eds2
	L3ms2orW3Cex99dNgYJDCoCigq07FiSMr2jwlXovxEtaEWqXwoQxcTNSZsVQXqnWlyoBuVIvUBj
	Z3083cswcHtbJP2x7sA651ClhRBcN0w4=
X-Gm-Gg: Acq92OGIywkiKoyh/W1Ur4OdUhO1hu2sefRTt8KdvMcGDWgp3ko8S9VHWxjoK1aPPtr
	rXyUApRQKczL4t9GRm/28eci5ju2PXqXgACdXagWD7WwhhVOjZuBMz2vM+UmGVdQ08PwMw7PRyf
	p/ZmFaL+1dMxONYGXGvjnK3ei2dgZLGxhUT89CFexH+upJ0l2pu4oLPfkYg41fxzXHDjldJmhRP
	pu7cms8hgw/QpytTnSN9ge/LUv3GBPIQ8K4lgVaRIl2y3gR5tv37BGhCRB8nTryvT3z0sTAYD2e
	U8F0LqDwAjkXDQd0vTU=
X-Received: by 2002:a05:7300:a504:b0:2e5:8ec2:82c9 with SMTP id
 5a478bee46e88-303986a15f3mr1535796eec.26.1778834400799; Fri, 15 May 2026
 01:40:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260511135703.62470-1-clamor95@gmail.com> <20260511135703.62470-4-clamor95@gmail.com>
 <20260515-precious-ginger-lori-d1fde7@quoll>
In-Reply-To: <20260515-precious-ginger-lori-d1fde7@quoll>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Fri, 15 May 2026 11:39:49 +0300
X-Gm-Features: AVHnY4LhmWA2BwD0V1_j_6xstdiR56JxjkYZue9zoJ3Q1jLukX8MObrLmKvfP2I
Message-ID: <CAPVz0n3mvBLracMWGNuJ8kKUvAVZ+JRTJVkZGyq5MkuSobd8NQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/6] dt-bindings: net: Document Infineon/Intel XMM6260 modem
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen <peter.chen@kernel.org>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_014001_829624_97915C72 
X-CRM114-Status: GOOD (  11.78  )
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

0L/RgiwgMTUg0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMTE6MTggS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPiDQv9C40YjQtToKPgo+IE9uIE1vbiwgTWF5IDExLCAyMDI2IGF0
IDA0OjU2OjU4UE0gKzAzMDAsIFN2eWF0b3NsYXYgUnloZWwgd3JvdGU6Cj4gPiArICBhcC13YWtl
LWdwaW9zOgo+ID4gKyAgICBkZXNjcmlwdGlvbjogR1BJTyBjb25uZWN0ZWQgdG8gdGhlIEVJTlQz
IHBpbgo+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gKwo+ID4gKyAgY3Atd2FrZS1ncGlvczoKPiA+
ICsgICAgZGVzY3JpcHRpb246IEdQSU8gY29ubmVjdGVkIHRvIHRoZSBFSU5UMiBwaW4KPiA+ICsg
ICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIHBoeXM6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4g
PiArCj4gPiArICB2YmF0LXN1cHBseToKPiA+ICsgICAgZGVzY3JpcHRpb246IFN1cHBseSBjb25u
ZWN0ZWQgdG8gdGhlIFZCQVQgbGluZXMuCj4KPiBUaGlzIHNob3VsZCBiZSByYXRoZXIgbmFtZSBv
ZiB0aGUgcGluIG9uIHRoaXMgZGV2aWNlLCBub3QgdGhlIHByb3ZpZGVyCj4gbmFtZS4gVkJBVCBz
dWdnZXN0cyB0aGUgbGF0dGVyLiBQbGVhc2UgZG91YmxlIGNoZWNrLgo+CgpUaGVyZSBpcyBubyBk
b2N1bWVudGF0aW9uIG9uIHRoaXMgZGV2aWNlIGZyb20gSW5maW5lb24sIEkgaGF2ZSB1c2VkCnNj
aGVtYXRpY3Mgb2YgdGhlIFA4OTUgd2hlcmUgdGhpcyBtb2RlbSBpcyB1c2VkLiBBY2NvcmRpbmcg
dG8gaXQgcG93ZXIKc3VwcGx5IGlzIGNvbm5lY3RlZCB0byBwaW4gd2l0aCBuYW1lIFZCQVQgKGFu
ZCB5ZXMsIEkgYW0gbm90IG1peGluZyBpdAp1cCBzaW5jZSBzdXBwbGllcyBoYXZlIGRpZmZlcmVu
dCBuYW1lcykKCj4gUmVzdCBsb29rcyBmaW5lLCB3aXRoIHJlc3BlY3QgdG8gU2FzaGlrbyBjb21t
ZW50IG9uIGRlc2NyaXB0aW9uOgo+Cj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kg
PGtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4KPgo+IEJlc3QgcmVnYXJkcywK
PiBLcnp5c3p0b2YKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
