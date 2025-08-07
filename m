Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F14DC87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 20:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQ5xLafroGIZoG5okJ3mMmpYi4WcaPWshUO/SggK39M=; b=lLUV9nxL3ETezl
	rVWSI7TcfDtAFudUsBm1kC8Xw9j6ArOGxcNY6XqJfmSK9HVUU9ipQPHxzQdgIl+qTtMgg5iGqqVwT
	s0F7/jTvnwHxK2xCOTIWTeb2SxuySri9fWfpoqUwl0ifdWKHoWWP9YmHGxz84hOXZlTMFNXKlJQBn
	yhpcrXYKwx2E9HY6RcnhgyYPWj09jGMOMzd24q2fnnYGb2MLsqM3u13hp6ejPhynl4oTdo5vH+2og
	lmxnZwpbA3GIWCkiU1ksDy2ZykfmNfr4toZqVNjBTeXigm3jlGO+PzLmFycgMhjrAQ4/E5+fhl1A/
	oM16BIpoce/lZc/0v3Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk7Uo-00000001VvA-35ni;
	Thu, 07 Aug 2025 20:45:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk7Ul-00000001Vuk-3wNK
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 20:45:53 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 577EDJsh006876;
	Thu, 7 Aug 2025 20:45:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1y/Zhzh0xKBSqXOG4QAbfLqjcK4EPmh64vtepr7nrYA=; b=Q7/iSzqFZKIwQQO4
	nKWuJX+3HLVw2jPzx68MALM7KQLqfiVXFRVXqsn06KqDTOiYi9hRajeDt8jHnatH
	nDmYKCRbO/aE1F1zd0+rJG2GaVgM4k0q4wzl85XDK5PVGRtBs/2wcVjZxC9w2kfY
	kHZQ1fmxoK5jeArUJE0u5l4Va0QISM43uEr8POZwDV2Rv/abHjWCFaNs6Scsu+1r
	nhFPX2vNcv7nY3Uno4IXzTQwyHmAayhTADhSEaeGdVUs5AURjf7CZZvj1CkNl4j9
	EdJnq1XYCMcimVSGkqFQPnWB6NEYSB6pUkUAX/c7eXdqUPG8rFF3dczIXHWNc8dI
	8HIGYw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpybftpn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Aug 2025 20:45:43 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 577KjgdM002043
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 7 Aug 2025 20:45:42 GMT
Received: from [10.216.57.148] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Thu, 7 Aug
 2025 13:45:36 -0700
Message-ID: <52625e59-c7d0-45d1-8af3-d9958c5ef01a@quicinc.com>
Date: Fri, 8 Aug 2025 02:15:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
To: Mark Brown <broonie@kernel.org>
CC: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <mani@kernel.org>, <conor+dt@kernel.org>,
        <bvanassche@acm.org>, <andersson@kernel.org>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@oss.qualcomm.com>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
References: <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <685e3d36-c0e3-4faa-b817-aecc15976a25@quicinc.com>
 <c1435858-6288-4525-8c92-e27ed86cb55e@sirena.org.uk>
 <31461227-3f3a-4316-9c8a-c851209d0278@quicinc.com>
 <4efc8a3a-ceb6-40dc-b877-328b86348e0b@sirena.org.uk>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <4efc8a3a-ceb6-40dc-b877-328b86348e0b@sirena.org.uk>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX0Ab7AMZ7i3/E
 RXqQB/cLZsmAKhOBD4mDskR1A2Pko7dNEnXTmQeWpWfX/iQPwD9ethuJLj2FFiGEtkRlFx9QeA8
 EpMbJahXFfYRebhCpTNMTIFY/88T2LDSfRAxl7HcQXTIoCctERXZADYXJqSyW/AAz6wOraEv3Ok
 bdbWLkbJfmDYP9jSuteHLvblq+Y6HPBbUoMHs5ca0UpSpD9t8NL9pIufEPODQvDTOusKaa6Yk2J
 8L3rj0Lm7XbsIsEh2kOnrF6KzHrV5r3jxTb7ab0PP5Ul6rniTFw3Yt89sp7LTMaeqkV3PH4JBXI
 JSbplRgV+5F1Um74adOhfMRILoWt7tdIGIj696jtl7ajhUusYoE3KUKCcHpwXLgj4zCl2lYr9us
 4IY1le4k
