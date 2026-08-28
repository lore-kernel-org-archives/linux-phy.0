Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 610C3C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 09:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCZC//n2eQUK/sD5NHBpG9/DjxTwjlBxJi+C7oRlAgg=; b=P0gQJ/6y2+Ihut
	9AxlGYNAj/UlMhsdH2oHsVP/ybQkyoJENVn1n7xnpWQ5rwo8mr1OHXErC59l76WfgmI0DuizKBvZ1
	i2kZs50wi/WpiW+6dCcKF1lW8ffq/8RWnimPzqh0XVDpJDIhAiT5GD7zB2f7ZAWnjcYIAQR2AZ9gD
	37o9ZIs8sWXJocrhoXWxuq5QsXAtZZjc8IrdHjmPph6GFVqKbExrieFtxGbrOqV6BFEXFwWfIkxL1
	+oRBAOIg/qY4xFvIhPThjw513rnlrfu6zlVSitWauQB1umkbFyPZG8dBW1WiS6fscQdm38bgySuiG
	TE1JHM5o16ySr6YK8egw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzszp-00000005UIU-3PON;
	Fri, 28 Aug 2026 09:35:37 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzszm-00000005UHA-3IVG
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 09:35:36 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6a3ec9ef8d4so116376a12.1
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 02:35:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787909732; cv=none;
        d=google.com; s=arc-20260327;
        b=ZTBGR9gVk2r2TQYHVd0N7HFR0F3/EiidWHCECyFAj4BIBWPIinJvTOuKRuIcAUM+ih
         KtEiOWYMq93ACsv59slrrgW0PajyBdEBQ1bbbhy72H6LBvx1AjSrouluxKZbxjFcyYMF
         Bnt1G7722rbLqeFA1p2bK3r33btBxukiqEpr24xh20lb+NII+fiQ6gvqBHrz3ae16tw1
         TaxUTJo4GuemHyfF5Ka9hrtQzS6Q8AMw6oD7p4VtkuIhGjGnMrV0s4LzTwsFAQqA/wq8
         Df2rrqoMBYHJaoajsjWBQ61oTZzjR/FOHXjOGUXT+uwvth+zihvRj5FlL+m+mSq2PFbC
         ffWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bSJFj2Mb1tcu0hhCa3Pj1XQFswEEME5NPfKvSiT9UvA=;
        fh=qUU5XDvBppfCA7IZarMsMQoBwNvHt4m/WDhjWa8l4c4=;
        b=qDqMlngGTznqOkMluvBUDjY+fcA75+Vvh0xDtTPkNV8t5YR+IlfqqEhd0QBC/b7wPP
         tfauDR2PY/kjOzJBomlAgqR4YOmX/lQSCB2vndamySOPvutQl0B9m1lhU5B1hmcUbfXJ
         nD8h1UPiHdl2uo/IWtliaL1wv/lwIvnUxugEaAE5rx4TJQ9fXR41mhuH+no3ry1M9dR7
         Fe6bsoVpLsKUnqBcAi650IufoXKHe8FvZTJIHNzKRqVUt43lU15NOg16LATav/liLinB
         z3lcE4aE0IhQwuUtpjeqQW3X3vcgiBeM6roVzper7sZ/AFDRx1ZELV0pceJRi609+ozg
         CqMg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787909732; x=1788514532; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bSJFj2Mb1tcu0hhCa3Pj1XQFswEEME5NPfKvSiT9UvA=;
        b=harRu+gXjF0Hp73xQFGmqlIuBiQwAUQ7ga+LTVIbAstbT5yOR9ltuLst2ykdmmePjQ
         UuYCpndiI0Rp5pwfzs2AZKI2zndZnSflW7nUoKIDS060mJ4N0xNtCBp3C6vX3iZHN18d
         RlKPJIZ/XqzTjeigftTsXo20FixU35+JF4pXrMPsOypPoopLxetBsF+sozlEEsA3SZtM
         j/Rai+iHElBvdP2vPmReHqtBTu7azI6Knbn9SlxjE31sGSCCHLItDJoBUTY9VuDEolrB
         wxYIfYfAW7rXjYMncf2aBB/JKQpZNsQSocKCxaL4YKPP6eNgBrLpGjzAj3UCnSV7tRkY
         lrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787909732; x=1788514532;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bSJFj2Mb1tcu0hhCa3Pj1XQFswEEME5NPfKvSiT9UvA=;
        b=TefVK6t6w6z5tX91kdnsXoxBq+/+QEW+WCWK7NtGZu8IX6g3f/8mFaeYHGutqmgAO4
         I0sQduP3UF9c3Z4/VMSQQBQRZrFxa2j8uouedx0OSP7FY8hW5n9zxcdU011abyY2ovv+
         Fvbi3c5Jq8I6XhRPQxF7Zeu7mvzV7jan7MSIy5NHTNWKBJaw1oxBSCauJUnetJbI6d+N
         xbC96bEpr+JG2la1yeKyX+L/I3vZCAcKVvPWytVDK9Qp+bVgSyAA/cQAeiy7r/R138To
         LyLh8aLDR/OSG6YzI1OY6obSt3miAXwPVSyp2enaKB/svyKfmuDwhZPCtL7Rjngsfo6I
         MUbw==
