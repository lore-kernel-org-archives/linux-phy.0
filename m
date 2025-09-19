Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F5F2CAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 18:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtyooqw+WKdU9+Wk03k/SbA3wO+d5botdpfy2+WPXS4=; b=AlaBruGe4IwKjJ
	o8v7zzB0UJYu5ZJgm9ViIi44Oh+wzD4MHXRPf3lzoCZjAdJQpUviMOiBUOOXorgegeVzoBsW32JLD
	iMx3Hq1i391wBjKdD61hDQOvJ31K3gn4FzW501nyMzH8M1BZox4A295IN/sCyoDME7u9ah/TkxErp
	QAWfHSpgJz/Wuhom+GJI7y8lhWq7fnUPelPmnINZaoFozEUYrDymarVdY4FEo/JHsgUCFm2oQl3xE
	4KKuPjUrhWbUaoIBpc5WZ572dN4NbRdtZV6XL1u/+xFGuP9JEsGdMwtipP3c8z3jbpTCcylrPq7rH
	zkiNLRZGCLuhV4st2G1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzfV1-00000003iwW-2a6x;
	Fri, 19 Sep 2025 18:06:23 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzfUw-00000003ivM-3ph2
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 18:06:21 +0000
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-42486ed0706so4364935ab.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 11:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758305178; x=1758909978; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PyDhfnNhpXNHSy1fs/Ww3WtAuz4kktx1C3rWmJRS220=;
        b=nEyZk4pleRR6/TIkIkPGHGRL1OSYQN5sBzCOrjs5aX964Lw2Kl+6lvNF+yGCdUMJP2
         uuNbxwE/OB736TvLuyWOEOIM3lHsVEWU/ZUI7HeKbAgMuTLiavNbJxTslfscXeTgu7w+
         ZhVvFqpnEe18DqBniqH4+xuAOmb3FahBXayQz+unYj2EHovR6oQd9J8pNwuJEswqNUt/
         VXJt710k8I1J4JTj5O/dvzvjhjPxIU51Dhtcg77BMfTdwkJkLNYzojiWu5hIFZxxLsLA
         v48lHFVg2L2hB1+ex8pSif68ZhhDOcCW6+OYy9eusGNL9Zr6CCws9nyzO7QsqoC/W+gA
         dpuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758305178; x=1758909978;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PyDhfnNhpXNHSy1fs/Ww3WtAuz4kktx1C3rWmJRS220=;
        b=Tl5ebE2GF3wiLPMT8LR8+/UumTLAkQw/5+gP+s61QoOdfHZHYIGN2MYjwBT8DqKwVg
         zg8N0kLcMT2mllTpO7STAc3l+iFyhSvP7Cf4iQYlNW4jL4mMssoM/JA5xweEj3+Q8Z0F
         VpS6i6iJ47uwc4xi3BbXedtQs+RqajwPj1yWk6fhP8jW85eElE1Gm9fjlbZWAdMbHA8u
         xVLYhwejMs5Y+b0r/wO3hDKyP1otKpLfLTZUVGhhwN356VqS6xH+uAzw5ExAj1YO15xs
         muOBaGU5OlXrEZ2jgJoA1SySOScanMXp7QziZxjhE/+lcT6UgmJk6Ofkiih/iqNlaVJc
         Go9w==
X-Forwarded-Encrypted: i=1; AJvYcCXzHYeVjgMUg1y2LJT3ZQfm4OWq1u38cygeYKLHcqPK9vZ5soyMBq6ifpFXgA+UwQg3jR7sZNToKD4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0zZ9nxAsywFoqJWXUclDXfcNusr39SRdoClry+8Z6ATtlKI0Z
	yZ7ZH+iJW0oVop1Zg3rsHxJ9LTeLcfDliB8/7WS0r1Lvi+BXrot0A8NEgI7VW3nVnFs=
X-Gm-Gg: ASbGncuONoZewGIrGIqU+RaqHJE8jYjUwsVhqQYHOAu/IFELBJ3dbdO6JO5/GvTmYHt
	Id9QFcqTbx/0qame4UMwg4YDdk5zjLp06oVUMdwbXCYd8ANDDfKbG+toF8NArTp6ToXXzAYiEIt
	oVKuhZSbyqr/oYvszbwyK/GvXoNTqVqwbf32K32hOYSYLCDukkfkkaPyZ2pjsperJAQitxAEeTA
	c1/IyKmmkaOUcGrAjb6ToGw3MM0t5OfPdLlsx3NdinWGdODfG3oVnUTd7h4mS9iXQ6AkSX0ugpd
	Tqcjz7X8VV2AuwwSKWU6inSHNwAfErbmBgp+bzxKoeQHJLlxAryztL7yVgCCrZh0QoO0M0jw5tR
	brH4/0Tp9vZr5ugoL+jGBPlJonpenvyBFdd1Banx1WC2H6WXZ7dxc/jtt3zSycQ==
