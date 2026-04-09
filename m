Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3926EA3C4E
	for <linux-phy@archiver.kernel.org>; Thu,  9 Apr 2026 13:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vw8byK250nOYSGBtOqpsWsJh9hmQ+4VidUPPlmIjJZU=; b=oFYgwnS5o7ru6m
	F2lVkDh1Uij6tH7T/bRMhl2JqHvB7rnE/NzEh6vLk6w/8F1yqinOBS2qYBno3XKv7Y29z39N7pLLl
	PRr4GMOS4NicVIVyJwOBNC17+t3tSkk/Y6jc9ungonAY8zj4ljhhko3+8op0C1LeRR72Os0gNYa5h
	9d3lxzES/mtF5zegauaSL33da7ZWITqjymDq6iU55CFLD8btfJJrHe7NPmfOC+kSk3H6dAEZzW8CW
	VjCGRPdPiMlwFeICIAOFe7Mmd1CRPFDPD1ZKC5j8v4/CV1KRvNnxQOqs0xFkT9vaFvqSXSgYpDfD6
	Xbwm+qV2ZA6B/nulcTWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApTL-0000000AWDM-0ts7;
	Thu, 09 Apr 2026 13:31:03 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApTA-0000000AW90-0JXk
	for linux-phy@lists.infradead.org;
	Thu, 09 Apr 2026 13:31:01 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-66ba9898ae8so1224395a12.1
        for <linux-phy@lists.infradead.org>; Thu, 09 Apr 2026 06:30:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775741450; cv=none;
        d=google.com; s=arc-20240605;
        b=BkUPpYkzte+bPMWjKHSItP8G20Eo0ZfBwPjZUruTNE1omTZ5gaATZyNPZAJHyz5T9/
         DFoOkx2hYqnK4qBtB3x8dGpYEa8bcHqilE1cIxDpKuFG6Du7vk4lCrqAspHyY2Q3SOgR
         1s4IS3a+4PDzCVr6z8ISDx0M/GXrKg/dmRJde5UI9DrlPqb6FMwh9xXfQmK6OvKR4KvF
         PzKKw2IpYyB3Bs+ICHiLvVDXkNoyhDOkw/MwRrdR6/BDGNBJbYJUHrm+Xj2cF1lTsceX
         gniNgvjPzsJGNdAvWFTARgTOFNZAmHaRNdRwuMiwc5h8qw/9btoQ1xxZ3lnxFeUuawpU
         CPDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ev3RMMGjO06UYL38WMnmpo1Zv5dlNGgwSiRluf+t5pw=;
        fh=sOmhaY7nIeK4eYmYbY6QdLaqx49bgMYH/rNS/pbtPgk=;
        b=Ie/aEbR/7KaC0TH3oLTkA15GCAPSkTmP1UJnNRKTxzfC2LXcP7ugJpfBsUcns5ZrvR
         dzbm0bRsEN0LTcsDOi0OSCT5ZzSCW37JMROT5itb+kr9yvu+VBkPWLCzQJkYToIsvnEb
         7IGm23A5K8KpD/IpbhpNziSfvCc48jCnAfCnr7983UTtrzPxZsujWf6Ira0W5IyfT+ES
         wRUdiarDQvBvuswa2xv2j1Ug6SkEsLwFySBc5rg8E9UhKAmnOoPVXt6RWbCkdTz6Pv+O
         TrqcbVklYIHZbhXKjykSt6PomXxMESXAsbyogXqoSVN+8t3BzvINi0k2Sdd8RoU5OgYS
         2DNA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775741450; x=1776346250; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ev3RMMGjO06UYL38WMnmpo1Zv5dlNGgwSiRluf+t5pw=;
        b=HngNAlVRDIwXviVP/WR297oaMgEJX5S6i5A4z188dqPE8gg0CezGazne9mLkZJknc+
         h7ZXF8GANdgq60mYf+WmLRRTaktUYH1C1KwgCgKc7bhC1cWQkN85zOn5rUl67jqMzWfR
         9bQ1P5CpSE9wBsYj3/a0txgt9I/ZWNxJ9PIEh5BWHIRDvVRtTBkAJGsflYhKQE/yh9R2
         UGTJmmyi8X3dBkOXmeKfdozE7+dh69ny5Z2W42t9AHxF9QuhFVlEUeGWrBIyB2ch2oEk
         IxJYwl+cTr06hqS94yjTNgbigylzzbtNp6GNZtYM05G8Ki2/ON+4LPnMrCcooBM/2png
         snuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775741450; x=1776346250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ev3RMMGjO06UYL38WMnmpo1Zv5dlNGgwSiRluf+t5pw=;
        b=VykdkDCMOTxzUlTp8TV46zC/+LG+Ai6Fgjzj/gUan7jcdjddc5uzvtXFmRidVr5/d8
         Ffji+ZqQRD6WO3BSQDBHsr+PAmonT12XMavPC7Ys6Res8oVZGT9Y5DsSY5nvcmkhgPkn
         P/Hu2QK0rJBpYqEjBxt4BVm38XnOnOcGTjp5sRoUgn9UMsgeAIf7OkxrwU4/4eyP0YGk
         g5RdmAsl+SXwcMEWfCXTdeRVX7BHj0THMRtXS45x9d5gsPMFfpsDWOi99YcXnEzEwGk1
         z+pSDBRQRa45XUUUKdEa2u3hErbHlvLsxMMlXdgsn6M0v+i6nejQophWgUoXf2zguoln
         tg+A==
