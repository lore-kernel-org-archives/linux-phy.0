Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E53108B8E3
	for <linux-phy@archiver.kernel.org>; Fri, 20 Mar 2026 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SnpinnmZ5ChH7oRWL3tPf9ygfGGcf8gdxlXkAq9WGc=; b=bGDCVSXBSKj6mJ
	FXs2OsLO4dxoMkThTmqiggHTgigBh5VivuHFnwekOFD4a3jpJB/7wv2E44dJoY/ISaMT247kdXxw3
	QTP8iLrX7kAJIBXN8pDJXy/8lLf/KW34bNaf6dfRih9lZDo1ycX20j1wv7u7//7+u5+fhG1Yuqexr
	i27hF35ZoAOXZXDLZCYgSS/g3ARk1zw9TWbFKKzFUmppRrAU5uastzJ1OyoUk9PwfaigI3y6ikT+u
	jyDZMvjNrlUKpMoEmxLlA8IbZ34btqGV4c49n8VYtdVaVTRTNPKPEXprcMQfw9VJNK4pNkOv+aYNv
	b+Qw3XofV1xDpGExUQqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Wb6-0000000CWrs-0Q6F;
	Fri, 20 Mar 2026 09:56:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Wb0-0000000CWrM-0aEA
	for linux-phy@lists.infradead.org;
	Fri, 20 Mar 2026 09:56:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6A4D842B26;
	Fri, 20 Mar 2026 09:56:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 693F6C2BC9E;
	Fri, 20 Mar 2026 09:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774000605;
	bh=SzI5t4N0FZ4IAeW8BhjweNtPA/RkXoLwNTDxzHATD1w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uyHPrjR3+YS3hIv+Vg1KVooBJPWYvxp1ylXz+0wufQwK1BQVCzZIbAJICGq8c8aLU
	 ujGVye+HQSFndavhlxf5a+Wy4kZbDcYd6SKofNhSlbj7ZfR+jmncjmjcjVvntwSm+V
	 38V7PmAe03PHEmnctKKezxxClyuk3hzAbr0ueemSrb5dJIiyc5dogFS8tGvd9h/5A9
	 u99QwDSwRY3H0p2hn0dNwnoyTw7tU73QZxLgjADKjirEJ3B3Z3IvjEbx3OjHC54V3K
	 WWlfyOdfp2lyf3WxQuJgF7sArvhva/cDiq4NhlH0RR/2/J0LffmgfO0BEFIbVI9OcS
	 z0PkN5gGfKqNg==
Message-ID: <369229e0-06fd-4a22-b6d8-6dfebb5ca3b2@kernel.org>
Date: Fri, 20 Mar 2026 09:56:40 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
 <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
 <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
 <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
 <oULvLfFEPeTlWNrZF9lVwMEK-bN53nncdYFGaOgjvBQAtxaUS_SrfFhorc49TcxiPQK3CIOk46vbnkXZQ24Nfg==@protonmail.internalid>
 <5b23408d-c996-4785-8294-233d79168a1b@linaro.org>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <5b23408d-c996-4785-8294-233d79168a1b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_025647_538815_9ED90AFD 
X-CRM114-Status: GOOD (  23.35  )
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

