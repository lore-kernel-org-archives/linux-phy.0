Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF7ECCA0EF7
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 18:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ba2SwcDfaOWpxh4WpDJYRs8/tUYzkrR/x+1XksXF4U=; b=2Op3sW8KQBKeof
	YvwLG/mziqweN61v6ycYSKnGSGPrApLokt+y5bJWJPjEe37WdCO3lfbqPR5E4khQY9azGt4zIkfWP
	tgngufiTlYaNADtMLGUcTv23yiiAcYVXxxNTDxmuDOvIRw7pvGE045ci5Ru0h7XZ6QHdesjZ7xVN4
	qsNAVS0PCEKl+6xV10Amkh4L32UjRF1v4t/ozVeYl15XYHo7PvO5VxBa+NiuC9GqKzrz9IO25D0tr
	4v3If3RKgpqGhbNtzozn1TViKfd0+LQh9qxsMe0ULxIE6x8uo6CP+f27kN16ojoJw5EyJ8QfgLGK0
	tgGqSzkUDlWuVaC9FPXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoQrl-0000000BF8Z-2iJP;
	Tue, 19 Aug 2025 18:15:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoNHs-0000000AkU4-2VOJ
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 14:26:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4F7DF460E6
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 14:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA13C4CEF1
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 14:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755613567;
	bh=n/xilA7irRmAj0LB/NL12l12Niea8lTQx06zLoALehk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=BBm8ZKNKlDkFdQPkA+WEx73uciE6BHOFFgg8ty2gJXd/3fAnCf3K4t1CIYT4S2OWD
	 jqI2PeEJbujfyWE/QuTtbPluHTiXg1FNa0jUvVmCVfe2BVxD4fSb9grqIQTRYiYchO
	 ab1rVfQkHdIAIk6Gmd9Dw/KlUV/V7+TeJcT9iAPqbP9gZT1ntX4PgPVxGnH9QOhlu2
	 eOaSO4RItkOmP99s7ei9/vy33vYBaWZ/5TQLOUyLud5Pe77aCPfQTtbcKmzEaPN5Iz
	 pPUgL/7yLc20F1n9TQT29eGDhMLXDRsKAbkv4e41nm6rgXWoi3jMuH3zrEb5KFT631
	 Oc1UBE60xeiSQ==
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-afca41c7d7fso1081923866b.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 07:26:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU3x51dCaa+XyIVPKFdI+ihmGLRqg8mmPjXS46Nm+jVpm375pUVcWUDDK/6ZdcE9E/VLUX5GsrzgyQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCwQBSo/77lOnMntx/NIHshLXp49uGxV+ehF2tFaLlwOIAY/Zn
	F7fVpwHq+8VE8k7BVqD+TUKHcSsXFkyLJinF2ASoEwvX+O9LwkGLZY0lp3nfJxXsCJF/51TEMCm
	2yAbZA6m6e0BYBLl5hcbnVJhWLvAzzA==
X-Google-Smtp-Source: AGHT+IFbhb8/3xhszilypE8VV8iG3CCjPu6s9e1Ni+rGTB0XK1fMseFlxRxtSaS/E+ZfV0jZAYRmMAo6DV+EOi1g4Jo=
X-Received: by 2002:a17:906:4794:b0:ad8:91e4:a931 with SMTP id
 a640c23a62f3a-afddf1588aemr240209866b.26.1755613566418; Tue, 19 Aug 2025
 07:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <20250819134722.220-1-luyulin@eswincomputing.com> <20250819135413.386-1-luyulin@eswincomputing.com>
In-Reply-To: <20250819135413.386-1-luyulin@eswincomputing.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 19 Aug 2025 09:25:55 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKFotNLZZXwiy7S6K8qXLdGRAnsa-1zvZRDQBE39Gf5kg@mail.gmail.com>
X-Gm-Features: Ac12FXy4XMOevgyZ0XGLHWuNSqRe6qDPuZvb9j13TrODo_kPF8kWFFTSIKPCPH8
Message-ID: <CAL_JsqKFotNLZZXwiy7S6K8qXLdGRAnsa-1zvZRDQBE39Gf5kg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: ata: eswin: Document for EIC7700 SoC ahci
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: dlemoal@kernel.org, cassel@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-ide@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	linux-phy@lists.infradead.org, ningyu@eswincomputing.com, 
	zhengyu@eswincomputing.com, linmin@eswincomputing.com, 
	huangyifeng@eswincomputing.com, fenglin@eswincomputing.com, 
	lianghujun@eswincomputing.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_072608_674978_300F2888 