X-Forwarded-Encrypted: i=1; AJvYcCU4yR/FrNNu5INi2GPBfX7nsz71clCiRMnoMdONSyldDLNEgUJ1Wt1UvT3QpEf/C/2q6C+3zLTQwCw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLvJuQw6FnQfuNrfGt5ESVLkVC2ImUkQJlvRtf9NbqeCjzmMLT
	TCuJro6eSvLEghctWgg/LAY8r+RLrPfINBdCQn4CvDoYtrYLz1yrilziu3DmrlUm7M8sKhFdVfr
	88j8Z1mkkM163X5nbBzEOpS/D8nL136g=
X-Gm-Gg: AeBDievaUAM4OC/ZGWmsk05nkDsz6/czf4/9b32vBfxBI+FM9EsO6teYu55nSCVv9hp
	VQy3TopSP6vgxNpGUsu02TPgHgaaH9yVAL5XZftaYJuvQXbUM/PZ5REtyesAOPHhimCKio72Hid
	wj5EL8k4/xrusJSg6dSC1RiW1LRg4HGk1POOlUnRXhmRwI9Jqls+r7hZl7eQ2lqns8+l/zi9W9Z
	uL17qbpO/vnpaYrte75eOKHUhf9T1pa+toFJpgVPPGQzFtnGhLn4S056nK2W0gbJDqyV6QKCfYv
	tQjS5A==
X-Received: by 2002:a17:907:9727:b0:b98:42de:3700 with SMTP id
 a640c23a62f3a-b9d46227f6fmr183342266b.17.1775741449801; Thu, 09 Apr 2026
 06:30:49 -0700 (PDT)
MIME-Version: 1.0
References: <20260409044939.7647-1-linux.amoon@gmail.com> <add2QFfHd5Jv9XU7@fedora>
In-Reply-To: <add2QFfHd5Jv9XU7@fedora>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 9 Apr 2026 19:00:32 +0530
X-Gm-Features: AQROBzDhqGfLcjBjGT2Hvs3ZMinMrOpBMtp_gMJbNkkfMBequ6wtYDsgQQOO3PI
Message-ID: <CANAwSgRqEJ5sqjY4bAj=PiK8wA_LOYDu1OOPLWsL8u_4Afu+rg@mail.gmail.com>
Subject: Re: [PATCH v1] phy: rockchip-snps-pcie3:phy: Configure clkreq_n and
 PowerDown for all lanes
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_063052_407486_538472A0 
X-CRM114-Status: GOOD (  15.62  )
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

