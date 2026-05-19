Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6275CD4F54
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 06:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJd9qRu0CkSvnZIl3K5Nz1gscD9vQEsLNDH8w4wDS6M=; b=yodxK9MRB4UOnN
	noHkgL5727cCkRHcrGtf9UU/u15X63htzA2iOv0/Y9CRB7ZijEdRaNQ+7wELPd8sfivBabgwAAjUZ
	hpNQmuDJ06S52hIW752AQ2ntlHIoiOHbHm9ACeMZ2DSAEPJBOW5GVCC4dbzrr3ceRhKRVK8SSRW4/
	ICPIOGoCpGH95TKPWpGzMu9lK5BGeFkl0P5gQuWXdrdEUhtzUufTzByThgSwjko0PvBLXojMNi0st
	PLHjbLrABw5+8k2RY6Ln6a/754gW1vBTNHDzFbmoPv3Pj7gbRVjOk38zX7+AbaUMyoZIXRxj5p/5T
	fNbq85JYrSaoBmgIIDcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDjT-00000000IIw-2NfV;
	Tue, 19 May 2026 06:15:11 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDjR-00000000IIR-3O4q
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 06:15:11 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-135200bc7d2so8642328c88.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 23:15:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779171309; cv=none;
        d=google.com; s=arc-20240605;
        b=TGOlvidH4y3bp+PuEGNW5lqcQ2aRJjqZnoxAUQcUKDW7vDsnbtLBLSq+0A1Clmh5co
         np3Ld+kjXzcxm1VLmsRhA6FWd7c05SvNJFSaSWdUxDUk5c/iyQPdf7/Aww3MdwnIccRR
         kagvBTwIQhNcNb6XDbmwcuWAu7tCl30yhmkKN50mK1tabj8qNeQJEF8J75mal7Jlf07p
         6Z4KDYx+LKpuENEFCl8iu3MOP9E6784rtfXqdr97kM7Kg2tWoR7vwKVQOMvjWnMPyCz7
         9E5Z/wkz9DHtLM2GtQhE0gOwZWD/8SgXrzEQhDs6tELwnvxpIFx7j8oqtlhaAScxuB4b
         h/JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=e3rxUJ/0l+GpFnRLs/exHMJwdlcSweb1iM7tuoW5l3A=;
        fh=3r5vt7fb+m4vaTjxCuqXm47TREjKDxHNy7sL9xbfYKQ=;
        b=fxKO6AYq1dIQvm0e1eqFzR4r+PLh8xtMhzEgnox2fHTVSBq06u4r89j8CzZvicw9xO
         SyWdRcPbfMsS6ZBKTP+53df3M8lq5FF+LFIbvXoP3XtIx77gDDCQUfNlU4gnlu7ZGcNL
         xPP5o7vjby+qwUn8N8Qxv8giia8/vOvEiJNdj6jHgd82f8vdwETGCQw+Uys/4g+U4cPs
         wBTeFxc2TSXPZuSKwHWlUTmM09uCXMzgfM9T13TNMggOiijqdyFqO7dl7cWXMp1cThBp
         QhserxeDxCROROVe/dpsjre3F0U5QThwEwgy6onvtSbX9es/ZWpfOburlyW15RuD2aDF
         Lz3A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779171309; x=1779776109; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e3rxUJ/0l+GpFnRLs/exHMJwdlcSweb1iM7tuoW5l3A=;
        b=bJpa+bXe3UsMqjo5Ei6i/0/WwYBdWSjLrsg2k6SjE1M/r+Vfjv8z2rCeITwnJ8PNm+
         Yzk2BdufkRBcfqo2F9H797d98RsnAHq43UOgZ2TjR/5UJaJChxwxXAmP5fvKJIYb4MNU
         8BlV/QzzadJKHBaBqZiu99O7UsE+3q5c79EYnC5jggPkxWvL0ioP22+1GXl1uvL+4Eci
         5StPs6SbyTudnpmiw+wwRyQC2FEdfE0psOS35Xu9FiSxjqvw48s2GISyNQz49Uz1dL2P
         LiCROz+PHtTNxRROCkyLyB+pSZSTa+3gMCXnykmj59ZFdqWIBDSZxq5/R5RDCvpQ/jMR
         YrJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779171309; x=1779776109;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e3rxUJ/0l+GpFnRLs/exHMJwdlcSweb1iM7tuoW5l3A=;
        b=CN6FBtdtcML0KY0dnt83L1SpnCw/zK86ssFYaeJc5oM72i314bmgjOql5IX5wIQYyV
         r8yWjPwErA9DVJnqJEr8Fh+ziFrXYl1QD0/1aPeeDBrQdXr8yu+CiEoyUZ8iP5b0vq0b
         SAc/Kb41lNLpkdKGMgQSUT+HdRRiJTnukxFCRP3oItl8uG7lL1fptG8OSZC1lNkWDC3k
         XoR9zBGQuZ+q+6//RfVo/t7wT2ehEnGq/R6QS4jB3yhG4d6xg41JzX9z4so2wb2qMLR/
         8yZsGuuytFYkVP3SLjFgaf8KnhR2W5vL9Yoi/J/Gkaq70bcsSmRYxfubNOMcGfeCWBdZ
         x8fg==