X-Google-Smtp-Source: AGHT+IHsassX7VCPU49903k7FzEDerinifFoBfyC5zAcBlOttmj7mzgkmLRJ6A7BaHGoGe18lpW13w==
X-Received: by 2002:a05:6e02:148b:b0:424:1c30:a3a7 with SMTP id e9e14a558f8ab-4248197c46emr68662845ab.25.1758305177594;
        Fri, 19 Sep 2025 11:06:17 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-53d3a59103csm2326715173.6.2025.09.19.11.06.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 11:06:17 -0700 (PDT)
Message-ID: <5463beb7-9909-4cb0-bb39-9f2d1aa4d2fd@riscstar.com>
Date: Fri, 19 Sep 2025 13:06:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] PCI: spacemit: introduce SpacemiT PCIe host driver
From: Alex Elder <elder@riscstar.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, p.zabel@pengutronix.de, tglx@linutronix.de,
 johan+linaro@kernel.org, thippeswamy.havalige@amd.com, namcao@linutronix.de,
 mayank.rana@oss.qualcomm.com, shradha.t@samsung.com, inochiama@gmail.com,
 quic_schintav@quicinc.com, fan.ni@samsung.com, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250813212219.GA294849@bhelgaas>
 <5d5eacff-4c32-4df4-8da0-3b55974b74aa@riscstar.com>
Content-Language: en-US
In-Reply-To: <5d5eacff-4c32-4df4-8da0-3b55974b74aa@riscstar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_110619_199082_C4541F24 
X-CRM114-Status: GOOD (  28.87  )
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

