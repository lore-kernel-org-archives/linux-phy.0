Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A4FE7AD58
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 14:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU8Pr6FwGlFjIgz9VFD1f3FvSN183ES4xGZqSVrMk7c=; b=RSjUo5JfTVNMJh
	g8t3fBY+qK5yrEZLG4U099bpPIWK2VxfyXNHZ0F1rya3rYIZot1Ft1izlS6WsFF8kwnHjcETbUrez
	sdmKIzDXYktFltq7096vesIsqtdJnhFw9bGOe02x/HTryUuRNN3Q7Dl7NpUuwi+YoyEEQIXdJ/9MU
	yF/bGm3gW8l/j05gr0Ar2frgXtG9empR79zz274RtSTaLErC530KoMKmxwgMumabI+mohkg1LmbER
	lKqWzJaRPFMXl8OpvLGHtiqhuTFrvDCce2168lzrFw7i6vNhYBc82f8xCyVU4IPpOLlIQqryBAcIW
	JPIDgNqZ8FMyHA5eRSjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qngO5-00EnIr-2X;
	Tue, 03 Oct 2023 14:28:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qngO2-00EnHt-0u;
	Tue, 03 Oct 2023 14:28:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 393EQI8A013770;
	Tue, 3 Oct 2023 14:28:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ExWq9EdzaPi01pk0kQhkIduT1l/I3/KRXIIRj205f8o=;
 b=T5kB2lLgkvfJl688l1f3hE8YucITCqT08aDsMeuUL00Ojj6XLRS+s98eEH6D5/cV+UN9
 FtSQzpZ4c4Q/D1e6mRJroaEH4/VPK4CMUDRdoRKUFgR2z57z7B6Ty0EGJl+O4/zOpB7L
 Jcv6rqHgKnw6KW7qxNVhPXYhyo2Dfx1AEco7QJD2swCqdFbx/7RlC6ebPEgPgyeQNp0M
 fWN62B4XYjj0mooRloEbgxX830MnH4wWIXNni8Cta4wdmVxsoUjwwk7l0G7iO3/zGX4m
 7jGIK+j0/k6VeyIihs0n+f6iUxXdmvUNBAzTlOvBfhjLbzF6SF+B67S8JMWix70jo4Vc Cg== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tgaw5h7md-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 14:28:18 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393ESHM1030055
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 14:28:17 GMT
Received: from [10.216.32.208] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Tue, 3 Oct
 2023 07:28:07 -0700
Message-ID: <49bb695e-cb7b-41bf-a3ac-71a8a8417c9f@quicinc.com>
Date: Tue, 3 Oct 2023 19:58:02 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] arm64: dts: qcom: ipq5332: Add USB Super-Speed PHY
 node
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <geert+renesas@glider.be>,
        <arnd@arndb.de>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <u-kumar1@ti.com>, <peng.fan@nxp.com>,
        <quic_wcheng@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_kathirav@quicinc.com>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-4-quic_ipkumar@quicinc.com>
 <5bf11343-6ab4-43a8-b12d-f2b072ce388a@linaro.org>
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <5bf11343-6ab4-43a8-b12d-f2b072ce388a@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: kAlSabW30WWtkJdpmGMUADo_4iEbSRCh
X-Proofpoint-GUID: kAlSabW30WWtkJdpmGMUADo_4iEbSRCh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_11,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=751 adultscore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310030106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_072834_434664_AF08EA80 
X-CRM114-Status: GOOD (  19.39  )
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

