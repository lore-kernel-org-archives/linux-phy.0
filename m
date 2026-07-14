Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F272C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 12:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4AEFHE4dsAuvFnC0K2ktMRq+LnyPTz/4YmPBOYhLk4=; b=r/hmXKgsthanfh
	IpTXbzR/aUq/O5nAtKbCf8J6xHvfPJsvCjGgPSTisFPdmPJ6p5MXqL4+zBn+1yGXqt1m74VT7aaGp
	dWVCgiFDyVPOxOtXnK0mbdNj6BIgbPgpim38gR7Q0OAQqqhoK4ohrBqVvMO0pFrJJwRxJo/DzKa1o
	s/YtFpSd5iSohgUvTAUg6KgVYAeNP+qVJaL1mhqeHtWl/TU1fNSf2nIi8lxGpAujiOEMAdk8X6otq
	9S78S7M2G3Kcg+9zvKiKQk0b7cZ9jIYCBr07S4xPWSisLKaU8vdziV2l6eMOTQuZXsVLGrXwRHkoN
	ty/dxQ90KXJJbCOH05jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjcj9-0000000C37F-3MTL;
	Tue, 14 Jul 2026 12:59:11 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjcil-0000000C2aM-2Si6
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 12:58:49 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-698bf053053so1398398a12.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 05:58:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784033925; cv=none;
        d=google.com; s=arc-20260327;
        b=FJSSLr6XosJ8YPglBOLtgVK3cpeXgCccAtQzsKUb/IrIS9AsTyJRJx7G/VN9sBZKK2
         aaXDCD6XrQ6ycOIgsGfjTWxMY/xy+PReEe2fzFjAiBFdJEV84uoUqwg0z3skAKDxWpji
         DcGyNfJpw6+aruXLoiopjp/RAeGDFT3gfGtAWVhG98/t3dk6xLGjdvabhT1mpnROUyE8
         o5M7ZiXxBKjVdHJmWWE0gWEmM5tHNV/P9GJt80JGwdu0SPkgooqAvRNNRCZA1S91jeB5
         XSZ4aj+RZ2tb2DeMlScuvSurAxjDdjXi0N7/3UBwSm03C6Woo/IuEahbvHX+cfRRYJCF
         +iUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PIv0NBktmIn6q/0AjjqpDjQC9jjLzFFsFNvKJhIbZxA=;
        fh=C4662Srb2a8P/Efg/eQ2MW3aELgB6CLDhZWrBVqvG50=;
        b=XyV1/Fu0rtckUYNm3ZYIKtEWCKgDiUnCMFonX5om+o47x2HNjorWfDPKO0nXvIBV8f
         bGOBpmTj2ppJKFl86NOzG6FFF0SpLIUIHy5Qa3Ps9/11m791z6Vn3eo6juEClxXrjxnj
         vMbWG/QQSKPL4pyEJ2giu/Byg2Tls8Lchh8Hd4oAYGtW4SieCPr/ZOH+imYImSlvjdLW
         0P/m5kNAeTgHNOi5K2Q/YN+8JsBDjD5CscUeyUqA8/l9PJx36kVozptZR18yfBzvcCMd
         BWINic2RHpjP6z8etxeSOOKro4YCTNFT6jECIpSABxrtNFSc4Hme+8bGr4LjHg5V0fK9
         UnxA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784033925; x=1784638725; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PIv0NBktmIn6q/0AjjqpDjQC9jjLzFFsFNvKJhIbZxA=;
        b=6si5HvjewZR1Ui1qngsbIGP2UqRkHw16P0mDe3WqLAmlJYq+sRiTg8Ah3iKydbQTbM
         bdnZTqFXPYsn508TZtacZLvyH9cw93fASSHUZifUvZWA5USJaZwt61kelS8nzM1QvbUX
         rYeNNrAOkiGdGZzi2Z5lLQzwxK6qpc1H/mTKLZi+gA1pd0YM7WUQ5KD3zpYYU2Ntkreq
         a5cyofJMjkLfX+zWA9BmTgV8BRdIRJkdEGLuGuzmARbawf9t1Tczz87dV49SqdYoFdbh
         hwmsCJWqSJr2m2hq+tFWxtG2PDMcijSe9apgB0Ikzkb3jg8Qng9Lz2TjrxK8tXvHp7vG
         /KWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784033925; x=1784638725;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PIv0NBktmIn6q/0AjjqpDjQC9jjLzFFsFNvKJhIbZxA=;
        b=HGDQeU+HqEW2SVTTzPh+sVatzJlyBw0AcpMir/U8JrofUf3a9z7c6KOfGL42Jss8Ci
         49yZc1bzf46+I2MDX43P/QK/+k9vXT/jSZqoVrViM41vC8NZH+GcYvjht/6fUTsOT3jI
         FdnEt+wzq9jldpc/nZgpB5h1S6jhxIRj0IKLiaB4i3ejIHBoyCbIdGNgldqB1/MMGAv9
         8ms8EU4X93yipvVEyHOPYRp5/P5NX+OxyAcsZFvgvfHm8kcXBGMW2C11GJ4H1p3tfeWF
         ltYPwYNvnnCYQH+PvDme9x3cypeF62Q5jNm4b/U5DhsBSbyxlFpigMsANmKpK7DDuM/N
         Thig==
