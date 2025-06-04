Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3D81C5B552
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 08:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPyOewpTIgqQaXjjXThhcwNcBK9AEhTsGH+kBv+IUeQ=; b=kjEbTcZjlvLCgD
	o6PnwrAl2oBCwE1ylb90npZ6tcp4Tp+HRN4b3phHdcxjUdTqdRXCcXMHhl2VgJK7pVG2g4JFSCnP8
	KDpjudfnfemeI+V8xs1t5XwJ537jFF66WR7yr19e2AHu5cYuKd0rlytO1lpaYFVP/8I6oc92OqW4h
	iOFzT0es02HagaRk0auMuiZSONpq7s+xbUjQTXpgVWPiRs6LvzCRz53RO942nvaKH6ziiOzfGQp7b
	W3bP8xj+aAZxF0lZvutH7YP8McS5qY/j8Vf8XhpJ6RndG1Sec+bqVAOy2wJRejn/YSK/s2of5xLYP
	AtDncOYnzYWCc/JK32DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMjKw-0000000CsEn-2WPG;
	Wed, 04 Jun 2025 08:19:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMj1e-0000000CowG-0PrJ
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 07:59:07 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 553Kohct012745;
	Wed, 4 Jun 2025 07:58:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	13QvruWdyVcS9mIBsvc1M5XXNtaXK//w/xWjOBf3jyg=; b=pGLaKOCUKqs/q+iv
	bgDjF75sV8OEY6+6KYBXn9osh2ipby4az29r43hIeyHcTSOP2p8AROQAoZKdYfsC
	2I/aw+h88KCdgrRddXfo84E4QOMx32ttxewMjo0Oqk/LkRpI7dJaA5m3DezDT2Rs
	h2uVbHr9oV9tM3cH+IsmkxBnYkeEGhSRw7Ssc/4uvwxahNx+y7MHE/oZIAW8f1mb
	B6v5ElvzCLvLb01gRru4eBFU0h0oFFh+51UL2LXgLDKWcyN5bXnb+NekA96aC6OR
	vmH+XqKsgQOhOUlSPkA5z/mQ+KEJrD2xodavJzg62zy2sxiZ6o/NaKmEKQylnOlO
	ur/nLQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8yn8y9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Jun 2025 07:58:58 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5547wgnq010824
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Jun 2025 07:58:42 GMT
Received: from [10.253.14.73] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 4 Jun 2025
 00:58:36 -0700
Message-ID: <e8d1b60c-97fe-4f50-8ead-66711f1aa3a7@quicinc.com>
Date: Wed, 4 Jun 2025 15:58:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: <lpieralisi@kernel.org>, <kwilczynski@kernel.org>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzk+dt@kernel.org>,
        <neil.armstrong@linaro.org>, <abel.vesa@linaro.org>, <kw@linux.com>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_qianyu@quicinc.com>,
        <quic_krichai@quicinc.com>, <quic_vbadigan@quicinc.com>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
 <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
 <drr7cngryldptgzbmac7l2xpryugbrnydke3alq5da2mfvmgm5@nwjsqkef7ypc>
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <drr7cngryldptgzbmac7l2xpryugbrnydke3alq5da2mfvmgm5@nwjsqkef7ypc>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA2MyBTYWx0ZWRfX77FdHn2XCV8M
 vKMLW3uJTfMu6h/rW0OuqK5CabkLuyZs/YtDfW7zcWih7b2Okt77codf9WliWxFE7SqaxwiTDhd
 BO5tYEFOFNdmO4aJUm3Fvfn5VWkTupELTSP716Cl0n4bC995+NZIaSXxxZnVCrK/VrwM7Kkmuff
 o3gmp4GSdsVjlKSxbwponKSmnVT9jAUSyLbaX/5D2ari45OKQiNq2NazTdFHR6edfMUg9MUmbBE
 lN3KNSEvqSHlw3bo7OdwFIP/j/xKFkPd1F56SpPiRnLlcJB+5wdgRP/2xHTAYPurLNVyvgXBA4T
 9T0yahIIKfQHbaRUXB5aKyn3zcfB91dNXVdYnOiUmXBjM4zxhg/yYL6cBi0Ug36UYaUzbzaqIwF
 zet8xmYMD7aJxDLIGywxGdyPz9IjEBXhgpqrizM1qy0eRQa3kVwvc3x8tCGW2jogPbKOQfJO
