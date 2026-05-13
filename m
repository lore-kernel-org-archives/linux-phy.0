Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37E99CD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 17:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcrzqLN0wDr1sbU1ufiyq+Hl2ky4jKHltWuAm7uvWQg=; b=aI8E4aniFVjlTa
	aMzphjMIrXJN8hIloNJHzLtXcStjZuZ68mqsPrhMmPKeX6UW1CSiTjXUzreF60Mb2LsWj0LVRoJjW
	+Ox4yWvYcYEXHMYTnHEkZWNmuS4Jr9VQYcjAl7b5HWyIMmKtc17YVcT3Yd+bM3344kwDyhUcC0Uzd
	lDHQdq3moL22I6SgJZ5rg3gn9aPslI/zlytefip+WnIz5ggY3OyFFjmzCwkSvYOqw4VjWTCgfWK9u
	vBc/kK3hcR4/mFK0pLGrxj0+pu7RGdGOCjVRyYPRzbDVxt3U1BKB3XyWeK9YcU7wkNpqPT2CJcP3c
	7zFt6NndX2alkzIN7EdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNDPd-00000003MG3-3ShR;
	Wed, 13 May 2026 17:30:25 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNDPb-00000003MFF-2Y5R
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 17:30:24 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-2f36da5c8fbso6975513eec.0
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 10:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778693422; cv=none;
        d=google.com; s=arc-20240605;
        b=ZhgrwSL4EClSmKXkZq8tu+3f9BnAKUSFP9NjRZY3di24xE5VVOR4fRInqeph9/djTC
         GqjiepUThWpJi7jQtMRJYTJwZYnnnnF5yCHg+AlAqdFXblwcVzNT3JHlzcH/+OE9sAew
         DfJN/5JPf8uakC4mgI2vw8+QCgz1Q3bpFehwktpeyQ7JM6Jjdakrs1kZlhiRBgnaNAo4
         iC43GT0SXGWlqZWbwO55Z8Tzc2iBrUEBVkTylq41dMq+dwm8vua7Jc61Za5luk4ne7cp
         u4UeeAojx+QxIqKnrmlJfGDekeJJZvwWwmVIG41HCjq7uyvIJwHrMRpJUv+k6bHSP8Y3
         RjYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YDUAur+XoWH6JFWlom4UBKGDg0H33xYVizwbBkMvANo=;
        fh=rPFjGuU4jCTThy7LD9BryUcxpSKcAfDQiTOqr8zqViI=;
        b=jb8eI/G4zshJSXbO5PQOR3H0Nb9ivQFA+T7XTPiDEj+BrrMS8ZDzrAavh0tYZ0tBwc
         m/FJIzbRQCwxamOljvFa+YHSsQ1tndRqBlf2X2wrWhmTkdK/LdftA9znk5DIdK3lEIrM
         6Ces02mrnRijLCCW/eKfjLUWtovBK60p5DqxyOVZChzgvTHBEMQ7KT05+ILezTOvvKXQ
         LgKC01VD5riijvNNe5upyuQgrY9bc29LC2rXs+vZ5k+H+FDQyGJb1nNCSQ2Mjjac18a4
         ZUmY28LDgjk8QFhdE1m3HTL8scRtmYzHnOIUVScqAiRUkddG4qRkPc0VRrQZmK5IvMGP
         cb+A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778693422; x=1779298222; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDUAur+XoWH6JFWlom4UBKGDg0H33xYVizwbBkMvANo=;
        b=IKua25+LKWjG5MiOKWnGMwGa8VPWLzzQZfDsLWP4gk0zDcVo4NXxKj3E6AiHXHsNcr
         p5qoj+04k20Bf7X+Lk5ISzK0xBCRhBoZgRQMULDnPXTbSZqO12RkGGrjjN5QOYxAl0xK
         nFN4WNhOGzzfjiZAM+rhh4olE/9U1JZmCn74tbAxrKiYRfeKSDuPrL/UN1nRoE9VrWkG
         aTUsGd2aMbLn7JvO+PXLk6Bp/NRbfg969o66AVj6ZCRmCzuxn5/sEYUqJ/ZVmSJ0DWhA
         ukHdzy9PfkkNzaTdCCECdYKzGKP/YHUE0IoZMemWfilqMc6jdHiFrTjNTPwk1fbAEUjj
         uvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778693422; x=1779298222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YDUAur+XoWH6JFWlom4UBKGDg0H33xYVizwbBkMvANo=;
        b=monQLV2S49ElzR/Fn7hh4XmU+3itIYVwvosCU6xQsqA/6j1NWLkp3ris3WSfJ+a2Zy
         tpsQCjozRPFWf3tqMwABovHyJajaaImKX/fUMp/t4/96zjUt53e9mj+pj1gf2+mSKxs2
         GlF6pKOww9V7Vj2Nm8Gu7ARFzR7vVNdeCVs/NRLmRkoUEPDAy93UCsyr5Fh0/ujMYBvf
         eaDvX1EBKrpIvzbOuTfbz6b453MdwRSQBUOySkMGqhjbOQyBBoweaIk+qQVpWizzJ0RW
         E7q7QxwRBjLH5omgwwjEwydkqlKBJKtNeU9D2U655yF1O3zIGJwpja4UCoyjM3A+5RsC
         +n5A==
