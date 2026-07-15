Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE1E9C44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 08:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0FNB1pwcjqX8mDKSL9IcVt132GqVWQD2AsN4xX3L3c=; b=27bOJ/uTS/uL50
	qhjELO//jLwq/7W3j5svIA7GLU4RC6GI4AOsyNAIRw9cVbrfVlyB8SYjD8utXxSghZRwYbAXv8ikp
	3liIj0CoLZht1+BvmUxvDhHxHA/NWi5ZEVpkhlB0gh9XTVuF20+RJwhRfrZbNoV71Tudh+q8xLNO/
	03gXp5bQhp8ylrFTAzgw0Y8ZTdwlCpYXxj30p1Zh3PwvYngF2KhW3eK8FkPUr5XLudCI0sADrsyBK
	PKSHfbJLrD2VZX9QHg7M2INbvv7tUTF8ivPXBWXjOZxic0DRf8vQh2IXoIEghX6EzvnOLuw1wY4zP
	2nc369O0APHjjOaL8lPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjuoi-0000000E8xz-0nAO;
	Wed, 15 Jul 2026 08:18:08 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjuod-0000000E8vo-3JdQ
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 08:18:06 +0000
Received: by mail-ej1-x644.google.com with SMTP id a640c23a62f3a-c15c42a45adso61580066b.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 01:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784103482; cv=none;
        d=google.com; s=arc-20260327;
        b=rqbMUDEDJinYwWPxi8AkC1D79TENW+U6DCePAz9wkb/VtHtCEMIGFVl/ES3mvQOqom
         VphDmvpMwpPFq8QvAx6JxoSywYn+hk2Vel6eaNMluOJWRjDO8m5X11TeAU5lveYCMZYV
         jRC8rEUWxyN6hZguEmr0z7hCz08KEqyGMvaIA9I3FnNJnkNdrj3ljqDLHjMxA9xIKMGL
         I3v39WTkq/Dx+l3iLzW0TXbkR6PAFkihCGIs0O3Zcvpaz0oNtbIx9bJaCB29WAoctPkc
         bjwz8UFb2Ovpw9/DX3oK5fEZnAQTJB9c1md7j830wLe7XsPS/Gk5U7/ntF8EVtG3dajI
         8S/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=D1M03uqUJX0kuAkqVXmzpq08Mjp3bxAKOr4K6xCx7KU=;
        fh=cL1vQMFbV8RQ52+g0JVSCDMErr+1yINU+cSi5yxqUK0=;
        b=ewfI4ajYhmvyLZv6aWZm8oxkO30Hvf9gOHBU8yYkFVYxT0h7rX18s0QA38cg39wsFo
         IzizKTA7MYQGYG9c3zRCoRut4/i/euzgv9IJb/EM8tAMPOAftTNOlpMuPmhZVO/phM/n
         I7pbiJ/0Jrh2s6xOeZ66mgcbF3cld6vbRwTldQ+fJtXRKYTMe5MLODPt117HmVOTon9X
         PgX3WwFS8tk5z/xz8V0XPBcbAjc2QQWlB78CGscMIUfg1caVFrPy2iIUb5gVfqlInsd0
         37hbI/hy1/IHX+qTHJss8Ic4QRk8bM3uzxjk9TdDEFQNtctNIKEorNoIcEAj9cexo8eh
         hLHw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784103482; x=1784708282; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=D1M03uqUJX0kuAkqVXmzpq08Mjp3bxAKOr4K6xCx7KU=;
        b=fKWC+lqqONs44YM5V30IYbZ6XslaJK49EvFaO4hUdZ6ChsP6NlLNm8KpuDXcuwj2T+
         9xPQAPuZnS+9Y3WWhxdVe8Zv/LwDkUvvlmJ9lfHorwRrDWGlrU1PFHUfatarlB5zTr+Q
         u0oJUByMdNwxjuOtyAvFnQLHoYR8QRBA1svAnvn+9IggRVVoLL/8mGVDrVXTICR0L8i4
         ciZhrSO/WG+axUy7pXqdBGBAhK5LfCB4LSCKwm66up4HjhaI5iKtjjgOmiVW0UCOvFL9
         sgLol9xPmIUUxm92vXyY/rIUDaDNys2fkJ2cJ+eTIjzudp3BtGIEurBYkNKMNHNQs67r
         3IBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784103482; x=1784708282;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D1M03uqUJX0kuAkqVXmzpq08Mjp3bxAKOr4K6xCx7KU=;
        b=KeRsH1gAel8JhwCrxr0bKfUEOAkxvNkcmP87qpFoyLtjJxRotgAOgmfwv0q3khmpX5
         YyOibcSpY8CizePsidIV9pplCsSurmKlGxJgUfdtAYBf8fEta9H+rrGFU4g8/MAZpOK6
         nlSRwAw4JKKNpwAPmReubdoOGoI9r6hX42dnV4m8SSMMkOXfhwV/RYrH2d2dfE9b6Z2J
         JLLxxCyDNJJPOvS7KOz3ewVUvyB6RC9AKbOlEkBZZP5sTKs1eW2rTU3V3eC1JINjLWq4
         sHYDIAQwS17I/6Or0+3BgNtC4hCMPG0u3JCrRFEiN+/+GKPyAT1TX5SPlriKSOzb+WYx
         PfYQ==
