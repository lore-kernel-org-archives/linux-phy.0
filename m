Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E767ED46C04
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jan 2026 21:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lD5V6EKEjxR1LOwjVmjmTkVC2ZjoriMitXSl9MxxqvE=; b=WGsNrEC+8wn5o5
	w9CU+OkhOgHF1bIwPsEhMxSMEr5LTt/7xnV5SBMhndn45he9b0OUITMlqG6JgyB1B4/3gBdNCzGvi
	51oohSg5Xd0DZTJ/uUofOOzxc6rbvstHuzGA/E49DoNbb5o/BVHFMHdBD19zcFod8MWQ3dEw8fZL/
	Rza4jyqFt8K+KSYC1W8K+ZE1XCtm5ou+1XcNUHdvGVsgrWT8QGRqDP3AYnT2xounrbcUyKAWNVxPk
	PDsXPv19ZbKb9LFtNAxJsBwG0rtRYYPIskWb8PGaEOfXyBtYWE0IWLJ3UlLuvyJ1h4pY7zZRPsakL
	NRLyjmPtEV3bzJr3kmbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlD07-0000000GqEC-1erV;
	Wed, 28 Jan 2026 21:22:59 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlD04-0000000GqDT-3CfF
	for linux-phy@lists.infradead.org;
	Wed, 28 Jan 2026 21:22:58 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-2b720bb90d0so349211eec.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Jan 2026 13:22:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769635375; cv=none;
        d=google.com; s=arc-20240605;
        b=QsPi2En2qGxy8UknPkyDG8/yFc5cS3SyVoEeusT6tYIkOQWOx5H2oy2mDDNNAvsu2s
         nfFYpRM/pRFuYAIdUx8/G1A3MzvqRr/yfZKcJ5Ttl8VFhQikSqilEyrado+bs7wNM9bp
         aV6JGKRSc/BSdRy41E5BBdVtWdSaw6PiWLO2T/1wXaGch01M7cYINsyibtMkRSQ0T9AZ
         VZNkIa6bzPzZNw+HFJSkYgS3k3mrufesOIWrOzbkZgqFlzCNrFGXiay0HY/UQr8WE8uD
         NDrN29QgQULDp5uLuf1WtJLYM2xsyOth6FKsivAAMdlJalR9lVWIu6V8279I82vWvvtg
         jeVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kV7JU90MnAIuGPfKO63hZKuasHHohm0DIZQyxaq14ig=;
        fh=/QNEClfdlAH/+LoPNwWh257TlOv2T5p5nNb/jBnzrzA=;
        b=fG4/Kg4FyNOC5SD3oMrlNfwWyeRyPIuVI/qGvOjk4Q4RqTq2h3xeQSswuPpTVlvyTc
         myB8qL4SueBjy+8kbyx4k7yB+ud7kgrRrZjBE8CgmXwh1INA1uiiAwdXCHJfty/4x0dr
         ovgDf2CVekw1H/UhgJYK5msTHpqVH3uHyf8HBNMVfCbNpxbFtcLDwmj4UFsF47vY7RLL
         0DOmxW64EFRjY1R0kI7k1LFTnZ8Bj6VwUQG65sVWnKxHgfnl6Pk8AuoPYBtNMWNymDHc
         svxh4FDSTEbB3MlrfeXtRXmxUUxUJfAbCd22f1m8vV7Y/d9H/rMtjHP3GgrEJOROy7rM
         4RTw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769635375; x=1770240175; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kV7JU90MnAIuGPfKO63hZKuasHHohm0DIZQyxaq14ig=;
        b=NVIn8t2pNk6V7mimxtRa11WBriWykAmPvxd7aXpHInvsbef72rs06zbZZMiZWiKu7g
         8LK+lqYy1cQoYbVSfDH2SQ0AoBLlg2jA7NbxIOtspSGLh2alTVgGNi81s3Jz17XG30iA
         zoNlfvLMiGHKoKOqmKDsD4XWRdmArFyn/ul7fuj53W9HsQZSpUvXRgeIQ/owgj85Vvmd
         MdggmLslH4LVGNy4x5vUb0h5hh8+67/cjC2nWB03redHEkdJDgjPeeP/Ms0L19EoGEoo
         oj8hD25ssst/B6STZKqzFncoxloqRiUqBa8qAFYU1RYZ3aImFhDPaWlwoB2Y+riXKg9S
         me9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769635375; x=1770240175;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kV7JU90MnAIuGPfKO63hZKuasHHohm0DIZQyxaq14ig=;
        b=ZzAWYfrRRbZRcAhQ96Io7pWv5okUQiLG9mptwFZBPSnv6cfK4NaGC/TCI9TJ+vdRNp
         uQKt7fehP+i/OchteIAFRvVMFOkeYQ8G6UYI4JQciunOUqKTl1ExgMFDTl1Bd0YcZfOH
         7F5qOb/3Q4jnIs0xtZK9MPo6Gmj1UWM1CQcsz0MHQqd8wjROlYdJaGB4z3oFUq98ew5e
         kATqkbtv7DFqu2gHSm9Nn7klMXLurxDK8La1wfcZbHQO8aUjJfCI6rf+69lb4kJP3fnr
         BcUCDS95lluMUbP21PsXKGUQPwqRhxx6y+iqcAdHJkSP6uclKy7wA6c3I8rCpgy1mUfh
         1qnw==
