Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7BE5C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 23:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJCNCZgMCUb5l7nHOz+QG28YCYaXMyP6DjKmJOjjc9w=; b=y72/S8drwPgYjx
	0C+B2i10e2GmDHYlkZUoRtpdw7MosO2xX4cTYoqm9lcJLu2WQ2eDAy3+lnhGcSWs7GWc0cciIm0UO
	ajGeY7i2ukKtSwQ4DwpWSR20qQ+eiO2a7ZsGN44xeo1cmDJWzldDyax6OYV0tiTh4MjHEyeiCFIDC
	+28ZJJBsEt5sa/W53lnWYn3iSQ8tYuSUUC7y+OmnopfJadL1JdoxLvmmcqtXc941drUzPwLusNqxi
	eahxGIlaN4EmPt7v2MMlfBqHaIBInAbRpMF3xBq+l1Lg6PTd/l0L7Srtp/s3nZ7ZKcGx+26r3fkqc
	3UREH4BKrBFNvLcjD1Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whbie-00000000b5y-0k43;
	Wed, 08 Jul 2026 23:30:20 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whbic-00000000b5a-07rO
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 23:30:19 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7e9f69ee6f4so1150759a34.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 16:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783553416; cv=none;
        d=google.com; s=arc-20260327;
        b=UbLfdA+ch/JS+foHaFUecUGqlcfgI3eSCel7uCa072FeSbUANrig3uKyCN1b3/NGU1
         k/to9LW9T7nAzF5oe9xIb96I9QmPnDoRbBZRJm2ROccWRNPyDCNpBXje5yVXYVyCO/cJ
         BRYIfXLFZX6xA9r/luCnaMJl2hK3wotrQTua/PwiN/VBFl+fxYcOhdULWkWWgUKf/xOr
         RaU7Vq2Y3B+ytWqYn9Qy+o6CuVWsdk0cKjAUnPFlbVT/nM7payGu6kSXjmThP6xGw0qt
         Fo3Gx2HAwnN6UPijB4udQNAqgnRuXnHNggmhssy5/i3x3Waq7c/TgtENKY2RCYAlP6mx
         /9ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3Phac2raMjwWjIRCVv5WDyx21Xab89Vi8U4ckasYYSM=;
        fh=3jHIV3M1W4qDZ9XhP6vnU55Vxfg3yGJ3c8EWxVzilHs=;
        b=NQgP7xEd2UEKrw5bvHFHOdnPMbqc30jhWyEySnNx8AxL/r6a9ykSPDTo3mLrVpeSjB
         1dB0/YXCel6o2jnfC1mbQM0n99cei2c35aPLgE7iB2xqqRl9ucgk6AL0Qy6eegZUdEGj
         FhrsArSz2qSU6mUVY6ZSB7FiSYKddYvgsB0dYSd60tqd3yl9DhwCJwI2muHfPFralexn
         ZD/CNlhfHnjMZN2HPGm8VaQv0Y1ui6xWoOHGgc7WalZTwU5T3pLxZHASG70gHB0bHnGu
         xCA7QZ9eCULt+Abq6p8WkIRQsBoF0FejIJFj+Sfw50WnC72cDVhu9+mFLvlMh56aYsWB
         ZE3A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1783553416; x=1784158216; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=3Phac2raMjwWjIRCVv5WDyx21Xab89Vi8U4ckasYYSM=;
        b=lKFighi6tLu+vIy2VJKU8Uq+42q4SQST7LaOfTmjMFGnsBVtCMklirGhlV239DW5YZ
         iS8amlcR2ZRP8lwECme6bpEMkCsgG1lxQklqbswIX+zxHKcevMvTonfmb2Cs7BrY3lFI
         XRKZEmz6i7EWsZG7Ee5T6dLTAf8XOXOmjIBhWX0hVpHo/qb99mwzPHiDDQwYS7gpEv6g
         +pMZD5VH4O0o6a25DVJaJEUg1/A9saAsyUjxniAniR6WLunt8oZixrjD16ODSG2uR796
         Ual6qYhHsJ4cnYrVlWxdbTjlIUjIjSRGl88AvUtzF2odB0jG7f4IPnRLdalFmEt0yYfK
         87UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783553416; x=1784158216;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3Phac2raMjwWjIRCVv5WDyx21Xab89Vi8U4ckasYYSM=;
        b=EAMktCq1g6CmRD6+EzJZfJWvp6W/blv4Iioakl67qc1RWl2h2gqrnL9hG9kvJy85z/
         nMB8P5VKruU7DH4bvNSszYjG3VQob6On+IVYFe0WbF0AUCP3SWCTuNriMwMmlrjqvVvq
         igJidRVZd2/SZpehOA1ovZYyto6Ovo0He+yG5DNTVn5/If9a5NopHfnFnNHsDgFgdkB2
         2ANeBAZZhlQ1VnrPQxEEEIX5amq4uViHiMZeMczoMRtjTk08G0U7EgtfVGqy3t9+jRtE
         0xEZrk9lxwwodiRIy/kaDXdv8yzpLoeFD+CFIZKoklV9nWuYIYz/neV9aspf8+gpz0J/
         WPFg==
