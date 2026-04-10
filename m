Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1D68F36B91
	for <linux-phy@archiver.kernel.org>; Fri, 10 Apr 2026 06:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSoJxqgldaf5fc4TT7jcReepecykjj+LVYygv5lNvQ0=; b=mLciXon7mcIfh5
	zEc32amAgE8WGOe0KascmP767ebcH/kcK3olQ3MdjpRDdmbyAnLiN/dkwLtekDf3rI0XIYax5ZEwf
	RFR/HqsUPl8NvL/ufPF8GHa6tXSjtujh1MCk179aHKwA+jwPP1HkGWH2Kms1T+h3nRP6/q/py+AXQ
	Ki/yNWWSC1cec4/IMEhYSbEw0AIuAiOQK3PYwuxRRQtmuIF1ut2tJGlHDWA+X59yoHHnZn4HJSyy4
	empcVHHuqzPdMPjcn3uyFwQ7dkxsX8ZMdlFNKK7yDYjoLYbKxQlSuUOczmU00yHDD1pZQT+XLU+IB
	b/lEP8Ue32J67XFSfNwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB5KA-0000000BgKm-29DI;
	Fri, 10 Apr 2026 06:26:38 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB5K8-0000000BgJI-37uw
	for linux-phy@lists.infradead.org;
	Fri, 10 Apr 2026 06:26:37 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b9c603ec2dfso238488766b.1
        for <linux-phy@lists.infradead.org>; Thu, 09 Apr 2026 23:26:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775802394; cv=none;
        d=google.com; s=arc-20240605;
        b=l09s+YmJixy94FUneR/TYKFG3H39WStisT8EtkKAKfTnvYpx5QgsGM3FiS9ajdThtv
         U7UbQ9jwFMUOa7rWLQrYAIGeMORLDC6M4LH+0noe0Gv260OHiqItkDs5e5HdWDj8T4Pf
         V6+e6B0uRyraI0uObhk/TH8r16Sw6/6E30x1d2LjWv72xdigA+590iW7EGQOZLUqUd1u
         1G8No1epwRiLqsHb7GXfO/7gG4V9uQrBYTyx3jKuuGBQAJgNbGQtikxgTdZ2oMUImsz4
         7A+CDuR39xpqzmaiESyIdfgL71SsYnz1i2Hyor1+8IffsNlhAECtZCaTIswtKLpAEuKa
         Cbkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k6E6Sf2wjux48UXY2LuhatqglhNB6b4e2gWC39/mIIk=;
        fh=I/B+Cl1Z/Vv4mfGVwnGiHHLo4EhDTvLrVxSckZ0Y+RA=;
        b=IpUapOgakE3QfX5gjTbMdNjbou55H8u5MMTLBwOlI4O9vAcTsh1NFTcNAWYVUmtmWx
         xgVDGKdMK5h32zmtgTt4Yf59ittuJm03eR2K4blFaQ1EHOKv/iaL5CUDe4WpPqH0nKwK
         Zq1mc9EqMio4Cf6Pc7CxdpQTc+53pwreg/b1pmSpV+GxbcW6mVAsRRovoGACT4aLfQVq
         wqBT4og05+R9kdxo9dPkB/ioRrd97SRJ+LvXBNBowZ1RPhwYLPXHRNPB8irVzDmeXD2y
         NQZ0N56RnT3/2BD1EP2ePQketHJqUOezFOjr7g2m0dwZsz76wOginV4H3cVBye4oVZSY
         2VHA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775802394; x=1776407194; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k6E6Sf2wjux48UXY2LuhatqglhNB6b4e2gWC39/mIIk=;
        b=G/cxNHIq0sl83O2DmWC7oq2LxavZwiKaXuP6+3dW7JfmsPVkTV1gmrYlEnXDlX3Vrz
         j55Ei9zoeuYniPT//0mG2B+8pSGYfnWAIb5wDYo4Z3T6ct+5skHsCNpM1E8Ul/+gfA+f
         ez9WlFpmLgA+CbRZxM1gLYlwVaUsuQSOojTKGjKrnwABlBOZe0hdDmqeXETJtDQ6UIHr
         wFZElpfnzXvF3MAvVwOIWGeT5F3nnd+j6mM3jnPCHQitkRNUxBJLDvZZKC8uD7crEa1k
         MZwelw1jo+WPXkaMf1Je6IKSmyAi0LQlKPJxu4FSxfVS29MZbthBDVJpYyGT60O2D5vn
         ftDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775802394; x=1776407194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k6E6Sf2wjux48UXY2LuhatqglhNB6b4e2gWC39/mIIk=;
        b=UNDT5F97u4LTdnufiHkxDCXMLGJ/R+D7OHKWFNK/gk77F5mD3AwjrevhDPM0mMpnf8
         mfbl+KzgsPInNeFG0ervU9d7lRZ7i6edzzIp/gpawdamF6ii8aG9xeyMrOrsNe3D8pwP
         QD0D3XQJIuE/CyMghetAo8MAPZVPT7Wa80yO50VeLy7HOqZEYaw1b09QMPaqwf1R/ELB
         8GDv+jMqOi1WkQQQ2Ge+BDKGSdwILk7LxuwlzuelyV6q1AqCzwFWYtH+KCs9FOLAJgLV
         z2Foi46j2xlOvTXgoXMVeNfVZTia6KnpVqqutGOkO8PdrmCCpbF8tKxZl2YeiMET4i6b
         YJpw==
