Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2345FC3ABAC
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 13:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETITxM/TfnX98QOJrCjHpRgbra3bo++3r/5r5PR37sg=; b=JQb8af9qSYR4po
	TkAP/w8+ZoYOkqHE/tW+JlXyhX79b+X6gM003ohz+j+yR7lm/R4hzH0jeUh/wnv7bo6Ahup4AYjRg
	AZ6LR0JiLqiLHFi11WxbKxlBJmVTYr7HYjwgMzTBx+3TTp8yl0NwDSdXb19WARRagX4gp6V2Mp9eI
	S7jZHPRqfNuw0aybrvQN9szkUMEzNvOxgUxsjYh/nwD0pmwjhbu88wncNPMfdrhoxy0NFpw9Z81XI
	79KGuyu7CUHrO479l4aVgGYg5xCIm3/Hw1n4c109Ers2QNk5hcdMb3WQ/ufbUaMMTH97Sd23LIU8r
	Y9cmSbsevpCXOKSbXWYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCI3Y-0000000C2PC-3eeg;
	Tue, 06 May 2025 13:09:56 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCFnP-0000000Bc61-3PWB
	for linux-phy@lists.infradead.org;
	Tue, 06 May 2025 10:45:08 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-54ac9b3ddf6so5407505e87.1
        for <linux-phy@lists.infradead.org>; Tue, 06 May 2025 03:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746528306; x=1747133106; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0S0fj9pxRR8b5jSD6MLFbjyTm1j4w1pUjEF4KfpSSsM=;
        b=M9Pyi4wAD2KOT4EML5l80lofVeWT8uHPc+eXO00a2LpF5NhskA5ZbP1V82j7mxfnBm
         cqMFzyO0p3SYyo/spBlUbwrGmngztdyj9PClmVsJxRs//765OLwN347/1ENEN7bxWpZB
         b+Rps95nAK9PwQHf7QMfiZG1gXbxIi2Gn21ObnL5fpw0xXrddrsPcGUD/k7v48dCQka9
         o4LEliUSRbK8tQdc0uTMuvV9R5h+5WjaxsxpAik5+DwoenUeIX6Rmz7MvRCYoGQn0Ojq
         GmgIllOLdswJFc40Zv5TpGfUB/ogtHukLUrABmSOqf1I43PEjtUvI/3VREZjj4P+H/ET
         STNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746528306; x=1747133106;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0S0fj9pxRR8b5jSD6MLFbjyTm1j4w1pUjEF4KfpSSsM=;
        b=luAwZwm9Gk/qYl0RbTPTofwZLw80vPaekDFvwazSJq76YiKE6pap2NPL3xP03qUBnV
         bqYLzoxJ1shbephWjRmhl/cu2Q2Een5DEbHt1ULTqx5GTwSDHbD+t8c906z7TK7TwCCJ
         kmMh/5l2K0m5dD0g96LaP7YryHVoj7qucfcnnA02lqtJ70Dk1VkTEwqqyTW3daB7FCsY
         VMb2CLaS4+LUXwZQZYk2nMjyZlLLsTdECFGNqFiqtEZR92b9l3A1QaKCCPfNB9mW2lZO
         QZdIfsAde6MGoRZ576rQa1VD7H8u/bZUcYhWl7A4J3f0KZys7DrTRX/Cmt7UDLLxO1Bf
         Lf/A==
X-Forwarded-Encrypted: i=1; AJvYcCVyugaUptbYwCXa5TEF58paBoo6zqJoKa8Y4Fu58VjZS57bISTZqzX9uvhrklLzRk9Q47XP5jM/wpg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfFkqAOZGTLtCLfOvn3NPLtUQoML9qIdQ4gUM/PdP3FNrd3Blx
	yAUQzDg9uRrfDsf62bNmMeg6qZXEUayvk18UfcikcDjqSd3usWeFr92yZJyKesv7WGHORCORNnH
	7+irg0o3S2T4ueCTmZSQwajSbDLo=
X-Gm-Gg: ASbGncs/9Q1UlbNEeysR9PRzYVFW3iC8vM2hshRqHXduD/q6PTCVosqZc0ZZy44hFxP
	2I6tWxPDeBwPQBgjlcwA+Q5TWyV2Co2aO5f+rmFRRHmBaFpfThfH01GnQjOMesjBKsviUBAP4rd
	KDDzg/Jr3HmVj74x7Z8p28SuNWFirNl6Wa8A==