X-CRM114-Status: GOOD (  16.59  )
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

T24gVHVlLCBBdWcgMTksIDIwMjUgYXQgODo1NOKAr0FNIFl1bGluIEx1IDxsdXl1bGluQGVzd2lu
Y29tcHV0aW5nLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBsdXl1bGluIDxsdXl1bGluQGVzd2luY29t
cHV0aW5nLmNvbT4KClBsZWFzZSBmaXggeW91ciBuYW1lLgoKPgo+IEFkZCBkb2N1bWVudCBmb3Ig
dGhlIFNBVEEgQUhDSSBjb250cm9sbGVyIG9uIHRoZSBFSUM3NzAwIFNvQyBwbGF0Zm9ybSwKPiBp
bmNsdWRpbmcgZGVzY3JpcHRpb25zIG9mIGl0cyBoYXJkd2FyZSBjb25maWd1cmF0aW9ucy4KPgo+
IFNpZ25lZC1vZmYtYnk6IGx1eXVsaW4gPGx1eXVsaW5AZXN3aW5jb21wdXRpbmcuY29tPgoKQW5k
IGhlcmUuCgo+IC0tLQo+ICAuLi4vYmluZGluZ3MvYXRhL2Vzd2luLGVpYzc3MDAtYWhjaS55YW1s
ICAgICAgfCA5MiArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA5MiBpbnNl
cnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXRhL2Vzd2luLGVpYzc3MDAtYWhjaS55YW1sCj4KPiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2F0YS9lc3dpbixlaWM3NzAwLWFoY2kueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hdGEvZXN3aW4sZWljNzcwMC1h
aGNpLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uOWVm
NThjOWMyZjI4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hdGEvZXN3aW4sZWljNzcwMC1haGNpLnlhbWwKPiBAQCAtMCwwICsxLDkyIEBA
Cj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xh
dXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvYXRhL2Vzd2luLGVpYzc3MDAtYWhjaS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBFc3dpbiBF
SUM3NzAwIFNvQyBTQVRBIENvbnRyb2xsZXIKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gWXVs
aW4gTHUgPGx1eXVsaW5AZXN3aW5jb21wdXRpbmcuY29tPgo+ICsgIC0gSHVhbiBIZSA8aGVodWFu
MUBlc3dpbmNvbXB1dGluZy5jb20+Cj4gKwo+ICtkZXNjcmlwdGlvbjoKPiArICBUaGlzIGRvY3Vt
ZW50IGRlZmluZXMgZGV2aWNlIHRyZWUgYmluZGluZ3MgZm9yIHRoZSBTeW5vcHN5cyBEV0MKPiAr
ICBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgQUhDSSBTQVRBIGNvbnRyb2xsZXIgZm91bmQgaW4gRXN3
aW4ncwo+ICsgIEVpYzc3MDAgU29DIHBsYXRmb3JtLgo+ICsKPiArc2VsZWN0Ogo+ICsgIHByb3Bl
cnRpZXM6Cj4gKyAgICBjb21wYXRpYmxlOgo+ICsgICAgICBjb25zdDogZXN3aW4sZWljNzcwMC1h
aGNpCj4gKyAgcmVxdWlyZWQ6Cj4gKyAgICAtIGNvbXBhdGlibGUKPiArCj4gK2FsbE9mOgo+ICsg
IC0gJHJlZjogc25wcyxkd2MtYWhjaS1jb21tb24ueWFtbCMKPiArCj4gK3Byb3BlcnRpZXM6Cj4g
KyAgY29tcGF0aWJsZToKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBlc3dpbixlaWM3
NzAwLWFoY2kKPiArICAgICAgLSBjb25zdDogc25wcyxkd2MtYWhjaQo+ICsKPiArICByZWc6Cj4g
KyAgICBtYXhJdGVtczogMQoKRHJvcC4gc25wcyxkd2MtYWhjaS1jb21tb24ueWFtbCBhbHJlYWR5
IGRlZmluZXMgdGhpcy4KCj4gKwo+ICsgIGludGVycnVwdHM6Cj4gKyAgICBtYXhJdGVtczogMQoK
RHJvcC4gc25wcyxkd2MtYWhjaS1jb21tb24ueWFtbCBhbHJlYWR5IGRlZmluZXMgdGhpcy4KCj4g
Kwo+ICsgIHBvcnRzLWltcGxlbWVudGVkOgo+ICsgICAgY29uc3Q6IDEKClJlYWxseSwgeW91ciBm
aXJtd2FyZSBzaG91bGQgaW5pdGlhbGl6ZSB0aGUgRFdDIHNwZWNpZmljIHJlZ2lzdGVyIHRoYXQK
c2V0cyB0aGlzIGFuZCBpcyBkaXNjb3ZlcmFibGUgdmlhIGEgc3RhbmRhcmQgQUhDSSByZWdpc3Rl
ci4KCj4gKwo+ICsgIGNsb2NrczoKPiArICAgIG1pbkl0ZW1zOiAyCj4gKyAgICBtYXhJdGVtczog
Mgo+ICsKPiArICBjbG9jay1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBw
Y2xrCj4gKyAgICAgIC0gY29uc3Q6IGFjbGsKPiArCj4gKyAgcmVzZXRzOgo+ICsgICAgbWF4SXRl
bXM6IDEKPiArCj4gKyAgcmVzZXQtbmFtZXM6Cj4gKyAgICBjb25zdDogYXJzdAo+ICsKPiArICBw
aHlzOgo+ICsgICAgbWF4SXRlbXM6IDEKCkRyb3AuIGFoY2ktY29tbW9uLnlhbWwgYWxyZWFkeSBk
ZWZpbmVzIHRoaXMuCgo+ICsKPiArICBwaHktbmFtZXM6Cj4gKyAgICBjb25zdDogc2F0YS1waHkK
CkRyb3AuIGFoY2ktY29tbW9uLnlhbWwgYWxyZWFkeSBkZWZpbmVzIHRoaXMuCgo+ICsKPiArcmVx
dWlyZWQ6Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAtIGludGVycnVwdHMKPiAr
ICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIHJlc2V0cwo+ICsgIC0gcmVzZXQt
bmFtZXMKPiArICAtIHBoeXMKPiArICAtIHBoeS1uYW1lcwo+ICsgIC0gcG9ydHMtaW1wbGVtZW50
ZWQKPiArCj4gK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1wbGVzOgo+
ICsgIC0gfAo+ICsgICAgc2F0YUA1MDQyMDAwMCB7Cj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJl
c3dpbixlaWM3NzAwLWFoY2kiLCAic25wcyxkd2MtYWhjaSI7Cj4gKyAgICAgICAgcmVnID0gPDB4
NTA0MjAwMDAgMHgxMDAwMD47Cj4gKyAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9IDwmcGxpYz47
Cj4gKyAgICAgICAgaW50ZXJydXB0cyA9IDw1OD47Cj4gKyAgICAgICAgcG9ydHMtaW1wbGVtZW50
ZWQgPSA8MHgxPjsKPiArICAgICAgICBjbG9ja3MgPSA8JmdhdGVfY2xrX2hzcF9jZmdjbGs+LCA8
JmdhdGVfY2xrX2hzcF9hY2xrPjsKPiArICAgICAgICBjbG9jay1uYW1lcyA9ICJwY2xrIiwgImFj
bGsiOwo+ICsgICAgICAgIHJlc2V0cyA9IDwmcmVzZXQgOTY+Owo+ICsgICAgICAgIHJlc2V0LW5h
bWVzID0gImFyc3QiOwo+ICsgICAgICAgIHBoeXMgPSA8JnNhdGFfcGh5PjsKPiArICAgICAgICBw
aHktbmFtZXMgPSAic2F0YS1waHkiOwo+ICsgICAgfTsKPiAtLQo+IDIuMjUuMQo+Cj4KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
