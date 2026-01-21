Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C603DC44536
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 14:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIpeyWxw6qa1h/G7KC5p/yyeD5tVPiGXZvTWn64VSO0=; b=d0WETZCPFUTSJ5
	kGIYTdT1YTrftQ41/pKIdPbwJGfDYtKp5F5SOsP45d3NYwrl4ZhFmXQ+3jSXPjcVIwT+fEXUCd/v1
	j8lMsc+B3yZlvpf3QGZam8J9Quq2ZpPVPvdDH26HtwZ+vYR4anE6pLJKLsfojHiHB2qs7GsyU2CIu
	NEjvobrZEXfb6ogynWMaEcGtnqFC7w1PQvo23k6gX80ZjnmMyGok1Hc0AShM3i7b4vkXw3juASBuN
	DNuNIIiF+GpIA2fjM/m7lhky97/ti5GEZzrhed6MffT9NaY0bekPG5fINQP2FBY9WFZDuOPIZotOc
	0XHSLuk87t1dANFvHRQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZ8I-00000005alB-1Fby;
	Wed, 21 Jan 2026 14:24:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZ8H-00000005akD-0sfN
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 14:24:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4BBFB600AD;
	Wed, 21 Jan 2026 14:24:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14E8DC4CEF1;
	Wed, 21 Jan 2026 14:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769005468;
	bh=nUQZc9vColUSpAfn6Am+XlnLl72fg3fA/kN0NFJO0l8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k+3iI/yUYeTaKS2NBoSKHfnnhVxzkrqYEqQ9EItaKH5XAddQaca3pSGJKBOURDe0V
	 LcVKbTWnpEO0O7oKgzm2DTa4LUNWHSTyAlgrvkrZpWCjISlJNcuniX6lmcgbEVFJiU
	 PGw55aR2GUjmFVeKr1tdugO4Sc4Wos9MZ0/v49xEwwwWN+7ZuLFOaj3VYNlgZ1NFNN
	 nV9T4abspK19bG7XyRQH7Uau3R8iaeuXhiOksgjvtP4GL8d0iMMgoSFd69hQ5JMvhX
	 +0ouGyOkNJu4/Ai7sPLKzOqy1OyLZrPs071MiD0b12kOWEEbfoMFUmQn210I4xcdFJ
	 0auwaXcOLeORw==
Date: Wed, 21 Jan 2026 19:54:10 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: [PATCH v4 0/3] Add PCIe3 and PCIe5 support for HAMOA-IOT-EVK
 board
Message-ID: <gz3a5me6w7kq6f7kwftso3r26wev563lufqmmldyevyxc4zkrq@ditr3kb4skao>
References: <20260109104504.3147745-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109104504.3147745-1-ziyue.zhang@oss.qualcomm.com>
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