T24gOC8xMy8yNSA0OjI3IFBNLCBBbGV4IEVsZGVyIHdyb3RlOgo+IE9uIDgvMTMvMjUgNDoyMiBQ
TSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPj4gT24gV2VkLCBBdWcgMTMsIDIwMjUgYXQgMDE6NDY6
NTlQTSAtMDUwMCwgQWxleCBFbGRlciB3cm90ZToKPj4+IEludHJvZHVjZSBhIGRyaXZlciBmb3Ig
dGhlIFBDSWUgcm9vdCBjb21wbGV4IGZvdW5kIGluIHRoZSBTcGFjZW1pVAo+Pj4gSzEgU29DLsKg
IFRoZSBoYXJkd2FyZSBpcyBkZXJpdmVkIGZyb20gdGhlIFN5bm9wc3lzIERlc2lnbldhcmUgUENJ
ZSBJUC4KPj4+IFRoZSBkcml2ZXIgc3VwcG9ydHMgdGhyZWUgUENJZSBwb3J0cyB0aGF0IG9wZXJh
dGUgYXQgUENJZSB2MiB0cmFuc2Zlcgo+Pj4gcmF0ZXMgKDUgR1Qvc2VjKS7CoCBUaGUgZmlyc3Qg
cG9ydCB1c2VzIGEgY29tYm8gUEhZLCB3aGljaCBtYXkgYmUKPj4+IGNvbmZpZ3VyZWQgZm9yIHVz
ZSBmb3IgVVNCIDMgaW5zdGVhZC4KCkknbSBmb2xsb3dpbmcgdXAgb24gYSBmZXcgdGhpbmdzIEkg
c2FpZCBsYXN0IG1vbnRoLgoKPj4gSSBhc3N1bWUgIlBDSWUgdjIiIG1lYW5zIHdoYXQgbW9zdCBw
ZW9wbGUgY2FsbCAiUENJZSBnZW4yIiwgYnV0IHRoZQo+PiBzcGVjIGVuY291cmFnZXMgYXZvaWRh
bmNlICJnZW5YIiBiZWNhdXNlIGl0J3MgYW1iaWd1b3VzLgo+IAo+IFllcywgdGhhdCdzIHdoYXQg
SSBtZWFudCwgYnV0IEkgZGlkIHRyeSB0byBjbGFyaWZ5IHdpdGggdGhlCj4gdHJhbnNmZXIgcmF0
ZS4KPiAKPj4+ICtjb25maWcgUENJRV9LMQo+Pj4gK8KgwqDCoCBib29sICJTcGFjZW1pVCBLMSBo
b3N0IG1vZGUgUENJZSBjb250cm9sbGVyIgo+Pgo+PiBTdHlsZSBvZiBuZWFyYnkgZW50cmllcyBp
czoKPj4KPj4gwqDCoCAiU3BhY2VtaVQgSzEgUENJZSBjb250cm9sbGVyIChob3N0IG1vZGUpIgo+
IAo+IE9LIEknbGwgZml4IHRoYXQuCj4gCj4+IFBsZWFzZSBhbHBoYWJldGl6ZSBieSB0aGUgY29t
cGFueSBuYW1lICgiU3BhY2VtaVQiKSBpbiB0aGUgbWVudSBlbnRyeS4KPiAKPiBPSy4KCkkgd2ls
bCBiZSByZW5hbWluZyB0aGUgS2NvbmZpZyBvcHRpb24gdG8gYmUgUENJRV9TUEFDRU1JVF9LMQoo
aW5zdGVhZCBvZiBqdXN0IFBDSUVfSzEpLiAgSSdtIHJlbmFtaW5nIHRoZSBzb3VyY2UgZmlsZSB0
bwpiZSAicGNpZS1zcGFjZW1pdC1rMS5jIiBpbnN0ZWFkIG9mICJwY2llLWsxLmMiIGFzIHdlbGwu
Cgo+Pj4gKyNkZWZpbmUgSzFfUENJRV9WRU5ET1JfSUTCoMKgwqAgMHgyMDFmCj4+PiArI2RlZmlu
ZSBLMV9QQ0lFX0RFVklDRV9JRMKgwqDCoCAweDAwMDEKPj4KPj4gSSBhc3N1bWUgdGhpcyAoMHgy
MDFmKSBoYXMgYmVlbiByZXNlcnZlZCBieSB0aGUgUENJLVNJRz/CoCBJIGRvbid0IHNlZQo+PiBp
dCBhdDoKPj4KPj4gwqDCoCBodHRwczovL3BjaXNpZy5jb20vbWVtYmVyc2hpcC9tZW1iZXItY29t
cGFuaWVzP2NvbWJpbmU9MHgyMDFmCj4gCj4gSSBoYWRuJ3QgZXZlbiB0aG91Z2h0IHRvIGNoZWNr
IHRoYXQuwqAgSSB3aWxsIGZvbGxvdyB1cC7CoCBUaGFua3MKPiBmb3IgcG9pbnRpbmcgdGhpcyBv
dXQuCgpJIGlucXVpcmVkIHllc3RlcmRheSBhYm91dCB0aGlzLCBhbmQgd2FzIHRvbGQgdGhhdCB0
aGlzCndpbGwgYmUgZmluYWxpemVkIG5leHQgd2Vlay4gIEkgdG9sZCB0aGVtIHRoYXQgdGhlIGRy
aXZlcgp3b3VsZCBub3QgYmUgYWNjZXB0ZWQgdXBzdHJlYW0gdW5sZXNzIHRoZSB2ZW5kb3IgSUQg
aGFkCmJlZW4gcHJvcGVybHkgcmVzZXJ2ZWQgYnkgUENJLVNJRy4KCj4+IFBvc3NpYmx5IHJlbmFt
ZSB0aGlzIHRvIFBDSV9WRU5ET1JfSURfSzEgKG9yIG1heWJlCj4+IFBDSV9WRU5ET1JfSURfU1BB
Q0VNSVQ/KSB0byBtYXRjaCB0aGUgdXN1YWwgZm9ybWF0IGluCj4+IGluY2x1ZGUvbGludXgvcGNp
X2lkcy5oLCBzaW5jZSBpdCBzZWVtcyBsaWtlbHkgdG8gZW5kIHVwIHRoZXJlCj4+IGV2ZW50dWFs
bHkuCj4gCj4gT0suCgpJIHdpbGwgdXNlIFBDSV9WRU5ET1JfSURfU1BBQ0VNSVQgYW5kIFBDSV9E
RVZJQ0VfSURfU1BBQ0VNSVRfSzEuCgo+Pj4gKyNkZWZpbmUgUENJRV9SQ19QRVJTVMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgQklUKDEyKcKgwqDCoCAvKiAwOiBQRVJTVCMgaGlnaDsgMTogCj4+PiBs
b3cgKi8KPj4KPj4gTWF5YmUgYXZvaWQgY29uZnVzaW9uIGJ5IGRlc2NyaWJpbmcgYXMgIjE6IGFz
c2VydCBQRVJTVCMiIG9yIHNpbWlsYXI/Cj4gCj4gT0suwqAgSSBzdHJ1Z2dsZWQgd2l0aCBob3cg
dG8gZXhwcmVzcyB0aGlzIHRvIGF2b2lkIGNvbmZ1c2lvbi4KPiBCdXQgSSBkbyB0aGluayAiYXNz
ZXJ0IFBFUlNUIyIgaXMgYmV0dGVyLgo+IAo+Pj4gK8KgwqDCoCAvKiBXYWl0IHRoZSBQQ0llLW1h
bmRhdGVkIDEwMCBtc2VjIGJlZm9yZSBkZWFzc2VydGluZyBQRVJTVCMgKi8KPj4+ICvCoMKgwqAg
bWRlbGF5KDEwMCk7Cj4+Cj4+IEkgdGhpbmsgdGhpcyBpcyBQQ0lFX1RfUFZQRVJMX01TLsKgIENv
bW1lbnQgaXMgc3VwZXJmbHVvdXMgdGhlbi4KPiAKPiBFeGNlbGxlbnQsIHRoYW5rIHlvdSwgSSds
bCB1c2UgdGhhdC4KPiAKPj4+ICtzdGF0aWMgaW50IGsxX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPj4+ICt7Cj4+PiArwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldiA9
ICZwZGV2LT5kZXY7Cj4+PiArwqDCoMKgIHN0cnVjdCBkd19wY2llX3JwICpwcDsKPj4+ICvCoMKg
wqAgc3RydWN0IGR3X3BjaWUgKnBjaTsKPj4+ICvCoMKgwqAgc3RydWN0IGsxX3BjaWUgKmsxOwo+
Pj4gK8KgwqDCoCBpbnQgcmV0Owo+Pj4gKwo+Pj4gK8KgwqDCoCBrMSA9IGRldm1fa3phbGxvYyhk
ZXYsIHNpemVvZigqazEpLCBHRlBfS0VSTkVMKTsKPj4+ICvCoMKgwqAgaWYgKCFrMSkKPj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsKPj4+ICvCoMKgwqAgZGV2X3NldF9kcnZkYXRh
KGRldiwgazEpOwo+Pgo+PiBNb3N0IG5laWdoYm9yaW5nIGRyaXZlcnMgdXNlIHBsYXRmb3JtX3Nl
dF9kcnZkYXRhKCkuwqAgUGVyc29uYWxseSwgSQo+PiB3b3VsZCBzZXQgZHJ2ZGF0YSBhZnRlciBp
bml0aWFsaXppbmcgazEgYmVjYXVzZSBJIGRvbid0IGxpa2UgdG8KPj4gYWR2ZXJ0aXNlIHBvaW50
ZXJzIHRvIHVuaW5pdGlhbGl6ZWQgdGhpbmdzLgo+IAo+IE9LLCBJIHVuZGVyc3RhbmQgdGhhdCBh
bmQgd2lsbCBkbyBpdCB0aGUgd2F5IHlvdSBzdWdnZXN0Lgo+IAo+Pj4gK3N0YXRpYyB2b2lkIGsx
X3BjaWVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+PiArewo+Pj4gK8Kg
wqDCoCBzdHJ1Y3QgazFfcGNpZSAqazEgPSBkZXZfZ2V0X2RydmRhdGEoJnBkZXYtPmRldik7Cj4+
Cj4+IE5laWdoYm9ycyB1c2UgcGxhdGZvcm1fZ2V0X2RydmRhdGEoKS4KPiAKPiBZZXMsIHRoYXQg
Z29lcyB3aXRoIHBsYXRmb3JtX3NldF9kcnZkYXRhKCkuCkFjdHVhbGx5LCBtYW55IG9mIHRoZW0g
dXNlIGRldl9nZXRfZHJ2ZGF0YSgpLiAgQW5kIEkgdGhpbmsKdGhhdCdzIHdoeSBJIHVzZWQgZGV2
X3NldF9kcnZkYXRhKCkgaW4gdGhlIGZpcnN0IHBsYWNlLCB0bwptYXRjaCBkZXZfZ2V0X2RydmRh
dGEoKS4KCkJ1dCBpbiBhbnkgY2FzZSwgSSdsbCBzd2l0Y2ggdG8gc2V0dGluZyBhbmQgZ2V0dGlu
ZyBwbGF0Zm9ybQpkcml2ZXIgZGF0YS4KCgkJCQkJLUFsZXgKCj4gCj4+PiArwqDCoMKgIHN0cnVj
dCBkd19wY2llX3JwICpwcCA9ICZrMS0+cGNpLnBwOwo+Pj4gKwo+Pj4gK8KgwqDCoCBkd19wY2ll
X2hvc3RfZGVpbml0KHBwKTsKPj4+ICt9Cj4gCj4gVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91
ciByZXZpZXcuCj4gCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC1B
bGV4CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
