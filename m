Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 735D1CA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 09:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsLPxDE6WlHGMeK4sZvWXFcusyL6ZjDZL2fedvjeW1o=; b=XAcAy7tH91RJRf
	cmQbxf0+pm1ZnQZ7DRnyT+4c56KwMqqZ+i/eTFb0S31eMPWhJ4h513ymGCFWKHbZqF3O8OuQuNRXf
	tR54/wqfGLS7I4tn+e14aWFekyjCTxSXsidOIK8RXZMrRLK248d5YL7rMZ91mzR4VKCrpHMpbDA8O
	ubUqlLJ8OA/g11LmltawNvQF/w+6Wp8KO+NSQ9K8ZrIy2ZH7I6g28Pw0VjF2XiaFW2tctZ8pY1QAq
	2htPv/85HcXXhMzEFtxgTUk6gpqs8qGhA1g1ydxtSeNs0he0lwnIyVesQIoDxn9Gky9E7959MfUBT
	dc53B2n8Uz5VB8bTlq5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqq70-0000000BRmU-0vRE;
	Tue, 26 Aug 2025 09:37:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqpyy-0000000BOSa-2MmO
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 09:28:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AE66A5C5C5D;
	Tue, 26 Aug 2025 09:28:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F58BC4CEF1;
	Tue, 26 Aug 2025 09:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756200527;
	bh=FRhK9KHMFCQsZHQ2MZAeoYpx+OUA1J13ZSCRsY94yLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CqDrtAyOHb75rEdv5GCVbEcMswoAkY9VQEWETHD+EjNqsmh5AgdSon4mMMJmYd3iM
	 trpMaxc9MCelOlEoK9gjHdcpC+QTbfuHpfbko1ZgVxoJ237neUqcQpxQWikost49Hw
	 +ar6K+JnCPe4YVF5BjTnstmEa1ZDB8RodczgXbfXlW1IzeFXLiMg2/uzsFQLykHvtc
	 RATgoDC2dElCARBEYOdX68lzyFx104NYt6PF5VQcolgpM+1CQ67VHbywL3frgAp6a5
	 jeRsDn4hKL4P9CInyWELCNYimtvPBLHgJig4tX76VrUH03lH4gMGZtGo0pgmBXSC9m
	 n7+Afr5+W8rpA==
Date: Tue, 26 Aug 2025 14:58:31 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v2 3/3] PCI: qcom: Restrict port parsing only to pci
 child nodes
Message-ID: <3ah45g7o3vaswanur7id3ypii3773scg3x46wrkxet3jywnyhi@l2za3z3su624>
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
 <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
 <4583bf66-737d-4029-8f14-ce6d6a75def6@kernel.org>
 <0c732ac6-2d1a-4341-94d4-dc6734bfb959@kernel.org>
 <e2d23d22-de22-47ee-b715-e7b6c36976b1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2d23d22-de22-47ee-b715-e7b6c36976b1@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_022848_692210_13A69C24 
X-CRM114-Status: GOOD (  26.65  )
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

