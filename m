Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC98BC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 10:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqtZxkHCkLE0QMnZvu9C98xJrM2WHHfHK5OwWjrzoU0=; b=bUjlHaMZth43dw
	Lfp3MHvoQeqo0amHgWxAwOTIiRsHAmlBbtuE2ulZhi6yHg8ib0pySToDCV9hd7I+8oD5Lpn3JhivE
	T6jFj33SzRUm3bKnuVT7PFZzwEX+XJ2Q7UPRgTVl/KLR3s1U/xThbiDBKRyN1MsrpjgxYII+t8bHq
	/4E/x3a3Y2Wht1lR6eTsxUdwyoFL7J5aywFJvjh2yP+wEwzc8czOHY9cm68Vj5xyAWoq7YQYKrdb5
	9IpL1OltCt0b4g0bJzsbJvIy28xv0bCykw7BaO2VmK3Z3ApBDzTlgGgMejPn7Jmg2XBbTVSD4ANts
	QQrBBB54aOi/okjFSR1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaa2z-002hIw-AB; Tue, 20 Sep 2022 10:00:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaa2u-002hHS-Rj
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 10:00:08 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K7xi2Q013764;
	Tue, 20 Sep 2022 10:00:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=e+Mjuh5gg+qCqPNY3CWaWhGM9M/UVXbWGlTVwOxGB3k=;
 b=NQUQMa4corel2l/91rbA435gqIz45nQD2IhHv1UkZbZXemmP5KPyxf3w1J3oif2nIYxp
 2s5O6bbwi0zE7qmHVRpBKt0Akl8QNlXV5vRELrrQFK+s8ZfNoLGomihkQcK19ljzuq3n
 zNycduep2EbDAYwGmXpgNm/D+iAUjpKj0c24UFUeeK3auJwKqb40K6DibMMeLxw/UmsG
 t01QZ7btD4XRYybsBvOtaSZYg5khO6JBzmySvWyyqifx9RAM4J2j6ScqBwE2li8wgKda
 enPmkOTVoEIbG2qppKrBrnW2XG0cIA01SDNARR2fRqbh724nsEOvVb8oI08FfYgvMge+ Jw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jq4r09byk-7
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 10:00:00 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 28K9fCno028326
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 09:41:12 GMT
Received: from [10.216.24.214] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Tue, 20 Sep
 2022 02:41:07 -0700
Message-ID: <48c560ef-67fd-8903-a7c0-2fd7a9bd6b19@quicinc.com>
Date: Tue, 20 Sep 2022 15:11:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v6 3/5] phy: core: Add support for phy power down & power
 up
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <helgaas@kernel.org>, <linux-pci@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <mka@chromium.org>, <quic_vbadigan@quicinc.com>,
        <quic_hemantk@quicinc.com>, <quic_nitegupt@quicinc.com>,
        <quic_skananth@quicinc.com>, <quic_ramkri@quicinc.com>,
        <manivannan.sadhasivam@linaro.org>, <swboyd@chromium.org>,
        Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
	<vkoul@kernel.org>,
        "open list:GENERIC PHY FRAMEWORK"
	<linux-phy@lists.infradead.org>
References: <1662713084-8106-1-git-send-email-quic_krichai@quicinc.com>
 <1662713084-8106-4-git-send-email-quic_krichai@quicinc.com>
 <CAA8EJppgaAuEDU44ePOt+ZWK0_rNsXHnE3WOEc9F-n=VE=3aVQ@mail.gmail.com>
 <87138bc9-2fc0-39fb-89c1-d3826e28594e@quicinc.com>
 <bd6fc826-94b9-f539-a37e-820ab49b9d14@linaro.org>
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
In-Reply-To: <bd6fc826-94b9-f539-a37e-820ab49b9d14@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 9dhGy6_L9UqGlSWt1h6AUQAw-scBXFcn
X-Proofpoint-GUID: 9dhGy6_L9UqGlSWt1h6AUQAw-scBXFcn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=899
 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2209200060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_030006_635812_8536F80E 
X-CRM114-Status: GOOD (  18.23  )
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

