Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D351CF8878
	for <linux-phy@archiver.kernel.org>; Sat,  5 Oct 2024 10:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDCCmpPnaHHEruhGCGrWOUlifCNCRq1hNcrGCqK/0rY=; b=YmQdF3quaIdH1X
	VLJHx+YV2RH2/87f5H93FFavQoUlXT4q4RQ5pN2DHcTvcwAzVsGIRaS6sRhxuWYCvFXXzR6Pi0XDL
	sBU/zP11rGRR+J1mXjZfpJk8FmpfnIJrUzAnPKkpOik0sPiM4j6qpz3z6XcXsFNFDz+R/NQZvbwyU
	xU83Yw5Kvh0ysxvhIgnn5iG2CGsX9xZqcPf3by+By+7tuipehdIY+pplaJ6ZLROvXghg6ha6I5MuE
	kNPSCzj39fD54a61BLS3kyvZSPOA7HBehIDquYTMvOyp5OunIGKRv+MHnrnWceU6o+bBSlnCDcGhz
	SyuGDogpV3gMlNYU46wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sx1mi-0000000FB18-06dr;
	Sat, 05 Oct 2024 10:13:12 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sx1md-0000000FB0F-2hbM
	for linux-phy@lists.infradead.org;
	Sat, 05 Oct 2024 10:13:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728123162; x=1728727962;
	i=markus.stockhausen@gmx.de;
	bh=LWV+AyVAEEN+5Ds2+e/ZBGYV6Gj632R5oW1FgKI5oTs=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Cc:Subject:
	 Content-Type:Date:In-Reply-To:References:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=TQjNJjxHQBeiyio/n66mZX6O15690AWB1TcDxFrQS2eOkBP9qLbxK4rSzbNnsCt2
	 J/OaALHeruuCZWaienUidaeEeYb2Wzc42pWI/08UIXFa7gqk57cp5fAEqJ3U+2aX0
	 Sv35Jrt2NCJkhrQPhaAIy4eqUVCQtUuGBvXf6aZ1peXgiUGWwvNBA3HF6GbC8eARk
	 NBVQvzl5SwMG+ECmuYzHxLRZa/oEEeRQv50euh5freeKCR2iybHlqRzQY9IH1iHG0
	 Tf8pHgDeVZ4lg3WqCH5XSJOVrPE0UDAS9RFtrdmvmpO76beL0CPXwN1DntNjKy7Hh
	 CQ3IR6ql0dxsgorNAg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [87.79.75.227] ([87.79.75.227]) by web-mail.gmx.net
 (3c-app-gmx-bs38.server.lan [172.19.170.90]) (via HTTP); Sat, 5 Oct 2024
 12:12:42 +0200
MIME-Version: 1.0
Message-ID: <trinity-8cffe44a-8a49-4447-916b-91c2a3b8272e-1728123162590@3c-app-gmx-bs38>
From: Markus Stockhausen <Markus.Stockhausen@gmx.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz
Subject: Aw: Re: [PATCH 3/4] phy: Realtek Otto SerDes: include driver
Date: Sat, 5 Oct 2024 12:12:42 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <3765cbe1-1f3e-4dfa-8d5c-5956d7d3aa43@kernel.org>
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
 <20241004195712.1891488-4-markus.stockhausen@gmx.de>
 <3765cbe1-1f3e-4dfa-8d5c-5956d7d3aa43@kernel.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:MBy9Y8k87Fk7EXLObgp1QuEdoQ79e9FfBdzFI5MLBVaQW08WV5mdGZNV/pM+mdb2eTauL
 V4Je8/twVgN0S2WVDmIAy3u/kFpS49wLsnWdbBkm7tKrVdpESlnDtb8FWEbgdPagbWn4FOG8usPQ
 b5+Pu7qRDuLLfpztc2X4HGXgQhM/8S188mcP9I4bZYSIN9hgaawZapr7u810UA6Q1iB1xp0BFUU+
 6s1GzSTHHZdPHf5riN+kW1+1UDrPPUmQU+7xu2IpzGnc13JN1Cl8sXU1VxKcyTsW1ibbZFbnlmPL
 KY=
UI-OutboundReport: notjunk:1;M01:P0:PL5cM4JTtto=;uzWP6Bw9RGOmiLdYygljf726ha7
 6/MWuK/gRLXL9aOKW7WP3tYWw6Q8IpZEX3KNjRxu1P98WAEc60syLfHVU4h+j572M+oP6LmhX
 s3V6ZL5PZP5qrjqgA9YowRJZMNdni7VIOM2dbSoQLTZKENf+orWLqlMbXCeuem/zYC/AFEFe+
 UL5obX5zke0j94vRs81Fj9soHtJOlYpcNdC3Bt/K+yix1hBjucZ5/skC/rrzlZNO3Dj/+QB/B
 4L5JezKO92H0BGvZEAwDorYl07/4egbQu1RGx29TL6O+2H1MnnsLTJADWwEoLSeqriPBYGaM7
 s2/M5scmdPr6bcVrCzDCNHxI/wAaNUMY8t2piBJEIoklimMLfCGoWJSUM10Uokze2EC1rcGen
 FEteQcXwTcQ7Y/ld7YjDUwt9DAWi3kUuGch9qgTt6W652RiqFMKTONbrgV3CnWC9nf1KOQaN7
 DEa0Uc7KJduUNLPn8yz5JV8St5OyOeNIZMDYSINtm62wgEteSLbRjWS8wW0rkgaiV26VjWWt0
 sPqUfuchD6Z7awxcJTDILzg+tkAQmaTVcbcsc570i//ruyDEGVknqwND0X1XM4mAZo8guUkzd
 8+I4vR3C+aMMgchQtxmYW6xgknaTkCPZFc6hMbv5lQTYa2h9ISy0vWgong1O5CMBD2TE6ZfOI
 SMhIkHxDK6L1/2LYKM9FrEpr6ACAgm5r53cjlQR3gw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241005_031308_296225_D778BB29 
