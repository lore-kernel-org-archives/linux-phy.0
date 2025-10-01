Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AADE2CAC5B8
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 02:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A47npqwXigT6QMRCTpFJSPy1ZdZALncUZ6idhYMM2jY=; b=YBTA6eNPbBFlXd
	DRkbQnbj1diPt5zLXe0lNd/2+Nuvl6Wpn7pLL27n0pyA5zZEDyYonYd+MjON3HGXroUJaB25Ry8wm
	UDHxdxQre+owDjRvYOViuKOPe0C+q7BYhped9u94fdyT4RBvPvdhSZpVliyep7TSoWArHRIXLzc8C
	iWzt1KCVzII9Y47J6llq1+wLn74CRwEY2JIcZ6SCOiZtGXMchRxqNAU9P3OBXfsSulr3YklsIIror
	83ByO9XOM73WN317L+9d7EqlPux8hSIgKumM/ICT+N9nf4E+3dxEyqLug5RMg6kKWuDJ7GCXu8VAW
	4aQATO2e+f2Lxehva2gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3mlS-00000006aTr-1Qsg;
	Wed, 01 Oct 2025 02:40:22 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3mlQ-00000006aSt-1XGM
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 02:40:21 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-92aee734585so115609039f.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1759286419; x=1759891219; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BSiL8LGa2xahx7enK5ghNLiWs+z0ni4QqOBXClR3tWI=;
        b=AHT8F6zO80BVQb/LcP5l2lwLVLoZKVQ+3/3cBL18bfqEw4U1qeTjxEjwSfx/P8CxZ1
         SNAoWxV9QAxBUD5rOHlUcbsK9oxKLDxe5Zf1qE+/RW7bfHoKSaXsUuVQO6ahWak+39Cj
         yzVRiwbiHXbGVTD06oNifkgCzJOrlf00N74e/e3Muj8kFsZKyAIr2omgct49vCeqbscf
         HyrNPdLduEJ8+KqU7ujR5gn6yAfZwnVJ8AfqDimNhGRcKdAo/duGoeJN2kDytxJYHvUK
         Ws+bUOxqlDG0QtdVwFZ3+HuxyIEIyvWc5X4OOacWAaLWAfT+oZxMOKTaSnUSgdvAO4GA
         ky8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759286419; x=1759891219;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BSiL8LGa2xahx7enK5ghNLiWs+z0ni4QqOBXClR3tWI=;
        b=hjFyBxdjym4eUbaWQT1rQzEoKq43pEmbuerPLMnTGzwF0bI+WQD3TNcvhXQ5ShKGUa
         9ebImp30NO210eRRKYsdYRpfwemRogkHhzXmJ+O0UX15RLjQk6C1zpKszfKKcv04fvSC
         Uswv5n51lO6BRX2IdBFMA7dxlPrKdyn6IpjpwTcKyEhD5wnfpYR8Jx0NRXKCAn7Igyri
         9a6KyRzp1CeIAWgSjblehkHLf8nJ2MkxAU+MkDMoiQXYyCmrqEdOXLEKzBaHKYZEvVwS
         Hby1L/nDOZscTykjIt+fEmJlIdx8X6wefQ3sKf/643r/2eyaPMrMIU4CmALngjI2ydtd
         63iQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6A0eMSYjKCdBglbWzqDe+7ZoRAYEN7X2m7pacztEj6b9LBcuNs0wVfZgSqE6d3BmqNGW3fRUQN7E=@lists.infradead.org
X-Gm-Message-State: AOJu0YynyejJ73jAPnSz/gK3F41Gn4hPrNhrNqwV+NV4T+6Ck2aqO8Xe
	CducveI0MbQ6HI2dX2SJ7dhx3PmhecyDRsSzre+hTKkbC6DJcBGfnvvg7Xj4F0ooqe4=
