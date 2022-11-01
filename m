Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A1BBC433FE
	for <linux-phy@archiver.kernel.org>; Tue,  1 Nov 2022 14:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyC1zgFB2npImkrUFZ4Lmw/R8MEIIZgjXcpGmsG9xGs=; b=NNhliSDr44Y53n
	jprSOZDVWQ9bMjADYnb5vhpgHJAEUuiybPTSH2sZ9Z87eUVZk4AabFtWvk9XSRSZALXnjHzr8MPLe
	Kxs2ivkBSIO+ttBCzx7fWIPxOSrNOozqG1Da+zPq1rSDRSOS26ybgApMsxFOJUGBcXeBNHDvQqT9x
	fCwK/4jTNpVkj7Ue4PgyLGk0PHDWeTCyuSwQEWlOnDCcJNKyq3NVwGwX/CoCFUa2+tKw/lh0MqZov
	CygG54oIYw7Plouz39ZZM1Mg/C/uOHeCBdTAzWj4F2Y2lGicsDojRLtk5gcY0Fha60yXgh5h9sAwx
	x1NjVHucLwW+qgWpIe/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opsbT-005cqJ-9h; Tue, 01 Nov 2022 14:50:59 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opsSh-005YQa-8I
	for linux-phy@lists.infradead.org; Tue, 01 Nov 2022 14:41:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2CB98B81DE9;
	Tue,  1 Nov 2022 14:41:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8944BC433D6;
	Tue,  1 Nov 2022 14:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667313711;
	bh=6fLhKHkcCTdjlHjtarNnhYCz/WQJHny1JZxIw0NKpOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AF/uNtsrND3wviLza4EuafmD0UX2XS6MQsazz+oR88XcaIULiugDHZRnocmmXBZhH
	 bNOL2t6UgtyVgHhRR4f4VutDu7TuilN9Wgmx+yBS4/FNUfiJ3BLCdZWwEvPwiiUseA
	 i0oMHlM9C+mMzgdTFcwcwv+lcWHhWRTXjM40DlIhRt9ZEJag+526y9AzZq1rHNg1WQ
	 1n9lt1Dww8rDWZdhk+rdYvAXX3oajQrs10Cs1pCFFzdEX32XMMpRYxWw+/AOXFjeSB
	 P5L0VjPVhRkqzH74iRyt5vr24K/6BU1X/zdQ39frmZ1p9JPT4VddIOQ7I4LTipmB2H
	 kx+Jkd9fLNs+Q==
Date: Tue, 1 Nov 2022 20:11:35 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	martin.petersen@oracle.com, jejb@linux.ibm.com,
	andersson@kernel.org, vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@somainline.org,
	robh+dt@kernel.org, quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH 01/15] phy: qcom-qmp-ufs: Move register settings to
 qmp_phy_cfg_tables struct
Message-ID: <20221101144135.GC244012@thinkpad>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-2-manivannan.sadhasivam@linaro.org>
 <14844656-0d93-eac0-1877-f3e967691f5a@linaro.org>
 <20221031154607.GB12738@thinkpad>
 <748f41e1-cafc-e7eb-43ac-b8daacf88da4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <748f41e1-cafc-e7eb-43ac-b8daacf88da4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_074155_632691_8F1DD897 
X-CRM114-Status: GOOD (  26.84  )
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

