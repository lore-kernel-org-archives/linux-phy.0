Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CA2DC77B7F
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jun 2025 07:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhB7qV2yy5Di+DO9UDcZQIJSIooVqFZ6BvLcSqdVfJw=; b=riFAE9DzjfiYUk
	F11u8lJSVX/si3aQz3nswaaYNmj7yqky2Ikq+jt3nppWtk0tOwOHNWnj19h5CbsfxlUWyIvd2CVIy
	D+Lp4++bpLRu2whGJxCw4NqXVtQ3nNYXs79sVpjYRIpbJiGWJzJBPcDqnnmPmvvlVQy8D33WJNVfD
	40Z8cqudpnrpUJvVqIXGDYRTM7kyetXrGtxV92WtVoUpU6jdMXjh9IVBcS7+dcdJ2k9fpFXNkAOod
	MlQroFsSQ8GbJLOliMx63KUJQW/tOAgPAKOMQEC8YDxoJ2ZHt6L8ux/PZQLHK//tFN1dviB+HKEqy
	cYSqDPKetF3StlOXuFXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUgzn-0000000AnsD-35Z5;
	Thu, 26 Jun 2025 07:26:07 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUgzk-0000000Anqi-0HDw
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 07:26:06 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250626072555euoutp01d274ec58514af45ac48a7f97708d4829~MhvgZ8T0Q2853328533euoutp01L
	for <linux-phy@lists.infradead.org>; Thu, 26 Jun 2025 07:25:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250626072555euoutp01d274ec58514af45ac48a7f97708d4829~MhvgZ8T0Q2853328533euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750922755;
	bh=icw0rjoptkxLHhnrH+Lv9R4VoB6E9eXahaqZ7CRog5w=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=oYaYAdbqKL2WtognhSMuMRAAXT0Y0KSf50dCqq6ukWVWB+IEaEeZEX8Eq9rmQOlb2
	 q5xpqqFu/gPa/Fz+zVkig/b6kYXFrH2+DK7CtkuoH/15VztfVkOAfI0CE9NENm03zy
	 noWlyH1JU8CoXW3Nfph5gUSxKMpqpdq4/OR76dOk=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250626072554eucas1p2ae35c30a96ab1ca61b6a3d6a970708ee~Mhvf-XwAx0141401414eucas1p2L;
	Thu, 26 Jun 2025 07:25:54 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250626072553eusmtip29447c0f000773f70ea184087c9f48365~MhveVcUnG2361923619eusmtip2e;
	Thu, 26 Jun 2025 07:25:53 +0000 (GMT)
Message-ID: <9cb6b7ad-387d-4a0d-9792-25cbbdc6dfed@samsung.com>
Date: Thu, 26 Jun 2025 09:25:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 10/10] scsi: ufs: qcom : Refactor phy_power_on/off
 calls
To: Nitin Rawat <quic_nitirawa@quicinc.com>, Aishwarya
	<aishwarya.tcv@arm.com>
Cc: James.Bottomley@HansenPartnership.com, andersson@kernel.org,
	bvanassche@acm.org, dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org,
	konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, manivannan.sadhasivam@linaro.org,
	martin.petersen@oracle.com, neil.armstrong@linaro.org,
	quic_cang@quicinc.com, quic_rdwivedi@quicinc.com, vkoul@kernel.org,
	broonie@kernel.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <7e362ee3-a237-4583-97fe-69ffc0d1d90d@quicinc.com>
X-CMS-MailID: 20250626072554eucas1p2ae35c30a96ab1ca61b6a3d6a970708ee
X-Msg-Generator: CA
X-RootMTR: 20250626072554eucas1p2ae35c30a96ab1ca61b6a3d6a970708ee
X-EPHeader: CA
X-CMS-RootMailID: 20250626072554eucas1p2ae35c30a96ab1ca61b6a3d6a970708ee
References: <9c846734-9267-442d-bba0-578d993650c1@quicinc.com>
	<20250620214408.11028-1-aishwarya.tcv@arm.com>
	<7e362ee3-a237-4583-97fe-69ffc0d1d90d@quicinc.com>
	<CGME20250626072554eucas1p2ae35c30a96ab1ca61b6a3d6a970708ee@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_002604_237287_2A27EC65 
X-CRM114-Status: GOOD (  11.13  )
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

T24gMjEuMDYuMjAyNSAxOToxNSwgTml0aW4gUmF3YXQgd3JvdGU6Cj4KPiBPbiA2LzIxLzIwMjUg
MzoxNCBBTSwgQWlzaHdhcnlhIHdyb3RlOgo+PiBIaSBOaXRpbiwKPj4KPj4gVG8gY2xhcmlmeSDi
gJQgdGhlIGRlZmNvbmZpZyBrZXJuZWwgZG9lcyBib290IHN1Y2Nlc3NmdWxseSBvbiBvdXIgQXJt
NjQKPj4gUXVhbGNvbW0gcGxhdGZvcm1zIChSQjUgYW5kIERCODQ1QykuIEhvd2V2ZXIsIHN0YXJ0
aW5nIGZyb20KPj4gbmV4dC0yMDI1MDYxMywgd2UgYXJlIHNlZWluZyB0aGUgZm9sbG93aW5nIHRo
cmVlIHRlc3QgZmFpbHVyZXMgaW4gdGhlCj4+IGBib290cnJgIGJhc2VsaW5lIHRlc3QgaW4gb3Vy
IENJIGVudmlyb25tZW50Ogo+Pgo+PiDCoMKgIC0gYmFzZWxpbmUuYm9vdHJyLnNjc2ktZGlzay1k
ZXZpY2UwLXByb2JlZAo+PiDCoMKgIC0gZG1lc2cuYWxlcnQKPj4gwqDCoCAtIGRtZXNnLmVtZXJn
Cj4+Cj4KPiBIaSBBaXNod2FyeWEsCj4KPiBUaGFua3MgZm9yIHRlc3RpbmcgYW5kIHJlcG9ydGlu
ZyB0aGlzIGlzc3VlLiBDYW4geW91IHBsZWFzZQo+IHRlc3Qgd2l0aCB0aGUgYXR0YWNoZWQgZml4
IGFuZCBsZXQgbWUga25vdyBpZiBpdCBoZWxwcy4KPgpJIGFsc28gc3RlcHBlZCBpbnRvIHRoaXMg
aXNzdWUgb24gdGhlIFJCNSBib2FyZCBhbmQgSSBjb25maXJtIHRoYXQgdGhhdCAKcGF0Y2ggZml4
ZXMgaXQuIFRoYW5rcyEKCkZlZWwgZnJlZSB0byBhZGQ6CgpUZXN0ZWQtYnk6IE1hcmVrIFN6eXBy
b3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KCgogPiAuLi4KCkJlc3QgcmVnYXJkcwot
LSAKTWFyZWsgU3p5cHJvd3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
