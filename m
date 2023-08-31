Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 781EEC83F12
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 12:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TiilEq+62tsPGlMINRS2W8WmXlKng3W/+LpcpNeBu60=; b=jlzYjSlFq0BRoH
	rHaWIG/GbcfIj+QN8ftXsJdGYkKGMUodW4s1hpiqEz/mFyKN6W14W5fhYDrwlkZNN+LJzpm1IeWH9
	DeOrMih1JUweZgVCkPolZzn0oEr8dZDVfY+6R/QUDo3+uqsLy1367yQtoLCKkpW37Q6ZuWDSJ6U1P
	Mf6rBKdM4zp1hExVezxqR0Qk9oR+Xpg2Fv1OG2+662FfvOS83k4KkDVoUpdE58I6bhzh7YCGTfxfT
	V7+M8XPrD/PdVPo8swYvKk32QB5d9iZzD/VHhBcGdsIlU4fOZuqrP7CHm6K2T9x9717Pdv15sbow7
	S+mO00f6rQRmKfTR9Z9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbgZn-00FGL5-0I;
	Thu, 31 Aug 2023 12:15:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbgZk-00FGKL-2O;
	Thu, 31 Aug 2023 12:15:05 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37V9FPxw024020;
	Thu, 31 Aug 2023 12:14:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=rSCXqtKlx7gJr8jIeaQfsRco9uXPb8O3IwsCKX2yLQo=;
 b=KitO1WXHjvRRVpWDEY+oDFWVhhu6D/K7/aZhjDiawtnindQ0Ns8F2UFq4GGzWqZ2gGQ+
 Xg59vk/Wc31F8zk0ewGogDQ9kTZXUkbCTLHZJjYYfs6KaTEyAxH5G23UuJM45FODh3+B
 XutDn6jnIiNb95cO9FPRoSLcrh7d4m75mxZUkPLKhA3h489lwrp5vH3xgrRKfc7zF1gY
 ICqE25HPyT+RVxag7oVMPRPIfKzLZjOqu0Luxn3sDavNb9PTNjBgjlUyO/rYPL5DkMk5
 Rj1ufpfev6gTuZJ1jtywHbS3lhhdgqCR6CxXurEKrfSTy7fyjBq07rRz/0Ti8t+JlNwf 3g== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3stks5ruhp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 12:14:42 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37VCENIl017429
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 12:14:23 GMT
Received: from [10.201.3.91] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Thu, 31 Aug
 2023 05:14:15 -0700
Message-ID: <2c9aeb22-d3e9-463c-9985-f489f9bcacb9@quicinc.com>
Date: Thu, 31 Aug 2023 17:44:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] Enable USB3 for IPQ5332
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <robert.marko@sartura.hr>, <luka.perkov@sartura.hr>,
        <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>, <p.zabel@pengutronix.de>,
        <arnd@arndb.de>, <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_varada@quicinc.com>
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <92d97b12-48ba-13c9-de9e-70b6eb330904@linaro.org>
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <92d97b12-48ba-13c9-de9e-70b6eb330904@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: HEVg23D_oTPpSrayK0KHJb6Kc-uMFm_Q
X-Proofpoint-ORIG-GUID: HEVg23D_oTPpSrayK0KHJb6Kc-uMFm_Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_10,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 spamscore=0 impostorscore=0 clxscore=1011 malwarescore=0 bulkscore=0
 mlxlogscore=851 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308310110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_051504_784575_CE38D693 
X-CRM114-Status: GOOD (  16.35  )
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

Ck9uIDgvMjkvMjAyMyAxMDozNyBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAy
OS8wOC8yMDIzIDE1OjU4LCBQcmF2ZWVua3VtYXIgSSB3cm90ZToKPj4gSVBRNTMzMiBoYXMgVU5J
UEhZIGZvciBVU0IgYW5kIFBDSWUgd2hpY2ggaXMgc2ltaWxhciB0byB0aGUgVU5JUEhZCj4+IHBy
ZXNlbnQgaW4gSVBRNDAxOS4gRmV3IGV4dHJhIHNldHRpbmdzIGxpa2UgY2xvY2ssIHJlc2V0IGRl
bGF5LCBtdXgKPj4gc2VsZWN0aW9uIGFuZCB2b2x0YWdlIHJlZ3VsYXRvciBhcmUgcmVxdWlyZWQg
Zm9yIElQUTUzMzIuIEhlbmNlCj4+IHJlcHVycG9zZWQgdGhlIElQUTQwMTkgUEhZIGRyaXZlciBm
b3IgSVBRNTMzMiBVTklQSFkuIEZldyBtb3JlIFF1YWxjb21tCj4+IFNvQ3MgYXJlIGFsc28gaGF2
aW5nIHRoZSBVTklQSFkgd2hpY2ggY2FuIHVzZSB0aGUgc2FtZSBkcml2ZXIgZm9yIGJvdGgKPj4g
VVNCIGFuZCBQQ0llIFBIWS4KPj4KPj4gUHJhdmVlbmt1bWFyIEkgKDkpOgo+PiAgICBkdC1iaW5k
aW5nczogcGh5OiBxY29tLHVuaXBoeTogUmVuYW1lIGlwcTQwMTkgdXNiIFBIWSB0byBVTklQSFkK
Pj4gICAgcGh5OiBxY29tOiB1bmlwaHk6IFJlbmFtZSBpcHE0MDE5IFVTQiBwaHkgZHJpdmVyIHRv
IFVOSVBIWSBkcml2ZXIKPj4gICAgcGh5OiBxY29tOiB1bmlwaHk6IFVwZGF0ZSBVTklQSFkgZHJp
dmVyIHRvIGJlIGEgY29tbW9uIGRyaXZlcgo+PiAgICBkdC1iaW5kaW5nczogcGh5OiBxY29tLHVu
aXBoeTogQWRkIGlwcTUzMzIgVVNCMyBTUyBVTklQSFkKPj4gICAgZHQtYmluZGluZ3M6IHVzYjog
ZHdjMzogVXBkYXRlIElQUTUzMzIgY29tcGF0aWJsZQo+PiAgICBhcm02NDogZHRzOiBxY29tOiBp
cHE1MzMyOiBBZGQgVVNCMyByZWxhdGVkIG5vZGVzCj4+ICAgIGFybTY0OiBkdHM6IHFjb206IGlw
cTUzMzI6IEVuYWJsZSBVU0IgU1MgVU5JUEhZCj4gRFRTIGRvZXMgbm90IGdvIGJlZm9yZSBkcml2
ZXJzLiBEVFMgc2hvdWxkIGJlIHNlbnQgc2VwYXJhdGVseSBvciBhcyB0aGUKPiBsYXN0IHBhdGNo
ZXMuIElmIHlvdSBzdHVmZiBpdCBpbiB0aGUgbWlkZGxlLCBtZWFucyB5b3VyIHBhdGNoc2V0IGhh
cwo+IGRlcGVuZGVuY2llcyB3aGljaCBpdCBjYW5ub3QgaGF2ZS4gVGh1cyBpdCBpcyBicm9rZW4u
CgpTb3JyeSwgSSBvcmRlcmVkIGl0IHdyb25nbHkuIFdpbGwgY29ycmVjdCBpbiB0aGUgbmV4dCBw
YXRjaGVzLgoKLcKgIFByYXZlZW5rdW1hcgoKPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YK
PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