T24gMjAvMDMvMjAyNiAwMDozNywgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+IE9uIDMvMTkv
MjYgMTc6MTgsIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+IE9uIDE5LzAzLzIwMjYgMTQ6NTYs
IFZsYWRpbWlyIFphcG9sc2tpeSB3cm90ZToKPj4+PiBUaGVyZSdzIG5vIHJlYXNvbiB0byByZW1v
dmUgdGhhdCBmcm9tIENBTVNTIC0gaXQgd291bGQgYmUgYW4gQUJJIGJyZWFrCj4+Pj4gaW4gdXNl
ci1zcGFjZSBhbnl3YXkuCj4+PiBJZiB0ZWNobmljYWxseSBDQU1TUyBDU0lQSFkgY291bGQgYmUg
ZXhjbHVkZWQgZnJvbSB0aGUgbGlzdCBvZiBDQU1TUyBtZWRpYQo+Pj4gc3ViZGV2aWNlcywgdGhl
biBmb3IgdGhlIHNha2Ugb2Ygc2ltcGxpZmljYXRpb24gaXQgc2hvdWxkIGJlIGRvbmUgZm9yIGFs
bAo+Pj4gc3VwcG9ydGVkIHBsYXRmb3JtcyBpbiBhZHZhbmNlLCBzdWNoIGEgY2hhbmdlIHdpbGwg
YmUgaW5kZXBlbmRlbnQgZnJvbSB0aGlzCj4+PiBwYXJ0aWN1bGFyIHBoeSBzZXJpZXMsIGFuZCB2
aWNlIHZlcnNhLCB0aGlzIENBTVNTIG9ubHkgZHJpdmVyIGNoYW5nZSB3aWxsCj4+PiBwcmVwYXJl
IGEgZ3JvdW5kIGZvciBtZWRpYS1sZXNzIENBTVNTIENTSVBIWSBkZXZpY2UgZHJpdmVycywgaGVu
Y2UgaXQgc2hhbGwKPj4+IHByZWNlZGUgdGhpcyBwYXJ0aWN1bGFyIENBTVNTIENTSVBIWSBzZXJp
ZXMuCj4+Pgo+Pj4gRm9yIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgd2l0aCB1c2Vyc3BhY2UgYSBu
b29wIHN0dWIgd2lsbCBiZSBnb29kIGVub3VnaCwKPj4+IGl0J3Mgbm90IGFuIGlzc3VlIGF0IGFs
bC4KPj4gVGhlIHN0YW5kYWxvbmUgUEhZIGRyaXZlciBkb2Vzbid0IHJlcXVpcmUgcmVtb3Zpbmcg
dGhlIENTSVBIWSBtZWRpYQo+PiBlbnRpdHkgZnJvbSBDQU1TUy4gVGhleSBzZXJ2ZSBkaWZmZXJl
bnQgcHVycG9zZXMgYW5kIGNvZXhpc3QgLSBpdHMKPj4gaW1wb3J0YW50IHRvIGhhdmUgYSBOT1Ag
ZnJvbSB1c2VyLXNwYWNlIHBlcnNwZWN0aXZlIGZvciBsZWdhY3kgYW5kCj4+IGluZGVlZCBmb3Ig
bmV3IGltcGxlbWVudGF0aW9ucy4KPj4KPiBUaGVyZSBzaG91bGQgYmUgbm8gdHdvIENBTVNTIENT
SVBIWSBkZXZpY2UgKG9yIHN1YmRldmljZSkgZHJpdmVycywgd2hlcmUKPiBvbmUgY2hvcCBvZiBD
QU1TUyBDU0lQSFkgZGV2aWNlIGRyaXZlciByZW1haW5zIHRvIHNpdCB1bmRlciBtZWRpYSwgYW5k
Cj4gYW5vdGhlciBvbmUgaXMgdW5kZXIgcGh5IHN1YnN5c3RlbSwgc2luY2UgaXQncyBhIGZ1cnRo
ZXIgZGVncmFkYXRpb24gZnJvbQo+IHRoZSBjdXJyZW50IGFscmVhZHkgcHJldHR5IGF3ZnVsIHN0
YXRlIG9mIHRoZSBDQU1TUyBkcml2ZXIsIGJ1dCBhdCBsZWFzdAo+IENTSVBIWSBpcyBub3Qgc2Nh
dHRlcmVkIG92ZXIgZGlmZmVyZW50IHN1YnN5c3RlbXMgdG9kYXkuCj4gCj4gSXQgbWlnaHQgYmUg
ZmluZSB0byBtb3ZlIGRldmljZSBkcml2ZXIgcGFydHMgcmVsYXRlZCB0byBDQU1TUyBDU0lQSFkK
PiBkcml2ZXIgZnJvbSBtZWRpYSBzdWJzeXN0ZW0gdG8gcGh5IHN1YnN5c3RlbSwgaG93ZXZlciBp
ZiBvbmx5IGEgcGFydGlhbAo+IHRyYW5zaXRpb24gaXMgcGxhbm5lZCwgYW5kIENTSVBIWSBkZXZp
Y2Ugc3VwcG9ydCBpcyBzcGxpdCBpbnRvIHR3byBkZXZpY2UKPiAoc3ViLSlkcml2ZXJzLCB0aGVu
IGl0IG1lcmVseSBleHBvc2VzIGEgcXVpdGUgc2V2ZXJlIGRlc2lnbiBmbGF3LgoKSXQncyBub3Qg
dHdvIGRyaXZlcnMgZm9yIHRoZSBzYW1lIGRldmljZS4gSXQncyB0d28gbGF5ZXJzOgoKLSBUaGUg
bWVkaWEgZW50aXR5IGluIENBTVNTIGlzIGEgcGlwZWxpbmUgcm91dGluZyBhYnN0cmFjdGlvbi4K
ICAgSXQgdmFsaWRhdGVzIGZvcm1hdHMgYW5kIGNvbm5lY3RzIHBhZHMuIEl0IGRvZXMgbm90IHBy
b2dyYW0KICAgQ1NJUEhZIGhhcmR3YXJlIGRpcmVjdGx5LgoKLSBUaGUgUEhZIGRyaXZlciBwcm9n
cmFtcyB0aGUgaGFyZHdhcmUg4oCUIHJlZ2lzdGVycywgY2xvY2tzLAogICByZWd1bGF0b3JzLCBw
b3dlciBkb21haW5zLgoKVGhpcyBpcyB0aGUgc2FtZSBsYXllcmluZyBhcyBya2lzcDEgKG1lZGlh
IHBpcGVsaW5lKSArCnBoeS1yb2NrY2hpcC1pbm5vLWNzaWRwaHkgKGVsZWN0cmljYWwgY29uZmln
KS4gVGhlIElTUCdzIG1lZGlhCmVudGl0aWVzIGFuZCB0aGUgc3RhbmRhbG9uZSBQSFkgY29leGlz
dCBpbiBkaWZmZXJlbnQgc3Vic3lzdGVtcwp3aXRob3V0IGNvbmZsaWN0LgoKTm8gQ1NJUEhZIGZ1
bmN0aW9uYWxpdHkgaXMgZHVwbGljYXRlZCBhY3Jvc3Mgc3Vic3lzdGVtcy4gVGhpcyBzZWdtZW50
aW5nIApvZiBjb25jZXB0cyBhbmQgZnVuY3Rpb25hbGl0eSBpc24ndCBldmVuIHVuaXF1ZS4gV2Ug
c2VlIHRoaXMgY29uc3RhbnRseSAKd2l0aCBVU0IgKHdoZXJlIHRoZSBNQUMgbGl2ZXMgaW4gZHJp
dmVycy91c2IvIGFuZCB0aGUgZWxlY3RyaWNhbHMgaW4gCmRyaXZlcnMvcGh5LykgYW5kIERpc3Bs
YXkvRFNJLgoKCj4gSXQgbG9va3MgbGlrZSBpdCdzIHN0aWxsIHVuZGVjaWRlZCwgaWYgQ0FNU1Mg
Q1NJUEhZIElQIGlzIGEgcGh5IG9yIG1lZGlhCj4gZGV2aWNlLCBpdCBjYW4gbm90IGJlIGJvdGgg
YXQgdGhlIHNhbWUgdGltZS4KCldlIGFyZSBtYWludGFpbmluZyB0aGUgZXhpc3RpbmcgdXNlci1z
cGFjZSBzZXR1cCB3aGljaCBwcmVzZW50cyBhIAptc21fY3NpcGh5WCB2NGwyLW1lZGlhIGRldmlj
ZSwgd2hpbHN0IG1vdmluZyB0aGUgUEhZIGNvbXBvbmVudCBvdXQgaW50byAKZHJpdmVycy9waHkg
d2hlcmUgaXQgYmVsb25ncyAtIGNvbXBsZXRlbHkgdHJhbnNwYXJlbnRseSB0byB1c2VyLXNwYWNl
LiAKU28gd2UgYWxyZWFkeSBoYXZlIGEgZGVwZW5kZW5jeSBpbiB1c2VyLXNwYWNlIHdoaWNoIG5l
ZWRzIHRvIGJlIG1haW50YWluZWQuCgpUaGUgY29uY3JldGUgaGFyZHdhcmUgYmVuZWZpdHMsIGFz
IEkgYWxsdWRlZCB0byBOZWlsLCBhcmU6CgotIFBlci1QSFkgdm9sdGFnZSByYWlscwotIFBlci1Q
SFkgcG93ZXIgZG9tYWlucwotIFBlci1QSFkgb3BlcmF0aW5nIHBvaW50cyAoT1BQcykKClRob3Nl
IGFyZSByZWFsLXdvcmxkIGhhcmR3YXJlIGZpeGVzIHdoaWNoICJqdXN0IHdvcmsiIGFzIGEgcmVz
dWx0IG9mIApkZWRpY2F0ZWQgZGV2aWNlIG5vZGVzIGFuZCBhIGRyaXZlciBzcGVjaWZpY2FsbHkg
d3JpdHRlbiB0byByZWxpZXZlIHRoZSAKdGVjaG5pY2FsIGRlYnQgd2UndmUgYmVlbiBhY2NydWlu
ZyB3aXRoIHRoZSBleGlzdGluZyBtb2RlbCwgZm9yIHllYXJzLgoKSGF2aW5nIGJlZW4gZWR1Y2F0
ZWQgLSBicm91Z2h0IHRvIHRoZSByZWFsaXNhdGlvbiBvbiBPUFBTLCBQb3dlci1kb21haW5zIAph
bmQgeWVzIHZvbHRhZ2UgcmFpbHMgaXQgaXMgYW1hemluZyB0byBtZSB0aGlzIHdob2xlIGxlZ2Fj
eSBzeXN0ZW0gCmhhc24ndCBleHBsb2RlZCBiZWZvcmUgbm93IGJ1dCwgaXRzIGNlcnRhaW5seSB3
YXkgcGFzdCB0aW1lIHRvIGZpeCBpdC4KCldlIHNob3VsZCBwcm9jZWVkIHdpdGggbW92aW5nIGlu
aXQgc2VxdWVuY2VzLCB2b2x0YWdlcywgUERzIGFuZCBPUFBzIHRvIApkcml2ZXJzL3BoeS4KCkkn
bSBoYXBweSB0byBoYXZlIGEgZGViYXRlIGFib3V0IHRoZSBzdGF0dXMgb2YgdGhlIFBIWSBtZWRp
YSBkZXZpY2UgCmFmdGVyLCBob3dldmVyIEkgaGF2ZSB0byBzYXkgSSdtIHNrZXB0aWNhbCBhYm91
dCByZW1vdmluZyB0aGUgbWVkaWEgCmRldmljZSAtIHNvbWV0aGluZyB3ZSBjb3VsZCBkbyB3aGV0
aGVyIHRoZSBpbml0IHNlcXVlbmNlcyBsaXZlIGluIApkcml2ZXJzL21lZGlhL3Fjb20vY2Ftc3Mg
b3IgaW4gZHJpdmVycy9waHkgQlRXIC0gSSdtIHNrZXB0aWNhbCBhYm91dCAKcmVtb3ZpbmcgdGhh
dCB2NGwyIG5vZGUgc3BlY2lmaWNhbGx5IGJlY2F1c2Ugd2UndmUgaGFkIGl0IGluIHVzZXItc3Bh
Y2UgCmZvciBhIGxvbmcgdGltZSBhbmQgSSBkbyB0aGVyZWZvcmUgdGhpbmsgdGhhdCBjb25zdGl0
dXRlcyBhbiBBQkkuCgpBcyBJJ3ZlIHNhaWQgYWxyZWFkeSB0aG91Z2ggYHJtIC1yZiAvZGV2L3Y0
bDItc3ViZGV2Ojptc21fY3NpcGh5KiIgaXMgCmJhc2ljYWxseSBhbiBlbnRpcmVseSBzZXBhcmF0
ZSBkZWJhdGUuCgotLS0KYm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