X-Forwarded-Encrypted: i=1; AFNElJ+NjxG3wughZNqGbVA/wDd/LpD4Xvr4ECk+VXi9PGf+97oXS4313ulPNSX6p/Ujkoz4Pw6PgmNqbxU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwzPjbt0ZLsydrXrpaAMuUiWIhkU443qsVjRBQUxHtwicgkKea
	lXEE3JF2QFmGprQ6269mUb2W9EHeJ3pG7vHmfdUVN/tti5jvXxM5rq09pCUZtR2LH4HZEuHX3UB
	93K5Rusp4A4B7druuunXYSLOu98/W2XLOfFwHK/aX
X-Gm-Gg: AfdE7clyDmxX+GLlZC4TbwhdqAc2SS8PgcGIWzGPN9z9j5Oyf18dAPCLKo1iAdckKDS
	OkdYvNqfCPbDzj+q+ZtV71VeJbJ/JGKZrvdw1mFnr29QR9QDfoKPvtQvWB140xqvdCcHq1hCYaX
	Ru0p2bIzVeW5f775NojtQjXlUaDRVuMMb+byTOKgHph5NEZ6exsMooXoWxoNqZvuz6W+Tgf7leL
	ZZUdEb4BS8Zur4hNw4D/SpYk1XfGRpPmraCI/GvxhjsQcHyCO3ETVk+XEjWoKdQAWuZr5C2yMGo
	ndHvjN4uY2fh0837dgCeLZ1Y1VEGbb6fkccVew==
X-Received: by 2002:a05:6820:2085:b0:6a3:1f3d:853f with SMTP id
 006d021491bc7-6a36da346b8mr3187577eaf.7.1783553415229; Wed, 08 Jul 2026
 16:30:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260706231633.700676-2-rdbabiera@google.com> <20260706232735.9DAE51F000E9@smtp.kernel.org>
In-Reply-To: <20260706232735.9DAE51F000E9@smtp.kernel.org>
From: RD Babiera <rdbabiera@google.com>
Date: Wed, 8 Jul 2026 16:30:02 -0700
X-Gm-Features: AVVi8CcSrwCh5LbwO7WnfvTZrSFNdC4Sgt5jKz_3inEavnBPl5_6Ab3E641i0pQ
Message-ID: <CALzBnUHg9W0kAwN6kvv5888WAK+i3J5B9PBqqRYA6q5+tjm9KQ@mail.gmail.com>
Subject: Re: [PATCH v4] phy: Add USB3 PHY support to Google Tensor SoC USB PHY driver
To: sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, 
	neil.armstrong@linaro.org, Badhri Jagan Sridharan <badhri@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_163018_078275_C31588D3 
X-CRM114-Status: GOOD (  21.33  )
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