X-Forwarded-Encrypted: i=1; AHgh+RouyNZ/YKx+5p8RJLHMXSW89KuZK6RZ+v+6RPPJTj1ryEifKRE79kvpMs9w1Ha5ryo9ITfmFqImO/4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzPU3yQD504cFYitmh4oLp7ve78tgquqOW+CcnMPMmqK8vQlST
	p0gzNHbsSlu245UsnkG/LOMFLFV6KFLo0CgU7jNyPyBLVAf4U1C8xedOpkszvf4mI7AKIfjg1ux
	2xj5bjtFb/jwWGu3C0PKmxs1LxKfTa7y2x/UuBRTFBw==
X-Gm-Gg: AfdE7cm/Rm+oy9dX+O70vlctzcGJs6nscDjFNA7SOio4ccwPobAnnPn/ToIhAC07rUg
	o1ftcaVz8kahzW4YI8eoAWZoQ6ScnRD5U6qDYEyddunHdM+2rYr4I0shxNkGlZzhLeghhSoxDZn
	ftb737blEBV0wIx5WbUU0Odf8ucLC4F8MMx1KG7h9X7gdesrKVL9Rgs3+04UnRfVEHj1PalBDSN
	9wUI/x8QpXsuiqcGOuXXgykxyZMfYR3Q271M3XmoECbCJB96FBR7u6amadQjoVe5SZ46x93hw==
X-Received: by 2002:a17:907:1c25:b0:c16:1a00:3feb with SMTP id
 a640c23a62f3a-c161e85b326mr593508966b.15.1784033925067; Tue, 14 Jul 2026
 05:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <1777251433-110466-1-git-send-email-shawn.lin@rock-chips.com> <177918772002.269794.4450351142089498526.b4-ty@kernel.org>