X-Forwarded-Encrypted: i=1; AHgh+RoXFmQPDZW50HB7SDMwncPtYgCaYZHR1uXWldFB1DOLpMaSx3hkk9feEza1rZTvSaL+0xhIh9a2k3k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yys8ek9MfyQWyZ4Qy0PDNkxOqfgB6CuBKhDcktXoiC+eHG81wOm
	3QdafhAaIDP5BbGRHT5C3Ef4IAetda8p83ml8XBuIigjVBhHdxeM6FkCzi7BmRhHV+QbonX8U+1
	z/cHEa0HnZ1wC+BUu6GVB74VD8ltxpm8=
X-Gm-Gg: AfdE7cl4Ek8CEBG8pWFpzvaKvQub6TwUYjg+hDR0YJ499BhC9K1IeK9CqxVM0hTH4MJ
	p4pySncmTh7u2y/C4e8CCi270ZqzHhLFrVzPqd4fUPBmH3PTvfKHorr/BB0IJdrYxRVT14lwjhD
	JWFsdp4oQ8v4B8zaMi7DxJv8AeJlritHHGeNVkHeAXeXDXAQqvqJLB70PBNdA49KfCNmf7ngPF7
	X311aaiZtBDhd/ZXQ8Z/qjKOae1ldkECFJsC1IyBFt7ouboq381/ynpkpduTv+Jr80vzGYqqrK0
	CeRN0x6EJyY=
X-Received: by 2002:a17:907:d587:b0:c12:58c0:db2 with SMTP id
 a640c23a62f3a-c15fe781907mr1024570366b.18.1784103481564; Wed, 15 Jul 2026
 01:18:01 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-2-coiaprant@gmail.com>
 <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
In-Reply-To: <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 16:17:50 +0800
X-Gm-Features: AUfX_mxch48mUromtsSVd92z4I08mky6NZMzT4EVIwR-2P4_-bFyj_YHpBs-rv8
Message-ID: <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org, 
	heiko@sntech.de, netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, Christian Marangi <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_011803_854650_5694B1BD 