X-Gm-Gg: ASbGncs1Q6ZttnPzl3uxn9/kpE2a/83y4XDOlPlkj0PPPVG/2ESuLxACCJCXukH5Wyi
	x7l3Owji3v4UG2kreLapCU7wSBC12228mrrQEWJLe9yil8dCO+Uw4t+zDVRXaar/frTrYxW9L+U
	zNkpKLwS4v8c7BYjHiCM8WX75SS461VzCffMiJYtg4mUo4kuUk2tc1K+iGwePx/f1SgcZ/wnAOi
	hpaxJMoLIAONXto4WyOYTfr3oxjKXflHrFdqfTDEUPa4HHS7iJaKkvghkC2T8hUsxdHDrmoSWGS
	5UzBk5TScaLljtXsPwMwei10iuB0S6yUZD76ILEx5/qe8FSBC9JddTROLBKihuJEVRS5Thlxx4a
	3as8RQ0Ess4VUjqfD7eUJ+Zrc4cviY1PucWMAweqs1+P09S8Avdd3Inxt95vTXmBIpj4CCanxOt
	Ytu+lWMhmxXX6D0tVwPFfj
X-Google-Smtp-Source: AGHT+IFnQ4AKi2u/W+a6GpDqwlkdiwJEehpu9YBKfYz9D/hyyMA4l6KRgEzrqCbvLsuK4qiSaJzeAQ==
X-Received: by 2002:a05:6602:6287:b0:922:6c20:45ef with SMTP id ca18e2360f4ac-937a9ff849bmr348732439f.7.1759286419402;
        Tue, 30 Sep 2025 19:40:19 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-92d06cc3b9esm184392139f.12.2025.09.30.19.40.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 19:40:18 -0700 (PDT)
Message-ID: <4ead7693-4174-4494-b997-c0e4159809af@riscstar.com>
Date: Tue, 30 Sep 2025 21:40:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] PCI: spacemit: introduce SpacemiT PCIe host driver
From: Alex Elder <elder@riscstar.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
 bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, p.zabel@pengutronix.de, tglx@linutronix.de,
 johan+linaro@kernel.org, thippeswamy.havalige@amd.com, namcao@linutronix.de,
 mayank.rana@oss.qualcomm.com, shradha.t@samsung.com, inochiama@gmail.com,
 quic_schintav@quicinc.com, fan.ni@samsung.com, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250813184701.2444372-1-elder@riscstar.com>
 <20250813184701.2444372-6-elder@riscstar.com>
 <sptrmspkmqrwsh2iv4rmha45vsoz5ks7vhcdp3dytsxyabn6qn@mmk7z6tf5wcv>
 <21ad322f-5abe-4a97-9373-d027b846ee8c@riscstar.com>