X-Forwarded-Encrypted: i=1; AFNElJ8gnvPCgWzORiTxmzs14+FeAMmr98YpQ+R9isiJnTjDSz7eJz8hSips+mqF9wrEoK9oOZlX035YBt0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFpJN2ckQnTsz/QiJRPdp9jpP1kCs+o0vYUB4/+ikR7axFNmcw
	o8vvsrAotW91kJc8DvWucF8S6mIL49LIqUWYYcVB0uD/v9xv+8pYqyoGgazplxVNyB+kPOKLcjt
	WP19kWapU+ZD27Bee0MlGLkRcHbxJ8f4=
X-Gm-Gg: Acq92OGq5SRIR6AoGJSZ2bD02ZESVVTZSgKuY3trUAX6wUjt0kitjL0Sm7hjxyOiQeX
	VFskzkJm4nPKoamRMKWI8T9gZctgOeoN02JWU9afwM/68GU9ng3kymEYJSPfe6LBlbF7fNeKRsD
	1277RmAuBV9POmKg6n+JBqqoStnpx/QS1yNl16C0TxhBlyHJpX1dHuS2pInSB4bQMRcrLs/mvRI
	3LHdsLfKZbhLGBbx8UB94IEP0RD7B8tMwRcGdAWl5ecxGZDs/VPIH5iEqGeLAMGSC/O6fWT7FKA
	EvY2Pk6fJzRF3E84Zqk=
X-Received: by 2002:a05:693c:2b08:b0:2f3:c3d4:382f with SMTP id
 5a478bee46e88-301181aa331mr2513866eec.8.1778693422110; Wed, 13 May 2026
 10:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260511135703.62470-1-clamor95@gmail.com> <20260511135703.62470-3-clamor95@gmail.com>
 <agJ/T8nBGWEoblmd@nchen-desktop> <CAPVz0n173syW9rXy7Qt_N=mChe6WBRLvjRDypcJEC50hPL4OMQ@mail.gmail.com>
 <agLb6mgP45jHjvNt@nchen-desktop>
In-Reply-To: <agLb6mgP45jHjvNt@nchen-desktop>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Wed, 13 May 2026 20:30:10 +0300
X-Gm-Features: AVHnY4LbEcLazP490SpFW2HazY7KluRMMma2mmpgzBcW68oL5O3KVQGdtgY1RmI
Message-ID: <CAPVz0n2yGALm1Z0j0j6_MaqAOZGL+a8EgCWYQpW0QN1YVf96EQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/6] usb: chipidea: tegra: Avoid controller/PHY init if
 bus is externally controlled
To: "Peter Chen (CIX)" <peter.chen@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_103023_656207_A7262089 
X-CRM114-Status: GOOD (  32.81  )
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

