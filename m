Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7431CCA0FE8
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 14:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKeeFQ3gzjpkE3OswfsBXg9mJNpmpzoGx68bSxNHoQY=; b=tQnSV9mnz0naLq
	QQG92M2WG+CJy262yB8qp5QzblK0Fvo4u/+CCwNfP/ihiHb/RxBZdOYpui/UiYVLktKjo1FsZt0uV
	76SVU/UaLpqWblLhY4c2zMPA4nmELlbm6g2Q8P9MgH/+aZGl8g1vPQdD4jyDVObrKNUkQ4o850EYg
	BK5VB4DzYJ0oMEZc/dK4rX7NKn4722VsKQrrJK+AXFKyzwI1kZlJ8YHReGtSsrmYmx8UEP/YiN1Jj
	J2cKSTnBMRv8EFbqzK5tMlHHjuzS/f0Y1qCuAujluJOBtxHp8WyF+6tWhsW3WIj3US4KEMojpswlR
	/DOxuKp3ReqBhS5+6Jdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upScw-00000002n9A-1OoG;
	Fri, 22 Aug 2025 14:20:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upNKE-00000001xjk-2IVP
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 08:40:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4D4F7444F3;
	Fri, 22 Aug 2025 08:40:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37485C4CEF4;
	Fri, 22 Aug 2025 08:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755852042;
	bh=q0HwPcYz0N5VXro/Xjw2FhQcs7bgEeOCHWFFgXWZjEw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EH02UZgSv8pnnFNEM1rCFJ+OP7CWQOgAKWoF+5/nny4/lsut+PlxQlFX6cLPGHb7u
	 s7KqAZTh5DNNPz5bao0gA8ZEX0m7Tn5pbxDs4I75X9fZYPK7NRz60DIZmT0V2Tmwos
	 GtJlP5Fx5Fwg07xkJNkFgR7xtR36ir9Wzy2R9XDgGXtwdXo4GX+vpiffD66vz4MQtu
	 uXmOaNF3DJYwHyWmS1AWPLiTB1olosvIeqtKv96xc911GJcJrm8q2DOIyGR6Aw4UO1
	 DGlLE7sUYFUXnY0nZzNsa+rolmHX1lrajnS3qRV9gyneEuL3yHXRTHWz6PhphpSLNs
	 TKa1pOCQ96M6w==
Date: Fri, 22 Aug 2025 14:10:29 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, dmitry.baryshkov@oss.qualcomm.com, 
	andersson@kernel.org, konradybcio@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 1/2] phy: qcom-qmp-ufs: Add regulator load voting for
 UFS QMP PHY
Message-ID: <iak5s5ligdmq3ru4fkvh5a3si6nxadwouboltxxyce4x7t3l6o@eyhh7khzij7v>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819222832.8471-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_014042_627600_485A12E1 
X-CRM114-Status: GOOD (  23.67  )
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