X-Google-Smtp-Source: AGHT+IH9PNd8hlxiWlK5qk2aXHbk+UNbCg3lFJraFSfHUkRwwn4of15fI+cwgYdFXfyeSGxNFfF+9OOqcNwyb29hug4=
X-Received: by 2002:a05:6512:3c99:b0:544:ffbe:cd22 with SMTP id
 2adb3069b0e04-54fb4a9804dmr786783e87.46.1746528305662; Tue, 06 May 2025
 03:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <20250404-xusb-peripheral-v1-1-99c184b9bf5f@gmail.com>
 <CALHNRZ_QUY7NPH87RYqFWEy4PkTgV5uZVZ6hh3sbe=U_8ga2jQ@mail.gmail.com>
 <CALHNRZ9s5EdL3vapyJS4TdT=v5v_QG-=n8ABNJDLU4B-7w+wRw@mail.gmail.com>
 <CALHNRZ96Cs8+gyyb=_jTpvCq--uF3P1s8_m7t25nN_vPx0ELXA@mail.gmail.com>
 <66776953-ef1d-40ac-9d4b-a35a6ebae20c@nvidia.com> <CALHNRZ8uXZQObwQBC-sLudUdtprM24qU5yYdb4D3FEP2AQVkmQ@mail.gmail.com>
 <b96ab3b0-3afb-4918-8db8-f6cab45576fd@nvidia.com>
In-Reply-To: <b96ab3b0-3afb-4918-8db8-f6cab45576fd@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 6 May 2025 05:44:53 -0500
X-Gm-Features: ATxdqUFydWW4ew7f9iRG9xOkB-y1i5aCY8W2iNBRJzuaeuS8Q9cA-ObsrH6XuA4
Message-ID: <CALHNRZ9tgWTo8tUB1+Whf68CYu+qiMhO_S+KC2R0kFbDAjT9OQ@mail.gmail.com>
Subject: Re: [PATCH] phy: tegra: xusb: Default otg mode to peripheral
To: Jon Hunter <jonathanh@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_034507_850697_8FC0E925 
X-CRM114-Status: GOOD (  26.70  )
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