X-Forwarded-Encrypted: i=1; AJvYcCU1WLelz7qx39R1ox1/fwUsGHDpyaNZYRl2cQoPBkayY+QtLhpLsPZuqDAgxkT4noSSgyPMGIrwRwc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXRB9YNzjKyZrEcMgxzy3rq45dznemYbbELWJ8/lYpA3nqLiWZ
	S3Dzayc4mpvAb1Lk/9kxZ+uM8gbWJ6/+Onwd7HWY1klw7jWOf0mX/pWfFA+g6tDXgttmN92D5zx
	YMglkV9UdmvvnuRGsPg5zpRTmwZV0STsWoR5apOQY
X-Gm-Gg: AZuq6aIQ6W1m+wNFeoFgJ9RuYgTv+sNFzkyfVe34ieL3O4NF+9mSAb1r68ZaRXs4XxV
	h+RrYLKm5JqasTMQgxJeRUMr947K+SooiXqZFa3y5CPJPoxJbEcxsqeVGP9od0ysMCUa5J0eN1U
	vYQb/Vttx6QJPvmrVa4GVNZ2cdhJBska0ubGbhLImnaxfm8rImdrIu3XjPcWIwOFnqjbMruDKip
	4x6UyR2uFbhgitIHgfAvSzwk7VBcIq0AHBHRbwo0Gfrsscrj+gDab8XMK4SZD/Ylq40gf/gSNAX
	PE1kr66pQbERPVb8lR33Ukm/
X-Received: by 2002:a05:7301:7018:b0:2b7:857:db6a with SMTP id
 5a478bee46e88-2b78d9f1c0bmr4508715eec.21.1769635374810; Wed, 28 Jan 2026
 13:22:54 -0800 (PST)
MIME-Version: 1.0
References: <20260121-next-v1-1-c18068b091b9@google.com> <7c78f9da40022e7bbf850ae8989c617bdc30cc95.camel@linaro.org>
 <CA+zupgw5H5rumo+DxaTfA_=bcvjbBOivm6R+Pw31jgE-sMyEtw@mail.gmail.com>
 <f956ccd3f5f694de7a634819da3f790a8dce132b.camel@linaro.org>
 <CA+zupgwEWM4c9yK1f-Y_Cv5gk=0zYNuUb3kZyZ6O3FDRbPPvKw@mail.gmail.com>
 <eebefae5273bccce2d0fcd97afe3ea28bedf27cd.camel@linaro.org>
 <CA+zupgztBHTJwNPEOfXjdw9TpcpiVGO=hdFBYk3PUo-0Vf95mg@mail.gmail.com> <f13cf27da2d1d7d8a54448391c16a8eae349e8a5.camel@linaro.org>
