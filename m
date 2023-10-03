Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66F48E7AD58
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 14:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nownGdkWwz5M0Mt4AXYZ64ZBdGu1hKcmUibpSZJR1o0=; b=l8X7P+B8WMXPrf
	xMpk0WYd266aqzEIrX0mAEKjHNofQx4rvSYobB0lUxdbMCo9Mhgg/c24C45+AZ75Ft84uXgZfDNoC
	genoqW1I2dQELSfa1roMFxYLpGZrAKWdUkOm39tfDV6IzgtojJl0ylEZ2+FPwhRb9dt0xbDL7s3Fg
	IJMvJPDT7Gv8AImGrsbFutzCkoQqrqaCFVqRqBAWnpny1Kt86I1PFOnZzxQRR5PFBLGxddrT6KJSr
	h7HHlSKtOaRMu5jQQi0zmQlj8a6fhHTSabhqEybZc2wv3bYYiQQ3Db7VtrdayqhPYmMtb8IG3tBXY
	uYfxNfdvi5rJ9BWgUZrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qngdc-00EonM-0Q;
	Tue, 03 Oct 2023 14:44:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qngdY-00EomG-1U;
	Tue, 03 Oct 2023 14:44:38 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 393DLxC9002457;
	Tue, 3 Oct 2023 14:44:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=IolCNvR0O1iIjq55bic43asmt10xnwmdxUy9ivS0hG4=;
 b=SAhrfT1gcOt1nSnyRfYfpkJma9JtEuN6Dz6cXH9ESBzdlQOf3Cz7h86BSd8lY0ue6C6h
 g3kWKnhw1Z4EU9Iq6IczLzn6myYy7RKgBKDE+mTyh1so9mi7qzNnz0xbKZRrC3NzmvP6
 MAWvmuxiFyY04/EF8LAT3HZudDgC9IAp6oquvcdFpoYWP8h47JdaSxm08kXje2J0w3zE
 9kyLuJullmu7wWl2aFu36iPAolZ17UwJSQ2jHnFtFgPuk5WdznJSgFkhaNUAiALFAfQ5
 W49Q8cyp+vGvQQ+MvnljK9YEPDgMF9RNjEd3lozCBi3Ah+YDU4ZgCkzXQ8Tb+E86NFSN uA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tgbjkh84j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 14:44:20 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393Ehku9028119
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 14:43:46 GMT
Received: from [10.216.32.208] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Tue, 3 Oct
 2023 07:42:36 -0700
Message-ID: <a5763999-7636-4ac5-a1ef-408892b5bdba@quicinc.com>
Date: Tue, 3 Oct 2023 20:12:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] arm64: dts: qcom: ipq5332: Add Super-Speed UNIPHY in
 USB node
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
 <20230929084209.3033093-7-quic_ipkumar@quicinc.com>
 <cc6e2145-ee6f-4872-9c47-8f618b47dc27@linaro.org>
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <cc6e2145-ee6f-4872-9c47-8f618b47dc27@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: twcbwFWDwbhZSkcdJjMs6VQ3XagiKUm_
X-Proofpoint-GUID: twcbwFWDwbhZSkcdJjMs6VQ3XagiKUm_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_12,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 impostorscore=0 lowpriorityscore=0 mlxlogscore=750 spamscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 mlxscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310030109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_074436_508840_A2A955C7 
X-CRM114-Status: GOOD (  16.85  )
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

CgpPbiA5LzMwLzIwMjMgMTA6NTcgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gMjkv
MDkvMjAyMyAxMTo0MiwgUHJhdmVlbmt1bWFyIEkgd3JvdGU6Cj4+IEFkZCBVTklQSFkgbm9kZSBp
biBVU0IgdG8gc3VwcG9ydCBTdXBlci1zcGVlZC4gQXMgdGhlIFNTIFBIWSBoYXMKPj4gcGlwZSBj
bG9jaywgcmVtb3ZlZCAicWNvbSxzZWxlY3QtdXRtaS1hcy1waXBlLWNsayIgZmxhZy4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogUHJhdmVlbmt1bWFyIEkgPHF1aWNfaXBrdW1hckBxdWljaW5jLmNvbT4K
Pj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MzMyLmR0c2kgfCA2ICsr
LS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzIuZHRz
aSAKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTMzMi5kdHNpCj4+IGluZGV4IDE4
MTNiOWZhNGJiNS4uOGZlNGU0NWJmYzE4IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vaXBxNTMzMi5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9p
cHE1MzMyLmR0c2kKPj4gQEAgLTM0OSw4ICszNDksNiBAQCB1c2I6IHVzYkA4YWY4ODAwIHsKPj4g
wqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzZXRzID0gPCZnY2MgR0NDX1VTQl9CQ1I+
Owo+PiDCoCAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxY29tLHNlbGVjdC11dG1pLWFzLXBpcGUt
Y2xrOwo+PiAtCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwxPjsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmFuZ2VzOwo+PiBAQCAtMzYzLDggKzM2MSw4IEBA
IHVzYl9kd2M6IHVzYkA4YTAwMDAwIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjbG9ja3MgPSA8JmdjYyBHQ0NfVVNCMF9NT0NLX1VUTUlfQ0xLPjsKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJyZWYiOwo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8R0lDX1NQSSA2NCBJUlFf
VFlQRV9MRVZFTF9ISUdIPjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwaHkt
bmFtZXMgPSAidXNiMi1waHkiOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBo
eXMgPSA8JnVzYnBoeTA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBoeS1u
YW1lcyA9ICJ1c2IyLXBoeSIsICJ1c2IzLXBoeSI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcGh5cyA9IDwmdXNicGh5MD4sIDwmdXNicGh5MT47Cj4KPiBBaCwgSSBzZWUgbm93
LiBNYXliZSB1c2JwaHlfc3NfMCBvciBzb21ldGhpbmcgbGlrZSB0aGF0IHdvdWxkIGJlIGEgCj4g
YmV0dGVyIGxhYmVsIGZvciB0aGlzIFBIWS4gSSdkIGV4cGVjdCB1c2JwaHkxIHRvIGJlIHVzZWQg
Zm9yIG90aGVyIAo+IGhvc3QgdGhhbiB1c2JwaHkwLgpTdXJlLCB3aWxsIGNoYW5nZSBpdC4KPgo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHR4LWZpZm8tcmVzaXplOwo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNucHMsaXMtdXRtaS1sMS1zdXNwZW5k
Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNucHMsaGlyZC10aHJlc2hv
bGQgPSAvYml0cy8gOCA8MHgwPjsKPgotLQpUaGFua3MsClByYXZlZW5rdW1hcgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
