Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E202C2BD05
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jun 2024 11:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwY0PrhLfWI2Ea2dY9msOxBLGFrIllMpCRMwd+AEeO0=; b=Bmb0vUWDPEuy77
	rFH9B4ca05pz2KfsItL0Q1TpkysLW+logDqGyIwo80zngFeQnKjOXWSi0CZRxTqjw2XBZDAxhZtI0
	kLjVkJ79mRzcLc5Gclzt++HewawZenYa4djvQatx+mwgSAMz+B+/xvupFfzIeihUDBmBBj6sMeQsu
	x+ci8R76GHGLF4lWvsTb/BrzMVmcJnHhVSpFxYg358sTVWYBCyUZvfl2UbojnOGNveW/Fmn8Pp43M
	/vKpIVWtQ07uoo7CBhfOrJJN3w5Z2vVqgK/0i3XBP8P1YLfdUfK5Znn3C6DCqlky7GmTzcLLPrXe/
	8fxZ01IAM38KRCEZIdTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhsE-0000000GbKs-0pfp;
	Mon, 24 Jun 2024 11:28:38 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhs7-0000000GbJ6-1AEC
	for linux-phy@lists.infradead.org;
	Mon, 24 Jun 2024 11:28:33 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-5c1adbcaad3so1883366eaf.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Jun 2024 04:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719228510; x=1719833310; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QteiONYM0/7wKm8o/iZbfkWsRu+IEcJCYcDxA/UWpZM=;
        b=xFgkrtuPN97wsO0BKugskgXE2mfUMevxePkq5BlgOPioCkjCQN3j/WNBGvrey8En7f
         f3NbSUgtBpKhwB0Ed5hI7K1oz+ZeEFPZxUsPZm433gBiFvjhBf9xl+tsm7D0CzFpXESe
         EvuYkP9sigrXfJV1VQ215NpKtR/aN4eyHxMe0nVbTObzslPJbZcQ6gNl1yuS9odHU0Gb
         Q47x2MqmBYv8TUGJjSD6Gr3hblYhfmSwszZYNnWSUYBQTslZFYMsqSWcCfHhKBqi94Yu
         AoabYXwWSWEJss3FxNShjPfqqH1wnxxGzvbCWm5nm2Ruq3bE8HYykV8YDUmaL3YHgofr
         EYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719228510; x=1719833310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QteiONYM0/7wKm8o/iZbfkWsRu+IEcJCYcDxA/UWpZM=;
        b=eUVhzT3F6mwbxzHcXb/OOJTI6Nwd44lUpma+CyTMpUbJYZiye8PcP9+2PfcjaQihA2
         90SWR/FqITGYfQIUMB+S1exxgpQG9lWsLNS8rNAGImlIevzvSGwGylYgTMhZYv0BG0lm
         qMFqQzunhwmfXokvcLKuy8r2D4lbCsxcWWc2d/7JQmB2h0OplKHh6Rq6mk7oZhie4sGg
         T4fAkseG9ti7H7EUFf8tkmAuY2xNjZU1brTgDybgvDL7P+6JxGQl6r9X4JgwOL4zYFW2
         YRNOZXSYLJZmdC/MhViLvYnVjUpEvqPtm65gpZdm6NEjsoq3GU3kq2WuJqpdg3+PGZKE
         Gwsw==
X-Forwarded-Encrypted: i=1; AJvYcCUe9+HkuyZ9Ey7dSoHpUsmJ/panbsG3mcsUtNmn+ajYnEEdl8+I1b+V0G72tdyhJRp74fjyiTcLmVFLcVKp/cPssMmck431gYvdlWQ7pA==
X-Gm-Message-State: AOJu0YxYbeQ3k9fYrRtfxi7ubdDvtctciy7zGuL+Qf8piFt3dUIWoR6F
	K0HXD/1QvCLdy3EIYsw5WVIpGwfFzIpMb5YvYrRRbV+vBHHCcBeURGQbKKwcfEyD46EVQbduR8e
	NXuGrARq6SsV6bgaps1DvR63Jghf2qzrueSNItw==
X-Google-Smtp-Source: AGHT+IFlNv2FZElqgVQlBk87lsFwbs9c65tZcdtCpO79u3aNcvuYkknMUcQr9mTDHrMDvpletr+cOs9nxhTCAnVSEb4=
X-Received: by 2002:a05:6820:60f:b0:5c1:e83b:ee10 with SMTP id
 006d021491bc7-5c1e83bef4amr2456768eaf.1.1719228509995; Mon, 24 Jun 2024
 04:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org> <20240617-usb-phy-gs101-v3-5-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-5-b66de9ae7424@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 24 Jun 2024 12:28:18 +0100
