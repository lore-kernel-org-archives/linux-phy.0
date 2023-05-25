Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7BBAC77B7A
	for <linux-phy@archiver.kernel.org>; Thu, 25 May 2023 09:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xi9CwcissfjyULQPKrMnk9vI60ifeR3DVrZVGq3IFmY=; b=oFHefsrWmGesoc
	ND79T3I91iIquwSLIL5XrhkP372kaI09cvAhDhVDIGniIgXeAeNtLN+u0+x1QfXtHPwoWZks38V/4
	31/AkY/q7L5vP/mCOBE9td+AcfKnGvm27NHkmfLnadOFy/qCz9fr9elAnpnMFsmQ9umqFk+m4atn7
	7iZfk9MG6OGjxHdhF137DSJJMzgiTCW3EKmAvawgBSlr9M4UAGNpofet1D7XD7nOa97d4/QeEB6tz
	ysnof1jykSYS5ki1qDsfN4E7quM81Ximv0KK/UVQqBfMHW5oLrNhPY4NbwNK+8VHjQaIpLT1t6koy
	Ir9DNE70bteu/bOaqoEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q27Q8-00GAeS-1R;
	Thu, 25 May 2023 09:38:08 +0000
Received: from mail-vs1-xe35.google.com ([2607:f8b0:4864:20::e35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q27Q4-00GAdI-2H
	for linux-phy@lists.infradead.org;
	Thu, 25 May 2023 09:38:06 +0000
Received: by mail-vs1-xe35.google.com with SMTP id ada2fe7eead31-439554d9a69so524663137.1
        for <linux-phy@lists.infradead.org>; Thu, 25 May 2023 02:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1685007481; x=1687599481;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oEJFrZVH1rjo4B3+YvFZtJFJ+STMe28dWj3W1cbfjMs=;
        b=iM2dxEBGMSs2nJR2qB95J2e/i2Np/iJRynzb0xvTDnfd99o52WnVpmlrE+ekNrdP21
         lmFU512dtt04r3jw/y9ly4KvHRST8MXGu3XVTnkxtP2RE8qSEVcn/9w+WecabUewP9Qe
         7p6w13DuBGgg24cRZDnYPAuAxqwd1pV2GkP+S4nF1+W6faHxDtCV++fg2FCzaO02oR7W
         kFuXYFtxORG0kp7v+Zl4VA1/yWISCnBOirroGOPOYjymNrIS/3EV5QG1CoBjwVbpjhBk
         XaAt9wRu05Uk1DFMHcz0qrvKmDo2lyFbQaSjmscE8ujrledQgK8tDBHsodiZuP0YgJkw
         I8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685007481; x=1687599481;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oEJFrZVH1rjo4B3+YvFZtJFJ+STMe28dWj3W1cbfjMs=;
        b=jthanOtTXG7jYFwJBfSWDwcvjnCbtw/RuisrshOdePnoTG68njQL2K15cQ/MOZpVB3
         q0/elm//gw8jRNf58ajudOEEXUr5Ry6PDB3OEv7sVxGZgcdXHQRARdUPNXfv6QaDmvAh
         IX5cIARndEdMusza25e2mfGpNqzKgyecR8X/YrRxNsBtheFJBUPeSvj+HvINbXTQrBXo
         Yo1PjJL0vP4aO+KFyero89wq3bwo2rcYQgbTINFE4bFG6QWEi9+APS47PgDTZVj/k5MZ
         s/sKlzM9aYqT73C/a1tyw4qzr5Lsefkil0BA8yrO36zc/X+eXOs3q5tI/lchtGCc63m/
         fTPA==
X-Gm-Message-State: AC+VfDzPeZor1nhgR1wfLpm/x2X6EtNLHwgk/K8FncYxWJQ7ksOJWLVF
	2GcqDYZ0r3gsnWY/BfX7KuCDQ9DA0JNbBZnVfuXXVQ==
X-Google-Smtp-Source: ACHHUZ7WpOy3wCLD5AtzEtx27Y4bEWHrtU9zN+2rZF5BNaH1IbmVOHvB1XOktMAjYDfHAtlHwjS6fZtVO9liQY+ETCk=
X-Received: by 2002:a67:dc8c:0:b0:439:6c06:606e with SMTP id
 g12-20020a67dc8c000000b004396c06606emr795944vsk.0.1685007481350; Thu, 25 May
 2023 02:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230411130446.401440-1-brgl@bgdev.pl> <20230411130446.401440-2-brgl@bgdev.pl>
 <CAMRc=MdDct0UzJPpOTuKHmm23Jc529NwkBWJJmXfeevpkQaSxQ@mail.gmail.com>
In-Reply-To: <CAMRc=MdDct0UzJPpOTuKHmm23Jc529NwkBWJJmXfeevpkQaSxQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 25 May 2023 11:37:50 +0200
Message-ID: <CAMRc=Me4EQ_7ArCeJASzKTimuSH=yNkrwm9DgE93s7kjdS5Nrw@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: ufs: qcom: add compatible for sa8775p
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_023804_932159_6D0F9214 
X-CRM114-Status: GOOD (  15.14  )
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

T24gVHVlLCBNYXkgMTYsIDIwMjMgYXQgMTI6MDbigK9QTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGJnZGV2LnBsPiB3cm90ZToKPgo+IE9uIFR1ZSwgQXByIDExLCAyMDIzIGF0IDM6MDTigK9Q
TSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2LnBsPiB3cm90ZToKPiA+Cj4gPiBGcm9t
OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4g
Pgo+ID4gQWRkIHRoZSBjb21wYXRpYmxlIHN0cmluZyBmb3IgdGhlIFVGUyBvbiBzYTg3NzVwIHBs
YXRmb3Jtcy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0
b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4gPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sIHwgMiArKwo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sCj4gPiBpbmRl
eCBjNWEwNmMwNDgzODkuLmIxYzAwNDI0YzJiMCAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSx1ZnMueWFtbAo+ID4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sCj4gPiBAQCAtMjYs
NiArMjYsNyBAQCBwcm9wZXJ0aWVzOgo+ID4gICAgICAgICAgICAtIHFjb20sbXNtODk5NC11ZnNo
Ywo+ID4gICAgICAgICAgICAtIHFjb20sbXNtODk5Ni11ZnNoYwo+ID4gICAgICAgICAgICAtIHFj
b20sbXNtODk5OC11ZnNoYwo+ID4gKyAgICAgICAgICAtIHFjb20sc2E4Nzc1cC11ZnNoYwo+ID4g
ICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtdWZzaGMKPiA+ICAgICAgICAgICAgLSBxY29tLHNk
bTg0NS11ZnNoYwo+ID4gICAgICAgICAgICAtIHFjb20sc202MzUwLXVmc2hjCj4gPiBAQCAtMTA1
LDYgKzEwNiw3IEBAIGFsbE9mOgo+ID4gICAgICAgICAgICBjb250YWluczoKPiA+ICAgICAgICAg
ICAgICBlbnVtOgo+ID4gICAgICAgICAgICAgICAgLSBxY29tLG1zbTg5OTgtdWZzaGMKPiA+ICsg
ICAgICAgICAgICAgIC0gcWNvbSxzYTg3NzVwLXVmc2hjCj4gPiAgICAgICAgICAgICAgICAtIHFj
b20sc2M4MjgweHAtdWZzaGMKPiA+ICAgICAgICAgICAgICAgIC0gcWNvbSxzbTgyNTAtdWZzaGMK
PiA+ICAgICAgICAgICAgICAgIC0gcWNvbSxzbTgzNTAtdWZzaGMKPiA+IC0tCj4gPiAyLjM3LjIK
PiA+Cj4KPiBCam9ybiwKPgo+IEFyZSB5b3UgcGlja2luZyB0aGlzIG9uZSB1cCBhcyB3ZWxsIG9y
IHNob3VsZCBpdCBnbyB0aHJvdWdoIFJvYidzIHRyZWU/Cj4KPiBCYXJ0CgpHZW50bGUgcGluZy4K
CkJhcnQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