T24gV2VkLCBBdWcgMjAsIDIwMjUgYXQgMDM6NTg6MjVBTSBHTVQsIE5pdGluIFJhd2F0IHdyb3Rl
Ogo+IE9uIGNlcnRhaW4gU29DcywgcG93ZXIgcmVndWxhdG9ycyBhcmUgc2hhcmVkIGJldHdlZW4g
dGhlIFFNUCBVRlMgUEhZCj4gYW5kIG90aGVyIElQIGJsb2Nrcy4gVG8gZW5zdXJlIHByb3BlciBv
cGVyYXRpb24sIHRoZSByZWd1bGF0b3IKPiBmcmFtZXdvcmsgbXVzdCBiZSBpbmZvcm1lZCBvZiB0
aGUgVUZTIFBIWSdzIGxvYWQgcmVxdWlyZW1lbnRzLgo+IFRoaXMgaXMgZXNzZW50aWFsIGJlY2F1
c2UgdGhlIHJlZ3VsYXRvcidzIG9wZXJhdGluZyBtb2Rl4oCUd2hldGhlciBMb3cKPiBQb3dlciBv
ciBIaWdoIFBvd2Vy4oCUZGVwZW5kcyBvbiB0aGUgbWF4aW11bSBleHBlY3RlZCBsb2FkIGF0IGFu
eSBnaXZlbgo+IHRpbWUsIHdoaWNoIHRoZSByZWd1bGF0b3IgZHJpdmVyIG5lZWRzIHRvIG1hbmFn
ZSBhY2NvcmRpbmdseS4KPiAKPiBUbyBzdXBwb3J0IHRoaXMsIHJlcGxhY2UgZGV2bV9yZWd1bGF0
b3JfYnVsa19nZXQoKSB3aXRoCj4gZGV2bV9yZWd1bGF0b3JfYnVsa19nZXRfY29uc3QoKSBhbmQg
aW5saW5lIHRoZSBxbXBfdWZzX3ZyZWdfaW5pdCgpCj4gZnVuY3Rpb24uCgpVc2Ugb2YgJ2lubGlu
ZScgaXMgY29uZnVzaW5nLiBQbGVhc2UgcmV3b3JkIGl0IHRvIHNvdW5kIGxpa2UgeW91IGFyZSBq
dXN0CmdldHRpbmcgcmlkIG9mIHRoaXMgZnVuY3Rpb24gaW4gZmF2b3Igb2YgZGV2bV9yZWd1bGF0
b3JfYnVsa19nZXRfY29uc3QoKS4KCj4gYWRkaXRpb25hbGx5IHJlcGxhY2UgdGhlIGFycmF5IG9m
IHJlZ3VsYXRvciBuYW1lcyB3aXRoIGEKPiBidWxrIHJlZ3VsYXRvciBkYXRhIHN0cnVjdHVyZSwg
YW5kIHV0aWxpemUgdGhlIGluaXRfbG9hZF91QSBmaWVsZAo+IHByb3ZpZGVkIGJ5IHRoZSByZWd1
bGF0b3IgZnJhbWV3b3JrLiBUaGlzIGVuc3VyZXMgdGhhdAo+IHJlZ3VsYXRvcl9zZXRfbG9hZCgp
IGlzIGF1dG9tYXRpY2FsbHkgaW52b2tlZCBiZWZvcmUgdGhlCj4gZmlyc3QgZW5hYmxlIG9wZXJh
dGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWlj
aW5jLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5j
IHwgMjkgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXVmcy5jCj4gaW5kZXggOWM2OWM3N2QxMGM4Li5hYWE4OGNhMGVmMDcgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gKysrIGIvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gQEAgLTExMDcsNyArMTEwNyw3
IEBAIHN0cnVjdCBxbXBfcGh5X2NmZyB7Cj4gIAljb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmdfdGJs
cyB0YmxzX2hzX292ZXJsYXlbTlVNX09WRVJMQVldOwo+IAo+ICAJLyogcmVndWxhdG9ycyB0byBi
ZSByZXF1ZXN0ZWQgKi8KPiAtCWNvbnN0IGNoYXIgKiBjb25zdCAqdnJlZ19saXN0Owo+ICsJY29u
c3Qgc3RydWN0IHJlZ3VsYXRvcl9idWxrX2RhdGEgKnZyZWdfbGlzdDsKPiAgCWludCBudW1fdnJl
Z3M7Cj4gCj4gIAkvKiBhcnJheSBvZiByZWdpc3RlcnMgd2l0aCBkaWZmZXJlbnQgb2Zmc2V0cyAq
Lwo+IEBAIC0xMTY0LDkgKzExNjQsMTAgQEAgc3RhdGljIGlubGluZSB2b2lkIHFwaHlfY2xyYml0
cyh2b2lkIF9faW9tZW0gKmJhc2UsIHUzMiBvZmZzZXQsIHUzMiB2YWwpCj4gIAlyZWFkbChiYXNl
ICsgb2Zmc2V0KTsKPiAgfQo+IAo+IC0vKiBsaXN0IG9mIHJlZ3VsYXRvcnMgKi8KPiAtc3RhdGlj
IGNvbnN0IGNoYXIgKiBjb25zdCBxbXBfcGh5X3ZyZWdfbFtdID0gewo+IC0JInZkZGEtcGh5Iiwg
InZkZGEtcGxsIiwKPiArLyogRGVmYXVsdCByZWd1bGF0b3IgYnVsayBkYXRhIChubyBsb2FkIHVz
ZWQpICovCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSBxbXBfcGh5
X3ZyZWdfbFtdID0gewo+ICsJeyAuc3VwcGx5ID0gInZkZGEtcGh5IiB9LAo+ICsJeyAuc3VwcGx5
ID0gInZkZGEtcGxsIiB9LAo+ICB9Owo+IAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF91ZnNf
b2Zmc2V0cyBxbXBfdWZzX29mZnNldHMgPSB7Cj4gQEAgLTE4OTAsMjIgKzE4OTEsNiBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IHBoeV9vcHMgcWNvbV9xbXBfdWZzX3BoeV9vcHMgPSB7Cj4gIAkub3du
ZXIJCT0gVEhJU19NT0RVTEUsCj4gIH07Cj4gCj4gLXN0YXRpYyBpbnQgcW1wX3Vmc192cmVnX2lu
aXQoc3RydWN0IHFtcF91ZnMgKnFtcCkKPiAtewo+IC0JY29uc3Qgc3RydWN0IHFtcF9waHlfY2Zn
ICpjZmcgPSBxbXAtPmNmZzsKPiAtCXN0cnVjdCBkZXZpY2UgKmRldiA9IHFtcC0+ZGV2Owo+IC0J
aW50IG51bSA9IGNmZy0+bnVtX3ZyZWdzOwo+IC0JaW50IGk7Cj4gLQo+IC0JcW1wLT52cmVncyA9
IGRldm1fa2NhbGxvYyhkZXYsIG51bSwgc2l6ZW9mKCpxbXAtPnZyZWdzKSwgR0ZQX0tFUk5FTCk7
Cj4gLQlpZiAoIXFtcC0+dnJlZ3MpCj4gLQkJcmV0dXJuIC1FTk9NRU07Cj4gLQo+IC0JZm9yIChp
ID0gMDsgaSA8IG51bTsgaSsrKQo+IC0JCXFtcC0+dnJlZ3NbaV0uc3VwcGx5ID0gY2ZnLT52cmVn
X2xpc3RbaV07Cj4gLQo+IC0JcmV0dXJuIGRldm1fcmVndWxhdG9yX2J1bGtfZ2V0KGRldiwgbnVt
LCBxbXAtPnZyZWdzKTsKPiAtfQo+IAoKU3RyYXkgbmV3IGxpbmUuCgpXaXRoIGFib3ZlIGNoYW5n
ZXMsCgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+
CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
