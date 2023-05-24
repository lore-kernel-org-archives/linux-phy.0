Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2578AC77B7C
	for <linux-phy@archiver.kernel.org>; Wed, 24 May 2023 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2QJzPX9BNuZanyoIn87lFbxSwgPee/r/g31SR4ab6I=; b=EQf4Ro6+Pcl7IO
	/q6SVsomkElkDKVLPCmuUV2AYQ+bm0ztkmxWadmN62apq6BtIBYMYZm7dyosGEawmkI7NiGtBWBH6
	2jHhIUOTlMle2PvUqnbrgPcAEYZVf7oAfrNY4NxrLfv00oWTLR7hagVjdafvgXpb1NrvUzemG46sl
	qsRJtbG8q0Rd94juBxXhsAdg+xTMopKWl1SWNb9/mgZEenTjfEO2Zuo9mR96ccNC6pB900qzZmE6S
	RdM5zKEbgm7eKG285kgSSBYZO7rfR3nCIAJuQinDY2Zd81R71vH/6DuCB3V3uz7HlYY9H6fUWiltv
	eU2xcPE/tK61Jg/rrZGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1hOe-00CQzn-2h;
	Wed, 24 May 2023 05:50:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1hOc-00CQyu-07
	for linux-phy@lists.infradead.org;
	Wed, 24 May 2023 05:50:51 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34O3q8aI022701;
	Wed, 24 May 2023 05:50:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=n4JO77A+9YTPPexD3vFKCA3ei5urNWozkAcvOrurlmo=;
 b=lT+dSifyB/cYwoXod4NQVieJ4ju+UzLxi878ae4x4eJNfV2C9qUCVm+mKXlEnv4E2uwX
 uewDkKTxoskuzspaWQF/Pb3llwLzpo6nfqq3CppT/Xzo0dmi5X35A6xDYZ+/dg0Jb2XG
 ClPETGfQqIgJjPQikBXlXwiwcW74x776i7ZT2omAlHfhIt3YFnX0OBI7HxiQVhxgOiMR
 +UrG0XFLJdaPhB2cMFmRBnuf/twjn+99PIyy35EJ9LaxVUhpS41Ub5wwadmNTodfo16m
 5rDc0bw8f+jPW0ZB2ByYpb8FEcjdT7oNdg1fq6GpsfvbO7PgA/FjKcXvIEMn9tOwoQj3 /w== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qs42urw1n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 May 2023 05:50:44 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34O5oAC9020169
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 May 2023 05:50:10 GMT
Received: from [10.216.26.46] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 23 May
 2023 22:50:03 -0700
Message-ID: <02767039-39c2-76c7-e539-7ec7272c61ca@quicinc.com>
Date: Wed, 24 May 2023 11:19:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V2 1/2] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574
 bindings
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_sjaganat@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_arajkuma@quicinc.com>,
        <quic_anusha@quicinc.com>, <quic_ipkumar@quicinc.com>
References: <20230519085723.15601-1-quic_devipriy@quicinc.com>
 <20230519085723.15601-2-quic_devipriy@quicinc.com>
 <874a328c-bbfb-00cb-4b2e-69132605cb2d@linaro.org>
Content-Language: en-US
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <874a328c-bbfb-00cb-4b2e-69132605cb2d@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: wQgtOg2kKNP1rlW9ALb8ENFSvTdobLpb
X-Proofpoint-GUID: wQgtOg2kKNP1rlW9ALb8ENFSvTdobLpb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-24_02,2023-05-23_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0 mlxscore=0
 phishscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305240049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_225050_225211_603B1138 
X-CRM114-Status: GOOD (  19.21  )
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

