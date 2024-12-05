Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D24F8E7716C
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 07:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyiNjojxZoaZd8BcgTWK/558138NSlndxREzdJk1lRI=; b=ySSB8/OdQgYUCA
	bn7BB/uHvlrHiQllb2wxA7T7pcqfcLrdnI69d0lYgCTdsZq0kkR0hKu6JCyno9TyOH9P6P1EpSETi
	fUrkvmuydmrPbHJ/x57qTh0y/KmQW8b33CtFYmxkTmlWl56sXwTvGzThCyl1RMI5uuLhLVoXHZUzZ
	Vh+pLMIWMZEiQ6bFAFNBihOPTdqPe2Lhwfu2niglLwyAWBtNOvFes+0eeTyj2Gl+TA+QVvskGMpPQ
	2rGMquroUx+ZXxW1p3WqaBVVP89ZS3NuIBhV7IlaI35tuDn1s0A/rndt2cUWCICzGqXlISvDsA63b
	+fR5kKi1cAHbn42R1tQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6Qq-0000000F38N-2WrY;
	Thu, 05 Dec 2024 07:37:52 +0000
Received: from mail-ej1-f46.google.com ([209.85.218.46])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MR-0000000F1jg-0M0F
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 07:33:20 +0000
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa609256eaeso73121766b.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 23:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383997; x=1733988797; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g6O3lCGzSUbOgWyay+aXa9djkwZjywsxQgF3zhLj0KI=;
        b=TuI8agGINnKArxhMyzw+uApllZr3gTjSJ9duTLWD5b/dfUQxusgx/m6vCHHWsC9w0j
         9K4pY0cSGak5IzEhNmfVefQ4xBk+fe4d6vxtQWV+Y+qktdH+rEYTXPvLgKW0hn6MD9qn
         2IFLBZoWSmXxYcAGSFwh4Le9npJ0UFUEkmRjGrwWLBeOkaBzgq0ZIPPnSVoW12tWeQpM
         kBLnXZ1q3wuV/g2DuSLBmv1QVDdyX9Cd/V5WwCy+OTR1ZgTtsmrwtA5ClO4CU4oXRySu
         be21u4kpMFHn3esgBFntYAwAWy+K8HFRuLh8j1lwftQjan8E8Ra0BgMl37kpvgdJyiUC
         eJNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383997; x=1733988797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6O3lCGzSUbOgWyay+aXa9djkwZjywsxQgF3zhLj0KI=;
        b=DMraDfHEGEqLRoKSVaQiz9V9Ne8IcauJ8vcjG3FMWmdGZzEMVDeOlgwplEXz5EsNfj
         D9X9wE2OQDBLOtmC+N+c/D6d14te+Hr7WwfpF2PR/vrS2dLJnjDtC71Q3lktCpEJW25U
         8vSNUVi/yC3G+9malqLMYMuPW5CSuIkCJ1QAf+3qtnN3YAGAJXEopycCaB4kRxYvhxy6
         xboi/WK/J89SOus1VErjVg6ubP6eF5XaCkNi/CILyVdMbcQkga+Tnux1KYIumAD45hYe
         NrjV1/57GDhQwRp58eR8zJoEmQNQ68ZwGNeT4YBKQK9AKbt5NKhEnChfHxG7HmjOZbZ6
         TZWQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2bQavkixPL64mhr8CBGcXdMVURnsSRzOD3XpKmZkaLFFShR0LHD+ZqlR9aYDpTwIuzxvM4z5Sdy4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxI9XxVx+XhhMZg3H8cfgOd5w0ew0M7slXPTCsvmcQQ7Mg99q8/
	dM89/VcTVKx6TtHhap7k71Om1e0d02cG2xo9WEjFRrxoXh4SDd1QIxViM4DxsHw=
X-Gm-Gg: ASbGncvNCakkBP5kerbmIF9KTud+pkw5ctP3bHCh6yhNvZqNELL5Vf2YvQ81WxcA9BD
	m8ji9qkpLGgr9waDYzXYbhX6mU0K70SlaSDHJS5Ts4TFIbs5Q+3lzR8FBtAqu+C/HVUhlGXZDvp
	hzO8EF30K/wYXfBAv3oZYb5gtho/KEXbnwO184Go2wpkP0disSoQZYIaNUP3xlK0+FfTT9QA1z/
	5kw66T8k5/Pae7do97K9GntU6zyq/ezLVI404JGrlS1jMtaRVqp/8EKfPRuZhBOCx/oBHPraTdS
	n8GdafSuilmuBESh2ZsVGuKDKNQtH2vrGw==