X-CRM114-Status: GOOD (  15.51  )
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

PiBHZXNlbmRldDrCoFNhbXN0YWcsIDA1LiBPa3RvYmVyIDIwMjQgdW0gMTE6MTIgVWhyCj4gVm9u
OsKgIktyenlzenRvZiBLb3psb3dza2kiIDxrcnprQGtlcm5lbC5vcmc+Cj4gQW46wqAiTWFya3Vz
IFN0b2NraGF1c2VuIiA8bWFya3VzLnN0b2NraGF1c2VuQGdteC5kZT4sIGxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnLCBjaHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubnoKPiBCZXRy
ZWZmOsKgUmU6IFtQQVRDSCAzLzRdIHBoeTogUmVhbHRlayBPdHRvIFNlckRlczogaW5jbHVkZSBk
cml2ZXIKPiBPbiAwNC8xMC8yMDI0IDIxOjU2LCBNYXJrdXMgU3RvY2toYXVzZW4gd3JvdGU6Cj4g
PiBNYWtlIHRoZSBkcml2ZXIgYXZhaWxhYmxlIGluIHRoZSBidWlsZCBzeXN0ZW0uCj4gPiAtLS0K
PiA+IGRyaXZlcnMvcGh5L3JlYWx0ZWsvS2NvbmZpZyB8IDcgKysrKysrKwo+ID4gZHJpdmVycy9w
aHkvcmVhbHRlay9NYWtlZmlsZSB8IDEgKwo+ID4gMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVhbHRlay9LY29uZmlnIGIv
ZHJpdmVycy9waHkvcmVhbHRlay9LY29uZmlnCj4gPiBpbmRleCA3NWFjN2U3YzMxYWUuLjJjNzEx
MDE2OTUyZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3JlYWx0ZWsvS2NvbmZpZwo+ID4g
KysrIGIvZHJpdmVycy9waHkvcmVhbHRlay9LY29uZmlnCj4gPiBAQCAtMzAsMyArMzAsMTAgQEAg
Y29uZmlnIFBIWV9SVEtfUlREX1VTQjNQSFkKPiA+IG9mIHRoZSBwYXJhbWV0ZXJzLgo+ID4KPiA+
IGVuZGlmICMgQVJDSF9SRUFMVEVLIHx8IENPTVBJTEVfVEVTVAo+ID4gKwo+ID4gK2NvbmZpZyBQ
SFlfUkVBTFRFS19PVFRPX1NFUkRFUwo+ID4gKyB0cmlzdGF0ZSAiU2VyRGVzIGRyaXZlciBmb3Ig
dGhlIFJlYWx0ZWsgT3R0byBwbGF0Zm9ybSIKPiAKPiBXaGF0IGlzIG90dG8gcGxhdGZvcm0/Cj4g
Cj4gV2h5IHRoaXMgaXMgb3V0c2lkZSBvZiBhYm92ZSBBUkNIX1JFQUxURUs/CgpUaGUgT3R0byBw
bGF0Zm9ybSBpcyBhIE1JUFMgbmV0d29yayBTb0MuIEFSQ0hfUkVBTFRFSyBpcyBBUk12OC4gU2Vl
Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRz
L2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItcnRsLW90dG8uYz9oPXY2
LjEyLXJjMQpmb3IgYW5vdGhlciBkcml2ZXIgSSB3cm90ZSBzb21lIHRpbWUgYWdvIHRoYXQgZ290
IHVwc3RyZWFtZWQgbGF0ZWx5IGZyb20gQ2hyaXMgUGFja2hhbS4KCj4gPiArIGRlcGVuZHMgb24g
T0YKPiA+ICsgc2VsZWN0IEdFTkVSSUNfUEhZCj4gPiArIGhlbHAKPiA+ICsgRW5hYmxlIHRoaXMg
Zm9yIFNlckRlcyBzdXBwb3J0IGluIFJUTDgzeHggYW5kIFJUTDkzeHggc3dpdGNoZXMuCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVhbHRlay9NYWtlZmlsZSBiL2RyaXZlcnMvcGh5L3Jl
YWx0ZWsvTWFrZWZpbGUKPiA+IGluZGV4IGVkN2I0N2ZmOGEyNi4uNTdlMTQ5NjFkODUxIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvcmVhbHRlay9NYWtlZmlsZQo+ID4gKysrIGIvZHJpdmVy
cy9waHkvcmVhbHRlay9NYWtlZmlsZQo+ID4gQEAgLTEsMyArMSw0IEBACj4gPiAjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiBvYmotJChDT05GSUdfUEhZX1JUS19SVERfVVNC
MlBIWSkgKz0gcGh5LXJ0ay11c2IyLm8KPiA+IG9iai0kKENPTkZJR19QSFlfUlRLX1JURF9VU0Iz
UEhZKSArPSBwaHktcnRrLXVzYjMubwo+ID4gK29iai0kKENPTkZJR19QSFlfUkVBTFRFS19PVFRP
X1NFUkRFUykgKz0gcGh5LXJ0bC1vdHRvLXNlcmRlcy5vCj4gCj4gV2h5IGFyZSB5b3UgaW50cm9k
dWNpbmcgb3duIG5hbWluZyBzdHlsZT8gRXZlcnl0aGluZyBpcyBSVEssIG5vPwoKSSBqdXN0IGNv
cGllZCB0aGUgdGltZXIgbmFtaW5nIGNvbnZlbnRpb24uCgpCZXN0IHJlZ2FyZC4KCk1hcmt1cwoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
