Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F454CD98DE
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 21:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFTZbcbhk1T/lXBrKmyVD7bF6Q/PnNaVwij49V2IEeI=; b=AsUW+DDVdJEeW2
	Rmv23hGhNlVVovjehOlOMRA6FNFZaGSdQXi6tjY0oFW8etk+++Bh8kvhAFhiBbLliwp1jtff99NOn
	sk5Q3NBQ/B5jf4kNYbYo8Okgz0hgFMSnDqxH+2QvlmlIAzyJSeu0y2ZHEw57zgYdKrURTsTfqouWU
	5M00Q4plr9ms2ruCNmUe+IV4frgVQQ9HZ5MlBquRsPFmaKbQccDfrkAJj1n6GCe8HSZ1+MNGO4sjq
	OL8Mwdfe5/1Bu3et7HWLT1G/lMI82/GIcxrf6CvfSCmvflQBwHSaB83XJA7TPoNsNjoi5AxBCUUeg
	1l0PGk1X2+UsBUxu1s+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZFFk-0000000Esls-1wYL;
	Mon, 15 Jun 2026 21:53:56 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZFFh-0000000EslH-255p
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 21:53:54 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-486b93fc7c8so1533269b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 14:53:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781560431; cv=none;
        d=google.com; s=arc-20240605;
        b=R5ThR787u5IbdDXY62rXOBQmPfT2dWTRfh44KDTs0Osagx0N6LQljjj3lcv1xAB4ts
         vMMbSRSEXrHf3LrNqv2aWHN+HcEwp6gXO545R182NZNr7Tmv69/R4WzJn+tjk7Dm/LXK
         jkXBQ04d3qKJCVn2nryqlhPDRSa6mXkcdQl6HxHYL6DhASBvREYoPlJZBbcYJfx23HKo
         jMF4Ezgpl588V2ortZUf5fbwnRwdESbXgnoegeZxEQ7HOUU3ECiPoP9FgMOvIO7T/yWY
         lgZIxV0KC8QiebRVQ8XTNUfG42dmScYtZqHhSkS0nTebEuEraC6MAnkkUHVFWodN7sDe
         92sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MAw7xAS00Pxp7lTFSZCtf6qTpMGHE7iw4QUCdtuTrn4=;
        fh=FNc7a2Y6c24eMq02xOpQs14C/D21voTsqLF0Dq0+8fw=;
        b=NmxENmB9L0DnxXWCIBKaLZNSZW1Mdb3spxU/9ChE35whnPkgimoUn+L2U/91AyYbH2
         Vvs6sbQVaQnDLBLvOu4dyFPKG36GzsdCM8qFDHvNHx5WvnnuWYEQDuxiWBOn+GoOCmXs
         g8DjBxgkH/IfIn2hlM9jyUku0rPTQ7YAIEJzkyzhWvw/8n36Sj8M8EIRcqxW9MqPF7kC
         9bFg/vhQA9u10Jjjehum3AQ665vksdJqEX5qyx2SteV+9MEWXBqyF6da41UJlI48JL5K
         eaMZiM4Kg8myMehG0qX/y8XcM7XaIsvAVWJ2n2REfdOW2bPNSGkeMe/jEy0glMPl228h
         RO3Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781560431; x=1782165231; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MAw7xAS00Pxp7lTFSZCtf6qTpMGHE7iw4QUCdtuTrn4=;
        b=GbPB7oarCyMustrT0QJ/sFePY6CcCrYFkzAS2wDG3DeKYS+UgirzxHNhf9gw/A07Fb
         wFE8RoUN5oyIZJ91hnWE3vkaLqnI+E//zP+CJTihPA1rD9+xSHJjPK2Lge/vCKg3jzaB
         uihwyLReFNmPMPEkNtpH75idemBhWQFKG8LFK9XQvVzjHJhgbyP+tYRs5fI5igRcbb9C
         fevWUfOQEPWsJEIcGiEITMuRfSzlmDFGWBII6CXYlK4+cVLCRomjx3JQ+O4ZrgOlDYu1
         iQ2F2w4wkAlcglgtCYkz76C9VDRYIhY8KgFg6OMX5u+lVmnVcP/IUqVh934Ppz9kg3gs
         8lZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781560431; x=1782165231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MAw7xAS00Pxp7lTFSZCtf6qTpMGHE7iw4QUCdtuTrn4=;
        b=UvFtmWmPaFfFQV6rDUHkknVG6Nd7/cWt7fmpWrUDwzwHF/9V0FgpCJPDuHTSAs5Pkz
         4KjKXH0axGfAxA2fGyZkrF4rNg903YZQPjqK5SLoYOUmTXSERG4No5esdOhzJ8sKEQbc
         QjIwnU90Y9aoWSI+IYlLe87/l9lAAIImMiNltnC0/7F6mFjeHTSiUM/j9HLAW7+MXS0I
         uuvQxVMCVfZ4T9MjLNrmcsfgaVwsg6a7k/BKk7iO9cOZtz57deHFBLnj22w05T/7XmLg
         YMLT79D4aUF132JfcsKCOvdwXvvwokSHS/uVuNe419fBAGssHNqMkr5u8id0nr7UDVWb
         JWtw==
