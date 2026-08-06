Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C78FC55ABF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 14:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7k2oRzkwlpCVyDFA4A0zl/kPrL6zZMQvJOLJDrIAWw4=; b=Vb4sUorUtrbdxH
	YaxSXtf9kMUCitN3pILfyPBgFs+IANo2jRF8+BzYySguF9o4azw2kEfCipKAyI7wffbcczraxTiNR
	OuF1pa6tgsYG1SVh5AY9YdpV4rZYL1Ge9dv/ZzcmZXqLZjl00pcGw4kXg2ligkw8v7EpzlqoECzbT
	s/nu62ZcW6KXL8l6+mQ8qW8YD6cNf5LOQ4hJtxl8SysBicO4wcYYDxvSVn9kob5lWLPMsrDXxe80R
	zqGBrvo7hT+JCOk6V4k+w+rt+ssxKSr50ufE7Sg/0mMvbf3QKLw5UYSNaQ0rYdD0uvaWmf3CaSmQM
	Tl57KGxoE62kS7Bq62ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzDm-00000005zI8-2eSy;
	Thu, 06 Aug 2026 14:37:22 +0000
Received: from mail-ej2-x00.google.com ([2a00:1450:4864:34::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzDj-00000005zGy-3Tf6
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 14:37:21 +0000
Received: by mail-ej2-x00.google.com with SMTP id a640c23a62f3a-c16772d888aso78780866b.1
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 07:37:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786027038; cv=none;
        d=google.com; s=arc-20260327;
        b=n97mE1JFv3Tqz3dwxt+VR4LeHot2e8PwkJcp1XnycMVyZJSLZAUJAX2T0/IKAQgNUk
         1OsvdKW2voDm/4LDQtCCijumrD663lwvjt4z5tzEBL4HY8ejKr1w01oZpggflYoo5x/E
         ViuxowFPMjzavaVzZMmA6nXvoXP9D5rLuGQs8aOLiuOyzkMUNZT8LR3EmpZUVWWZdA6F
         eFt86lOJc2QK2DVMOisGhkeEARCIVSYKn1Tqafltj49RORpSvcXtDkhWF8ZEqH557dpV
         6NllNPE2BAXpAcybCxq/z9wfP1CrrryxnqhFxd6MHKA+MBR/cmyB3kozjBoBpA5S3Wjg
         01VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Bm5BP89+hYEVtcyVkLS5Qjs1T3/LfUuhKO2G7nsDJlg=;
        fh=6qWvLXkFo+wxo7zDZPU8fThbHvsw9BXtEmAep1H4yTs=;
        b=by1FKKU64Mnntg+RbSZbZ+SQTshtdsioqMI3/Pl4WL2JcCMDzShqtvwKNafAJiSRVZ
         ge30OxXCC+3w6iii1FkCdDLciIkfqWhZOZxVkVpDU77o6dCVuzn6glclci/+CnPezn7i
         ri/Kobn5o4It6sIj1hc5DV4hTeFvkqXfa/3zMvS1uqSEJ06jkypfPiBUvXNAUvewbEU8
         8vv7zu2QtAH6LhKZf/XK84m1EDTI+51b7dp96+xno17ZjWhmFIVn3GE9Nq+0tKV5neYO
         2AUho0rVUgTyJRm8p/Jjt/cv+j4h3wahpG2WY4lGzlhX6F9nGOTwK1mPsQPUBemiJZnI
         J87g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786027038; x=1786631838; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Bm5BP89+hYEVtcyVkLS5Qjs1T3/LfUuhKO2G7nsDJlg=;
        b=eojSuUr2/09UeCOF/7dfGbDd3eoXOTclrco54OdyHo1ST1JbvR9wmoPuvzdSFz0t74
         FEsu+d1SEQAnTmBZmkfwnBINbSR3iocvovC4SbqCAFvl+0M/mIIOWy6OQBbvnqYFZn6m
         wEeHJ1H/3UzzF7bAmfKMgR9cbCXJBbAaW7YedcfxTeC8teXMC2FeJLm8+8yo23YBQ/Ok
         xpq7K7IbvQGYgZBg6ei9fD4jAB/4g+c7eKT/jjfx5ipF5vjFUR/9tQTg7XNML4JUgGlF
         I0PVhcUDGY+RWqUb4URTQZj4xs8RJiqZXOfEJuQ8VHZhmE/+HskF6+GBqO1oLv5a/z3m
         KVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786027038; x=1786631838;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Bm5BP89+hYEVtcyVkLS5Qjs1T3/LfUuhKO2G7nsDJlg=;
        b=KyaluPsI/pDJlb9WExkTGn7pdMmEWyZfIwCMIqk278La0r7Eg77UKDwphE7Jyqp1ow
         D1v8OxhNpL/SXRNvyBpUXcphnYVRGqUjwuwXbmWRy+wsiLvzZsJLowcn+lQB3MfVhhKU
         QIpMDwkYxoRkmwmKk7KE3ETgftZUNJeVII/sRtSuFz7i4ubc5aRmCCbS0FcydzEbUJJM
         /c6/+kgKkQaaZlOp8i0rMZgiga4bcRxBwvK6nR/r8+W5a2A8qG0BO7DNNgztf2fjGccZ
         Lr/Xb7o7LQc6WBVFkXIpdwd6pQAOKPQLIRbA1XmbVC4wYtnoj2+ihOGPmGyIFby58ODs
         FYXQ==
X-Forwarded-Encrypted: i=1; AHgh+RqZqy+FlBhdkA5f6r6G7RyymJrzHpstIBf2XrYpEQTA7eLDEeorGiJ/kjiVci6xL/dieGuGOM1QOvc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4nDFbm7NEMHiWZrBLD0sZzvEJ0x0jnd4DSt3Y10APNMSKXQde
	7Xs2ZFQ8LMWnw3sVE065V9PCrCiJPSS4ilusbarHK97sjSeGuqP0G5lxwS7cDuXMAScE+wpokLW
	h5PP8B/h5DKcZHztp2lPnnnR0SB5jfuM=
X-Gm-Gg: AR+sD12olQ0D2BqDjR0HuXdI8/A1Sxasg7KpQdPmrut0CskicabvrKsgEiRCK6y8vRz
	Yd9w6F1RuZH2KnfivGh01sdbgYElwL2rCi+LU7nABncku+QpBp7yWxAcOgIsI5ggLDE1AbnXWHe
	yBM0Vi5Sd8uJyU6IvNoD0LFJ+UyDJ1Km73X9DfrbLJ8z+aLtXjdbxHOtwnyRpkKwUVBdkKL+d1R
	HV/Fmzg+7Wdj5Vsw5V/U4DPigngqi/1fN5mjYZlydTo907Z9XRAn0x1zDQNPIQp36sdPcevg7aq
	zL+taE06JncRXQgPuLqNczj2ux7rW7kfY1tSm/Jx6cMzh+nYkDw8f4dPjefJ5B8aTtFimw==
X-Received: by 2002:a05:6938:a08d:20b0:c20:5121:89c1 with SMTP id
 a640c23a62f3a-c205121911dmr431715766b.12.1786027037242; Thu, 06 Aug 2026
 07:37:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-6-coiaprant@gmail.com>
 <20260805-stirring-wondrous-mule-faf37d@quoll>
In-Reply-To: <20260805-stirring-wondrous-mule-faf37d@quoll>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 6 Aug 2026 22:37:12 +0800
X-Gm-Features: AUfX_mwaP0yLJ9HCO94OK0aTh4w5tIMmxMB_NLgFfaixnrT58_1pSbbkFIzX-Ko
Message-ID: <CALj3r0iFULLqkfqPA6RdGPc1PQ4CvOPw82_+QmRn8vBhWnBMHA@mail.gmail.com>
Subject: Re: [PATCH v2 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_073719_905413_0198B633 
X-CRM114-Status: GOOD (  28.08  )
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

SGkgS3J6eXN6dG9mLAoKS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPiDkuo4y
MDI25bm0OOaciDbml6Xlkajlm5sgMTQ6NDnlhpnpgZPvvJoKPiBJIGRvbid0IHVuZGVyc3RhbmQg
YW55IG9mIHRoZXNlLiBUaGVyZSBhcmUgbm9uZSBvZiBteSBxdW90ZXMuIEkgZG9uJ3QKPiBnZXQg
d2hhdCB5b3UgYXJlIHJlZmVycmluZyB0by4KClNvcnJ5IGZvciB0aGUgY29uZnVzaW5nIHByZXZp
b3VzIHJlcGx5LCBJIGRpZG4ndCBxdW90ZSB5b3VyIG9yaWdpbmFsCmNvbW1lbnRzIHByb3Blcmx5
LiBIZXJlJ3MgYSBjbGVhbiByZXNwb25zZSB3aXRoIHlvdXIgcG9pbnRzIHF1b3RlZC4KCktyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDjmnIg15pel5ZGo5LiJ
IDE1OjI55YaZ6YGT77yaCj4KPiBPbiBTYXQsIEF1ZyAwMSwgMjAyNiBhdCAxMDoyMjoyOFBNICsw
ODAwLCBDb2lhIFByYW50IHdyb3RlOgo+ID4gQWRkIGRldmljZSB0cmVlIGJpbmRpbmcgZG9jdW1l
bnRhdGlvbiBmb3IgdGhlIFN5bm9wc3lzIERlc2lnbldhcmUKPiA+IFhQQ1MgaW50ZWdyYXRlZCBv
biB0aGUgUm9ja2NoaXAgUkszNTY4IFNvQy4KPiA+Cj4gPiBUaGUgWFBDUyBpcyBhY2Nlc3NlZCBv
dmVyIHRoZSBBUEIzIGJ1cyBhbmQgaW50ZXJuYWxseSBjb25uZWN0ZWQgdG8KPiA+IGEgTmFuZW5n
IENvbWJvIFNlckRlcyBQSFkuICBJdCBzdXBwb3J0cyAxMDAwQkFTRS1YLCBTR01JSSwgYW5kCj4g
PiBRU0dNSUkgbW9kZXMsIHdpdGggZm91ciBNSUkgcG9ydHMuCj4gPgo+ID4gVGhlIGJpbmRpbmcg
ZGVzY3JpYmVzOgo+ID4gLSBSZXF1aXJlZCBwcm9wZXJ0aWVzOiBjb21wYXRpYmxlLCByZWcsIGNs
b2NrcywgY2xvY2stbmFtZXMKPiA+IC0gT3B0aW9uYWwgcHJvcGVydGllczogcGh5cywgcGh5LW5h
bWVzLCBwb3dlci1kb21haW5zCj4gPiAtIHBjcy1taWkgc3ViLW5vZGVzIGZvciBlYWNoIE1JSSBw
b3J0IChyZWcgMC4uMykKPgo+IElycmVsZXZhbnQgcGFyYWdyYXBoLiBXZSBjYW4gcmVhZCB0aGUg
ZGlmZi4gRHJvcC4KPiBBIG5pdCwgc3ViamVjdDogZHJvcCBzZWNvbmQvbGFzdCwgcmVkdW5kYW50
ICJiaW5kaW5nIi4gVGhlCj4gImR0LWJpbmRpbmdzIiBwcmVmaXggaXMgYWxyZWFkeSBzdGF0aW5n
IHRoYXQgdGhlc2UgYXJlIGJpbmRpbmdzLgo+IFNlZSBhbHNvOgo+IGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L3Y3LjEtcmM3L3NvdXJjZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCNMMjMKCk9rYXkuIEkgd2lsbCBkcm9wIHRo
ZXNlIGluIHYzLgoKPiA+ICtwcm9wZXJ0aWVzOgo+ID4gKyAgY29tcGF0aWJsZToKPiA+ICsgICAg
Y29uc3Q6IHJvY2tjaGlwLHJrMzU2OC14cGNzCj4gPiArCj4gPiArICAnI2FkZHJlc3MtY2VsbHMn
Ogo+ID4gKyAgICBjb25zdDogMQo+ID4gKwo+ID4gKyAgJyNzaXplLWNlbGxzJzoKPiA+ICsgICAg
Y29uc3Q6IDAKPgo+IHJlZyBpcyBhbHdheXMgdGhlIHNlY29uZCBwcm9wZXJ0eS4KPgo+IEFsc28s
IHVzZSBjb25zaXN0ZW50IHN0eWxlIG9mIHF1b3Rlcy4KCk9rYXkuCgo+ID4gKwo+ID4gKyAgcmVn
Ogo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+ID4gKyAgICAgIEJhc2UgYWRkcmVzcyBhbmQgc2l6
ZSBvZiB0aGUgWFBDUyByZWdpc3RlciBzcGFjZSBtYXBwZWQgb3ZlciB0aGUKPiA+ICsgICAgICBB
UEIzIGJ1cy4KPgo+IERyb3AgZGVzY3JpcHRpb24sIHJlZHVuZGFudC4KCkknbGwgZHJvcCB0aGUg
cmVkdW5kYW50IGRlc2NyaXB0aW9uIHBhcmFncmFwaCBmcm9tIHRoZSBjb21taXQgbWVzc2FnZQph
bmQga2VlcCBvbmx5IHRoZSBlc3NlbnRpYWwgaW5mb3JtYXRpb24uCgo+ID4gKyAgICBtYXhJdGVt
czogMQo+ID4gKwo+ID4gKyAgY2xvY2tzOgo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+ID4gKyAg
ICAgIENsb2NrIHNvdXJjZXMgZm9yIHRoZSBYUENTOgo+ID4gKyAgICAgIC0gY3NyOiBBUEIzIGJ1
cyBpbnRlcmZhY2UgY2xvY2sgKGNsa19jc3JfaSksIHJlcXVpcmVkIGZvciByZWdpc3Rlcgo+ID4g
KyAgICAgICAgYWNjZXNzLgo+ID4gKyAgICAgIC0gZWVlOiBFRUUgY2xvY2sgKGNsa19lZWVfaSks
IHJlcXVpcmVkIGZvciBFbmVyZ3kgRWZmaWNpZW50Cj4gPiArICAgICAgICBFdGhlcm5ldCAoRUVF
KSBvcGVyYXRpb24uCj4gPiArICAgIG1pbkl0ZW1zOiAyCj4gPiArICAgIG1heEl0ZW1zOiAyCj4K
PiBObywgaW5zdGVhZCBsaXN0IGl0ZW1zIHdpdGggZGVzY3JpcHRpb24uCgpJJ2xsIGNoYW5nZSB0
byBpdGVtcyB3aXRoIGRlc2NyaXB0aW9ucy4KCj4gPiArCj4gPiArICBjbG9jay1uYW1lczoKPiA+
ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogY3NyCj4gPiArICAgICAgLSBjb25zdDog
ZWVlCj4gPiArCj4gPiArICBwaHlzOgo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+Cj4gRG8gbm90
IG5lZWQgJ3wnIHVubGVzcyB5b3UgbmVlZCB0byBwcmVzZXJ2ZSBmb3JtYXR0aW5nLgoKSSdsbCBy
ZW1vdmUgdW5uZWNlc3NhcnkgJ3wnIHdoZXJlIG5vdCBuZWVkZWQuCgo+ID4gKyAgICAgIFRoZSBw
aGFuZGxlIG9mIFNlckRlcyBQSFkgKE5hbmVuZyBDb21ibyBQSFkpIHRoYXQgcHJvdmlkZXMKPiA+
ICsgICAgICB0aGUgc2VyaWFsIGxhbmVzIGZvciAxMDAwQkFTRS1YIC8gU0dNSUkgLyBRU0dNSUku
Cj4gPiArICAgICAgVGhlIFNlckRlcyBtdXN0IGJlIHBvd2VyZWQgb24gYW5kIGluaXRpYWxpc2Vk
IGJlZm9yZSBhbnkgWFBDUwo+ID4gKyAgICAgIHJlZ2lzdGVyIGFjY2Vzcy4KPiA+ICsgICAgbWF4
SXRlbXM6IDEKPiA+ICsKPiA+ICsgIHBoeS1uYW1lczoKPiA+ICsgICAgY29uc3Q6IHNlcmRlcwo+
ID4gKwo+ID4gKyAgcG93ZXItZG9tYWluczoKPiA+ICsgICAgZGVzY3JpcHRpb246IHwKPiA+ICsg
ICAgICBQb3dlciBkb21haW4gZm9yIHRoZSBYUENTLgo+Cj4gRHJvcCBzZW50ZW5jZSBhbmQgfAoK
SSdsbCBkcm9wIHRoZSByZWR1bmRhbnQgcGFydC4KCj4gPiArICAgICAgT24gUkszNTY4IHRoaXMg
aXMgdHlwaWNhbGx5IHRoZSBQRF9QSVBFIHBvd2VyIGRvbWFpbiwgd2hpY2ggYWxzbwo+ID4gKyAg
ICAgIHN1cHBsaWVzIHRoZSBTZXJEZXMgUEhZLgo+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gKwo+
ID4gK3BhdHRlcm5Qcm9wZXJ0aWVzOgo+ID4gKyAgIl5wY3MtbWlpQFswLTNdJCI6Cj4KPiBXaHkg
YGdpdCBncmVwIHBjcy1taWlAYCBnaXZlcyBtZSBubyByZXN1bHRzPyBBcmUgeW91IGRvaW5nIHRo
aXMKPiBzaW1pbGFybHkgdG8gZXhpc3RpbmcgZGV2aWNlcyBvciBpcyB0aGlzIHF1aXRlIGRpZmZl
cmVudCBkZXZpY2UgdGhhbgo+IGV2ZXJ5IG90aGVyIGhhcmR3YXJlPwoKSSB1c2VkICJwY3MtbWlp
IiBiZWNhdXNlIHRoZSBSb2NrY2hpcCBUUk0gcmVmZXJzIHRvIHRoZXNlIGFzICJNSUkgcG9ydHMi
CmFuZCB0aGV5IGFyZSBmdW5jdGlvbmFsbHkgUENTIGluc3RhbmNlcy4gSSBzZWUgYSBzaW1pbGFy
IHBhdHRlcm4gaW4gdGhlClJlbmVzYXMgUlpOMSBNSUlDIGJpbmRpbmcgKHJlbmVzYXMscnpuMS1t
aWljLnlhbWwpLCB3aGljaCB1c2VzCiJtaWktY29udkBbMC01XSQiIGZvciBpdHMgcG9ydHMuCgpJ
ZiB5b3UgcHJlZmVyIGEgZGlmZmVyZW50IG5hbWUgKGUuZy4sICJwb3J0QDAiLSJwb3J0QDMiKSwg
SSdtIGhhcHB5IHRvCmNoYW5nZSBpdC4gUGxlYXNlIGxldCBtZSBrbm93LgoKPiA+ICsgICAgdHlw
ZTogb2JqZWN0Cj4gPiArICAgIGRlc2NyaXB0aW9uOiB8Cj4KPiBTYW1lIGhlcmUKPgo+ID4gKyAg
ICAgIE9uZSBvZiB0aGUgZm91ciBNSUkgcG9ydHMgb2YgdGhlIFhQQ1MuCj4gPiArICAgICAgVGhl
IHBvcnQgbnVtYmVyIGlzIHNwZWNpZmllZCBieSB0aGUgcmVnIHByb3BlcnR5ICgwLi4zKS4KPgo+
IERyb3Agc2VudGVuY2UsIHJlZHVuZGFudC4gU2NoZW1hIHRlbGxzIHRoYXQuCgpJJ2xsIGZpeCB0
aGlzIHRvIHVzZSBpdGVtcyB3aXRoIG1pbi9tYXguCgo+ID4gKyAgICAgIFRoZSBwb3J0IGlzIGxp
bmtlZCB0byBhbiBFdGhlcm5ldCBNQUMgY29udHJvbGxlciB2aWEgdGhlCj4gPiArICAgICAgcGNz
LWhhbmRsZSBwcm9wZXJ0eSBpbiB0aGUgTUFDJ3MgZGV2aWNlIHRyZWUgbm9kZS4KPiA+ICsKPiA+
ICsgICAgcHJvcGVydGllczoKPiA+ICsgICAgICByZWc6Cj4gPiArICAgICAgICBtaW5pbXVtOiAw
Cj4gPiArICAgICAgICBtYXhpbXVtOiAzCj4gPiArICAgICAgICBkZXNjcmlwdGlvbjogfAo+Cj4g
QXMgd2VsbAo+Cj4gPiArICAgICAgICAgIE1JSSBwb3J0IG51bWJlciBvZiBQQ1MuCj4gPiArCj4g
PiArICAgICAgc3RhdHVzOiB0cnVlCj4KPiBOb3BlLCBkbyB5b3Ugc2VlIGFueXdoZXJlIGNvZGUg
bGlrZSB0aGlzPwoKSSdsbCByZW1vdmUgdGhpcyBnZW5lcmljIHByb3BlcnR5LgoKVGhhbmtzLApD
b2lhCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
