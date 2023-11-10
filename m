Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93806C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 10 Nov 2023 05:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8FoiuB24GmVFN4obrisn89BgJ42zCz3+s4L4bJak7Q=; b=vIY4Ww7yV3loOl
	dqH3hxM8HcArR9xLvyOT3KLbkojddabfC03YEMHNpK54/hYGUOXXsAO+IHq//vT4vmyWb75eAWQuE
	zI14NLGHt2G2xkMvcEBj2kJLrj0MDXvAhhJw7aZriwkojdRXPyxsmtz7v71ZXRXZMxJu36iBUOxgQ
	9pZk65bQiU+p5M1P7VXDE7tQ4M9r0ASRzADRH+C02f85kTk0C912qQ4cmjeAot/kCqjYDIerqtxe8
	gUX3t0b6DrU0SzW7guCEV8SlaXK57e730R5abEL4g85BLqS3ezWcbtNXX2Rc7X7Ivmv47r9dVbMIM
	6Xvw5V/yEZyMMsmEAcQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Jg1-007sbc-0o;
	Fri, 10 Nov 2023 05:03:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Jfx-007sbI-3C
	for linux-phy@lists.infradead.org;
	Fri, 10 Nov 2023 05:03:27 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AA4YPUL006265;
	Fri, 10 Nov 2023 05:03:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Z/PCIpcg9xojQy51MB+VWId2kfAlISsC4S8iqeSNADY=;
 b=K6BFdncG9QJ2nseJ53B9H8m0YtpBEzthKZwhyt6n7K11phYFKM5nvoXVSZgUNPVjbWY4
 JQyZWxFODTtnPkyE56WbUwMQf/Q67EU22Wf7B/OdOBsmFKuZKBYXLy0i1irLUwtUKr/k
 970Wp/cxC8wqb6QlWAl+QwSeP/W71FQUKrIE17c5Rtt5jW8Y23JEza4n9QCJ1zLiq37t
 9c4KRkh6WuF9BtTbwc9j/JELuNv8tmtMFyYwe40QmGs53nAtsyp12FixjJr2d7U6OCZH
 H8nltvjgK9B3HPLicF1qwavqdeDcM6YIHId4mXrW9LX0io1703HvUJwZ5B/U0rfy6CxW XA== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u8u2ttrn0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Nov 2023 05:03:20 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AA53J2l013913
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Nov 2023 05:03:19 GMT
Received: from [10.218.10.86] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Thu, 9 Nov
 2023 21:03:11 -0800
Message-ID: <b40a74f4-1605-d3a1-2c6a-845c41419442@quicinc.com>
Date: Fri, 10 Nov 2023 10:33:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: sa8775p: Add ep pcie1 controller
 node
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andrew Halaney
	<ahalaney@redhat.com>
CC: <agross@kernel.org>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <mani@kernel.org>, <robh+dt@kernel.org>, <quic_shazhuss@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_ramkri@quicinc.com>,
        <quic_nayiluri@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <robh@kernel.org>, <quic_krichai@quicinc.com>,
        <quic_vbadigan@quicinc.com>, <quic_parass@quicinc.com>,
        <quic_schintav@quicinc.com>, <quic_shijjose@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <1699362294-15558-1-git-send-email-quic_msarkar@quicinc.com>
 <1699362294-15558-3-git-send-email-quic_msarkar@quicinc.com>
 <i3yum3wbko33jwn7tfbcflpcxe5k5j5ituhyxtucx6gk2bs3gz@7ncewfmepnai>
 <19f32f8e-dfe2-410b-9a4d-80e24a888d65@linaro.org>
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
In-Reply-To: <19f32f8e-dfe2-410b-9a4d-80e24a888d65@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 8TreDiKchctsydpgz_pSNbtifUBxzsor
X-Proofpoint-GUID: 8TreDiKchctsydpgz_pSNbtifUBxzsor
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-10_01,2023-11-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501
 mlxlogscore=999 bulkscore=0 adultscore=0 clxscore=1011 spamscore=0
 phishscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2311060000 definitions=main-2311100041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_210326_207828_CF7F2B75 
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