X-Proofpoint-ORIG-GUID: W8ozeskPvM20bNOMHtkaqIPpffrjzj5Z
X-Proofpoint-GUID: W8ozeskPvM20bNOMHtkaqIPpffrjzj5Z
X-Authority-Analysis: v=2.4 cv=T/uMT+KQ c=1 sm=1 tr=0 ts=683ffcc2 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=JfrnYn6hAAAA:8
 a=COk6AnOGAAAA:8 a=WXbjEpnkNGJP-WVJ2wQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 mlxscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 malwarescore=0 phishscore=0
 adultscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_005906_257972_ECF0F696 
X-CRM114-Status: GOOD (  16.59  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDYvMy8yMDI1IDk6MTEgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gVGh1LCBN
YXkgMjksIDIwMjUgYXQgMTE6NTQ6MTRBTSArMDgwMCwgWml5dWUgWmhhbmcgd3JvdGU6Cj4+IEVh
Y2ggUENJZSBjb250cm9sbGVyIG9uIHNhODc3NXAgc3VwcG9ydHMgJ2xpbmtfZG93bidyZXNldCBv
biBoYXJkd2FyZSwKPj4gZG9jdW1lbnQgaXQuCj4gSSBkb24ndCB0aGluayBpdCdzIHBvc3NpYmxl
IHRvICJzdXBwb3J0IiByZXNldCBpbiBoYXJkd2FyZS4gRWl0aGVyIGl0Cj4gZXhpc3RzIGFuZCBp
cyByb3V0ZWQsIG9yIGl0IGlzIG5vdC4KCkhpIERtaXRyeSwKCkkgd2lsbCBjaGFuZ2UgdGhlIGNv
bW1pdCBtc2cgdG8KJ0VhY2ggUENJZSBjb250cm9sbGVyIG9uIHNhODc3NXAgaW5jbHVkZXMgJ2xp
bmtfZG93bidyZXNldCBvbiBoYXJkd2FyZSwKZG9jdW1lbnQgaXQuJwoiU3VwcG9ydHMiIGltcGxp
ZXMgdGhhdCB0aGUgUENJZSBjb250cm9sbGVyIGhhcyBhbiBhY3RpdmUgcm9sZSBpbiBlbmFibGlu
ZwpvciBtYW5hZ2luZyB0aGUgcmVzZXQgZnVuY3Rpb25hbGl0eeKAlGl0IHN1Z2dlc3RzIHRoYXQg
dGhlIGNvbnRyb2xsZXIgaXMgZGVzaWduZWQKdG8gYWNjb21tb2RhdGUgb3IgZmFjaWxpdGF0ZSB0
aGlzIGZlYXR1cmUuCiAgIkluY2x1ZGVzIiBzaW1wbHkgc3RhdGVzIHRoYXQgdGhlIHJlc2V0IGZ1
bmN0aW9uYWxpdHkgaXMgcHJlc2VudCBpbiB0aGUKaGFyZHdhcmXigJRpdCBleGlzdHMsIHdoZXRo
ZXIgb3Igbm90IGl0J3MgYWN0aXZlbHkgbWFuYWdlZCBvciBjb25maWd1cmFibGUuClNvIEkgdGhp
bmsgY2hhbmdlIGl0IHRvIGluY2x1ZGVzIHdpbGwgYmUgYmV0dGVyLgoKQlJzClppeXVlCgo+PiBT
aWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8cXVpY196aXl1emhhbkBxdWljaW5jLmNvbT4KPj4g
LS0tCj4+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3NzVwLnlh
bWwgIHwgMTMgKysrKysrKysrLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3NzVwLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3NzVwLnlhbWwKPj4gaW5kZXgg
ZTNmYTIzMmRhMmNhLi44MDUyNThjYmNmMmYgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbAo+PiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3NzVwLnlh
bWwKPj4gQEAgLTYxLDExICs2MSwxNCBAQCBwcm9wZXJ0aWVzOgo+PiAgICAgICAgIC0gY29uc3Q6
IGdsb2JhbAo+PiAgIAo+PiAgICAgcmVzZXRzOgo+PiAtICAgIG1heEl0ZW1zOiAxCj4+ICsgICAg
bWluSXRlbXM6IDEKPj4gKyAgICBtYXhJdGVtczogMgo+IFNob3VsZG4ndCB3ZSBqdXN0IHVwZGF0
ZSB0aGlzIHRvIG1heEl0ZW1zOjIgLyBtaW5JdGVtczoyIGFuZCBkcm9wCj4gbWluSXRlbXM6MSBm
cm9tIHRoZSBuZXh0IGNsYXVzZT8KCkhpIERtaXRyeSwKCmxpbmtfZG93biByZXNldCBpcyBvcHRp
b25hbC4gSW4gbWFueSBvdGhlciBwbGF0Zm9ybXMsIGxpa2Ugc204NTUwCmFuZCB4MWU4MDEwMCwg
bGlua19kb3duIHJlc2V0IGlzIGRvY3VtZW50ZWQgYXMgYSBvcHRpb25hbCByZXNldC4KUENJZSB3
aWxsIHdvcmtzIGZpbmUgd2l0aG91dCBsaW5rX2Rvd24gcmVzZXQuIFNvIEkgdGhpbmsgc2V0dGlu
ZyBpdAphcyBvcHRpb25hbCBpcyBiZXR0ZXIuCgpCUnMKWml5dWUKCj4+ICAgCj4+ICAgICByZXNl
dC1uYW1lczoKPj4gKyAgICBtaW5JdGVtczogMQo+PiAgICAgICBpdGVtczoKPj4gLSAgICAgIC0g
Y29uc3Q6IHBjaQo+PiArICAgICAgLSBjb25zdDogcGNpICMgUENJZSBjb3JlIHJlc2V0Cj4+ICsg
ICAgICAtIGNvbnN0OiBsaW5rX2Rvd24gIyBQQ0llIGxpbmsgZG93biByZXNldAo+PiAgIAo+PiAg
IHJlcXVpcmVkOgo+PiAgICAgLSBpbnRlcmNvbm5lY3RzCj4+IEBAIC0xNjEsOCArMTY0LDEwIEBA
IGV4YW1wbGVzOgo+PiAgIAo+PiAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JmdjYyBQ
Q0lFXzBfR0RTQz47Cj4+ICAgCj4+IC0gICAgICAgICAgICByZXNldHMgPSA8JmdjYyBHQ0NfUENJ
RV8wX0JDUj47Cj4+IC0gICAgICAgICAgICByZXNldC1uYW1lcyA9ICJwY2kiOwo+PiArICAgICAg
ICAgICAgcmVzZXRzID0gPCZnY2MgR0NDX1BDSUVfMF9CQ1I+LAo+PiArICAgICAgICAgICAgICAg
ICAgICAgPCZnY2MgR0NDX1BDSUVfMF9MSU5LX0RPV05fQkNSPjsKPj4gKyAgICAgICAgICAgIHJl
c2V0LW5hbWVzID0gInBjaSIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICJsaW5rX2Rv
d24iOwo+PiAgIAo+PiAgICAgICAgICAgICAgIHBlcnN0LWdwaW9zID0gPCZ0bG1tIDIgR1BJT19B
Q1RJVkVfTE9XPjsKPj4gICAgICAgICAgICAgICB3YWtlLWdwaW9zID0gPCZ0bG1tIDAgR1BJT19B
Q1RJVkVfSElHSD47Cj4+IC0tIAo+PiAyLjM0LjEKPj4KPj4KPj4gLS0gCj4+IGxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKPj4gbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
