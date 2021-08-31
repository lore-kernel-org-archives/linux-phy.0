Return-Path: <SRS0=bWLT=NW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9B9C432BE
	for <linux-phy@archiver.kernel.org>; Tue, 31 Aug 2021 00:42:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7671060F5B
	for <linux-phy@archiver.kernel.org>; Tue, 31 Aug 2021 00:42:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7671060F5B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjmU2kNT66JSun/oHox12nO9SJJt4HRmkYOKb4dp2DU=; b=orMh8WxLj1m4wy
	nLAKpMkZRFRSphXM0qSES+AmREfVuSEEaVZNvNObr3YHLTJ09qtGjtO6shIsCW9PJLaFzNQIlbOKM
	Y2SBoeKCdEb4CgqBaecvUP0CuEIAiX2nLCmMJsVw/wY1CsICsJsuuELAQTc7PSYG3WmRFa8hKHn4w
	1ubb9dytODwGDZP5pdsy4Hw3VM/QIq/ygN4NO/UFAP8cBngQZjXgKGGdbmT9GSXYtOXHgFXBS4Nic
	Ph9oyWJzN1RK7ph6Sk80zsN2Rwvz/fb0AbGu8S/tC0AjHa4VNfLWVjw40rRkEv9mOZHJnP7eYexld
	tDJLj1CtuxmvzlIs670w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKrqm-000u4b-0v; Tue, 31 Aug 2021 00:42:04 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKrqY-000u2w-TE
 for linux-phy@lists.infradead.org; Tue, 31 Aug 2021 00:41:52 +0000
Received: by mail-ej1-x62a.google.com with SMTP id ia27so34921306ejc.10
 for <linux-phy@lists.infradead.org>; Mon, 30 Aug 2021 17:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=t6EgJ/pBlXGjmQW+1kycNPH7wqBqGocIxe5B3vOVKdg=;
 b=ozqNjl0qJHwzCO4kLeRZtdKmVX6r37wi9a6tbMXD6kiNe89XfkdS2y1o/bSVxH2TB/
 kZZBD0cHymA0yyOmQyVDhSJ+oP/i6Faea7bdcgRwqRdX/5kGuH6qkyqN3AobnaWQxJcq
 Q/H5HFeNijuHcbSL5AYcJsE5vedAxWkGqU+/RPjCyM47uVUeg3N1i1Z3ZEOSCiXC4vTm
 56dUDooSPjrnIiRUPmKYf2ZWXS1gRvo/YbD0LTCA+nMrqprAvDc26WMudYtoz9BWzpIG
 z4H+/CullndzRIrgzLgm6xlJ78L8eiOHxSCSUXwCdBPHo0dWFuPVlP0Q7Br6L5OYcxn1
 VDzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=t6EgJ/pBlXGjmQW+1kycNPH7wqBqGocIxe5B3vOVKdg=;
 b=suTpDFQOX/+nMxXVeHpxqcmEH/Y4cHaX6Ra9/9xQGwW/DJUieoEkcmEbQLCXERYogU
 IrHg5hsiv1nBbZHDE6IjbwTM6pHX+OlIbCXUjNnuhH/2OFTNXcIdoCW5b5j0ffOkDdWA
 6OvNrQzwNce/dxSvMAAqKsZc/8S8QU0S59SUwtEIHl1vqAV2OSeYxn9Jnqrf1T2SdRdA
 Ssa9kvYULE1UViEweKm+u3E1eg92hLln0F+t9GxuoRTihaXCx9jqqbZ7qm8XdavsWFRY
 yzQF3EC6Dci6f7dn0AwAT2B8mwTLbAu7xV+hjYNsd696ACaBFqI5CJezP2Dh4Igb3LBt
 bmlA==
X-Gm-Message-State: AOAM532JXUJVS5ZdHx3OQcdtYJZggJQeBhZQcBIRJeqgLb/a2EbetUoY
 RUKtHTSHhRitDeBRsfibfJpZOyEJLOOGfauu7K9gow==
X-Google-Smtp-Source: ABdhPJwfDEapt8mz+NTo0uJkU3v5YR5ufjt/WlrI5Z+Q8KSQPjbjAOUEvNuF9+JEMzyiUG+AY7eqBrSXjXnTKMn6BMw=
X-Received: by 2002:a17:906:7749:: with SMTP id
 o9mr28291109ejn.141.1630370508559; 
 Mon, 30 Aug 2021 17:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
 <20210830180758.251390-2-mike.rudenko@gmail.com> <6474995.6kXVAnRFRJ@diego>
In-Reply-To: <6474995.6kXVAnRFRJ@diego>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 30 Aug 2021 21:41:36 -0300
Message-ID: <CAAEAJfB6FBbeEPuzirP2nuU_J9nLFSrczgXYVfNQUZbEJrbc7Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] phy: phy-rockchip-dphy-rx0: refactor for tx1rx1
 addition
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, Mikhail Rudenko <mike.rudenko@gmail.com>, 
 linux-media <linux-media@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_174151_126486_F4886DBD 
X-CRM114-Status: GOOD (  11.28  )
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

SGkgSGVpa28sCgpPbiBNb24sIDMwIEF1ZyAyMDIxIGF0IDE3OjQ2LCBIZWlrbyBTdMO8Ym5lciA8
aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEhpIE1pa2hhaWwsCj4KPiBBbSBNb250YWcsIDMw
LiBBdWd1c3QgMjAyMSwgMjA6MDc6NTAgQ0VTVCBzY2hyaWViIE1pa2hhaWwgUnVkZW5rbzoKPiA+
IEluIG9yZGVyIHRvIGFjY29tbW9kYXRlIGZvciByazMzOTkgdHgxcngxIGFkZGl0aW9uLCBtYWtl
Cj4gPiBlbmFibGUvZGlzYWJsZSBmdW5jdGlvbiBjYWxscyBpbmRpcmVjdCB2aWEgZnVuY3Rpb24g
cG9pbnRlcnMgaW4KPiA+IHJrX2RwaHlfZHJ2X2RhdGEuIEFsc28gcmVuYW1lIHJrX2RwaHlfd3Jp
dGUgYW5kIHJrX2RwaHlfZW5hYmxlIHRvCj4gPiBhdm9pZCBuYW1pbmcgY2xhc2hlcy4KPgo+IFlv
dSdyZSBhIGJpdCB0b28gbGF0ZSB0byB0aGUgcGFydHkgOi0oIC4KPgo+IFRoZSB0eDFyeDEgZHBo
eSBpcyBsaXZpbmcgX2luc2lkZV8gdGhlIDJuZCBEU0kgY29udHJvbGxlciBhbmQgaXMKPiBjb25m
aWd1cmVkIHRocm91Z2ggaXQuCj4KCldvdWxkIHlvdSBiZSBzbyBraW5kIHRvIHB1c2ggYSBwYXRj
aCBhZGRpbmcgc29tZSBjb21tZW50cyB0bwpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtZHBoeS1yeDAuYyB3aXRoIHRoaXMgaW5mb3JtYXRpb24/CgpUaGFua3MsCkV6ZXF1aWVsCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
