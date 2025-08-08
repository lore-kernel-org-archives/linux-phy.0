Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38E86C87FD2
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 07:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nzdn9gMOLj8yaFPrp4P9AB5ThMStVt6Xs10BQHJlERk=; b=lto/wbPQHded6U
	rvb09RlI45PlQ/Gqud+nN3N8a6eCEzF7PkiaFVsRMj/mf6bNnHQiKZwrEvqKc5QUJ7GblMiZFaMJ0
	mnIHPF/oMsy3qNsZDLHZLqF9BUnFxn2RX4mIfzn393F0tZdCOl/juHGViIuDEBgWCh8dBOR3aEyAm
	j3Ro8ZCbB4kM2hrwpv2o3FMGoGCEAcXRpspCsEQV1+sdFSi0h/K6TC1pszVOuRmvP+A5DZShOLpTy
	UTp0IVQy+xbyEQap6Z0baXskfKv+1k8ecD9/XbnA562OXcR4PL0WxVoWSdzz2cOE6HPM56pxiRbYA
	xnFaGmEWXDx40M6VcLNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukHmK-00000002F0c-3pbU;
	Fri, 08 Aug 2025 07:44:40 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukHUA-00000002BfL-1rPW
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 07:25:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B60E1A55621;
	Fri,  8 Aug 2025 07:25:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B65B5C4CEF0;
	Fri,  8 Aug 2025 07:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754637952;
	bh=4dII2zr2lKG9KmcQeK6dVUXaq5kcE5zY11ZU5f2bPgo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fXTtI64z0GrM2KCRlY7jZll6v0CI43RH8gvE1J0dHa1btco7q0ce7u9SfUvBjhEkR
	 l8Hpqw60ozUF8506LpOZQ7vAykFNVg7gO6NdgQ5SPjVBnrAN2YJ/B71Y8hDeZFoqU7
	 ASCL5CkasD59/6lhGl/fpisNjKmBe4qyJbXSuznk1s200imVGOAaWU/K7N19hJC17w
	 SgcUopvrdnVYYytb+cqEp1kJ7qXiLzJb1wDDfcCQy2aDgYGBIR4mpKYL8botCUgz/9
	 aVweM7F5c41FPLpQ2taYyAx4OeXec3zGY1RRazGi+6SJSMMz4wf9h6TPkFHE0EzQwS
	 xdVd6sIa4X+vg==
Date: Fri, 8 Aug 2025 09:25:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Mark Brown <broonie@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, 
	conor+dt@kernel.org, bvanassche@acm.org, andersson@kernel.org, 
	neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org, 
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
Message-ID: <20250808-unbiased-classy-heron-cd7f3f@kuoka>
References: <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <685e3d36-c0e3-4faa-b817-aecc15976a25@quicinc.com>
 <c1435858-6288-4525-8c92-e27ed86cb55e@sirena.org.uk>
 <31461227-3f3a-4316-9c8a-c851209d0278@quicinc.com>
 <4efc8a3a-ceb6-40dc-b877-328b86348e0b@sirena.org.uk>
 <52625e59-c7d0-45d1-8af3-d9958c5ef01a@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52625e59-c7d0-45d1-8af3-d9958c5ef01a@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_002554_651118_59A3DFA4 
X-CRM114-Status: GOOD (  18.32  )
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