T24gVHVlLCBBdWcgMjYsIDIwMjUgYXQgMDI6MzM6NDRQTSBHTVQsIEtyaXNobmEgQ2hhaXRhbnlh
IENodW5kcnUgd3JvdGU6Cj4gCj4gCj4gT24gOC8yNi8yMDI1IDI6MDIgUE0sIEtyenlzenRvZiBL
b3psb3dza2kgd3JvdGU6Cj4gPiBPbiAyNi8wOC8yMDI1IDEwOjI3LCBLcnp5c3p0b2YgS296bG93
c2tpIHdyb3RlOgo+ID4gPiBPbiAyNi8wOC8yMDI1IDA3OjE4LCBLcmlzaG5hIENoYWl0YW55YSBD
aHVuZHJ1IHdyb3RlOgo+ID4gPiA+IFRoZSBxY29tX3BjaWVfcGFyc2VfcG9ydHMoKSBmdW5jdGlv
biBjdXJyZW50bHkgaXRlcmF0ZXMgb3ZlciBhbGwgYXZhaWxhYmxlCj4gPiA+ID4gY2hpbGQgbm9k
ZXMgb2YgdGhlIFBDSWUgY29udHJvbGxlcidzIGRldmljZSB0cmVlIG5vZGUuIFRoaXMgY2FuIGxl
YWQgdG8KPiA+ID4gPiBhdHRlbXB0cyB0byBwYXJzZSB1bnJlbGF0ZWQgbm9kZXMgbGlrZSBPUFAg
bm9kZXMsIHJlc3VsdGluZyBpbiB1bm5lY2Vzc2FyeQo+ID4gPiA+IGVycm9ycyBvciBtaXNjb25m
aWd1cmF0aW9uLgo+ID4gPiA+IAo+ID4gPiA+IFJlc3RyaWN0IHRoZSBwYXJzaW5nIGxvZ2ljIHRv
IG9ubHkgY29uc2lkZXIgY2hpbGQgbm9kZXMgbmFtZWQgInBjaWUiIG9yCj4gPiA+ID4gInBjaSIs
IHdoaWNoIGFyZSB0aGUgZXhwZWN0ZWQgbm9kZSBuYW1lcyBmb3IgUENJZSBwb3J0cy4KPiA+ID4g
PiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlz
aG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgIGRyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIHwgMiArKwo+ID4gPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gPiA+ID4gaW5kZXggMjk0YmFiZTE4MTZlNGQwYzJiMjM0
M2ZlMjJkODlhZjcyYWZjZDZjZC4uNWRiZGI2OWZiZGQxYjliNzhhM2ViYmEzY2Q1MGQ3ODE2OGYy
ZDU5NSAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LXFjb20uYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNv
bS5jCj4gPiA+ID4gQEAgLTE3NDAsNiArMTc0MCw4IEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX3Bh
cnNlX3BvcnRzKHN0cnVjdCBxY29tX3BjaWUgKnBjaWUpCj4gPiA+ID4gICAJaW50IHJldCA9IC1F
Tk9FTlQ7Cj4gPiA+ID4gICAJZm9yX2VhY2hfYXZhaWxhYmxlX2NoaWxkX29mX25vZGVfc2NvcGVk
KGRldi0+b2Zfbm9kZSwgb2ZfcG9ydCkgewo+ID4gPiA+ICsJCWlmICghKG9mX25vZGVfbmFtZV9l
cShvZl9wb3J0LCAicGNpZSIpIHx8IG9mX25vZGVfbmFtZV9lcShvZl9wb3J0LCAicGNpIikpKQo+
ID4gPiAKPiA+ID4gCj4gPiA+IEh1aD8gV2hlcmUgaXMgdGhpcyBBQkkgZG9jdW1lbnRlZD8KPiA+
IAo+ID4gSSBzZWUgaXQgYWN0dWFsbHkgbWlnaHQgYmUgZG9jdW1lbnRlZCwgYnV0IHlvdSBkaWQg
bm90IG1lbnRpb24gaXQgYXQKPiA+IGFsbC4gSSBkb3VidCB5b3UgZXZlbiBjaGVja2VkLgo+ID4g
Cj4gPiBQbGVhc2UgcmVmZXJlbmNlIGV4YWN0bHkgd2hlcmUgaXMgdGhlIEFCSSwgc28gcmV2aWV3
aW5nIHdpbGwgYmUgZWFzaWVyLgo+ID4gCj4gPiBJIHN0aWxsIHRoaW5rIHRob3VnaCB0aGF0IGl0
IGlzIHdyb25nIC0gd2UgZG9uJ3Qgd2FudCBkZXZpY2Ugbm9kZSBuYW1lcwo+ID4gdG8gYmUgdGhl
IEFCSSBpZiB3ZSBhbHJlYWR5IGhhdmUgY29tcGF0aWJsZXMgYW5kIHRoZSBjaGlsZHJlbiBoZXJl
Cj4gPiBzaG91bGQgaGF2ZSB0aGVtLCByaWdodD8KPiBJIGludGVuZGVkIHRvIGNoZWNrIGZvciBk
ZXZpY2VfdHlwZSB0byBiZSBwY2ksIG15IG1pc3Rha2UgSSB3ZW50IHdpdGgKPiB0aGUgbm9kZSBu
YW1lLCBJIHdpbGwgdXBkYXRlIHRoZSBwYXRjaCB3aXRoIHRoaXMgbG9naWMKPiAKPiBpZiAoIW9m
X25vZGVfaXNfdHlwZShucCwgInBjaSIpKQo+IAljb250aW51ZQo+IAoKWWVzLCB3ZSBjYW4gcmVs
eSBvbiBpdCBhcyBpdCBpcyBhIHJlcXVpcmVkIHByb3BlcnR5IGZvciBQQ0kgYnJpZGdlIG5vZGVz
LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