X-Forwarded-Encrypted: i=1; AFNElJ843AlVvxHTK9/JlB73AbxJGyzmIdC09G8VcT2KZDUiLZWl2PnxDfLzeNzwya8zPYJepJDRZiPGh88=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqEEcLO+GOvRHYlDxJ6Z9GA8QK98CQD8Uou89gd4nYcP1rH2il
	OsNzuDF3eEqCSgBOVvmctJv4iN/qZmh6ovg+ZI1Y3KHOhQaoeqk4BwvNHAtpYFtUkpq3udE7SHM
	glWub7vtd0ziZGLpyZGvXK5c0xGt/mdkgKKuAhz8y
X-Gm-Gg: Acq92OETgPuld3UVPPb0goat9MuwDzWP6gRnWdLHGG08Q9Z3cqo0JdguWXL0a1WyVLP
	S56su2vvtJ4JtvPEDD+WRXJTy/iNrMRiT1IxJnKa1PQMD78MO54LdYFtevv9gr3AuUNad4iUHpU
	5xpCTN30zkL09WXrbU8GUmF7kn52ojlqaDvj6Nedy7rjDktBdwAnGBPpYUjJs8buSjvn6Nc40nV
	Sk17o3fYXfR8rMa1AidqH3Jh+LyT7DImSNpTyhpppXHCo97gmvOW9yEHM9VTT5b8gYbpJLbEi2O
	96M2lEblmop0q+brzMbAPU9IIcBPkm1TUVsP/Q==
X-Received: by 2002:a05:6808:170f:b0:485:15bd:60e8 with SMTP id
 5614622812f47-48741b51368mr7889705b6e.35.1781560430903; Mon, 15 Jun 2026
 14:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260615180556.4048184-2-rdbabiera@google.com> <20260615181706.37CEE1F000E9@smtp.kernel.org>
In-Reply-To: <20260615181706.37CEE1F000E9@smtp.kernel.org>
From: RD Babiera <rdbabiera@google.com>
Date: Mon, 15 Jun 2026 14:53:39 -0700
X-Gm-Features: AVVi8CfdaUv4C0Jec2nygNARmn06gsFvMFXSZkGy4qWWVfVu5cK-IRmgwemhDeI
Message-ID: <CALzBnUE+pDfb2XhPeSb=6ihi1xPt23HVSDMs47XZmc1pn-y4gQ@mail.gmail.com>
Subject: Re: [PATCH v1] phy: Add USB3 PHY support to Google Tensor SoC USB PHY driver
To: sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, 
	neil.armstrong@linaro.org, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_145353_575792_93B50E31 
X-CRM114-Status: GOOD (  20.08  )
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