T24gTW9uLCBKdWwgNiwgMjAyNiBhdCA0OjI34oCvUE0gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+
IHdyb3RlOgo+IFtTZXZlcml0eTogSGlnaF0KPiBUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3Vl
LCBidXQgZG9lcyB0aGlzIGZ1bmN0aW9uIGhhdmUgYSByYWNlIGNvbmRpdGlvbgo+IHdpdGggcG93
ZXIgbWFuYWdlbWVudCB0aGF0IGNvdWxkIGNhdXNlIGEgYnVzIGZhdWx0Pwo+Cj4gZ29vZ2xlX3Vz
Yl9zZXRfb3JpZW50YXRpb24oKSBjaGVja3MgcG1fcnVudGltZV9zdXNwZW5kZWQoZ3BoeS0+ZGV2
KSB3aXRob3V0Cj4gaG9sZGluZyBhIFBNIHJ1bnRpbWUgcmVmZXJlbmNlLiBJZiB0aGUgVVNCIGNv
cmUgcmVsZWFzZXMgaXRzIFBNIHJlZmVyZW5jZQo+IGltbWVkaWF0ZWx5IGFmdGVyIHRoaXMgY2hl
Y2ssIHRoZSBkZXZpY2UgY291bGQgc3VzcGVuZCBhbmQgcG93ZXIgb2ZmIHRoZSBQSFkuCj4KPiBU
aGUgZnVuY3Rpb24gd291bGQgdGhlbiBhY3F1aXJlIHRoZSBsb2NrIGFuZCBjYWxsIHNldF92YnVz
X3ZhbGlkKCkgYW5kCj4gcHJvZ3JhbV90Y2FfbG9ja2VkKCkgb24gdW5jbG9ja2VkIGFuZCB1bnBv
d2VyZWQgTU1JTyByZWdpc3RlcnMsIHJlc3VsdGluZwo+IGluIGEgc3luY2hyb25vdXMgZXh0ZXJu
YWwgYWJvcnQuCj4KPiBXb3VsZCBpdCBiZSBzYWZlciB0byB1c2UgcG1fcnVudGltZV9nZXRfc3lu
YygpIHRvIGVuc3VyZSB0aGUgaGFyZHdhcmUKPiByZW1haW5zIGFjdGl2ZSBkdXJpbmcgdGhlc2Ug
YWNjZXNzZXM/CgpJJ2xsIGFkZCBhIGdldF9ub3Jlc3VtZSBjYWxsIHByaW9yIHRvIGNoZWNraW5n
IHJ1bnRpbWVfc3VzcGVuZGVkLAphbmQgdGhlbiBhZGRpbmcgYSBwdXRfYXV0b3N1c3BlbmQgYXQg
dGhlIGVuZCBvZiB0aGUgc2V0X29yaWVudGF0aW9uCmNhbGwuIElmIHRoZSBzdXNwZW5kZWQgY2hl
Y2sgZmFpbHMsIHdlIGNhbiBwdXRfbm9pZGxlIGhlcmUuIFRoaXMgd291bGQKY292ZXIgbm90IHBy
b2dyYW1taW5nIHZidXNfdmFsaWQgd2hlbiB1bm5lY2Vzc2FyeSwgYW5kIGFkZHJlc3NpbmcKYW55
IHJhY2UgY29uZGl0aW9uIGlmIHRoZSBydW50aW1lIGNvdW50IGRyb3BzIHRvIHplcm8gZHVyaW5n
IHRoZSBsb2NrZWQKc2VjdGlvbi4KCj4gW1NldmVyaXR5OiBIaWdoXQo+IENhbiB0aGlzIGxlYWQg
dG8gcmVkdW5kYW50IFRDQSBwcm9ncmFtbWluZyBhbmQgYSAyLjUtc2Vjb25kIHRpbWVvdXQ/Cj4K
PiBMb29raW5nIGF0IGdvb2dsZV91c2Jfc2V0X29yaWVudGF0aW9uKCksIGdwaHktPm9yaWVudGF0
aW9uIGlzIHVwZGF0ZWQgYmVmb3JlCj4gdGhlIG11dGV4IGlzIGFjcXVpcmVkOgo+Cj4gZ29vZ2xl
X3VzYl9zZXRfb3JpZW50YXRpb24oKSB7Cj4gICAgICAgICBncGh5LT5vcmllbnRhdGlvbiA9IG9y
aWVudGF0aW9uOwo+Cj4gICAgICAgICBpZiAocG1fcnVudGltZV9zdXNwZW5kZWQoZ3BoeS0+ZGV2
KSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4KPiAgICAgICAgIGd1YXJkKG11dGV4KSgm
Z3BoeS0+cGh5X211dGV4KTsKPiAgICAgICAgIC4uLgo+Cj4gSWYgYSBUeXBlLUMgcGx1ZyBldmVu
dCAoVGhyZWFkIEEpIHNldHMgZ3BoeS0+b3JpZW50YXRpb24gYnV0IGlzIHByZWVtcHRlZAo+IGJl
Zm9yZSB0YWtpbmcgdGhlIGxvY2ssIGFuZCB0aGUgVVNCIGNvcmUgY29uY3VycmVudGx5IGNhbGxz
Cj4gZ29vZ2xlX3VzYjNfcGh5X3Bvd2VyX29uKCkgKFRocmVhZCBCKSwgVGhyZWFkIEIgd2lsbCBz
ZWUgdGhlIG5ldwo+IG9yaWVudGF0aW9uLCBwcm9ncmFtIHRoZSBUQ0EsIGFuZCByZWxlYXNlIHRo
ZSBsb2NrLgo+Cj4gV2hlbiBUaHJlYWQgQSByZXN1bWVzLCBpdCB3aWxsIGFjcXVpcmUgdGhlIG11
dGV4LCBzZWUgQ09NQk9fUEhZX1RDQV9SRUFEWSwKPiBhbmQgY2FsbCBwcm9ncmFtX3RjYV9sb2Nr
ZWQoKSBhIHNlY29uZCB0aW1lIHdpdGggdGhlIGlkZW50aWNhbCBjb25maWd1cmF0aW9uLgo+IFNp
bmNlIHdyaXRpbmcgdGhlIHNhbWUgY29uZmlndXJhdGlvbiB0byB0aGUgVENBIGhhcmR3YXJlIGRv
ZXNuJ3QgdHJpZ2dlciBhCj4gbmV3IFhBX0FDVF9FVlQgaW50ZXJydXB0LCB3YWl0X3RjYV94YV9h
Y2soKSB3aWxsIHN0YWxsIGZvciBpdHMgZnVsbCB0aW1lb3V0Lgo+Cj4gU2hvdWxkIHRoZSBvcmll
bnRhdGlvbiB1cGRhdGUgYmUgbW92ZWQgaW5zaWRlIHRoZSBsb2NrPwoKSXQgc2hvdWxkIGJlIG1v
dmVkIGluc2lkZSB0aGUgbG9jaywgYnV0IGJlY2F1c2UgaWYgdGhlIG9yaWVudGF0aW9uIGlzCnNl
dCB0byBub25lLCB0aGVyZSBjYW4gYmUgYSByYWNlIGNvbmRpdGlvbiB3aGVyZSBwb3dlcl9vbiBw
YXNzZXMgdGhlCm9yaWVudGF0aW9uIGNoZWNrIGFuZCB0aGVuIHByb2NlZWRzIHRvIHByb2dyYW0g
dGhlIFRDQSB3aGVuIHRoZSBvcmllbnRhdGlvbgppcyBub25lLiBTZXR0aW5nIHRoZSB2YWxpZCBi
aXQgb24gdGhlIFRDQV9UQ1BDIHJlZ2lzdGVyIHN0YXJ0cyBhIG5ldyBYQV9BQ1RfRVZUCmludGVy
cnVwdCwgc28gdGhlIHN0YWxsIGhlcmUgaXNuJ3QgcG9zc2libGUuCgpCZXN0LApSRAoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
