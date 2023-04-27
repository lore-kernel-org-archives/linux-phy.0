Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA803C77B61
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 19:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBvOaeRp3O3tqiTCngvlzTlWESBi6omi0a4Br0MqEtM=; b=xExxqDShMlbnaX
	sKZeoCajmCrKJYbWGqYYtZdVaTjlpXcUxrrVuIv6OodPTH5byDd0xIaTp+S+MVeXzpSAo8vdbJz/U
	MnJyeoJvUVqvlkiSuCJ90wORPL4j1uoW7/xfc4bYJc9EX9AaRyB/XidQAxwxb8mv/5Mxvfzfanv8/
	COSgeCv9Bs6xI35Ip35yIoiWyrOeCV5mYWSbWq/mTMrQDilVCvP/VkMqkwIzHNknwJLe5OvLXMaBC
	MQW9JkN280epExCh+3/Qz5r9B+lK96kAnE6C3PY+rWupmqJUXdFFyoHkS+hJlMwZnoXBkDMGJw360
	vyfymyOsAcjY0eVSsqVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps7ik-007NMK-0Y;
	Thu, 27 Apr 2023 19:56:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps7ih-007NLv-1b
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 19:56:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33RIu9mG030617;
	Thu, 27 Apr 2023 19:55:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=qcppdkim1;
 bh=MKO5YUBbdKYU/+/8wr7vYHMx2PmNWLsN+ARcXKBVVd0=;
 b=FIY5QQd4123Yi2e9+2sBPHaMD+kIk5qceZt57QCbgkjyJkYOXZKu4v0EMg5a388oZHqg
 ECivY1KxrdfZnq/anB83pV+OPgZlwtlR9Ateoe3PXZ72W9UJXvgiN0y2REe4+xiw20lX
 rd7w1dWqDXr/6nTDgKP3Xja30oVB2La/XsTxWq1AXnaC/PS8cs9Ez1TTTs69irulai2a
 If8lFWAYSzASgF8muGzsaBTkKGTJqn59MUUOkkLG8MFRLBbEnoH3BaI79ur8138MATbY
 Kk97I9/nEB6gh3ehwqRGX3VAnXI0+9SrZThjQLV3HfmsOKkTUqB3JjCEgLqsPOJ4JFc8 mw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q7q9ahdws-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Apr 2023 19:55:55 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33RJtk2d019850
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Apr 2023 19:55:46 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 27 Apr 2023 12:55:46 -0700
Date: Thu, 27 Apr 2023 12:55:45 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Johan Hovold <johan@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 5/7] phy: qcom-qmp-combo: Introduce drm_bridge
Message-ID: <20230427195545.GC870858@hu-bjorande-lv.qualcomm.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-6-quic_bjorande@quicinc.com>
 <CAJB8c04ah3YfK2VGxDhHMHK4KVJ7kZQv0b5JfPBu7jOk3mFQRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJB8c04ah3YfK2VGxDhHMHK4KVJ7kZQv0b5JfPBu7jOk3mFQRA@mail.gmail.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: wR14JqRWEtxqZ4s1lXOzmaAvpdJ6QQMp
X-Proofpoint-ORIG-GUID: wR14JqRWEtxqZ4s1lXOzmaAvpdJ6QQMp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-27_09,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 mlxscore=0 clxscore=1015 priorityscore=1501 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304270175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_125559_654836_52738857 
X-CRM114-Status: GOOD (  13.74  )
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

T24gV2VkLCBBcHIgMjYsIDIwMjMgYXQgMTE6MzM6NDBBTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBPbiBUdWUsIEFwciAyNSwgMjAyMyBhdCA0OjQw4oCvQU0gQmpvcm4gQW5kZXJz
c29uCj4gPHF1aWNfYmpvcmFuZGVAcXVpY2luYy5jb20+IHdyb3RlOgo+ID4KWy4uXQo+IFlvdSBu
ZWVkIHRvIGFkZCBzb21lIG9yIGFsbCBvZiB0aGVzZQo+ICAgICAgICBzZWxlY3QgRFJNX0RJU1BM
QVlfRFBfSEVMUEVSCj4gICAgICAgIHNlbGVjdCBEUk1fRElTUExBWV9IRUxQRVIKPiAgICAgICAg
c2VsZWN0IERSTV9EUF9BVVhfQlVTCj4gICAgICAgIHNlbGVjdCBEUk1fS01TX0hFTFBFUgo+ICAg
ICAgICBzZWxlY3QgRFJNX01JUElfRFNJCj4gICAgICAgIHNlbGVjdCBEUk1fUEFORUwKPiAKPiAK
PiAvb3B0L2xpbmFyby9nY2MtbGluYXJvLTcuNS4wLTIwMTkuMTIteDg2XzY0X2FhcmNoNjQtbGlu
dXgtZ251L2Jpbi9hYXJjaDY0LWxpbnV4LWdudS1sZDoKPiBVbmV4cGVjdGVkIEdPVC9QTFQgZW50
cmllcyBkZXRlY3RlZCEKPiAvb3B0L2xpbmFyby9nY2MtbGluYXJvLTcuNS4wLTIwMTkuMTIteDg2
XzY0X2FhcmNoNjQtbGludXgtZ251L2Jpbi9hYXJjaDY0LWxpbnV4LWdudS1sZDoKPiBVbmV4cGVj
dGVkIHJ1bi10aW1lIHByb2NlZHVyZSBsaW5rYWdlcyBkZXRlY3RlZCEKPiBkcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8ubzogSW4gZnVuY3Rpb24KPiBgcW1wX2NvbWJvX2Jy
aWRnZV9hdHRhY2gnOgo+IHBoeS1xY29tLXFtcC1jb21iby5jOigudGV4dCsweGI1MCk6IHVuZGVm
aW5lZCByZWZlcmVuY2UgdG8KPiBgZGV2bV9kcm1fb2ZfZ2V0X2JyaWRnZScKPiBwaHktcWNvbS1x
bXAtY29tYm8uYzooLnRleHQrMHhiNmMpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBkcm1fYnJp
ZGdlX2F0dGFjaCcKPiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8ubzog
SW4gZnVuY3Rpb24gYHFtcF9jb21ib19wcm9iZSc6Cj4gcGh5LXFjb20tcW1wLWNvbWJvLmM6KC50
ZXh0KzB4MTNmYyk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8KPiBgZGV2bV9kcm1fYnJpZGdlX2Fk
ZCcKPiAKCllvdSdyZSBjb3JyZWN0LCBhbmQgVFlQRUMuIFJlYWxpemVkIHRoYXQgSSBmb3Jnb3Qg
dGhlc2Ugb25jZSBJIGhhZApwb3N0ZWQgdGhlIHBhdGNoZXMuIFdpbGwgZmlndXJlIG91dCB0aGUg
YWN0dWFsIHNldCBmb3IgdjIuCgpUaGFua3MsCkJqb3JuCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