SGkgTmlrbGFzLAoKVGhhbmtzIGZvciB5b3VyIHJldmlldyBjb21tZW50cy4KCk9uIFRodSwgOSBB
cHIgMjAyNiBhdCAxNToxOSwgTmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+IHdyb3Rl
Ogo+Cj4gK1NoYXduCj4KPiBIZWxsbyBBbmFuZCwKPgo+IE9uIFRodSwgQXByIDA5LCAyMDI2IGF0
IDEwOjE5OjMwQU0gKzA1MzAsIEFuYW5kIE1vb24gd3JvdGU6Cj4gPiBEdXJpbmcgdGhlIHJrMzU4
OF9wM3BoeV9pbml0IHNlcXVlbmNlLCB0aGUgZHJpdmVyIG5vdyBleHBsaWNpdGx5Cj4KPiBQbGVh
c2UgdXNlIGltcGVyYXRpdmUgbW9vZCwgYWN0aXZlIHZvaWNlLgo+Cj4KPiA+IGNvbmZpZ3VyZXMg
ZWFjaCBsYW5lJ3MgQ09OMCByZWdpc3RlciB0byBlbnN1cmUKPiA+IC0gUElQRSA0LjMgQ29tcGxp
YW5jZTogY2xrcmVxX24gKGJpdCA2KSBpcyBmb3JjZWQgbG93IChhc3NlcnRlZCkgdG8gbWVldAo+
ID4gICBzaWRlYmFuZCBzaWduYWwgcmVxdWlyZW1lbnRzLgo+ID4gLSBBY3RpdmUgUG93ZXIgU3Rh
dGU6IFBvd2VyRG93blszOjBdIChiaXRzIDExOjgpIGlzIHNldCB0byBQMAo+ID4gICAoTm9ybWFs
IE9wZXJhdGlvbmFsIFN0YXRlKSB0byBlbnN1cmUgdGhlIFBIWSBpcyBmdWxseSBwb3dlcmVkIGFu
ZCByZWFkeQo+ID4gICBmb3IgbGluayB0cmFpbmluZy4KPiA+Cj4gPiBUaGVzZSBjaGFuZ2VzIGVu
c3VyZSB0aGF0IGFsbCBsYW5lcyBhcmUgY29uc2lzdGVudGx5IHRyYW5zaXRpb25lZCBmcm9tCj4g
PiByZXNldCBpbnRvIGEga25vd24tZ29vZCBvcGVyYXRpb25hbCBzdGF0ZSwgcHJldmVudGluZyB1
bmRlZmluZWQgYmVoYXZpb3IKPiA+IGFuZCBlbnN1cmluZyB0aGUgUEhZIGlzIHJlYWR5IGZvciBo
aWdoLXNwZWVkIGRhdGEgdHJhbnNtaXNzaW9uLgo+Ck9rLCBJIHdpbGwgdXBkYXRlIHRoaXMuSSBm
Cj4gRmlyc3QgZGVzY3JpYmUgdGhlIHByb2JsZW0sIHRoZW4gZGVzY3JpYmUgaG93IHlvdSBmaXgg
aXQuCkkgd2FzIGludmVzdGlnYXRpbmcgdGhlIFBDSUUzMFg0X0NMS1JFUW4gaXNzdWUgaGlnaGxp
Z2h0ZWQgYnkgU2hhd24gTGluLAphbmFseXppbmcgdGhlIFJLMzU4OCBUUk0gY2xvY2sgcmVxdWVz
dCBjb25maWd1cmF0aW9ucyAocGFnZSA4NzgpCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzc3ZjBkM2MyLTY0OWYtNzcwZC0xNjM2LTZmZDUyZjNiNWY1ZUByb2NrLWNoaXBzLmNvbS8K
Ckxvb2tpbmcgaW50byB0aGUgcG93ZXIgbWFuYWdlbWVudCBzdGF0ZSBvbiBJbnRlbOKAmXMgUENJ
IEV4cHJlc3MgUG93ZXIgTWFuYWdlbWVudApkb2N1bWVudGF0aW9uLCB3aGljaCBkZWZpbmVzIHN0
YXRlcyBzdWNoIGFzIFAwLCBQMHMsIFAxLCBQMS4xLCBQMS4yLCBhbmQgUDIKVW5kZXJzdGFuZGlu
ZyB0aGlzIG1hcHBpbmcgaXMgZm9yIGludGVycHJldGluZyB0aGUgYmVoYXZpb3Igb2YgbGFuZS1z
cGVjaWZpYwpjbG9jayByZXF1ZXN0cywgc28gaW5pdGlhbGl6ZSB0aGlzIHRvIHRoZSBQMCBzdGF0
ZS4uCgpbMl0gaHR0cHM6Ly93d3cuaW50ZWwuY29tL2NvbnRlbnQvZGFtL3d3dy9wdWJsaWMvdXMv
ZW4vZG9jdW1lbnRzL3doaXRlLXBhcGVycy9waHktaW50ZXJmYWNlLXBjaS1leHByZXNzLXNhdGEt
dXNiMzAtYXJjaGl0ZWN0dXJlcy0zLjEucGRmCj4KPgo+IEtpbmQgcmVnYXJkcywKPiBOaWtsYXMK
ClRoYW5rcwotQW5hbmQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