X-Forwarded-Encrypted: i=1; AFNElJ+pg45U7lbvI8XaEMCYeMx9vp6pcrpc46y3IkpVy3SgLIFvqdVhV1scMlGTFpS4Te5qA55ndwhFEko=@lists.infradead.org
X-Gm-Message-State: AOJu0YzGOdnIPp/WAToufuLtDM8CssNwZFO39HhfnXQ/FvtyGm+DAi82
	O1cCGD/Iyi8gKKf7FRqRqRiXfCe3SxzpSh2WK/jH39FBPAa3vAOBgVKPiouMLBGe4DUAWeUOC7p
	dtQkd4aca1gCYvh0EEM7j1+fAFKoPzi0=
X-Gm-Gg: Acq92OE9NnM28pxAkt86KUWOTvZKywlrWN4lqDVOurKuovXlFgpP965oZT+8bFnGafv
	c8MQbmI5tHWLxmUnNMZF0DZgA9k6eNl5J2zHWMu79Sfmbmx86ODyU5xd3yHi5+MkeC3fFJM12xL
	xiPJeCyooPNvxlycpNAufhG+/uzLYjj4cXyx7tPFSXCpkip3khyBjJkileEgcu3BS0tnFGRrA3m
	IAIn38SkKBXYPFBgvkEeiulCHtQdncUUL0lD2XffiaZv6OJoqnANEXCR5cr3r44My0qHo4fSpR+
	lRaxD5LW
X-Received: by 2002:a05:7300:a984:b0:2c5:b23e:48a9 with SMTP id
 5a478bee46e88-303986a160emr7175515eec.25.1779171308865; Mon, 18 May 2026
 23:15:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260511135703.62470-1-clamor95@gmail.com> <20260511135703.62470-6-clamor95@gmail.com>
 <20260515-utopian-malamute-of-patience-367e8e@quoll> <CAPVz0n2wrAdU0JKx7eb7uosCcoGayqNchK591VPph-5_nBAMXg@mail.gmail.com>
 <20260518-mustard-rabbit-of-ecstasy-eed3b6@quoll>
In-Reply-To: <20260518-mustard-rabbit-of-ecstasy-eed3b6@quoll>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 19 May 2026 09:14:56 +0300
X-Gm-Features: AVHnY4IxlqAJY6NaFP2GVNqF_snPzx1hM2RZ9fLkqEGHKp_bJ_sC8-qzf4i8pFA
Message-ID: <CAPVz0n3C+g9zLaq9gN1OFnC=19oRwoZon_E0q0oFKbn-dG-FaA@mail.gmail.com>
Subject: Re: [PATCH v1 5/6] dt-bindings: phy: tegra: Document Nvidia Tegra
 XMM6260 PHY
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
X-CRM114-CacheID: sfid-20260518_231509_853462_A334B50B 
X-CRM114-Status: GOOD (  43.40  )
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

