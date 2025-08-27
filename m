Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AD45CA0EFF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 15:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDGdT2UQEDxu125vDTO/FEcxpOmvDY8fytHWI21ePXk=; b=01nJH048IxDYuv
	uYUuKxpvxqc05o7D89wMEhmSYcEAC1ddaGdTKBGsDqPRxbkWP/RV2Gu4BcWNi+q7ZoCceCVP45EgT
	/i/8JyNJdtIu4LeiFosoy80R+IeH8w7Au5Yr1RcGlv66deOPFysKNSP9X6pJ/7QWVuxjR63WijqPa
	EV5mBZKkFD/I2OhMM0ciOAAGK0H0lYNbnuK+/YiL1sVPL05aYBwjxZiKxJGubpERnCBaUitxNK5Tx
	p0ZgNiY4hLHPPtpfd61AuGatFRdPU0mgLIu/pneiq+MUZgFUKe+64Qs9pALDSojxs02vNqXnstrFr
	AciUWRnngX7iErfhRJwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIWe-0000000G66d-3aKL;
	Wed, 27 Aug 2025 15:57:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urHZ4-0000000FpNn-0LAZ
	for linux-phy@lists.infradead.org;
	Wed, 27 Aug 2025 14:55:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BC2DC43A76;
	Wed, 27 Aug 2025 14:55:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE257C4CEF0;
	Wed, 27 Aug 2025 14:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756306553;
	bh=xbPlbWZ1yiRh8RKfwrSHlxyRVFlZFQiAJnB8nMi7yVc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p5PjSZHf8jLqQsSCutsrupvBsZFRXAamiT2YoaUF/U2uiCLOEWQTVP0xXIbza8Ug/
	 Dfw6DkF5xN3/v0wdE+8QrZfEGDQ4VzniUJHDqiBAR+VAHQTfS4kxe6GZCZSiCd2zyw
	 Dk9vCMkMCMrYxe5ENHnZoMivmCRZ2N63AgW5vWu6VUNtURiBffOhNsAUHSyA5izpBE
	 8Pqm7zQAAzX5E1jQkCV9V7+iflbBa7LmbZ1by0QJT7lbkLPPErQVnnuCILJkE3KXMj
	 M2d9PaNK3xenS1S4WOWOy2YQj52DBXjDJChFgRpuVQks/E4RcpSLalksfgJywvMWj1
	 R1UcO1YK3tn2w==
Date: Wed, 27 Aug 2025 20:25:44 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v3 0/3] arm64: dts: qcom: Add PCIe Support for sm8750
Message-ID: <55lm2trwh3l62om2ozjmywfy6cj4l7iiy5sx66rqawjqcnn6ix@ycqbusd7pi5v>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_075554_138213_DDD3DDC8 
X-CRM114-Status: GOOD (  14.50  )
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