Ck9uIDExLzgvMjAyMyAzOjI0IEFNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+Cj4KPiBPbiAxMS83
LzIzIDE5OjM3LCBBbmRyZXcgSGFsYW5leSB3cm90ZToKPj4gT24gVHVlLCBOb3YgMDcsIDIwMjMg
YXQgMDY6MzQ6NTNQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIgd3JvdGU6Cj4+PiBBZGQgZXAgcGNp
ZSBkdHNpIG5vZGUgZm9yIHBjaWUxIGNvbnRyb2xsZXIgZm91bmQgb24gc2E4Nzc1cCBwbGF0Zm9y
bS4KPj4+IEl0IHN1cHBvcnRzIGdlbjQgYW5kIHg0IGxpbmsgd2lkdGguIExpbWl0aW5nIHRoZSBz
cGVlZCB0byBHZW4zIGR1ZSB0bwo+Pj4gc3RhYmlsaXR5IGlzc3Vlcy4KPj4KPj4gSSB3b3VsZG4n
dCBtaW5kIGEgYml0IG1vcmUgaW5mb3JtYXRpb24gb24gd2hhdCAic3RhYmlsaXR5IiBpc3N1ZXMK
Pj4gZW50YWlscyEgSSdtIGEgc3Vja2VyIGZvciBkZXRhaWxzIGluIGEgY29tbWl0IG1lc3NhZ2Uu
Cj4gWWVwLCBnaXZpbmcgdXMgYSBiaXQgbW9yZSB0aGFuICJkb2VzbnQgd29yayIgbWF5IGhlbHAg
dXMgaGVscCB5b3UhCkFjdHVhbGx5IGlmIEkgZW5hYmxlIGdlbjQgc29tZSB0aW1lIEkgYW0gZ2V0
dGluZyBsaW5rIGRvd24gYW5kIHNvbWV0aW1lCmxpbmsgZ2V0dGluZyBlc3RhYmxpc2ggYXQgZ2Vu
MS4gSSBhbSBub3QgZ2V0dGluZyBzdGFibGUgZ2VuNCwgbWF5IGJlIHdlCm5lZWQgdG8gcHJvZ3Jh
bSBzb21lIHJlZ2lzdGVyIHRvIGdldCBzdGFibGUgZ2VuNCB0aGF0IEkgYW0gY2hlY2tpbmcuCj4+
PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDUxOCBJUlFfVFlQ
RV9MRVZFTF9ISUdIPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDxHSUNfU1BJIDE1MiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxHSUNfU1BJIDQ3NCBJUlFfVFlQRV9MRVZFTF9I
SUdIPjsKPiBMb29rcyBsaWtlIHRoZSBpbmRlbnRhdGlvbiBpcyBvZmY/Cj4KPj4+ICsKPj4+ICvC
oMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHQtbmFtZXMgPSAiZ2xvYmFsIiwgImRvb3JiZWxsIiwgImRt
YSI7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgaW50ZXJjb25uZWN0cyA9IDwmcGNpZV9hbm9j
IE1BU1RFUl9QQ0lFXzEgMCAmbWNfdmlydCAKPj4+IFNMQVZFX0VCSTEgMD4sCj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2VtX25vYyBNQVNURVJfQVBQU1NfUFJPQyAwICZj
b25maWdfbm9jIAo+Pj4gU0xBVkVfUENJRV8xIDA+Owo+Pgo+PiBJIGtlZXAgc2VlaW5nIEtvbnJh
ZCByZXF1ZXN0aW5nIHRoYXQgd2UgdXNlIHRoZSAjZGVmaW5lIGluc3RlYWQgb2YgYSByYXcKPj4g
bnVtYmVyIDAsIGkuZS4gc29tZXRoaW5nIGxpa2UgUUNPTV9JQ0NfVEFHX0FMV0FZUyAoYWx0aG91
Z2ggaWYgSSdtCj4+IHJlYWRpbmcgdGhhdCBjb3JyZWN0bHkgUUNPTV9JQ0NfVEFHX0FMV0FZUyBk
b2Vzbid0IGV2YWx1YXRlIHRvIDAsIHNvCj4+IG1ha2Ugc3VyZSB5b3UgcGljayB0aGUgYXBwcm9w
cmlhdGUgb25lKS4KPiBObyBpdCBkb2Vzbid0LCBidXQgaWYgeW91IGxvb2sgYXQgdGhlIGNvZGUs
IHRhZyBiZWluZyBub24tZXhpc3RlbnQKPiBhc3NpZ25zIFFDT01fSUNDX1RBR19BTFdBWVMgd2hp
Y2ggaXMgYSB3b3JrYXJvdW5kIGZvciBEVEJzIGZyb20gYmFjawo+IHdoZW4gaW50ZXJjb25uZWN0
IHRhZ3Mgd2VyZSBub3QgYSB0aGluZwo+Cj4+Cj4+PiArwqDCoMKgwqDCoMKgwqAgaW50ZXJjb25u
ZWN0LW5hbWVzID0gInBjaWUtbWVtIiwgImNwdS1wY2llIjsKPj4KPj4gVGhpcyBpcyBuaXRwaWNr
eSwgYnV0IHVubGVzcyBzb21lb25lIHRvbGQgeW91IHRvIGRvIHRoZSB3aGl0ZXNwYWNlCj4+IGJl
dHdlZW4gc29tZSBvZiB0aGVzZSBwcm9wZXJ0aWVzIEknZCBnZXQgbW9yZSBjb25zaXN0ZW50LiBp
LmUuIHJlZyBhbmQKPj4gcmVnLW5hbWVzIGhhcyBubyBuZXdsaW5lIGJldHdlZW4gdGhlbSwgYnV0
IGNsb2NrcyBhbmQgY2xvY2stbmFtZXMgZG9lcywKPj4gYW5kIHRoZW4gaW50ZXJjb25uZWN0cy9p
bnRlcmNvbm5lY3QtbmFtZXMgZG9lcyBub3QuCj4gOikKSSBkb24ndCB0aGluayB0aGVyZSBpcyBh
bnkgcnVsZSB0byBhZGQgdGhvc2Ugd2hpdGUgc3BhY2VzLCBpbiBuZXh0IHBhdGNoCkkgd2lsbCBh
bGlnbiB0aGVzZSB3aGl0ZSBzcGFjZXMgd2l0aCBvdGhlciBwY2llIG5vZGVzLgo+Cj4gS29ucmFk
CgpUaGFua3MsCk1yaW5tYXkKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