T24gRnJpLCBKYW4gMDksIDIwMjYgYXQgMDY6NDU6MDFQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gRnJvbTogWml5dWUgWmhhbmcgPHF1aWNfeml5dXpoYW5AcXVpY2luYy5jb20+Cj4gCj4g
VGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciBQQ0llMyBhbmQgUENJZTUgb24gdGhl
IEhBTU9BLUlPVC1FVksKPiBib2FyZC4KPiAKPiBQQ0llMyBpcyBhIEdlbjQgeDggc2xvdCBpbnRl
bmRlZCBmb3Igc2F0YSBjb250cm9sbGVyLgo+IFBDSWU1IGlzIGEgR2VuMyB4MiBzbG90IGRlc2ln
bmVkIGZvciBleHRlcm5hbCBtb2RlbSBjb25uZWN0aXZpdHkuCj4gCj4gVG8gZW5hYmxlIHRoZXNl
IGludGVyZmFjZXMsIHRoZSBzZXJpZXMgaW50cm9kdWNlcyB0aGUgbmVjZXNzYXJ5IGRldmljZQo+
IHRyZWUgbm9kZXMgYW5kIGFzc29jaWF0ZWQgcmVndWxhdG9yIGRlZmluaXRpb25zIHRvIGVuc3Vy
ZSBwcm9wZXIgcG93ZXIKPiBzZXF1ZW5jaW5nIGFuZCBmdW5jdGlvbmFsaXR5Lgo+IAoKUmV2aWV3
ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgoKLSBNYW5pCgo+
IC0tLQo+IENoYW5nZXMgaW4gdjQ6Cj4gLSBNb3ZlIFBDSWUgcmVzZXQvd2FrZSBHUElPcyB0byBw
Y2llX3BvcnQgbm9kZSAoTWFuaSkKPiAtIE1vdmUgUENJZSBwaHkgdG8gcGNpZV9wb3J0IG5vZGUg
Zm9yIGFsbCBIYW1vYSBwbGF0Zm9ybSAoTWFuaSkKPiAtIFJlbW92ZSBvdXRwdXQtaGlnaCBwcm9w
ZXJ0eSAoS29ucmFkKQo+IC0gTW9kaWZpZWQgdGhlIERUIGFuZCBwYXRjaCBmb3JtYXQsIGFuZCBh
ZGp1c3RlZCB0aGUgY29tbWl0IG1lc3NhZ2UgKEtvbnJhZCkKPiAtIExpbmsgdG8gdjM6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MTExMjA5MDMxNi45MzYxODctMS16aXl1ZS56aGFu
Z0Bvc3MucXVhbGNvbW0uY29tLwo+IAo+IENoYW5nZXMgaW4gdjM6Cj4gLSBVcGRhdGUgY29tbWl0
IG1lc3NhZ2UgYW5kIERUIGZvcm1hdCAoQmpyb24pCj4gLSBNZXJnZSBQQ0llMyBhbmQgUENJZTUg
Y2hhbmdlcyBpbnRvIG9uZSBwYXRjaAo+IC0gTGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjUxMDMwMDg0ODA0LjE2ODI3NDQtMS16aXl1ZS56aGFuZ0Bvc3MucXVhbGNv
bW0uY29tLwo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSBNb3ZlIFBNSUMgZ3BpbyBwaW5zIHRvIHBh
dGNoIHNldCA0IChLcmlzaG5hKQo+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjUwOTIyMDc1NTA5LjMyODg0MTktMS16aXl1ZS56aGFuZ0Bvc3MucXVhbGNvbW0u
Y29tLwo+IAo+IFppeXVlIFpoYW5nICgzKToKPiAgIGFybTY0OiBkdHM6IHFjb206IGhhbW9hOiBN
b3ZlIFBIWSwgUEVSU1QsIGFuZCBXYWtlIEdQSU9zIHRvIFBDSWUgcG9ydAo+ICAgICBub2RlcyBh
bmQgYWRkIHBvcnQgTm9kZXMgZm9yIGFsbCBQQ0llIHBvcnRzCj4gICBhcm02NDogZHRzOiBxY29t
OiBBZGQgUENJZTMgYW5kIFBDSWU1IHN1cHBvcnQgZm9yIEhBTU9BLUlPVC1TT00KPiAgICAgcGxh
dGZvcm0KPiAgIGFybTY0OiBkdHM6IHFjb206IEFkZCBQQ0llMyBhbmQgUENJZTUgcmVndWxhdG9y
cyBmb3IgSEFNQU8tSU9ULUVWSwo+ICAgICBib2FyZAo+IAo+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vaGFtb2EtaW90LWV2ay5kdHMgICAgfCA5NyArKysrKysrKysrKysrKysrKysrCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYW1vYS1pb3Qtc29tLmR0c2kgICB8IDgwICsrKysrKysr
KysrKystLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaGFtb2EuZHRzaSAgICAgICAgICAg
fCA0MiArKysrKy0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDFlMDAxZGUtZGV2a2l0
LmR0cyAgfCAyNCArKystLQo+ICAuLi4vcWNvbS94MWU3ODEwMC1sZW5vdm8tdGhpbmtwYWQtdDE0
cy5kdHNpICAgfCAyNCArKystLQo+ICAuLi4vZHRzL3Fjb20veDFlODAxMDAtYXN1cy12aXZvYm9v
ay1zMTUuZHRzICAgfCAxNCArLS0KPiAgLi4uL2R0cy9xY29tL3gxZTgwMTAwLWFzdXMtemVuYm9v
ay1hMTQuZHRzICAgIHwgIDMgKwo+ICAuLi4vZHRzL3Fjb20veDFlODAxMDAtZGVsbC14cHMxMy05
MzQ1LmR0cyAgICAgfCAxNCArLS0KPiAgLi4uL2R0cy9xY29tL3gxZTgwMTAwLWxlbm92by15b2dh
LXNsaW03eC5kdHMgIHwgIDggKy0KPiAgLi4uL2R0cy9xY29tL3gxZTgwMTAwLW1pY3Jvc29mdC1y
b211bHVzLmR0c2kgIHwgMTkgKystLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDFlODAx
MDAtcWNwLmR0cyAgICAgfCAyMSArKy0tCj4gIDExIGZpbGVzIGNoYW5nZWQsIDI3OSBpbnNlcnRp
b25zKCspLCA2NyBkZWxldGlvbnMoLSkKPiAKPiAtLSAKPiAyLjM0LjEKPiAKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
