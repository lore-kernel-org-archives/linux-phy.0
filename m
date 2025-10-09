Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16A65CCD183
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 21:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKfEhEAo5prTBn+qENzNXqkHc4taRikXxu2Sv7ByTGE=; b=Hs65+FecOuobwh
	L0OtHPYP/58VR2GQqWhOUQe/Ku4yYDQ9rgDv/oJZHgxi9InEFr4J28o8xCgqM8vLShZ1B4M4OwNBI
	dnRpNeRxgRkpLINyJ7vItEmopJ5AsnGMacZhUMo+zCCnI0zpdnvvl0nvWr1HokcAtNUMAHFVjvYy5
	nK2U2ef8jc09Iv9vGskykZjQl9WWPB2Vq4mNtMQcsCELbqp5+JYL6H/t+yS8+tzhgEwiiQSuS49PG
	Ql1/zVGRyiGzguY4zfmCx41O3VKcO1EC6dFVOY/4L5feAt8au4cuA6l7KyoSWrGKj4SlDraB54sWZ
	Tnm0KK5HBY1JRZJyFZiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6y19-000000078YG-3UsB;
	Thu, 09 Oct 2025 21:17:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6y17-000000078XJ-4BGH
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 21:17:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3EC7260053;
	Thu,  9 Oct 2025 21:17:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0255FC4CEE7;
	Thu,  9 Oct 2025 21:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760044660;
	bh=BwfkkEiFr4e+h6S366Ayqap5n/PtIOVr+0J9Egmvctk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hcEGfi8nDHxY/uC+cgam4j6BFs/9ffPNVcn0PDCaI8jkxPIbncNb80PrwxYomeCxQ
	 Jjl0VzGddVQhD+L4kN06AZBaljDQ/oK10TTx3ZfoVgWx1eyDZjh2+VsWf/IJWAbOx2
	 4lsUPg0IkSv9bIzdx95Bt6eS2//1JRRrblLTvMTQOkXKfHmwXBPHnu2VME4AuqrgQk
	 XgRG7oloaBgrW01tH7xoGCpETiIIXGhlWpMbeefKctGNy4MHbhewA6EZMiCiFdthpC
	 hJXO8CUOGeptvYDPH7J+xkHVBSUfAvmoPAltf8JJ3y/0XbvWBZ5C4yRuxDugZlipry
	 m9k0oIMQPqwBg==
Date: Thu, 9 Oct 2025 14:17:38 -0700
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com, 
	quic_mrana@quicinc.com
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
Message-ID: <iy7wdlhiavqm5bffyo53rqm636cxyy3xdg463sda6aomgsslkc@j4h6cqtpibkw>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
 <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
 <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
 <8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com>
 <qref5ooh6pl2sznf7iifrbric7hsap63ffbytkizdyrzt6mtqz@q5r27ho2sbq3>
 <b5538a86-c166-4f20-9c3a-8170d3596660@oss.qualcomm.com>
 <53wepdhpn3fgvq5fum7u6n75su77dligfjtnxkfdh4r723a7yf@6u43pwkwt4yw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53wepdhpn3fgvq5fum7u6n75su77dligfjtnxkfdh4r723a7yf@6u43pwkwt4yw>
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