Ck9uIDkvMTkvMjAyMiAxMDo1OSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiAxNC8w
OS8yMDIyIDE3OjUwLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IHdyb3RlOgo+Pgo+PiBPbiA5
LzkvMjAyMiAyOjM0IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4gT24gRnJpLCA5IFNl
cHQgMjAyMiBhdCAxMTo0NSwgS3Jpc2huYSBjaGFpdGFueWEgY2h1bmRydQo+Pj4gPHF1aWNfa3Jp
Y2hhaUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4+Pj4gSW50cm9kdWNpbmcgcGh5IHBvd2VyIGRvd24v
dXAgY2FsbGJhY2tzIGZvciBhbGxvd2luZyB0byBwYXJrIHRoZQo+Pj4+IGxpbmstc3RhdGUgaW4g
TDFzcyB3aXRob3V0IGhvbGRpbmcgYW55IFBDSWUgcmVzb3VyY2VzIGR1cmluZwo+Pj4+IHN5c3Rl
bSBzdXNwZW5kLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBjaGFpdGFueWEgY2h1
bmRydSA8cXVpY19rcmljaGFpQHF1aWNpbmMuY29tPgo+Pj4+IC0tLQo+Pj4+IMKgIGRyaXZlcnMv
cGh5L3BoeS1jb3JlLmPCoCB8IDMwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+
IMKgIGluY2x1ZGUvbGludXgvcGh5L3BoeS5oIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPj4+
PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9waHktY29yZS5jIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+Pj4+
IGluZGV4IGQ5M2RkZjEuLjFiMGI3NTcgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9waHkvcGh5
LWNvcmUuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPj4+PiBAQCAtNDQxLDYg
KzQ0MSwzNiBAQCBpbnQgcGh5X3NldF9zcGVlZChzdHJ1Y3QgcGh5ICpwaHksIGludCBzcGVlZCkK
Pj4+PiDCoCB9Cj4+Pj4gwqAgRVhQT1JUX1NZTUJPTF9HUEwocGh5X3NldF9zcGVlZCk7Cj4+Pj4K
Pj4+PiAraW50IHBoeV9wb3dlcl9kb3duKHN0cnVjdCBwaHkgKnBoeSkKPj4+PiArewo+Pj4+ICvC
oMKgwqDCoMKgwqAgaW50IHJldDsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoCBpZiAoIXBoeSB8
fCAhcGh5LT5vcHMtPnBvd2VyX2Rvd24pCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIDA7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqAgbXV0ZXhfbG9jaygmcGh5LT5t
dXRleCk7Cj4+Pj4gK8KgwqDCoMKgwqDCoCByZXQgPSBwaHktPm9wcy0+cG93ZXJfZG93bihwaHkp
Owo+Pj4+ICvCoMKgwqDCoMKgwqAgbXV0ZXhfdW5sb2NrKCZwaHktPm11dGV4KTsKPj4+PiArCj4+
Pj4gK8KgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4+ICt9Cj4+Pj4gK0VYUE9SVF9TWU1CT0xf
R1BMKHBoeV9wb3dlcl9kb3duKTsKPj4+PiArCj4+Pj4gK2ludCBwaHlfcG93ZXJfdXAoc3RydWN0
IHBoeSAqcGh5KQo+Pj4+ICt7Cj4+Pj4gK8KgwqDCoMKgwqDCoCBpbnQgcmV0Owo+Pj4+ICsKPj4+
PiArwqDCoMKgwqDCoMKgIGlmICghcGh5IHx8ICFwaHktPm9wcy0+cG93ZXJfdXApCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDC
oMKgwqAgbXV0ZXhfbG9jaygmcGh5LT5tdXRleCk7Cj4+Pj4gK8KgwqDCoMKgwqDCoCByZXQgPSBw
aHktPm9wcy0+cG93ZXJfdXAocGh5KTsKPj4+PiArwqDCoMKgwqDCoMKgIG11dGV4X3VubG9jaygm
cGh5LT5tdXRleCk7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4+PiAr
fQo+Pj4gQXMgaXQgY2FuIGJlIHNlZW4gZnJvbSB0aGUgcGh5X3Bvd2VyX29mZigpLCB0aGUgUEhZ
IGNhbiBiZSBhIHNoYXJlZAo+Pj4gcmVzb3VyY2UsIHdpdGggdGhlIHBvd2VyX2NvdW50IGNvdW50
aW5nIHRoZSBudW1iZXIgb2YgdXNlcnMgdGhhdAo+Pj4gcmVxdWVzdGVkIHRoZSBQSFkgdG8gYmUg
cG93ZXJlZCB1cC4gQnkgaW50cm9kdWNpbmcgc3VjIGNhbGxzIHlvdSBicmVhawo+Pj4gZGlyZWN0
bHkgaW50byB0aGlzIGJ5IGFsbG93aW5nIGEgc2luZ2xlIHVzZXIgdG8gcG93ZXIgZG93biB0aGUg
UEhZLCBubwo+Pj4gbWF0dGVyIGhvdyBtYW55IG90aGVyIHVzZXJzIGhhdmUgcmVxdWVzdGVkIHRo
ZSBQSFkgdG8gc3RheSBhbGl2ZS4KPj4KPj4gY2FuIHdlIHVzZSBzYW1lIHBvd2VyX2NvdW50IGlu
IHRoaXMgZnVuY3Rpb24gYWxzbyBoZXJlIGFuZCByZXN0cmljdCAKPj4gdGhlIHNpbmdsZSB1c2Vy
IHRvCj4+Cj4+IHBvd2VyIGRvd24gdGhlIFBIWSBzYW1lIGxpa2UgcGh5X3Bvd2VyX29mZj8uCj4K
PiBXaGF0IGlzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gcG93ZXJfb2ZmKCkgYW5kIHBvd2VyX2Rv
d24oKT8KCkluIHBvd2VyX29mZsKgIHdlIGFyZSB0dXJuaW5nIG9mZiBQQ0llIFBIWS1zcGVjaWZp
YyBjbG9ja3MsIGFuZCBhbHNvIApyZXNldHRpbmcgdGhlIFBIWSBkdWUgdG8gdGhpcyBQQ0llIGxp
bmsKYWxzbyB3aWxsIGdvIGRvd24uIFRvIHJldGFpbiwgdGhlIFBDSWUgbGluayBzdGF0ZSBpbiBs
MXNzIHdpdGggUEhZIApjbG9ja3MgdHVybmVkIG9mZiwgd2UgbmVlZApwYXJrIFBDSWUgUEhZIGlu
IHRoZSBwb3dlci1kb3duIHN0YXRlIGFuZCBza2lwIHRoZSByZXNldHMgb2YgdGhlIFBIWSBzbyAK
dGhhdCBpdCBjYW4gbWFpbnRhaW4gdGhlIGxpbmsgc3RhdGUgaW4gbDFzcwp3aXRoIHRoZSBoZWxw
IG9mIHRoZSBhbHdheXMtb24gcG93ZXIgZG9tYWluIGFrYSBNWCkuCgpUbyBzdXBwb3J0IHRoaXMg
UEhZIFBvd2VyLWRvd24gc3RhdGUgUEhZIGRyaXZlciBoYXMgYmVlbiB1cGRhdGVkIHdpdGggCm5l
dyBpbnRlcmZhY2UgQVBJcy4KCkluaXRpYWxseSB3ZSBhZGRlZCBwaHlfc3VzcGVuZCAmIHBoeV9y
ZXN1bWUgdG8gcGh5IGJ1dCBhcyB0aGlzIEFQSSdzIGFyZSAKYWxyZWFkeSB1c2VkIGJ5IGRyaXZl
cnMvbmV0L3BoeS9waHlfZGV2aWNlLmMgd2UgYXJlIGdldHRpbmcgY29tcGlsYXRpb24gCmVycm9y
cy4KClNvIHdlIHVzZWQgdGhlc2UgcG93ZXJfZG93biAmIHBvd2VyIHVwLgoKQXMgcG93ZXJfb2Zm
ICYgcG93ZXJfZG93biBpcyBjb25mdXNpbmcgd2Ugd2lsbCBjaGFuZ2UgbmV3IGFwaSdzIApwb3dl
cl9kb3duICYgcG93ZXJfdXAgdG8gcGh5X3BtX3N1c3BlbmQgJiBwaHlfcG1fcmVzdW1lIGluCgp0
aGUgbmV4dCBwYXRjaCBzZXJpZXMuCj4KPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