X-Proofpoint-GUID: R58dcDIoPMNJvs0kQ5NPhRSGdgCgz_16
X-Authority-Analysis: v=2.4 cv=EavIQOmC c=1 sm=1 tr=0 ts=68951077 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=qAuQnvhxRzsbetId1DgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: R58dcDIoPMNJvs0kQ5NPhRSGdgCgz_16
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_05,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_134552_127618_E0A8A2E5 
X-CRM114-Status: GOOD (  17.94  )
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

CgpPbiA4LzgvMjAyNSAxMjoxNSBBTSwgTWFyayBCcm93biB3cm90ZToKPiBPbiBUaHUsIEF1ZyAw
NywgMjAyNSBhdCAxMToyNjoxN1BNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90ZToKPiAKPj4gMS4g
UmVndWxhdG9yIGFuZCBQTUlDIGNvbmZpZ3VyYXRpb25zIGFyZSBib2FyZC1zcGVjaWZpYywgbWVh
bmluZyB0aGV5IGNhbgo+PiB2YXJ5IHNpZ25pZmljYW50bHkgYWNyb3NzIGRpZmZlcmVudCBwbGF0
Zm9ybXMuIEZvciBleGFtcGxlLCBzb21lIGJvYXJkcyBtYXkKPj4gdXNlIGRpZmZlcmVudCBnZW5l
cmF0aW9ucyBvZiBVRlMgZGV2aWNlcyDigJQgc3VjaCBhcyBVRlMgMi54IOKAlCB3aGljaCBjb21l
IHdpdGgKPj4gZGlzdGluY3QgcG93ZXIgYW5kIGxvYWQgcmVxdWlyZW1lbnRzIGFuZCBzb21lIHdp
dGggVUZTMy54IHdoaWNoIGhhcyBpdCBvd24KPj4gcG93ZXIvbG9hZCByZXF1aXJlbWVudC4KPiAK
PiBSZXF1aXJlbWVudHMgZnJvbSBnZW5lcmF0aW9ucyBvZiBVRlMgZGV2aWNlcyBwcmVzdW1hYmx5
IGNvbWUgZnJvbSB0aGUKPiBVRlMgc3BlYyBhbmQgc2hvdWxkIGp1c3QgYmUga25vd24gdGhvdWdo
Pwo+IAo+PiAyLiBVRlMgUEhZIGxvYWQgYW5kIFBNSUMgcmVxdWlyZW1lbnRzIGFsc28gdmFyaWVz
IGFjcm9zcyB0YXJnZXRzLCBkZXBlbmRpbmcKPj4gb24gdGhlIHVuZGVybHlpbmcgdGVjaG5vbG9n
eSBub2RlIGFuZCB0aGUgc3BlY2lmaWMgUEhZIGNhcGFiaWxpdGllcy4gVGhlc2UKPj4gZGlmZmVy
ZW5jZXMgY2FuIGJlIGluZmx1ZW5jZWQgYnkgdGhlIE1JUEkgdmVyc2lvbiBvciBvdGhlciBpbXBs
ZW1lbnRhdGlvbgo+PiBkZXRhaWxzLgo+IAo+IElmIHlvdSd2ZSBnb3Qgbm9uLWVudW1lcmFibGUg
UEhZcyB0aGF0IGhhdmUgYSBiaWcgaW1wYWN0IHRoYXQncyBhIG11Y2gKPiBjbGVhcmVyIHVzZSBj
YXNlIGZvciBwdXR0aW5nIHRoaW5ncyBpbiBEVC4KCldoYXQgSSBtZWFudCBpcyB0aGF0IGRpZmZl
cmVudCBib2FyZHMgbWF5IHVzZSBkaWZmZXJlbnQgVUZTIHBhcnRzLCBhbmQgCnRoZSBhc3NvY2lh
dGVkIFBIWSBsb2FkIHJlcXVpcmVtZW50cyBhcmUgbm90IGdvdmVybmVkIGJ5IHRoZSBVRlMgCnNw
ZWNpZmljYXRpb24gaXRzZWxmLiBJbnN0ZWFkLCB0aGVzZSByZXF1aXJlbWVudHMgZGVwZW5kIG9u
IG91ciBzcGVjaWZpYyAKUEhZIGRlc2lnbiBhbmQgTUlQSSwgd2hpY2ggY2FuIHZhcnkgYWNyb3Nz
IHBsYXRmb3Jtcy4KCkJlY2F1c2UgdGhlc2UgY2hhcmFjdGVyaXN0aWNzIOKAlCBzdWNoIGFzIGxv
YWQgcmVxdWlyZW1lbnRzIOKAlCBhcmUgbm90IAplbnVtZXJhYmxlIG9yIGF1dG9tYXRpY2FsbHkg
ZGV0ZWN0YWJsZSwgaXQgbWFrZXMgc2Vuc2UgdG8gZGVzY3JpYmUgdGhlbSAKZXhwbGljaXRseSBp
biB0aGUgZGV2aWNlIHRyZWUuIFRoaXMgYXBwcm9hY2ggZW5zdXJlcyB0aGF0IGJvYXJkLXNwZWNp
ZmljIAp2YXJpYXRpb25zIGFyZSBhY2N1cmF0ZWx5IGNhcHR1cmVkIHdpdGhvdXQgaGFyZGNvZGlu
ZyB0aGVtIGludG8gdGhlIGRyaXZlci4KCj4gCj4+IEdpdmVuIHRoaXMgdmFyaWFiaWxpdHksIGV4
cHJlc3NpbmcgdGhlc2UgcmVxdWlyZW1lbnRzIGluIHRoZSBkZXZpY2UgdHJlZQo+PiBhbGxvd3Mg
Zm9yIGEgZmxleGlibGUgYW5kIGFjY3VyYXRlIHdheSB0byBkZXNjcmliZSBib2FyZC1zcGVjaWZp
Ywo+PiBjb25zdHJhaW50cyB3aXRob3V0IGhhcmRjb2RpbmcgdGhlbSBpbnRvIHRoZSBkcml2ZXIu
Cj4gCj4gVGhlcmUncyBzdGlsbCB0aGUgaXNzdWUgd2l0aCBtYWtpbmcgdGhpcyBhIHRoaW5nIGZv
ciBhbGwgcmVndWxhdG9ycywgbm90Cj4ganVzdCBmb3IgdGhpcyBzcGVjaWZpYyBkZXZpY2UuCgoK
SSBzZWUgeW91ciBwb2ludC4gSnVzdCB0byBjbGFyaWZ5IOKAlCBteSBwYXRjaCBpcyBzcGVjaWZp
Y2FsbHkgc2NvcGVkIHRvIApVRlMgUEhZIGFuZCBQTEwgcmVndWxhdG9ycy4gVGhlIGRldmljZSB0
cmVlIGJpbmRpbmcgZGVmaW5lcyB0aGVzZSAKcHJvcGVydGllcyBhcyBvcHRpb25hbCwgYW5kIHRo
ZXkgYXJlIG9ubHkgZW5hYmxlZCBmb3IgdGFyZ2V0cyB3aGVyZSBsb2FkIAp2b3RpbmcgaXMgcmVx
dWlyZWQuCgpTbywgdGhpcyBpc27igJl0IGludGVuZGVkIHRvIGJlIGEgZ2VuZXJpYyBjaGFuZ2Ug
Zm9yIGFsbCByZWd1bGF0b3JzLCBidXQgCnJhdGhlciBhIHRhcmdldGVkIHNvbHV0aW9uIGZvciBz
cGVjaWZpYyBjb25zdW1lcnMgdGhhdCBuZWVkIGl0LgoKVGhhdOKAmXMgd2h5IEnigJl2ZSBjaG9z
ZW4gdG8ga2VlcCB0aGUgcmVndWxhdG9yIHBhcnNpbmcgbG9naWMgYW5kIApjb3JyZXNwb25kaW5n
IGxvYWQgdm90aW5nIHN1cHBvcnQgd2l0aGluIHRoZSBVRlMgUEhZIGRyaXZlciwgcmF0aGVyIHRo
YW4gCmV4dGVuZGluZyBpdCB0byB0aGUgY29yZSByZWd1bGF0b3IgZnJhbWV3b3JrLgoKClRoYW5r
cywKTml0aW4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
