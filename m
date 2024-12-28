Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E65F4E77188
	for <linux-phy@archiver.kernel.org>; Sat, 28 Dec 2024 09:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Ee79WFfyZuHmj/SY+svJNQf83AaYJP726eg9hUoHWY=; b=SeqPHNzonWnRhN
	4asreazxed12cwEz6VxIxGTyNvtvZMMyoV+J8k6oDCA5y/sYwPw3ZJzdTJQINagdc7VmNREIq2ltn
	hmfKju6Edsv38Q2lCOKINLm0QbunKPadCeZJlDpMMG+wxEeFdGyHHT3glXwc2a0v3cWlHyyZ8Qby6
	ltHXCbzVvpM7+AaqdtxDk9Zj9IjD+2YNS6eAABM3V1qGmJFtVeQSkO3vYY3M/N7c6w22Efmw1xSsE
	oJrxuoaUquKn+ghQJhUYNPzI+8zE0vK/XvSuhBsQWXNr+FoRlANR7cxUwTr2+X0FUoDGXW1Ao8A8V
	7kMx89a/g7uPTrb4ZA0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRTH5-00000001fei-2jwK;
	Sat, 28 Dec 2024 09:38:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRTFr-00000001fWe-2oUz;
	Sat, 28 Dec 2024 09:37:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7B5615C36C7;
	Sat, 28 Dec 2024 09:36:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01430C4CECD;
	Sat, 28 Dec 2024 09:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735378625;
	bh=MhTd1I1G0tCi5HxKIRic2dbDaysJFzqxNwryy6PN9IU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TY77gnmQR2hNM+xb7bnnXsNrYsXTbboOxBSOTouteFDUYExFxs+bkBDUTNMXl5+YY
	 DJGdl84eaOpsEnZ8nBgg2zhEkOja1I15XzMWRxk3WN1f1hrcnZX8DEKYJrpjbBR8G/
	 PG98+lYtBuRWvX78zIAc4SbsIkTw2tWSBTu+/99mQXDV5lYIR97OIAzabhl095PFaU
	 Nw0fI3wWRPlpFASRTdOms9HEJDSkB/W+3W8VvR1rLDDJXGJ0xWZ4WAp3yeLTsvDe6Y
	 /BaXoR8EahdMJn75bgbOWdU8Ms2txWq7d/IbjCb8AdfEmL6zHYB0XMUyw7Z+45UNjC
	 5cs6hFVTwjViQ==
Message-ID: <af945132-1ff3-41bd-a958-4241a9d171d5@kernel.org>
Date: Sat, 28 Dec 2024 10:36:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: add rk3576 hdptx phy
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, cristian.ciocaltea@collabora.com,
 detlev.casanova@collabora.com, krzk+dt@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, sebastian.reichel@collabora.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
References: <20241224091919.267698-1-andyshrk@163.com>
 <gkx4rmkwhngqsn5wotp3mdk6nn4oydrzgkfwhansd6j5ap5pek@rowfnww34rsd>
 <5de24299.9cde.19407b99e5c.Coremail.andyshrk@163.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <5de24299.9cde.19407b99e5c.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241228_013707_797047_73ACD92F 
X-CRM114-Status: UNSURE (   7.15  )
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

T24gMjcvMTIvMjAyNCAxMTo0NiwgQW5keSBZYW4gd3JvdGU6Cj4+Cj4+PiArICAgICAgICAgICAg
ICAtIHJvY2tjaGlwLHJrMzU3Ni1oZHB0eC1waHkKPj4KPj4gU28gdGhhdCdzIGp1c3QgZW51bSB3
aXRoIHByZXZpb3VzIGVudHJ5Li4uIGJ1dCB5b3Ugc2FpZCBjb21wYXRpYmxlLCB5ZXQKPj4gbm90
aGluZyBpcyBoZXJlLiBUZXN0IHlvdXIgcGF0Y2hlcyAtIERUUyB3aWxsIGZhaWwgb24gdGhpcy4g
RHJpdmVyIGFzCj4+IHdlbGwgKGFzc3VtaW5nIHlvdSBleHByZXNzZWQgcHJvcGVybHkgY29tcGF0
aWJpbGl0eSkuCj4gCj4gSXMgdGhpcyB0aGUgcmlnaHQgd2F5IHRvIHdyaXRlIGl0IO+8n++8mgo+
IAo+IHByb3BlcnRpZXM6Cj4gICAgY29tcGF0aWJsZToKPiAtICAgIGVudW06Cj4gLSAgICAgIC0g
cm9ja2NoaXAscmszNTg4LWhkcHR4LXBoeQo+ICsgICAgb25lT2Y6Cj4gKyAgICAgIC0gZW51bToK
PiArICAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4LWhkcHR4LXBoeQo+ICsgICAgICAtIGl0ZW1z
Ogo+ICsgICAgICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTc2
LWhkcHR4LXBoeQo+ICsgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTg4LWhkcHR4LXBo
eQoKWWVzLCBhc3N1bWluZyB0aGV5IGFyZSBjb21wYXRpYmxlLgoKQmVzdCByZWdhcmRzLApLcnp5
c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