X-Forwarded-Encrypted: i=1; AHgh+RqKBAnaNXdH143sJ+rcNzKrIOKdk3LpRUu1gJzeLKrvsobAc1WwDyM0868JJrCTwTKs6MGrtdXJwwE=@lists.infradead.org
X-Gm-Message-State: AFuF++l3BJSbyL9vsoibrk5n3wS9uQtI3rUf59SmgK0SSYZrdExSASuu
	Cp8a0M3npTsVcqVhb4mwFwuTMTh8K8cLaQqVTtFG54+FvWNGaS93SvYrY4K85yd9V+RfTok/5GO
	F+kLWB1qhdczA2G4j79ALGGxCkdBp24Q=
X-Gm-Gg: AR+sD11aC4bKFOk8iaNVfg4z3myBcp8718qMAqL393jkKIFgq8G/EblLarL1xT3oyNk
	hoFhpVhDsjnJRS/D/lT6mpnViFN/EuM35s2G9FmXJh2XthsdudTNWS8rhtN/IXEG9SQGc2GI9SX
	7UftKqDJrlvYdvHA06zB25UUU5WUulaW8MVmZr6+zFJvBBciDY9jjfrHpUJu/h7vaNL9unJ8Mz8
	ipsHtCO0Z7uNwplTcwTOemcVoxfG885kkITaNRl+48v9cghN8HUZY2hKI1oANBllzqrr8SesiiD
	SP+a2Y5otayHf0vJ2aLQGywDmtpm8t7n+n3JzxvwmucxAzh7dbQTLA==
X-Received: by 2002:a05:6402:541a:b0:6a1:de1:f739 with SMTP id
 4fb4d7f45d1cf-6a60d36a266mr1562286a12.2.1787909731660; Fri, 28 Aug 2026
 02:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <20260821-dcphy-rx-v1-v4-0-f1797634233d@gmail.com>
 <20260821-dcphy-rx-v1-v4-1-f1797634233d@gmail.com> <20260827-thundering-cream-saluki-dd05df@quoll>
In-Reply-To: <20260827-thundering-cream-saluki-dd05df@quoll>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Fri, 28 Aug 2026 17:35:19 +0800
X-Gm-Features: AcwNN1VURP6ewJ0HD0VNfWu9xGoJtKmMhy7y_I8d0yGNeVN7oyHoitKsjPfK980
Message-ID: <CAPwA33K+XSRPDzv9xAcoPneUsp6A9OTwakJ1VJY=zXnHiH+5Wg@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: phy: Add PHY_TYPE_DSI and
 PHY_TYPE_CSI definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_023535_016361_675E0633 