Content-Language: en-US
In-Reply-To: <21ad322f-5abe-4a97-9373-d027b846ee8c@riscstar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_194020_410008_A5E52C10 
X-CRM114-Status: GOOD (  11.98  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gOS8xOS8yNSA1OjEwIFBNLCBBbGV4IEVsZGVyIHdyb3RlOgo+Pj4gK3N0YXRpYyBpbnQgazFf
cGNpZV9pbml0KHN0cnVjdCBkd19wY2llX3JwICpwcCkKPj4+ICt7Cj4+PiArwqDCoMKgIHN0cnVj
dCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21fcHAocHApOwo+Pj4gK8KgwqDCoCBzdHJ1
Y3QgazFfcGNpZSAqazEgPSB0b19rMV9wY2llKHBjaSk7Cj4+PiArwqDCoMKgIHUzMiBvZmZzZXQ7
Cj4+PiArwqDCoMKgIHUzMiBtYXNrOwo+Pj4gK8KgwqDCoCBpbnQgcmV0Owo+Pj4gKwo+Pj4gK8Kg
wqDCoCByZXQgPSBrMV9wY2llX3RvZ2dsZV9zb2Z0X3Jlc2V0KGsxKTsKPj4+ICvCoMKgwqAgaWYg
KHJldCkKPj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9hcHBfZGlzYWJsZTsKPj4+ICsKPj4+
ICvCoMKgwqAgcmV0ID0gazFfcGNpZV9hcHBfZW5hYmxlKGsxKTsKPj4+ICvCoMKgwqAgaWYgKHJl
dCkKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4gKwo+Pj4gK8KgwqDCoCByZXQg
PSBwaHlfaW5pdChrMS0+cGh5KTsKPj4+ICvCoMKgwqAgaWYgKHJldCkKPj4+ICvCoMKgwqDCoMKg
wqDCoCBnb3RvIGVycl9hcHBfZGlzYWJsZTsKPj4+ICsKPj4+ICvCoMKgwqAgLyogU2V0IHRoZSBQ
Q0kgdmVuZG9yIGFuZCBkZXZpY2UgSUQgKi8KPj4+ICvCoMKgwqAgZHdfcGNpZV9kYmlfcm9fd3Jf
ZW4ocGNpKTsKPj4+ICvCoMKgwqAgZHdfcGNpZV93cml0ZXdfZGJpKHBjaSwgUENJX1ZFTkRPUl9J
RCwgSzFfUENJRV9WRU5ET1JfSUQpOwo+Pj4gK8KgwqDCoCBkd19wY2llX3dyaXRld19kYmkocGNp
LCBQQ0lfREVWSUNFX0lELCBLMV9QQ0lFX0RFVklDRV9JRCk7Cj4+PiArwqDCoMKgIGR3X3BjaWVf
ZGJpX3JvX3dyX2RpcyhwY2kpOwo+Pj4gKwo+Pj4gK8KgwqDCoCAvKgo+Pj4gK8KgwqDCoMKgICog
UHV0IHRoZSBwb3J0IGluIHJvb3QgY29tcGxleCBtb2RlLCByZWNvcmQgdGhhdCBWYXV4IGlzIHBy
ZXNlbnQuCj4+Cj4+IFRoZXJlIGlzIG5vIDMuM1ZhdXggc3VwcGx5IHByZXNlbnQgaW4gdGhlIGJp
bmRpbmcuIFNvIHRoZSBzdXBwbHkgaXMgCj4+IGd1YXJhbnRlZWQKPj4gdG8gYmUgcHJlc2VudCBh
bmQgZW5hYmxlZCBhbHdheXMgYnkgdGhlIHBsYXRmb3JtPwo+IAo+IEFjdHVhbGx5LCBJIGRvbid0
IGtub3csIEknbGwgYXNrLsKgIFRoYW5rIHlvdSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuCgpPbiB0
aGUgQmFuYW5hIFBpIEJQSS1GMyBwbGF0Zm9ybSwgdGhpcyBzdXBwbHkgaXMgYWx3YXlzIG9uLgoK
VGhlcmUgZG8gZXhpc3Qgb3RoZXIgKFNwYWNlbWlUIEsxLWJhc2VkKSBwbGF0Zm9ybXMgdGhhdCBl
bmFibGUKdGhpcyBzdXBwbHkgdXNpbmcgYSBHUElPLiAgSSBhbSBub3QgYWJsZSB0byB0ZXN0IHRo
YXQgbm93LgoKSG93ZXZlciBJIHdpbGwgYWRkIGEgcHJvcGVydHkgaW4gdGhlIERUIGJpbmRpbmcg
dG8gaW5kaWNhdGUgdGhlCjMuM3Ygc3VwcGx5LiAgSSBzZWUgInZwY2llM3YzLXN1cHBseSIgdXNl
ZCBhcyBhIHByb3BlcnR5IG5hbWUKYW5kIHVubGVzcyBzb21lb25lIHN1Z2dlc3RzIGRvaW5nIHNv
bWV0aGluZyBlbHNlLCB0aGF0J3Mgd2hhdApJJ2xsIHVzZS4KCgkJCQkJLUFsZXgKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