T24gTW9uLCBKdW4gMTUsIDIwMjYgYXQgMTE6MTfigK9BTSA8c2FzaGlrby1ib3RAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4gW1NldmVyaXR5OiBIaWdoXQo+IERvZXMgdGhpcyBtaXNzaW5nIHVwZGF0ZSBj
YXVzZSBVU0IzIHNpZ25hbCByb3V0aW5nIGZhaWx1cmVzIG9uIG9yaWVudGF0aW9uCj4gY2hhbmdl
cz8KPgo+IFdoZW4gdGhlIFR5cGUtQyBvcmllbnRhdGlvbiBjaGFuZ2VzLCBnb29nbGVfdXNiX3Nl
dF9vcmllbnRhdGlvbigpIHVwZGF0ZXMKPiB0aGUgc29mdHdhcmUgc3RhdGUgYW5kIGNhbGxzIHNl
dF92YnVzX3ZhbGlkKGdwaHkpLiBXaGlsZSB0aGlzIHdhcyBzdWZmaWNpZW50Cj4gZm9yIFVTQjIs
IGl0IGRvZXNuJ3Qgc2VlbSB0byByZXByb2dyYW0gdGhlIG5ld2x5IGFkZGVkIFVTQjMgVENBIGhh
cmR3YXJlCj4gbXVsdGlwbGV4ZXIuCj4KPiBJZiB0aGUgb3JpZW50YXRpb24gZmxpcHMgd2hpbGUg
dGhlIFVTQjMgUEhZIGlzIGFjdGl2ZSwgd2lsbCB0aGUgaGFyZHdhcmUKPiBzdGF0ZSBtaXNzIHRo
ZSB1cGRhdGUgYmVjYXVzZSBwcm9ncmFtX3RjYV9sb2NrZWQoKSBpcyBub3QgaW52b2tlZCwgbGVh
dmluZwo+IHRoZSBUQ0FfVENQQ19DT05ORUNUT1JfT1JJRU5UQVRJT04gYml0IHN0YWxlPwoKcHJv
Z3JhbV90Y2FfbG9ja2VkIHNob3VsZCBiZSBjYWxsZWQgaWYgdGhlIHBoeV9pbml0IGFuZCBwaHlf
cG93ZXIgb24gc2VxdWVuY2UKYXJlIGNvbXBsZXRlZCBhbmQgYW4gb3JpZW50YXRpb24gY2hhbmdl
IGlzIG1hZGUuIEknbGwgYWRkIGFuIGludGVybmFsIHBoeSBzdGF0ZQplbnVtIHRvIGluZGljYXRl
IHdoZW4gdGhlIG9wZXJhdGlvbiBpcyBzYWZlIGFuZCBjaGVjayBpbgpnb29nbGVfdXNiX3NldF9v
cmllbnRhdGlvbi4KCj4gW1NldmVyaXR5OiBNZWRpdW1dCj4gSXMgaXQgc2FmZSB0byBtaXggZ290
by1iYXNlZCBlcnJvciBoYW5kbGluZyB3aXRoIHNjb3BlLWJhc2VkIGNsZWFudXAgaGVyZT8KPgo+
IEFjY29yZGluZyB0byB0aGUgY2xlYW51cCBzdWJzeXN0ZW0gZG9jdW1lbnRhdGlvbiwgdXNhZ2Ug
b2YgZ290byBhbmQgY2xlYW51cAo+IGhlbHBlcnMgbGlrZSBndWFyZChtdXRleCkgc2hvdWxkIG5l
dmVyIGJlIG1peGVkIGluIHRoZSBzYW1lIGZ1bmN0aW9uLiBDYW4KPiB0aGlzIGNyZWF0ZSBjb25m
dXNpbmcgZXhlY3V0aW9uIG9yZGVyIGFuZCByZXNvdXJjZSBvd25lcnNoaXA/CgpJJ2xsIHJlbW92
ZSB0aGUgZ28tdG8gc3RhdGVtZW50cyBoZXJlLgoKPiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBBcmUg
d2UgbWlzc2luZyBhIHN0ZXAgdG8gcmV2ZXJ0IHRoZSBoYXJkd2FyZSBjbG9jayByZXF1ZXN0IG9u
IHRoZSBlcnJvciBwYXRoPwoKc2V0X3BtZ3RfcmVmX2Nsa19yZXFfbigpIHdpbGwgcmVzZXQgb24g
dGhlIGVycm9yIHBhdGggYXMgdGhlIEhXIGlzIHBvd2VyZWQgZG93bgphbmQgcG93ZXJlZCBvbiwg
c28gdGhlcmUgaXMgbm8gY29uY2VybiBoZXJlLgoKPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gSXMgdGhp
cyBoYXJkd2FyZSB0ZWFyZG93biBzZXF1ZW5jZSBpbiB0aGUgY29ycmVjdCBvcmRlcj8KClRoZSB0
ZWFyZG93biBzZXF1ZW5jZSBpcyBjb25zaXN0ZW50IHdpdGggb3VyIHJlcXVpcmVtZW50cywgbm8K
Y29uY2VybiBvbiBvdXIgZW5kLgoKPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gV2lsbCB0aGlzIHVuY29u
ZGl0aW9uYWxseSB0aW1lIG91dCBvbiBzdWJzZXF1ZW50IHBvd2VyLW9uIGNhbGxzPwoKcGh5LWNv
cmUgZG9jdW1lbnRhdGlvbiBpbmRpY2F0ZXMgdGhhdCBwb3dlcl9vbiBpcyBjYWxsZWQgYWZ0ZXIg
cGh5X2luaXQsCmFuZCB0aGUgcG93ZXJfb24gY2FsbGJhY2sgd2lsbCBvbmx5IGJlIGNhbGxlZCB3
aGVuIHRoZSBwb3dlcl9vbiBjb3VudCBpcyAwLgpJbiBhZGRpdGlvbiwgdGhlIGFmb3JlbWVudGlv
bmVkIGludGVybmFsIHBoeSBzdGF0ZSB3aWxsIHByZXZlbnQgYW4gdW5uZWNlc3NhcnkKcG93ZXIt
b24gY2FsbCBpZiB0aGUgUEhZIGhhZCBub3QgYmVlbiB0b3JuIGRvd24geWV0LgoKPiBbU2V2ZXJp
dHk6IE1lZGl1bV0KPiBJcyB0aGUgdXNiM19jb3JlIG1lbW9yeSByZWdpb24gYWN0dWFsbHkgdXNl
ZCBhbnl3aGVyZSBpbiB0aGUgZHJpdmVyPwo+Cj4gVGhpcyBtYXBzIHRoZSB1c2IzX2NvcmUgcmVz
b3VyY2UgYW5kIGFib3J0cyB0aGUgcHJvYmUgaWYgaXQgaXMgbWlzc2luZywKPiBidXQgdGhlIHJl
c3VsdGluZyBncGh5LT51c2IzX2NvcmVfYmFzZSBwb2ludGVyIGRvZXNuJ3QgYXBwZWFyIHRvIGJl
Cj4gcmVmZXJlbmNlZCBsYXRlci4gQ291bGQgdGhpcyBpbnRyb2R1Y2UgYW4gdW5uZWNlc3Nhcnkg
c3RyaWN0IGRlcGVuZGVuY3kKPiB0aGF0IGJyZWFrcyB0aGUgcHJvYmUgb24gb2xkZXIgRGV2aWNl
IFRyZWVzIGxhY2tpbmcgdGhpcyByZXNvdXJjZT8KClRoaXMgY3VycmVudGx5IGlzbid0IGJlaW5n
IHVzZWQgaW4gdGhlIGRyaXZlciwgc28gaXQgd2lsbCBiZSBmaW5lIHRvCnJlbW92ZSBpdCBmb3Ig
bm93LgoKQmVzdCwKUkQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