CgpPbiA5LzMwLzIwMjMgMTA6NTIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gMjkv
MDkvMjAyMyAxMTo0MiwgUHJhdmVlbmt1bWFyIEkgd3JvdGU6Cj4+IEFkZCBVU0IgU3VwZXItU3Bl
ZWQgVU5JUEhZIG5vZGUgYW5kIHBvcHVsYXRlIHRoZSBwaGFuZGxlIG9uCj4+IGdjYyBub2RlIGZv
ciB0aGUgcGFyZW50IGNsb2NrIG1hcC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogUHJhdmVlbmt1bWFy
IEkgPHF1aWNfaXBrdW1hckBxdWljaW5jLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9pcHE1MzMyLmR0c2kgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKystCj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTMzMi5kdHNpIAo+PiBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MzMyLmR0c2kKPj4gaW5kZXggZDNmZWYyZjgw
YTgxLi5iMDhmZmQ4YzA5NGUgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNv
bS9pcHE1MzMyLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzIu
ZHRzaQo+PiBAQCAtMTU4LDYgKzE1OCwyOSBAQCB1c2JwaHkwOiBwaHlAN2IwMDAgewo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgfTsKPj4gwqAgK8KgwqDCoMKgwqDCoMKgIHVzYnBoeTE6IHBoeUA0YjAwMDAgewo+
Cj4gQXJlIHRoZXJlIG90aGVyIFVTQiBQSFlzIG9uIHRoaXMgcGxhdGZvcm0/Ck5vLiBPbmx5IHR3
byBVU0IgUEhZcy4KPgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInFj
b20saXBxNTMzMi11c2ItdW5pcGh5IjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0g
PDB4NGIwMDAwIDB4ODAwPjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3Mg
PSA8JmdjYyBHQ0NfUENJRTNYMV9QSFlfQUhCX0NMSz4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVVNCMF9QSFlfQ0ZHX0FIQl9DTEs+LAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VTQjBfUElQRV9DTEs+Owo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJhaGIiLAo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjZmdfYWhiIiwKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicGlwZSI7Cj4+ICsKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmVzZXRzID3CoCA8JmdjYyBHQ0NfVVNCMF9QSFlfQkNSPjsKPj4g
Kwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjY2xvY2stY2VsbHMgPSA8MD47Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrLW91dHB1dC1uYW1lcyA9ICJ1c2IwX3BpcGVfY2xrX3Ny
YyI7Cj4KPiBJJ20gbm90IHN1cmUsIHdoYXQgaXMgdGhlIGJlc3QgYXBwcm9hY2ggaGVyLiBGb3Ig
UU1QIFVTQiBhbmQgUENJZSBQSFlzIAo+IHdlIGhhZCB0byB1c2UgZml4ZWQgbmFtZXMgaGlzdG9y
aWNhbGx5LiBPbiB0aGUgb3RoZXIgaGFuZCBmb3IgUU1QIERQIAo+IGNsb2NrcyB3ZSBhcmUgZmlu
ZSB3aXRoIHRoZSBnZW5lcmF0ZWQgbmFtZXMuIEknZCBwcmVmZXIgdGhlIGxhdHRlciBjYXNlLgpT
dXJlLCB3aWxsIHVzZSB0aGUgZ2VuZXJhdGVkIG5hbWVzLgo+Cj4+ICsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcWNvbSxwaHktdXNiLW11eC1zZWwgPSA8JnRjc3IgMHgxMDU0MD47Cj4+ICsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3BoeS1jZWxscyA9IDwwPjsKPj4gKwo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArwqDCoMKgwqDCoMKg
wqAgfTsKPj4gKwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcWZwcm9tOiBlZnVzZUBhNDAwMCB7Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicWNvbSxpcHE1MzMyLXFm
cHJvbSIsICJxY29tLHFmcHJvbSI7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9
IDwweDAwMGE0MDAwIDB4NzIxPjsKPj4gQEAgLTIwMCw3ICsyMjMsNyBAQCBnY2M6IGNsb2NrLWNv
bnRyb2xsZXJAMTgwMDAwMCB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8JnNsZWVwX2Nsaz4sCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
MD4sCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MD4sCj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8JnVzYnBoeTE+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gwqAg
wqDCoMKgwqDCoMKgwqDCoMKgIHRjc3JfbXV0ZXg6IGh3bG9ja0AxOTA1MDAwIHsKPgotLQpUaGFu
a3MsClByYXZlZW5rdW1hcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