T24gVHVlLCBNYXkgNiwgMjAyNSBhdCA1OjMw4oCvQU0gSm9uIEh1bnRlciA8am9uYXRoYW5oQG52
aWRpYS5jb20+IHdyb3RlOgo+Cj4KPiBPbiAwNi8wNS8yMDI1IDExOjAzLCBBYXJvbiBLbGluZyB3
cm90ZToKPgo+IC4uLgo+Cj4gPj4gU29ycnkgZm9yIHRoZSBkZWxheS4gSSBoYXZlIGhhZCBhIGxv
b2sgYXQgdGhpcyBwYXRjaCBhbmQgSSBhbSBub3Qgc3VyZQo+ID4+IGFib3V0IHRoaXMuIFRoZSBm
dW5jdGlvbiB5b3UgYXJlIGNoYW5naW5nIGlzIGNhbGxlZAo+ID4+ICd0ZWdyYV94dXNiX3BhcnNl
X3VzYl9yb2xlX2RlZmF1bHRfbW9kZScgYW5kIGl0IGlzIGRvaW5nIHByZWNpc2VseSB3aGF0Cj4g
Pj4gaXQgd2FzIGludGVuZGVkIHRvIGRvLiBJbiBvdGhlciB3b3JkcywgcGFyc2UgZGV2aWNlLXRy
ZWUgYW5kIHNldCB0aGUKPiA+PiBtb2RlIGFjY29yZGluZ2x5LiBTbyBmb3JjaW5nIHRoZSBtb2Rl
IGluIHRoaXMgZnVuY3Rpb24gZG9lcyBub3QgZmVlbAo+ID4+IGNvcnJlY3QuCj4gPj4KPiA+PiBB
bHNvIGZyb20gdGhlIGRlc2NyaXB0aW9uIGl0IGlzIG5vdCAxMDAlIGNsZWFyIHRvIG1lIHRoZSBl
eGFjdCBzY2VuYXJpbwo+ID4+IHdoZXJlIHRoaXMgaXMgcmVhbGx5IGEgcHJvYmxlbS4KPiA+Cj4g
PiBNeSBzcGVjaWZpYyB1c2UgY2FzZSBpcyBib290aW5nIEFPU1AvQW5kcm9pZCBvbiBUZWdyYSBk
ZXZpY2VzIHVzaW5nCj4gPiBtYWlubGluZSBzdXBwb3J0LiBBbmRyb2lkIGRlYnVnIGJyaWRnZSBp
cyBjb25maWd1cmVkIHRvIHVzZSB4dWRjIG9uCj4gPiB0aGUgb3RnIHBvcnRzLiBBcyBtYWlubGlu
ZSBpcyBjdXJyZW50bHkgc2V0IHVwLCB0aGUgZGVmYXVsdCB1c2Igcm9sZQo+ID4gaXMgJ25vbmUn
LiBTbyBpZiBJIGJvb3QgYSB1bml0IHdpdGggYSB1c2IgY2FibGUgYWxyZWFkeSBwbHVnZ2VkIGlu
dG8KPiA+IHRoZSBkZWJ1ZyBwb3J0LCBJIGNhbm5vdCBhY2Nlc3MgYWRiLgo+ID4KPiA+IEkgb3Jp
Z2luYWxseSBmaXhlZCB0aGlzIGJ5IHNldHRpbmcgcm9sZS1zd2l0Y2gtZGVmYXVsdC1tb2RlIGlu
IHRoZQo+ID4gZGV2aWNlIHRyZWUgZm9yIGV2ZXJ5IGRldmljZSBJJ20gdGFyZ2V0aW5nLiBUaGVu
IEkgbG9va2VkIGF0IGp1c3QKPiA+IGRlZmF1bHRpbmcgdG8gcGVyaXBoZXJhbCBtb2RlIGluIGNv
ZGUuIEFuZCBhcyBtZW50aW9uZWQgaW4gdGhlIGNvbW1pdAo+ID4gbWVzc2FnZSwgb3RoZXIgdXNi
IGRyaXZlcnMgYWxyZWFkeSBkZWZhdWx0IHRvIHBlcmlwaGVyYWwgbW9kZSBpbnN0ZWFkCj4gPiBv
ZiBub25lLiBJJ20gb3BlbiB0byBvdGhlciBzb2x1dGlvbnMsIGJ1dCByZXF1aXJpbmcgZXZlcnkg
ZGV2aWNlIHRyZWUKPiA+IHRvIHNldCBhIGRlZmF1bHQgcm9sZSBkb2Vzbid0IHNlZW0gbGlrZSBh
IGdvb2Qgc29sdXRpb24gZWl0aGVyLgo+Cj4gVGhhbmtzIGZvciB0aGUgYmFja2dyb3VuZC4gSSBz
ZWUgdGhhdCB0aGUKPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3VzYi1k
cmQueWFtbCBzdGF0ZXMgdGhhdCAuLi4KPgo+ICAgIHJvbGUtc3dpdGNoLWRlZmF1bHQtbW9kZToK
PiAgICAgIGRlc2NyaXB0aW9uOgo+ICAgICAgICBJbmRpY2F0ZXMgaWYgdXNiLXJvbGUtc3dpdGNo
IGlzIGVuYWJsZWQsIHRoZSBkZXZpY2UgZGVmYXVsdCBvcGVyYXRpb24KPiAgICAgICAgbW9kZSBv
ZiBjb250cm9sbGVyIHdoaWxlIHVzYiByb2xlIGlzIFVTQl9ST0xFX05PTkUuCj4gICAgICAkcmVm
OiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9zdHJpbmcKPiAgICAgIGVudW06IFto
b3N0LCBwZXJpcGhlcmFsXQo+ICAgICAgZGVmYXVsdDogcGVyaXBoZXJhbAo+Cj4gUmF0aGVyIHRo
YW4gcmVmZXJlbmNlICdzeW5vcHN5cyBkd2MzJyB3aGljaCBpcyBub3QgcmVsYXRlZCB0byB0aGUg
VGVncmEsCj4gaXQgd291bGQgYmUgYmV0dGVyIHRvIHVwZGF0ZSB0aGUgYmluZGluZyBkb2MgZm9y
IFRlZ3JhIFhVU0IgcGFkY3RsIGRldmljZQo+IHRvIGxpc3QgdGhpcyBwcm9wZXJ0eSBhbmQgZGVm
aW5lIHRoZSBkZWZhdWx0IG1vZGUuCgpMZXQgbWUgbWFrZSBzdXJlIEkgdW5kZXJzdGFuZCB5b3Ug
Y29ycmVjdGx5LiBZb3UncmUgcmVxdWVzdGluZyB0bwp1cGRhdGUgdGhlIGJpbmRpbmcgYXMgYWJv
dmUsIGxpc3RpbmcgcGVyaXBoZXJhbCBhcyBkZWZhdWx0IHdoZW4gdW5zZXQ7CmZpeCBteSBjb21t
aXQgbWVzc2FnZTsgYW5kIGxlYXZlIG15IGNvZGUgY2hhbmdlIGFzLWlzPyBJJ20gdW5jbGVhciBv
bgppZiB0aGUgY29kZSBpcyBva2F5IGFzLWlzIG9yIG5vdC4KClNpbmNlcmVseSwKQWFyb24gS2xp
bmcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