X-CRM114-Status: GOOD (  18.72  )
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

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiDkuo4yMDI2
5bm0N+aciDE15pel5ZGo5LiJIDE1OjMx5YaZ6YGT77yaCj4KPiBIaSwKPgo+ICtDaHJpc3RpYW4K
Pgo+IE9uIDcvMTQvMjYgMjE6MDgsIENvaWEgUHJhbnQgd3JvdGU6Cj4gPiBUaGUgY3VycmVudCBY
UENTIGNyZWF0aW9uIGxvZ2ljIGluIHN0bW1hY19wY3Nfc2V0dXAoKSBpcyBwcm9ibGVtYXRpYwo+
ID4gZm9yIHNldmVyYWwgcmVhc29ucy4KPiA+Cj4gPiBGaXJzdCwgaWYgYSBkZXZpY2UgdHJlZSBz
cGVjaWZpZXMgYSAicGNzLWhhbmRsZSIgYnV0IG5vIHNlbGVjdF9wY3MoKQo+ID4gY2FsbGJhY2sg
aXMgcHJvdmlkZWQgYnkgdGhlIHBsYXRmb3JtIGRyaXZlciwgdGhlIGNyZWF0ZWQgWFBDUyBpcyBu
ZXZlcgo+ID4gdXNlZC4gVGhlIHBoeWxpbmsgZnJhbWV3b3JrIHJlcXVpcmVzIHNlbGVjdF9wY3Mo
KSB0byBhY3R1YWxseSByZXR1cm4KPiA+IHRoZSBQQ1MgdG8gdGhlIGNvcmUsIHNvIHRoZSBwY3Mt
aGFuZGxlIHByb3BlcnR5IGJlY29tZXMgZWZmZWN0aXZlbHkKPiA+IHVzZWxlc3Mgd2l0aG91dCB0
aGUgbWF0Y2hpbmcgY2FsbGJhY2suIFRoaXMgaXMgY29uZnVzaW5nIGZvciBkZXZlbG9wZXJzCj4g
PiB3aG8gZXhwZWN0IHRoYXQgc3BlY2lmeWluZyBhIHBjcy1oYW5kbGUgaW4gdGhlaXIgZGV2aWNl
IHRyZWUgc2hvdWxkIGJlCj4gPiBzdWZmaWNpZW50IHRvIGVuYWJsZSB0aGUgUENTLgo+Cj4gSSB0
aGluayBDaHJpc3RpYW4ncyB3b3JrIG9uIGZ3bm9kZSBQQ1Mgd291bGQgaGVscCBhIGxvdCB3aXRo
IHRoYXQgUENTCj4gaGFuZGxpbmcgaW4gc3RtbWFjOgo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbmV0ZGV2LzIwMjYwNjE4MTI1NzUyLjEyMjMtMS1hbnN1ZWxzbXRoQGdtYWlsLmNvbS8KPgo+
IEkgZG9uJ3Qga25vdyB3aGVuIENocmlzdGlhbiBwbGFucyB0byBpdGVyYXRlLCBpdCBjb3VsZCBi
ZSB3b3J0aCB1c2luZwo+IHRoYXQgbmV3IGZ3bm9kZSBtZWNoYW5pc20gaGVyZSA/Cj4KPiBNYXhp
bWUKCkhpIE1heGltZSwKClRoYW5rcyBmb3IgcG9pbnRpbmcgbWUgdG8gQ2hyaXN0aWFuJ3Mgd29y
ay4gVGhpcyBsb29rcyBsaWtlIGEKbXVjaC1uZWVkZWQgaW1wcm92ZW1lbnQuCgpJIGFjdHVhbGx5
IHNwZW50IGFsbCBuaWdodCBkZWJ1Z2dpbmcgY2FsbCB0cmFjZXMgY2F1c2VkIGJ5IHRoZSBjdXJy
ZW50CnN0bW1hYyBQQ1MgbGlmZXRpbWUgbWFuYWdlbWVudCwgYW5kIGl0IHdhcyBub3QgYSBwbGVh
c2FudCBleHBlcmllbmNlLgpUaGUgY29kZSBmZWVscyBsaWtlIGFjY3VtdWxhdGVkIHRlY2huaWNh
bCBkZWJ0IHRoYXQgc2hvdWxkIGJlIGNsZWFuZWQKdXAuCgpSZWdhcmRpbmcgdGltZWxpbmU6IHNp
bmNlIENocmlzdGlhbidzIHNlcmllcyBpcyBzdGlsbCBpbiBSRkMgd2l0aCBhbgp1bmNlcnRhaW4g
bWVyZ2UgZGF0ZSwgSSdkIHByZWZlciB0byBrZWVwIHRoaXMgc2VyaWVzIGFzLWlzIGZvciBub3cs
IGFzCml0IHNvbHZlcyB0aGUgcHJvYmxlbSBmb3IgUm9ja2NoaXAgYW5kIGhhcyBhbHJlYWR5IHN0
YXJ0ZWQgcmVjZWl2aW5nCnJldmlldyBmZWVkYmFjay4gT25jZSBDaHJpc3RpYW4ncyBmd25vZGUg
UENTIHdvcmsgbGFuZHMgaW4gbmV0LW5leHQsCkknbSBoYXBweSB0byByZWJhc2UgYW5kIGNvbnZl
cnQgdGhlIFJvY2tjaGlwIGdsdWUgZHJpdmVyIHRvIHRoZSBuZXcKaW50ZXJmYWNlLgoKT25lIHRo
aW5nIEknZCByZWFsbHkgbGlrZSB0byBzZWU6IHRoZSBhYmlsaXR5IHRvIHNwZWNpZnkgdGhlIGxv
Z2ljYWwKTUlJIHBvcnQgaW5zdGFuY2UgdmlhIHNvbWV0aGluZyBsaWtlOgoKICAgIHBjcy1oYW5k
bGUgPSA8JnBjcyBNSUlfUG9ydFg+OwoKVGhhdCB3b3VsZCBtYWtlIHRoZSBEVCBiaW5kaW5nIG11
Y2ggY2xlYW5lciBhbmQgbW9yZSBmbGV4aWJsZSBmb3IKbXVsdGktcG9ydCBjb25maWd1cmF0aW9u
cy4KClRoYW5rcywKQ29pYQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