X-CRM114-Status: GOOD (  32.04  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKKGZyb20gdGhlIHJldmlldyBv
ZiAyLzcpCgo+IFBsZWFzZSBsaW5rL3Nob3cgdGhlIHVwc3RyZWFtIERUUyB1c2luZyBzaW11bHRh
bmVvdXNseSB0cmFuc21pdHRlciBhbmQKPiByZWNlaXZlciwgd2hlcmUgdGhlIGNvbnN1bWVyIGRv
ZXMgbm90IGtub3cgd2l0aCB3aG9tIGlzIGl0IHRhbGtpbmcgdG8uCgpJIGdyZXBwZWQgdGhlIHRy
ZWUgYW5kIGZvdW5kIGEgZGV2aWNlIHRyZWUgdGhhdCBoYXMgc2ltdWx0YW5lb3VzbHkKdHJhbnNt
aXR0ZXIgYW5kIHJlY2VpdmVyLiBJbiB0aGUgYXJjaC9hcm0vYm9vdC9kdHMvc2Ftc3VuZy8qLApl
eHlub3M0NDEyLW1pZGFzLmR0c2kgZW5hYmxlcyBjc2lzXzAsIGFuZCBleHlub3M0NDEyLWdhbGF4
eS1zMy5kdHNpLCB3aGljaAppbmNsdWRlcyBpdCwgZW5hYmxlcyBkc2lfMC4gQm90aCBjb25zdW1l
cnMgYXJlIGRlY2xhcmVkIGluIGV4eW5vczQuZHRzaSwKb24gdGhlIHNhbWUgcGh5IG5vZGU6Cgog
ICAgZHNpXzA6ICBwaHlzID0gPCZtaXBpX3BoeSAxPjsKICAgIGNzaXNfMDogcGh5cyA9IDwmbWlw
aV9waHkgMD47CgpUcmFjaW5nIHRoYXQgYmFjaywgdGhlIHByb3ZpZGVyIGlzCkRvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyxtaXBpLXZpZGVvLXBoeS55YW1sIGFu
ZApkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3MtbWlwaS12aWRlby5jLgpJdCByZWdpc3Rl
cnMgc2V2ZXJhbCBzdHJ1Y3QgcGh5IGluIG9uZSBub2RlLCBhbmQgdGhlIGJpbmRpbmcgc2F5czoK
CiAgICAgIEZvciBzYW1zdW5nLHM1cHYyMTAtbWlwaS12aWRlby1waHkgY29tcGF0aWJsZSBQSFlz
IHRoZSBzZWNvbmQgY2VsbCBpbiB0aGUKICAgICAgUEhZIHNwZWNpZmllciBpZGVudGlmaWVzIHRo
ZSBQSFkgYW5kIGl0cyBtZWFuaW5nIGlzIGFzIGZvbGxvd3M6OgogICAgICAgIDAgLSBNSVBJIENT
SVMgMCwKICAgICAgICAxIC0gTUlQSSBEU0lNIDAsCiAgICAgICAgMiAtIE1JUEkgQ1NJUyAxLAog
ICAgICAgIDMgLSBNSVBJIERTSU0gMS4KClJlc3VtaW5nIGZyb20gdGhlIGNvdmVyIGxldHRlciBp
biB2NCwgSSB0cmVhdCB0aGlzIHBoeSBhcyBvbmUgdHggcGh5IGFuZCBvbmUKcnggcGh5LiBNYXli
ZSBJIGNhbiBmb2xsb3cgdGhpcyBwYXR0ZXJuIGFuZCBpbnRyb2R1Y2UgcGh5IDAgYW5kIHBoeSAx
IGluCnJvY2tjaGlwLHJrMzU4OC1taXBpLWRjcGh5LnlhbWwsIGFuZCBhZGQgYW4gZW51bSBmb3IK
U0FNU1VOR19NSVBJX0RDUEhZX1RYL1JYIGluIHRoZSBkcml2ZXIuIFRoZSBiaW5kaW5nIHdvdWxk
IHRoZW4gc2F5OgoKICAgICAgVHdvIGNlbGxzIHNlbGVjdCB0aGUgbW9kZSBhbmQgdGhlbiBvbmUg
b2YgdGhlIHR3byBQSFlzIHRoYXQgdGhlCiAgICAgIGJsb2NrIGNvbnRhaW5zOgogICAgICAgIDAg
LSB0aGUgdHJhbnNtaXR0ZXIsIGZvciBhIE1JUEkgRFNJIGhvc3QKICAgICAgICAxIC0gdGhlIHJl
Y2VpdmVyLCBmb3IgYSBNSVBJIENTSS0yIGhvc3QKCiAgICAgIEEgc2luZ2xlIGNlbGwgaXMgZXF1
aXZhbGVudCB0byBhIHNlY29uZCBjZWxsIG9mIDAuCgpJbiB0aGlzIHdheSwgSSBkb24ndCBuZWVk
IHRvIGFkZCBQSFlfVFlQRV9DU0kvRFNJIHRvCmluY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS5o
LgpBbmQgSSB0aGluayB0aGlzIHdpbGwgbm90IGdvIGFnYWluc3QgdGhlIGRpc2N1c3Npb24gaW4g
djIsIHdoZXJlIE1pY2hhZWwgcG9pbnRlZApvdXQgdGhhdCBEU0kgYW5kIENTSSBhcmUgc3RhbmRh
cmQgcHJvdG9jb2xzIGFuZCBzaG91bGQgbm90IGJlIG5hbWVkIGluCmEgUm9ja2NoaXAKc3BlY2lm
aWMgaGVhZGVyLCBhbmQgc3VnZ2VzdGVkIGludHJvZHVjaW5nIFBIWV9UWVBFX0NTSS9EU0k6Cgo+
IEhvdyBpcyB0aGF0IFJvY2tjaGlwIHNwZWNpZmljPyBBcyB5b3Ugc3RhdGUgYWJvdmUgdGhpcyBp
cyBlaXRoZXIgTUlQSQo+IENTSSBvciBNSVBJIERTSSwgdHdvIHBlcmZlY3RseSBzdGFuZGFyZCBw
cm90b2NvbHMuCj4KPiBAYWxsIFdvdWxkIGl0IGJlIHJlYXNvbmFibGUgdG8gaW50cm9kdWNlIFBI
WV9UWVBFX0NTSSBhbmQgUEhZX1RZUEVfRFNJPwoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci84
MmRhMzYyMi05YzNhLTQ1NGMtODdiYy1mYjRlYzdhZGI2OGRAY29sbGFib3JhLmNvbQoKPiBXaGVy
ZSBpcyBhbnkgRFRTIHVzaW5nIGl0PyBJIGRpZCBhIHNlYXJjaCBhbmQgbm8gcmVzdWx0cyBvZiB1
cHN0cmVhbQo+IHBvc3RpbmcuCgpUaGUgdXNlciB3aWxsIGJlIHJrMzU4OC1iYXNlLmR0c2kuIEl0
IGFkZHMgY3NpMC8xLCB3aGljaCBjb25uZWN0IGJhY2sKdG8gdGhlIGV4aXN0aW5nIHZpY2FwX21p
cGkwLzEgcG9ydHMuIEl0IGFsc28gc2V0cyAjcGh5LWNlbGxzCmFuZCB0aGUgZHNpIGNvbnN1bWVy
cyB0byB0aGUgc2hhcGUgdGhhdCBjb21lcyBvdXQgb2YgdGhpcyByZXZpZXc7IHdpdGggdjQKdGhh
dCB3b3VsZCBoYXZlIGJlZW4gI3BoeS1jZWxscyA9IDwyPiBhbmQgUEhZX1RZUEVfQ1NJL0RTSS4K
CkkgdGhvdWdodCB0aGUgZHRzIHNob3VsZCB3YWl0IHVudGlsIHRoZSBiaW5kaW5nIGFuZCBkcml2
ZXIgd2VyZSBzZXR0bGVkLApzbyBJIGRpZCBub3QgcG9zdCBpdC4gSSB3aWxsIGFkZCBpdCBpbiB2
NS4KClRoYW5rcywKSmFzb24KCktyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4g
5pa8IDIwMjblubQ45pyIMjfml6XpgLHlm5sg5LiL5Y2INzo0NuWvq+mBk++8mgo+Cj4gT24gRnJp
LCBBdWcgMjEsIDIwMjYgYXQgMDg6MDI6MjlQTSArMDgwMCwgSmFzb24gWWFuZyB3cm90ZToKPiA+
IEEgTUlQSSBELVBIWSBvciBDLVBIWSBjYW4gYmUgYSB0cmFuc21pdHRlciAoRFNJKSBvciBhIHJl
Y2VpdmVyIChDU0kpLAo+ID4gYW5kIGluIHNvbWUgUEhZIGJsb2NrcyBib3RoIHdvcmsgYXQgdGhl
IHNhbWUgdGltZS4gVGhlIGV4aXN0aW5nCj4gPiBQSFlfVFlQRV9EUEhZIGFuZCBQSFlfVFlQRV9D
UEhZIGNhbm5vdCB0ZWxsIHdoZXRoZXIgYSBjb25zdW1lciB3YW50cwo+ID4gdGhlIHRyYW5zbWl0
dGVyIG9yIHRoZSByZWNlaXZlci4KPgo+IFRoZSBjb25zdW1lciBrbm93cyB0aGlzIGFscmVhZHks
IG5vPyBJbWFnaW5lIGNvbnN1bWVyIG9mIHRoZSBwaHkgaXMgc29tZQo+IElTUCByZWNlaXZpbmcg
ZGF0YSBvdmVyIENTSSBmb3IgZ2l2ZW4gcG9ydCwgdGh1cyBjb25zdW1lciBjYW5ub3QKPiB0cmFu
c21pdCBvdmVyIHRoYXQgbGluay4KPgo+IEFsbCB0aGlzIHNlZW1zIHJlZHVuZGFudC4KPgo+ID4K
PiA+IEFkZCBQSFlfVFlQRV9EU0kgYW5kIFBIWV9UWVBFX0NTSSwgc28gdGhhdCBhIGJpbmRpbmcg
Y2FuIHNlbGVjdCBib3RoCj4gPiBELVBIWSBvciBDLVBIWSBhbmQgdHJhbnNtaXR0ZXIgb3IgcmVj
ZWl2ZXIuIFRoZXkgZG8gbm90IHJlcGxhY2UKPiA+IFBIWV9UWVBFX0RQSFkvUEhZX1RZUEVfQ1BI
WSwgd2hpY2ggcmVtYWluIHRoZSByaWdodCBjaG9pY2Ugd2hlcmUgYSBjZWxsCj4gPiBzZWxlY3Rz
IHRoZSBtb2RlLiBUaGUgZmlyc3QgdXNlciBpcyB0aGUgUm9ja2NoaXAgUkszNTg4IE1JUEkgREMt
UEhZCj4gPiBiaW5kaW5nLgo+ID4KPiA+IFN1Z2dlc3RlZC1ieTogTWljaGFlbCBSaWVzY2ggPG1p
Y2hhZWwucmllc2NoQGNvbGxhYm9yYS5jb20+Cj4gPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzgyZGEzNjIyLTljM2EtNDU0Yy04N2JjLWZiNGVjN2FkYjY4ZEBjb2xsYWJvcmEuY29t
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBZYW5nIDxqYXNvbjk4MTY2QGdtYWlsLmNvbT4KPgo+
IFdoZXJlIGlzIGFueSBEVFMgdXNpbmcgaXQ/IEkgZGlkIGEgc2VhcmNoIGFuZCBubyByZXN1bHRz
IG9mIHVwc3RyZWFtCj4gcG9zdGluZy4KPgo+ID4gLS0tCj4gPiAgaW5jbHVkZS9kdC1iaW5kaW5n
cy9waHkvcGh5LmggfCAyICsrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+
ID4KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9waHkuaCBiL2luY2x1
ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS5oCj4gPiBpbmRleCA5NzliNWRmZDgzNTMuLjhlZTNmODhl
NmQ4MCAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS5oCj4gPiAr
KysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9waHkuaAo+ID4gQEAgLTI0LDYgKzI0LDggQEAK
PiA+ICAjZGVmaW5lIFBIWV9UWVBFX0NQSFkgICAgICAgICAgICAgICAgMTEKPiA+ICAjZGVmaW5l
IFBIWV9UWVBFX1VTWEdNSUkgICAgIDEyCj4gPiAgI2RlZmluZSBQSFlfVFlQRV9YQVVJICAgICAg
ICAgICAgICAgIDEzCj4gPiArI2RlZmluZSBQSFlfVFlQRV9EU0kgICAgICAgICAxNAo+ID4gKyNk
ZWZpbmUgUEhZX1RZUEVfQ1NJICAgICAgICAgMTUKPgo+IERTSSBhbmQgQ1NJIGRvZXMgbm90IGxv
b2sgbGlrZSB0eXBlcyBvZiBQSFkuLi4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