X-Forwarded-Encrypted: i=1; AJvYcCVqFa8qdRGYsbdr0TRp+CvPM0AnhMHGOAkoEP665/sCRjsnfo6eM+M5bNXBzbLqkmPzGw1ZfabgK5I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1A7vCQVe/f8GO/9X0+g/ycQc1O7FKKWK2SixJmPDOurCMc19N
	T+8JUsaBugmE1c6hjyUJa0r6eKc1C3hsElBNdsc3YsmB0WS88wkiFammk0RYY8FmRMXREIOD7/Z
	e802cxs63WS1HR8WsqoU9MRRxEnnTxaM=
X-Gm-Gg: AeBDietrX3o9VN/ne7DwlPZGkG7N+O/JUIMEzUP7y4PcNz48mfuOCzas/1xgbs3bE16
	ep1+nqjpHU98BZm9vPF5AO+B0yIxdl4WUT+zTqhXpWoALWKIUmGEskPjLbdRpS5UE9Sdu+toLsM
	TUQkIDm7YUlIEDVDE0kDpbEN1mCyqumqiZ35X6FDqdJ4Ogo93xc9bovqz/b7BVLI+i26H82vrFi
	6f7Gz5Rw9eHgkXZZuKNMP7iY2Dan+xSLI6yxi0LtDu2iFJw0m4U6P+P2gCzaScwE/7sbJUarOOE
	D/Mwdw==
X-Received: by 2002:a17:907:8b98:b0:b87:d09c:1825 with SMTP id
 a640c23a62f3a-b9d72792c0cmr109602066b.13.1775802394103; Thu, 09 Apr 2026
 23:26:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260409044939.7647-1-linux.amoon@gmail.com> <0ee54525-928e-a1ce-ec2d-1f85cf15abbc@rock-chips.com>
In-Reply-To: <0ee54525-928e-a1ce-ec2d-1f85cf15abbc@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 10 Apr 2026 11:56:17 +0530
X-Gm-Features: AQROBzCIL4-FKUNlkvast46wQIb2LKuGLtf3o67YP5zyFepCASgnCq98IhRcFwg
Message-ID: <CANAwSgSE5NxxKC7WVvisxB1GsNOoY3X8Ar3t2BCQzG0MrouXdA@mail.gmail.com>
Subject: Re: [PATCH v1] phy: rockchip-snps-pcie3:phy: Configure clkreq_n and
 PowerDown for all lanes
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, Niklas Cassel <cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_232636_798876_3742BF3C 
X-CRM114-Status: GOOD (  15.57  )
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

SGkgU2hhd24sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzCgpPbiBGcmksIDEwIEFw
ciAyMDI2IGF0IDA2OjE2LCBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4gd3Jv
dGU6Cj4KPiBIaSBBbmFuZAo+Cj4g5ZyoIDIwMjYvMDQvMDkg5pif5pyf5ZubIDEyOjQ5LCBBbmFu
ZCBNb29uIOWGmemBkzoKPiA+IER1cmluZyB0aGUgcmszNTg4X3AzcGh5X2luaXQgc2VxdWVuY2Us
IHRoZSBkcml2ZXIgbm93IGV4cGxpY2l0bHkKPiA+IGNvbmZpZ3VyZXMgZWFjaCBsYW5lJ3MgQ09O
MCByZWdpc3RlciB0byBlbnN1cmUKPiA+IC0gUElQRSA0LjMgQ29tcGxpYW5jZTogY2xrcmVxX24g
KGJpdCA2KSBpcyBmb3JjZWQgbG93IChhc3NlcnRlZCkgdG8gbWVldAo+ID4gICAgc2lkZWJhbmQg
c2lnbmFsIHJlcXVpcmVtZW50cy4KPgo+IGNsa3JlcV9uIGlzIG5vdyBmb3JjZSBhc3NlcnRlZCB2
aWEgY29udHJvbGxlciBkcml2ZXIgaWYgc3VwcG9ydHNfY2xrcmVxCj4gaXMgbm90IHNldC4KPgo+
ID4gLSBBY3RpdmUgUG93ZXIgU3RhdGU6IFBvd2VyRG93blszOjBdIChiaXRzIDExOjgpIGlzIHNl
dCB0byBQMAo+ID4gICAgKE5vcm1hbCBPcGVyYXRpb25hbCBTdGF0ZSkgdG8gZW5zdXJlIHRoZSBQ
SFkgaXMgZnVsbHkgcG93ZXJlZCBhbmQgcmVhZHkKPiA+ICAgIGZvciBsaW5rIHRyYWluaW5nLgo+
ID4KPgo+IFAwIGlzIHRoZSBuYXR1cmUgc3RhdGUgd2hlbiBsaW5raW5nIHVwLiBJIGRvbid0IGtu
b3cgd2h5IGl0IHNob3VsZCBiZSBQMAo+IGJlZm9yZSB3ZSBldmVuIGRvbid0IGtub3cgd2hldGhl
ciB0aGUgZGV2aWNlIGlzIHByZXNlbnQuCj4KT2sgdW5kZXJzdG9vZC4gVGhpcyBzdGVwIHJlc2V0
cyB0aGUgbGFuZXMgdG8gdGhlaXIgZGVmYXVsdCBzdGF0ZSBmb3IKaW5pdGlhbGl6YXRpb24uCkni
gJlsbCBjb2xsZWN0IGFkZGl0aW9uYWwgaW5wdXQgYW5kIHZlcmlmeSBpZiBhbnkgY29uZmlndXJh
dGlvbnMgYXJlCnN0aWxsIG1pc3NpbmcuCgpUaGFua3MKLUFuYW5kCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