T24gRnJpLCBBdWcgMDgsIDIwMjUgYXQgMDI6MTU6MzFBTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gCj4gCj4gT24gOC84LzIwMjUgMTI6MTUgQU0sIE1hcmsgQnJvd24gd3JvdGU6Cj4gPiBP
biBUaHUsIEF1ZyAwNywgMjAyNSBhdCAxMToyNjoxN1BNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90
ZToKPiA+IAo+ID4gPiAxLiBSZWd1bGF0b3IgYW5kIFBNSUMgY29uZmlndXJhdGlvbnMgYXJlIGJv
YXJkLXNwZWNpZmljLCBtZWFuaW5nIHRoZXkgY2FuCj4gPiA+IHZhcnkgc2lnbmlmaWNhbnRseSBh
Y3Jvc3MgZGlmZmVyZW50IHBsYXRmb3Jtcy4gRm9yIGV4YW1wbGUsIHNvbWUgYm9hcmRzIG1heQo+
ID4gPiB1c2UgZGlmZmVyZW50IGdlbmVyYXRpb25zIG9mIFVGUyBkZXZpY2VzIOKAlCBzdWNoIGFz
IFVGUyAyLngg4oCUIHdoaWNoIGNvbWUgd2l0aAo+ID4gPiBkaXN0aW5jdCBwb3dlciBhbmQgbG9h
ZCByZXF1aXJlbWVudHMgYW5kIHNvbWUgd2l0aCBVRlMzLnggd2hpY2ggaGFzIGl0IG93bgo+ID4g
PiBwb3dlci9sb2FkIHJlcXVpcmVtZW50Lgo+ID4gCj4gPiBSZXF1aXJlbWVudHMgZnJvbSBnZW5l
cmF0aW9ucyBvZiBVRlMgZGV2aWNlcyBwcmVzdW1hYmx5IGNvbWUgZnJvbSB0aGUKPiA+IFVGUyBz
cGVjIGFuZCBzaG91bGQganVzdCBiZSBrbm93biB0aG91Z2g/Cj4gPiAKPiA+ID4gMi4gVUZTIFBI
WSBsb2FkIGFuZCBQTUlDIHJlcXVpcmVtZW50cyBhbHNvIHZhcmllcyBhY3Jvc3MgdGFyZ2V0cywg
ZGVwZW5kaW5nCj4gPiA+IG9uIHRoZSB1bmRlcmx5aW5nIHRlY2hub2xvZ3kgbm9kZSBhbmQgdGhl
IHNwZWNpZmljIFBIWSBjYXBhYmlsaXRpZXMuIFRoZXNlCj4gPiA+IGRpZmZlcmVuY2VzIGNhbiBi
ZSBpbmZsdWVuY2VkIGJ5IHRoZSBNSVBJIHZlcnNpb24gb3Igb3RoZXIgaW1wbGVtZW50YXRpb24K
PiA+ID4gZGV0YWlscy4KPiA+IAo+ID4gSWYgeW91J3ZlIGdvdCBub24tZW51bWVyYWJsZSBQSFlz
IHRoYXQgaGF2ZSBhIGJpZyBpbXBhY3QgdGhhdCdzIGEgbXVjaAo+ID4gY2xlYXJlciB1c2UgY2Fz
ZSBmb3IgcHV0dGluZyB0aGluZ3MgaW4gRFQuCj4gCj4gV2hhdCBJIG1lYW50IGlzIHRoYXQgZGlm
ZmVyZW50IGJvYXJkcyBtYXkgdXNlIGRpZmZlcmVudCBVRlMgcGFydHMsIGFuZCB0aGUKPiBhc3Nv
Y2lhdGVkIFBIWSBsb2FkIHJlcXVpcmVtZW50cyBhcmUgbm90IGdvdmVybmVkIGJ5IHRoZSBVRlMg
c3BlY2lmaWNhdGlvbgo+IGl0c2VsZi4gSW5zdGVhZCwgdGhlc2UgcmVxdWlyZW1lbnRzIGRlcGVu
ZCBvbiBvdXIgc3BlY2lmaWMgUEhZIGRlc2lnbiBhbmQKPiBNSVBJLCB3aGljaCBjYW4gdmFyeSBh
Y3Jvc3MgcGxhdGZvcm1zLgoKVGhlIFVGUyBjb250cm9sbGVyIGtub3dzIHdoaWNoIGRldmljZSBp
dCBoYXMgYXR0YWNoZWQgLSAyLnggb3IgMy54IC0gc28KcG93ZXIgY29uc2lkZXJhdGlvbnMgYXJl
IGtub3duIHRvIHRoZSBkcml2ZXIuCgo+IAo+IEJlY2F1c2UgdGhlc2UgY2hhcmFjdGVyaXN0aWNz
IOKAlCBzdWNoIGFzIGxvYWQgcmVxdWlyZW1lbnRzIOKAlCBhcmUgbm90Cj4gZW51bWVyYWJsZSBv
ciBhdXRvbWF0aWNhbGx5IGRldGVjdGFibGUsIGl0IG1ha2VzIHNlbnNlIHRvIGRlc2NyaWJlIHRo
ZW0KPiBleHBsaWNpdGx5IGluIHRoZSBkZXZpY2UgdHJlZS4gVGhpcyBhcHByb2FjaCBlbnN1cmVz
IHRoYXQgYm9hcmQtc3BlY2lmaWMKPiB2YXJpYXRpb25zIGFyZSBhY2N1cmF0ZWx5IGNhcHR1cmVk
IHdpdGhvdXQgaGFyZGNvZGluZyB0aGVtIGludG8gdGhlIGRyaXZlci4KCkJ1dCB5b3UgbmV2ZXIg
Y2FtZSB3aXRoIHJhdGlvbmFsZSB3aHkgZ2l2ZW4gYm9hcmQgaGFzIHRoYXQgdmFsdWUuCgpBbGwg
dGhpcyBpcyBkb25lIE9OTFkgYmVjYXVzZSBkb3duc3RyZWFtIGhhcyBpdC4KCkJlc3QgcmVnYXJk
cywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