0LLRgiwgMTIg0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMTA6NTEgUGV0ZXIgQ2hlbiAoQ0lYKSA8
cGV0ZXIuY2hlbkBrZXJuZWwub3JnPiDQv9C40YjQtToKPgo+IE9uIDI2LTA1LTEyIDA5OjEzOjQw
LCBTdnlhdG9zbGF2IFJ5aGVsIHdyb3RlOgo+ID4g0LLRgiwgMTIg0YLRgNCw0LIuIDIwMjbigK/R
gC4g0L4gMDQ6MTYgUGV0ZXIgQ2hlbiAoQ0lYKSA8cGV0ZXIuY2hlbkBrZXJuZWwub3JnPiDQv9C4
0YjQtToKPiA+ID4KPiA+ID4gT24gMjYtMDUtMTEgMTY6NTY6NTcsIFN2eWF0b3NsYXYgUnloZWwg
d3JvdGU6Cj4gPiA+ID4gSWYgdGhlIFVTQiBjb250cm9sbGVyIGFuZCBQSFkgYXJlIGV4dGVybmFs
bHkgY29udHJvbGxlZCwgdGhlbiB0aGUKPiA+ID4gPiByZWdpc3RyYXRpb24gb2YgdGhlIGNvbnRy
b2xsZXIgYW5kIHRoZSBQSFkgaW5pdGlhbGl6YXRpb24gc2hvdWxkIGJlCj4gPiA+ID4gc2tpcHBl
ZCwgc2luY2UgdGhlc2UgY29uZmlndXJhdGlvbnMgbXVzdCBiZSBkb25lIGJ5IHRoZSBkZXZpY2Ug
dGhhdAo+ID4gPiA+IGNvbnRyb2xzIHRoZSBidXMgdG8gd29yayBjb3JyZWN0bHkuCj4gPiA+ID4K
PiA+ID4KPiA+ID4gSSBmaW5kIHlvdSBvbmx5IGNvbnRyb2wgVVNCIGNvbnRyb2xsZXIgZGV2aWNl
IGFkZCBhdCBQSFkgZHJpdmVyLCBtb3N0IG9mIFVTQiBkcml2ZXJzCj4gPiA+IGhhcyBQSFkgY29u
dHJvbCwgZm9yIGNoaXBpZGVhLCBpdCBoYXMgUEhZIGNvbnRyb2wgYXQgY29yZS5jLCB3b3VsZCBw
bGVhc2UgdHJ5IHRvCj4gPiA+IGFkYXB0IGZvciBpdD8KPiA+ID4KPiA+Cj4gPiBVc3VhbGx5IHll
cywgYnV0IHRoaXMgaXMgbm90IHRoZSBjYXNlIGZvciBUZWdyYSB1bmZvcnR1bmF0ZWx5LiBBcyB5
b3UKPiA+IGNhbiBzZWUgVGVncmEgc3BlY2lmaWMgc2VjdGlvbiBvZiBDaGlwaWRlYSBkcml2ZXIg
c3BlY2lmaWNhbGx5Cj4gPiBkZXNjcmliZXMgd2h5IGl0IGhhcyB0byBzZXQgUEhZIG1hbnVhbGx5
Lgo+ID4KPiA+IC8qCj4gPiAgKiBVU0IgY29udHJvbGxlciByZWdpc3RlcnMgc2hvdWxkbid0IGJl
IHRvdWNoZWQgYmVmb3JlIFBIWSBpcwo+ID4gICogaW5pdGlhbGl6ZWQsIG90aGVyd2lzZSBDUFUg
d2lsbCBoYW5nIGJlY2F1c2UgY2xvY2tzIGFyZSBnYXRlZC4KPiA+ICAqIFBIWSBkcml2ZXIgY29u
dHJvbHMgZ2F0aW5nIG9mIGludGVybmFsIFVTQiBjbG9ja3Mgb24gVGVncmEuCj4gPiAgKi8KPiA+
Cj4gPiBTbyBpbiBvcmRlciB0byBwcm92aWRlIGNvcnJlY3Qgd29yayBvZiBVU0Igd2hlbiBzZXQg
YnkgYW4gZXh0ZXJuYWwKPiA+IGRldmljZSwgYm90aCBQSFkgYW5kIGNvbnRyb2xsZXIgaW5pdC9h
ZGQgbXVzdCBiZSBza2lwcGVkLgo+Cj4gWW91IGNvdWxkIGNhbGwgZ2VuZXJpYyBQSFkgQVBJcyBh
dCBjaV9oZHJjX3RlZ3JhLmMsIGFmdGVyIFBIWSBpbml0IG9yIHBvd2VyIG9uLAo+IGNhbGwgY29u
dHJvbGxlciBpbml0aWFsaXphdGlvbi4KPgoKSSB3YXMgdGlua2VyaW5nIHdpdGggQ2hpcGlkZWEg
ZHJpdmVyIGZvciBUZWdyYSBhIGJpdC4gSWYgeW91IG1lYW50IHRvCnVzZSBmbGFnIG9ubHkgdG8g
Y29udHJvbCB1c2IgY29udHJvbGxlciBkZXZpY2UgaW5pdCBhbmQgbGVhdmUgUEhZIHRvCmJlIGhh
bmRsZWQgYnkgY29udHJvbGxlciwgdGhlbiB5ZXMsIHRoYXQgaXMgcG9zc2libGUgYW5kIHRoYXQg
aXMKYmV0dGVyIGFwcHJvYWNoLgoKPiA+Cj4gPiA+IFBldGVyCj4gPiA+Cj4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogU3Z5YXRvc2xhdiBSeWhlbCA8Y2xhbW9yOTVAZ21haWwuY29tPgo+ID4gPiA+IC0t
LQo+ID4gPiA+ICBkcml2ZXJzL3VzYi9jaGlwaWRlYS9jaV9oZHJjX3RlZ3JhLmMgfCAzNiArKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNl
cnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3VzYi9jaGlwaWRlYS9jaV9oZHJjX3RlZ3JhLmMgYi9kcml2ZXJzL3VzYi9jaGlwaWRl
YS9jaV9oZHJjX3RlZ3JhLmMKPiA+ID4gPiBpbmRleCAzNzI3ODhmMGY5NzAuLjU5MzM5MGE4MThk
MSAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3VzYi9jaGlwaWRlYS9jaV9oZHJjX3RlZ3Jh
LmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL3VzYi9jaGlwaWRlYS9jaV9oZHJjX3RlZ3JhLmMKPiA+
ID4gPiBAQCAtMzIsNiArMzIsNyBAQCBzdHJ1Y3QgdGVncmFfdXNiIHsKPiA+ID4gPiAgICAgICBz
dHJ1Y3QgY2xrICpjbGs7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICBib29sIG5lZWRzX2RvdWJsZV9y
ZXNldDsKPiA+ID4gPiArICAgICBib29sIGV4dGVybmFsbHlfY29udHJvbGxlZDsKPiA+ID4gPiAg
fTsKPiA+ID4gPgo+ID4gPiA+ICBzdHJ1Y3QgdGVncmFfdXNiX3NvY19pbmZvIHsKPiA+ID4gPiBA
QCAtMzEyLDIwICszMTMsMjUgQEAgc3RhdGljIGludCB0ZWdyYV91c2JfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gPiAgICAgICBpZiAoZGV2aWNlX3Byb3BlcnR5X3By
ZXNlbnQoJnBkZXYtPmRldiwgIm52aWRpYSxuZWVkcy1kb3VibGUtcmVzZXQiKSkKPiA+ID4gPiAg
ICAgICAgICAgICAgIHVzYi0+bmVlZHNfZG91YmxlX3Jlc2V0ID0gdHJ1ZTsKPiA+ID4gPgo+ID4g
PiA+ICsgICAgIGlmIChkZXZpY2VfcHJvcGVydHlfcHJlc2VudCgmcGRldi0+ZGV2LCAibnZpZGlh
LGV4dGVybmFsLWNvbnRyb2wiKSkKPiA+ID4gPiArICAgICAgICAgICAgIHVzYi0+ZXh0ZXJuYWxs
eV9jb250cm9sbGVkID0gdHJ1ZTsKPiA+ID4gPiArCj4gPiA+ID4gICAgICAgZXJyID0gdGVncmFf
dXNiX3Jlc2V0X2NvbnRyb2xsZXIoJnBkZXYtPmRldik7Cj4gPiA+ID4gICAgICAgaWYgKGVycikg
ewo+ID4gPiA+ICAgICAgICAgICAgICAgZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBlcnIsICJm
YWlsZWQgdG8gcmVzZXQgY29udHJvbGxlciIpOwo+ID4gPiA+ICAgICAgICAgICAgICAgZ290byBm
YWlsX3Bvd2VyX29mZjsKPiA+ID4gPiAgICAgICB9Cj4gPiA+ID4KPiA+ID4gPiAtICAgICAvKgo+
ID4gPiA+IC0gICAgICAqIFVTQiBjb250cm9sbGVyIHJlZ2lzdGVycyBzaG91bGRuJ3QgYmUgdG91
Y2hlZCBiZWZvcmUgUEhZIGlzCj4gPiA+ID4gLSAgICAgICogaW5pdGlhbGl6ZWQsIG90aGVyd2lz
ZSBDUFUgd2lsbCBoYW5nIGJlY2F1c2UgY2xvY2tzIGFyZSBnYXRlZC4KPiA+ID4gPiAtICAgICAg
KiBQSFkgZHJpdmVyIGNvbnRyb2xzIGdhdGluZyBvZiBpbnRlcm5hbCBVU0IgY2xvY2tzIG9uIFRl
Z3JhLgo+ID4gPiA+IC0gICAgICAqLwo+ID4gPiA+IC0gICAgIGVyciA9IHVzYl9waHlfaW5pdCh1
c2ItPnBoeSk7Cj4gPiA+ID4gLSAgICAgaWYgKGVycikKPiA+ID4gPiAtICAgICAgICAgICAgIGdv
dG8gZmFpbF9wb3dlcl9vZmY7Cj4gPiA+ID4gKyAgICAgaWYgKCF1c2ItPmV4dGVybmFsbHlfY29u
dHJvbGxlZCkgewo+ID4gPiA+ICsgICAgICAgICAgICAgLyoKPiA+ID4gPiArICAgICAgICAgICAg
ICAqIFVTQiBjb250cm9sbGVyIHJlZ2lzdGVycyBzaG91bGRuJ3QgYmUgdG91Y2hlZCBiZWZvcmUg
UEhZIGlzCj4gPiA+ID4gKyAgICAgICAgICAgICAgKiBpbml0aWFsaXplZCwgb3RoZXJ3aXNlIENQ
VSB3aWxsIGhhbmcgYmVjYXVzZSBjbG9ja3MgYXJlIGdhdGVkLgo+ID4gPiA+ICsgICAgICAgICAg
ICAgICogUEhZIGRyaXZlciBjb250cm9scyBnYXRpbmcgb2YgaW50ZXJuYWwgVVNCIGNsb2NrcyBv
biBUZWdyYS4KPiA+ID4gPiArICAgICAgICAgICAgICAqLwo+ID4gPiA+ICsgICAgICAgICAgICAg
ZXJyID0gdXNiX3BoeV9pbml0KHVzYi0+cGh5KTsKPiA+ID4gPiArICAgICAgICAgICAgIGlmIChl
cnIpCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gZmFpbF9wb3dlcl9vZmY7Cj4g
PiA+ID4gKyAgICAgfQo+ID4gPiA+Cj4gPiA+ID4gICAgICAgLyogc2V0dXAgYW5kIHJlZ2lzdGVy
IENoaXBJZGVhIEhEUkMgZGV2aWNlICovCj4gPiA+ID4gICAgICAgdXNiLT5zb2MgPSBzb2M7Cj4g
PiA+ID4gQEAgLTM0MiwxMiArMzQ4LDE0IEBAIHN0YXRpYyBpbnQgdGVncmFfdXNiX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ID4gICAgICAgaWYgKG9mX3VzYl9nZXRf
cGh5X21vZGUocGRldi0+ZGV2Lm9mX25vZGUpID09IFVTQlBIWV9JTlRFUkZBQ0VfTU9ERV9VTFBJ
KQo+ID4gPiA+ICAgICAgICAgICAgICAgdXNiLT5kYXRhLmZsYWdzICY9IH5DSV9IRFJDX1NVUFBP
UlRTX1JVTlRJTUVfUE07Cj4gPiA+ID4KPiA+ID4gPiAtICAgICB1c2ItPmRldiA9IGNpX2hkcmNf
YWRkX2RldmljZSgmcGRldi0+ZGV2LCBwZGV2LT5yZXNvdXJjZSwKPiA+ID4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBwZGV2LT5udW1fcmVzb3VyY2VzLCAmdXNiLT5kYXRh
KTsKPiA+ID4gPiAtICAgICBpZiAoSVNfRVJSKHVzYi0+ZGV2KSkgewo+ID4gPiA+IC0gICAgICAg
ICAgICAgZXJyID0gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKHVzYi0+ZGV2KSwK
PiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImZhaWxlZCB0byBhZGQg
SERSQyBkZXZpY2UiKTsKPiA+ID4gPiAtICAgICAgICAgICAgIGdvdG8gcGh5X3NodXRkb3duOwo+
ID4gPiA+ICsgICAgIGlmICghdXNiLT5leHRlcm5hbGx5X2NvbnRyb2xsZWQpIHsKPiA+ID4gPiAr
ICAgICAgICAgICAgIHVzYi0+ZGV2ID0gY2lfaGRyY19hZGRfZGV2aWNlKCZwZGV2LT5kZXYsIHBk
ZXYtPnJlc291cmNlLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcGRldi0+bnVtX3Jlc291cmNlcywgJnVzYi0+ZGF0YSk7Cj4gPiA+ID4gKyAgICAg
ICAgICAgICBpZiAoSVNfRVJSKHVzYi0+ZGV2KSkgewo+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBlcnIgPSBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIodXNiLT5kZXYpLAo+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJmYWlsZWQg
dG8gYWRkIEhEUkMgZGV2aWNlIik7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8g
cGh5X3NodXRkb3duOwo+ID4gPiA+ICsgICAgICAgICAgICAgfQo+ID4gPiA+ICAgICAgIH0KPiA+
ID4gPgo+ID4gPiA+ICAgICAgIHJldHVybiAwOwo+ID4gPiA+IC0tCj4gPiA+ID4gMi41MS4wCj4g
PiA+ID4KPiA+ID4KPiA+ID4gLS0KPiA+ID4KPiA+ID4gQmVzdCByZWdhcmRzLAo+ID4gPiBQZXRl
cgo+Cj4gLS0KPgo+IEJlc3QgcmVnYXJkcywKPiBQZXRlcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