In-Reply-To: <177918772002.269794.4450351142089498526.b4-ty@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 14 Jul 2026 16:58:36 +0400
X-Gm-Features: AUfX_mwqTET3FiIzNurio_HDsDSeDrTvOa3obSG01zw6YFS6xA_qInQEOIhwwIc
Message-ID: <CAKTNdwH_ZMQa-97h+tqdsWqXKtorkFF9wHAMn60-8ZGKuze_Mg@mail.gmail.com>
Subject: Re: [PATCH v3] phy: rockchip: naneng-combphy: Consolidate SSC configuration
To: Vinod Koul <vkoul@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_055847_649306_AA5D6968 
X-CRM114-Status: GOOD (  13.82  )
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

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMjo0OOKAr1BNIFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4KPiBPbiBNb24sIDI3IEFwciAyMDI2IDA4OjU3OjEzICswODAwLCBT
aGF3biBMaW4gd3JvdGU6Cj4gPiBUaGUgUENJZSBTU0MgY29uZmlndXJhdGlvbiBmb3IgdGhlIFJL
MzU4OCBhbmQgUkszNTc2IFNvQ3MgcmVxdWlyZWQKPiA+IGFkZGl0aW9uYWwgdHVuaW5nIHdoaWNo
IGlzIG1pc3NpbmcuIFdoZW4gYWRkaW5nIHRoZXNlIHNhbWUgU1NDCj4gPiBjb25maWd1cmF0aW9u
cyBmb3IgYm90aCBvZiB0aGVzZSB0d28gU29DcywgYXMgd2VsbCBhcyB1cGNvbWluZwo+ID4gcGxh
dGZvcm1zLCBpdCdzIG9idmlvdXMgdGhlIFNTQyBzZXR1cCBjb2RlIHdhcyBsYXJnZWx5IGR1cGxp
Y2F0ZWQKPiA+IGFjcm9zcyB0aGUgcGxhdGZvcm0tc3BlY2lmaWMgY29uZmlndXJhdGlvbiBmdW5j
dGlvbnMuIFRoaXMgYmVjb21lcwo+ID4gaGFyZGVyIHRvIG1haW50YWluIGFzIG1vcmUgcGxhdGZv
cm1zIGFyZSBhZGRlZC4KPiA+Cj4gPiBbLi4uXQo+Cj4gQXBwbGllZCwgdGhhbmtzIQo+Cj4gWzEv
MV0gcGh5OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IENvbnNvbGlkYXRlIFNTQyBjb25maWd1
cmF0aW9uCj4gICAgICAgY29tbWl0OiAwYjMxZjI5NzU1N2ZmZjA5NDE3NjllODI1NzE5ODE1MWEw
ZmJlOGJmCgpUaGlzIGNvbW1pdCBicmVha3MgVVNCMyBvcGVyYXRpb24gb24gUkszNTc2IChhdCBs
ZWFzdCBpbiBob3N0IG1vZGUpLApjYXVzaW5nIGFuIGVuZGxlc3MgZmxvb2Qgb2YgbWVzc2FnZXMg
bGlrZSB0aGlzIGV2ZXJ5IHNlY29uZCBpbiBkbWVzZzoKCnVzYiB1c2IyLXBvcnQxOiBDYW5ub3Qg
ZW5hYmxlLiBNYXliZSB0aGUgVVNCIGNhYmxlIGlzIGJhZD8KClVTQiAyLjAgcGFydCBlbnVtZXJh
dGVzLCBidXQgVVNCIDMuMCBkb2Vzbid0LiBUZXN0ZWQgb24gdHdvIGRpZmZlcmVudApkZXZpY2Vz
IGhhdmluZyBhIENvcmVDaGlwcyBTTDYzNDEgVVNCIDIuMC9VU0IgMy4wIGh1YiBvbmJvYXJkCmNv
bm5lY3RlZCB0byAmdXNiX2RyZDFfZHdjMywgYmlzZWN0ZWQgdG8gdGhpcyBjb21taXQuCgpIYXMg
dGhpcyBiZWVuIHJlcG9ydGVkIHlldCwgb3Igc2hhbGwgSSBpbnZlc3RpZ2F0ZSBmdXJ0aGVyIHdo
aWNoIHBhcnQKb2YgdGhlIHBhdGNoIGNhdXNlcyB0aGUgYnJlYWthZ2U/CgpCZXN0IHJlZ2FyZHMs
CkFsZXhleQotLS0KMGIzMWYyOTc1NTdmZmYwOTQxNzY5ZTgyNTcxOTgxNTFhMGZiZThiZiBpcyB0
aGUgZmlyc3QgYmFkIGNvbW1pdApjb21taXQgMGIzMWYyOTc1NTdmZmYwOTQxNzY5ZTgyNTcxOTgx
NTFhMGZiZThiZgpBdXRob3I6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgpE
YXRlOiAgIE1vbiBBcHIgMjcgMDg6NTc6MTMgMjAyNiArMDgwMAoKICAgIHBoeTogcm9ja2NoaXA6
IG5hbmVuZy1jb21icGh5OiBDb25zb2xpZGF0ZSBTU0MgY29uZmlndXJhdGlvbgoKICAgIFRoZSBQ
Q0llIFNTQyBjb25maWd1cmF0aW9uIGZvciB0aGUgUkszNTg4IGFuZCBSSzM1NzYgU29DcyByZXF1
aXJlZAogICAgYWRkaXRpb25hbCB0dW5pbmcgd2hpY2ggaXMgbWlzc2luZy4gV2hlbiBhZGRpbmcg
dGhlc2Ugc2FtZSBTU0MKICAgIGNvbmZpZ3VyYXRpb25zIGZvciBib3RoIG9mIHRoZXNlIHR3byBT
b0NzLCBhcyB3ZWxsIGFzIHVwY29taW5nCiAgICBwbGF0Zm9ybXMsIGl0J3Mgb2J2aW91cyB0aGUg
U1NDIHNldHVwIGNvZGUgd2FzIGxhcmdlbHkgZHVwbGljYXRlZAogICAgYWNyb3NzIHRoZSBwbGF0
Zm9ybS1zcGVjaWZpYyBjb25maWd1cmF0aW9uIGZ1bmN0aW9ucy4gVGhpcyBiZWNvbWVzCiAgICBo
YXJkZXIgdG8gbWFpbnRhaW4gYXMgbW9yZSBwbGF0Zm9ybXMgYXJlIGFkZGVkLgoKICAgIFNvIGV4
dHJhY3QgdGhlIGNvbW1vbiBTU0MgbG9naWMgaW50byBhIHNoYXJlZCBoZWxwZXIgZnVuY3Rpb24s
CiAgICBya19jb21icGh5X2NvbW1vbl9jZmdfc3NjKCkuIFRoaXMgY2xlYW5zIHVwIHRoZSBwZXIt
cGxhdGZvcm0gZHJpdmVycwogICAgYW5kIGNlbnRyYWxpemVzIHRoZSBzdGFuZGFyZCBjb25maWd1
cmF0aW9uIGFzIHBvc3NpYmxlLgoKICAgIFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVp
bC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KICAgIFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgogICAgU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5A
cm9jay1jaGlwcy5jb20+CiAgICBMaW5rOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMTc3NzI1
MTQzMy0xMTA0NjYtMS1naXQtc2VuZC1lbWFpbC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20KICAg
IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+CgogZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgfCAxNzMKKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNzMgaW5zZXJ0aW9ucygrKSwgMTAwIGRl
bGV0aW9ucygtKQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