T24gVHVlLCBBdWcgMjYsIDIwMjUgYXQgMDQ6MzI6NTJQTSBHTVQsIEtyaXNobmEgQ2hhaXRhbnlh
IENodW5kcnUgd3JvdGU6Cj4gRGVzY3JpYmUgUENJZSBjb250cm9sbGVyIGFuZCBQSFkuIEFsc28g
YWRkIHJlcXVpcmVkIHN5c3RlbSByZXNvdXJjZXMgbGlrZQo+IHJlZ3VsYXRvcnMsIGNsb2Nrcywg
aW50ZXJydXB0cyBhbmQgcmVnaXN0ZXJzIGNvbmZpZ3VyYXRpb24gZm9yIFBDSWUuCj4gCj4gVGhl
IHFjb21fcGNpZV9wYXJzZV9wb3J0cygpIGZ1bmN0aW9uIGN1cnJlbnRseSBpdGVyYXRlcyBvdmVy
IGFsbCBhdmFpbGFibGUKPiBjaGlsZCBub2RlcyBvZiB0aGUgUENJZSBjb250cm9sbGVyJ3MgZGV2
aWNlIHRyZWUgbm9kZS4gVGhpcyBpbmNsdWRlcwo+IHVucmVsYXRlZCBub2RlcyBzdWNoIGFzIE9Q
UCAoT3BlcmF0aW5nIFBlcmZvcm1hbmNlIFBvaW50cykgbm9kZXMsIHdoaWNoIGRvCj4gbm90IGNv
bnRhaW4gdGhlIGV4cGVjdGVkICdyZXNldCcgYW5kICdwaHknIHByb3BlcnRpZXMuIEFzIGEgcmVz
dWx0LCBwYXJzaW5nCj4gZmFpbHMgYW5kIHRoZSBkcml2ZXIgZmFsbHMgYmFjayB0byB0aGUgbGVn
YWN5IG1ldGhvZCBvZiBwYXJzaW5nIHRoZQo+IGNvbnRyb2xsZXIgbm9kZSBkaXJlY3RseS4gSG93
ZXZlciwgdGhpcyBmYWxsYmFjayBhbHNvIGZhaWxzIHdoZW4gcHJvcGVydGllcwo+IGFyZSBzaGlm
dGVkIHRvIHRoZSByb290IHBvcnQsIGxlYWRpbmcgdG8gcHJvYmUgZmFpbHVyZS4KPiAKPiBGaXgg
dGhpcyBieSByZXN0cmljdGluZyB0aGUgcGFyc2luZyBsb2dpYyB0byBvbmx5IGNvbnNpZGVyIGNo
aWxkIG5vZGVzIHdpdGgKPiBkZXZpY2VfdHlwZSA9ICJwY2kiLCB3aGljaCBpcyB0aGUgZXhwZWN0
ZWQgYW5kIHJlcXVpcmVkIHByb3BlcnR5IGZvciBQQ0llCj4gcG9ydHMgYXMgZGVmaW5lZCBpbiBw
Y2ktYnVzLWNvbW1vbi55YW1sLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlh
IENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgo+IC0tLQo+IENoYW5n
ZXMgaW4gdjM6Cj4gLSBVc2UgZGV2aWNlX3R5cGUgdG8gZmluZCBwY2kgbm9kZSBvciBub3QgaW5z
dGVhZCBvZiBub2RlIG5hbWUuCj4gLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9yLzIwMjUwODI2LXBha2FsYS12Mi0wLTc0ZjFmNjA2NzZjNkBvc3MucXVhbGNvbW0uY29tCj4g
Cj4gQ2hhbmdlcyBpbiB2MjoKPiAtIEZvbGxvdyB0aGUgeDFlODAxMDAuZHRzaSBwY2llIG5vZGUg
ZGVzY3JpcHRpb24gKEtvbnJhZCkuCj4gLSBkZWZpbmUgcGh5ICYgcGVyc3QsIHdha2UgaW4gcG9y
dCBub2RlIGFzIHBlciBsYXRlc3QgYmluZGluZ3MuCj4gLSBBZGQgY2hlY2sgaW4gdGhlIGRyaXZl
ciB0byBwYXJzZSBvbmx5IHBjaWUgY2hpbGQgbm9kZXMuCj4gLSBBZGRlZCBhY2tlZCBieSB0YWco
Um9iKS4KPiAtIFJlbW92ZWQgZHRiaW5kaW5nIGFuZCBwaHkgZHJpdmVyIHBhdGNoZXMgYXMgdGhl
eSBnb3QgYXBwbGllZC4KPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Iv
MjAyNTA4MDktcGFrYWxhLXYxLTAtYWJmMWM0MTZkYmFhQG9zcy5xdWFsY29tbS5jb20KPiAKPiAt
LS0KPiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1ICgzKToKPiAgICAgICBkdC1iaW5kaW5nczog
UENJOiBxY29tLHBjaWUtc204NTUwOiBBZGQgU004NzUwIGNvbXBhdGlibGUKPiAgICAgICBhcm02
NDogZHRzOiBxY29tOiBzbTg3NTA6IEFkZCBQQ0llIFBIWSBhbmQgY29udHJvbGxlciBub2RlCj4g
ICAgICAgUENJOiBxY29tOiBSZXN0cmljdCBwb3J0IHBhcnNpbmcgb25seSB0byBwY2kgY2hpbGQg
bm9kZXMKCkFwcGxpZWQgcGF0Y2hlcyAxIGFuZCAzLCB0aGFua3MhCgotIE1hbmkKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