0L/QvSwgMTgg0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMTU6MTQgS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPiDQv9C40YjQtToKPgo+IE9uIEZyaSwgTWF5IDE1LCAyMDI2IGF0
IDExOjM3OjM0QU0gKzAzMDAsIFN2eWF0b3NsYXYgUnloZWwgd3JvdGU6Cj4gPiDQv9GCLCAxNSDR
gtGA0LDQsi4gMjAyNuKAr9GALiDQviAxMToyMCBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtl
cm5lbC5vcmc+INC/0LjRiNC1Ogo+ID4gPgo+ID4gPiBPbiBNb24sIE1heSAxMSwgMjAyNiBhdCAw
NDo1NzowMFBNICswMzAwLCBTdnlhdG9zbGF2IFJ5aGVsIHdyb3RlOgo+ID4gPiA+IERvY3VtZW50
IHRoZSBYTU02MjYwIFBIWSB1c2VkIGJ5IHZhcmlvdXMgZGV2aWNlcyBiYXNlZCBvbiB0aGUgTnZp
ZGlhIFRlZ3JhCj4gPiA+ID4gU29DLCBkZXNjcmliaW5nIGl0cyB1c2FnZQo+ID4gPiA+Cj4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogU3Z5YXRvc2xhdiBSeWhlbCA8Y2xhbW9yOTVAZ21haWwuY29tPgo+
ID4gPiA+IC0tLQo+ID4gPiA+ICAuLi4vYmluZGluZ3MvcGh5L252aWRpYSx0ZWdyYS14bW02MjYw
LnlhbWwgICAgfCA1OCArKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA1OCBpbnNlcnRpb25zKCspCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwKPiA+
ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwKPiA+ID4gPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMDM0NjQzM2M5NzcyCj4g
PiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvbnZpZGlhLHRlZ3JhLXhtbTYyNjAueWFtbAo+ID4gPiA+IEBAIC0wLDAg
KzEsNTggQEAKPiA+ID4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1Ig
QlNELTItQ2xhdXNlKQo+ID4gPiA+ICslWUFNTCAxLjIKPiA+ID4gPiArLS0tCj4gPiA+ID4gKyRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L252aWRpYSx0ZWdyYS14bW02MjYw
LnlhbWwjCj4gPiA+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVt
YXMvY29yZS55YW1sIwo+ID4gPiA+ICsKPiA+ID4gPiArdGl0bGU6IE52aWRpYSBUZWdyYSBQSFkg
Zm9yIFhNTTYyNjAgbW9kZW0KPiA+ID4KPiA+ID4gWE1NNjI2MCBpcyBJbmZpbmVvbiBtb2RlbSwg
c28gYW55IGNvbWJpbmF0aW9uIHdpdGggbnZpZGlhLHRlZ3JhIGlzIHZlcnkKPiA+ID4gY29uZnVz
aW5nLgo+ID4gPgo+ID4KPiA+IE1heSB5b3UgcGxlYXNlIHN1Z2dlc3QgaG93IHRvIGFkanVzdCB0
aGUgbmFtZSB0aGVuPyBUaGFuayB5b3UuCj4KPiBEZXBlbmRpbmcgd2hhdCBpcyB0aGF0LiBTdGFy
dCBkZXNjcmliaW5nIGhhcmR3YXJlLCBub3QgZHJpdmVyIGJlaGF2aW9yCj4gdG8gaGVscCBpbiB0
aGF0Lgo+Cj4gPgo+ID4gPiA+ICsKPiA+ID4gPiArZGVzY3JpcHRpb246Cj4gPiA+ID4gKyAgQSBo
YXJkd2FyZSBjb25maWd1cmF0aW9uIHVzZWQgaW4gVGVncmEgU29DcyB0byBwcm92aWRlIHByb3Bl
ciBpbnRlcmFjdGlvbgo+ID4gPiA+ICsgIGJldHdlZW4gdGhlIGFwcGxpY2F0aW9uIHByb2Nlc3Nv
ciBhbmQgdGhlIG1vZGVtLCBhcyB3ZWxsIGFzIGNvbnRyb2wgb3Zlcgo+ID4gPiA+ICsgIG9uZSBv
ZiB0aGUgU29DJ3MgVVNCIGxpbmVzIGZvciB0aGUgbW9kZW0uCj4gPiA+ID4gKwo+ID4gPiA+ICtt
YWludGFpbmVyczoKPiA+ID4gPiArICAtIFN2eWF0b3NsYXYgUnloZWwgPGNsYW1vcjk1QGdtYWls
LmNvbT4KPiA+ID4gPiArCj4gPiA+ID4gK3Byb3BlcnRpZXM6Cj4gPiA+ID4gKyAgY29tcGF0aWJs
ZToKPiA+ID4gPiArICAgIGNvbnN0OiBudmlkaWEsdGVncmEteG1tNjI2MAo+ID4gPgo+ID4gPiBB
bHNvIGhlcmUuCj4gPiA+Cj4gPiA+IFdoYXQgc29ydCBvZiBwaHkgaXMgdGhpcz8gU28gZmFyIGxv
b2tzIG1vcmUgbGlrZSBhIHNvZnR3YXJlIGNvbnN0cnVjdC4KPiA+ID4KPiA+Cj4gPiBJbmZpbmVv
biBYTU02MjYwIGRvZXMgbm90IHdvcmsgYXMgYW4gb3JkaW5hcnkgVVNCIG1vZGVtLCBpdCBpcyBh
Cj4gPiBzdGFuZGFsb25lIENQVSB3aGljaCBqdXN0IGV4cG9zZXMgaXRzZWxmIHRvIEFQIHZpYSBV
U0IuIEluIG9yZGVyIHRvIGRvCj4gPiBzbywgaXQgaGFzIHRvIGhhdmUgY29udHJvbCBvdmVyIGEg
VVNCIGJ1cyBvZiBBUCB3aGljaCBpcyBkZWRpY2F0ZWQgdG8KPiA+IGl0LiBJbiBjYXNlIG9mIFRl
Z3JhIC0gWE1NNjI2MCBpbnRlcmFjdGlvbiBpdCBsb29rcyBsaWtlIHRoaXM6IHNlY29uZAo+ID4g
VGVncmEgVVNCIGNvbnRyb2xsZXIgaXMgc2V0IGludG8gSFNJQyBtb2RlIGFuZCBpcyBkZWRpY2F0
ZWQgc29sZWx5IHRvCj4gPiB0aGUgbW9kZW0sIG1vZGVtIGNvbnRyb2xzIHRoaXMgVVNCIGJ1cy4g
VGhlbiB0aGUgbWFpbiBYTU02MjYwIGRyaXZlcgo+ID4gcGVyZm9ybXMgcG93ZXIgYW5kIGluaXQg
c2VxdWVuY2UgYW5kIG9uY2UgaXQgaXMgcmVhZHkgaXQgY2FsbHMgcGh5IHRvCj4gPiByZWdpc3Rl
ciBjb250cm9sbGVyLiBQaHkgaGFzIGl0cyBvd24gc3VwcGx5LCBjb250cm9scyBVU0IgY29udHJv
bGxlcgo+ID4gZGUvcmVnaXN0ZXIgYW5kIHVzaW5nIGVuYWJsZSBHUElPIHNlbmRzIHNpZ25hbCB0
byBtb2RlbSB0byBwcm9jZWVkLgo+ID4gQWRkaXRpb25hbGx5LCBzaW5jZSBzb21lIFhNTTYyNiB2
ZXJzaW9ucyBoYXZlIGEgZmV3IHN0ZXBzIHRvIHNldHVwCj4gPiBleHBvc2luZyBkaWZmZXJlbnQg
VVNCIGRldmljZXMsIHBoeSBoYW5kbGVzIGNvbnRyb2xsZXIgcmVpbml0IGZvciBlYWNoCj4gPiBz
dGVwLiBJZiB0cmVhdCBYTU02MjYwIGFzIGFuIHNpbXBsZSBVU0IgbW9kZW0gaXQgd2lsbCBuZXZl
ciBpbml0Lgo+ID4KPiA+IE9uZSBtb3JlIGJlbmVmaXQgb2YgaGF2aW5nIFBIWSBpcyB0aGF0IG1v
ZGVtIGRyaXZlciBpdHNlbGYgaXMgZ2VuZXJpYwo+ID4gYW5kIFBIWSBoYW5kbGVzIFNvQyBzcGVj
aWZpYyBjb25maWd1cmF0aW9ucyByZXF1aXJlZCBieSB0aGUgbW9kZW0uCj4gPiBTaW5jZSB0aGlz
IG1vZGVtIHdhcyB1c2VkIG9uIGEgdmFyaWV0eSBvZiBkaWZmZXJlbnQgU29DJ3MgKEV4eW5vcyBh
bmQKPiA+IE9NQVAgZm9yIGV4YW1wbGUpIHRoZXkgY2FuIHJldXNlIG1vZGVtJ3MgZHJpdmVyIGFu
ZCBwcm92aWRlIG9ubHkgUEhZCj4gPiB3aGljaCBoYW5kbGVzIG1vZGVtIGludGVyYWN0aW9ucyB3
aXRoIHRoZSBVU0IgYnVzLgo+Cj4gV2l0aG91dCBhbnkgcmVnaXN0ZXJzIGhlcmUsIHRoaXMgaXMg
bm90IGEgUEhZIGJ1dCBhIHBvd2VyIHNlcXVlbmNpbmcsCj4ganVzdCBsaWtlIHdlIGRvIGZvciBv
dGhlciBVU0Igb3IgUENJIGRldmljZXMuCj4KPiBPcHRpb25hbGx5LCBpdCBjb3VsZCBiZSBwYXJ0
IG9mIGV4aXN0aW5nIFVTQiBwaHksIHdoZW4gY29uZmlndXJpbmcgaXQgaW4KPiBIU0lDIG1vZGUs
IGJ1dCBpdCBzZWVtcyB5b3UgYWRkIGhlcmUgc3VwcGxpZXMgZm9yIHRoZSBtb2RlbSwgbm90IGFj
dHVhbAo+IHBoeSBhcyB0aGUgcGh5IGlzIHVuZGVmaW5lZC4KPgo+IFRoZSBwcm9ibGVtIGlzIHRo
YXQgaW4gdGhlIHBhdGNoIGFuZCBleHBsYW5hdGlvbiB5b3UgbWl4IGRyaXZlciBtb2RlbAo+IGFu
ZCBkcml2ZXIgYmVoYXZpb3IsIHNvIEkgcmVhbGx5IGRvbid0IGtub3cgd2hhdCBpcyB0aGlzIGhh
cmR3YXJlLiBBbmQKPiBpdCBpcyBub3QgbXkgam9iIHRvIGd1ZXNzLCBidHcuIEEgcGFydGlhbCBh
cmd1bWVudC9wcm9vZiB3aHkgdGhpcyBpcyBub3QKPiBhIFBIWSwgaXMgdGhhdCB5b3UgcmVmZXJl
bmNlIHRoZSBVU0IgaW4gdGhlIG5vZGUsIHNvIHBoeS1wcm92aWRlcgo+IHJlZmVyZW5jZXMgdGhl
IHBoeS1jb25zdW1lci4gVGhhdCdzIHJldmVyc2UuIElmIHRoaXMgaXMgUEhZLCBpdCdzIFVTQidz
Cj4gSFNJQyBwaHksIHRodXMgdGhpcyBuZWVkcyB0byBiZSByZWZlcmVuY2VkIGJ5IFVTQi4KPgo+
IElmIHRoaXMgaXMgcG93ZXIgc2VxdWVuY2luZywgdGhlbiBpdCBjYW4gYmUgcmVwcmVzZW50ZWQg
YXMgVVNCIGRldmljZSwKPiBqdXN0IGxpa2Ugd2UgZG8gZm9yIGFsbCBVU0IgZGV2aWNlcywgYnV0
IHRoZW4gaXQgaXMgbm90IFBIWSBhbmQKPiBwaHktY2VsbHMgYXJlIG5vdCBhcHByb3ByaWF0ZS4K
Ckkgd2FzIGxvb2tpbmcgaW50byBwb3dlciBzZXF1ZW5jaW5nIGFuZCB1c2luZyBpdCBpbnN0ZWFk
IG9mIHBoeSBpcwpwZXJmZWN0bHkgZmluZSBmb3IgbWUuIEhvdyBJIHNlZSBYTU0gbW9kZW0gY29u
ZmlndXJhdGlvbjoKLSBtYWluIGRldmljZSB3aGljaCBoYW5kbGVzIG1vc3Qgb2YgZ2VuZXJpYyBw
b3dlciBzZXF1ZW5jZXMsCmluaXQvZGVpbml0IGFuZCBkZXRlY3Rpb24gZm9yIFVTQiBkZXZpY2Ug
KGJvdGgsIHRhcmdldCBVU0IgZGV2aWNlIGFuZAppbnRlcm1lZGlhdGUgc3RhZ2VzIGZvciBmdyBs
b2FkaW5nKQotIHBoeSBvciBwb3dlciBzZXEsIGRvZXMgbm90IG1hdHRlciwgYm90aCBmaXQsIHRo
YXQgcGVyZm9ybXMKbWFuaXB1bGF0aW9ucyB3aXRoIFNvQyBzcGVjaWZpYyBVU0IgY29udHJvbGxl
ciBpbiBvcmRlciB0byBlbnN1cmUKY29ycmVjdCBtb2RlbSBib290CgpJZiBJIHVzZSBwb3dlciBz
ZXEgdGhlbiBtb2RlbSB3aWxsIHJlcXVpcmUgbGluayB0byBwb3dlciBzZXEgYW5kIHBvd2VyCnNl
cSB3aWxsIHdvcmsgd2l0aCBVU0IgbGluZSwgdGhpcyBzaG91bGQgbm90IGNyZWF0ZSBjb25mdXNp
b24gb2YgcGh5CmFjcXVpcmluZyBVU0IgdGhhdCBpcyBwaHkgY29uc3VtZXIuIFdpbGwgdGhpcyBh
cHByb2FjaCBiZSBhY2NlcHRhYmxlPwoKPgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