T24gTW9uLCBPY3QgMzEsIDIwMjIgYXQgMDk6NTA6NTlQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiAzMS8xMC8yMDIyIDE4OjQ2LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3Jv
dGU6Cj4gPiBPbiBTdW4sIE9jdCAzMCwgMjAyMiBhdCAxMjo1MDo1MEFNICswMzAwLCBEbWl0cnkg
QmFyeXNoa292IHdyb3RlOgo+ID4gPiBPbiAyOS8xMC8yMDIyIDE3OjE2LCBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gd3JvdGU6Cj4gPiA+ID4gQXMgZG9uZSBmb3IgUWNvbSBQQ0llIFBIWSBkcml2ZXIs
IGxldCdzIG1vdmUgdGhlIHJlZ2lzdGVyIHNldHRpbmdzIHRvIHRoZQo+ID4gPiA+IGNvbW1vbiBx
bXBfcGh5X2NmZ190YWJsZXMgc3RydWN0LiBUaGlzIGhlbHBzIGluIGFkZGluZyBhbnkgYWRkaXRp
b25hbCBQSFkKPiA+ID4gPiBzZXR0aW5ncyBuZWVkZWQgZm9yIGZ1bmN0aW9uYWxpdGllcyBsaWtl
IEhTLUc0IGluIHRoZSBmdXR1cmUgYnkgYWRkaW5nIG9uZQo+ID4gPiA+IG1vcmUgaW5zdGFuY2Ug
b2YgdGhlIHFtcF9waHlfY2ZnX3RhYmxlcy4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3Jn
Pgo+ID4gPiA+IC0tLQo+ID4gPiA+ICAgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11ZnMuYyB8IDIyMyArKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiA+ID4gPiAgICAxIGZpbGUg
Y2hhbmdlZCwgMTI2IGluc2VydGlvbnMoKyksIDk3IGRlbGV0aW9ucygtKQo+ID4gPiA+IAo+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMg
Yi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKClsuLi5dCgo+ID4gPiA+
ICAgIHN0YXRpYyBpbnQgcW1wX3Vmc19jb21faW5pdChzdHJ1Y3QgcW1wX3BoeSAqcXBoeSkKPiA+
ID4gPiBAQCAtOTMzLDMxICs5NzcsMTYgQEAgc3RhdGljIGludCBxbXBfdWZzX3Bvd2VyX29uKHN0
cnVjdCBwaHkgKnBoeSkKPiA+ID4gPiAgICAJc3RydWN0IHFtcF9waHkgKnFwaHkgPSBwaHlfZ2V0
X2RydmRhdGEocGh5KTsKPiA+ID4gPiAgICAJc3RydWN0IHFjb21fcW1wICpxbXAgPSBxcGh5LT5x
bXA7Cj4gPiA+ID4gICAgCWNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnID0gcXBoeS0+Y2Zn
Owo+ID4gPiA+IC0Jdm9pZCBfX2lvbWVtICp0eCA9IHFwaHktPnR4Owo+ID4gPiA+IC0Jdm9pZCBf
X2lvbWVtICpyeCA9IHFwaHktPnJ4Owo+ID4gPiA+ICAgIAl2b2lkIF9faW9tZW0gKnBjcyA9IHFw
aHktPnBjczsKPiA+ID4gPiAgICAJdm9pZCBfX2lvbWVtICpzdGF0dXM7Cj4gPiA+ID4gICAgCXVu
c2lnbmVkIGludCBtYXNrLCB2YWwsIHJlYWR5Owo+ID4gPiA+ICAgIAlpbnQgcmV0Owo+ID4gPiA+
IC0JcW1wX3Vmc19zZXJkZXNfaW5pdChxcGh5KTsKPiA+ID4gPiAtCj4gPiA+ID4gLQkvKiBUeCwg
UngsIGFuZCBQQ1MgY29uZmlndXJhdGlvbnMgKi8KPiA+ID4gPiAtCXFtcF91ZnNfY29uZmlndXJl
X2xhbmUodHgsIGNmZy0+cmVncywgY2ZnLT50eF90YmwsIGNmZy0+dHhfdGJsX251bSwgMSk7Cj4g
PiA+ID4gKwlxbXBfdWZzX3NlcmRlc19pbml0KHFwaHksICZjZmctPnRhYmxlcyk7Cj4gPiA+ID4g
LQlpZiAoY2ZnLT5sYW5lcyA+PSAyKSB7Cj4gPiA+ID4gLQkJcW1wX3Vmc19jb25maWd1cmVfbGFu
ZShxcGh5LT50eDIsIGNmZy0+cmVncywKPiA+ID4gPiAtCQkJCQljZmctPnR4X3RibCwgY2ZnLT50
eF90YmxfbnVtLCAyKTsKPiA+ID4gPiAtCX0KPiA+ID4gPiAtCj4gPiA+ID4gLQlxbXBfdWZzX2Nv
bmZpZ3VyZV9sYW5lKHJ4LCBjZmctPnJlZ3MsIGNmZy0+cnhfdGJsLCBjZmctPnJ4X3RibF9udW0s
IDEpOwo+ID4gPiA+IC0KPiA+ID4gPiAtCWlmIChjZmctPmxhbmVzID49IDIpIHsKPiA+ID4gPiAt
CQlxbXBfdWZzX2NvbmZpZ3VyZV9sYW5lKHFwaHktPnJ4MiwgY2ZnLT5yZWdzLAo+ID4gPiA+IC0J
CQkJCWNmZy0+cnhfdGJsLCBjZmctPnJ4X3RibF9udW0sIDIpOwo+ID4gPiA+IC0JfQo+ID4gPiA+
ICsJcW1wX3Vmc19sYW5lc19pbml0KHFwaHksICZjZmctPnRhYmxlcyk7Cj4gPiA+ID4gLQlxbXBf
dWZzX2NvbmZpZ3VyZShwY3MsIGNmZy0+cmVncywgY2ZnLT5wY3NfdGJsLCBjZmctPnBjc190Ymxf
bnVtKTsKPiA+ID4gPiArCXFtcF91ZnNfcGNzX2luaXQocXBoeSwgJmNmZy0+dGFibGVzKTsKPiA+
ID4gCj4gPiA+IEknZCBzdWdnZXN0IGdvaW5nIHN0cmFpZ2h0IHRvIHFtcF91ZnNfaW5pdF9yZWdp
c3RlcnMsIHdoaWNoIHdvdWxkIGNvbnRhaW4KPiA+ID4gYm90aCBzZXJkZXMsIGxhbmVzIGFuZCBw
Y3MgaW5pdHMuCj4gPiA+IAo+ID4gCj4gPiBUaGF0IGFkZHMgb25lIG1vcmUgbGV2ZWwgb2YgaW5k
aXJlY3Rpb24gd2hpY2ggbWF5IG5vdCBiZSBuZWVkZWQgaGVyZS4gTW9yZW92ZXIsCj4gPiBJJ20g
dHJ5aW5nIHRvIGJlIGluIHN5bmMgd2l0aCBvdGhlciBxbXAgZHJpdmVycywgc3BlY2lmaWNhbGx5
IHRoZSBwY2llIG9uZS4KPiA+IFRoaXMgaGVscHMgaW4gd29ya2luZyB3aXRoIHRoZXNlIGRyaXZl
cnMuCj4gCj4gWWVzLCBJIHVuZGVyc3RhbmQuIEhvd2V2ZXIgSSBob3BlIHRoYXQgdGhlIHJlc3Bl
Y3RpdmUgcGF0Y2hzZXQgKGluY2x1ZGluZwo+IFsxXSkgd2lsbCBiZSBtZXJnZWQgc29vbi4gVGh1
cyBJIHN1Z2dlc3Qgc2tpcHBpbmcgdGhlIHN0ZXAgYW5kIHVzaW5nIHRoZQo+IHNhbWUgZnVuY3Rp
b24gYWxyZWFkeS4KPiAKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGh5LzIw
MjIxMDI4MTMzNjAzLjE4NDcwLTEwLWpvaGFuK2xpbmFyb0BrZXJuZWwub3JnLwo+IAoKQWgsIEkg
bWlzc2VkIHRoaXMgc2VyaWVzLiBXaWxsIHVzZSB0aGUgY29tbW9uIGZ1bmN0aW9uIHRoZW4uCgpU
aGFua3MsCk1hbmkKCj4gPiAKPiA+IFRoYW5rcywKPiA+IE1hbmkKPiA+IAo+ID4gPiA+ICAgIAly
ZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHFtcC0+dWZzX3Jlc2V0KTsKPiA+ID4gPiAgICAJ
aWYgKHJldCkKPiA+ID4gCj4gPiA+IC0tIAo+ID4gPiBXaXRoIGJlc3Qgd2lzaGVzCj4gPiA+IERt
aXRyeQo+ID4gPiAKPiA+IAo+IAo+IC0tIAo+IFdpdGggYmVzdCB3aXNoZXMKPiBEbWl0cnkKPiAK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