Message-ID: <CADrjBPpESTiZBruqMsZuuY=GyAjcFEZSXGEceeDAVESd52jJZA@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] phy: exynos5-usbdrd: convert Vbus supplies to regulator_bulk
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_042831_680780_BB68A492 
X-CRM114-Status: GOOD (  14.42  )
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

SGkgQW5kcsOpLAoKT24gTW9uLCAxNyBKdW4gMjAyNCBhdCAxNzo0NSwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBVc2luZyB0aGUgcmVndWxhdG9y
X2J1bGsgQVBJcywgdGhlIGhhbmRsaW5nIG9mIHBvd2VyIHN1cHBsaWVzIGJlY29tZXMKPiBtdWNo
IHNpbXBsZXIuIFRoZXJlIGlzIG5vIG5lZWQgYW55bW9yZSB0byBjaGVjayBpZiByZWd1bGF0b3Jz
IGhhdmUgYmVlbgo+IGFjcXVpcmVkIG9yIG5vdCwgdGhlIGJ1bGsgQVBJcyB3aWxsIGRvIGFsbCB0
aGUgd29yayBmb3IgdXMuIFdlIGNhbiBhbHNvCj4gZHJvcCB0aGUgdmFyaW91cyBoYW5kbGVzIHRv
IHRoZSBpbmRpdmlkdWFsIHBvd2VyIHN1cHBsaWVzIGluIHRoZSBkcml2ZXIKPiBydW50aW1lIGRh
dGEgYW5kIGluc3RlYWQgc2ltcGx5IHRyZWF0IHRoZW0gYWxsIGFzIG9uZSB0aGluZy4gRXJyb3IK
PiBjbGVhbnVwIGFsc28gYmVjb21lcyBtdWNoIHNpbXBsZXIuCj4KPiBDb252ZXJ0aW5nIHRvIHRo
ZSByZWd1bGF0b3JfYnVsayBBUElzIGFsc28gbWFrZXMgaXQgZWFzaWVyIHRvIGFkZAo+IHN1cHBv
cnQgZm9yIHRob3NlIFNvQ3MgdGhhdCBoYXZlIGFkZGl0aW9uYWwgcG93ZXIgc3VwcGxpZXMgZm9y
IHRoZSBQSFkuCj4gR29vZ2xlIFRlbnNvciBnczEwMSBpcyBvbmUgZXhhbXBsZSBvZiBzdWNoIGEg
U29DLiBPdGhlcndpc2Ugd2UnZCBoYXZlCj4gdG8gYWRkIGFsbCBhZGRpdGlvbmFsIHN1cHBsaWVz
IGluZGl2aWR1YWxseSB2aWEgaW5kaXZpZHVhbCBjYWxscyB0bwo+IHJlZ3VsYXRvcl9nZXQoKSBh
bmQgZW5hYmxlL2Rpc2FibGUgaGFuZGxlIHRoZW0gYWxsIGluZGl2aWR1YWxseSwKPiBpbmNsdWRp
bmcgY29tcGxpY2F0ZWQgZXJyb3IgaGFuZGxpbmcuIFRoYXQgZG9lc24ndCBzY2FsZSBhbmQgY2x1
dHRlcnMKPiB0aGUgY29kZS4KPgo+IEp1c3QgdXBkYXRlIHRoZSBjb2RlIHRvIHVzZSB0aGUgcmVn
dWxhdG9yX2J1bGsgQVBJcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRy
ZS5kcmFzemlrQGxpbmFyby5vcmc+Cj4gLS0tCgpSZXZpZXdlZC1ieTogIFBldGVyIEdyaWZmaW4g
PHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KYW5kClRlc3RlZC1ieTogUGV0ZXIgR3JpZmZpbiA8
cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKVGVzdGVkIHVzaW5nIG15IFBpeGVsIDYgcHJvIGRl
dmljZS4gVVNCIGNvbWVzIHVwIGFuZCBpdCBpcyBwb3NzaWJsZSB0bwp1c2UgYWRiIGZyb20gdGhl
IGhvc3QgY29tcHV0ZXIgdG8gdGhlIHBob25lLgoKcmVnYXJkcywKClBldGVyCgpbLi5dCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