CgpPbiA1LzIyLzIwMjMgMjoyNyBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiAxOS8w
NS8yMDIzIDExOjU3LCBEZXZpIFByaXlhIHdyb3RlOgo+PiBBZGQgYmluZGluZ3MgZm9yIHRoZSBQ
Q0llIFFNUCBQSFlzIGZvdW5kIG9uIElQUTk1NzQuCj4+Cj4+IFJldmlld2VkLWJ5OiBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4+IFNpZ25lZC1v
ZmYtYnk6IERldmkgUHJpeWEgPHF1aWNfZGV2aXByaXlAcXVpY2luYy5jb20+Cj4+IC0tLQo+PiDC
oCBDaGFuZ2VzIGluIFYyOgo+PiDCoMKgwqDCoC0gUGlja2VkIHVwIHRoZSBSLWIgdGFnCj4+IMKg
wqDCoMKgLSBEaWQgbm90IGNvbnZlcnQgdGhlIGNsb2NrIElEcyB0byBudW1lcmljYWwgdmFsdWVz
IGFzIHRoZSBjbG9jawo+PiDCoMKgwqDCoMKgIGhlYWRlciAoZGVwZW5kZW50IHBhdGNoKSBpcyBt
ZXJnZWQgaW4gbGF0ZXN0IHJjMS4KPj4KPj4gwqAgLi4uL3BoeS9xY29tLGlwcTk1NzQtcW1wLXBj
aWUtcGh5LnlhbWzCoMKgwqDCoMKgwqDCoCB8IDkwICsrKysrKysrKysrKysrKysrKysKPj4gwqAg
MSBmaWxlIGNoYW5nZWQsIDkwIGluc2VydGlvbnMoKykKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0
IAo+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20saXBxOTU3NC1x
bXAtcGNpZS1waHkueWFtbAo+Pgo+PiBkaWZmIC0tZ2l0IAo+PiBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxpcHE5NTc0LXFtcC1wY2llLXBoeS55YW1sIAo+PiBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxpcHE5NTc0LXFtcC1w
Y2llLXBoeS55YW1sCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAw
MC4uN2M4MDEyNjQ3MDUxCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIAo+PiBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxpcHE5NTc0LXFtcC1wY2llLXBoeS55YW1s
Cj4+IEBAIC0wLDAgKzEsOTAgQEAKPj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwt
Mi4wIE9SIEJTRC0yLUNsYXVzZSkKPj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9xY29tLGlwcTk1NzQtcW1wLXBjaWUtcGh5Lnlh
bWwjCj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUu
eWFtbCMKPj4gKwo+PiArdGl0bGU6IFF1YWxjb21tIFFNUCBQSFkgY29udHJvbGxlciAoUENJZSwg
SVBROTU3NCkKPj4gKwo+PiArbWFpbnRhaW5lcnM6Cj4+ICvCoCAtIFZpbm9kIEtvdWwgPHZrb3Vs
QGtlcm5lbC5vcmc+Cj4+ICsKPj4gK2Rlc2NyaXB0aW9uOgo+PiArwqAgVGhlIFFNUCBQSFkgY29u
dHJvbGxlciBzdXBwb3J0cyBwaHlzaWNhbCBsYXllciBmdW5jdGlvbmFsaXR5IGZvciBhIAo+PiBu
dW1iZXIgb2YKPj4gK8KgIGNvbnRyb2xsZXJzIG9uIFF1YWxjb21tIGNoaXBzZXRzLCBzdWNoIGFz
LCBQQ0llLCBVRlMsIGFuZCBVU0IuCj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICvCoCBjb21wYXRp
YmxlOgo+PiArwqDCoMKgIGVudW06Cj4+ICvCoMKgwqDCoMKgIC0gcWNvbSxpcHE5NTc0LXFtcC1n
ZW4zeDEtcGNpZS1waHkKPj4gK8KgwqDCoMKgwqAgLSBxY29tLGlwcTk1NzQtcW1wLWdlbjN4Mi1w
Y2llLXBoeQo+PiArCj4+ICvCoCByZWc6Cj4+ICvCoMKgwqAgbWF4SXRlbXM6IDEKPj4gKwo+PiAr
wqAgY2xvY2tzOgo+PiArwqDCoMKgIG1heEl0ZW1zOiA1Cj4+ICsKPj4gK8KgIGNsb2NrLW5hbWVz
Ogo+PiArwqDCoMKgIGl0ZW1zOgo+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiBhdXgKPj4gK8KgwqDC
oMKgwqAgLSBjb25zdDogY2ZnX2FoYgo+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiBhbm9jX2xhbmUK
Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogc25vY19sYW5lCj4+ICvCoMKgwqDCoMKgIC0gY29uc3Q6
IHBpcGUKPiAKPiBDb3VsZCB5b3UgcGxlYXNlIHJlb3JkZXIgdGhlIGNsb2NrcyBpbiB0aGUgZm9s
bG93aW5nIHdheToKPiAtIGF1eAo+IC0gY2ZnX2FoYgo+IC0gcGlwZQo+IC0gLi4gdGhlIHJlc3QK
PiAKPiBUaGlzIHdpbGwgYWxsb3cgdXMgdG8gdXNlIHRoaXMgc2NoZW1hIGZvciBvdGhlciBJUFEg
UU1QIFBDSWUgUEhZcy4KU3VyZSwgd2lsbCB1cGRhdGUuCgpUaGFua3MsCkRldmkgUHJpeWEKPiAK
Pj4gKwo+PiArwqAgcmVzZXRzOgo+PiArwqDCoMKgIG1heEl0ZW1zOiAyCj4+ICsKPj4gK8KgIHJl
c2V0LW5hbWVzOgo+PiArwqDCoMKgIGl0ZW1zOgo+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiBwaHkK
Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogY29tbW9uCj4+ICsKPj4gK8KgICIjY2xvY2stY2VsbHMi
Ogo+PiArwqDCoMKgIGNvbnN0OiAwCj4+ICsKPj4gK8KgIGNsb2NrLW91dHB1dC1uYW1lczoKPj4g
K8KgwqDCoCBtYXhJdGVtczogMQo+PiArCj4+ICvCoCAiI3BoeS1jZWxscyI6Cj4+ICvCoMKgwqAg
Y29uc3Q6IDAKPj4gKwo+PiArcmVxdWlyZWQ6Cj4+ICvCoCAtIGNvbXBhdGlibGUKPj4gK8KgIC0g
cmVnCj4+ICvCoCAtIGNsb2Nrcwo+PiArwqAgLSBjbG9jay1uYW1lcwo+PiArwqAgLSByZXNldHMK
Pj4gK8KgIC0gcmVzZXQtbmFtZXMKPj4gK8KgIC0gIiNjbG9jay1jZWxscyIKPj4gK8KgIC0gY2xv
Y2stb3V0cHV0LW5hbWVzCj4+ICvCoCAtICIjcGh5LWNlbGxzIgo+PiArCj4+ICthZGRpdGlvbmFs
UHJvcGVydGllczogZmFsc2UKPj4gKwo+PiArZXhhbXBsZXM6Cj4+ICvCoCAtIHwKPj4gK8KgwqDC
oCAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcWNvbSxpcHE5NTc0LWdjYy5oPgo+PiArwqDC
oMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9xY29tLGlwcTk1NzQtZ2NjLmg+Cj4+ICsK
Pj4gK8KgwqDCoCBwY2llMF9waHk6IHBoeUA4NDAwMCB7Cj4+ICvCoMKgwqDCoMKgIGNvbXBhdGli
bGUgPSAicWNvbSxpcHE5NTc0LXFtcC1nZW4zeDEtcGNpZS1waHkiOwo+PiArwqDCoMKgwqDCoCBy
ZWcgPSA8MHgwMDA4NDAwMCAweDEwMDA+Owo+PiArCj4+ICvCoMKgwqDCoMKgIGNsb2NrcyA9IDwm
Z2NjIEdDQ19QQ0lFMF9BVVhfQ0xLPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZnY2MgR0NDX1BDSUUwX0FIQl9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8JmdjYyBHQ0NfQU5PQ19QQ0lFMF8xTEFORV9NX0NMSz4sCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19TTk9DX1BDSUUwXzFMQU5FX1NfQ0xLPiwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1BDSUUwX1BJUEVfQ0xLPjsKPj4gK8Kg
wqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiYXV4IiwgImNmZ19haGIiLCAiYW5vY19sYW5lIiwgInNu
b2NfbGFuZSIsICJwaXBlIjsKPj4gKwo+PiArwqDCoMKgwqDCoCByZXNldHMgPSA8JmdjYyBHQ0Nf
UENJRTBfUEhZX0JDUj4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdD
Q19QQ0lFMFBIWV9QSFlfQkNSPjsKPj4gK8KgwqDCoMKgwqAgcmVzZXQtbmFtZXMgPSAicGh5Iiwg
ImNvbW1vbiI7Cj4+ICsKPj4gK8KgwqDCoMKgwqAgI2Nsb2NrLWNlbGxzID0gPDA+Owo+PiArwqDC
oMKgwqDCoCBjbG9jay1vdXRwdXQtbmFtZXMgPSAiZ2NjX3BjaWUwX3BpcGVfY2xrX3NyYyI7Cj4+
ICsKPj4gK8KgwqDCoMKgwqAgI3BoeS1jZWxscyA9IDwwPjsKPj4gK8KgwqDCoCB9Owo+IAoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