X-Google-Smtp-Source: AGHT+IEi/zCT7Ze2IPO+Cv0zWjyb+MBILaN1VwgbSpJ0ZibfzpwTs9mA6Loh2tFdluQCoQvAqduEeA==
X-Received: by 2002:a17:906:18a9:b0:aa5:391e:cad5 with SMTP id a640c23a62f3a-aa5f7d9a2a7mr737322566b.33.1733383996962;
        Wed, 04 Dec 2024 23:33:16 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:16 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:18 +0000
Subject: [PATCH v3 7/8] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
MIME-Version: 1.0
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-7-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_233319_122114_C2627E8D 
X-CRM114-Status: GOOD (  21.01  )
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

Z3MxMDEncyBTUyBwaHkgbmVlZHMgdG8gYmUgY29uZmlndXJlZCBkaWZmZXJlbnRseSBiYXNlZCBv
biB0aGUKY29ubmVjdG9yIG9yaWVudGF0aW9uLCBhcyB0aGUgU1MgbGluayBjYW4gb25seSBiZSBl
c3RhYmxpc2hlZCBpZiB0aGUKbXV4IGlzIGNvbmZpZ3VyZWQgY29ycmVjdGx5LgoKVGhlIGNvZGUg
dG8gaGFuZGxlIHByb2dyYW1taW5nIG9mIHRoZSBtdXggaXMgaW4gcGxhY2UgYWxyZWFkeSwgdGhp
cyBjb21taXQKbm93IGFkZHMgdGhlIG1pc3NpbmcgcGllY2VzIHRvIHN1YnNjcmliZSB0byB0aGUg
VHlwZS1DIG9yaWVudGF0aW9uCnN3aXRjaCBldmVudC4KCk5vdGUgdGhhdCBmb3IgdGhpcyBhbGwg
dG8gd29yayB3ZSByZWx5IG9uIHRoZSBVU0IgY29udHJvbGxlcgpyZS1pbml0aWFsaXNpbmcgdXMu
IEl0IHNob3VsZCBpbnZva2Ugb3VyIC5leGl0KCkgdXBvbiBjYWJsZSB1bnBsdWcsIGFuZApkdXJp
bmcgY2FibGUgcGx1ZyB3ZSdsbCByZWNlaXZlIHRoZSBvcmllbnRhdGlvbiBldmVudCBhZnRlciB3
aGljaCB3ZQpleHBlY3Qgb3VyIC5pbml0KCkgdG8gYmUgY2FsbGVkLgoKQWJvdmUgcmVpbml0aWFs
aXNhdGlvbiBoYXBwZW5zIGlmIHRoZSBEV0MzIGNvbnRyb2xsZXIgY2FuIGVudGVyIHJ1bnRpbWUK
c3VzcGVuZCBhdXRvbWF0aWNhbGx5LiBGb3IgdGhlIERXQzMgZHJpdmVyLCB0aGlzIGlzIGFuIG9w
dC1pbjoKICAgIGVjaG8gYXV0byA+IC9zeXMvZGV2aWNlcy8uLi4vMTExMTAwMDAudXNiL3Bvd2Vy
L2NvbnRyb2wKT25jZSBkb25lLCB0aGluZ3Mgd29yayBhcyBsb25nIGFzIHRoZSBVREMgaXMgbm90
IGJvdW5kIGFzIG90aGVyd2lzZSBpdApzdGF5cyBidXN5IGJlY2F1c2UgaXQgZG9lc24ndCBjYW5j
ZWwgLyBzdG9wIG91dHN0YW5kaW5nIFRSQnMuIEZvciBub3cKd2UgaGF2ZSB0byBtYW51YWxseSB1
bmJpbmQgdGhlIFVEQyBpbiB0aGF0IGNhc2U6CiAgICAgZWNobyAiIiA+IHN5cy9rZXJuZWwvY29u
ZmlnL3VzYl9nYWRnZXQvLi4uL1VEQwoKTm90ZSB0aGF0IGlmIHRoZSBvcmllbnRhdGlvbi1zd2l0
Y2ggcHJvcGVydHkgaXMgbWlzc2luZyBmcm9tIHRoZSBEVCwKdGhlIGNvZGUgd2lsbCBiZWhhdmUg
YXMgYmVmb3JlIHRoaXMgY29tbWl0IChtZWFuaW5nIGZvciBnczEwMSBpdCB3aWxsCndvcmsgaW4g
U1MgbW9kZSBpbiBvbmUgb3JpZW50YXRpb24gb25seSkuIE90aGVyIHBsYXRmb3JtcyBhcmUgbm90
CmFmZmVjdGVkIGVpdGhlciB3YXkuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5k
cmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKLS0tCnYzOgoqIGRyb3AgaW5pdCB0byAtMSBvZiBwaHlf
ZHJkLT5vcmllbnRhdGlvbiAoVmlub2QpCiogYXZvaWQgI2lmZGVmIGFuZCBzd2l0Y2ggdG8gbm9y
bWFsIGNvbmRpdGlvbmFsIElTX0VOQUJMRUQoKSBmb3IKICBDT05GSUdfVFlQRUMKCnYyOgoqIG1v
dmUgI2luY2x1ZGUgdHlwZWNfbXV4LmggZnJvbSBwYXJlbnQgcGF0Y2ggaW50byB0aGlzIG9uZSAo
UGV0ZXIpCgpJU19FTkFCTEVEKENPTkZJR19UWVBFQykKLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5n
L0tjb25maWcgICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5
bm9zNS11c2JkcmQuYyB8IDU2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAyIGZp
bGVzIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9z
YW1zdW5nL0tjb25maWcgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWcKaW5kZXggZjEwYWZh
M2Q3ZmY1Li5mYzdiZDEwODg1NzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2Nv
bmZpZworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWcKQEAgLTgwLDYgKzgwLDcgQEAg
Y29uZmlnIFBIWV9FWFlOT1M1X1VTQkRSRAogCXRyaXN0YXRlICJFeHlub3M1IFNvQyBzZXJpZXMg
VVNCIERSRCBQSFkgZHJpdmVyIgogCWRlcGVuZHMgb24gKEFSQ0hfRVhZTk9TICYmIE9GKSB8fCBD
T01QSUxFX1RFU1QKIAlkZXBlbmRzIG9uIEhBU19JT01FTQorCWRlcGVuZHMgb24gVFlQRUMgfHwg
KFRZUEVDPW4gJiYgQ09NUElMRV9URVNUKQogCWRlcGVuZHMgb24gVVNCX0RXQzNfRVhZTk9TCiAJ
c2VsZWN0IEdFTkVSSUNfUEhZCiAJc2VsZWN0IE1GRF9TWVNDT04KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IDIwNjQ4M2M3Y2E1NS4uNmRjYzNjODBjMWQyIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBi
L2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKQEAgLTI0LDYgKzI0LDcg
QEAKICNpbmNsdWRlIDxsaW51eC9yZWd1bGF0b3IvY29uc3VtZXIuaD4KICNpbmNsdWRlIDxsaW51
eC9zb2Mvc2Ftc3VuZy9leHlub3MtcmVncy1wbXUuaD4KICNpbmNsdWRlIDxsaW51eC91c2IvdHlw
ZWMuaD4KKyNpbmNsdWRlIDxsaW51eC91c2IvdHlwZWNfbXV4Lmg+CiAKIC8qIEV4eW5vcyBVU0Ig
UEhZIHJlZ2lzdGVycyAqLwogI2RlZmluZSBFWFlOT1M1X0ZTRUxfOU1IWjYJCTB4MApAQCAtMzk0
LDYgKzM5NSw3IEBAIHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfZHJ2ZGF0YSB7CiAgKiBAZXh0
cmVmY2xrOiBmcmVxdWVuY3kgc2VsZWN0IHNldHRpbmdzIHdoZW4gdXNpbmcgJ3NlcGFyYXRlCiAg
KgkgICAgICAgcmVmZXJlbmNlIGNsb2NrcycgZm9yIFNTIGFuZCBIUyBvcGVyYXRpb25zCiAgKiBA
cmVndWxhdG9yczogcmVndWxhdG9ycyBmb3IgcGh5CisgKiBAc3c6IFR5cGVDIG9yaWVudGF0aW9u
IHN3aXRjaCBoYW5kbGUKICAqIEBvcmllbnRhdGlvbjogVHlwZUMgY29ubmVjdG9yIG9yaWVudGF0
aW9uIC0gbm9ybWFsIG9yIGZsaXBwZWQKICAqLwogc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSB7
CkBAIC00MTUsNiArNDE3LDcgQEAgc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSB7CiAJdTMyIGV4
dHJlZmNsazsKIAlzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSAqcmVndWxhdG9yczsKIAorCXN0
cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdzsKIAllbnVtIHR5cGVjX29yaWVudGF0aW9uIG9yaWVu
dGF0aW9uOwogfTsKIApAQCAtMTQwMCw2ICsxNDAzLDU1IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91
c2JkcmRfcGh5X2Nsa19oYW5kbGUoc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSAqcGh5X2RyZCkK
IAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9vcmllbl9zd19zZXQo
c3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAorCQkJCSAgICAgICBlbnVtIHR5cGVjX29yaWVu
dGF0aW9uIG9yaWVudGF0aW9uKQoreworCXN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9k
cmQgPSB0eXBlY19zd2l0Y2hfZ2V0X2RydmRhdGEoc3cpOworCisJc2NvcGVkX2d1YXJkKG11dGV4
LCAmcGh5X2RyZC0+cGh5X211dGV4KQorCQlwaHlfZHJkLT5vcmllbnRhdGlvbiA9IG9yaWVudGF0
aW9uOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyB2b2lkIGV4eW5vczVfdXNiZHJkX29yaWVu
X3N3aXRjaF91bnJlZ2lzdGVyKHZvaWQgKmRhdGEpCit7CisJc3RydWN0IGV4eW5vczVfdXNiZHJk
X3BoeSAqcGh5X2RyZCA9IGRhdGE7CisKKwl0eXBlY19zd2l0Y2hfdW5yZWdpc3RlcihwaHlfZHJk
LT5zdyk7Cit9CisKK3N0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfc2V0dXBfbm90aWZpZXJzKHN0
cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCit7CisJaW50IHJldDsKKworCWlmICgh
SVNfRU5BQkxFRChDT05GSUdfVFlQRUMpKQorCQlyZXR1cm4gMDsKKworCWlmIChkZXZpY2VfcHJv
cGVydHlfcHJlc2VudChwaHlfZHJkLT5kZXYsICJvcmllbnRhdGlvbi1zd2l0Y2giKSkgeworCQlz
dHJ1Y3QgdHlwZWNfc3dpdGNoX2Rlc2Mgc3dfZGVzYyA9IHsgfTsKKworCQlzd19kZXNjLmRydmRh
dGEgPSBwaHlfZHJkOworCQlzd19kZXNjLmZ3bm9kZSA9IGRldl9md25vZGUocGh5X2RyZC0+ZGV2
KTsKKwkJc3dfZGVzYy5zZXQgPSBleHlub3M1X3VzYmRyZF9vcmllbl9zd19zZXQ7CisKKwkJcGh5
X2RyZC0+c3cgPSB0eXBlY19zd2l0Y2hfcmVnaXN0ZXIocGh5X2RyZC0+ZGV2LCAmc3dfZGVzYyk7
CisJCWlmIChJU19FUlIocGh5X2RyZC0+c3cpKQorCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUocGh5
X2RyZC0+ZGV2LAorCQkJCQkgICAgIFBUUl9FUlIocGh5X2RyZC0+c3cpLAorCQkJCQkgICAgICJG
YWlsZWQgdG8gcmVnaXN0ZXIgVHlwZUMgb3JpZW50YXRpb24gc3dpdGNoXG4iKTsKKworCQlyZXQg
PSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQocGh5X2RyZC0+ZGV2LAorCQkJCQkgICAgICAgZXh5
bm9zNV91c2JkcmRfb3JpZW5fc3dpdGNoX3VucmVnaXN0ZXIsCisJCQkJCSAgICAgICBwaHlfZHJk
KTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiBkZXZfZXJyX3Byb2JlKHBoeV9kcmQtPmRldiwgcmV0
LAorCQkJCQkgICAgICJGYWlsZWQgdG8gcmVnaXN0ZXIgVHlwZUMgb3JpZW50YXRpb24gZGV2bSBh
Y3Rpb25cbiIpOworCX0KKworCXJldHVybiAwOworfQorCiBzdGF0aWMgY29uc3Qgc3RydWN0IGV4
eW5vczVfdXNiZHJkX3BoeV9jb25maWcgcGh5X2NmZ19leHlub3M1W10gPSB7CiAJewogCQkuaWQJ
CT0gRVhZTk9TNV9EUkRQSFlfVVRNSSwKQEAgLTE3ODksNiArMTg0MSwxMCBAQCBzdGF0aWMgaW50
IGV4eW5vczVfdXNiZHJkX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
CWlmIChyZXQpCiAJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiZmFpbGVkIHRvIGdl
dCByZWd1bGF0b3JzXG4iKTsKIAorCXJldCA9IGV4eW5vczVfdXNiZHJkX3NldHVwX25vdGlmaWVy
cyhwaHlfZHJkKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCiAJZGV2X3ZkYmcoZGV2LCAi
Q3JlYXRpbmcgdXNiZHJkX3BoeSBwaHlcbiIpOwogCiAJZm9yIChpID0gMDsgaSA8IEVYWU5PUzVf
RFJEUEhZU19OVU07IGkrKykgewoKLS0gCjIuNDcuMC4zMzguZzYwY2NhMTU4MTktZ29vZwoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