In-Reply-To: <f13cf27da2d1d7d8a54448391c16a8eae349e8a5.camel@linaro.org>
From: Roy Luo <royluo@google.com>
Date: Wed, 28 Jan 2026 13:22:18 -0800
X-Gm-Features: AZwV_QjQO0e1CUwWeMWnyIH6YTKBepQmAq6Hj7xEJz2yP_wXTgaH8YOFAHXb_6o
Message-ID: <CA+zupgzMzwt0Uah_a+frFf=Ek5nG_zFTsupbZ-ZHoAUi0wVxZQ@mail.gmail.com>
Subject: Re: [PATCH next] phy: google: fix build dependency for Google Tensor
 USB PHY
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_132256_862348_28B1C9C0 
X-CRM114-Status: GOOD (  15.00  )
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

T24gV2VkLCBKYW4gMjgsIDIwMjYgYXQgMTE6NTfigK9BTSBBbmRyw6kgRHJhc3ppayA8YW5kcmUu
ZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEhpIFJveSwKPgo+IE9uIE1vbiwgMjAyNi0w
MS0yNiBhdCAxODozNCAtMDgwMCwgUm95IEx1byB3cm90ZToKPiA+IHRoZSB3cm9uZyBleGFtcGxl
LiBMZXQncyBsb29rIGF0IHRoaXMgYnVpbGQgZXJyb3Igc2NlbmFyaW8gd2l0aAo+ID4gImRlcGVu
ZHMgb24gVFlQRUMgfHwgQ09NUElMRV9URVNUIjoKPiA+IEdpdmVuIENPTVBJTEVfVEVTVD15IGFu
ZCBDT05GSUdfVFlQRUM9bSwgdGhlCj4gPiAiZGVwZW5kcyBvbiIgd291bGQgYmUgZXZhbHVhdGVk
IGFzIG1heCh5LG0pID0geS4KPiA+IEhlbmNlLCBDT05GSUdfUEhZX0dPT0dMRV9VU0IgaXMgYWxs
b3dlZCB0byBiZQo+ID4gc2V0IHRvIHksIG0gb3Igbi4gV2hlbiBpdCdzIHNldCB0byB5LCB0aGUg
ZXhhY3QgYnVpbGQgZXJyb3IKPiA+IHdvdWxkIGJlIGludHJvZHVjZWQuIEkgYWxzbyB0ZXN0ZWQg
dGhpcyBsb2NhbGx5IGFuZCBzYXcKPiA+IHRoZSBidWlsZCBlcnJvci4KPgo+IFRoYW5rcyBmb3Ig
dHJ5aW5nIFJveS4gSW4gdGhhdCBjYXNlLCBpdCBzaG91bGQgYmUgd3JpdHRlbiBhcwo+Cj4gZGVw
ZW5kcyBvbiBUWVBFQyB8fCAoVFlQRUM9biAmJiBDT01QSUxFX1RFU1QpCj4KPgo+IENoZWVycywK
PiBBbmRyZScKCkhpIEFuZHJlJywKClRoYW5rIHlvdSBmb3IgdGhlIGNsYXJpZmljYXRpb24uIEkg
bm90aWNlZCBzaW1pbGFyIGV4cHJlc3Npb25zCmxpa2UgIihDT05GSUdfWD1uICYmIENPTVBJTEVf
VEVTVCkiIGluIG90aGVyIGRyaXZlcnMsCnRob3VnaCBpdCBzZWVtcyBsZXNzIGNvbW1vbiwgd2hp
Y2ggaXMgd2h5IEkgd2FzIGluaXRpYWxseSBoZXNpdGFudC4KCkkgd2lsbCBzZW5kIG91dCB2MiBu
b3cgd2l0aCB0aGlzIGNoYW5nZSBpbmNsdWRlZC4KClRoYW5rcywKUm95CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