T24gVGh1LCBPY3QgMDksIDIwMjUgYXQgMDc6NDI6MzdQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBUaHUsIE9jdCAwOSwgMjAyNSBhdCAxMDozNTo1MkFNICswMjAwLCBLb25y
YWQgRHliY2lvIHdyb3RlOgo+ID4gT24gMTAvOC8yNSA5OjA4IFBNLCBEbWl0cnkgQmFyeXNoa292
IHdyb3RlOgo+ID4gPiBPbiBXZWQsIE9jdCAwOCwgMjAyNSBhdCAxMToxMTo0M0FNICswMjAwLCBL
b25yYWQgRHliY2lvIHdyb3RlOgo+ID4gPj4gT24gMTAvOC8yNSAxMDowMCBBTSwgS29ucmFkIER5
YmNpbyB3cm90ZToKPiA+ID4+PiBPbiAxMC84LzI1IDY6NDEgQU0sIEtyaXNobmEgQ2hhaXRhbnlh
IENodW5kcnUgd3JvdGU6Cj4gPiA+Pj4+Cj4gPiA+Pj4+Cj4gPiA+Pj4+IE9uIDEwLzIvMjAyNSA1
OjA3IEFNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gPiA+Pj4+PiBPbiBUdWUsIEF1ZyAyNiwg
MjAyNSBhdCAwNDozMjo1NFBNICswNTMwLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IHdyb3Rl
Ogo+ID4gPj4+Pj4+IEFkZCBQQ0llIGNvbnRyb2xsZXIgYW5kIFBIWSBub2RlcyB3aGljaCBzdXBw
b3J0cyBkYXRhIHJhdGVzIG9mIDhHVC9zCj4gPiA+Pj4+Pj4gYW5kIHgyIGxhbmUuCj4gPiA+Pj4+
Pj4KPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBJIHRyaWVkIHRvIGJvb3QgdGhlIHVwc3RyZWFtIGtlcm5l
bCAobmV4dC0yMDI1MDkyNSBkZWZjb25maWcpIG9uIG15Cj4gPiA+Pj4+PiBQYWthbGEgTVRQIHdp
dGggbGF0ZXN0IExBMS4wIE1FVEEgYW5kIHVubGVzcyBJIGRpc2FibGUgJnBjaWUwIHRoZSBkZXZp
Y2UKPiA+ID4+Pj4+IGlzIGNyYXNoaW5nIGR1cmluZyBib290IGFzIFBDSWUgaXMgYmVpbmcgcHJv
YmVkLgo+ID4gPj4+Pj4KPiA+ID4+Pj4+IElzIHRoaXMgYSBrbm93biBwcm9ibGVtPyBJcyB0aGVy
ZSBhbnkgd29ya2Fyb3VuZC9jaGFuZ2VzIGluIGZsaWdodCB0aGF0Cj4gPiA+Pj4+PiBJJ20gbWlz
c2luZz8KPiA+ID4+Pj4+Cj4gPiA+Pj4+IEhpIEJqb3JuLAo+ID4gPj4+Pgo+ID4gPj4+PiB3ZSBu
ZWVkIHRoaXMgZml4IGZvciB0aGUgUENJZSB0byB3b3JrIHByb3Blcmx5LiBQbGVhc2UgdHJ5IGl0
IG9uY2UuCj4gPiA+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MTAwOC1zbTg3
NTAtdjEtMS1kYWVhZGZjYWU5ODBAb3NzLnF1YWxjb21tLmNvbS8KPiA+ID4+Pgo+ID4gPj4+IFRo
aXMgc3VyZWx5IHNob3VsZG4ndCBjYXVzZS9maXggYW55IGlzc3Vlcywgbm8/Cj4gPiA+Pgo+ID4g
Pj4gQXBwYXJlbnRseSB0aGlzIGlzIGEgcmVhbCBmaXgsIGJlY2F1c2Ugc204NzUwLmR0c2kgZGVm
aW5lcyB0aGUgUENJZQo+ID4gPj4gUEhZIHVuZGVyIGEgcG9ydCBub2RlLCB3aGlsZSB0aGUgTVRQ
IERUIGFzc2lnbnMgcGVyc3QtZ3Bpb3MgdG8gdGhlIFJDCj4gPiA+PiBub2RlLCB3aGljaCB0aGUg
bGVnYWN5IGJpbmRpbmcgKCJldmVyeXRoaW5nIHVuZGVyIHRoZSBSQyBub2RlIikgcGFyc2luZwo+
ID4gPj4gY29kZSBjYW4ndCBjb3BlIHdpdGggKHBsZWFzZSBtZW50aW9uIHRoYXQgaW4gdGhlIGNv
bW1pdCBtZXNzYWdlLCBLcmlzaG5hKQo+ID4gPj4KPiA+ID4+IEFuZCBJIGNvdWxkbid0IGNvbWUg
dXAgd2l0aCBhIHdheSB0byBkZXNjcmliZSAiZWl0aGVyIGJvdGggYXJlIHJlcXVpcmVkCj4gPiA+
PiBpZiBhbnkgaXMgcHJlc2VudCB1bmRlciB0aGUgUkMgbm9kZSBvciBub25lIGFyZSBhbGxvd2Vk
IiBpbiB5YW1sCj4gPiA+IAo+ID4gPiBXaGF0IGFib3V0Ogo+ID4gPiAKPiA+ID4gb25lT2Y6Cj4g
PiA+ICAgLSByZXF1aXJlZDoKPiA+ID4gICAgICAtIGZvbwo+ID4gPiAgICAgIC0gYmFyCj4gPiA+
ICAgLSBwcm9wZXJ0aWVzOgo+ID4gPiAgICAgIGZvbzogZmFsc2UKPiA+ID4gICAgICBiYXI6IGZh
bHNlCj4gPiAKPiA+IE9oIHllYWgsIHRoaXMgd29ya3MuLiB3b3VsZCB5b3UgbWluZCBzdWJtaXR0
aW5nIGEgcGF0Y2ggbGlrZSB0aGlzLCB3aXRoIGEKPiAKPiBJJ2QgcHJlZmVyIGl0IGl0IGNvbWVz
IGZyb20gc29tZWJvZHkgd2hvIGlzIGFjdHVhbGx5IHdvcmtpbmcgb24gUENJZSBzbwo+IHRoYXQg
dGhlIGV4cGxhbmF0aW9ucyBhcmUgbm90IHJpZGljdWxvdXMuIE1hbmk/Cj4gCgpXaWxsIGRvLgoK
LSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+Cu
teCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
