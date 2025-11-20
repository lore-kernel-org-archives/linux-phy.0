Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6247FCF857B
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 11:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eT7uDgRXk8hzU81Q0/f45Omad05aNmdicPRRER1Q7+M=; b=r0S840/+bLbcTe
	2KjnUZkY5GVNsk/dCgHa0Kan7KFxC38trOABCKM4i1GfYVLhk0TWc/XkleorLON6MdghAoFl7TUkz
	3hHw+GT+1hoEgDYVQtgpDu3grOArLbTUOfM5kT+rN83AdylvIbHO3xSzjvcRU0bTGKPXZi7F6XJax
	BrBDmOzRwe3RiePQ6cjp6HWvQrPPAFHhvjAJWhmtquFzX5Bn3cny1lM1U1PCCc5sK5C0qI00cINjM
	7w9Ve1kji1TTLU6+g1qXSMykHO1hlgZNqsMAKlZXqkTb936+TpwbgIxwvTEQX4XhZQf4dlMWD6Tdk
	hVmPbT/dzxYgMR6a09AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM2iE-00000006Yqz-3SfF;
	Thu, 20 Nov 2025 11:20:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM2iC-00000006Yqn-3wW0
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 11:20:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 11A786014E;
	Thu, 20 Nov 2025 11:20:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7967AC19423;
	Thu, 20 Nov 2025 11:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763637627;
	bh=7M/+by6hjHaSWvOQWnNFtGMfjey8mHHTw3tpzF2pw2o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i6dFsT9n0bk34WzsZndpIYXsI3Iz/wcjlSKLfRcrpxx4z+lzlxMFFt7oucqRuutbD
	 fm3VLZiW9D2800h5tUmepsj0i2jIJwH8jdhnAJFZBGVaPwlh86tGth33xY7QRVWkPy
	 PyIiahqDUVlUxqLYpuHoXBv33p2pk5B5J7puSxLgXRx1ChDl2a8Wl6DCs/QfJFdtoF
	 NiaLGSGVgneY8HpNll2cbLuXdlosZseIcDM2SlRUF2NwA8VVwaEwQOGbeqDbIE893u
	 YEr4gv6qyD9DMLi8a+IZV0T77prNsvlDwLQ0sqEacPHhrENkaw0iDiaPmqzpuBtfP1
	 oI2KDMe6MQm8w==
Date: Thu, 20 Nov 2025 16:50:12 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>, 
	Wenbin Yao <wenbin.yao@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Message-ID: <hoxawvhmxyht2pf53xiw5wratcmivc7d3g2w4u5lzhkvnjm2ua@yba3t26of36c>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
 <aRyoo2Ve_hjgc84M@vaman>
 <aR7xkSWWLoGX1HYn@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aR7xkSWWLoGX1HYn@hu-qianyu-lv.qualcomm.com>
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

T24gVGh1LCBOb3YgMjAsIDIwMjUgYXQgMDI6NDY6NDFBTSAtMDgwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gT24gVHVlLCBOb3YgMTgsIDIwMjUgYXQgMTA6NDA6NTlQTSArMDUzMCwgVmlub2QgS291bCB3
cm90ZToKPiA+IE9uIDAzLTExLTI1LCAyMzo1NiwgUWlhbmcgWXUgd3JvdGU6Cj4gPiA+IEdseW11
ciBpcyB0aGUgbmV4dCBnZW5lcmF0aW9uIGNvbXB1dGUgU29DIG9mIFF1YWxjb21tLiBUaGlzIHBh
dGNoIHNlcmllcwo+ID4gPiBhaW1zIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgZm91cnRoLCBmaWZ0
aCBhbmQgc2l4dGggUENJZSBpbnN0YW5jZSBvbiBpdC4KPiA+ID4gVGhlIGZpZnRoIFBDSWUgaW5z
dGFuY2Ugb24gR2x5bXVyIGhhcyBhIEdlbjUgNC1sYW5lIFBIWSBhbmQgZm91cnRoLCBmaWZ0aAo+
ID4gPiBhbmQgc2l4dGggUENJZSBpbnN0YW5jZSBoYXZlIGEgR2VuNSAyLWxhbmUgUEhZLgo+ID4g
PiAKPiA+ID4gVGhlIGRldmljZSB0cmVlIGNoYW5nZXMgYW5kIHdoYXRldmVyIGRyaXZlciBwYXRj
aGVzIHRoYXQgYXJlIG5vdCBwYXJ0IG9mCj4gPiA+IHRoaXMgcGF0Y2ggc2VyaWVzIHdpbGwgYmUg
cG9zdGVkIHNlcGFyYXRlbHkgYWZ0ZXIgb2ZmaWNpYWwgYW5ub3VuY2VtZW50IG9mCj4gPiA+IHRo
ZSBTT0MuCj4gPiAKPiA+IFBsZWFzZSByZWJhc2Ugb24gcGh5L25leHQsIHRoaXMgZG9lcyBub3Qg
YXBwbHkgZm9yIG1lCj4gCj4gSGkgVmlub2QKPiAKPiBUaGlzIHBhdGNoIHNlcmllIGRlcGVuZHMg
b24KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTEwMTcwNDU5MTkuMzQ1OTktMi1r
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmcvCj4gCgpXaHkgd2FzIHRoaXMgZGVwZW5kZW5j
eSBub3QgbWVudGlvbmVkIGluIHRoZSBjb3ZlciBsZXR0ZXI/CgotIE1hbmkKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
